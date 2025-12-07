@interface SessionFilterPreferenceProvider
- (BOOL)touchDisabled;
- (SessionFilterPreferenceProvider)init;
- (void)continuousRecordingDeleteForAllServicesWithReply:(id)reply;
- (void)continuousRecordingEnabledWithReply:(id)reply;
- (void)continuousRecordingSetDeleteForAllServices:(BOOL)services;
- (void)continuousRecordingUpdateInternalToggleStateWithReply:(BOOL)reply reply:(id)a4;
- (void)siriRemoteTouchDisabledWithReply:(id)reply;
- (void)touchDisabled;
@end

@implementation SessionFilterPreferenceProvider

- (SessionFilterPreferenceProvider)init
{
  v11.receiver = self;
  v11.super_class = SessionFilterPreferenceProvider;
  v2 = [(SessionFilterPreferenceProvider *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = MTLoggingPreferenceProvider(v2);
    logHandle = v3->_logHandle;
    v3->_logHandle = v4;

    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.TVPeripheralServices"];
    tvDefaults = v3->_tvDefaults;
    v3->_tvDefaults = v6;

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ContinuousRecording"];
    continuousRecordingDefaults = v3->_continuousRecordingDefaults;
    v3->_continuousRecordingDefaults = v8;
  }

  return v3;
}

- (BOOL)touchDisabled
{
  tvDefaults = [(SessionFilterPreferenceProvider *)self tvDefaults];
  v4 = [tvDefaults objectForKey:@"RemoteClickpadMode"];

  if (v4)
  {
    tvDefaults2 = [(SessionFilterPreferenceProvider *)self tvDefaults];
    v6 = [tvDefaults2 integerForKey:@"RemoteClickpadMode"];

    if (v6)
    {
      if (v6 == 1)
      {
        return 1;
      }

      logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(SessionFilterPreferenceProvider *)v6 touchDisabled];
      }
    }
  }

  return 0;
}

- (void)siriRemoteTouchDisabledWithReply:(id)reply
{
  replyCopy = reply;
  touchDisabled = [(SessionFilterPreferenceProvider *)self touchDisabled];
  logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = touchDisabled;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Touch disabled: %d", v7, 8u);
  }

  replyCopy[2](replyCopy, touchDisabled);
}

- (void)continuousRecordingEnabledWithReply:(id)reply
{
  replyCopy = reply;
  continuousRecordingDefaults = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v6 = [continuousRecordingDefaults objectForKey:@"ContinuousRecordingV3"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else if (v6)
  {
    logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(SessionFilterPreferenceProvider *)v6 continuousRecordingEnabledWithReply:logHandle];
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = 1;
  }

  replyCopy[2](replyCopy, bOOLValue);
}

- (void)continuousRecordingDeleteForAllServicesWithReply:(id)reply
{
  replyCopy = reply;
  continuousRecordingDefaults = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v6 = [continuousRecordingDefaults objectForKey:@"deleteForAllServices"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    if (v6)
    {
      logHandle = [(SessionFilterPreferenceProvider *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(SessionFilterPreferenceProvider *)v6 continuousRecordingDeleteForAllServicesWithReply:logHandle];
      }
    }

    bOOLValue = 1;
  }

  replyCopy[2](replyCopy, bOOLValue);
}

- (void)continuousRecordingSetDeleteForAllServices:(BOOL)services
{
  servicesCopy = services;
  continuousRecordingDefaults = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v4 = [NSNumber numberWithBool:servicesCopy];
  [continuousRecordingDefaults setObject:v4 forKey:@"deleteForAllServices"];
}

- (void)continuousRecordingUpdateInternalToggleStateWithReply:(BOOL)reply reply:(id)a4
{
  replyCopy = reply;
  v8 = a4;
  continuousRecordingDefaults = [(SessionFilterPreferenceProvider *)self continuousRecordingDefaults];
  v7 = [NSNumber numberWithBool:replyCopy];
  [continuousRecordingDefaults setObject:v7 forKey:@"ContinuousRecordingV3"];

  v8[2]();
}

- (void)touchDisabled
{
  v2 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized remote clickpad mode value %ld", &v2, 0xCu);
}

- (void)continuousRecordingEnabledWithReply:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412802;
  v3 = @"com.apple.ContinuousRecording";
  v4 = 2112;
  v5 = @"ContinuousRecordingV3";
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Preference domain %@ key %@ invalid value %@", &v2, 0x20u);
}

- (void)continuousRecordingDeleteForAllServicesWithReply:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412802;
  v3 = @"com.apple.ContinuousRecording";
  v4 = 2112;
  v5 = @"deleteForAllServices";
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Preference domain %@ key %@ invalid value %@", &v2, 0x20u);
}

@end