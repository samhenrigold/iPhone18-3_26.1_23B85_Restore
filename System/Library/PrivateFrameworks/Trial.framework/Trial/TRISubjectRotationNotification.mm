@interface TRISubjectRotationNotification
+ (BOOL)notifySubjectRotation;
+ (id)registerSubjectRotationWithQueue:(id)queue usingBlock:(id)block;
+ (void)deregisterUpdateWithToken:(id)token;
@end

@implementation TRISubjectRotationNotification

+ (id)registerSubjectRotationWithQueue:(id)queue usingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    queueCopy = dispatch_queue_create("com.apple.trial.SubjectRotation", v8);
  }

  out_token = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __78__TRISubjectRotationNotification_registerSubjectRotationWithQueue_usingBlock___block_invoke;
  v19 = &unk_27885ECF8;
  v20 = blockCopy;
  v9 = blockCopy;
  v10 = notify_register_dispatch("com.apple.trial.SubjectRotation", &out_token, queueCopy, &v16);
  if (v10)
  {
    v11 = v10;
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v23 = v11;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = [TRINotificationState alloc];
    v13 = [(TRINotificationState *)v14 initWithToken:out_token, v16, v17, v18, v19, v20];
  }

  return v13;
}

uint64_t __78__TRISubjectRotationNotification_registerSubjectRotationWithQueue_usingBlock___block_invoke(uint64_t a1)
{
  v2 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_22EA6B000, v2, OS_LOG_TYPE_DEBUG, "received notification for subject rotation", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

+ (void)deregisterUpdateWithToken:(id)token
{
  if (token)
  {
    token = [token token];

    notify_cancel(token);
  }
}

+ (BOOL)notifySubjectRotation
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = notify_post("com.apple.trial.SubjectRotation");
  if (v2)
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = v2;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", &v5, 0xCu);
    }
  }

  return v2 == 0;
}

@end