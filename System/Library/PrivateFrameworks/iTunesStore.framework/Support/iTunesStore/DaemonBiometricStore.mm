@interface DaemonBiometricStore
+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)key;
+ (id)_dispatchQueueUpdateToken;
+ (int64_t)tokenUpdateState;
+ (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block;
+ (void)_resetAccount:(id)account withConnection:(id)connection;
+ (void)getAllCachedBiometricHTTPHeadersWithMessage:(id)message connection:(id)connection;
+ (void)getCachedBiometricAuthenticationContextWithMessage:(id)message connection:(id)connection;
+ (void)getCachedBiometricHTTPHeadersWithMessage:(id)message connection:(id)connection;
+ (void)getConstraintsDictionaryWithMessage:(id)message connection:(id)connection;
+ (void)getIdentityMapCountWithMessage:(id)message connection:(id)connection;
+ (void)getKeyCountWithMessage:(id)message connection:(id)connection;
+ (void)getStateWithMessage:(id)message connection:(id)connection;
+ (void)isIdentityMapValidWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)resetAccountWithMessage:(id)message connection:(id)connection;
+ (void)resetWithMessage:(id)message connection:(id)connection;
+ (void)saveIdentityMapWithMessage:(id)message connection:(id)connection;
+ (void)setEnabledWithMessage:(id)message connection:(id)connection;
+ (void)tokenUpdateDidFinishWithLogKey:(id)key;
+ (void)tokenUpdateDidFinishWithMessage:(id)message connection:(id)connection;
+ (void)tokenUpdateShouldStartWithMessage:(id)message connection:(id)connection;
+ (void)tokenUpdateStateWithMessage:(id)message connection:(id)connection;
- (BOOL)canPerformBiometricOptIn;
- (BOOL)isIdentityMapValidForAccountIdentifier:(id)identifier;
- (NSNumber)lastRegisteredAccountIdentifier;
- (id)_bootDate;
- (id)identityMap;
- (int64_t)biometricState;
- (int64_t)tokenAvailabilityForAccountIdentifier:(id)identifier;
- (unint64_t)keyCountForAccountIdentifier:(id)identifier;
- (void)_deleteKeychainTokensForAccountIdentifier:(id)identifier;
- (void)clearLastRegisteredAccountIdentifier;
- (void)obliterateBiometricsForAccountIdentifier:(id)identifier;
- (void)registerAccountIdentifier:(id)identifier;
- (void)setBiometricState:(int64_t)state;
@end

@implementation DaemonBiometricStore

- (int64_t)biometricState
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AMSDeviceBiometricsState", @"com.apple.AppleMediaServices", 0);
  if (AppIntegerValue == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (AppIntegerValue == 1);
  }
}

- (BOOL)canPerformBiometricOptIn
{
  identityMap = [(DaemonBiometricStore *)self identityMap];
  if ([identityMap count])
  {
    v3 = +[MCProfileConnection sharedConnection];
    isPasscodeSet = [v3 isPasscodeSet];
  }

  else
  {
    isPasscodeSet = 0;
  }

  return isPasscodeSet;
}

- (void)clearLastRegisteredAccountIdentifier
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = 138543362;
  v9 = objc_opt_class();
  v6 = v9;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Clearing biometric account identifier", &v8, 12);

  if (v7)
  {
    oSLogObject = [NSString stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog();
LABEL_12:
  }

  CFPreferencesSetAppValue(@"BiometricAccountID", 0, kSSUserDefaultsIdentifier);
}

- (id)identityMap
{
  if ((+[SSDevice deviceIsAudioAccessory]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    manager = [ISWeakLinkedClassForString() manager];
    v2 = [manager identities:0];
  }

  return v2;
}

- (BOOL)isIdentityMapValidForAccountIdentifier:(id)identifier
{
  v3 = +[AMSBiometricsSecurityService isIdentityMapValid];
  v14 = 0;
  v4 = [v3 resultWithError:&v14];
  v5 = v14;

  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      v11 = v10;
      v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: AMS Identity map lookup failed with error: %{public}@", &v15, 22);

      if (!v12)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

- (unint64_t)keyCountForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[DaemonBiometricKeychain sharedInstance];
  v30 = 0;
  v5 = [v4 publicKeyDataForAccountIdentifier_:identifierCopy purpose:0 regenerateKeys:0 error:&v30];
  v6 = v30;

  if (v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v31 = 138543618;
      v32 = v11;
      v33 = 2114;
      v34 = v6;
      v12 = v11;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to query public key for purchase with error: %{public}@", &v31, 22);

      if (!v13)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      v27 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v14 = +[DaemonBiometricKeychain sharedInstance];
  v29 = v6;
  v15 = [v14 publicKeyDataForAccountIdentifier_:identifierCopy purpose:1 regenerateKeys:0 error:&v29];
  v16 = v29;

  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    LODWORD(v19) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v19) = shouldLog2;
  }

  oSLogObject2 = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v19 = v19;
  }

  else
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_27;
  }

  v21 = objc_opt_class();
  v31 = 138543618;
  v32 = v21;
  v33 = 2114;
  v34 = v16;
  v22 = v21;
  LODWORD(v28) = 22;
  v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Failed to query public key for extended actions with error: %{public}@", &v31, v28);

  if (v23)
  {
    oSLogObject2 = [NSString stringWithCString:v23 encoding:4];
    free(v23);
    SSFileLog();
LABEL_27:
  }

LABEL_29:
  v24 = 1;
  if (v5)
  {
    v24 = 2;
  }

  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = v5 != 0;
  }

  return v25;
}

- (NSNumber)lastRegisteredAccountIdentifier
{
  v2 = CFPreferencesCopyAppValue(@"BiometricAccountID", kSSUserDefaultsIdentifier);

  return v2;
}

- (int64_t)tokenAvailabilityForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v17 = 4;
    goto LABEL_23;
  }

  v5 = +[MCProfileConnection sharedConnection];
  isPasscodeSet = [v5 isPasscodeSet];

  if (!isPasscodeSet || (-[DaemonBiometricStore identityMap](self, "identityMap"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v17 = 3;
    goto LABEL_23;
  }

  if (![(DaemonBiometricStore *)self isIdentityMapValidForAccountIdentifier:identifierCopy])
  {
    v17 = 2;
    goto LABEL_23;
  }

  lastRegisteredAccountIdentifier = [(DaemonBiometricStore *)self lastRegisteredAccountIdentifier];
  v10 = [lastRegisteredAccountIdentifier isEqualToNumber:identifierCopy];

  if ((v10 & 1) == 0)
  {
    v11 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Invalid account state detected, but will continue with biometric authorization.", &v19, 12);

      if (!v16)
      {
LABEL_18:

        goto LABEL_19;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
  v17 = 0;
LABEL_23:

  return v17;
}

- (void)obliterateBiometricsForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v11 = 138543618;
  v12 = objc_opt_class();
  v13 = 2112;
  v14 = identifierCopy;
  v9 = v12;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Resetting biometrics for DSID: %@", &v11, 22);

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_12:
  }

  [(DaemonBiometricStore *)self setBiometricState:0];
}

- (void)registerAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v11 = 138543618;
  v12 = objc_opt_class();
  v13 = 2114;
  v14 = identifierCopy;
  v8 = v12;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Registering biometric account identifier for DSID: %{public}@", &v11, 22);

  if (v9)
  {
    oSLogObject = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  v10 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"BiometricAccountID", identifierCopy, kSSUserDefaultsIdentifier);
  CFPreferencesAppSynchronize(v10);
}

- (void)setBiometricState:(int64_t)state
{
  if ([(DaemonBiometricStore *)self biometricState]== state)
  {
    return;
  }

  v5 = [[NSNumber alloc] initWithInteger:state];
  v6 = kSSUserDefaultsIdentifier;
  value = v5;
  CFPreferencesSetAppValue(@"BiometricState", v5, kSSUserDefaultsIdentifier);
  if ((state - 1) <= 1)
  {
    CFPreferencesSetAppValue(@"BiometricStateEnabled", value, v6);
  }

  CFPreferencesAppSynchronize(v6);
  switch(state)
  {
    case 0:
      v7 = 0;
      goto LABEL_16;
    case 1:
      [AMSDevice setBiometricState:2];
      lastRegisteredAccountIdentifier = [(DaemonBiometricStore *)self lastRegisteredAccountIdentifier];
      if (lastRegisteredAccountIdentifier)
      {
        [(DaemonBiometricStore *)self _deleteKeychainTokensForAccountIdentifier:lastRegisteredAccountIdentifier];
      }

      v9 = +[SSAccountStore defaultStore];
      activeAccount = [v9 activeAccount];
      uniqueIdentifier = [activeAccount uniqueIdentifier];

      if (uniqueIdentifier && (!lastRegisteredAccountIdentifier || ([uniqueIdentifier isEqualToNumber:lastRegisteredAccountIdentifier] & 1) == 0))
      {
        [(DaemonBiometricStore *)self _deleteKeychainTokensForAccountIdentifier:uniqueIdentifier];
      }

      break;
    case 2:
      v7 = 1;
LABEL_16:
      [AMSDevice setBiometricState:v7];
      break;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSBiometricsStateChangedNotification, 0, 0, 1u);
}

+ (void)tokenUpdateDidFinishWithLogKey:(id)key
{
  keyCopy = key;
  _dispatchQueueUpdateToken = [objc_opt_class() _dispatchQueueUpdateToken];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F24EC;
  block[3] = &unk_100327110;
  v7 = keyCopy;
  v5 = keyCopy;
  dispatch_async(_dispatchQueueUpdateToken, block);
}

+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  _dispatchQueueUpdateToken = [objc_opt_class() _dispatchQueueUpdateToken];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F276C;
  v7[3] = &unk_1003290E0;
  v8 = keyCopy;
  v9 = &v10;
  v5 = keyCopy;
  dispatch_sync(_dispatchQueueUpdateToken, v7);

  LOBYTE(_dispatchQueueUpdateToken) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return _dispatchQueueUpdateToken;
}

+ (int64_t)tokenUpdateState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _dispatchQueueUpdateToken = [objc_opt_class() _dispatchQueueUpdateToken];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2E98;
  block[3] = &unk_10032C070;
  block[4] = &v6;
  dispatch_sync(_dispatchQueueUpdateToken, block);

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"getAllCachedBiometricHTTPHeadersWithMessage:connection:" forMessage:203];
  [serverCopy addObserver:self selector:"getCachedBiometricAuthenticationContextWithMessage:connection:" forMessage:195];
  [serverCopy addObserver:self selector:"getCachedBiometricHTTPHeadersWithMessage:connection:" forMessage:196];
  [serverCopy addObserver:self selector:"getConstraintsDictionaryWithMessage:connection:" forMessage:214];
  [serverCopy addObserver:self selector:"getCurrentACLVersionWithMessage:connection:" forMessage:213];
  [serverCopy addObserver:self selector:"getIdentityMapCountWithMessage:connection:" forMessage:182];
  [serverCopy addObserver:self selector:"getKeyCountWithMessage:connection:" forMessage:202];
  [serverCopy addObserver:self selector:"getStateWithMessage:connection:" forMessage:122];
  [serverCopy addObserver:self selector:"isIdentityMapValidWithMessage:connection:" forMessage:183];
  [serverCopy addObserver:self selector:"resetAccountWithMessage:connection:" forMessage:125];
  [serverCopy addObserver:self selector:"resetWithMessage:connection:" forMessage:124];
  [serverCopy addObserver:self selector:"saveIdentityMapWithMessage:connection:" forMessage:184];
  [serverCopy addObserver:self selector:"setEnabledWithMessage:connection:" forMessage:123];
  [serverCopy addObserver:self selector:"setAllowedWithMessage:connection:" forMessage:126];
  [serverCopy addObserver:self selector:"tokenUpdateDidFinishWithMessage:connection:" forMessage:206];
  [serverCopy addObserver:self selector:"tokenUpdateShouldStartWithMessage:connection:" forMessage:207];
  [serverCopy addObserver:self selector:"tokenUpdateStateWithMessage:connection:" forMessage:208];
}

+ (void)getAllCachedBiometricHTTPHeadersWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3604;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getCachedBiometricAuthenticationContextWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3CE4;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getCachedBiometricHTTPHeadersWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F4118;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getConstraintsDictionaryWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F472C;
  v7[3] = &unk_10032C098;
  messageCopy = message;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getIdentityMapCountWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001F4AA0;
  v4[3] = &unk_10032C0F8;
  v4[4] = self;
  [self _handleMessage:message connection:connection withReplyBlock:v4];
}

+ (void)getKeyCountWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F4C40;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getStateWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001F4F04;
  v4[3] = &unk_10032C0F8;
  v4[4] = self;
  [self _handleMessage:message connection:connection withReplyBlock:v4];
}

+ (void)isIdentityMapValidWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F5394;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)resetAccountWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F5560;
  v9[3] = &unk_100329FF8;
  connectionCopy = connection;
  selfCopy = self;
  v10 = messageCopy;
  v7 = connectionCopy;
  v8 = messageCopy;
  [self _handleMessage:v8 connection:v7 withReplyBlock:v9];
}

+ (void)resetWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F5700;
  v7[3] = &unk_100329FD0;
  connectionCopy = connection;
  selfCopy = self;
  v6 = connectionCopy;
  [self _handleMessage:message connection:v6 withReplyBlock:v7];
}

+ (void)saveIdentityMapWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F58B8;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)setEnabledWithMessage:(id)message connection:(id)connection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F5B6C;
  v8[3] = &unk_100329FF8;
  messageCopy = message;
  selfCopy = self;
  connectionCopy = connection;
  v6 = messageCopy;
  v7 = connectionCopy;
  [self _handleMessage:v6 connection:v7 withReplyBlock:v8];
}

+ (void)tokenUpdateDidFinishWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F61F8;
  v9[3] = &unk_10032C168;
  objc_copyWeak(&v11, &location);
  v8 = messageCopy;
  v10 = v8;
  [self _handleMessage:v8 connection:connectionCopy withReplyBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (void)tokenUpdateShouldStartWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F63D8;
  v9[3] = &unk_10032C168;
  objc_copyWeak(&v11, &location);
  v8 = messageCopy;
  v10 = v8;
  [self _handleMessage:v8 connection:connectionCopy withReplyBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (void)tokenUpdateStateWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F65C0;
  v8[3] = &unk_10032C190;
  objc_copyWeak(&v9, &location);
  [self _handleMessage:messageCopy connection:connectionCopy withReplyBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

+ (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001F678C;
  v15[3] = &unk_10032A020;
  v16 = connectionCopy;
  v17 = messageCopy;
  v18 = blockCopy;
  selfCopy = self;
  v12 = blockCopy;
  v13 = messageCopy;
  v14 = connectionCopy;
  dispatch_async(v11, v15);
}

- (id)_bootDate
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-v4];

  return v6;
}

- (void)_deleteKeychainTokensForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[DaemonBiometricKeychain sharedInstance];
  v14 = 0;
  v5 = [v4 deleteKeychainTokensForAccountIdentifier_:identifierCopy error:&v14];
  v6 = v14;

  if ((v5 & 1) == 0)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = identifierCopy;
      v19 = 2114;
      v20 = v6;
      v12 = v11;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Reset keychain tokens failed while disabling biometric state for DSID: %@, error: %{public}@", &v15, 32);

      if (!v13)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

+ (void)_resetAccount:(id)account withConnection:(id)connection
{
  accountCopy = account;
  v6 = SSXPCConnectionCopyClientIdentifier();
  v7 = +[SSLogConfig sharedConfig];
  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v14 = 138543874;
  v15 = objc_opt_class();
  v16 = 2112;
  v17 = accountCopy;
  v18 = 2114;
  v19 = v6;
  v11 = v15;
  v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Resetting biometrics for account %@, client = %{public}@", &v14, 32);

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_10:
  }

  v13 = objc_alloc_init(self);
  [v13 obliterateBiometricsForAccountIdentifier:accountCopy];
}

+ (id)_dispatchQueueUpdateToken
{
  if (qword_100384100 != -1)
  {
    sub_1002725DC();
  }

  v3 = qword_100384108;

  return v3;
}

@end