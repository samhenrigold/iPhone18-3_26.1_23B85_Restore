@interface CMSafetyAnomaly
+ (BOOL)areStatsAvailable;
- (int)getState;
- (void)notifyEvent:(id)event;
- (void)sendAPCmd:(int)cmd arg:(int)arg;
@end

@implementation CMSafetyAnomaly

+ (BOOL)areStatsAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v2, "kCLConnectionMessageKappaStatsAvailable");
}

- (void)sendAPCmd:(int)cmd arg:(int)arg
{
  v4 = *&arg;
  v5 = *&cmd;
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29B8 != -1)
  {
    dispatch_once(&qword_1EAFE29B8, &unk_1F0E2A5E0);
  }

  v6 = qword_1EAFE29C0;
  if (os_log_type_enabled(qword_1EAFE29C0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = v5;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "kappa ap command=%d arg=%d", buf, 0xEu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29B8 != -1)
    {
      dispatch_once(&qword_1EAFE29B8, &unk_1F0E2A5E0);
    }

    LODWORD(v15) = 67109376;
    HIDWORD(v15) = v5;
    v16 = 1024;
    v17 = v4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29C0, 1, "kappa ap command=%d arg=%d", &v15, 14);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSafetyAnomaly sendAPCmd:arg:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v13[0] = @"CMKappaCmdKey";
  v14[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, v5);
  v13[1] = @"CMKappaArgKey";
  v14[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v11, v4);
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v14, v13, 2);
  sub_19B444678();
}

- (int)getState
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29B8 != -1)
  {
    dispatch_once(&qword_1EAFE29B8, &unk_1F0E2A5E0);
  }

  v2 = qword_1EAFE29C0;
  if (os_log_type_enabled(qword_1EAFE29C0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "get state updates", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29B8 != -1)
    {
      dispatch_once(&qword_1EAFE29B8, &unk_1F0E2A5E0);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29C0, 2, "get state updates", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSafetyAnomaly getState]", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  operator new();
}

- (void)notifyEvent:(id)event
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CMSafetyAnomalyPropertiesKey";
  v5[0] = event;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
  sub_19B5D12C8();
}

@end