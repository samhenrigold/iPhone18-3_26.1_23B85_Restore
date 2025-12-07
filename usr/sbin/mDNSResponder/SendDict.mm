@interface SendDict
@end

@implementation SendDict

void __SendDict_ToServer_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    HelperLog("SendDict_ToServer Received reply msg from Daemon", object);
    uint64 = xpc_dictionary_get_uint64(object, "HelperReplyStatusToClient");
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(object, "HelperErrorCodefromCall");
    if (uint64)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "default: Unexpected reply from Helper");
    }

    else if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NoError: successful reply");
    }

    *(*(*(a1 + 40) + 8) + 24) = object;
    xpc_retain(*(*(*(a1 + 40) + 8) + 24));
  }

  else
  {
    v4 = mDNSLogCategory_Default;
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "SendDict_ToServer Received unexpected reply from daemon [%s]", string);
    HelperLog("SendDict_ToServer Unexpected Reply contents", object);
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v7 = *(a1 + 48);
  if (v7)
  {

    dispatch_release(v7);
  }
}

@end