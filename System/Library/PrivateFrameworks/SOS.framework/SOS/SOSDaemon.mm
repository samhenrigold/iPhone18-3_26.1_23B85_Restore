@interface SOSDaemon
+ (void)connectToDaemon;
- (SOSDaemon)init;
- (id)keepAliveFileDirectory;
- (id)keepAliveFilePath;
- (void)SOSHasActiveTriggerChanged:(id)changed;
- (void)SOSSendingLocationUpdateChanged:(id)changed;
- (void)createKeepAlivePathStateFile;
- (void)dealloc;
- (void)deleteKeepAlivePathStateFile;
- (void)languageDidChange;
- (void)releaseLocationStatusBarAssertion;
- (void)run;
- (void)startSendingLocationUpdateNotification;
- (void)stopSendingLocationUpdateNotification;
- (void)takeLocationStatusBarAssertion;
- (void)takeMessageSendingOSTransaction;
@end

@implementation SOSDaemon

- (void)run
{
  v3 = sub_10000225C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v4 = +[NSRunLoop mainRunLoop];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100000FB4;
  v5[3] = &unk_100004230;
  v5[4] = self;
  [v4 performBlock:v5];
  [v4 run];
}

- (SOSDaemon)init
{
  v3 = sub_10000225C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "initializing SOSDaemon", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = SOSDaemon;
  v4 = [(SOSDaemon *)&v22 init];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"SOSSendingLocationUpdateChanged:" name:SOSSendingLocationUpdateChangedNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"SOSHasActiveTriggerChanged:" name:SOSHasActiveTriggerChangedNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_10000124C, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = +[SOSEngine sharedInstance];
    sosEngine = v4->_sosEngine;
    v4->_sosEngine = v8;

    v10 = [NSXPCListener alloc];
    v11 = [v10 initWithMachServiceName:SOSMachService];
    xpcListener = v4->_xpcListener;
    v4->_xpcListener = v11;

    [(NSXPCListener *)v4->_xpcListener setDelegate:v4->_sosEngine];
    [(NSXPCListener *)v4->_xpcListener resume];
    v13 = [NSXPCListener alloc];
    v14 = [v13 initWithMachServiceName:SOSStatusMachService];
    v15 = v4->_xpcListener;
    v4->_xpcListener = v14;

    v16 = v4->_xpcListener;
    sosStatusManager = [(SOSEngine *)v4->_sosEngine sosStatusManager];
    [(NSXPCListener *)v16 setDelegate:sosStatusManager];

    [(NSXPCListener *)v4->_xpcListener resume];
    is_valid_token = notify_register_dispatch(SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME, &v4->_notifyToken, &_dispatch_main_q, &stru_100004270);
    v19 = is_valid_token;
    if (is_valid_token || (is_valid_token = notify_is_valid_token(v4->_notifyToken), !is_valid_token))
    {
      v20 = sub_10000225C(is_valid_token);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100002374(&v4->_notifyToken, v19, v20);
      }
    }

    else
    {
      notify_set_state(v4->_notifyToken, 1uLL);
    }

    notify_post(SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME);
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:SOSSendingLocationUpdateChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:SOSHasActiveTriggerChangedNotification object:0];

  notify_cancel(self->_notifyToken);
  v5.receiver = self;
  v5.super_class = SOSDaemon;
  [(SOSDaemon *)&v5 dealloc];
}

- (void)SOSSendingLocationUpdateChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_10000225C(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  userInfo = [changedCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:SOSSendingLocationUpdateValueKey];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    [(SOSDaemon *)self startSendingLocationUpdateNotification];
  }

  else
  {
    [(SOSDaemon *)self stopSendingLocationUpdateNotification];
  }
}

- (void)startSendingLocationUpdateNotification
{
  v3 = sub_10000225C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [(SOSDaemon *)self createKeepAlivePathStateFile];
  [(SOSDaemon *)self takeMessageSendingOSTransaction];
  [(SOSDaemon *)self takeLocationStatusBarAssertion];
}

- (void)stopSendingLocationUpdateNotification
{
  v3 = sub_10000225C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [(SOSDaemon *)self releaseLocationStatusBarAssertion];
  [(SOSDaemon *)self releaseMessageSendingOSTransaction];
  if (!self->_sosIsStarting)
  {
    [(SOSDaemon *)self deleteKeepAlivePathStateFile];
  }
}

- (void)SOSHasActiveTriggerChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_10000225C(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSDaemon, SOSHasActiveTriggerChanged", v8, 2u);
  }

  userInfo = [changedCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:SOSHasActiveTriggerValueKey];
  self->_sosIsStarting = [v7 BOOLValue];

  if (self->_sosIsStarting)
  {
    [(SOSDaemon *)self createKeepAlivePathStateFile];
  }

  else if (!self->_sendingMessagesOSTransaction)
  {
    [(SOSDaemon *)self deleteKeepAlivePathStateFile];
  }
}

- (void)takeLocationStatusBarAssertion
{
  v3 = +[SOSUtilities isSOSLiveActivityEnabled];
  if (v3 && (v3 = +[SOSUtilities deviceHasDynamicIsland], v3))
  {
    v4 = sub_10000225C(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not taking location status bar assertion since live activity will cover this on phone", buf, 2u);
    }
  }

  else
  {
    v5 = sub_10000225C(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
    }

    v6 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:0x10000 forPID:getpid() exclusive:0 showsWhenForeground:1];
    locationSBAssertion = self->_locationSBAssertion;
    self->_locationSBAssertion = v6;

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SOS_USING_YOUR_LOCATION" value:&stru_100004398 table:0];
    [(SBSStatusBarStyleOverridesAssertion *)self->_locationSBAssertion setStatusString:v9];

    v10 = self->_locationSBAssertion;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000018C4;
    v12[3] = &unk_100004298;
    v12[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000019A0;
    v11[3] = &unk_100004230;
    v11[4] = self;
    [(SBSStatusBarStyleOverridesAssertion *)v10 acquireWithHandler:v12 invalidationHandler:v11];
  }
}

- (void)releaseLocationStatusBarAssertion
{
  v3 = sub_10000225C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    locationSBAssertion = self->_locationSBAssertion;
    v6 = 138412290;
    v7 = locationSBAssertion;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_locationSBAssertion: %@", &v6, 0xCu);
  }

  [(SBSStatusBarStyleOverridesAssertion *)self->_locationSBAssertion invalidate];
  v5 = self->_locationSBAssertion;
  self->_locationSBAssertion = 0;
}

- (void)takeMessageSendingOSTransaction
{
  self->_sendingMessagesOSTransaction = os_transaction_create();

  _objc_release_x1();
}

- (id)keepAliveFileDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v7[0] = v3;
  v7[1] = @"SOS";
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSString pathWithComponents:v4];

  return v5;
}

- (id)keepAliveFilePath
{
  keepAliveFileDirectory = [(SOSDaemon *)self keepAliveFileDirectory];
  keepAliveFilename = [(SOSDaemon *)self keepAliveFilename];
  v5 = [keepAliveFileDirectory stringByAppendingPathComponent:keepAliveFilename];

  return v5;
}

- (void)createKeepAlivePathStateFile
{
  v3 = +[NSFileManager defaultManager];
  keepAliveFilePath = [(SOSDaemon *)self keepAliveFilePath];
  v5 = [v3 fileExistsAtPath:keepAliveFilePath isDirectory:0];

  if ((v5 & 1) == 0)
  {
    keepAliveFileDirectory = [(SOSDaemon *)self keepAliveFileDirectory];
    v19 = 0;
    v7 = [v3 createDirectoryAtPath:keepAliveFileDirectory withIntermediateDirectories:1 attributes:0 error:&v19];
    v8 = v19;

    v10 = sub_10000225C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      keepAliveFileDirectory2 = [(SOSDaemon *)self keepAliveFileDirectory];
      *buf = 138412802;
      v21 = keepAliveFileDirectory2;
      v22 = 1024;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created directory at path %@ with success: %d error: %@", buf, 0x1Cu);
    }

    keepAliveFilePath2 = [(SOSDaemon *)self keepAliveFilePath];
    v18 = 0;
    v13 = [@"SOS_in_progress\n" writeToFile:keepAliveFilePath2 atomically:1 encoding:4 error:&v18];
    v14 = v18;

    v16 = sub_10000225C(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      keepAliveFilePath3 = [(SOSDaemon *)self keepAliveFilePath];
      *buf = 138412802;
      v21 = keepAliveFilePath3;
      v22 = 1024;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wrote to file at path %@ with success: %d error: %@", buf, 0x1Cu);
    }
  }
}

- (void)deleteKeepAlivePathStateFile
{
  v3 = +[NSFileManager defaultManager];
  keepAliveFilePath = [(SOSDaemon *)self keepAliveFilePath];
  v10 = 0;
  v5 = [v3 removeItemAtPath:keepAliveFilePath error:&v10];
  v6 = v10;

  v8 = sub_10000225C(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    keepAliveFilePath2 = [(SOSDaemon *)self keepAliveFilePath];
    *buf = 138412802;
    v12 = keepAliveFilePath2;
    v13 = 1024;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed file at path %@ success: %d error: %@", buf, 0x1Cu);
  }
}

+ (void)connectToDaemon
{
  v2 = sub_10000225C(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v8, 2u);
  }

  v3 = +[IMDaemonController sharedInstance];
  v4 = [v3 hasListenerForID:@"SOSMessages"];

  if ((v4 & 1) == 0)
  {
    v5 = +[IMDaemonController sharedInstance];
    if (qword_100008378 != -1)
    {
      sub_100002480();
    }

    [v5 addListenerID:@"SOSMessages" capabilities:dword_100008370];

    v6 = +[IMDaemonController sharedInstance];
    [v6 blockUntilConnected];

    v7 = +[IMDaemonController sharedInstance];
    [v7 _setBlocksConnectionAtResume:1];
  }
}

- (void)languageDidChange
{
  v2 = sub_10000225C(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v3, 2u);
  }

  exit(0);
}

@end