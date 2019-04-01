#include "HalAdaptationLayer.h"
#include "module.h"
#include <memory>
#include <gatekeeper/gatekeeper_messages.h>
#include <cutils/log.h>

using ::gatekeeper::SizedBuffer;
using ::gatekeeper::EnrollRequest;
using ::gatekeeper::EnrollResponse;
using ::gatekeeper::VerifyRequest;
using ::gatekeeper::VerifyResponse;

extern struct gatekeeper_module HAL_MODULE_INFO_SYM;

extern "C" {

/******************************************************************************/
__attribute__((visibility("default")))
int soft_gatekeeper_open( const struct hw_module_t* module, const char* id,
                            struct hw_device_t** device)
{
    ALOGD("Opening Software Gatekeeper device.");

    if ( id == NULL )
        return -EINVAL;

    if (strncmp(id, HARDWARE_GATEKEEPER, strlen(HARDWARE_GATEKEEPER) + 1) != 0)
        return -EINVAL;

    // Make sure we initialize only if module provided is known

    if ((module->tag != HAL_MODULE_INFO_SYM.common.tag) ||
        (module->module_api_version != HAL_MODULE_INFO_SYM.common.module_api_version) ||
        (module->hal_api_version != HAL_MODULE_INFO_SYM.common.hal_api_version) ||
        (0 != strncmp(module->name, HAL_MODULE_INFO_SYM.common.name, strlen(HAL_MODULE_INFO_SYM.common.name) + 1)))
    {
        return -EINVAL;
    }

    std::unique_ptr<HalAdaptationLayer> gatekeeper_device(
        new HalAdaptationLayer(const_cast<hw_module_t*>(module)));

    if (!gatekeeper_device)
    {
        ALOGE("Heap exhuasted. Exiting...");
        return -ENOMEM;
    }

    *device = reinterpret_cast<hw_device_t*>(gatekeeper_device.release());
    ALOGD("Soft Gatekeeper device created");
    return 0;
}

/******************************************************************************/
__attribute__((visibility("default")))
int soft_gatekeeper_close(hw_device_t *hw)
{
    if (hw == NULL)
        return 0; // Nothing to close closed

    HalAdaptationLayer* gk = reinterpret_cast<HalAdaptationLayer*>(hw);
    if (NULL == gk)
    {
        ALOGE("Soft Gatekeeper not initialized.");
        return -ENODEV;
    }

    delete gk;
    return 0;
}
} // extern "C"


/* -------------------------------------------------------------------------
   Implementation of HalAdaptationLayer methods
   -------------------------------------------------------------------------*/

int HalAdaptationLayer::enroll(
    const struct gatekeeper_device *dev, uint32_t uid,
    const uint8_t *current_password_handle, uint32_t current_password_handle_length,
    const uint8_t *current_password, uint32_t current_password_length,
    const uint8_t *desired_password, uint32_t desired_password_length,
    uint8_t **enrolled_password_handle, uint32_t *enrolled_password_handle_length)
{
    ALOGD("enter HalAdaptationLayer enroll function!\n");
    if( ( NULL == dev) ||
        ( NULL == desired_password) ||
        ( 0 == desired_password_length ) ||
        ( NULL == enrolled_password_handle ) ||
        ( NULL == enrolled_password_handle_length ) )
    {
        ALOGE("Wrong input parameters");
        return -gatekeeper::ERROR_INVALID;
    }

    // Current password and current password handle go together
    if (current_password_handle == NULL || current_password_handle_length == 0 ||
            current_password == NULL || current_password_length == 0) {
        current_password_handle = NULL;
        current_password_handle_length = 0;
        current_password = NULL;
        current_password_length = 0;
    }

    // Setup buffers to be used by request/response

    SizedBuffer current_password_handle_buff(current_password_handle_length);
    if( NULL!=current_password_handle )
    {
        memcpy(
            current_password_handle_buff.buffer.get(),
            current_password_handle,
            current_password_handle_length);
    }
    SizedBuffer desired_password_buff(desired_password_length);
    memcpy(desired_password_buff.buffer.get(), desired_password, desired_password_length);
    SizedBuffer current_password_buff(current_password_length);
    if( NULL!=current_password )
        memcpy(current_password_buff.buffer.get(), current_password, current_password_length);
    SizedBuffer enrolled_password_handle_buff;

    // Create request/response objects
    EnrollRequest request(uid, &current_password_handle_buff, &desired_password_buff,
        &current_password_buff);
    EnrollResponse response(uid, &enrolled_password_handle_buff);

    ALOGD("enter sProxy->Enroll\n");
    SoftProxy sProxy(dev);
    sProxy->Enroll(request, &response);

    if (gatekeeper::ERROR_RETRY == response.error)
    {
        return response.retry_timeout;
    }
    else if( gatekeeper::ERROR_NONE != response.error )
    {
        return -(response.error);
    }

    if( (0 == response.enrolled_password_handle.length) ||
        (NULL == response.enrolled_password_handle.buffer.get()) )
    {
        ALOGE("Wrong length of password handle in response");
        return -gatekeeper::ERROR_UNKNOWN;
    }

    // copy enrolled password handle
    *enrolled_password_handle_length = response.enrolled_password_handle.length;
    *enrolled_password_handle = new uint8_t[response.enrolled_password_handle.length];
    memcpy(*enrolled_password_handle, response.enrolled_password_handle.buffer.get(),
        response.enrolled_password_handle.length);

    return 0;
}

/******************************************************************************/
int HalAdaptationLayer::verify(
    const struct gatekeeper_device *dev, uint32_t uid, uint64_t challenge,
    const uint8_t *enrolled_password_handle, uint32_t enrolled_password_handle_length,
    const uint8_t *provided_password, uint32_t provided_password_length,
    uint8_t **auth_token, uint32_t *auth_token_length, bool *request_reenroll)
{
    ALOGD("enter HalAdaptationLayer verify function!\n");
    // Validate mandatory parameters
    if (( NULL == dev ) ||
        ( NULL == enrolled_password_handle ) ||
        ( 0    == enrolled_password_handle_length ) ||
        ( NULL == provided_password ) ||
        ( 0    == provided_password_length ) ||
        ( NULL == auth_token) ||
        ( NULL == auth_token_length ))
    {
        ALOGE("Wrong input parameters");
        return -gatekeeper::ERROR_INVALID;
    }

    // Setup buffers to be used by request/response
    SizedBuffer enrolled_password_handle_buff(enrolled_password_handle_length);
    memcpy(enrolled_password_handle_buff.buffer.get(),
        enrolled_password_handle, enrolled_password_handle_length);
    SizedBuffer provided_password_buff(provided_password_length);
    memcpy(provided_password_buff.buffer.get(),provided_password,
        provided_password_length);

    // Create request/response objects
    VerifyRequest request(
        uid, challenge, &enrolled_password_handle_buff, &provided_password_buff);
    VerifyResponse response;

    ALOGD("enter sProxy->Verify\n");
    SoftProxy sProxy(dev);
    sProxy->Verify(request, &response);

    if (gatekeeper::ERROR_RETRY == response.error)
    {
        return response.retry_timeout;
    }
    else if (gatekeeper::ERROR_NONE != response.error)
    {
        return -(response.error);
    }

    if ((0 == response.auth_token.length) ||
        (NULL == response.auth_token.buffer.get()) )
    {
        ALOGE("Wrong length of authentication token in response");
        return -gatekeeper::ERROR_UNKNOWN;
    }
    *auth_token_length = response.auth_token.length;
    *auth_token = new uint8_t[response.auth_token.length];
    memcpy(*auth_token, response.auth_token.buffer.get(), response.auth_token.length);

    if (request_reenroll != NULL)
    {
        ALOGD("request reenroll!\n");
        *request_reenroll = response.request_reenroll;
    }

    return 0;
}


/******************************************************************************/
HalAdaptationLayer::HalAdaptationLayer(hw_module_t* module)
:softImpl_(new SoftGateKeeperDevice())
{
    ALOGD("gatekeeper: HalAdaptationLayer constructor initialized.");
    /* -------------------------------------------------------------------------
       Device description
       -------------------------------------------------------------------------*/
    _device.common.tag = HARDWARE_MODULE_TAG;
    _device.common.version = 1;
    _device.common.module = module;
    _device.common.close = soft_gatekeeper_close;

    /* -------------------------------------------------------------------------
       All function pointers used by the HAL module
       -------------------------------------------------------------------------*/
    _device.enroll = HalAdaptationLayer::enroll;
    _device.verify = HalAdaptationLayer::verify;

    // Optional functions
    _device.delete_user = NULL;
    _device.delete_all_users = NULL;
}

/******************************************************************************/


