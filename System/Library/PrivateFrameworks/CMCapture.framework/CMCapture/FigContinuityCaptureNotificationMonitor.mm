@interface FigContinuityCaptureNotificationMonitor
+ (id)sharedInstance;
+ (void)initialize;
- (FigContinuityCaptureNotificationMonitor)init;
- (void)_handleContinuityCaptureNotification:(id)notification;
- (void)dealloc;
@end

@implementation FigContinuityCaptureNotificationMonitor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_sOnceToken != -1)
  {
    +[FigContinuityCaptureNotificationMonitor sharedInstance];
  }

  return sharedInstance_sSharedContinuityCaptureNotificationMonitor;
}

FigContinuityCaptureNotificationMonitor *__57__FigContinuityCaptureNotificationMonitor_sharedInstance__block_invoke()
{
  result = objc_alloc_init(FigContinuityCaptureNotificationMonitor);
  sharedInstance_sSharedContinuityCaptureNotificationMonitor = result;
  return result;
}

- (void)_handleContinuityCaptureNotification:(id)notification
{
  name = [notification name];
  if (name)
  {
    v5 = name;
    object = [notification object];
    if (dword_1ED8441B0)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (objc_msgSend_isEqualToString_(v5) && objc_msgSend_isEqualToString_(object))
    {
      v8 = [MEMORY[0x1E695DF00] now];
      if (dword_1ED8441B0)
      {
        v21 = 0;
        v20 = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = v21;
        if (os_log_type_enabled(v9, v20))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          v12 = 136315906;
          v13 = "[FigContinuityCaptureNotificationMonitor _handleContinuityCaptureNotification:]";
          v14 = 2112;
          v15 = @"com.apple.cameracapture.volatile";
          v16 = 2112;
          v17 = @"ContinuityCaptureLastUsedDate";
          v18 = 2112;
          v19 = v8;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFPreferencesSetValue(@"ContinuityCaptureLastUsedDate", v8, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }
  }
}

- (FigContinuityCaptureNotificationMonitor)init
{
  v4.receiver = self;
  v4.super_class = FigContinuityCaptureNotificationMonitor;
  v2 = [(FigContinuityCaptureNotificationMonitor *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = FigContinuityCaptureNotificationMonitor;
  [(FigContinuityCaptureNotificationMonitor *)&v3 dealloc];
}

@end