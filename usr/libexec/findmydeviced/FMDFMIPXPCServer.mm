@interface FMDFMIPXPCServer
- (BOOL)_hasAuthAccessEntitlement;
- (BOOL)_hasClientAccessEntitlement;
- (BOOL)_hasRepairDeviceAccessEntitlement;
- (BOOL)_hasSharedConfigurationAccessEntitlement;
- (BOOL)_hasUCRTHealingAccessEntitlement;
- (id)_deviceIdentifiersForSignature;
- (id)_errorForCode:(int)code message:(id)message;
- (id)locateStats;
- (void)_forceUpgradeAlertForKey:(id)key UsingCallback:(id)callback;
- (void)activationLockAuthInfoWithCompletion:(id)completion;
- (void)activationLockInfoFromDeviceWithCompletion:(id)completion;
- (void)activationLockVersionWithCompletion:(id)completion;
- (void)attemptUCRTHealing:(id)healing completion:(id)completion;
- (void)clearData:(unint64_t)data completion:(id)completion;
- (void)clearMaskedAppleIDWithCompletion:(id)completion;
- (void)clearOfflineFindingInfoWithCompletion:(id)completion;
- (void)clearTheftAndLossCFUWithReply:(id)reply;
- (void)deviceActivationDidSucceedUsingCallback:(id)callback;
- (void)deviceEligibleForRepairWithContext:(id)context completion:(id)completion;
- (void)didAddLocalFindableAccessory:(id)accessory completion:(id)completion;
- (void)didChangeFMIPAccountInfo:(id)info usingCallback:(id)callback;
- (void)didReceiveLostModeExitAuthToken:(id)token usingCallback:(id)callback;
- (void)didRemoveLocalFindableAccessory:(id)accessory completion:(id)completion;
- (void)disableFMIPForAccount:(id)account pairedDeviceWithUDID:(id)d usingCallback:(id)callback;
- (void)disableFMIPUsingToken:(id)token forPairedDeviceWithUDID:(id)d usingCallback:(id)callback;
- (void)disableFMIPUsingToken:(id)token inContext:(unint64_t)context usingCallback:(id)callback;
- (void)disableLocationDisplayWithCompletion:(id)completion;
- (void)disableLostModeUsingCallback:(id)callback;
- (void)downloadSharedConfigurationWithLocale:(id)locale reply:(id)reply;
- (void)enableActivationLockUsingCallback:(id)callback;
- (void)enableFMIPInContext:(unint64_t)context usingCallback:(id)callback;
- (void)enableLostModeWithInfo:(id)info usingCallback:(id)callback;
- (void)enableRepairWithContext:(id)context completion:(id)completion;
- (void)fetchAPNSTokenWithCompletion:(id)completion;
- (void)fetchAccessoryConfigurations:(id)configurations;
- (void)fetchOfflineFindingInfoWithCompletion:(id)completion;
- (void)getAccessoriesWithCompletion:(id)completion;
- (void)getConnectedAccessoriesDiscoveryIds:(id)ids;
- (void)getFMIPStateUsingCallback:(id)callback;
- (void)getFmipAccountUsingCallback:(id)callback;
- (void)getLockdownShouldDisableDevicePairingUsingCallback:(id)callback;
- (void)getLockdownShouldDisableDeviceRestoreUsingCallback:(id)callback;
- (void)getTheftAndLossCoverageWithSerialNumber:(id)number reply:(id)reply;
- (void)initiateLostModeExitAuthForApp:(id)app idsDeviceID:(id)d usingCallback:(id)callback;
- (void)isActivationLockAllowedUsingCallback:(id)callback;
- (void)isActivationLockEnabledUsingCallback:(id)callback;
- (void)isActivationLockedUsingCallback:(id)callback;
- (void)lowBatteryLocateEnabledUsingCallback:(id)callback;
- (void)markAsMissingSupportedForPairedDeviceWithUDID:(id)d usingCallback:(id)callback;
- (void)markPairedDeviceWithUDID:(id)d asMissingUsingToken:(id)token callback:(id)callback;
- (void)pairingCheckWith:(id)with completion:(id)completion;
- (void)playSoundWithOptions:(id)options completion:(id)completion;
- (void)postTheftAndLossCFUWithEntry:(id)entry reply:(id)reply;
- (void)primaryAppleAccountRemoved;
- (void)registerDeviceForPairingLock:(id)lock completion:(id)completion;
- (void)removeAccessoryWithDiscoveryId:(id)id completion:(id)completion;
- (void)requestTheftAndLossCFUWithStrings:(id)strings andReply:(id)reply;
- (void)requireDisableLocationWithCompletion:(id)completion;
- (void)scheduleDailyLocateReportXPCActivity;
- (void)sendPairedDeviceLostModeExitAuthToken:(id)token deviceID:(id)d;
- (void)setDailyLocateReportEnabled:(BOOL)enabled;
- (void)setLowBatteryLocateEnabled:(BOOL)enabled usingCallback:(id)callback;
- (void)setPhoneNumber:(id)number toAccessoryWithDiscoveryId:(id)id completion:(id)completion;
- (void)showDailyLocateReport;
- (void)signatureHeadersWithData:(id)data completion:(id)completion;
- (void)simulatePushWithPayload:(id)payload completion:(id)completion;
- (void)soundStoppedForAccessoryIdentifier:(id)identifier;
- (void)startLocationMonitoring:(id)monitoring;
- (void)startLocationMonitoringWithContext:(id)context completion:(id)completion;
- (void)startLocationMonitoringWithContext:(id)context forcePublish:(BOOL)publish completion:(id)completion;
- (void)stopLocationMonitoring:(id)monitoring;
- (void)stopLocationMonitoringWithContext:(id)context completion:(id)completion;
- (void)storeOfflineFindingInfo:(id)info completion:(id)completion;
- (void)updateMaskedAppleIDWith:(id)with completion:(id)completion;
- (void)updatePairingLockInfo:(id)info completion:(id)completion;
- (void)updatedConfigReceived:(id)received completion:(id)completion;
@end

@implementation FMDFMIPXPCServer

- (BOOL)_hasClientAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.aosnotification.aosnotifyd-access"];

  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:@"com.apple.icloud.findmydeviced.access"];

  if (v3 && ([&__kCFBooleanTrue isEqual:v3] & 1) != 0)
  {
    v6 = 1;
  }

  else if (v5)
  {
    v6 = [&__kCFBooleanTrue isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enableLostModeWithInfo:(id)info usingCallback:(id)callback
{
  infoCopy = info;
  callbackCopy = callback;
  v9 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v61 = "[FMDFMIPXPCServer enableLostModeWithInfo:usingCallback:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v28 = NSStringFromSelector(a2);
    v29 = [NSString stringWithFormat:@"Entitlement not found for %@", v28];

    v31 = sub_100002880(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v32 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v29];
      callbackCopy[2](callbackCopy, v32);
    }

    goto LABEL_24;
  }

  lostModeEnabled = [infoCopy lostModeEnabled];
  if (lostModeEnabled)
  {
    v11 = +[FMDSystemConfig sharedInstance];
    isPasscodeSet = [v11 isPasscodeSet];

    if (isPasscodeSet)
    {
      v14 = +[FMDLostModeManager sharedInstance];
      lostModeEnabled2 = [v14 lostModeEnabled];

      if (!lostModeEnabled2)
      {
        v59[0] = &__kCFBooleanTrue;
        v58[0] = @"lostModeEnabled";
        v58[1] = @"lostModeMessage";
        message = [infoCopy message];
        v50 = message;
        if (message)
        {
          v51 = message;
        }

        else
        {
          v51 = &stru_1002DCE08;
        }

        v59[1] = v51;
        v58[2] = @"lostModeOwnerNumber";
        phoneNumber = [infoCopy phoneNumber];
        v53 = phoneNumber;
        if (phoneNumber)
        {
          v54 = phoneNumber;
        }

        else
        {
          v54 = &stru_1002DCE08;
        }

        v59[2] = v54;
        v58[3] = @"lostModeFacetimeCapable";
        v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy facetimeCapable]);
        v59[3] = v55;
        v29 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];

        [FMDPreferencesMgr setClientLostModeInfo:v29];
        v56 = +[FMDFMIPSharedStateManager sharedInstance];
        [v56 recalculateLostMode];

        SBSSpringBoardServerPort();
        SBLockDevice();
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
        if (callbackCopy)
        {
          callbackCopy[2](callbackCopy, 0);
        }

        goto LABEL_24;
      }

      v17 = sub_100002880(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10022C450(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      if (callbackCopy)
      {
        v25 = @"Device is already in FMIP lost mode.";
        selfCopy3 = self;
        v27 = 8;
LABEL_23:
        v29 = [(FMDFMIPXPCServer *)selfCopy3 _errorForCode:v27 message:v25];
        callbackCopy[2](callbackCopy, v29);
LABEL_24:
      }
    }

    else
    {
      v41 = sub_100002880(v13);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10022C3D8(v41, v42, v43, v44, v45, v46, v47, v48);
      }

      if (callbackCopy)
      {
        v25 = @"Passcode is not set. Cannot enable lost mode.";
        selfCopy3 = self;
        v27 = 7;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v33 = sub_100002880(lostModeEnabled);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10022C360(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    if (callbackCopy)
    {
      v25 = @"You have passed in lostModeEnabled as NO. This is invalid";
      selfCopy3 = self;
      v27 = 1;
      goto LABEL_23;
    }
  }
}

- (void)disableLostModeUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[FMDFMIPXPCServer disableLostModeUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v12 = NSStringFromSelector(a2);
    locationTracker = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v16 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:locationTracker];
      callbackCopy[2](callbackCopy, v16);
    }

    goto LABEL_20;
  }

  v7 = +[FMDSystemConfig sharedInstance];
  isLocked = [v7 isLocked];

  if (isLocked)
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022C504();
    }

    if (callbackCopy)
    {
      v11 = @"Keybag is still locked. Cannot disable lost mode";
LABEL_19:
      locationTracker = [(FMDFMIPXPCServer *)self _errorForCode:9 message:v11];
      callbackCopy[2](callbackCopy, locationTracker);
LABEL_20:
    }
  }

  else
  {
    v17 = +[FMDFMIPManager sharedInstance];
    lostModeInfo = [v17 lostModeInfo];
    lostModeType = [lostModeInfo lostModeType];

    if (lostModeType != 5 && lostModeType != 3)
    {
      [FMDPreferencesMgr setClientLostModeInfo:0];
      v22 = +[FMDFMIPSharedStateManager sharedInstance];
      [v22 recalculateLostMode];

      v23 = +[FMDServiceProvider activeServiceProvider];
      locationTracker = [v23 locationTracker];

      [locationTracker deleteLocationTrackingInfoAndStopTracking];
      v24 = +[FMDLostModeManager sharedInstance];
      [v24 disableLostMode];

      if (callbackCopy)
      {
        callbackCopy[2](callbackCopy, 0);
      }

      goto LABEL_20;
    }

    v21 = sub_100002880(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10022C4C8();
    }

    if (callbackCopy)
    {
      v11 = @"Device is in managed lost mode. Cannot disable lost mode";
      goto LABEL_19;
    }
  }
}

- (void)deviceActivationDidSucceedUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[FMDFMIPXPCServer deviceActivationDidSucceedUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    [FMDPreferencesMgr setFMIPWipeLostModeInfo:0];
    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, 0);
    }
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v7];

    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v8];
      (callbackCopy)[2](callbackCopy, v11);
    }
  }
}

- (void)getLockdownShouldDisableDeviceRestoreUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer getLockdownShouldDisableDeviceRestoreUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDAppleAccountManager sharedInstance];
    fmipACAccount = [v7 fmipACAccount];

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, fmipACAccount != 0, 0);
    }
  }

  else
  {
    v9 = NSStringFromSelector(a2);
    fmipACAccount = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:fmipACAccount];
      (callbackCopy)[2](callbackCopy, 0, v12);
    }
  }
}

- (void)getLockdownShouldDisableDevicePairingUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPXPCServer getLockdownShouldDisableDevicePairingUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    [FMPreferencesUtil synchronizeDomain:kFMDPostWipePrefDomain];
    v7 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
    if (v7)
    {
      if (callbackCopy)
      {
        (*(callbackCopy + 2))(callbackCopy, 0, 0);
      }

      goto LABEL_21;
    }

    [FMPreferencesUtil synchronizeDomain:kFMDPublicNotBackedUpPrefDomain];
    v12 = [FMPreferencesUtil dictionaryForKey:@"FMIPLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];
    v11 = v12;
    if (v12 && ([v12 objectForKeyedSubscript:@"lostModeEnabled"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, (v14 & 1) != 0))
    {
      bOOLValue = 1;
      if (!callbackCopy)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = [FMPreferencesUtil dictionaryForKey:@"ClientLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKeyedSubscript:@"lostModeEnabled"];
        bOOLValue = [v18 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      if (!callbackCopy)
      {
        goto LABEL_20;
      }
    }

    (*(callbackCopy + 2))(callbackCopy, bOOLValue, 0);
LABEL_20:

    goto LABEL_21;
  }

  v8 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

  v10 = sub_100002880(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (callbackCopy)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    (*(callbackCopy + 2))(callbackCopy, 0, v11);
    goto LABEL_20;
  }

LABEL_21:
}

- (void)getFMIPStateUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPXPCServer getFMIPStateUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    fmipState = [v7 fmipState];

    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = fmipState;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning FMIP state : %ld", buf, 0xCu);
    }

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, fmipState, 0);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (callbackCopy)[2](callbackCopy, 4, v15);
    }
  }
}

- (void)getFmipAccountUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer getFmipAccountUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDAppleAccountManager sharedInstance];
    fmipACAccount = [v7 fmipACAccount];

    if (callbackCopy)
    {
      username = [fmipACAccount username];
      aa_personID = [fmipACAccount aa_personID];
      callbackCopy[2](callbackCopy, username, aa_personID, 0);

LABEL_10:
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    fmipACAccount = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      username = [(FMDFMIPXPCServer *)self _errorForCode:6 message:fmipACAccount];
      (callbackCopy)[2](callbackCopy, 0, 0, username);
      goto LABEL_10;
    }
  }
}

- (void)didChangeFMIPAccountInfo:(id)info usingCallback:(id)callback
{
  infoCopy = info;
  callbackCopy = callback;
  v9 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[FMDFMIPXPCServer didChangeFMIPAccountInfo:usingCallback:]";
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s with changeDesc %@", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDAppleAccountManager sharedInstance];
    [v10 syncFMIPAccountInfo];

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, 0);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (callbackCopy)[2](callbackCopy, v15);
    }
  }
}

- (void)enableFMIPInContext:(unint64_t)context usingCallback:(id)callback
{
  callbackCopy = callback;
  v8 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[FMDFMIPXPCServer enableFMIPInContext:usingCallback:]";
    v34 = 2048;
    contextCopy = context;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s in context %lu", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v9 = +[FMDAppleAccountManager sharedInstance];
    iCloudACAccount = [v9 iCloudACAccount];

    if (iCloudACAccount)
    {
      v11 = kAccountDataclassDeviceLocator;
      if ([iCloudACAccount isProvisionedForDataclass:kAccountDataclassDeviceLocator])
      {
        v12 = +[FMDServiceProvider activeServiceProvider];
        account = [v12 account];

        if (account && ([iCloudACAccount aa_personID], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(account, "dsid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16))
        {
          [account applyPropertiesFromACAccount:iCloudACAccount];
          v17 = +[FMDServiceProvider activeServiceProvider];
          [(FMDFMIPAccount *)v17 updateAccount:account];
        }

        else
        {
          v17 = objc_alloc_init(FMDFMIPAccount);
          [(FMDFMIPAccount *)v17 applyPropertiesFromACAccount:iCloudACAccount];
          [(FMDFMIPAccount *)v17 setFmipEnableContext:context];
          v28 = +[NSDate date];
          [(FMDAccount *)v17 setAccountAddTime:v28];

          dsid = [account dsid];
          [(FMDFMIPAccount *)v17 setLastLoggedInDsid:dsid];

          v30 = +[FMDServiceProvider activeServiceProvider];
          [v30 addAccount:v17];
        }

        v31 = +[FMIPConfig sharedInstance];
        [v31 enableFMIPLocationServices];

        if (callbackCopy)
        {
          callbackCopy[2](callbackCopy, 0);
        }

        goto LABEL_25;
      }

      aa_personID = [iCloudACAccount aa_personID];
      account = [NSString stringWithFormat:@"The account %@ is not provisioned for %@", aa_personID, v11];

      v26 = sub_100002880(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10022A1D0();
      }

      if (!callbackCopy)
      {
        goto LABEL_25;
      }

      selfCopy2 = self;
      v23 = 9;
    }

    else
    {
      account = [NSString stringWithFormat:@"No iCloud account found to enableFMIP"];
      v21 = sub_100002880(account);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10022A1D0();
      }

      if (!callbackCopy)
      {
        goto LABEL_25;
      }

      selfCopy2 = self;
      v23 = 5;
    }

    v27 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v23 message:account];
    (callbackCopy)[2](callbackCopy, v27);

LABEL_25:
    goto LABEL_26;
  }

  v18 = NSStringFromSelector(a2);
  iCloudACAccount = [NSString stringWithFormat:@"Entitlement not found for %@", v18];

  v20 = sub_100002880(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (callbackCopy)
  {
    account = [(FMDFMIPXPCServer *)self _errorForCode:6 message:iCloudACAccount];
    (callbackCopy)[2](callbackCopy, account);
    goto LABEL_25;
  }

LABEL_26:
}

- (void)disableFMIPUsingToken:(id)token inContext:(unint64_t)context usingCallback:(id)callback
{
  tokenCopy = token;
  callbackCopy = callback;
  v11 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "non-nil";
    contextCopy3 = "[FMDFMIPXPCServer disableFMIPUsingToken:inContext:usingCallback:]";
    *buf = 136315650;
    if (!tokenCopy)
    {
      v12 = "nil";
    }

    v54 = 2048;
    contextCopy = context;
    v56 = 2080;
    v57 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s in context %lu with %s token", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v13 = +[FMDSystemConfig sharedInstance];
    isBuddyDone = [v13 isBuddyDone];

    if (isBuddyDone)
    {
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10019F3B8;
      v48[3] = &unk_1002D04D8;
      v49 = tokenCopy;
      contextCopy2 = context;
      v15 = callbackCopy;
      v50 = v15;
      v16 = objc_retainBlock(v48);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10019F534;
      v46[3] = &unk_1002CD8B0;
      v46[4] = self;
      v47 = v15;
      v17 = objc_retainBlock(v46);
      v18 = +[FMDRatchetManager isFeatureEnabled];
      if (!v18)
      {
        v29 = sub_10017DEB4(v18);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ratchet not enabled. Allowing disable FMIP.", buf, 2u);
        }

        (v16[2])(v16);
        goto LABEL_28;
      }

      if (context == 4)
      {
        v19 = +[FMDOwnerAuthenticationManager ownerAuthenticationManagerEraseAllContentsAndSettings];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10019F640;
        v40[3] = &unk_1002CE250;
        v41 = v16;
        [v19 setPermittedOperationBlock:v40];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10019F650;
        v38[3] = &unk_1002CE250;
        v39 = v17;
        [v19 setDeniedOperationBlock:v38];
        [v19 evaluateOperation];

        v20 = v41;
      }

      else
      {
        if (context != 2)
        {
          v30 = sub_10017DEB4(v18);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            contextCopy3 = context;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Checking ratchet for the context: %lu.", buf, 0xCu);
          }

          v31 = +[FMDRatchetManager ratchetManagerTurnOffFMIP];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_10019F660;
          v35[3] = &unk_1002D0500;
          contextCopy4 = context;
          v36 = v16;
          [v31 setPermittedOperationBlock:v35];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10019F718;
          v32[3] = &unk_1002D0500;
          contextCopy5 = context;
          v33 = v17;
          [v31 setDeniedOperationBlock:v32];
          [v31 evaluateOperation];

          goto LABEL_28;
        }

        v19 = +[FMDRatchetManager ratchetManageriCloudSignOut];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10019F620;
        v44[3] = &unk_1002CE250;
        v45 = v16;
        [v19 setPermittedOperationBlock:v44];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10019F630;
        v42[3] = &unk_1002CE250;
        v43 = v17;
        [v19 setDeniedOperationBlock:v42];
        [v19 evaluateOperation];

        v20 = v45;
      }

LABEL_28:
      v22 = v49;
      goto LABEL_29;
    }

    v22 = [NSString stringWithFormat:@"FMIP account cannot be removed till buddy is complete"];
    v27 = sub_100002880(v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v26 = 9;
      goto LABEL_19;
    }
  }

  else
  {
    v21 = NSStringFromSelector(a2);
    v22 = [NSString stringWithFormat:@"Entitlement not found for %@", v21];

    v24 = sub_100002880(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v26 = 6;
LABEL_19:
      v28 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v26 message:v22];
      (*(callbackCopy + 2))(callbackCopy, v28);
    }
  }

LABEL_29:
}

- (void)disableFMIPUsingToken:(id)token forPairedDeviceWithUDID:(id)d usingCallback:(id)callback
{
  tokenCopy = token;
  dCopy = d;
  callbackCopy = callback;
  v12 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "non-nil";
    v29 = "[FMDFMIPXPCServer disableFMIPUsingToken:forPairedDeviceWithUDID:usingCallback:]";
    *buf = 136315650;
    if (!tokenCopy)
    {
      v13 = "nil";
    }

    v30 = 2112;
    v31 = dCopy;
    v32 = 2080;
    v33 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@ with %s token", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v14 = +[FMDSystemConfig sharedInstance];
    isBuddyDone = [v14 isBuddyDone];

    if (isBuddyDone)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019FA9C;
      block[3] = &unk_1002CE278;
      v25 = tokenCopy;
      v26 = dCopy;
      v27 = callbackCopy;
      dispatch_async(&_dispatch_main_q, block);

      v16 = v25;
      goto LABEL_17;
    }

    v16 = [NSString stringWithFormat:@"FMIP account cannot be removed till buddy is complete"];
    v22 = sub_100002880(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v21 = 9;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = NSStringFromSelector(a2);
    v16 = [NSString stringWithFormat:@"Entitlement not found for %@", v17];

    v19 = sub_100002880(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v21 = 6;
LABEL_16:
      v23 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v21 message:v16];
      (*(callbackCopy + 2))(callbackCopy, v23);
    }
  }

LABEL_17:
}

- (void)disableFMIPForAccount:(id)account pairedDeviceWithUDID:(id)d usingCallback:(id)callback
{
  accountCopy = account;
  dCopy = d;
  callbackCopy = callback;
  v12 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "non-nil";
    v29 = "[FMDFMIPXPCServer disableFMIPForAccount:pairedDeviceWithUDID:usingCallback:]";
    *buf = 136315650;
    if (!accountCopy)
    {
      v13 = "nil";
    }

    v30 = 2112;
    v31 = dCopy;
    v32 = 2080;
    v33 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@ with %s account", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v14 = +[FMDSystemConfig sharedInstance];
    isBuddyDone = [v14 isBuddyDone];

    if (isBuddyDone)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019FDE0;
      block[3] = &unk_1002CE278;
      v25 = accountCopy;
      v26 = dCopy;
      v27 = callbackCopy;
      dispatch_async(&_dispatch_main_q, block);

      v16 = v25;
      goto LABEL_17;
    }

    v16 = [NSString stringWithFormat:@"FMIP account cannot be removed till buddy is complete"];
    v22 = sub_100002880(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v21 = 9;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = NSStringFromSelector(a2);
    v16 = [NSString stringWithFormat:@"Entitlement not found for %@", v17];

    v19 = sub_100002880(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v21 = 6;
LABEL_16:
      v23 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v21 message:v16];
      (*(callbackCopy + 2))(callbackCopy, v23);
    }
  }

LABEL_17:
}

- (void)markAsMissingSupportedForPairedDeviceWithUDID:(id)d usingCallback:(id)callback
{
  dCopy = d;
  callbackCopy = callback;
  v9 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "[FMDFMIPXPCServer markAsMissingSupportedForPairedDeviceWithUDID:usingCallback:]";
    v46 = 2112;
    v47 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v33 = callbackCopy;
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    getPairedDevices = [v10 getPairedDevices];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = getPairedDevices;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      v16 = NRDevicePropertyIsPaired;
      v17 = NRDevicePropertyUDID;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v37 + 1) + 8 * v18);
        v20 = [v19 valueForProperty:v16];
        bOOLValue = [v20 BOOLValue];

        if (dCopy)
        {
          if (bOOLValue)
          {
            v22 = [v19 valueForProperty:v17];
            v23 = [dCopy isEqualToString:v22];

            if (v23)
            {
              break;
            }
          }
        }

        if (v14 == ++v18)
        {
          v14 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v14)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      v29 = v19;

      if (!v29)
      {
        goto LABEL_21;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001A03E0;
      block[3] = &unk_1002CE228;
      v35 = v29;
      callbackCopy = v33;
      v36 = v33;
      v28 = v29;
      dispatch_async(&_dispatch_main_q, block);

      v30 = v35;
      goto LABEL_25;
    }

LABEL_14:

LABEL_21:
    v31 = sub_100002880(v24);
    callbackCopy = v33;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10022A308();
    }

    if (v33)
    {
      v32 = kFMDErrorDomain;
      v41 = NSLocalizedFailureReasonErrorKey;
      v42 = @"No paired device with this UDID";
      v28 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v30 = [NSError errorWithDomain:v32 code:1 userInfo:v28];
      (v33)[2](v33, 0, v30);
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
    v25 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v25];

    v27 = sub_100002880(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v28 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (*(callbackCopy + 2))(callbackCopy, 0, v28);
LABEL_26:
    }
  }
}

- (void)markPairedDeviceWithUDID:(id)d asMissingUsingToken:(id)token callback:(id)callback
{
  dCopy = d;
  tokenCopy = token;
  callbackCopy = callback;
  v12 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "non-nil";
    v24 = "[FMDFMIPXPCServer markPairedDeviceWithUDID:asMissingUsingToken:callback:]";
    *buf = 136315650;
    if (!tokenCopy)
    {
      v13 = "nil";
    }

    v25 = 2112;
    v26 = dCopy;
    v27 = 2080;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for udid %@ with %s token", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A0874;
    block[3] = &unk_1002CE278;
    v20 = dCopy;
    v21 = tokenCopy;
    v22 = callbackCopy;
    dispatch_async(&_dispatch_main_q, block);

    v14 = v20;
  }

  else
  {
    v15 = NSStringFromSelector(a2);
    v14 = [NSString stringWithFormat:@"Entitlement not found for %@", v15];

    v17 = sub_100002880(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v18 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v14];
      (*(callbackCopy + 2))(callbackCopy, v18);
    }
  }
}

- (void)isActivationLockAllowedUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer isActivationLockAllowedUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDSystemConfig sharedInstance];
    allowsActivationLock = [v7 allowsActivationLock];

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, allowsActivationLock, 0);
    }
  }

  else
  {
    v9 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v12 = sub_100002880(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (callbackCopy)[2](callbackCopy, 0, v13);
    }
  }
}

- (void)isActivationLockEnabledUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPXPCServer isActivationLockEnabledUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    fmipState = [v7 fmipState];

    if (fmipState <= 2)
    {
      v9 = +[FMDSystemConfig sharedInstance];
      allowsActivationLock = [v9 allowsActivationLock];

      if (!callbackCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    allowsActivationLock = 0;
    if (callbackCopy)
    {
LABEL_13:
      callbackCopy[2](callbackCopy, allowsActivationLock, 0);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (callbackCopy)[2](callbackCopy, 0, v15);
    }
  }

LABEL_14:
}

- (void)isActivationLockedUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer isActivationLockedUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    isActivationLocked = [v7 isActivationLocked];
    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, isActivationLocked, 0);
    }
  }

  else
  {
    v9 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
      (callbackCopy)[2](callbackCopy, 0, v12);
    }
  }
}

- (void)enableActivationLockUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[FMDFMIPXPCServer enableActivationLockUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      callbackCopy[2](callbackCopy, v14);
    }

    goto LABEL_14;
  }

  v7 = +[FMDSystemConfig sharedInstance];
  allowsActivationLock = [v7 allowsActivationLock];

  if (allowsActivationLock)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A1080;
    block[3] = &unk_1002CE250;
    v24 = callbackCopy;
    dispatch_async(&_dispatch_main_q, block);
    v10 = v24;
LABEL_14:

    goto LABEL_15;
  }

  v15 = sub_100002880(v9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10022C540(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (callbackCopy)
  {
    v10 = [(FMDFMIPXPCServer *)self _errorForCode:9 message:@"Activation lock is not allowed for this device"];
    callbackCopy[2](callbackCopy, v10);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)activationLockVersionWithCompletion:(id)completion
{
  if (completion)
  {
    v3 = kFMDNotBackedUpPrefDomain;
    completionCopy = completion;
    completionCopy[2](completionCopy, [FMPreferencesUtil integerForKey:@"identityVersion" inDomain:v3], 0);
  }
}

- (void)didReceiveLostModeExitAuthToken:(id)token usingCallback:(id)callback
{
  tokenCopy = token;
  callbackCopy = callback;
  v9 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPXPCServer didReceiveLostModeExitAuthToken:usingCallback:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDAppleAccountManager sharedInstance];
    fmipACAccount = [v10 fmipACAccount];

    if (fmipACAccount)
    {
      v12 = +[FMDPreferencesMgr lostModeExitAuthForPairedDeviceID];
      if (v12)
      {
        [FMDPreferencesMgr setLostModeExitAuthForPairedDeviceID:0];
        [(FMDFMIPXPCServer *)self sendPairedDeviceLostModeExitAuthToken:tokenCopy deviceID:v12];
        if (!callbackCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v20 = +[FMDServiceProvider activeServiceProvider];
        [v20 sendLostModeExitAuthWithToken:tokenCopy];

        if (!callbackCopy)
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      v19 = 0;
LABEL_17:
      callbackCopy[2](callbackCopy, v19);
      goto LABEL_18;
    }

    if (callbackCopy)
    {
      v18 = @"FMIP account not found";
      selfCopy2 = self;
      v17 = 5;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    fmipACAccount = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v17 = 6;
      v18 = fmipACAccount;
LABEL_14:
      v19 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v17 message:v18];
      v12 = v19;
      goto LABEL_17;
    }
  }

LABEL_19:
}

- (void)initiateLostModeExitAuthForApp:(id)app idsDeviceID:(id)d usingCallback:(id)callback
{
  appCopy = app;
  dCopy = d;
  callbackCopy = callback;
  v12 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[FMDFMIPXPCServer initiateLostModeExitAuthForApp:idsDeviceID:usingCallback:]";
    v30 = 2112;
    v31 = appCopy;
    v32 = 2112;
    v33 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s for bundleID %@, idsDeviceID %@", buf, 0x20u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v13 = +[FMDAppleAccountManager sharedInstance];
    fmipACAccount = [v13 fmipACAccount];

    if (!callbackCopy || fmipACAccount)
    {
      if (dCopy)
      {
        [FMDPreferencesMgr setLostModeExitAuthForPairedDeviceID:dCopy];
        v19 = @"FMW_RENEW_CREDENTIALS_APPLE_PAY";
      }

      else
      {
        v19 = @"FMIP_RENEW_CREDENTIALS_APPLE_PAY";
      }

      v20 = +[FMDServiceProvider activeServiceProvider];
      account = [v20 account];

      fmd_localizedString = [(__CFString *)v19 fmd_localizedString];
      username = [account username];
      v23 = [NSString stringWithFormat:fmd_localizedString, username];

      [FMDPreferencesMgr setNeedsLostModeExitAuth:1];
      objc_initWeak(buf, self);
      v24 = +[FMDAppleAccountManager sharedInstance];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001A17D4;
      v25[3] = &unk_1002D0528;
      objc_copyWeak(&v27, buf);
      v26 = callbackCopy;
      [v24 forceUserAuthForiCloudAccountForApp:appCopy message:v23 really:1 withCompletion:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      account = [(FMDFMIPXPCServer *)self _errorForCode:5 message:@"FMIP account not found"];
      (*(callbackCopy + 2))(callbackCopy, account);
    }

    goto LABEL_15;
  }

  v16 = NSStringFromSelector(a2);
  fmipACAccount = [NSString stringWithFormat:@"Entitlement not found for %@", v16];

  v18 = sub_100002880(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (callbackCopy)
  {
    account = [(FMDFMIPXPCServer *)self _errorForCode:6 message:fmipACAccount];
    (*(callbackCopy + 2))(callbackCopy, account);
LABEL_15:
  }
}

- (void)lowBatteryLocateEnabledUsingCallback:(id)callback
{
  callbackCopy = callback;
  v6 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer lowBatteryLocateEnabledUsingCallback:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    account = [v7 account];

    lowBatteryLocateEnabled = [account lowBatteryLocateEnabled];
    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, lowBatteryLocateEnabled, 0);
    }
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    account = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v12 = sub_100002880(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:account];
      (callbackCopy)[2](callbackCopy, 0, v13);
    }
  }
}

- (void)setLowBatteryLocateEnabled:(BOOL)enabled usingCallback:(id)callback
{
  enabledCopy = enabled;
  callbackCopy = callback;
  v8 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "NO";
    if (enabledCopy)
    {
      v9 = "YES";
    }

    *buf = 136315394;
    v31 = "[FMDFMIPXPCServer setLowBatteryLocateEnabled:usingCallback:]";
    v32 = 2080;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s with enabled: %s", buf, 0x16u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    account = [v10 account];

    if (account)
    {
      [(__CFString *)account setLowBatteryLocateEnabled:enabledCopy];
      v13 = +[FMDServiceProvider activeServiceProvider];
      accountStore = [v13 accountStore];
      [accountStore saveAccount:account];

      if (callbackCopy)
      {
        callbackCopy[2](callbackCopy, 0);
      }

      v15 = +[FMDServiceProvider activeServiceProvider];
      [v15 registerDeviceWithCause:@"LowBatteryLocateChange" force:0];
      goto LABEL_19;
    }

    v22 = sub_100002880(v12);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10022C5B8(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    if (callbackCopy)
    {
      v21 = @"FMIP account not found";
      selfCopy2 = self;
      v20 = 5;
      goto LABEL_18;
    }
  }

  else
  {
    v16 = NSStringFromSelector(a2);
    account = [NSString stringWithFormat:@"Entitlement not found for %@", v16];

    v18 = sub_100002880(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      selfCopy2 = self;
      v20 = 6;
      v21 = account;
LABEL_18:
      v15 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v20 message:v21];
      (callbackCopy)[2](callbackCopy, v15);
LABEL_19:
    }
  }
}

- (void)signatureHeadersWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FMDFMIPXPCServer signatureHeadersWithData:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", &buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = dataCopy;
    v24 = +[NSUUID UUID];
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v64 = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v62 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v66 = 0x3032000000;
    v67 = sub_10000AAE4;
    v68 = sub_100002B3C;
    v69 = 0;
    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x3032000000;
    v59[3] = sub_10000AAE4;
    v59[4] = sub_100002B3C;
    v60 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = sub_10000AAE4;
    v57[4] = sub_100002B3C;
    v58 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = sub_10000AAE4;
    v55[4] = sub_100002B3C;
    v56 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = sub_10000AAE4;
    v53[4] = sub_100002B3C;
    v54 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = sub_10000AAE4;
    v51[4] = sub_100002B3C;
    v52 = 0;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001A233C;
    v38[3] = &unk_1002D0578;
    v23 = dispatch_queue_create("FMDFMIPXPCServer.populateHeaders", 0);
    v39 = v23;
    v43 = v63;
    v44 = v61;
    v45 = v57;
    v46 = v51;
    p_buf = &buf;
    v11 = v10;
    v48 = v59;
    v49 = v53;
    v50 = v55;
    v12 = v24;
    v40 = v12;
    selfCopy = self;
    v42 = completionCopy;
    v13 = objc_retainBlock(v38);
    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Will attempt Absinth signing", v37, 2u);
    }

    v15 = +[FMDAbsintheV3SigningInterface sharedInterface];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001A26C8;
    v31[3] = &unk_1002D05A0;
    v33 = v57;
    v34 = &buf;
    v35 = v59;
    v36 = v63;
    v16 = v13;
    v32 = v16;
    [v15 signatureForData:v11 requestUUID:v12 mode:1 cause:@"app" completion:v31];

    v17 = [[FMDIdentitySigningRequest alloc] initWithData:v11];
    v18 = objc_alloc_init(FMDDeviceIdentityFactory);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001A2988;
    v25[3] = &unk_1002D05C8;
    v27 = v51;
    v28 = v53;
    v29 = v55;
    v30 = v61;
    v19 = v16;
    v26 = v19;
    [v18 baaIdentityAttestationForSigningRequest:v17 completion:v25];

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(v53, 8);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(v57, 8);

    _Block_object_dispose(v59, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(v63, 8);
    goto LABEL_11;
  }

  v20 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v20];

  v22 = sub_100002880(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
    (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_11:
  }
}

- (void)getAccessoriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer getAccessoriesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    accessoryRegistry = [v7 accessoryRegistry];
    allAccessories = [accessoryRegistry allAccessories];

    +[NSMutableArray array];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A2D3C;
    v10 = v15[3] = &unk_1002D05F0;
    v16 = v10;
    v11 = sub_100002880([allAccessories enumerateObjectsUsingBlock:v15]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning Accessories : %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v10);
    }

    goto LABEL_13;
  }

  v12 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

  v14 = sub_100002880(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    allAccessories = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    (completionCopy)[2](completionCopy, allAccessories, 0);
LABEL_13:
  }
}

- (void)attemptUCRTHealing:(id)healing completion:(id)completion
{
  healingCopy = healing;
  completionCopy = completion;
  if ([(FMDFMIPXPCServer *)self _hasUCRTHealingAccessEntitlement])
  {
    v9 = +[FMDServiceProvider activeServiceProvider];
    [v9 attemptUCRTHealing:healingCopy completion:completionCopy];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v13 = sub_10017DC94(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)fetchAccessoryConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v6 = sub_100002880(configurationsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer fetchAccessoryConfigurations:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDExtConfigurationRegistry sharedInstance];
    configurations = [v7 configurations];
    allKeys = [configurations allKeys];

    [v7 fetchSupportedAccessoryTypes];
    [v7 fetchConfigForAccessoryTypes:allKeys];
    if (!configurationsCopy)
    {
LABEL_11:

      goto LABEL_12;
    }

    v10 = 0;
LABEL_10:
    configurationsCopy[2](configurationsCopy, v10);
    goto LABEL_11;
  }

  v11 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

  v13 = sub_100002880(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (configurationsCopy)
  {
    v10 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    allKeys = v10;
    goto LABEL_10;
  }

LABEL_12:
}

- (void)removeAccessoryWithDiscoveryId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPXPCServer removeAccessoryWithDiscoveryId:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  _hasClientAccessEntitlement = [(FMDFMIPXPCServer *)self _hasClientAccessEntitlement];
  if (_hasClientAccessEntitlement)
  {
    v11 = sub_10000BE38(_hasClientAccessEntitlement);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = idCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removeAccessoryWithDiscoveryId called for accessory with serialNumber %@", buf, 0xCu);
    }

    v12 = [FMDExtExtensionHelper getAccessoryProxyForId:@"com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FMDMagSafeExtension" withDelegate:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001A32E0;
    v17[3] = &unk_1002CD770;
    v18 = completionCopy;
    [v12 removeAccesoryWithSerialNumber:idCopy completion:v17];
    v13 = v18;
    goto LABEL_11;
  }

  v14 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v16 = sub_100002880(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v13 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
    (*(completionCopy + 2))(completionCopy, v13);
LABEL_11:
  }
}

- (void)setPhoneNumber:(id)number toAccessoryWithDiscoveryId:(id)id completion:(id)completion
{
  numberCopy = number;
  idCopy = id;
  completionCopy = completion;
  v12 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v51 = "[FMDFMIPXPCServer setPhoneNumber:toAccessoryWithDiscoveryId:completion:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v42 = numberCopy;
    v41 = +[FMDServiceProvider activeServiceProvider];
    accessoryRegistry = [v41 accessoryRegistry];
    [accessoryRegistry allAccessories];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v13 = v48 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * v17);
        address = [v18 address];
        v20 = [address isEqualToString:idCopy];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      idCopy = v18;

      if (!idCopy)
      {
        goto LABEL_23;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v28 = idCopy;
        v29 = +[FMDExtConfigurationRegistry sharedInstance];
        accessoryType = [v28 accessoryType];
        v31 = [v29 configForAccessoryType:accessoryType];

        v32 = [v31 flavorForFeature:@"scd"];
        v33 = sub_10000BE38(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_10022C6D4();
        }

        if (v32)
        {
          v34 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"scd" flavor:v32];
          accessoryIdentifier = [v28 accessoryIdentifier];
          stringValue = [accessoryIdentifier stringValue];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1001A3898;
          v43[3] = &unk_1002CD770;
          v44 = completionCopy;
          numberCopy = v42;
          [v34 setPhoneNumberForAccessoryId:stringValue phoneNumber:v42 info:0 completion:v43];

          idCopy = v28;
          goto LABEL_32;
        }
      }

      v39 = sub_100002880(isKindOfClass);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10022C748(idCopy);
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }

    else
    {
LABEL_12:

LABEL_23:
      idCopy = [NSString stringWithFormat:@"Accesory not found with discovery id %@", idCopy];
      v37 = sub_100002880(idCopy);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10022A1D0();
      }

      if (completionCopy)
      {
        v38 = [(FMDFMIPXPCServer *)self _errorForCode:14 message:idCopy];
        (*(completionCopy + 2))(completionCopy, v38);
      }
    }

    numberCopy = v42;
LABEL_32:
    v25 = accessoryRegistry;

    v22 = v41;
    goto LABEL_33;
  }

  v21 = NSStringFromSelector(a2);
  v22 = [NSString stringWithFormat:@"Entitlement not found for %@", v21];

  v24 = sub_100002880(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v25 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v22];
    (*(completionCopy + 2))(completionCopy, v25);
LABEL_33:
  }
}

- (void)getConnectedAccessoriesDiscoveryIds:(id)ids
{
  idsCopy = ids;
  v6 = sub_100002880(idsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[FMDFMIPXPCServer getConnectedAccessoriesDiscoveryIds:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    accessoryRegistry = [v7 accessoryRegistry];
    allAccessories = [accessoryRegistry allAccessories];
    v10 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = allAccessories;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 connectionState] == 1)
          {
            address = [v16 address];
            [v10 addObject:address];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    idsCopy[2](idsCopy, v10, 0);
    goto LABEL_18;
  }

  v18 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v18];

  v20 = sub_100002880(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (idsCopy)
  {
    accessoryRegistry = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    (idsCopy)[2](idsCopy, 0, accessoryRegistry);
LABEL_18:
  }
}

- (void)registerDeviceForPairingLock:(id)lock completion:(id)completion
{
  lockCopy = lock;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer registerDeviceForPairingLock:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [[FMDPairingLockRegisterAction alloc] initWithProvider:v10 registerRequestInfo:lockCopy];
    [(FMDPairingLockRegisterAction *)v11 performOnActionCompletion:completionCopy];
    v12 = +[ActionManager sharedManager];
    v13 = [v12 enqueueAction:v11];

LABEL_9:
    goto LABEL_10;
  }

  v14 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v16 = sub_100002880(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    completionCopy[2](completionCopy, v11, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updatePairingLockInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPXPCServer updatePairingLockInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [[FMDPairingLockUpdateInfoAction alloc] initWithProvider:v10 updateRequestInfo:infoCopy];
    completionCopy[2](completionCopy, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001A3F8C;
    v17[3] = &unk_1002CD868;
    v18 = infoCopy;
    [(FMDPairingLockUpdateInfoAction *)v11 performOnActionCompletion:v17];
    v12 = +[ActionManager sharedManager];
    v13 = [v12 enqueueAction:v11];

LABEL_9:
    goto LABEL_10;
  }

  v14 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v16 = sub_100002880(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    (completionCopy)[2](completionCopy, v11);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)pairingCheckWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer pairingCheckWith:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    v11 = [[FMDPairingCheckCommandAction alloc] initWithProvider:v10 pairingCheckRequestInfo:withCopy];
    [(FMDPairingCheckCommandAction *)v11 performOnActionCompletion:completionCopy];
    v12 = +[ActionManager sharedManager];
    v13 = [v12 enqueueAction:v11];

LABEL_9:
    goto LABEL_10;
  }

  v14 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

  v16 = sub_100002880(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v11 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    completionCopy[2](completionCopy, v11, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)soundStoppedForAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = sub_100002880(identifierCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[FMDFMIPXPCServer soundStoppedForAccessoryIdentifier:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    accessoryRegistry = [v7 accessoryRegistry];
    v9 = [[FMDAccessoryIdentifier alloc] initWithString:identifierCopy];
    v10 = [accessoryRegistry accessoryForIdentifier:v9];
    [accessoryRegistry updateAccessory:v10 playbackChannels:&__NSArray0__struct];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    accessoryRegistry = sub_100002880(v12);
    if (os_log_type_enabled(accessoryRegistry, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)playSoundWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer playSoundWithOptions:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v8 = +[FMDFMIPManager sharedInstance];
    lostModeIsActive = [v8 lostModeIsActive];

    if (lostModeIsActive)
    {
      v11 = sub_100002880(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting a play sound message", buf, 2u);
      }

      v12 = objc_alloc_init(FMDMessage);
      [(FMDMessage *)v12 setPlaySound:1];
      [(FMDMessage *)v12 setSoundName:@"fmd_sound"];
      [(FMDMessage *)v12 setSoundDuration:120];
      [(FMDMessage *)v12 setIsHighPrioritySound:1];
      [(FMDMessage *)v12 setIsFmipSound:1];
      [(FMDMessage *)v12 setVibrate:1];
      [(FMDMessage *)v12 activate];
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v12 = [(FMDFMIPXPCServer *)self _errorForCode:9 message:@"Cannot play sound while not in lost mode."];
      (completionCopy)[2](completionCopy, v12);
    }
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      v16 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (completionCopy)[2](completionCopy, v16);
    }
  }
}

- (void)clearData:(unint64_t)data completion:(id)completion
{
  completionCopy = completion;
  v8 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FMDFMIPXPCServer clearData:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    if (data == 1)
    {
      v9 = objc_alloc_init(FMDAccessoryLocationStore);
      [(FMDAccessoryLocationStore *)v9 clearAccessoryLocationStore];
      v10 = +[FMDServiceProvider activeServiceProvider];
      accessoryLocationStore = [v10 accessoryLocationStore];
      [accessoryLocationStore clearAccessoryLocationStore];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v13 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      v16 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v13];
      (completionCopy)[2](completionCopy, v16);
    }
  }
}

- (void)deviceEligibleForRepairWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(FMDFMIPXPCServer *)self _hasRepairDeviceAccessEntitlement])
  {
    v9 = +[FMDServiceProvider activeServiceProvider];
    [v9 deviceEligibleForRepairWithContext:contextCopy completion:completionCopy];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)enableRepairWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if ([(FMDFMIPXPCServer *)self _hasRepairDeviceAccessEntitlement])
  {
    v9 = +[NSXPCConnection currentConnection];
    v10 = v9;
    if (v9)
    {
      objc_msgSend_auditToken(v9);
      v11 = xpc_copy_code_signing_identity_for_token();
      v12 = [NSString stringWithUTF8String:v11];
      free(v11);
    }

    else
    {
      v12 = @"unknown";
    }

    v16 = +[FMDServiceProvider activeServiceProvider];
    [v16 enableRepairWithContext:contextCopy callingClient:v12 completion:completionCopy];

    completionCopy = v16;
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

- (void)requireDisableLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v6 = +[FMSystemInfo sharedInstance];
    if ([v6 isInternalBuild])
    {
      v7 = [FMPreferencesUtil BOOLForKey:@"SimulateRequireDisableLocationFailure" inDomain:kFMDNotBackedUpPrefDomain];

      if (v7)
      {
        v9 = sub_10017DE2C(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "requireDisableLocationWithCompletion simulating failure.", buf, 2u);
        }

        v10 = [NSError errorWithDomain:kFMDErrorDomain code:12 userInfo:0];
        completionCopy[2](completionCopy, -1, v10);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v15 = +[FMDServiceProvider activeServiceProvider];
    v10 = v15;
    if (v15)
    {
      v16 = [v15 fmipState] == 1 || objc_msgSend(v10, "fmipState") == 0;
      v19 = +[FMDSystemConfig sharedInstance];
      isFMIPLocationServicesEnabled = [v19 isFMIPLocationServicesEnabled];

      v22 = sub_10017DE2C(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v24 = v16 & isFMIPLocationServicesEnabled;
        v25 = 1024;
        v26 = v16;
        v27 = 1024;
        v28 = isFMIPLocationServicesEnabled & 1;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "requireDisableLocationWithCompletion result %li, fmip: %i, locationService: %i.", buf, 0x18u);
      }

      completionCopy[2](completionCopy, v16 & isFMIPLocationServicesEnabled, 0);
      goto LABEL_23;
    }

    v17 = sub_10017DE2C(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10022C7CC();
    }

    v14 = [NSError errorWithDomain:kFMDErrorDomain code:2 userInfo:0];
LABEL_18:
    v18 = v14;
    completionCopy[2](completionCopy, -1, v14);

    goto LABEL_23;
  }

  v11 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

  v13 = sub_10017DE2C(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    goto LABEL_18;
  }

LABEL_23:
}

- (void)disableLocationDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v6 = +[FMSystemInfo sharedInstance];
    if ([v6 isInternalBuild])
    {
      v7 = [FMPreferencesUtil BOOLForKey:@"SimulateDisableLocationDisplayFailure" inDomain:kFMDNotBackedUpPrefDomain];

      if (v7)
      {
        v9 = sub_10017DE2C(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "disableLocationDisplayWithCompletion simulating failure.", buf, 2u);
        }

        v10 = [NSError errorWithDomain:kFMDErrorDomain code:12 userInfo:0];
        completionCopy[2](completionCopy, v10);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v10 = +[FMDServiceProvider activeServiceProvider];
    if (v10)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001A530C;
      v17[3] = &unk_1002CD770;
      v18 = completionCopy;
      [v10 disableLocationDisplayWithCompletion:v17];
      v15 = v18;
LABEL_18:

      goto LABEL_19;
    }

    v16 = sub_10017DE2C(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10022C7CC();
    }

    v14 = [NSError errorWithDomain:kFMDErrorDomain code:2 userInfo:0];
LABEL_17:
    v15 = v14;
    completionCopy[2](completionCopy, v14);
    goto LABEL_18;
  }

  v11 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

  v13 = sub_10017DE2C(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10022A1D0();
  }

  if (completionCopy)
  {
    v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    goto LABEL_17;
  }

LABEL_19:
}

- (void)_forceUpgradeAlertForKey:(id)key UsingCallback:(id)callback
{
  keyCopy = key;
  callbackCopy = callback;
  v8 = sub_100002880(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "[FMDFMIPXPCServer _forceUpgradeAlertForKey:UsingCallback:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v9 = +[FMSystemInfo sharedInstance];
    isInternalBuild = [v9 isInternalBuild];

    if (isInternalBuild)
    {
      v38 = callbackCopy;
      v11 = +[NRPairedDeviceRegistry sharedInstance];
      getPairedDevices = [v11 getPairedDevices];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = getPairedDevices;
      v13 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v46;
        v16 = NRDevicePropertyIsPaired;
        v41 = NRDevicePropertyPairingID;
        v40 = NRDevicePropertyLocalPairingDataStorePath;
        v39 = NRDevicePropertyUDID;
        do
        {
          v17 = 0;
          v43 = v14;
          do
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v45 + 1) + 8 * v17);
            v19 = [v18 valueForProperty:v16];
            bOOLValue = [v19 BOOLValue];

            if (bOOLValue)
            {
              v21 = v16;
              v22 = [v18 valueForProperty:v41];
              v23 = [v18 valueForProperty:v40];
              v24 = [NPSDomainAccessor alloc];
              v25 = [v24 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v22 pairingDataStore:v23];
              v26 = sub_100002880([v25 synchronize]);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v18 valueForProperty:v39];
                *buf = 138412290;
                v52 = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Forcing AL upgrade alert for device with udid %@", buf, 0xCu);
              }

              [v25 setBool:1 forKey:keyCopy];
              synchronize = [v25 synchronize];
              v29 = objc_opt_new();
              v30 = kFMDWatchNotBackedUpPrefDomain;
              v49 = keyCopy;
              v31 = [NSArray arrayWithObjects:&v49 count:1];
              v32 = [NSSet setWithArray:v31];
              [v29 synchronizeNanoDomain:v30 keys:v32];

              v16 = v21;
              v14 = v43;
            }

            v17 = v17 + 1;
          }

          while (v14 != v17);
          v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v14);
      }

      callbackCopy = v38;
    }

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, 0);
    }
  }

  else
  {
    v33 = NSStringFromSelector(a2);
    v34 = [NSString stringWithFormat:@"Entitlement not found for %@", v33];

    v36 = sub_100002880(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (callbackCopy)
    {
      v37 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v34];
      (callbackCopy)[2](callbackCopy, v37);
    }
  }
}

- (void)setDailyLocateReportEnabled:(BOOL)enabled
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[FMDFMIPXPCServer setDailyLocateReportEnabled:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", &v7, 0xCu);
  }

  v5 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v5 isInternalBuild];

  if (isInternalBuild)
  {
    [(FMDFMIPXPCServer *)self scheduleDailyLocateReportXPCActivity];
  }
}

- (void)showDailyLocateReport
{
  v5 = objc_alloc_init(FMAlert);
  [v5 setCategory:3];
  locateStats = [(FMDFMIPXPCServer *)self locateStats];
  [v5 setMsgText:locateStats];

  [v5 setMsgTitle:@"FMIP Daily Locate Report"];
  [v5 setShowMsgInLockScreen:1];
  [v5 setDismissMsgOnUnlock:0];
  [v5 setDismissMsgOnLock:0];
  [v5 setDefaultButtonTitle:@"OK"];
  v4 = +[FMAlertManager sharedInstance];
  [v4 activateAlert:v5];
}

- (void)scheduleDailyLocateReportXPCActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001A5B60;
  handler[3] = &unk_1002D0638;
  handler[4] = self;
  xpc_activity_register([@"com.apple.icloud.findmydeviced.dailyReportSchedule" cStringUsingEncoding:4], v3, handler);
}

- (id)locateStats
{
  v2 = objc_alloc_init(FMDEventLoggerFacilityOnDiskStats);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000AAE4;
  v19 = sub_100002B3C;
  v20 = &stru_1002DCE08;
  v3 = [&stru_1002DCE08 stringByAppendingString:@"Locates during the past 3 days\n"];
  v4 = v16[5];
  v16[5] = v3;

  v5 = [(FMDEventLoggerFacilityOnDiskStats *)v2 loggedEventsForEventName:@"FMDLocatorLocateEvent"];
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = 0;
  for (i = 3; i; --i)
  {
    v11 = v9 + 1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001A5EC4;
    v14[3] = &unk_1002D0660;
    *&v14[5] = v8 - (v9 + 1) * 86400.0;
    *&v14[6] = v8 - v9 * 86400.0;
    v14[4] = &v15;
    v14[7] = v9;
    [v5 enumerateObjectsUsingBlock:v14];
    v9 = v11;
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)_deviceIdentifiersForSignature
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[FMDSystemConfig sharedInstance];
  internationalMobileEquipmentIdentity = [v3 internationalMobileEquipmentIdentity];
  [v2 fm_safelyMapKey:@"imei" toObject:internationalMobileEquipmentIdentity];

  v5 = +[FMDSystemConfig sharedInstance];
  mobileEquipmentIdentifier = [v5 mobileEquipmentIdentifier];
  [v2 fm_safelyMapKey:@"meid" toObject:mobileEquipmentIdentifier];

  v7 = +[FMDSystemConfig sharedInstance];
  serialNumber = [v7 serialNumber];
  [v2 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  v9 = +[FMDSystemConfig sharedInstance];
  escrowHash = [v9 escrowHash];
  hexString = [escrowHash hexString];
  [v2 fm_safelyMapKey:@"escrowHash" toObject:hexString];

  v12 = +[FMDSystemConfig sharedInstance];
  ecid = [v12 ecid];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [ecid longLongValue]);
  [v2 fm_safelyMapKey:@"ecid" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  chipId = [v15 chipId];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [chipId longLongValue]);
  [v2 fm_safelyMapKey:@"chipId" toObject:v17];

  v18 = +[FMDSystemConfig sharedInstance];
  wifiMacAddress = [v18 wifiMacAddress];
  [v2 fm_safelyMapKey:@"wifiMac" toObject:wifiMacAddress];

  v20 = +[FMDSystemConfig sharedInstance];
  btMacAddress = [v20 btMacAddress];
  [v2 fm_safelyMapKey:@"btMac" toObject:btMacAddress];

  v22 = +[FMDAbsintheV3SigningInterface sharedInterface];
  v31 = 0;
  v23 = [v22 inFieldCollectionReceipt:&v31];
  v24 = v31;
  [v2 fm_safelyMapKey:@"ifcReceipt" toObject:v23];

  fm_commaSeparatedString = [v24 fm_commaSeparatedString];
  [v2 fm_safelyMapKey:@"collectionError" toObject:fm_commaSeparatedString];

  v26 = +[FMSystemInfo sharedInstance];
  LODWORD(v23) = [v26 isInternalBuild];

  if (v23)
  {
    v28 = [v24 description];
    [v2 fm_safelyMapKey:@"collectionErrorDetail" toObject:v28];
  }

  v29 = sub_100002880(v27);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v2;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Generated device identifiers %@", buf, 0xCu);
  }

  return v2;
}

- (BOOL)_hasRepairDeviceAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.RepairDevice.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasUCRTHealingAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.ucrt.healing.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasAuthAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.findmydeviced.access.auth"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasSharedConfigurationAccessEntitlement
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceSharedConfiguration.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_errorForCode:(int)code message:(id)message
{
  messageCopy = message;
  v6 = [NSError alloc];
  v7 = kFMDErrorDomain;
  if (messageCopy)
  {
    v8 = messageCopy;
  }

  else
  {
    v8 = &stru_1002DCE08;
  }

  v12 = NSLocalizedFailureReasonErrorKey;
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [v6 initWithDomain:v7 code:code userInfo:v9];

  return v10;
}

- (void)sendPairedDeviceLostModeExitAuthToken:(id)token deviceID:(id)d
{
  dCopy = d;
  tokenCopy = token;
  v8 = sub_100002880(tokenCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preparing to send exit lost mode token to ids device.", buf, 2u);
  }

  v9 = objc_alloc_init(FMDNanoSupportProtoLostModeExitAuth);
  [(FMDNanoSupportProtoLostModeExitAuth *)v9 setLostModeExitAuthToken:tokenCopy];

  v10 = [IDSProtobuf alloc];
  data = [(FMDNanoSupportProtoLostModeExitAuth *)v9 data];
  v12 = [v10 initWithProtobufData:data type:6 isResponse:0];

  protectedIDSManager = [(FMDFMIPXPCServer *)self protectedIDSManager];
  [protectedIDSManager sendMessageWithProtobuf:v12 inResponseToRequest:0 withPriority:0 timeout:1 bypassingDuet:dCopy deviceID:&stru_1002D06A0 requestAcceptedHandler:60.0 responseHandler:0];
}

- (void)activationLockInfoFromDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - activationLockInfoWithCompletion", buf, 2u);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 activationLockInfoWithCompletion:completionCopy];
LABEL_9:
  }
}

- (void)activationLockAuthInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - activationLockAuthInfo", buf, 2u);
  }

  if (![(FMDFMIPXPCServer *)self _hasAuthAccessEntitlement])
  {
    v9 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (!completionCopy)
    {
      goto LABEL_15;
    }

    selfCopy2 = self;
    v13 = 6;
    v14 = v8;
    goto LABEL_14;
  }

  if (completionCopy)
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    v8 = v7;
    if (v7)
    {
      [(__CFString *)v7 activationLockAuthInfo:completionCopy];
LABEL_15:

      goto LABEL_16;
    }

    v15 = sub_100002880(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No Active Service Provider - cannot provide auth info", v17, 2u);
    }

    v14 = @"No Active FMDServiceProvider";
    selfCopy2 = self;
    v13 = 12;
LABEL_14:
    v16 = [(FMDFMIPXPCServer *)selfCopy2 _errorForCode:v13 message:v14];
    completionCopy[2](completionCopy, 0, v16);

    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateMaskedAppleIDWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = withCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - updateMaskedAppleID %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    if (withCopy && [withCopy length])
    {
      v10 = +[FMDLocalActivationLockInfoManager sharedInstance];
      [v10 updateMaskedAppleID:withCopy];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else if (completionCopy)
    {
      v15 = NSStringFromSelector(a2);
      v16 = [NSString stringWithFormat:@"No maskedAppleID specified %@", v15];

      v17 = [(FMDFMIPXPCServer *)self _errorForCode:1 message:v16];
      (completionCopy)[2](completionCopy, v17);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)clearMaskedAppleIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - clearMaskedAppleID", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 clearMaskedAppleIDValue];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)primaryAppleAccountRemoved
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DAEMON API - primaryAppleAccountRemoved", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v5 = +[FMDCoreFollowUpManager sharedInstance];
    [v5 requestTheftAndLossCFU:3];
  }

  else
  {
    v6 = NSStringFromSelector(a2);
    v5 = [NSString stringWithFormat:@"Entitlement not found for %@", v6];

    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)storeOfflineFindingInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - storeOfflineFindingInfo", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v10 storeOfflineFindingInfo:infoCopy completion:completionCopy];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)fetchOfflineFindingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - fetchOfflineFindingInfo", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 fetchOfflineFindingInfoWithCompletion:completionCopy];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)clearOfflineFindingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - clearOfflineFindingInfo", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v7 clearOfflineFindingInfoWithCompletion:completionCopy];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }
  }
}

- (void)fetchAPNSTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - fetchAPNSToken", buf, 2u);
  }

  if (![(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v9 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v9];

    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (!completionCopy)
    {
      goto LABEL_11;
    }

    apsToken = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    completionCopy[2](completionCopy, 0, apsToken);
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if (completionCopy)
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    apsToken = [v7 apsToken];
    (completionCopy)[2](completionCopy, apsToken, 0);
    goto LABEL_10;
  }

LABEL_12:
}

- (void)startLocationMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  v6 = sub_1000029E0(monitoringCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - startLocationMonitoring", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    locationMonitor = [v7 locationMonitor];

    if (locationMonitor)
    {
      locationMonitor2 = [v7 locationMonitor];
      [locationMonitor2 startLocationMonitor:monitoringCopy];
LABEL_10:

      goto LABEL_14;
    }

    v14 = sub_1000029E0(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while starting. Calling completion immediately", v15, 2u);
    }

    monitoringCopy[2](monitoringCopy, 0);
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (monitoringCopy)
    {
      locationMonitor2 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
      (monitoringCopy)[2](monitoringCopy, locationMonitor2);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)stopLocationMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  v6 = sub_1000029E0(monitoringCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API - stopLocationMonitoring", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v7 = +[FMDServiceProvider activeServiceProvider];
    locationMonitor = [v7 locationMonitor];

    if (locationMonitor)
    {
      locationMonitor2 = [v7 locationMonitor];
      [locationMonitor2 stopLocationMonitor:monitoringCopy];
LABEL_10:

      goto LABEL_14;
    }

    v14 = sub_1000029E0(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while stopping. Calling completion immediately", v15, 2u);
    }

    monitoringCopy[2](monitoringCopy, 0);
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (monitoringCopy)
    {
      locationMonitor2 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
      (monitoringCopy)[2](monitoringCopy, locationMonitor2);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)updatedConfigReceived:(id)received completion:(id)completion
{
  receivedCopy = received;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - updatedConfigReceived", buf, 2u);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    locationMonitor = [v10 locationMonitor];
    [locationMonitor updateMonitorConfig:receivedCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (completionCopy)[2](completionCopy, v15);
    }
  }
}

- (void)startLocationMonitoringWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v9 = sub_1000029E0(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = contextCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - startLocationMonitoringWithContext %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    locationMonitor = [v10 locationMonitor];

    if (locationMonitor)
    {
      locationMonitor2 = [v10 locationMonitor];
      [locationMonitor2 startLocationMonitorWithContext:contextCopy completion:completionCopy];
LABEL_10:

      goto LABEL_14;
    }

    v17 = sub_1000029E0(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while starting with policy. Calling completion immediately", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v14 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

    v16 = sub_100002880(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      locationMonitor2 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (completionCopy)[2](completionCopy, locationMonitor2);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)startLocationMonitoringWithContext:(id)context forcePublish:(BOOL)publish completion:(id)completion
{
  publishCopy = publish;
  contextCopy = context;
  completionCopy = completion;
  v11 = sub_1000029E0(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = contextCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DAEMON API - startLocationMonitoringWithContext %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v12 = +[FMDServiceProvider activeServiceProvider];
    locationMonitor = [v12 locationMonitor];

    if (locationMonitor)
    {
      locationMonitor2 = [v12 locationMonitor];
      [locationMonitor2 startLocationMonitorWithContext:contextCopy forcePublish:publishCopy completion:completionCopy];
LABEL_10:

      goto LABEL_14;
    }

    v19 = sub_1000029E0(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while starting with policy. Calling completion immediately", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v16];

    v18 = sub_100002880(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      locationMonitor2 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v12];
      (completionCopy)[2](completionCopy, locationMonitor2);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)stopLocationMonitoringWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v9 = sub_1000029E0(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = contextCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API - stopLocationMonitorWithContext %@", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    locationMonitor = [v10 locationMonitor];

    if (locationMonitor)
    {
      locationMonitor2 = [v10 locationMonitor];
      [locationMonitor2 stopLocationMonitorWithContext:contextCopy completion:completionCopy];
LABEL_10:

      goto LABEL_14;
    }

    v17 = sub_1000029E0(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No LocationMonitor while stopping with context. Calling completion immediately", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v14 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

    v16 = sub_100002880(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      locationMonitor2 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      (completionCopy)[2](completionCopy, locationMonitor2);
      goto LABEL_10;
    }
  }

LABEL_14:
}

- (void)didAddLocalFindableAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v7 = sub_1000029E0(accessoryCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DAEMON API - didAddLocalFindableAccessory", v9, 2u);
  }

  v8 = +[FMDServiceProvider activeServiceProvider];
  [v8 registerAccessory:accessoryCopy completion:completionCopy];
}

- (void)didRemoveLocalFindableAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v7 = sub_1000029E0(accessoryCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DAEMON API - didRemoveLocalFindableAccessory", v9, 2u);
  }

  v8 = +[FMDServiceProvider activeServiceProvider];
  [v8 unregisterAccessory:accessoryCopy completion:completionCopy];
}

- (void)simulatePushWithPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v9 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[FMDFMIPXPCServer simulatePushWithPayload:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasClientAccessEntitlement])
  {
    v10 = +[FMDServiceProvider activeServiceProvider];
    [v10 _handleSecureLocationsPush:payloadCopy completion:completionCopy];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (completionCopy)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)downloadSharedConfigurationWithLocale:(id)locale reply:(id)reply
{
  localeCopy = locale;
  replyCopy = reply;
  v9 = sub_100002880(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[FMDFMIPXPCServer downloadSharedConfigurationWithLocale:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v10 = +[FMDSharedConfigurationManager sharedInstance];
    [v10 downloadSharedConfigurationWithLocale:localeCopy reply:replyCopy];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (replyCopy)
    {
      v14 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
      replyCopy[2](replyCopy, v14);
    }
  }
}

- (void)getTheftAndLossCoverageWithSerialNumber:(id)number reply:(id)reply
{
  numberCopy = number;
  replyCopy = reply;
  v9 = sub_100002880(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[FMDFMIPXPCServer getTheftAndLossCoverageWithSerialNumber:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v10 = +[FMDSharedConfigurationManager sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A8684;
    v16[3] = &unk_1002D06C8;
    v17 = replyCopy;
    [v10 getTheftAndLossCoverageWithSerialNumber:numberCopy completion:v16];

    v11 = v17;
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (replyCopy)
    {
      v15 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v11];
      (*(replyCopy + 2))(replyCopy, 0, v15);
    }
  }
}

- (void)requestTheftAndLossCFUWithStrings:(id)strings andReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A8740;
  v7[3] = &unk_1002D06F0;
  replyCopy = reply;
  v6 = replyCopy;
  [(FMDFMIPXPCServer *)self postTheftAndLossCFUWithEntry:strings reply:v7];
}

- (void)postTheftAndLossCFUWithEntry:(id)entry reply:(id)reply
{
  entryCopy = entry;
  replyCopy = reply;
  v9 = sub_100002880(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPXPCServer postTheftAndLossCFUWithEntry:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v10 = +[FMDSharedConfigurationManager sharedInstance];
    [v10 postTheftAndLossCFU:entryCopy completion:replyCopy];
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v10];
    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v12);
    }
  }
}

- (void)clearTheftAndLossCFUWithReply:(id)reply
{
  replyCopy = reply;
  v6 = sub_100002880(replyCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[FMDFMIPXPCServer clearTheftAndLossCFUWithReply:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEMON API: %s", buf, 0xCu);
  }

  if ([(FMDFMIPXPCServer *)self _hasSharedConfigurationAccessEntitlement])
  {
    v7 = +[FMDSharedConfigurationManager sharedInstance];
    [v7 clearTheftAndLossCFUWithCompletion:replyCopy];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = [(FMDFMIPXPCServer *)self _errorForCode:6 message:v7];
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v9);
    }
  }
}

@end