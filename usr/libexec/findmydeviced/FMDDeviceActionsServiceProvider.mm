@interface FMDDeviceActionsServiceProvider
- (BOOL)setPasscodeLock:(id)lock statusCode:(int64_t *)code;
- (void)accountAdded;
- (void)accountRemoveRequestedWithCompletion:(id)completion;
- (void)deregisterCommonNotifications;
- (void)didAddNewTrackedLocation:(id)location;
- (void)didMakeProviderActive;
- (void)recordLocation:(id)location ofType:(unsigned __int8)type;
- (void)registerCommonNotifications;
- (void)sendLostModeExitAuthWithToken:(id)token;
- (void)sendTrackedLocations:(id)locations withCurrentLocation:(id)location;
- (void)willMakeProviderInactive;
@end

@implementation FMDDeviceActionsServiceProvider

- (void)didMakeProviderActive
{
  v3 = [[FMDLocationTracker alloc] initWithType:0];
  [(FMDDeviceActionsServiceProvider *)self setLocationTracker:v3];

  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  [locationTracker registerDelegate:self];
}

- (void)willMakeProviderInactive
{
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  [locationTracker deregisterDelegate:self];

  [(FMDDeviceActionsServiceProvider *)self setLocationTracker:0];
}

- (void)accountAdded
{
  [(FMDDeviceActionsServiceProvider *)self _cleanupFMIPPreferences];
  v3.receiver = self;
  v3.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v3 accountAdded];
}

- (void)accountRemoveRequestedWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDDeviceActionsServiceProvider *)self _cleanupFMIPPreferences];
  v5 = +[FMDProtectedContextManager sharedManager];
  [v5 cleanupAllContextsForKey:@"serverContextHeaderContext"];

  v6.receiver = self;
  v6.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v6 accountRemoveRequestedWithCompletion:completionCopy];
}

- (void)registerCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"lostModeDisabled:" name:@"com.apple.AOSNotification.LostModeDisabled" object:0];

  v4.receiver = self;
  v4.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v4 registerCommonNotifications];
}

- (void)deregisterCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.AOSNotification.LostModeDisabled" object:0];

  v4.receiver = self;
  v4.super_class = FMDDeviceActionsServiceProvider;
  [(FMDServiceProvider *)&v4 deregisterCommonNotifications];
}

- (void)recordLocation:(id)location ofType:(unsigned __int8)type
{
  typeCopy = type;
  locationCopy = location;
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];

  if (locationTracker)
  {
    locationTracker2 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
    [locationTracker2 recordLocation:locationCopy ofType:typeCopy];
  }
}

- (BOOL)setPasscodeLock:(id)lock statusCode:(int64_t *)code
{
  lockCopy = lock;
  *code = qword_100312AF8;
  v6 = objc_autoreleasePoolPush();
  v7 = +[FMDSystemConfig sharedInstance];
  isPasscodeSet = [v7 isPasscodeSet];

  if (!lockCopy || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) || (isKindOfClass = [lockCopy length]) == 0)
  {
    localizedDescriptionOfCurrentPasscodeConstraints = sub_100002880(isKindOfClass);
    v12 = os_log_type_enabled(localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT);
    if (isPasscodeSet)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Passcode is already set - Locking device only", buf, 2u);
      }

      *code = qword_100312B00;
      goto LABEL_12;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Invalid passcode state - locking device only", buf, 2u);
    }

    LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = 0;
    v13 = &qword_100312AE0;
    goto LABEL_16;
  }

  if (isPasscodeSet)
  {
    *code = qword_100312B08;
    v10 = sub_100002880(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Passcode already set.  Ignoring new passcode and locking device", buf, 2u);
    }

LABEL_12:
    LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = 1;
    goto LABEL_17;
  }

  v16 = +[MCProfileConnection sharedConnection];
  v17 = [v16 passcode:lockCopy meetsCurrentConstraintsOutError:0];

  v18 = +[MCProfileConnection sharedConnection];
  v19 = v18;
  if (v17)
  {
    LODWORD(localizedDescriptionOfCurrentPasscodeConstraints) = [v18 isPasscodeModificationAllowed];

    if (localizedDescriptionOfCurrentPasscodeConstraints)
    {
      localizedDescriptionOfCurrentPasscodeConstraints = sub_100002880(v20);
      if (os_log_type_enabled(localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, localizedDescriptionOfCurrentPasscodeConstraints, OS_LOG_TYPE_DEFAULT, "Remote Lock:  Setting new lock passcode", buf, 2u);
      }

      v21 = +[MCProfileConnection sharedConnection];
      v34 = 0;
      LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = [v21 changePasscodeFrom:0 to:lockCopy outError:&v34];
      v22 = v34;

      if ((localizedDescriptionOfCurrentPasscodeConstraints & 1) == 0)
      {
        v24 = sub_100002880(v23);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        if (v22)
        {
          if (v25)
          {
            sub_100227394(v22, v24);
          }
        }

        else if (v25)
        {
          sub_10022740C(v24);
        }

        *code = qword_100312AE8;
      }

      v28 = [CDPStateController alloc];
      v29 = +[CDPContext contextForPrimaryAccount];
      v30 = [v28 initWithContext:v29];

      v31 = +[MCProfileConnection sharedConnection];
      v32 = [v31 unlockScreenTypeForPasscode:lockCopy outSimplePasscodeType:0];

      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      [v30 localSecretChangedTo:lockCopy secretType:v33 completion:&stru_1002CE108];

      goto LABEL_17;
    }

    v13 = &qword_100312AF0;
LABEL_16:
    *code = *v13;
    goto LABEL_17;
  }

  localizedDescriptionOfCurrentPasscodeConstraints = [v18 localizedDescriptionOfCurrentPasscodeConstraints];

  v27 = sub_100002880(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = lockCopy;
    v37 = 2112;
    v38 = localizedDescriptionOfCurrentPasscodeConstraints;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Remote Lock: New passcode %@ does not meet current policy: %@", buf, 0x16u);
  }

  *code = qword_100312AD8;
  LOBYTE(localizedDescriptionOfCurrentPasscodeConstraints) = 0;
LABEL_17:
  v14 = +[MCProfileConnection sharedConnection];
  [v14 lockDeviceImmediately:1];

  objc_autoreleasePoolPop(v6);
  return localizedDescriptionOfCurrentPasscodeConstraints;
}

- (void)sendLostModeExitAuthWithToken:(id)token
{
  tokenCopy = token;
  v5 = [[FMDRequestLostModeExitAuth alloc] initWithProvider:self lostModeExitAuthToken:tokenCopy];

  [(FMDRequest *)v5 setCompletionHandler:&stru_1002CE128];
  [(FMDServiceProvider *)self enqueueRequest:v5];
}

- (void)didAddNewTrackedLocation:(id)location
{
  locationCopy = location;
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  if ([locationTracker trackNotifyEnabled])
  {

LABEL_4:
    locationTracker2 = [(FMDDeviceActionsServiceProvider *)self locationTracker];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100147FF8;
    v10[3] = &unk_1002CE150;
    v11 = locationCopy;
    selfCopy = self;
    [locationTracker2 actOnTrackedLocationsUsingBlock:v10];

    v9 = v11;
    goto LABEL_5;
  }

  v6 = +[FMDPreferencesMgr overriddenTrackNotifyEnabled];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = sub_100002880(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not informing provider about change to trackedLocations because trackNotifyEnabled is false", buf, 2u);
  }

LABEL_5:
}

- (void)sendTrackedLocations:(id)locations withCurrentLocation:(id)location
{
  locationCopy = location;
  locationsCopy = locations;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014833C;
  v16[3] = &unk_1002CD580;
  v16[4] = self;
  v8 = [[FMDActingRequestDecorator alloc] initWithDeviceContextGenerator:&stru_1002CE170 deviceInfoGenerator:v16 serverContextGenerator:0 requestHeaderGenerator:0];
  v9 = [FMDRequestTrackedLocations alloc];
  account = [(FMDServiceProvider *)self account];
  locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
  v12 = [(FMDRequestTrackedLocations *)v9 initWithAccount:account currentLocation:locationCopy trackedLocations:locationsCopy locationTracker:locationTracker];

  [(FMDRequest *)v12 setDecorator:v8];
  [(FMDRequest *)v12 setCompletionHandler:&stru_1002CE190];
  ct_green_tea_logger_create_static();
  v13 = getCTGreenTeaOsLogHandle();
  v14 = v13;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Transmitting Location.", v15, 2u);
  }

  [(FMDServiceProvider *)self enqueueRequest:v12];
}

@end