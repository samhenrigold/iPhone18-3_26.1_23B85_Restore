@interface MSDCloudManager
+ (id)sharedManager;
+ (void)handlePushNotification:(id)notification;
- (MSDCloudManager)init;
- (void)_checkAccountStatus;
- (void)_handleAccountStatusUnsupported;
- (void)_handleCKAccountStatusChanged:(id)changed;
- (void)_handleDeviceSupportsEncryption:(id)encryption;
- (void)_withAccountCheckLock:(id)lock;
- (void)addSubscriptionForDatabase:(id)database;
- (void)dealloc;
- (void)isCloudKitAccessAvailable:(id)available;
@end

@implementation MSDCloudManager

- (MSDCloudManager)init
{
  v11.receiver = self;
  v11.super_class = MSDCloudManager;
  v2 = [(MSDCloudManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    accountInfo = v2->_accountInfo;
    v2->_accountInfo = 0;

    v3->_subscriptionFailure = 0;
    v3->_isAccountCheckInProgress = 0;
    v3->_accountCheckLock._os_unfair_lock_opaque = 0;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.mediasetupd.CloudManager", v5);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_handleCKAccountStatusChanged:" name:CKAccountChangedNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"_handleCKAccountStatusChanged:" name:CKIdentityUpdateNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CKAccountChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CKIdentityUpdateNotification object:0];

  v5.receiver = self;
  v5.super_class = MSDCloudManager;
  [(MSDCloudManager *)&v5 dealloc];
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020248;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A90 != -1)
  {
    dispatch_once(&qword_100059A90, block);
  }

  v2 = qword_100059A88;

  return v2;
}

- (void)addSubscriptionForDatabase:(id)database
{
  databaseCopy = database;
  databaseScope = [databaseCopy databaseScope];
  if (databaseScope == 2)
  {
    v6 = @"com.apple.msd.privateDatabaseSubscription";
    goto LABEL_5;
  }

  if (databaseScope == 3)
  {
    v6 = @"com.apple.msd.sharedDatabaseSubscription";
LABEL_5:
    objc_initWeak(&location, self);
    objc_initWeak(&from, databaseCopy);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002040C;
    v10[3] = &unk_100051DB0;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(&v12, &from);
    [databaseCopy addSubscriptionForDatabaseWithIdentifier:v6 completion:v10];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v7 = sub_100030FE4(databaseScope);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100021830();
  }

  v9 = sub_100030FE4(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10002186C(databaseCopy);
  }

LABEL_11:
}

- (void)isCloudKitAccessAvailable:(id)available
{
  availableCopy = available;
  if (availableCopy)
  {
    v4 = +[CKContainer MSDCloudKitContainer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000208B8;
    v6[3] = &unk_100051DD8;
    v7 = availableCopy;
    [v4 accountInfoWithCompletionHandler:v6];

    v5 = v7;
  }

  else
  {
    v5 = sub_100030FE4(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[MSDCloudManager isCloudKitAccessAvailable:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, nil completion handler", buf, 0xCu);
    }
  }
}

+ (void)handlePushNotification:(id)notification
{
  notificationCopy = notification;
  v4 = sub_100030FE4(notificationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling a CloudKit push notification", &v19, 2u);
  }

  userInfo = [notificationCopy userInfo];
  v6 = [CKNotification notificationFromRemoteNotificationDictionary:userInfo];

  if (v6)
  {
    objc_opt_class();
    v8 = v6;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v12 = sub_100030FE4(v11);
    v13 = v12;
    if (!v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000219A4();
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [v10 databaseScope];
      v14 = CKDatabaseScopeString();
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "A CloudKit database changed in DatabaseScope = %@", &v19, 0xCu);
    }

    databaseScope = [v10 databaseScope];
    if (databaseScope == 1)
    {
      v13 = sub_100030FE4(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100021968();
      }

      goto LABEL_22;
    }

    if (databaseScope == 3)
    {
      v13 = +[CKContainer MSDCloudKitContainer];
      sharedCloudDatabase = [v13 sharedCloudDatabase];
      v17 = sharedCloudDatabase;
      v18 = &stru_100051E18;
      goto LABEL_19;
    }

    if (databaseScope == 2)
    {
      v13 = +[CKContainer MSDCloudKitContainer];
      sharedCloudDatabase = [v13 privateCloudDatabase];
      v17 = sharedCloudDatabase;
      v18 = &stru_100051DF8;
LABEL_19:
      [sharedCloudDatabase refreshDatabase:0 completion:v18];

LABEL_22:
    }
  }

  else
  {
    v10 = sub_100030FE4(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000219E0(notificationCopy);
    }
  }
}

- (void)_checkAccountStatus
{
  objc_initWeak(&location, self);
  v2 = +[CKContainer MSDCloudKitContainer];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020E80;
  v3[3] = &unk_100051E68;
  objc_copyWeak(&v4, &location);
  [v2 accountInfoWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_handleAccountStatusUnsupported
{
  [(MSDCloudManager *)self setAccountInfo:0];
  v2 = +[MSDDefaultsManager sharedManager];
  [v2 setObject:&__kCFBooleanFalse forDefault:@"CKAccountSupportsManatee"];

  v3 = +[MSDDefaultsManager sharedManager];
  [v3 clearPrivateAndSharedLocalData];
}

- (void)_handleDeviceSupportsEncryption:(id)encryption
{
  encryptionCopy = encryption;
  v5 = [(CKAccountInfo *)self->_accountInfo isEqual:encryptionCopy];
  if (v5)
  {
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "AccountInfo is the same, skipping update";
      v8 = buf;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    hasValidCredentials = [encryptionCopy hasValidCredentials];
    if (hasValidCredentials)
    {
      [(MSDCloudManager *)self setAccountInfo:encryptionCopy];
      v10 = +[MSDDefaultsManager sharedManager];
      v11 = [v10 objectForDefault:@"CKAccountSupportsManatee"];
      bOOLValue = [v11 BOOLValue];

      if (!bOOLValue)
      {
        v14 = +[MSDDefaultsManager sharedManager];
        [v14 setObject:&__kCFBooleanTrue forDefault:@"CKAccountSupportsManatee"];

        v6 = +[MSDDataController sharedInstance];
        [v6 refreshDataForReason:6 completion:&stru_100051E88];
        goto LABEL_12;
      }

      v6 = sub_100030FE4(v13);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v7 = "Manatee enabled on device, skipping data refresh";
        v8 = &v15;
        goto LABEL_4;
      }
    }

    else
    {
      v6 = sub_100030FE4(hasValidCredentials);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100021C2C();
      }
    }
  }

LABEL_12:
}

- (void)_handleCKAccountStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100030FE4(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    *buf = 138412290;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002160C;
  block[3] = &unk_1000509C0;
  objc_copyWeak(&v9, buf);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_withAccountCheckLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_accountCheckLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_accountCheckLock);
}

@end