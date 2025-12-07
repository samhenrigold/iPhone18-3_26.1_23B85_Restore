@interface FMDCoreFollowUpManager
+ (FMDCoreFollowUpManager)sharedInstance;
- (id)_getDeviceClassesFromCoverage:(unint64_t)coverage;
- (void)_forceTheftAndLossCFU;
- (void)_getTheftAndLossFollowUpStringsWithCompletion:(id)completion;
- (void)_handleTheftAndLossReminderBackgroundTask;
- (void)_registerTheftAndLossCFUBackgroundTask;
- (void)clearTheftAndLossCFU;
- (void)handleNDOCoverageUpdate;
- (void)registerAndSubmitBGSTForFirstUnlock;
- (void)requestTheftAndLossCFU:(unint64_t)u;
- (void)submitTheftAndLossReminderBackgroundTask:(id)task;
@end

@implementation FMDCoreFollowUpManager

+ (FMDCoreFollowUpManager)sharedInstance
{
  if (qword_100314690 != -1)
  {
    sub_10022AA78();
  }

  v3 = qword_100314688;

  return v3;
}

- (id)_getDeviceClassesFromCoverage:(unint64_t)coverage
{
  v4 = +[FMDSystemConfig sharedInstance];
  deviceClass = [v4 deviceClass];

  if (coverage <= 2)
  {
    if (coverage == 1)
    {
      v7 = deviceClass - 1;
      if (deviceClass - 1) < 6 && ((0x2Bu >> v7))
      {
        v8 = off_1002CF800;
        return v8[v7];
      }
    }

    else if (coverage == 2)
    {
      return @"Watch";
    }
  }

  else
  {
    switch(coverage)
    {
      case 3uLL:
        v7 = deviceClass - 1;
        if (deviceClass - 1) < 6 && ((0x2Bu >> v7))
        {
          v8 = off_1002CF860;
          return v8[v7];
        }

        break;
      case 4uLL:
        return @"Watches";
      case 5uLL:
        v7 = deviceClass - 1;
        if (deviceClass - 1) < 6 && ((0x2Bu >> v7))
        {
          v8 = off_1002CF830;
          return v8[v7];
        }

        break;
    }
  }

  v10 = sub_100002880(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10022AAD0();
  }

  return 0;
}

- (void)_forceTheftAndLossCFU
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10017A4F8;
  v2[3] = &unk_1002CF748;
  v2[4] = self;
  [(FMDCoreFollowUpManager *)self _getTheftAndLossFollowUpStringsWithCompletion:v2];
}

- (void)_getTheftAndLossFollowUpStringsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[FMDSharedConfigurationManager sharedInstance];
  serialNumber = [(FMDCoreFollowUpManager *)self serialNumber];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017A7B8;
  v8[3] = &unk_1002CF770;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 getTheftAndLossCoverageWithSerialNumber:serialNumber timeout:v8 completion:120.0];
}

- (void)_handleTheftAndLossReminderBackgroundTask
{
  v3 = +[FMDSharedConfiguration sharedInstance];
  readFindMySignOutTimeFromFile = [v3 readFindMySignOutTimeFromFile];

  if (readFindMySignOutTimeFromFile)
  {

    [(FMDCoreFollowUpManager *)self _forceTheftAndLossCFU];
  }

  else
  {
    v6 = sub_100002880(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"com.apple.findmy.theftandlosscfu";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Task %@ ran but there's no record of a last Find My iPhone Sign out", &v7, 0xCu);
    }
  }
}

- (void)submitTheftAndLossReminderBackgroundTask:(id)task
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017AA6C;
  v5[3] = &unk_1002CF748;
  taskCopy = task;
  v4 = taskCopy;
  [(FMDCoreFollowUpManager *)self _getTheftAndLossFollowUpStringsWithCompletion:v5];
}

- (void)_registerTheftAndLossCFUBackgroundTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [v3 taskRequestForIdentifier:@"com.apple.findmy.theftandlosscfu"];

  if (v4)
  {
    readFindMySignOutTimeFromFile = sub_100002880(v5);
    if (os_log_type_enabled(readFindMySignOutTimeFromFile, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = @"com.apple.findmy.theftandlosscfu";
      _os_log_impl(&_mh_execute_header, readFindMySignOutTimeFromFile, OS_LOG_TYPE_DEFAULT, "%@ already submitted", buf, 0xCu);
    }
  }

  else
  {
    v7 = +[FMDSharedConfiguration sharedInstance];
    readFindMySignOutTimeFromFile = [v7 readFindMySignOutTimeFromFile];

    if (readFindMySignOutTimeFromFile)
    {
      v9 = sub_100002880(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = readFindMySignOutTimeFromFile;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Last FMiP signout: %@", buf, 0xCu);
      }

      v10 = +[BGSystemTaskScheduler sharedScheduler];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10017AFCC;
      v16[3] = &unk_1002CF798;
      v16[4] = self;
      [v10 registerForTaskWithIdentifier:@"com.apple.findmy.theftandlosscfu" usingQueue:0 launchHandler:v16];

      v11 = +[FMDSharedConfiguration sharedInstance];
      localeString = [v11 localeString];

      v13 = +[FMDSharedConfigurationManager sharedInstance];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10017B020;
      v14[3] = &unk_1002CE320;
      v14[4] = self;
      readFindMySignOutTimeFromFile = readFindMySignOutTimeFromFile;
      v15 = readFindMySignOutTimeFromFile;
      [v13 downloadSharedConfigurationWithLocale:localeString reply:v14];
    }
  }
}

- (void)registerAndSubmitBGSTForFirstUnlock
{
  v3 = +[FMDSharedConfiguration sharedInstance];
  readFindMySignOutTimeFromFile = [v3 readFindMySignOutTimeFromFile];

  if (readFindMySignOutTimeFromFile)
  {
    v6 = sub_100002880(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = readFindMySignOutTimeFromFile;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User signed out of FMIP %@", buf, 0xCu);
    }

    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10017B300;
    v31[3] = &unk_1002CF798;
    v31[4] = self;
    v8 = [v7 registerForTaskWithIdentifier:@"com.apple.findmy.theftandlosscfu.firstunlock" usingQueue:0 launchHandler:v31];

    if (v8)
    {
      v10 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.findmy.theftandlosscfu.firstunlock"];
      [v10 setRequiresNetworkConnectivity:1];
      [v10 setRequiresExternalPower:0];
      [v10 setScheduleAfter:0.0];
      [v10 setPriority:2];
      [v10 setRequiresProtectionClass:4];
      v11 = +[BGSystemTaskScheduler sharedScheduler];
      v30 = 0;
      v12 = [v11 submitTaskRequest:v10 error:&v30];

      v14 = sub_100002880(v13);
      v15 = v14;
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = @"com.apple.findmy.theftandlosscfu.firstunlock";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Submitted task %@ to run after first unlock", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10022AD9C(v15, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    else
    {
      v10 = sub_100002880(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022AD24(v10, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }
}

- (void)requestTheftAndLossCFU:(unint64_t)u
{
  if (u <= 2)
  {
    if (u == 1)
    {
      v10 = +[FMDSharedConfigurationManager sharedInstance];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10017B56C;
      v13[3] = &unk_1002CF7C0;
      v13[4] = self;
      [v10 getTheftAndLossCoverageWithSerialNumber:0 completion:v13];

      return;
    }

    if (u != 2)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = +[FMDSystemConfig sharedInstance];
    unlockState = [v5 unlockState];

    if (unlockState == 1)
    {
      v8 = sub_100002880(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Before first unlock. Submit reminder TnL task.", v12, 2u);
      }

      [(FMDCoreFollowUpManager *)self registerAndSubmitBGSTForFirstUnlock];
    }

    else
    {
      [(FMDCoreFollowUpManager *)self _registerTheftAndLossCFUBackgroundTask];
    }

    return;
  }

  if (u != 3)
  {
    if (u != 4)
    {
LABEL_14:
      v9 = sub_100002880(self);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10022AE14();
      }

      return;
    }

    v4 = sub_100002880(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "First unlock. Register for TnL CFU.", v12, 2u);
    }

    goto LABEL_10;
  }

  v11 = sub_100002880(self);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User signed out, clearing CFU", v12, 2u);
  }

  [(FMDCoreFollowUpManager *)self clearTheftAndLossCFU];
}

- (void)clearTheftAndLossCFU
{
  v2 = +[FMDSharedConfigurationManager sharedInstance];
  [v2 clearTheftAndLossCFUWithCompletion:&stru_1002CF7E0];

  v3 = +[FMDSharedConfiguration sharedInstance];
  [v3 clearFindMySignOutTimeFile];
}

- (void)handleNDOCoverageUpdate
{
  v3 = +[FMDSharedConfigurationManager sharedInstance];
  serialNumber = [(FMDCoreFollowUpManager *)self serialNumber];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017B840;
  v5[3] = &unk_1002CF7C0;
  v5[4] = self;
  [v3 getTheftAndLossCoverageWithSerialNumber:serialNumber completion:v5];
}

@end