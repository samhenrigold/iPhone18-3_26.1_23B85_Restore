@interface FMDLostModeManager
+ (id)sharedInstance;
- (FMDLostModeManager)init;
- (id)initSingleton;
- (void)_loadLostModeInfo;
- (void)_storeLostModeInfo;
- (void)_updateLocationServicesState;
- (void)dealloc;
- (void)disableLostMode;
- (void)enableLostModeWithMessage:(id)message ownerNumber:(id)number facetimeCapable:(BOOL)capable enableLocationServices:(BOOL)services turnOffStatusBarIconAfterLostMode:(BOOL)mode;
@end

@implementation FMDLostModeManager

+ (id)sharedInstance
{
  if (qword_100314500 != -1)
  {
    sub_10022637C();
  }

  v2 = qword_1003144F8;
  if (!qword_1003144F8)
  {
    v3 = sub_100002880(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMDLostModeManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1003144F8;
  }

  return v2;
}

- (FMDLostModeManager)init
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1002263D4(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v8.receiver = self;
  v8.super_class = FMDLostModeManager;
  v2 = [(FMDLostModeManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002880(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100226418(v4);
    }

    v5 = objc_alloc_init(FMStateCapture);
    [(FMDLostModeManager *)v3 setStateCapture:v5];

    stateCapture = [(FMDLostModeManager *)v3 stateCapture];
    [stateCapture setStateCaptureBlock:&stru_1002CD800];

    [(FMDLostModeManager *)v3 _loadLostModeInfo];
    [(FMDLostModeManager *)v3 _updateLocationServicesState];
    objc_storeStrong(&qword_1003144F8, v3);
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_1003144F8;
  qword_1003144F8 = 0;

  v5.receiver = self;
  v5.super_class = FMDLostModeManager;
  [(FMDLostModeManager *)&v5 dealloc];
}

- (void)enableLostModeWithMessage:(id)message ownerNumber:(id)number facetimeCapable:(BOOL)capable enableLocationServices:(BOOL)services turnOffStatusBarIconAfterLostMode:(BOOL)mode
{
  modeCopy = mode;
  servicesCopy = services;
  capableCopy = capable;
  messageCopy = message;
  numberCopy = number;
  lockScreenMessage = [(FMDLostModeManager *)self lockScreenMessage];
  if (lockScreenMessage != messageCopy)
  {
    lockScreenMessage2 = [(FMDLostModeManager *)self lockScreenMessage];
    if (![messageCopy isEqualToString:lockScreenMessage2])
    {
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  lockScreenOwnerNumber = [(FMDLostModeManager *)self lockScreenOwnerNumber];
  if (lockScreenOwnerNumber == numberCopy)
  {
    v16 = 0;
  }

  else
  {
    v34 = servicesCopy;
    v18 = modeCopy;
    lockScreenOwnerNumber2 = [(FMDLostModeManager *)self lockScreenOwnerNumber];
    v20 = ([numberCopy isEqualToString:lockScreenOwnerNumber2] & 1) == 0 && -[FMDLostModeManager lockScreenFacetimeCapable](self, "lockScreenFacetimeCapable") == capableCopy;

    v16 = v20;
    modeCopy = v18;
    servicesCopy = v34;
  }

  if (lockScreenMessage != messageCopy)
  {
    goto LABEL_11;
  }

LABEL_12:

  [(FMDLostModeManager *)self setLostModeEnabled:1];
  [(FMDLostModeManager *)self setLockScreenMessage:messageCopy];
  [(FMDLostModeManager *)self setLockScreenOwnerNumber:numberCopy];
  [(FMDLostModeManager *)self setLockScreenFacetimeCapable:capableCopy];
  [(FMDLostModeManager *)self setEnableLocationServices:servicesCopy];
  [(FMDLostModeManager *)self _updateLocationServicesState];
  if (![(FMDLostModeManager *)self turnStatusBarIconOffAfterLostMode])
  {
    [(FMDLostModeManager *)self setTurnStatusBarIconOffAfterLostMode:modeCopy];
  }

  [(FMDLostModeManager *)self _storeLostModeInfo];
  v21 = objc_opt_new();
  disableBiometricID = [v21 disableBiometricID];

  v24 = sub_100002880(v23);
  v25 = v24;
  if (disableBiometricID)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10022645C(disableBiometricID, v25);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Disabled biometric ID after entering lost mode", buf, 2u);
  }

  v26 = +[FMDAppleAccountManager sharedInstance];
  iCloudACAccount = [v26 iCloudACAccount];

  v35 = 0;
  v28 = [iCloudACAccount credentialWithError:&v35];
  v29 = v35;
  v30 = v29;
  if (!iCloudACAccount || v29)
  {
    v31 = sub_100002880(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1002264D4(iCloudACAccount, v30, v31);
    }
  }

  else
  {
    [v28 setCredentialItem:0 forKey:ACRawPasswordKey];
  }

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 postNotificationName:@"com.apple.AOSNotification.LostModeInfoChanged" object:0];

  if (v16)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
  }
}

- (void)_updateLocationServicesState
{
  enableLocationServices = [(FMDLostModeManager *)self enableLocationServices];
  locationServicesAssertion = [(FMDLostModeManager *)self locationServicesAssertion];

  if (enableLocationServices)
  {
    if (!locationServicesAssertion)
    {
      v6 = sub_100002880(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accquiring emergency location services assertion", buf, 2u);
      }

      v7 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
      v8 = [CLEmergencyEnablementAssertion newAssertionForBundle:v7 withReason:@"LostMode"];
      [(FMDLostModeManager *)self setLocationServicesAssertion:v8];
    }
  }

  else if (locationServicesAssertion)
  {
    v9 = sub_100002880(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Releasing the emergency location services assertion", v11, 2u);
    }

    locationServicesAssertion2 = [(FMDLostModeManager *)self locationServicesAssertion];
    [locationServicesAssertion2 invalidate];

    [(FMDLostModeManager *)self setLocationServicesAssertion:0];
  }
}

- (void)_storeLostModeInfo
{
  if ([(FMDLostModeManager *)self lostModeEnabled])
  {
    v15[0] = @"lostModeEnabled";
    v3 = [NSNumber numberWithBool:[(FMDLostModeManager *)self lostModeEnabled]];
    v16[0] = v3;
    v15[1] = @"lostModeMessage";
    lockScreenMessage = [(FMDLostModeManager *)self lockScreenMessage];
    v5 = lockScreenMessage;
    if (lockScreenMessage)
    {
      v6 = lockScreenMessage;
    }

    else
    {
      v6 = &stru_1002DCE08;
    }

    v16[1] = v6;
    v15[2] = @"lostModeOwnerNumber";
    lockScreenOwnerNumber = [(FMDLostModeManager *)self lockScreenOwnerNumber];
    v8 = lockScreenOwnerNumber;
    if (lockScreenOwnerNumber)
    {
      v9 = lockScreenOwnerNumber;
    }

    else
    {
      v9 = &stru_1002DCE08;
    }

    v16[2] = v9;
    v15[3] = @"lostModeFacetimeCapable";
    v10 = [NSNumber numberWithBool:[(FMDLostModeManager *)self lockScreenFacetimeCapable]];
    v16[3] = v10;
    v15[4] = off_100312768;
    v11 = [NSNumber numberWithBool:[(FMDLostModeManager *)self enableLocationServices]];
    v16[4] = v11;
    v15[5] = off_100312770;
    v12 = [NSNumber numberWithBool:[(FMDLostModeManager *)self turnStatusBarIconOffAfterLostMode]];
    v16[5] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
  }

  else
  {
    v13 = 0;
  }

  [FMDPreferencesMgr setLostModeInfo:v13];
  v14 = +[FMDFMIPSharedStateManager sharedInstance];
  [v14 recalculateLostMode];
}

- (void)_loadLostModeInfo
{
  v9 = +[FMDPreferencesMgr lostModeInfo];
  v3 = [v9 objectForKeyedSubscript:@"lostModeEnabled"];
  -[FMDLostModeManager setLostModeEnabled:](self, "setLostModeEnabled:", [v3 BOOLValue]);

  v4 = [v9 objectForKeyedSubscript:@"lockScreenMessage"];
  [(FMDLostModeManager *)self setLockScreenMessage:v4];

  v5 = [v9 objectForKeyedSubscript:@"lockScreenOwnerNumber"];
  [(FMDLostModeManager *)self setLockScreenOwnerNumber:v5];

  v6 = [v9 objectForKeyedSubscript:@"lostModeFacetimeCapable"];
  -[FMDLostModeManager setLockScreenFacetimeCapable:](self, "setLockScreenFacetimeCapable:", [v6 BOOLValue]);

  v7 = [v9 objectForKeyedSubscript:off_100312768];
  -[FMDLostModeManager setEnableLocationServices:](self, "setEnableLocationServices:", [v7 BOOLValue]);

  v8 = [v9 objectForKeyedSubscript:off_100312770];
  -[FMDLostModeManager setTurnStatusBarIconOffAfterLostMode:](self, "setTurnStatusBarIconOffAfterLostMode:", [v8 BOOLValue]);
}

- (void)disableLostMode
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lost mode is being disabled", buf, 2u);
  }

  if ([(FMDLostModeManager *)self enableLocationServices])
  {
    [(FMDLostModeManager *)self setEnableLocationServices:0];
    [(FMDLostModeManager *)self _updateLocationServicesState];
  }

  turnStatusBarIconOffAfterLostMode = [(FMDLostModeManager *)self turnStatusBarIconOffAfterLostMode];
  if (turnStatusBarIconOffAfterLostMode)
  {
    v5 = sub_100002880(turnStatusBarIconOffAfterLostMode);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Turning off status bar icon since it was off before the device entered lost mode", v7, 2u);
    }

    [CLLocationManager setStatusBarIconEnabled:0 forLocationEntityClass:4];
    [(FMDLostModeManager *)self setTurnStatusBarIconOffAfterLostMode:0];
  }

  [(FMDLostModeManager *)self setLostModeEnabled:0];
  [(FMDLostModeManager *)self _storeLostModeInfo];
  [(FMDLostModeManager *)self _loadLostModeInfo];
  +[FMDMessage stopAllSounds];
  dispatch_async(&_dispatch_main_q, &stru_1002CD820);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
}

@end