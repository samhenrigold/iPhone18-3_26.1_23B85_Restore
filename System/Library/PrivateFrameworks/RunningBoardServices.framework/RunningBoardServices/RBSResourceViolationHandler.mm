@interface RBSResourceViolationHandler
+ (void)notifyCPUViolation:(int)violation;
@end

@implementation RBSResourceViolationHandler

+ (void)notifyCPUViolation:(int)violation
{
  v11 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.runningboard.resource_notify", 0, 2uLL);
  v5 = mach_service;
  if (mach_service)
  {
    v6 = rbs_process_log(mach_service);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = violation;
      _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_DEFAULT, "Notified CPU resource violation on pid:%d", v10, 8u);
    }

    xpc_connection_set_event_handler(v5, &__block_literal_global_13);
    xpc_connection_resume(v5);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "cmd", 1uLL);
    xpc_dictionary_set_uint64(v7, "pid", violation);
    v8 = xpc_connection_send_message_with_reply_sync(v5, v7);
    if (!v8)
    {
      v9 = rbs_general_log(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RBSResourceViolationHandler notifyCPUViolation:v9];
      }
    }
  }

  else
  {
    v7 = rbs_general_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [RBSResourceViolationHandler notifyCPUViolation:v7];
    }
  }
}

@end