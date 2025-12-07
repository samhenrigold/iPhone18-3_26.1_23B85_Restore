@interface StocksSyncAppLauncher
+ (BOOL)_acquire:(id)_acquire;
+ (id)_createAssertionForTargetWithPid:(int)pid;
+ (void)_invalidateAfterDelay:(id)delay;
+ (void)_launchAppWithBundleID:(id)d withAction:(id)action completion:(id)completion;
+ (void)_postNotification:(__CFString *)notification;
+ (void)launchPhoneApp;
@end

@implementation StocksSyncAppLauncher

+ (void)launchPhoneApp
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];

  if (getActivePairedDevice)
  {
    v6 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_29E4;
    block[3] = &unk_C328;
    block[4] = self;
    dispatch_async(v6, block);
  }

  else
  {
    v6 = stocks_sync_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Asked to launch phone app but there isn't a paired watch to ping; ignore.", buf, 2u);
    }
  }
}

+ (BOOL)_acquire:(id)_acquire
{
  v14 = 0;
  v3 = [_acquire acquireWithError:&v14];
  v4 = v14;
  v5 = stocks_sync_log(v3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v7 = "Unable to acquire assertion.";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_0, v9, v10, v7, v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v7 = "Acquired assertion.";
    v8 = &v12;
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  return v4 == 0;
}

+ (id)_createAssertionForTargetWithPid:(int)pid
{
  v3 = [RBSTarget targetWithPid:*&pid];
  v4 = [RBSDomainAttribute attributeWithDomain:@"com.apple.stocks" name:@"TalkToWatch"];
  v5 = [RBSAssertion alloc];
  v9 = v4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [v5 initWithExplanation:@"Stocks Sync Assertion" target:v3 attributes:v6];

  return v7;
}

+ (void)_invalidateAfterDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 2000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2E38;
  v7[3] = &unk_C350;
  v8 = delayCopy;
  v5 = delayCopy;
  v6 = objc_retainBlock(v7);
  dispatch_after(v4, &_dispatch_main_q, v6);
}

+ (void)_postNotification:(__CFString *)notification
{
  v4 = stocks_sync_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    notificationCopy = notification;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Posting %@.", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, notification, 0, 0, 1u);
}

+ (void)_launchAppWithBundleID:(id)d withAction:(id)action completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  actionCopy = action;
  v10 = stocks_sync_log(actionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = dCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Attempting to launch %@.", buf, 0xCu);
  }

  v23[0] = &__kCFBooleanTrue;
  v22[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v22[1] = FBSOpenApplicationOptionKeyActions;
  v21 = actionCopy;
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v23[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = [FBSOpenApplicationOptions optionsWithDictionary:v12];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_31A0;
  v18[3] = &unk_C430;
  v19 = dCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = objc_retainBlock(v18);
  v17 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  [v17 openApplication:v15 withOptions:v13 completion:v16];
}

@end