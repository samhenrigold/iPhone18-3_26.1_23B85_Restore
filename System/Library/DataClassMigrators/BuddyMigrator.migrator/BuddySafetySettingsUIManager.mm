@interface BuddySafetySettingsUIManager
- (void)shouldPresentSafetySettingsWithHasCompletedInitialRun:(BOOL)run delegate:(id)delegate completion:(id)completion;
@end

@implementation BuddySafetySettingsUIManager

- (void)shouldPresentSafetySettingsWithHasCompletedInitialRun:(BOOL)run delegate:(id)delegate completion:(id)completion
{
  runCopy = run;
  delegateCopy = delegate;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (![(BuddySafetySettingsPresentationManager *)self runtimeDependencyExists])
  {
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Safety settings runtime dependency does not exist";
LABEL_10:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }

LABEL_11:

    completionCopy[2](completionCopy, 0);
    goto LABEL_12;
  }

  if (!sub_A740())
  {
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Safety settings flow presenter does not exist";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = [(BuddySafetySettingsPresentationManager *)self contextWithHasCompletedInitialRun:runCopy];
  v11 = [objc_alloc(sub_A740()) initWithSafetySettingsContext:v10];
  v12 = _BYLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Will check whether to present safety settings", buf, 2u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_A820;
  v17[3] = &unk_28D08;
  v18 = delegateCopy;
  v19 = v11;
  v20 = v10;
  v21 = completionCopy;
  v13 = v10;
  v14 = v11;
  [v14 shouldPresentSafetySettingsWithContext:v13 completion:v17];

LABEL_12:
}

@end