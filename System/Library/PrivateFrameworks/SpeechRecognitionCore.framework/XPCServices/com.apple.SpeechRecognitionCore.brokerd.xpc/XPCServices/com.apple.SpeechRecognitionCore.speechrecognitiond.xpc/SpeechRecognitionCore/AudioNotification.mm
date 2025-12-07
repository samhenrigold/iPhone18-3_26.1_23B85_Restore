@interface AudioNotification
+ (void)sendLiveRecordingOffNotificationWithInterrupt:(unsigned __int8)interrupt;
+ (void)sendLiveRecordingOnNotification;
@end

@implementation AudioNotification

+ (void)sendLiveRecordingOnNotification
{
  if (byte_10010E470 == 1)
  {
    byte_10010E470 = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SpeechRecognitionCore.liveRecordingOnFromInterrupt", 0, 0, 0);
    v4 = RXOSLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v5 = "Sending LiveRecordingOnFromInterrupt notification";
      v6 = &v10;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v7, @"com.apple.SpeechRecognitionCore.liveRecordingOn", 0, 0, 0);
    v4 = RXOSLog(v8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "Sending LiveRecordingOn notification";
      v6 = &v9;
      goto LABEL_6;
    }
  }
}

+ (void)sendLiveRecordingOffNotificationWithInterrupt:(unsigned __int8)interrupt
{
  if (interrupt)
  {
    byte_10010E470 = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SpeechRecognitionCore.liveRecordingOffFromInterrupt", 0, 0, 0);
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = "Sending LiveRecordingOffFromInterrupt notification";
      v7 = &v11;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else
  {
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v8, @"com.apple.SpeechRecognitionCore.liveRecordingOff", 0, 0, 0);
    v5 = RXOSLog(v9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "Sending LiveRecordingOff notification";
      v7 = &v10;
      goto LABEL_6;
    }
  }
}

@end