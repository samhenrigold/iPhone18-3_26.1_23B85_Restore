@interface BuddySafetySettingsPresentationManager
- (BOOL)shouldPresentSafetySettingsUsingOnlyLocalChecksWithHasCompletedInitialRun:(BOOL)run;
- (id)contextWithHasCompletedInitialRun:(BOOL)run;
@end

@implementation BuddySafetySettingsPresentationManager

- (BOOL)shouldPresentSafetySettingsUsingOnlyLocalChecksWithHasCompletedInitialRun:(BOOL)run
{
  runCopy = run;
  if ([(BuddySafetySettingsPresentationManager *)self runtimeDependencyExists])
  {
    v5 = [(BuddySafetySettingsPresentationManager *)self contextWithHasCompletedInitialRun:runCopy];
    *buf = 0;
    v23 = buf;
    v24 = 0x2050000000;
    v6 = qword_30258;
    v25 = qword_30258;
    if (!qword_30258)
    {
      *v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_7C90;
      v20 = &unk_28AA0;
      v21 = buf;
      sub_7C90(v17);
      v6 = *(v23 + 3);
    }

    v7 = v6;
    _Block_object_dispose(buf, 8);
    v8 = objc_alloc_init(v6);
    if (objc_opt_respondsToSelector())
    {
      v9 = dispatch_semaphore_create(0);
      *v17 = 0;
      v18 = v17;
      v19 = 0x2020000000;
      LOBYTE(v20) = 0;
      v10 = _BYLoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Will check whether to present safety settings", buf, 2u);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_79CC;
      v14[3] = &unk_28B30;
      v16 = v17;
      v11 = v9;
      v15 = v11;
      [v8 shouldPresentSafetySettingsUsingOnlyLocalChecksWithContext:v5 completionHandler:v14];
      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v12 = *(v18 + 24);

      _Block_object_dispose(v17, 8);
    }

    else
    {
      v11 = _BYLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Safety settings underlying classes lack local only checks", v17, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Safety settings runtime dependency does not exist", v17, 2u);
    }

    v12 = 0;
  }

  return v12 & 1;
}

- (id)contextWithHasCompletedInitialRun:(BOOL)run
{
  v3 = [objc_alloc(sub_7B48()) initWithFlowType:run];

  return v3;
}

@end