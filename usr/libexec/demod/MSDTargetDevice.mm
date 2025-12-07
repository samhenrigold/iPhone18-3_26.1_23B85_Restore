@interface MSDTargetDevice
+ (MSDTargetDevice)sharedInstance;
- (BOOL)allowAccountSetup;
- (BOOL)allowSnapshotMode;
- (BOOL)allowSnapshotRevertTimer;
- (BOOL)applyStagedDevicePreferences:(id *)preferences;
- (BOOL)backgroundDownloadActive;
- (BOOL)cachedBundleInstallAttempted;
- (BOOL)canRunCleanUpForBetterTogetherDevice;
- (BOOL)canStartContentUpdate;
- (BOOL)canStartOSUpdate;
- (BOOL)canUnenrollWithObliteration:(BOOL)obliteration consultDeviceOptions:(BOOL)options;
- (BOOL)cleanUpPreferencesFile;
- (BOOL)clearCurrentiOSBuild;
- (BOOL)createMobileStoreDemoCache;
- (BOOL)createTemporaryPasscodeIfNeeded;
- (BOOL)criticalUpdatePrioritized;
- (BOOL)dcotaOfflineModeDevice;
- (BOOL)deactivateDevice;
- (BOOL)deleteConfigurationApp;
- (BOOL)deleteNVRam:(id)ram;
- (BOOL)deleteOperationRequest;
- (BOOL)deleteOperationRequestAndQuitHelper;
- (BOOL)deleteOperationResponse;
- (BOOL)demoModeValueForKey:(id)key;
- (BOOL)demoSetup;
- (BOOL)holdPowerAssertion;
- (BOOL)iCloudAccountSyncNeeded;
- (BOOL)isBetterTogetherDemo;
- (BOOL)isContentFrozen;
- (BOOL)isDDLDevice;
- (BOOL)isDemoEligible;
- (BOOL)isDemoModeOn;
- (BOOL)isOfflineMode;
- (BOOL)isPasscodeModificationAllowed;
- (BOOL)isPressDemoDevice;
- (BOOL)isVerifiedDemoDevice;
- (BOOL)liftPowerAssertion;
- (BOOL)managedStoreDemoMode;
- (BOOL)migrateCellularSupportFlag;
- (BOOL)migrateDemoDeviceToDemoVolume;
- (BOOL)migratePreferenceAndWifiSettingsToDemoVolume;
- (BOOL)moveFilesToFinalDst:(id)dst finalPath:(id)path;
- (BOOL)proceeded;
- (BOOL)removeKeyFromPreferenceFile:(id)file;
- (BOOL)removePerHubInfoFromPreferencesForMigration;
- (BOOL)removeTemporaryPasscodeIfNeeded;
- (BOOL)revertSnapshot;
- (BOOL)runCleanUpForBetterTogetherDevice;
- (BOOL)saveCurrentiOSBuild;
- (BOOL)saveHubCertificateIdentifer:(id)identifer;
- (BOOL)saveHubHostNameList:(id)list;
- (BOOL)saveHubSuppliedSettings:(id)settings;
- (BOOL)saveOperationError:(id)error;
- (BOOL)saveOperationRequest:(id)request requestFlag:(int)flag completeBy:(int)by;
- (BOOL)sendIconStateToSB:(id)b;
- (BOOL)setDemoDeviceFlag;
- (BOOL)setDemoEnrollmentFlag:(id)flag;
- (BOOL)setLowPowerMode:(int64_t)mode;
- (BOOL)setPOSDeviceFlag;
- (BOOL)setPasscodeModificationAllowed:(BOOL)allowed;
- (BOOL)setSEPDemoMode:(BOOL)mode;
- (BOOL)setupDemoDeviceMetadataFolder;
- (BOOL)setupDummyPreferenceFile;
- (BOOL)setupFactoryDemoDeviceMetadataFolder;
- (BOOL)shouldForgetKnownNetworkUponUnlock;
- (BOOL)snapshotRevertFlagged;
- (BOOL)switchModeImmediately:(int)immediately;
- (BOOL)toggleSEPDemoModeOnManagedPreferencesChange;
- (BOOL)turnOnDemoMode;
- (BOOL)turnOnPressDemoMode;
- (BOOL)turnOnStoreDemoMode;
- (BOOL)unenrollWithObliteration:(BOOL)obliteration preserveESim:(BOOL)sim callUnregister:(BOOL)unregister preserveDDLFlag:(BOOL)flag;
- (BOOL)updateDeviceOptions:(id)options skipImutableKeys:(BOOL)keys;
- (BOOL)waitingForCommand;
- (MSDTargetDevice)init;
- (NSData)certificateHash;
- (NSDate)lastRebootTime;
- (NSDictionary)wifiSettings;
- (NSNumber)nandSize;
- (NSString)OSBuild;
- (NSString)OSVersion;
- (NSString)cachedBundleInstallState;
- (NSString)demodVersion;
- (NSString)hubHostName;
- (NSString)hubPort;
- (NSString)hubProtocolVersion;
- (NSString)installedFactoryBundleID;
- (NSString)name;
- (NSString)preferredStoreID;
- (NSString)productType;
- (NSString)request;
- (NSString)response;
- (NSString)serialNumber;
- (NSString)udid;
- (id)cloudPairedDevices;
- (id)decodeComponentIdx:(int)idx forSavedString:(id)string;
- (id)deviceInformation:(id)information appendPingInfo:(BOOL)info;
- (id)getCachingHubFailureEventForPing;
- (id)getDemoEnrollmentFlag;
- (id)getDesiredIconStateFromSB;
- (id)getDeviceOptions;
- (id)getOSUpdateRequest;
- (id)getS3ServerFailureEventForPing;
- (id)getSavedError;
- (id)getSavedOSPreferencesRequest;
- (id)getSavedRequest;
- (id)getStagedOSPreferencesRequest;
- (id)hubCertificateIdentifier;
- (id)hubHostNameList;
- (id)hubSuppliedSettings;
- (id)iCloudAccountRecoveryKey;
- (id)identityServicesID;
- (id)installedDeletableSystemApps;
- (id)lastSettingsUpdatedTime;
- (id)lastShallowRefreshTime;
- (id)lastSnapshotRevertTime;
- (id)minOSVersionAvailable;
- (id)pathForDummyPreferenceFile;
- (id)previousiOSBuild;
- (id)readNVRam:(id)ram;
- (id)requiredDeletableSystemApps;
- (id)retrieveSignedManifest;
- (int)activationConfigurationFlags;
- (int)getSavedCompleteByInterval;
- (int)getSavedFlag;
- (int)mode;
- (int64_t)batteryCapacity;
- (int64_t)findMyHubRetryAtTime;
- (int64_t)getFreeSpace;
- (int64_t)hubLastOnlineTime;
- (unint64_t)backgroundDownloadState;
- (unint64_t)fetchActiveNetworkInterface;
- (unint64_t)typeOfDemoDevice;
- (void)acquireDeviceKeybagAssertionIfNeeded;
- (void)backToVirgin:(int)virgin;
- (void)caLogsUploadTimerHandler:(id)handler;
- (void)cleanUpBackgroundState:(BOOL)state;
- (void)cleanupDummyPreferenceFile;
- (void)clearMinOSVersionAvailable;
- (void)clearOSUpdateRequest;
- (void)clearSafariHistory;
- (void)clearUpF200FootprintIfNeeded;
- (void)clearUpNvramIfNeeded;
- (void)configApplePencilToEnterSleepModeIfPaired;
- (void)configureGreyMatterAutoUpdate;
- (void)configureLowPowerModeForTime:(id)time;
- (void)configureNetworkInterface;
- (void)delayRebootForTesting;
- (void)destroyWorkFolderForBootTask;
- (void)disableLaunchdServicesIfNeededForWatch;
- (void)disableSUAutoDownloadForWatch;
- (void)enableSnapshotMode:(BOOL)mode;
- (void)forceSwitchToDemoModeIfNeeded;
- (void)installAndWaitForSystemApps;
- (void)invokeHandler:(BOOL)handler;
- (void)kickOffCachedBundleInstall;
- (void)manageDataVolume:(id)volume;
- (void)manageDemoVolume:(id)volume;
- (void)manageDeviceSnapshot:(id)snapshot;
- (void)manageUserVolume:(id)volume;
- (void)manualUpdateMode:(BOOL *)mode allowChange:(BOOL *)change;
- (void)markContentInstallingInstalled;
- (void)migrateNvramToDemoVolume;
- (void)notifyCleanEnergyChargingToggled;
- (void)obliterateDeviceWithAdminCredential:(id)credential;
- (void)patchBackupFolderInStaging:(id)staging;
- (void)processNewFeatureFlags:(id)flags oldFeatureFlags:(id)featureFlags;
- (void)rebootForStage:(int)stage;
- (void)rebootWithSnapshotRevertForStage:(int)stage;
- (void)refreshStoreHoursManagerUsingSettingsAndTime:(id)time;
- (void)registerCAHearbeatActivity;
- (void)resetSystemTimeCache;
- (void)saveDeviceOptions:(id)options;
- (void)saveFindMyHubRetryAtTime:(int64_t)time;
- (void)saveHubLastOnlineTime:(int64_t)time;
- (void)saveLastSettingsUpdatedTime:(id)time;
- (void)saveLastShallowRefreshTime:(id)time;
- (void)saveLastSnapshotRevertTime:(id)time;
- (void)saveMinOSVersionAvailable:(id)available;
- (void)saveOSPreferencesRequest:(id)request;
- (void)saveOSUpdateRequest:(id)request;
- (void)saveRequiredDeletableSystemApps;
- (void)saveSnapshotRevertFlagged:(BOOL)flagged;
- (void)saveiCloudAccountRecoveryKey:(id)key;
- (void)saveiCloudAccountSyncNeeded:(BOOL)needed;
- (void)setBackgroundDownloadActive:(BOOL)active;
- (void)setBackgroundDownloadState:(unint64_t)state;
- (void)setCachedBundleInstallState:(id)state;
- (void)setCriticalUpdatePrioritized:(BOOL)prioritized;
- (void)setHubHostName:(id)name;
- (void)setHubPort:(id)port;
- (void)setHubProtocolVersion:(id)version;
- (void)setInstalledFactoryBundleID:(id)d;
- (void)setMode:(int)mode;
- (void)setPreferredStoreID:(id)d;
- (void)setProceeded:(BOOL)proceeded;
- (void)setRequest:(id)request;
- (void)setResponse:(id)response;
- (void)setShouldForgetKnownNetworkUponUnlock:(BOOL)unlock;
- (void)setWaitingForCommand:(BOOL)command;
- (void)setWifiSettings:(id)settings;
- (void)setupCoreAnalyticsLogsUploadTimer;
- (void)setupSnapshotRevertTimer;
- (void)setupStoreHoursManager;
- (void)setupWorkFolderForBootTask;
- (void)shutdown;
- (void)snapshotRevertTimerHandler:(id)handler;
- (void)stageNewOSPreferences:(id)preferences;
- (void)startWaitingForCommandTimer;
- (void)terminateConfigurationApp;
- (void)unlockDeviceKeybagIfNeeded;
- (void)waitForBuddy:(id)buddy updateStatus:(BOOL)status;
- (void)waitForBuddyWithTimeout;
- (void)waitForNetworkReachabilityWithTimeout:(unint64_t)timeout;
- (void)waitForPricing:(int)pricing forReboot:(BOOL)reboot;
@end

@implementation MSDTargetDevice

+ (MSDTargetDevice)sharedInstance
{
  if (qword_1001A5778 != -1)
  {
    sub_1000D245C();
  }

  v3 = qword_1001A5770;

  return v3;
}

- (MSDTargetDevice)init
{
  v5.receiver = self;
  v5.super_class = MSDTargetDevice;
  v2 = [(MSDTargetDevice *)&v5 init];
  if (v2)
  {
    v3 = +[MSDHelperAgent sharedInstance];
    [(MSDTargetDevice *)v2 setHelperAgent:v3];

    [(MSDTargetDevice *)v2 setPowerAssertion:0];
  }

  return v2;
}

- (NSString)name
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)udid
{
  v2 = +[MSDPlatform sharedInstance];
  macOS = [v2 macOS];

  if (macOS)
  {
    v4 = MGCopyAnswer();
    v5 = [v4 stringByPaddingToLength:25 withString:@"0" startingAtIndex:0];
    uppercaseString = [v5 uppercaseString];
  }

  else
  {
    uppercaseString = MGCopyAnswer();
  }

  return uppercaseString;
}

- (NSString)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int)mode
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"demo-install-state"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)typeOfDemoDevice
{
  v3 = +[MSDKeychainManager sharedInstance];
  v4 = [v3 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  if (v4)
  {
    return 6;
  }

  if ([(MSDTargetDevice *)self isVerifiedDemoDevice])
  {
    v6 = +[MSDHelperAgent sharedInstance];
    v7 = [v6 fileExistsAtPath:@"/private/var/demo_backup/Metadata/Content.plist"];

    v8 = v7 == 0;
    v9 = 4;
  }

  else
  {
    if ([(MSDTargetDevice *)self storeDemoMode])
    {
      return 3;
    }

    v8 = ![(MSDTargetDevice *)self isVerifiedPOSDevice];
    v9 = 1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return v9 + 1;
  }
}

- (void)setMode:(int)mode
{
  v3 = *&mode;
  v5 = +[MSDPreferencesFile sharedInstance];
  v4 = [NSNumber numberWithInt:v3];
  [v5 setObject:v4 forKey:@"demo-install-state"];
}

- (BOOL)removeKeyFromPreferenceFile:(id)file
{
  fileCopy = file;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 removeObjectForKey:fileCopy];

  if ((v5 & 1) == 0)
  {
    sub_1000D2470(fileCopy);
  }

  return v5;
}

- (NSString)request
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"msd-request"];

  return v3;
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:requestCopy forKey:@"msd-request"];
}

- (NSString)response
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"msd-response"];

  return v3;
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:responseCopy forKey:@"msd-response"];
}

- (BOOL)switchModeImmediately:(int)immediately
{
  v3 = *&immediately;
  modeLock = [(MSDTargetDevice *)self modeLock];
  objc_sync_enter(modeLock);
  mode = [(MSDTargetDevice *)self mode];
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v8 = [NSString stringWithFormat:@"%d-%d", mode, v3];
    v9 = +[MSDTestInterface sharedInstance];
    [v9 pushTestEvent:v8 ofType:@"deviceModeChange"];
  }

  v10 = v3 == 4 && mode == 2;
  v11 = v10;
  if (!v10)
  {
    if (v3 > 7)
    {
      if (v3 == 8)
      {
LABEL_21:
        v13 = sub_100063A54(has_internal_content);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Move device to clearing mode to change the device to virgin/obliterate...", buf, 2u);
        }

        [(MSDTargetDevice *)self setMode:v3];
        has_internal_content = [(MSDTargetDevice *)self enableSnapshotMode:0];
        goto LABEL_24;
      }

      if (v3 != 9)
      {
        goto LABEL_24;
      }
    }

    else if (v3)
    {
      goto LABEL_20;
    }

    has_internal_content = [(MSDTargetDevice *)self backToVirgin:v3];
LABEL_20:
    if (v3 != 6)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v12 = sub_100063A54(has_internal_content);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v46 = 2;
    *&v46[4] = 1024;
    *&v46[6] = 4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Changing mode from %d to %d, waiting for 30s...", buf, 0xEu);
  }

  has_internal_content = sleep(0x1Eu);
LABEL_24:
  if (mode == v3)
  {
    goto LABEL_94;
  }

  v14 = sub_100063A54(has_internal_content);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v46 = mode;
    *&v46[4] = 1024;
    *&v46[6] = v3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Changing mode from %d to %d", buf, 0xEu);
  }

  if (v3 == 5)
  {
    allowEnteringDemoMode = [(MSDTargetDevice *)self allowEnteringDemoMode];
    if ((allowEnteringDemoMode & 1) == 0)
    {
      v41 = sub_100063A54(allowEnteringDemoMode);
      sub_1000D2508(v41);

      v42 = [NSError errorDomainMSDWithCode:3727740953 message:@"Snapshot mode not allowed."];
      goto LABEL_98;
    }

    if (!mode)
    {
      v19 = 1;
      goto LABEL_54;
    }

    if (mode != 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_36;
    }

LABEL_53:
    v19 = 0;
    goto LABEL_54;
  }

  v17 = v3 == 1;
  if (v3 == 1 && !mode)
  {
    goto LABEL_53;
  }

  v18 = mode == 1;
  v16 = v3 == 2;
  if (v3 == 2 && mode == 1)
  {
    goto LABEL_53;
  }

LABEL_36:
  v19 = 0;
  if (v3 != 7)
  {
    v18 = 0;
  }

  v20 = mode == 2 && v3 == 5;
  v21 = v11 | v20 | v18;
  v23 = (mode == 7 || mode == 4) && v3 == 5;
  if ((v21 & 1) == 0 && !v23)
  {
    v24 = v16 || v17;
    if (v3 == 7)
    {
      v24 = 1;
    }

    if (mode == 5 && (v24 & 1) != 0)
    {
      goto LABEL_53;
    }

    v44 = sub_100063A54(allowEnteringDemoMode);
    sub_1000D2558(v44, mode, v3);

    v42 = [NSError errorDomainMSDWithCode:3727740956 message:@"The operation is not allowed."];
LABEL_98:
    v31 = v42;
    goto LABEL_99;
  }

LABEL_54:
  getSavedFlag = [(MSDTargetDevice *)self getSavedFlag];
  v26 = +[MSDPlatform sharedInstance];
  if ([v26 macOS])
  {
    v27 = (getSavedFlag & 2) == 0;
  }

  else
  {
    v28 = +[MSDPlatform sharedInstance];
    if (([v28 iOS] & 1) == 0)
    {

      goto LABEL_62;
    }

    v27 = (getSavedFlag & 2) == 0;
  }

  if (!v27)
  {
    if (v3 == 4)
    {
      [(MSDTargetDevice *)self waitForPricing:60 forReboot:1];
      goto LABEL_63;
    }

    if (v3 == 5 && mode == 4)
    {
      [(MSDTargetDevice *)self waitForPricing:0 forReboot:1];
    }

    goto LABEL_68;
  }

LABEL_62:
  if (v3 == 4)
  {
LABEL_63:
    sleep(2u);
    [(MSDTargetDevice *)self setProceeded:1];
    if (os_variant_has_internal_content())
    {
      [(MSDTargetDevice *)self delayRebootForTesting];
    }

    goto LABEL_69;
  }

LABEL_68:
  [(MSDTargetDevice *)self setProceeded:0];
LABEL_69:
  if ((v19 & 1) != 0 || (v3 == 5 ? (v32 = mode == 1) : (v32 = 0), !v32 ? (v33 = 0) : (v33 = 1), v3 == 2 || v33))
  {
    setDemoDeviceFlag = [(MSDTargetDevice *)self setDemoDeviceFlag];
    if ((setDemoDeviceFlag & 1) == 0)
    {
      v30 = sub_100063A54(setDemoDeviceFlag);
      sub_1000D2608(v30);
      v31 = 0;
LABEL_99:
      v43 = +[MSDDemoUpdateStatusHub sharedInstance];
      [v43 demoUpdateFailed:v31];

      v39 = 0;
      goto LABEL_95;
    }
  }

  if (v3 == 5)
  {
    [(MSDTargetDevice *)self deleteConfigurationApp];
    v34 = +[MSDProgressUpdater sharedInstance];
    [v34 updateStage:7];

    if ([(MSDTargetDevice *)self allowSnapshotMode])
    {
      v35 = +[MSDWiFiHelper sharedInstance];
      [v35 saveCurrentWiFiSettings];
    }

    v36 = 1;
    if (mode == 4)
    {
      [(MSDTargetDevice *)self cleanUpBackgroundState:1];
    }
  }

  else
  {
    v36 = mode == 5;
  }

  v37 = [(MSDTargetDevice *)self setMode:v3];
  if (v3 == 2)
  {
    v38 = sub_100063A54(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v46 = "[MSDTargetDevice switchModeImmediately:]";
      *&v46[8] = 1024;
      v47 = 2;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s - Setting up pallas URLs before switching to mode %d", buf, 0x12u);
    }

    [(MSDTargetDevice *)self configureGreyMatterAutoUpdate];
  }

  if (v36)
  {
    [(MSDTargetDevice *)self enableSnapshotMode:v3 == 5];
  }

  if (v3 == 4)
  {
    [(MSDTargetDevice *)self rebootForStage:6];
  }

LABEL_94:
  v39 = 1;
LABEL_95:
  objc_sync_exit(modeLock);

  return v39;
}

- (void)waitForPricing:(int)pricing forReboot:(BOOL)reboot
{
  rebootCopy = reboot;
  v5 = *&pricing;
  v7 = +[MSDPricingUpdateController sharedInstance];
  if (rebootCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(MSDTargetDevice *)selfCopy setAboutToReboot:1];
    objc_sync_exit(selfCopy);
  }

  completed = [v7 completed];
  if ((completed & 1) == 0)
  {
    if (v5)
    {
      if (rebootCopy)
      {
        [v7 stopMonitor];
        v10 = +[MSDLocalMessageResponder sharedInstance];
        [v10 sendRebootTimeoutMessageToPricing:v5];
      }

      v11 = sub_100063A54(completed);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v5;
      v12 = "Defering the operation (up to %d seconds) as Pricing update is not done yet...";
      v13 = v11;
      v14 = 8;
    }

    else
    {
      v11 = sub_100063A54(completed);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        v15 = +[MSDProgressUpdater sharedInstance];
        [v15 updateStage:17];

        goto LABEL_13;
      }

      LOWORD(v19) = 0;
      v12 = "Defering the operation until the Pricing update is done...";
      v13 = v11;
      v14 = 2;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v19, v14);
    goto LABEL_12;
  }

LABEL_13:
  v16 = 0;
  do
  {
    if ([v7 completed])
    {
      break;
    }

    [NSThread sleepForTimeInterval:1.0];
    v17 = v16++ >= v5;
  }

  while (!v17 || v5 < 1);
}

- (void)forceSwitchToDemoModeIfNeeded
{
  modeLock = [(MSDTargetDevice *)self modeLock];
  objc_sync_enter(modeLock);
  v4 = +[MSDKeychainManager sharedInstance];
  v5 = [v4 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  if (v5)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "The device is enrolled, will force to demo mode now.", buf, 2u);
    }

    if ([(MSDTargetDevice *)self mode]== 4)
    {
      v8 = +[MSDDemoUpdateController sharedInstance];
      [v8 migrateDataWithBlockingUI:-[MSDTargetDevice mode](self startMigration:{"mode"), 1}];
    }

    [(MSDTargetDevice *)self deleteConfigurationApp];
    if ([(MSDTargetDevice *)self allowSnapshotMode])
    {
      v9 = +[MSDWiFiHelper sharedInstance];
      [v9 saveCurrentWiFiSettings];
    }

    if ([(MSDTargetDevice *)self mode]== 2 || [(MSDTargetDevice *)self mode]== 4)
    {
      [(MSDTargetDevice *)self markContentInstallingInstalled];
      v10 = +[MSDHelperAgent sharedInstance];
      [v10 switchToBackupFolder];

      v11 = +[MSDProgressUpdater sharedInstance];
      bundleInProgress = [v11 bundleInProgress];
      [bundleInProgress stopBundleUpdateTimer];
    }

    if ([(MSDTargetDevice *)self mode]== 7)
    {
      [(MSDTargetDevice *)self clearOSUpdateRequest];
    }

    v13 = +[MSDProgressUpdater sharedInstance];
    [v13 updateStage:7];

    getSavedFlag = [(MSDTargetDevice *)self getSavedFlag];
    v15 = +[MSDPlatform sharedInstance];
    if (([v15 macOS] & 1) == 0)
    {
      v16 = +[MSDPlatform sharedInstance];
      if (([v16 iOS] & 1) == 0)
      {

LABEL_22:
        helperAgent = [(MSDTargetDevice *)self helperAgent];
        [helperAgent clearStagedDeviceAfterUpdateProcess];

        [(MSDTargetDevice *)self setMode:5];
        [(MSDTargetDevice *)self enableSnapshotMode:1];
        goto LABEL_23;
      }
    }

    if ((getSavedFlag & 2) != 0)
    {
      [(MSDTargetDevice *)self waitForPricing:60 forReboot:1];
    }

    goto LABEL_22;
  }

  v17 = sub_100063A54(v6);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "The device has not been enrolled, will not force to demo mode.", v19, 2u);
  }

LABEL_23:
  objc_sync_exit(modeLock);
}

- (BOOL)setDemoDeviceFlag
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [NSNumber numberWithBool:1];
  v4 = [v2 setObject:v3 forKey:@"DemoDevice"];

  if ((v4 & 1) == 0)
  {
    sub_1000D265C(v5);
  }

  return v4;
}

- (BOOL)setPOSDeviceFlag
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [NSNumber numberWithBool:1];
  v4 = [v2 setObject:v3 forKey:@"POSDevice"];

  if ((v4 & 1) == 0)
  {
    sub_1000D26B8(v5);
  }

  return v4;
}

- (void)setPreferredStoreID:(id)d
{
  dCopy = d;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:dCopy forKey:@"PreferredStoreID"];
}

- (NSString)preferredStoreID
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"PreferredStoreID"];

  return v3;
}

- (void)obliterateDeviceWithAdminCredential:(id)credential
{
  v3 = objc_alloc_init(DDRResetOptions);
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"PreserveESimRequested"];

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Should we preserve eSim across device obliteration: %{public}@", &v10, 0xCu);
  }

  if (!v5 || ([v5 BOOLValue] & 1) == 0)
  {
    [v3 setEraseDataPlan:1];
  }

  v8 = [[DDRResetRequest alloc] initWithMode:4 options:v3 reason:@"Demod Obliterate Device"];
  v9 = +[DDRResetService sharedInstance];
  [v9 resetWithRequest:v8 completion:&stru_10016AD78];
}

- (void)backToVirgin:(int)virgin
{
  v5 = dispatch_semaphore_create(0);
  mode = [(MSDTargetDevice *)self mode];
  v7 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  v28 = 0;
  v8 = [v7 shouldCleanUp:&v28];
  v9 = v28;
  v10 = v9;
  if (v8)
  {
    v8 = [v9 code] == 3727741185;
  }

  v12 = sub_100063A54(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (mode == 5 || v8)
  {
    if (v13)
    {
      *buf = 67109376;
      LODWORD(v30[0]) = mode;
      WORD2(v30[0]) = 1024;
      *(v30 + 6) = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "mode = %d, canceling is %d, need an extra reboot to complete the operation.", buf, 0xEu);
    }

    if (virgin == 9)
    {
      selfCopy2 = self;
      v22 = 8;
    }

    else
    {
      if (virgin)
      {
        goto LABEL_23;
      }

      selfCopy2 = self;
      v22 = 6;
    }

    [(MSDTargetDevice *)selfCopy2 switchModeImmediately:v22];
    goto LABEL_23;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Clearing all nvrams/demo volume/keychain items/preference-file used by demod.", buf, 2u);
  }

  [(MSDTargetDevice *)self deleteNVRam:@"demo-install-state"];
  [(MSDTargetDevice *)self deleteNVRam:@"enable-remap-mode"];
  [(MSDTargetDevice *)self deleteNVRam:@"msd-request"];
  [(MSDTargetDevice *)self deleteNVRam:@"msd-reboot-at"];
  [(MSDTargetDevice *)self deleteNVRam:@"msd-last-auto-reboot"];
  v14 = +[MSDPreferencesFile sharedInstance];
  v15 = [v14 objectForKey:@"preserveDDLFlag"];

  if (!v15 || (v17 = [v15 BOOLValue], +[MSDPreferencesFile sharedInstance](MSDPreferencesFile, "sharedInstance"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "removeObjectForKey:", @"preserveDDLFlag"), v18, (v17 & 1) == 0))
  {
    v19 = sub_100063A54(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30[0] = "[MSDTargetDevice backToVirgin:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s - Deleting DDL flag in nvram.", buf, 0xCu);
    }

    [(MSDTargetDevice *)self deleteNVRam:@"ownership-warning"];
  }

  v20 = +[MSDAccountManager sharedInstance];
  [v20 removeAccounts:0];

  [(MSDTargetDevice *)self manageDemoVolume:@"Delete"];
  [(MSDTargetDevice *)self unregisterCAHeartbeatActivity];
  if (virgin == 9)
  {
    [(MSDTargetDevice *)self obliterateDeviceWithAdminCredential:0];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [(MSDTargetDevice *)self deactivateDevice];
    v23 = +[MSDCryptoHandler sharedInstance];
    [v23 deleteSecretKey];

    v24 = +[MSDAppPrivacyPermissionsHelper sharedInstance];
    [v24 revokePrivacyPermissionsForAllApps];

    pathForDummyPreferenceFile = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
    v26 = +[NSFileManager defaultManager];
    [v26 removeItemAtPath:pathForDummyPreferenceFile error:0];

    v27 = +[MSDKeychainManager sharedInstance];
    [v27 deleteItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

    [(MSDTargetDevice *)self enableSnapshotMode:0];
  }

LABEL_23:
}

- (BOOL)removePerHubInfoFromPreferencesForMigration
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 removeObjectsForKeys:&off_10017BD30];

  return v3;
}

- (BOOL)cleanUpPreferencesFile
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [&off_10017BD48 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v17;
    *&v3 = 138543362;
    v15 = v3;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(&off_10017BD48);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = +[MSDPreferencesFile sharedInstance];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          v11 = sub_100063A54(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v7;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing legacy key %{public}@ from preference file", buf, 0xCu);
          }

          v12 = +[MSDPreferencesFile sharedInstance];
          v13 = [v12 removeObjectForKey:v7];

          if ((v13 & 1) == 0)
          {
            sub_1000D2714(v7);
            return 0;
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [&off_10017BD48 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)migrateDemoDeviceToDemoVolume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  migratePreferenceAndWifiSettingsToDemoVolume = [(MSDTargetDevice *)selfCopy migratePreferenceAndWifiSettingsToDemoVolume];
  if (migratePreferenceAndWifiSettingsToDemoVolume)
  {
    [(MSDTargetDevice *)selfCopy migrateNvramToDemoVolume];
  }

  objc_sync_exit(selfCopy);

  return migratePreferenceAndWifiSettingsToDemoVolume;
}

- (BOOL)migratePreferenceAndWifiSettingsToDemoVolume
{
  v3 = +[NSFileManager defaultManager];
  [(MSDTargetDevice *)self manageDemoVolume:@"Setup"];
  if (+[MSDPreferencesFile preferencesFileExists])
  {
    pathForDummyPreferenceFile = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
    v5 = [v3 fileExistsAtPath:pathForDummyPreferenceFile];

    if (v5)
    {
      v7 = sub_100063A54(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Migration already done.", buf, 2u);
      }

      v8 = 0;
      v9 = 0;
      v10 = 1;
      goto LABEL_19;
    }
  }

  v11 = +[MSDPreferencesFile preferencesFileExists];
  if ((v11 & 1) != 0 || (-[MSDTargetDevice pathForDummyPreferenceFile](self, "pathForDummyPreferenceFile"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v3 fileExistsAtPath:v12], v12, !v13))
  {
    v7 = sub_100063A54(v11);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Migration encountered unexpected error.", v23, 2u);
    }

    v8 = 0;
    v9 = 0;
    goto LABEL_18;
  }

  v14 = sub_100063A54(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Need to migrate old preferences file and other data.", v25, 2u);
  }

  v9 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/Preferences/com.apple.MobileStoreDemo.WiFiSetting.plist"];
  [(MSDTargetDevice *)self manageDemoVolume:@"Delete"];
  pathForDummyPreferenceFile2 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  v16 = +[MSDPreferencesFile preferencesFilePath];
  v24 = 0;
  v17 = [v3 moveItemAtPath:pathForDummyPreferenceFile2 toPath:v16 error:&v24];
  v8 = v24;

  if ((v17 & 1) == 0)
  {
    v7 = sub_100063B64(v18);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D27AC();
    }

    goto LABEL_18;
  }

  if (v9)
  {
    [(MSDTargetDevice *)self setWifiSettings:v9];
  }

  pathForDummyPreferenceFile3 = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  v20 = [v3 createFileAtPath:pathForDummyPreferenceFile3 contents:0 attributes:0];

  if ((v20 & 1) == 0)
  {
    v7 = sub_100063B64(v21);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D281C();
    }

LABEL_18:
    v10 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v10 = 1;
LABEL_20:

  return v10;
}

- (void)migrateNvramToDemoVolume
{
  v3 = [(MSDTargetDevice *)self readNVRam:@"demo-install-state"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v3 bytes], 4);
      -[MSDTargetDevice setMode:](self, "setMode:", [v4 intValue]);
      [(MSDTargetDevice *)self deleteNVRam:@"demo-install-state"];
    }
  }

  v5 = [(MSDTargetDevice *)self readNVRam:@"msd-reboot-at"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDTargetDevice *)self deleteNVRam:@"msd-reboot-at"];
    }
  }

  [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-reboot-at"];
  v6 = [(MSDTargetDevice *)self readNVRam:@"enable-remap-mode"];

  if (v6)
  {
    [(MSDTargetDevice *)self deleteNVRam:@"enable-remap-mode"];
  }

  v7 = [(MSDTargetDevice *)self readNVRam:@"msd-last-auto-reboot"];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDTargetDevice *)self deleteNVRam:@"msd-last-auto-reboot"];
    }
  }

  [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-last-auto-reboot"];
  v9 = [(MSDTargetDevice *)self readNVRam:@"msd-request"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NSString alloc] initWithData:v9 encoding:4];
      [(MSDTargetDevice *)self setRequest:v8];

      [(MSDTargetDevice *)self deleteNVRam:@"msd-request"];
    }
  }
}

- (BOOL)setupDemoDeviceMetadataFolder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NSFileManager defaultManager];
  [(MSDTargetDevice *)selfCopy manageDemoVolume:@"Setup"];
  createMobileStoreDemoCache = [(MSDTargetDevice *)selfCopy createMobileStoreDemoCache];
  if ((createMobileStoreDemoCache & 1) == 0)
  {
    v10 = sub_100063B64(createMobileStoreDemoCache);
    sub_1000D2850(v10, v13);
    v11 = v13[0];
LABEL_8:

    v8 = 0;
    goto LABEL_4;
  }

  pathForDummyPreferenceFile = [(MSDTargetDevice *)selfCopy pathForDummyPreferenceFile];
  v6 = [v3 createFileAtPath:pathForDummyPreferenceFile contents:0 attributes:0];

  if ((v6 & 1) == 0)
  {
    v11 = sub_100063B64(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      pathForDummyPreferenceFile2 = [(MSDTargetDevice *)selfCopy pathForDummyPreferenceFile];
      sub_1000D28B8(pathForDummyPreferenceFile2, v13, v11);
    }

    goto LABEL_8;
  }

  v8 = 1;
LABEL_4:

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)setupFactoryDemoDeviceMetadataFolder
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up metadata folder for factory demo device...", v8, 2u);
  }

  v5 = +[MSDHelperAgent sharedInstance];
  v6 = [v5 prepareWorkDirectory:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" writableByNonRoot:1];

  objc_sync_exit(selfCopy);
  return v6;
}

- (id)pathForDummyPreferenceFile
{
  v2 = [@"/var/mobile/Library/Preferences" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo"];
  v3 = [v2 stringByAppendingPathExtension:@"plist"];

  return v3;
}

- (BOOL)setupDummyPreferenceFile
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up dummy preference (keep alive) file for factory demo device...", v12, 2u);
  }

  v5 = +[NSFileManager defaultManager];
  pathForDummyPreferenceFile = [(MSDTargetDevice *)selfCopy pathForDummyPreferenceFile];
  v7 = [v5 createFileAtPath:pathForDummyPreferenceFile contents:0 attributes:0];

  if ((v7 & 1) == 0)
  {
    v10 = sub_100063A54(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      pathForDummyPreferenceFile2 = [(MSDTargetDevice *)selfCopy pathForDummyPreferenceFile];
      sub_1000D28B8(pathForDummyPreferenceFile2, v12, v10);
    }
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)cleanupDummyPreferenceFile
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing dummy preference (keep alive) file for factory demo device...", v6, 2u);
  }

  v4 = +[NSFileManager defaultManager];
  pathForDummyPreferenceFile = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  [v4 removeItemAtPath:pathForDummyPreferenceFile error:0];
}

- (BOOL)moveFilesToFinalDst:(id)dst finalPath:(id)path
{
  dstCopy = dst;
  pathCopy = path;
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  v9 = [helperAgent moveStagingToFinal:dstCopy finalPath:pathCopy];

  if ((v9 & 1) == 0)
  {
    sub_1000D2908(dstCopy);
  }

  return v9;
}

- (void)patchBackupFolderInStaging:(id)staging
{
  stagingCopy = staging;
  v5 = +[NSFileManager defaultManager];
  v37[0] = stagingCopy;
  v37[1] = @"/var/mobile/Library/Mobile Documents";
  v6 = [NSArray arrayWithObjects:v37 count:2];
  v7 = [NSString pathWithComponents:v6];

  pathForDummyPreferenceFile = [(MSDTargetDevice *)self pathForDummyPreferenceFile];
  v9 = [stagingCopy stringByAppendingPathComponent:pathForDummyPreferenceFile];
  v10 = [v5 fileExistsAtPath:v9];
  if (v10)
  {
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preference file already in backup path, removing it.", buf, 2u);
    }

    v30 = 0;
    v12 = [v5 removeItemAtPath:v9 error:&v30];
    v13 = v30;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      v25 = sub_100063A54(v13);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000D29C0();
      }

      stringByDeletingLastPathComponent = 0;
      goto LABEL_18;
    }

    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
  if (([v5 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
  {
    v29 = v15;
    v17 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v29];
    v14 = v29;

    if ((v17 & 1) == 0)
    {
      v25 = sub_100063A54(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000D29F4(v14);
      }

      goto LABEL_18;
    }

    v15 = v14;
  }

  v28 = v15;
  v19 = [v5 copyItemAtPath:pathForDummyPreferenceFile toPath:v9 error:&v28];
  v14 = v28;

  if ((v19 & 1) == 0)
  {
    v25 = sub_100063A54(v20);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v14 localizedDescription];
      *buf = 138543874;
      v32 = pathForDummyPreferenceFile;
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot copy preference file to backup path (from %{public}@ to %{public}@ - %{public}@)", buf, 0x20u);
    }

    goto LABEL_18;
  }

  if ([v5 fileExistsAtPath:v7])
  {
    v27 = v14;
    v21 = [v5 removeItemAtPath:v7 error:&v27];
    v22 = v27;

    v24 = sub_100063A54(v23);
    v25 = v24;
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removed folder at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2A80();
    }

    v14 = v22;
LABEL_18:
  }
}

- (void)rebootForStage:(int)stage
{
  v3 = *&stage;
  v5 = dispatch_semaphore_create(0);
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reporting progress - reboot", buf, 2u);
  }

  v7 = +[MSDProgressUpdater sharedInstance];
  [v7 updateStage:v3];

  v8 = sub_100063A54([(MSDTargetDevice *)self configApplePencilToEnterSleepModeIfPaired]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rebooting...", v13, 2u);
  }

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " ", v12, 2u);
  }

  helperAgent = [(MSDTargetDevice *)self helperAgent];
  [helperAgent reboot];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)rebootWithSnapshotRevertForStage:(int)stage
{
  v3 = *&stage;
  v5 = +[MSDUIHelper sharedInstance];
  [v5 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:0];

  v6 = +[MSDAnalytics sharedInstance];
  [v6 rollOverCoreAnalyticsLogs];

  v7 = +[MSDDemoPeerPairingManager sharedInstance];
  [v7 preservePairedPeersData];

  +[MSDGreyMatterHelper preservePrivateAccessTokens];
  v8 = +[MSDContinuityHelper sharedInstance];
  [v8 preserveContinuityPairingRecord];

  [(MSDTargetDevice *)self manageDeviceSnapshot:@"RevertSnapshot"];
  [(MSDTargetDevice *)self saveSnapshotRevertFlagged:1];
  v9 = +[NSDate now];
  [(MSDTargetDevice *)self saveLastSnapshotRevertTime:v9];

  if (v3 == 33)
  {

    [(MSDTargetDevice *)self shutdown];
  }

  else
  {

    [(MSDTargetDevice *)self rebootForStage:v3];
  }
}

- (void)shutdown
{
  v2 = dispatch_semaphore_create(0);
  v3 = sub_100063A54(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device shutting down...", v6, 2u);
  }

  v4 = [[FBSShutdownOptions alloc] initWithReason:@"demod shutdown device"];
  [v4 setRebootType:0];
  v5 = +[FBSSystemService sharedService];
  [v5 shutdownWithOptions:v4];

  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)configApplePencilToEnterSleepModeIfPaired
{
  v2 = objc_alloc_init(HIDManager);
  v3 = sub_100063A54(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring Apple Pencil (if any) before device reboot...", buf, 2u);
  }

  [v2 setDeviceMatching:&off_10017C030];
  [v2 setDispatchQueue:&_dispatch_main_q];
  [v2 open];
  [v2 activate];
  devices = [v2 devices];
  v5 = [devices count];
  if (v5 == 1)
  {
    buf[2] = 1;
    *buf = 676;
    firstObject = [devices firstObject];
    [firstObject open];
    [firstObject activate];
    v13 = 0;
    v7 = [firstObject setReport:buf reportLength:3 withIdentifier:164 forType:2 error:&v13];
    v8 = v13;
    v9 = sub_100063A54(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HID Report successfully sent to Apple Pencil!", v12, 2u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2AF0(v8);
    }

    [firstObject close];
  }

  else
  {
    firstObject = sub_100063A54(v5);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [devices count];
      *buf = 134217984;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "No or multiple matching Apple Pencil device(s) found: %lu", buf, 0xCu);
    }
  }

  [v2 close];
}

- (void)manualUpdateMode:(BOOL *)mode allowChange:(BOOL *)change
{
  if (mode && change)
  {
    mode = [(MSDTargetDevice *)self mode];
    if (mode >= 2)
    {
      *mode = 0;
      *change = mode == 5;
    }

    else
    {
      *mode = 1;
      *change = [(MSDTargetDevice *)self allowEnteringDemoMode];
    }
  }

  else
  {
    sub_1000D2B7C(self);
  }
}

- (id)deviceInformation:(id)information appendPingInfo:(BOOL)info
{
  infoCopy = info;
  informationCopy = information;
  [NSMutableDictionary dictionaryWithCapacity:0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100049F70;
  v16 = &unk_10016ADA0;
  v7 = v17 = self;
  v18 = v7;
  [informationCopy enumerateObjectsUsingBlock:&v13];

  if (infoCopy)
  {
    v8 = [MSDAccountManager sharedInstance:v13];
    existingAccounts = [v8 existingAccounts];
    v10 = [existingAccounts mutableCopy];

    if (v10)
    {
      [v7 setObject:v10 forKey:@"MSDExistingAccounts"];
    }
  }

  if ([v7 count])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getCachingHubFailureEventForPing
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (byte_1001A5780)
  {
    v4 = 0;
  }

  else
  {
    localHubFailureReason = [(MSDTargetDevice *)self localHubFailureReason];

    if (localHubFailureReason)
    {
      localHubFailureReason2 = [(MSDTargetDevice *)self localHubFailureReason];
    }

    else
    {
      localHubFailureReason2 = @"Default:Local Hub Not Reachable";
    }

    v7 = [NSDictionary dictionaryWithObjectsAndKeys:@"CACHING_HUB_FAILURE", @"error", localHubFailureReason2, @"reason", 0];
    udid = [(MSDTargetDevice *)self udid];
    v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:udid, @"UniqueDeviceID", v7, @"MSDCachingHubEvent", 0];

    byte_1001A5780 = 1;
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting event:%{public}@", buf, 0xCu);
    }

    v3 = v9;
    v4 = v3;
  }

  return v4;
}

- (id)getS3ServerFailureEventForPing
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  s3ServerFailureReason = [(MSDTargetDevice *)self s3ServerFailureReason];

  if (s3ServerFailureReason)
  {
    s3ServerFailureReason2 = [(MSDTargetDevice *)self s3ServerFailureReason];
  }

  else
  {
    s3ServerFailureReason2 = @"Default:S3 Server Not Reachable";
  }

  v6 = [NSDictionary dictionaryWithObjectsAndKeys:@"S3_SERVER_FAILURE", @"error", s3ServerFailureReason2, @"reason", 0];
  udid = [(MSDTargetDevice *)self udid];
  v8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:udid, @"UniqueDeviceID", v6, @"MSDS3ServerEvent", 0];

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Reporting event:%{public}@", buf, 0xCu);
  }

  return v8;
}

- (BOOL)criticalUpdatePrioritized
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"criticalContentUpdateOnly"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setCriticalUpdatePrioritized:(BOOL)prioritized
{
  prioritizedCopy = prioritized;
  v4 = sub_100063A54(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = prioritizedCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting criticalupdate:%d", v7, 8u);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  v6 = [NSNumber numberWithBool:prioritizedCopy];
  [v5 setObject:v6 forKey:@"criticalContentUpdateOnly"];
}

- (BOOL)saveOperationRequest:(id)request requestFlag:(int)flag completeBy:(int)by
{
  getSavedCompleteByInterval = *&by;
  getSavedFlag = *&flag;
  requestCopy = request;
  if (([requestCopy isEqualToString:@"UpdateContent"] & 1) == 0 && (objc_msgSend(requestCopy, "isEqualToString:", @"RevertSnapshot") & 1) == 0 && (objc_msgSend(requestCopy, "isEqualToString:", @"ChangeOSPreferences") & 1) == 0)
  {
    getSavedFlag = [(MSDTargetDevice *)self getSavedFlag];
  }

  if (([requestCopy isEqualToString:@"UpdateContent"] & 1) == 0 && (objc_msgSend(requestCopy, "isEqualToString:", @"UpdateOS") & 1) == 0)
  {
    getSavedCompleteByInterval = [(MSDTargetDevice *)self getSavedCompleteByInterval];
  }

  v9 = [NSString stringWithFormat:@"%@:%@:%@:%d:%d", requestCopy, &stru_10016D9D8, &stru_10016D9D8, getSavedFlag, getSavedCompleteByInterval];
  [(MSDTargetDevice *)self setRequest:v9];

  return 1;
}

- (BOOL)saveOperationError:(id)error
{
  errorCopy = error;
  getSavedRequest = [(MSDTargetDevice *)self getSavedRequest];
  if (getSavedRequest)
  {
    localizedFailureReason = [errorCopy localizedFailureReason];

    domain = [errorCopy domain];
    code = [errorCopy code];
    localizedDescription = [errorCopy localizedDescription];
    v10 = localizedDescription;
    if (localizedFailureReason)
    {
      localizedFailureReason2 = [errorCopy localizedFailureReason];
      v12 = [NSString stringWithFormat:@"demoUpdateFailed: %@:0x%lx: %@ - %@", domain, code, v10, localizedFailureReason2];
    }

    else
    {
      v12 = [NSString stringWithFormat:@"demoUpdateFailed: %@:0x%lx: %@", domain, code, localizedDescription];
    }

    v14 = sub_100063A54(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saving error message: %{public}@", buf, 0xCu);
    }

    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%08lX", [errorCopy code]);
    domain2 = [errorCopy domain];
    localizedDescription2 = [errorCopy localizedDescription];
    v18 = [NSString stringWithFormat:@"%@:%@:%@", v15, domain2, localizedDescription2];
    [(MSDTargetDevice *)self setResponse:v18];
  }

  else
  {
    v12 = sub_100063A54(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2C50();
    }
  }

  return getSavedRequest != 0;
}

- (BOOL)deleteOperationResponse
{
  response = [(MSDTargetDevice *)self response];

  if (!response)
  {
    return 1;
  }

  return [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-response"];
}

- (id)decodeComponentIdx:(int)idx forSavedString:(id)string
{
  stringCopy = string;
  v6 = stringCopy;
  if (stringCopy)
  {
    v7 = [stringCopy componentsSeparatedByString:@":"];
    v8 = sub_100063A54(v7);
    idxCopy = idx;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 objectAtIndexedSubscript:idx];
      v15[0] = 67109378;
      v15[1] = idx;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "components[%d] = %{public}@", v15, 0x12u);
    }

    if ([v7 count] > idx && (objc_msgSend(v7, "objectAtIndexedSubscript:", idx), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v13))
    {
      v11 = [v7 objectAtIndexedSubscript:idxCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getSavedRequest
{
  request = [(MSDTargetDevice *)self request];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:0 forSavedString:request];

  return v4;
}

- (int)getSavedFlag
{
  request = [(MSDTargetDevice *)self request];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:3 forSavedString:request];

  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (int)getSavedCompleteByInterval
{
  request = [(MSDTargetDevice *)self request];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:4 forSavedString:request];

  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (id)getSavedError
{
  response = [(MSDTargetDevice *)self response];
  v4 = [(MSDTargetDevice *)self decodeComponentIdx:0 forSavedString:response];

  response2 = [(MSDTargetDevice *)self response];
  v6 = [(MSDTargetDevice *)self decodeComponentIdx:1 forSavedString:response2];

  response3 = [(MSDTargetDevice *)self response];
  v8 = [(MSDTargetDevice *)self decodeComponentIdx:2 forSavedString:response3];

  v16 = 0;
  v9 = [NSScanner scannerWithString:v4];
  v10 = v9;
  if (v4)
  {
    v11 = [v9 scanHexInt:&v16];
    if (v11)
    {
      v12 = v16;
      v19 = NSLocalizedDescriptionKey;
      v20 = v8;
      v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = [NSError errorWithDomain:v6 code:v12 userInfo:v13];
    }

    else
    {
      v13 = sub_100063A54(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to decode saved error code: %{public}@; ignoring", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDate)lastRebootTime
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = 16;
  *v8 = 0x1500000001;
  v2 = sysctl(v8, 2u, v7, &v6, 0, 0);
  if (v2 == -1 || v7[0] == 0)
  {
    sub_1000D2C84(v2);
    v4 = 0;
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSince1970:v7[0]];
  }

  return v4;
}

- (NSNumber)nandSize
{
  *mainPort = 0;
  v2 = IOMasterPort(0, &mainPort[1]);
  if (v2)
  {
    v8 = sub_100063A54(v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2CE0();
    }
  }

  else
  {
    v3 = IOBSDNameMatching(mainPort[1], 0, "disk0");
    if (v3)
    {
      MatchingServices = IOServiceGetMatchingServices(mainPort[1], v3, mainPort);
      if (MatchingServices)
      {
        v8 = sub_100063A54(MatchingServices);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2D14();
        }
      }

      else if (mainPort[0])
      {
        v5 = IOIteratorNext(mainPort[0]);
        if (v5)
        {
          CFProperty = IORegistryEntryCreateCFProperty(v5, @"Size", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            goto LABEL_7;
          }

          v8 = sub_100063A54(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1000D2D48();
          }
        }

        else
        {
          v8 = sub_100063A54(v5);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1000D2D7C();
          }
        }
      }

      else
      {
        v8 = sub_100063A54(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2DB0();
        }
      }
    }

    else
    {
      v8 = sub_100063A54(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000D2DE4();
      }
    }
  }

  CFProperty = 0;
LABEL_7:
  if (mainPort[0])
  {
    IOObjectRelease(mainPort[0]);
  }

  return CFProperty;
}

- (NSString)OSVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)OSBuild
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)demodVersion
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleVersion"];

  return v3;
}

- (NSString)productType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int64_t)batteryCapacity
{
  v2 = MGCopyAnswer();
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)demoSetup
{
  if ([(MSDTargetDevice *)self mode])
  {
    return 1;
  }

  request = [(MSDTargetDevice *)self request];

  return request != 0;
}

- (int)activationConfigurationFlags
{
  v2 = MAECopyActivationRecordWithError();
  v3 = 0;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100063A54(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2E18(v4);
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    v5 = sub_100063A54(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D2EA4();
    }

LABEL_9:
    intValue = 0;
    goto LABEL_4;
  }

  v5 = [v2 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
  intValue = [v5 intValue];
LABEL_4:

  return intValue;
}

- (BOOL)isVerifiedDemoDevice
{
  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 fakeActivationDemoBit], v3, v4))
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is running internal build and wants to fake demo bit; Pass as demo device!", v9, 2u);
    }

    LOBYTE(v7) = 1;
  }

  else
  {
    return ([(MSDTargetDevice *)self activationConfigurationFlags]>> 1) & 1;
  }

  return v7;
}

- (BOOL)isPressDemoDevice
{
  if (!+[MSDOSFeatureFlags isPressDemoModeEnabled])
  {
    hubSuppliedSettings = [(MSDTargetDevice *)self hubSuppliedSettings];
    v5 = hubSuppliedSettings;
    if (hubSuppliedSettings)
    {
      v6 = [hubSuppliedSettings objectForKey:@"DemoMode"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = [v6 isEqualToString:@"press"];
LABEL_15:

          return v3;
        }
      }
    }

    getDeviceOptions = [(MSDTargetDevice *)self getDeviceOptions];
    v6 = getDeviceOptions;
    if (getDeviceOptions)
    {
      v8 = [getDeviceOptions objectForKey:@"demo_mode"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v3 = [v8 isEqualToString:@"press"];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_15;
  }

  return 1;
}

- (BOOL)isContentFrozen
{
  if ([(MSDTargetDevice *)self mode]!= 5)
  {
    return 0;
  }

  return [(MSDTargetDevice *)self allowSnapshotMode];
}

- (BOOL)isBetterTogetherDemo
{
  getDeviceOptions = [(MSDTargetDevice *)self getDeviceOptions];
  v3 = getDeviceOptions;
  if (getDeviceOptions)
  {
    v4 = [getDeviceOptions objectForKey:@"enable_better_together"];
    v5 = v4;
    if (v4)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)deactivateDevice
{
  v2 = MAEDeactivateDeviceWithError();
  v3 = 0;
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    v5 = sub_100063A54(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deactivation failed with error - %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (NSData)certificateHash
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"CertificateHash"];

  return v3;
}

- (BOOL)isDemoEligible
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"DemoEligible"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isOfflineMode
{
  typeOfDemoDevice = [(MSDTargetDevice *)self typeOfDemoDevice];
  getDemoEnrollmentFlag = [(MSDTargetDevice *)self getDemoEnrollmentFlag];
  v5 = [getDemoEnrollmentFlag isEqualToString:@"enrollmentSuccess"];

  if (![(MSDTargetDevice *)self mode]&& (typeOfDemoDevice == 5 || typeOfDemoDevice == 3))
  {
    return v5 ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)dcotaOfflineModeDevice
{
  isDemoEligible = [(MSDTargetDevice *)self isDemoEligible];
  typeOfDemoDevice = [(MSDTargetDevice *)self typeOfDemoDevice];
  isOfflineMode = [(MSDTargetDevice *)self isOfflineMode];
  if (typeOfDemoDevice == 5)
  {
    v6 = isOfflineMode;
  }

  else
  {
    v6 = 0;
  }

  return v6 & isDemoEligible;
}

- (BOOL)cachedBundleInstallAttempted
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"CachedBundleInstallState"];
  v4 = v3 != 0;

  return v4;
}

- (NSString)cachedBundleInstallState
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"CachedBundleInstallState"];

  return v3;
}

- (void)setCachedBundleInstallState:(id)state
{
  stateCopy = state;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:stateCopy forKey:@"CachedBundleInstallState"];
}

- (NSString)installedFactoryBundleID
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"InstalledFactoryBundleID"];

  if (v3)
  {
    goto LABEL_5;
  }

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v3 = [v4 objectForKey:@"InstalledFactoryBundleID"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_5:
      v3 = v3;
      v5 = v3;
      goto LABEL_6;
    }

    sub_1000D2ED8(v3);
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)setInstalledFactoryBundleID:(id)d
{
  dCopy = d;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:dCopy forKey:@"InstalledFactoryBundleID"];
}

- (void)kickOffCachedBundleInstall
{
  v26 = 0;
  isOfflineMode = [(MSDTargetDevice *)self isOfflineMode];
  isVerifiedDemoDevice = [(MSDTargetDevice *)self isVerifiedDemoDevice];
  dcotaOfflineModeDevice = [(MSDTargetDevice *)self dcotaOfflineModeDevice];
  getDemoEnrollmentFlag = [(MSDTargetDevice *)self getDemoEnrollmentFlag];

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Kicking off cached bundle install for current device locale", buf, 2u);
  }

  setupDemoDeviceMetadataFolder = os_transaction_create();
  v10 = setupDemoDeviceMetadataFolder;
  if (!getDemoEnrollmentFlag)
  {
    if (isVerifiedDemoDevice)
    {
      v11 = sub_100063A54(setupDemoDeviceMetadataFolder);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting up demo device metadata folder for DCOTA managed device", v24, 2u);
      }

      setupDemoDeviceMetadataFolder = [(MSDTargetDevice *)self setupDemoDeviceMetadataFolder];
    }

    else if (isOfflineMode)
    {
      v12 = sub_100063A54(setupDemoDeviceMetadataFolder);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting up metadata folder for non-DCOTA managed device", v23, 2u);
      }

      setupDemoDeviceMetadataFolder = [(MSDTargetDevice *)self setupFactoryDemoDeviceMetadataFolder];
    }
  }

  v13 = sub_100063A54(setupDemoDeviceMetadataFolder);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Waiting for buddy to quit...", v22, 2u);
  }

  [(MSDTargetDevice *)self waitForBuddyWithTimeout];
  v14 = +[MSDDemoUpdateController sharedInstance];
  [v14 installCachedContentForCurrentLocale:&v26];

  if (dcotaOfflineModeDevice)
  {
    if (!getDemoEnrollmentFlag)
    {
      v16 = sub_100063A54(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting up device to perform enrollment retries", v21, 2u);
      }

      [(MSDTargetDevice *)self setDemoEnrollmentFlag:@"enrollmentStarted"];
    }

    v17 = +[MSDFindMyHub sharedInstance];
    [v17 setupOfflineModeEnrollmentRetry];
  }

  if (v26 == 1)
  {
    has_internal_content = os_variant_has_internal_content();
    if (has_internal_content)
    {
      has_internal_content = [(MSDTargetDevice *)self delayRebootForTesting];
    }

    v19 = sub_100063A54(has_internal_content);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Rebooting device after cached bundle install", v20, 2u);
    }

    [(MSDTargetDevice *)self reboot];
  }
}

- (id)hubCertificateIdentifier
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubCertificateIdentifier"];

  return v3;
}

- (BOOL)saveHubCertificateIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:identiferCopy forKey:@"HubCertificateIdentifier"];

  v5 = +[MSDPreferencesFile sharedInstance];
  LOBYTE(identiferCopy) = [v5 removeObjectsForKeys:&off_10017BD60];

  return identiferCopy;
}

- (NSString)hubHostName
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubHostName"];

  return v3;
}

- (void)setHubHostName:(id)name
{
  nameCopy = name;
  v4 = +[MSDPreferencesFile preferencesFileExists];
  if (v4)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = nameCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving hub host name: %{public}@", &v7, 0xCu);
    }

    v6 = +[MSDPreferencesFile sharedInstance];
    [v6 setObject:nameCopy forKey:@"HubHostName"];
  }
}

- (id)hubHostNameList
{
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [v3 objectForKey:@"HubHostNameList"];

  if (!v4)
  {
    hubHostName = [(MSDTargetDevice *)self hubHostName];
    if (hubHostName)
    {
      [NSArray arrayWithObject:hubHostName];
    }

    else
    {
      +[NSArray array];
    }
    v4 = ;
    [(MSDTargetDevice *)self saveHubHostNameList:v4];
  }

  return v4;
}

- (BOOL)saveHubHostNameList:(id)list
{
  listCopy = list;
  if (!listCopy)
  {
    listCopy = +[NSArray array];
  }

  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:listCopy forKey:@"HubHostNameList"];

  return v5;
}

- (NSString)hubPort
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubPort"];

  return v3;
}

- (void)setHubPort:(id)port
{
  portCopy = port;
  v4 = +[MSDPreferencesFile preferencesFileExists];
  if (v4)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = portCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving hub port: %{public}@", &v7, 0xCu);
    }

    v6 = +[MSDPreferencesFile sharedInstance];
    [v6 setObject:portCopy forKey:@"HubPort"];
  }
}

- (void)saveFindMyHubRetryAtTime:(int64_t)time
{
  v5 = +[MSDPreferencesFile sharedInstance];
  if (time <= 0)
  {
    [v5 removeObjectForKey:@"FMHRetryAtTime"];
  }

  else
  {
    v4 = [NSNumber numberWithInteger:time];
    [v5 setObject:v4 forKey:@"FMHRetryAtTime"];
  }
}

- (void)saveHubLastOnlineTime:(int64_t)time
{
  v5 = +[MSDPreferencesFile sharedInstance];
  if (time <= 0)
  {
    [v5 removeObjectForKey:@"HubLastOnlineTime"];
  }

  else
  {
    time = [NSString stringWithFormat:@"%ld", time];
    [v5 setObject:time forKey:@"HubLastOnlineTime"];
  }
}

- (id)lastSnapshotRevertTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"LastSnapshotRevertTime"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (void)saveLastSnapshotRevertTime:(id)time
{
  timeCopy = time;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (timeCopy)
  {
    [v3 setObject:timeCopy forKey:@"LastSnapshotRevertTime"];
  }

  else
  {
    [v3 removeObjectForKey:@"LastSnapshotRevertTime"];
  }
}

- (void)saveSnapshotRevertFlagged:(BOOL)flagged
{
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (flagged)
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"SnapshotRevertFlagged"];
  }

  else
  {
    [v4 removeObjectForKey:@"SnapshotRevertFlagged"];
  }
}

- (id)lastShallowRefreshTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"LastShallowRefreshTime"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (void)saveLastShallowRefreshTime:(id)time
{
  timeCopy = time;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (timeCopy)
  {
    [v3 setObject:timeCopy forKey:@"LastShallowRefreshTime"];
  }

  else
  {
    [v3 removeObjectForKey:@"LastShallowRefreshTime"];
  }
}

- (id)lastSettingsUpdatedTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"LastSettingsUpdatedTime"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (void)saveLastSettingsUpdatedTime:(id)time
{
  timeCopy = time;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (timeCopy)
  {
    [v3 setObject:timeCopy forKey:@"LastSettingsUpdatedTime"];
  }

  else
  {
    [v3 removeObjectForKey:@"LastSettingsUpdatedTime"];
  }
}

- (id)identityServicesID
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 reload];

  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [v3 objectForKey:@"IdentityServicesID"];

  return v4;
}

- (id)cloudPairedDevices
{
  v2 = +[MSDAccountManager sharedInstance];
  cloudPairedDevices = [v2 cloudPairedDevices];

  return cloudPairedDevices;
}

- (id)iCloudAccountRecoveryKey
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"iCloudAccountRecoveryKey"];

  return v3;
}

- (void)saveiCloudAccountRecoveryKey:(id)key
{
  keyCopy = key;
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = v3;
  if (keyCopy)
  {
    [v3 setObject:keyCopy forKey:@"iCloudAccountRecoveryKey"];
  }

  else
  {
    [v3 removeObjectForKey:@"iCloudAccountRecoveryKey"];
  }
}

- (BOOL)iCloudAccountSyncNeeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"iCloudAccountSyncNeeded"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)saveiCloudAccountSyncNeeded:(BOOL)needed
{
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (needed)
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"iCloudAccountSyncNeeded"];
  }

  else
  {
    [v4 removeObjectForKey:@"iCloudAccountSyncNeeded"];
  }
}

- (id)getSavedOSPreferencesRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"OSPreferences"];

  return v3;
}

- (void)saveOSPreferencesRequest:(id)request
{
  requestCopy = request;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:requestCopy forKey:@"OSPreferences"];
}

- (id)getStagedOSPreferencesRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"StagedOSPreferences"];

  return v3;
}

- (void)stageNewOSPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:preferencesCopy forKey:@"StagedOSPreferences"];
}

- (BOOL)applyStagedDevicePreferences:(id *)preferences
{
  v5 = +[NSMutableDictionary dictionary];
  getStagedOSPreferencesRequest = [(MSDTargetDevice *)self getStagedOSPreferencesRequest];
  v7 = sub_100063A54(getStagedOSPreferencesRequest);
  v8 = v7;
  if (getStagedOSPreferencesRequest)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = getStagedOSPreferencesRequest;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Applying staged OS Preferences:\n%{public}@", buf, 0xCu);
    }

    v8 = [getStagedOSPreferencesRequest objectForKey:@"SystemLanguage"];
    v9 = [getStagedOSPreferencesRequest objectForKey:@"SystemRegion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[MSDLanguageAndRegionManager sharedInstance];
        v11 = [v10 setDeviceLanguage:v8 andRegion:v9 matchToSystemLanguage:0 sbRestartNeeded:0 sbRestartHandler:0];

        if (v11)
        {
          [v5 setObject:v8 forKey:@"SystemLanguage"];
          [v5 setObject:v9 forKey:@"SystemRegion"];
        }
      }
    }

    v12 = [getStagedOSPreferencesRequest objectForKey:@"SystemSiriLanguage"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (+[MSDLanguageAndRegionManager sharedInstance](MSDLanguageAndRegionManager, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), [getStagedOSPreferencesRequest objectForKey:@"SystemSiriLanguage"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "setSiriLanguage:", v14), v14, v13, v15))
    {
      [v5 setObject:v12 forKey:@"SystemSiriLanguage"];
      v16 = +[MSDAssetUpdater sharedInstance];
      v24 = 0;
      [v16 handleSiriAssetsWithError:&v24];
      v17 = v24;

      if (v17)
      {
        v19 = sub_100063A54(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000D2F8C();
        }

        v20 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = 1;
LABEL_16:
    v21 = [v5 copy];
    [(MSDTargetDevice *)self saveOSPreferencesRequest:v21];

    v22 = +[MSDPreferencesFile sharedInstance];
    [v22 removeObjectForKey:@"StagedOSPreferences"];

    if (preferences)
    {
      *preferences = [v5 allKeys];
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000D2FC0();
  }

  v20 = 0;
  v17 = 0;
LABEL_22:

  return v20;
}

- (void)saveRequiredDeletableSystemApps
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [NSMutableArray arrayWithCapacity:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004DBE4;
  v6 = v5[3] = &unk_10016ADC8;
  v3 = v6;
  [v2 enumerateBundlesOfType:7 block:v5];

  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:v3 forKey:@"RequiredDeletableSystemApps"];
}

- (id)requiredDeletableSystemApps
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"RequiredDeletableSystemApps"];

  return v3;
}

- (id)installedDeletableSystemApps
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  requiredDeletableSystemApps = [(MSDTargetDevice *)self requiredDeletableSystemApps];
  v5 = [requiredDeletableSystemApps mutableCopy];

  [NSMutableArray arrayWithCapacity:0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10004DE10;
  v13 = &unk_10016ADF0;
  v15 = v14 = v5;
  v6 = v15;
  v7 = v5;
  [v3 enumerateBundlesOfType:1 block:&v10];
  v8 = [NSArray arrayWithArray:v6, v10, v11, v12, v13];

  return v8;
}

- (void)installAndWaitForSystemApps
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  requiredDeletableSystemApps = [(MSDTargetDevice *)self requiredDeletableSystemApps];
  v5 = [requiredDeletableSystemApps mutableCopy];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (os_variant_has_internal_content())
  {
    v7 = +[MSDTestPreferences sharedInstance];
    systemAppTimeoutInterval = [v7 systemAppTimeoutInterval];

    if (systemAppTimeoutInterval)
    {
      v10 = sub_100063A54(v9);
      v11 = systemAppTimeoutInterval;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v33 = systemAppTimeoutInterval;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Override system app timeout interval: %lu", buf, 0xCu);
      }
    }

    else
    {
      v11 = 1800;
    }

    v13 = +[MSDTestPreferences sharedInstance];
    systemAppPollingInterval = [v13 systemAppPollingInterval];

    if (systemAppPollingInterval)
    {
      v15 = sub_100063A54(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v33 = systemAppPollingInterval;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Override system app polling interval: %lu", buf, 0xCu);
      }
    }

    else
    {
      systemAppPollingInterval = 30;
    }
  }

  else
  {
    systemAppPollingInterval = 30;
    v11 = 1800;
  }

  *&v6 = 138543362;
  v24 = v6;
  while ([v5 count])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10004E2DC;
    v25[3] = &unk_10016AE18;
    v16 = v5;
    v26 = v16;
    v27 = &v28;
    [v3 enumerateBundlesOfType:1 block:v25];
    v17 = [v16 count];
    if (!v17)
    {
      v20 = sub_100063A54(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = "All system apps have been installed. Move forward.";
        v22 = v20;
        v23 = 2;
        goto LABEL_24;
      }

LABEL_25:

      break;
    }

    if (v29[3] >= v11)
    {
      v20 = sub_100063A54(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v33 = v11;
        v34 = 2114;
        v35 = v5;
        v21 = "Waited %lu seconds for system apps to install. Now moving forward. Still missing the following apps - %{public}@";
        v22 = v20;
        v23 = 22;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }

      goto LABEL_25;
    }

    v18 = sleep(systemAppPollingInterval);
    v29[3] += systemAppPollingInterval;
    v19 = sub_100063A54(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v24;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Still waiting for system apps %{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
}

- (BOOL)isPasscodeModificationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  isPasscodeModificationAllowed = [v2 isPasscodeModificationAllowed];

  return isPasscodeModificationAllowed;
}

- (BOOL)setPasscodeModificationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 errorCheckedSetBoolValue:allowedCopy forSetting:MCFeaturePasscodeModificationAllowed];
  v6 = v5;
  if (v5)
  {
    v7 = sub_100063A54(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3040(allowedCopy, v6);
    }
  }

  return v6 == 0;
}

- (BOOL)createTemporaryPasscodeIfNeeded
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating temporary device passcode...", buf, 2u);
  }

  if (([v3 isPasscodeSet] & 1) == 0)
  {
    isPasscodeModificationAllowed = [(MSDTargetDevice *)self isPasscodeModificationAllowed];
    v8 = isPasscodeModificationAllowed;
    if (isPasscodeModificationAllowed)
    {
      goto LABEL_9;
    }

    v9 = sub_100063A54(isPasscodeModificationAllowed);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Passcode modification is NOT allowed. Temporarily lifting the restriction!", v13, 2u);
    }

    if ([(MSDTargetDevice *)self setPasscodeModificationAllowed:1])
    {
LABEL_9:
      v12 = 0;
      v6 = [v3 changePasscodeFrom:0 to:@"123456" outError:&v12];
      v10 = v12;
      v5 = v10;
      if (v6)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1000D30EC(v10);
        if (v8)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    [(MSDTargetDevice *)self setPasscodeModificationAllowed:0];
    goto LABEL_12;
  }

  v5 = 0;
  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)removeTemporaryPasscodeIfNeeded
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing temporary device passcode...", buf, 2u);
  }

  if (![v3 isPasscodeSet])
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_15;
  }

  isPasscodeModificationAllowed = [(MSDTargetDevice *)self isPasscodeModificationAllowed];
  v6 = isPasscodeModificationAllowed;
  if ((isPasscodeModificationAllowed & 1) == 0)
  {
    v7 = sub_100063A54(isPasscodeModificationAllowed);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Passcode modification is NOT allowed. Temporarily lifting the restriction!", v15, 2u);
    }

    if (![(MSDTargetDevice *)self setPasscodeModificationAllowed:1])
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_10;
    }
  }

  v14 = 0;
  v8 = [v3 changePasscodeFrom:@"123456" to:0 outError:&v14];
  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
    if ((v6 & 1) == 0)
    {
LABEL_10:
      [(MSDTargetDevice *)self setPasscodeModificationAllowed:0];
    }
  }

  else
  {
    v12 = sub_100063A54(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3194(v10);
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (BOOL)isDDLDevice
{
  isKindOfClass = [(MSDTargetDevice *)self readNVRam:@"ownership-warning"];
  v3 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    sub_1000D32E8(isKindOfClass);
    v4 = 0;
LABEL_12:
    v7 = 0;
    goto LABEL_9;
  }

  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v3 bytes], 4);
  v5 = sub_100063A54(v4);
  v6 = v5;
  if (!v4)
  {
    sub_1000D3294(v5);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D3220();
  }

  if ([v4 isEqualToString:@"1"])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isEqualToString:@"2"];
  }

LABEL_9:

  return v7;
}

- (id)readNVRam:(id)ram
{
  ramCopy = ram;
  mainPort = 0;
  v4 = IOMasterPort(bootstrap_port, &mainPort);
  if (v4)
  {
    sub_1000D3384(v4);
  }

  else
  {
    v5 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v5)
    {
      v6 = v5;
      CFProperty = IORegistryEntryCreateCFProperty(v5, ramCopy, kCFAllocatorDefault, 0);
      IOObjectRelease(v6);
      goto LABEL_4;
    }

    sub_1000D33E0(v5);
  }

  CFProperty = 0;
LABEL_4:

  return CFProperty;
}

- (BOOL)deleteNVRam:(id)ram
{
  ramCopy = ram;
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  v6 = [helperAgent deleteNvram:ramCopy];

  return v6;
}

- (BOOL)setSEPDemoMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = sub_100063A54(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = modeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting SEP demo mode to: %{BOOL}d", v9, 8u);
  }

  v5 = AMFIDemoModeSetState();
  v6 = v5;
  if (v5)
  {
    v7 = sub_100063A54(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D343C();
    }
  }

  return v6 == 0;
}

- (BOOL)toggleSEPDemoModeOnManagedPreferencesChange
{
  managedStoreDemoMode = [(MSDTargetDevice *)self managedStoreDemoMode];

  return [(MSDTargetDevice *)self setSEPDemoMode:managedStoreDemoMode];
}

- (BOOL)turnOnDemoMode
{
  if ([(MSDTargetDevice *)self isPressDemoDevice])
  {

    return [(MSDTargetDevice *)self turnOnPressDemoMode];
  }

  else
  {

    return [(MSDTargetDevice *)self turnOnStoreDemoMode];
  }
}

- (BOOL)turnOnStoreDemoMode
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on Store Demo Mode.", v6, 2u);
  }

  if (![(MSDTargetDevice *)self storeDemoMode])
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
    [v4 setObject:&__kCFBooleanTrue forKey:@"StoreDemoMode"];
    [v4 setObject:&__kCFBooleanTrue forKey:@"LockIcons"];
    [v4 synchronize];
  }

  return 1;
}

- (BOOL)turnOnPressDemoMode
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on Press Demo Mode.", v6, 2u);
  }

  if (![(MSDTargetDevice *)self pressDemoMode])
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
    [v4 setObject:&__kCFBooleanTrue forKey:@"PressDemoMode"];
    [v4 synchronize];
  }

  return 1;
}

- (BOOL)isDemoModeOn
{
  if ([(MSDTargetDevice *)self isPressDemoDevice])
  {

    return [(MSDTargetDevice *)self pressDemoMode];
  }

  else
  {

    return [(MSDTargetDevice *)self storeDemoMode];
  }
}

- (BOOL)managedStoreDemoMode
{
  IsForced = CFPreferencesAppValueIsForced(@"StoreDemoMode", @"com.apple.demo-settings");
  if (IsForced)
  {
    LOBYTE(IsForced) = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  }

  return IsForced;
}

- (BOOL)demoModeValueForKey:(id)key
{
  keyCopy = key;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v5 = [v4 objectForKey:keyCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D34B0(v5);
LABEL_5:
    bOOLValue = 0;
    goto LABEL_6;
  }

  bOOLValue = [v5 BOOLValue];
LABEL_6:

  return bOOLValue;
}

- (void)enableSnapshotMode:(BOOL)mode
{
  modeCopy = mode;
  if (![(MSDTargetDevice *)self allowSnapshotMode])
  {
    selfCopy2 = self;
    v6 = 27;
    goto LABEL_5;
  }

  if (modeCopy)
  {
    [(MSDTargetDevice *)self removeTemporaryPasscodeIfNeeded];
    [(MSDTargetDevice *)self manageDeviceSnapshot:@"CreateSnapshot"];
    selfCopy2 = self;
    v6 = 8;
LABEL_5:

    [(MSDTargetDevice *)selfCopy2 rebootForStage:v6];
    return;
  }

  [(MSDTargetDevice *)self rebootWithSnapshotRevertForStage:0];
}

- (void)manageDeviceSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([snapshotCopy isEqualToString:@"UnmountSnapshot"])
  {
    [(MSDTargetDevice *)self manageUserVolume:snapshotCopy];
    [(MSDTargetDevice *)self manageDataVolume:snapshotCopy];
  }

  else
  {
    [(MSDTargetDevice *)self manageDataVolume:snapshotCopy];
    [(MSDTargetDevice *)self manageUserVolume:snapshotCopy];
  }
}

- (void)manageDataVolume:(id)volume
{
  volumeCopy = volume;
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  [helperAgent manageDataVolume:volumeCopy];
}

- (void)manageDemoVolume:(id)volume
{
  volumeCopy = volume;
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  [helperAgent manageDemoVolume:volumeCopy];
}

- (void)manageUserVolume:(id)volume
{
  volumeCopy = volume;
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  [helperAgent manageUserVolume:volumeCopy forUser:@"mobile"];
}

- (void)disableLaunchdServicesIfNeededForWatch
{
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  if ([v4 integerForKey:@"FProgramNumber"] != 300)
  {
    helperAgent = [(MSDTargetDevice *)self helperAgent];
    [helperAgent disableLaunchdServicesForWatch];
  }
}

- (void)disableSUAutoDownloadForWatch
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.subridge"];
  [v2 setObject:&__kCFBooleanTrue forKey:@"SUDisableAutoScan"];
  [v2 setObject:&__kCFBooleanTrue forKey:@"SkipAutoDownload"];
  [v2 synchronize];
}

- (void)setupWorkFolderForBootTask
{
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  [helperAgent prepareWorkDirectory:@"/private/var/demo_backup" writableByNonRoot:0];

  v4 = +[MSDPlatform sharedInstance];
  macOS = [v4 macOS];

  if (macOS)
  {
    helperAgent2 = [(MSDTargetDevice *)self helperAgent];
    [helperAgent2 prepareWorkDirectory:@"/private/var/dekota" writableByNonRoot:0];
  }
}

- (void)destroyWorkFolderForBootTask
{
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  [helperAgent removeWorkDirectory:@"/private/var/demo_backup"];

  v4 = +[MSDPlatform sharedInstance];
  macOS = [v4 macOS];

  if (macOS)
  {
    helperAgent2 = [(MSDTargetDevice *)self helperAgent];
    [helperAgent2 removeWorkDirectory:@"/private/var/dekota"];
  }
}

- (BOOL)deleteConfigurationApp
{
  v2 = [IXAppInstallCoordinator uninstallAppWithBundleID:@"com.apple.DemoUpdate" error:0];
  v3 = sub_100063A54(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Configuration app deleted.", v6, 2u);
    }
  }

  else
  {
    sub_1000D3568(v3);
  }

  return v2;
}

- (void)markContentInstallingInstalled
{
  v2 = +[MSDProgressUpdater sharedInstance];
  [v2 markBundleInProgressAsBundleCompleted];
}

- (BOOL)holdPowerAssertion
{
  p_powerAssertion = &self->_powerAssertion;
  if (self->_powerAssertion)
  {
    return 1;
  }

  v4 = sub_100063A54(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Taking power assertion to prevent device sleep.", v7, 2u);
  }

  v5 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.demod.noSleep", p_powerAssertion);
  if (!v5)
  {
    return 1;
  }

  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000D3600();
  }

  return 0;
}

- (BOOL)liftPowerAssertion
{
  if (!self->_powerAssertion)
  {
    return 1;
  }

  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lifting power assertion to enable device sleep.", v7, 2u);
  }

  v4 = IOPMAssertionRelease(self->_powerAssertion);
  if (v4)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3634();
    }

    return 0;
  }

  else
  {
    self->_powerAssertion = 0;
    return 1;
  }
}

- (BOOL)createMobileStoreDemoCache
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[MSDCache sharedInstance];
  if (([v2 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob"] & 1) == 0)
  {
    v4 = [v3 createContainer:@"com.apple.mobilestoredemo.blob"];
    if ((v4 & 1) == 0)
    {
      v10 = sub_100063B64(v4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3668();
      }

      v5 = 0;
      goto LABEL_12;
    }
  }

  if (([v2 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata"] & 1) == 0)
  {
    v11 = 0;
    v6 = 1;
    v7 = [v2 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" withIntermediateDirectories:1 attributes:0 error:&v11];
    v8 = v11;
    v5 = v8;
    if (v7)
    {
      goto LABEL_6;
    }

    v10 = sub_100063B64(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D369C();
    }

LABEL_12:

    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  v6 = 1;
LABEL_6:

  return v6;
}

- (void)clearUpNvramIfNeeded
{
  v5 = +[NSFileManager defaultManager];
  if (!-[MSDTargetDevice storeDemoMode](self, "storeDemoMode") || (-[MSDTargetDevice pathForDummyPreferenceFile](self, "pathForDummyPreferenceFile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v5 fileExistsAtPath:v3], v3, (v4 & 1) == 0))
  {
    [(MSDTargetDevice *)self deleteNVRam:@"demo-install-state"];
    [(MSDTargetDevice *)self deleteNVRam:@"enable-remap-mode"];
    [(MSDTargetDevice *)self deleteNVRam:@"msd-request"];
    [(MSDTargetDevice *)self deleteNVRam:@"msd-reboot-at"];
    [(MSDTargetDevice *)self deleteNVRam:@"msd-last-auto-reboot"];
  }
}

- (void)clearUpF200FootprintIfNeeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/F200EventsData"])
  {
    v9 = 0;
    v4 = [v3 removeItemAtPath:@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/F200EventsData" error:&v9];
    v5 = v9;
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      v7 = sub_100063A54(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000D36D0(v6);
      }
    }
  }

  v8 = [v2 objectForKey:@"F200EventDbCleanupTime"];

  if (v8)
  {
    [v2 removeObjectForKey:@"F200EventDbCleanupTime"];
  }
}

- (void)refreshStoreHoursManagerUsingSettingsAndTime:(id)time
{
  timeCopy = time;
  v8 = +[MSDStoreHoursManager sharedInstance];
  hubSuppliedSettings = [(MSDTargetDevice *)self hubSuppliedSettings];
  v6 = [hubSuppliedSettings objectForKey:@"StoreHours"];

  lastSettingsUpdatedTime = [(MSDTargetDevice *)self lastSettingsUpdatedTime];
  [v8 updateStoreHours:v6 lastSettingsUpdatedDate:lastSettingsUpdatedTime];
  [(MSDTargetDevice *)self configureLowPowerModeForTime:timeCopy];

  [v8 setupStoreOpenCloseTimers];
}

- (void)setupStoreHoursManager
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up store hours manager!", buf, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSOperationQueue mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004FC20;
  v15[3] = &unk_100169CE8;
  v15[4] = self;
  v6 = [v4 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.Expired" object:0 queue:v5 usingBlock:v15];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[NSOperationQueue mainQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004FCAC;
  v14[3] = &unk_100169CE8;
  v14[4] = self;
  v9 = [v7 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.StoreOpen" object:0 queue:v8 usingBlock:v14];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[NSOperationQueue mainQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004FCB4;
  v13[3] = &unk_100169CE8;
  v13[4] = self;
  v12 = [v10 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.StoreClosed" object:0 queue:v11 usingBlock:v13];

  [(MSDTargetDevice *)self refreshStoreHoursManagerUsingSettingsAndTime:0];
}

- (void)caLogsUploadTimerHandler:(id)handler
{
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_async(v3, &stru_10016AE38);
}

- (void)setupCoreAnalyticsLogsUploadTimer
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004FE48;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)snapshotRevertTimerHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = +[MSDWorkQueueSet sharedInstance];
  messageQueue = [v5 messageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005016C;
  v7[3] = &unk_100169C78;
  objc_copyWeak(&v8, &location);
  dispatch_async(messageQueue, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)setupSnapshotRevertTimer
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005035C;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)unlockDeviceKeybagIfNeeded
{
  v2 = MKBGetDeviceLockState();
  v3 = v2;
  v4 = sub_100063A54(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device keybag lock state: %d", v9, 8u);
  }

  if (v3)
  {
    v5 = [@"123456" dataUsingEncoding:4];
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unlocking device keybag using default passcode.", v9, 2u);
    }

    v7 = MKBUnlockDevice();
    if (v7)
    {
      v8 = sub_100063A54(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000D37A0();
      }
    }
  }
}

- (void)acquireDeviceKeybagAssertionIfNeeded
{
  if (![(MSDTargetDevice *)self deviceLockAssertion])
  {
    v9 = @"MKBAssertionKey";
    v10 = @"Other";
    v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = 0;
    v4 = sub_100063A54(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquiring device keybag lock assertion.", v7, 2u);
    }

    [(MSDTargetDevice *)self setDeviceLockAssertion:MKBDeviceLockAssertion()];
    if (![(MSDTargetDevice *)self deviceLockAssertion])
    {
      v5 = v8;
      v6 = sub_100063A54(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3814(v5);
      }
    }
  }
}

- (void)configureGreyMatterAutoUpdate
{
  isVerifiedDemoDevice = [(MSDTargetDevice *)self isVerifiedDemoDevice];
  if (isVerifiedDemoDevice)
  {
    mode = [(MSDTargetDevice *)self mode];
    if (mode == 2)
    {
      v5 = sub_100063A54(mode);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[MSDTargetDevice configureGreyMatterAutoUpdate]";
        v14 = 1024;
        v15 = 2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Disable auto update since we're in mode %d", &v12, 0x12u);
      }

      v6 = 0;
    }

    else
    {
      v6 = +[MSDHubFeatureFlags enableAIModelAutoUpdate]|| [(MSDTargetDevice *)self mode]== 7 || [(MSDTargetDevice *)self mode]!= 5;
    }

    if (os_variant_has_internal_content())
    {
      v8 = +[MSDTestPreferences sharedInstance];
      enableAIModelAutoUpdate = [v8 enableAIModelAutoUpdate];

      if (enableAIModelAutoUpdate)
      {
        v11 = sub_100063A54(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found test preference for enabling AI model auto update!", &v12, 2u);
        }

        v6 = 1;
      }
    }

    [MSDGreyMatterHelper configureAutoUpdate:v6];
  }

  else
  {
    v7 = sub_100063A54(isVerifiedDemoDevice);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not toggling the Pallas URL!  Device is not a verified demo device.", &v12, 2u);
    }
  }
}

- (void)registerCAHearbeatActivity
{
  v2 = sub_100063A54(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D38A0();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 7200);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 300);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_activity_register("com.apple.MobileStoreDemo.heartbeat", v3, &stru_10016AE78);
}

- (id)previousiOSBuild
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"PreviousOSBuild"];

  return v3;
}

- (BOOL)saveCurrentiOSBuild
{
  v3 = +[MSDPreferencesFile sharedInstance];
  oSBuild = [(MSDTargetDevice *)self OSBuild];
  v5 = [v3 setObject:oSBuild forKey:@"PreviousOSBuild"];

  return v5;
}

- (BOOL)clearCurrentiOSBuild
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 removeObjectForKey:@"PreviousOSBuild"];

  return v3;
}

- (id)minOSVersionAvailable
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"MinOSVersionAvailable"];

  return v3;
}

- (void)saveMinOSVersionAvailable:(id)available
{
  availableCopy = available;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:availableCopy forKey:@"MinOSVersionAvailable"];
}

- (void)clearMinOSVersionAvailable
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 removeObjectForKey:@"MinOSVersionAvailable"];
}

- (void)saveOSUpdateRequest:(id)request
{
  requestCopy = request;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:requestCopy forKey:@"OSUpdateRequest"];
}

- (id)getOSUpdateRequest
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_13;
  }

  v2 = +[MSDTestPreferences sharedInstance];
  mockOSUpdateRequestFile = [v2 mockOSUpdateRequestFile];

  if (!mockOSUpdateRequestFile)
  {
LABEL_12:

LABEL_13:
    mockOSUpdateRequestFile = +[MSDPreferencesFile sharedInstance];
    v6 = [mockOSUpdateRequestFile objectForKey:@"OSUpdateRequest"];
    goto LABEL_14;
  }

  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = mockOSUpdateRequestFile;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading mock OS update request from file: %{public}@", &v10, 0xCu);
  }

  v6 = [[NSDictionary alloc] initWithContentsOfFile:mockOSUpdateRequestFile];
  v7 = sub_100063A54(v6);
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3908();
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Mock OS update request successfully loaded: %{public}@", &v10, 0xCu);
  }

LABEL_14:

  return v6;
}

- (void)clearOSUpdateRequest
{
  v2 = +[MSDPreferencesFile sharedInstance];
  [v2 removeObjectForKey:@"OSUpdateRequest"];
}

- (void)setWaitingForCommand:(BOOL)command
{
  commandCopy = command;
  if ([(MSDTargetDevice *)self waitingForCommand]!= command)
  {
    v5 = +[MSDPreferencesFile sharedInstance];
    v6 = v5;
    if (commandCopy)
    {
      [v5 setObject:&__kCFBooleanTrue forKey:@"WaitingForCommand"];

      [(MSDTargetDevice *)self startWaitingForCommandTimer];
    }

    else
    {
      [v5 removeObjectForKey:@"WaitingForCommand"];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000511AC;
      block[3] = &unk_100169B70;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)startWaitingForCommandTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051270;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)waitForBuddy:(id)buddy updateStatus:(BOOL)status
{
  statusCopy = status;
  buddyCopy = buddy;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v8 = DarwinNotifyCenter;
    [(MSDTargetDevice *)self setBuddyCompletionHandler:buddyCopy];
    CFNotificationCenterAddObserver(v8, 0, sub_100046E78, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v9 = BYSetupAssistantNeedsToRun();
    v10 = v9;
    v11 = sub_100063A54(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Assistant needs to run: %{BOOL}d", v14, 8u);
    }

    if (v10)
    {
      if (statusCopy)
      {
        v12 = +[MSDProgressUpdater sharedInstance];
        [v12 updateStage:16];
      }
    }

    else
    {
      v13 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v13, 0, @"com.apple.purplebuddy.setupdone", 0);
      [(MSDTargetDevice *)self invokeHandler:1];
    }
  }

  else
  {
    sub_1000D393C(0);
  }
}

- (void)waitForBuddyWithTimeout
{
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_time(0, 60000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000516A0;
  v8[3] = &unk_100169B48;
  v5 = v3;
  v9 = v5;
  [(MSDTargetDevice *)self waitForBuddy:v8];
  v6 = dispatch_semaphore_wait(v5, v4);
  if (v6)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = 60;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Buddy setup timed out after %d seconds.", buf, 8u);
    }
  }
}

- (void)invokeHandler:(BOOL)handler
{
  handlerCopy = handler;
  obj = [(MSDTargetDevice *)self buddyCompletionHandlerLock];
  objc_sync_enter(obj);
  buddyCompletionHandler = [(MSDTargetDevice *)self buddyCompletionHandler];

  if (buddyCompletionHandler)
  {
    buddyCompletionHandler2 = [(MSDTargetDevice *)self buddyCompletionHandler];
    buddyCompletionHandler2[2](buddyCompletionHandler2, handlerCopy);
  }

  objc_sync_exit(obj);
}

- (void)terminateConfigurationApp
{
  v2 = [RBSProcessPredicate predicateMatchingBundleIdentifier:@"com.apple.DemoUpdate"];
  v21 = 0;
  v3 = [RBSProcessHandle handleForPredicate:v2 error:&v21];
  v4 = v21;

  if (v3)
  {
    currentState = [v3 currentState];
    taskState = [currentState taskState];

    v8 = taskState > 1;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  code = [v4 code];
  if (code != 3)
  {
    v9 = sub_100063A54(code);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3998();
    }
  }

LABEL_9:
  if (v8)
  {
    v10 = sub_100063A54(code);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Trying to terminate configuration app...", buf, 2u);
    }

    v11 = +[FBSSystemService sharedService];
    [v11 terminateApplication:@"com.apple.DemoUpdate" forReason:1 andReport:0 withDescription:0];

    v12 = 11;
    while (1)
    {
      currentState2 = [v3 currentState];
      taskState2 = [currentState2 taskState];

      if (taskState2 < 2)
      {
        break;
      }

      v16 = sleep(1u);
      if (--v12 <= 1)
      {
        v17 = sub_100063A54(v16);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v18 = "Terminating configuration app timeout.";
        v19 = v17;
        v20 = 2;
        goto LABEL_19;
      }
    }

    v17 = sub_100063A54(v15);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109120;
    v23 = taskState2;
    v18 = "Configuration app terminated with state == %d";
    v19 = v17;
    v20 = 8;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
LABEL_20:
  }
}

- (BOOL)allowSnapshotMode
{
  getDeviceOptions = [(MSDTargetDevice *)self getDeviceOptions];
  v3 = [getDeviceOptions objectForKey:@"disable_snapshot_mode"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v4 = [v3 BOOLValue], v4))
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device snapshot mode is disabled as requested by DeviceOptions.", v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)allowSnapshotRevertTimer
{
  v3 = +[MSDHubFeatureFlags disableNightlySnapshotRevert];
  if (v3)
  {
    v4 = sub_100063A54(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Snapshot revert timer is disabled by feature flag!", v9, 2u);
    }

    return 0;
  }

  if ([(MSDTargetDevice *)self isPressDemoDevice]|| ![(MSDTargetDevice *)self allowSnapshotMode])
  {
    return 0;
  }

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v6 = [v5 objectForKey:@"DisableNightlyRefresh"];
  v7 = 1;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)allowAccountSetup
{
  v3 = MGCopyAnswer();
  if ([v3 BOOLValue])
  {
    isDemoModeOn = 0;
  }

  else
  {
    isDemoModeOn = [(MSDTargetDevice *)self isDemoModeOn];
  }

  return isDemoModeOn;
}

- (void)configureNetworkInterface
{
  v3 = +[MSDWiFiHelper sharedInstance];
  [v3 enableWiFi:1];
  getPersistentWiFiSsid = [v3 getPersistentWiFiSsid];

  if (getPersistentWiFiSsid)
  {
    [v3 configureWiFiWithPersistentSettings];
  }

  else if ([(MSDTargetDevice *)self isContentFrozen])
  {
    [v3 disassociateAndForgetWiFi];
  }

  else
  {
    shouldForgetKnownNetworkUponUnlock = [(MSDTargetDevice *)self shouldForgetKnownNetworkUponUnlock];
    if (shouldForgetKnownNetworkUponUnlock)
    {
      v6 = sub_100063A54(shouldForgetKnownNetworkUponUnlock);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forgetting known wifi network after device unlock...", v7, 2u);
      }

      [v3 disassociateAndForgetWiFi];
      [(MSDTargetDevice *)self setShouldForgetKnownNetworkUponUnlock:0];
    }
  }
}

- (void)waitForNetworkReachabilityWithTimeout:(unint64_t)timeout
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100052090;
  v26 = sub_1000520A0;
  v27 = objc_alloc_init(NSCondition);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100052090;
  v16[4] = sub_1000520A0;
  selfCopy = self;
  v6 = sub_100063A54(selfCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for network to become reachable...", buf, 2u);
  }

  v7 = nw_path_monitor_create();
  if (v7)
  {
    v8 = &_dispatch_main_q;
    nw_path_monitor_set_queue(v7, &_dispatch_main_q);

    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_1000520A8;
    update_handler[3] = &unk_10016AEC8;
    update_handler[4] = &v22;
    update_handler[5] = &v18;
    update_handler[6] = v16;
    nw_path_monitor_set_update_handler(v7, update_handler);
    nw_path_monitor_start(v7);
    [v23[5] lock];
    while (!v19[3])
    {
      v9 = [v23[5] waitUntilDate:v5];
      if ((v9 & 1) == 0)
      {
        v10 = sub_100063A54(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          timeoutCopy = timeout;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Timeout waiting %lus for desired network interface to come up.", buf, 0xCu);
        }

        break;
      }
    }

    [v23[5] unlock];
    nw_path_monitor_cancel(v7);
  }

  else
  {
    v14 = sub_100063A54(0);
    sub_1000D3A18(v14);
  }

  v12 = sub_100063A54(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v19[3] != 0;
    *buf = 67109120;
    LODWORD(timeoutCopy) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Network reachability after wait: %{BOOL}d", buf, 8u);
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (unint64_t)fetchActiveNetworkInterface
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = nw_parameters_create();
  nw_parameters_set_multipath_service(v2, nw_multipath_service_handover);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000522B4;
  v7[3] = &unk_10016AEF0;
  v4 = nw_path_evaluator_copy_path();
  v8 = v4;
  v9 = &v10;
  nw_path_enumerate_interfaces(v4, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)migrateCellularSupportFlag
{
  getDeviceOptions = [(MSDTargetDevice *)self getDeviceOptions];
  v4 = [getDeviceOptions objectForKey:@"enable_cellular_support"];
  bOOLValue = [v4 BOOLValue];
  if (bOOLValue)
  {
    v6 = sub_100063A54(bOOLValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = @"enable_cellular_support";
      v12 = 1024;
      bOOLValue2 = [v4 BOOLValue];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@=%{BOOL}d; disconnecting & forgetting all wifi SSID...", &v10, 0x12u);
    }

    v7 = +[MSDWiFiHelper sharedInstance];
    [v7 disassociateAndForgetWiFi];

    v8 = [(MSDTargetDevice *)self updateDeviceOptions:getDeviceOptions skipImutableKeys:1];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)resetSystemTimeCache
{
  v2 = sub_100063A54(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting system time cache...", v5, 2u);
  }

  Launch = TMResetToFirstLaunch();
  if (!Launch)
  {
    v4 = sub_100063A54(Launch);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3A6C();
    }
  }
}

- (int64_t)getFreeSpace
{
  v5 = 0;
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    sub_10004AD18(v2, kMGQDiskUsageTotalDataAvailable, &v5);
    CFRelease(v3);
    return v5;
  }

  else
  {
    sub_1000D3AA0(0);
    return 0;
  }
}

- (BOOL)updateDeviceOptions:(id)options skipImutableKeys:(BOOL)keys
{
  keysCopy = keys;
  optionsCopy = options;
  v6 = sub_100063A54(optionsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating device options dictionary on device", buf, 2u);
  }

  v7 = +[MSDPreferencesFile sharedInstance];
  v8 = [v7 objectForKey:@"device_options"];

  v9 = objc_alloc_init(NSMutableDictionary);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = optionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
  v45 = v8;
  if (v11)
  {
    v12 = v11;
    v44 = 0;
    v13 = *v48;
    v46 = v9;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        if (([v15 isEqualToString:@"disable_snapshot_mode"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"enable_better_together"))
        {
          if (keysCopy)
          {
            v16 = [v8 objectForKey:v15];

            if (!v16)
            {
              goto LABEL_20;
            }

            v17 = v8;
          }

          else
          {
            v17 = v10;
          }

          v18 = [v17 objectForKey:v15];
        }

        else
        {
          if ([v15 isEqualToString:@"enable_cellular_support"])
          {
            v18 = &__kCFBooleanFalse;
LABEL_19:
            [v9 setObject:v18 forKey:v15];

            goto LABEL_20;
          }

          if (![v15 isEqualToString:@"enable_do_not_buy"])
          {
            v26 = [v15 isEqualToString:@"device_info"];
            v18 = [v10 objectForKey:v15];
            if (v26)
            {
              v27 = +[MSDNPIMaskValues sharedInstance];
              [v27 saveDeviceInfo:v18];
            }

            goto LABEL_32;
          }

          v19 = [v10 objectForKey:v15];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_31:
            v18 = [v8 objectForKey:v15];
            goto LABEL_32;
          }

          v20 = [v10 objectForKey:v15];
          bOOLValue = [v20 BOOLValue];

          v8 = v45;
          if (!bOOLValue)
          {
            goto LABEL_31;
          }

          v18 = [v10 objectForKey:v15];
          v22 = [v10 objectForKey:@"store_type"];

          if (v22)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              v41 = sub_100063A54(isKindOfClass);
              v9 = v46;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                sub_1000D3AFC();
              }

              goto LABEL_59;
            }

            v25 = v22;
          }

          else
          {
            v28 = sub_100063A54(v23);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v52 = "[MSDTargetDevice updateDeviceOptions:skipImutableKeys:]";
              v53 = 2114;
              v54 = @"retail";
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s - Device has do not buy enabled but store type is not set.  Default to %{public}@", buf, 0x16u);
            }

            v25 = @"retail";
          }

          v29 = sub_100063A54(isKindOfClass);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v52 = "[MSDTargetDevice updateDeviceOptions:skipImutableKeys:]";
            v53 = 2114;
            v54 = v25;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s - device_options has do not buy enabled with store type:  %{public}@", buf, 0x16u);
          }

          v44 = v25;
          if ([(__CFString *)v25 isEqualToString:@"retail"])
          {
            v30 = +[MSDHelperAgent sharedInstance];
            v31 = [v30 writeNvram:@"ownership-warning" withValue:@"1"];

            if ((v31 & 1) == 0)
            {
              v41 = sub_100063A54(v32);
              v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
              v9 = v46;
              if (v42)
              {
                sub_1000D3BFC();
              }

              goto LABEL_58;
            }

            goto LABEL_43;
          }

          v33 = [(__CFString *)v25 isEqualToString:@"channel"];
          if (v33)
          {
            v34 = +[MSDHelperAgent sharedInstance];
            v35 = [v34 writeNvram:@"ownership-warning" withValue:@"2"];

            if ((v35 & 1) == 0)
            {
              v41 = sub_100063A54(v36);
              v9 = v46;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                sub_1000D3B7C();
              }

LABEL_58:
              v22 = v44;
LABEL_59:

              v39 = 0;
              goto LABEL_51;
            }

LABEL_43:
            v8 = v45;
LABEL_32:
            v9 = v46;
            goto LABEL_15;
          }

          v37 = sub_100063A54(v33);
          v9 = v46;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v52 = "[MSDTargetDevice updateDeviceOptions:skipImutableKeys:]";
            v53 = 2114;
            v54 = v44;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s - Ignore do-not-buy for unrecognized store type:  %{public}@", buf, 0x16u);
          }

          v8 = v45;
        }

LABEL_15:
        if (v18)
        {
          goto LABEL_19;
        }

LABEL_20:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v38 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
      v12 = v38;
      if (!v38)
      {
        goto LABEL_50;
      }
    }
  }

  v44 = 0;
LABEL_50:

  [(MSDTargetDevice *)self saveDeviceOptions:v9];
  v39 = 1;
  v22 = v44;
LABEL_51:

  return v39;
}

- (void)saveDeviceOptions:(id)options
{
  optionsCopy = options;
  v4 = +[MSDPreferencesFile sharedInstance];
  [v4 setObject:optionsCopy forKey:@"device_options"];
}

- (id)getDeviceOptions
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"device_options"];
  v4 = [v3 mutableCopy];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_alloc_init(NSMutableDictionary);

    v4 = v5;
  }

  v6 = +[MSDNPIMaskValues sharedInstance];
  isNPIDevice = [v6 isNPIDevice];

  if (isNPIDevice)
  {
    v8 = +[MSDNPIMaskValues sharedInstance];
    v9 = [v8 getMaskValueForKey:@"ProductType"];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"product_type"];
      }
    }

    v10 = +[MSDNPIMaskValues sharedInstance];
    v11 = [v10 getMaskValueForKey:@"part_description"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"part_description"];
      }
    }

    v12 = +[MSDNPIMaskValues sharedInstance];
    v13 = [v12 getMaskValueForKey:@"device_family"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"device_family"];
      }
    }
  }

  else
  {
    v9 = MGCopyAnswer();
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setObject:v9 forKey:@"product_type"];
      }
    }
  }

  if (os_variant_has_internal_content())
  {
    v14 = +[MSDTestPreferences sharedInstance];
    mockForBetterTogetherDemo = [v14 mockForBetterTogetherDemo];

    if (mockForBetterTogetherDemo)
    {
      [v4 setObject:&__kCFBooleanTrue forKey:@"enable_better_together"];
    }
  }

  return v4;
}

- (void)processNewFeatureFlags:(id)flags oldFeatureFlags:(id)featureFlags
{
  flagsCopy = flags;
  featureFlagsCopy = featureFlags;
  +[MSDHubFeatureFlags supportedFeatureFlags];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    *&v9 = 138543874;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [featureFlagsCopy objectForKey:{v13, v21}];
        bOOLValue = [v14 BOOLValue];

        v16 = [flagsCopy objectForKey:v13];
        bOOLValue2 = [v16 BOOLValue];

        if (bOOLValue != bOOLValue2)
        {
          v19 = sub_100063A54(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v28 = v13;
            v29 = 1024;
            v30 = bOOLValue;
            v31 = 1024;
            v32 = bOOLValue2;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Feature flag '%{public}@' has new value set: %{BOOL}d -> %{BOOL}d", buf, 0x18u);
          }

          if ([v13 isEqualToString:@"DisableNightlySnapshotRevert"])
          {
            if ([(MSDTargetDevice *)self isContentFrozen])
            {
              [(MSDTargetDevice *)self setupSnapshotRevertTimer];
            }
          }

          else if ([v13 isEqualToString:@"DisableNightlyLowPowerMode"])
          {
            if ([(MSDTargetDevice *)self mode]== 5)
            {
              [(MSDTargetDevice *)self configureLowPowerModeForTime:0];
            }
          }

          else if ([v13 isEqualToString:@"DisableCleanEnergyCharging"])
          {
            [(MSDTargetDevice *)self notifyCleanEnergyChargingToggled];
          }

          else if (([v13 isEqualToString:@"DisableScreenDarkHours"] & 1) == 0 && objc_msgSend(v13, "isEqualToString:", @"EnableAIModelAutoUpdate"))
          {
            v20 = +[MSDAssetUpdater sharedInstance];
            [v20 handleGMFeatureFlag];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }
}

- (BOOL)setDemoEnrollmentFlag:(id)flag
{
  flagCopy = flag;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 setObject:flagCopy forKey:@"enrollmentFlag"];

  return v5;
}

- (id)getDemoEnrollmentFlag
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"enrollmentFlag"];

  return v3;
}

- (BOOL)revertSnapshot
{
  [(MSDTargetDevice *)self saveOperationRequest:@"RevertSnapshot" requestFlag:8 completeBy:0];

  return [(MSDTargetDevice *)self switchModeImmediately:2];
}

- (BOOL)unenrollWithObliteration:(BOOL)obliteration preserveESim:(BOOL)sim callUnregister:(BOOL)unregister preserveDDLFlag:(BOOL)flag
{
  flagCopy = flag;
  simCopy = sim;
  obliterationCopy = obliteration;
  selfCopy = self;
  if (unregister)
  {
    self = [(MSDTargetDevice *)self hubHostName];
    if (self)
    {
      selfCopy2 = self;
      hubPort = [(MSDTargetDevice *)selfCopy hubPort];

      if (hubPort)
      {
        v12 = objc_alloc_init(MSDUnEnrollRequest);
        [(MSDUnEnrollRequest *)v12 setObliterate:obliterationCopy];
        v13 = +[MSDServerRequestHandler sharedInstance];
        v14 = [v13 handleRequestSync:v12];
      }
    }
  }

  if (flagCopy)
  {
    v15 = +[MSDPreferencesFile sharedInstance];
    [v15 setObject:&__kCFBooleanTrue forKey:@"preserveDDLFlag"];
  }

  if (obliterationCopy)
  {
    if (simCopy)
    {
      v16 = sub_100063A54(self);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received request to preserve installed eSim across device obliteration.", v19, 2u);
      }

      v17 = +[MSDPreferencesFile sharedInstance];
      [v17 setObject:&__kCFBooleanTrue forKey:@"PreserveESimRequested"];
    }

    return [(MSDTargetDevice *)selfCopy switchModeImmediately:9];
  }

  else
  {

    return [(MSDTargetDevice *)selfCopy switchModeImmediately:0];
  }
}

- (BOOL)runCleanUpForBetterTogetherDevice
{
  hubHostName = [(MSDTargetDevice *)self hubHostName];
  if (hubHostName)
  {
    v4 = hubHostName;
    hubPort = [(MSDTargetDevice *)self hubPort];

    if (hubPort)
    {
      v6 = objc_alloc_init(MSDUnEnrollRequest);
      [(MSDUnEnrollRequest *)v6 setObliterate:1];
      v7 = +[MSDServerRequestHandler sharedInstance];
      v8 = [v7 handleRequestSync:v6];
    }
  }

  [(MSDTargetDevice *)self manageDemoVolume:@"Delete"];
  return 1;
}

- (BOOL)canStartContentUpdate
{
  mode = [(MSDTargetDevice *)self mode];
  if (mode != 1)
  {
    LOBYTE(mode) = [(MSDTargetDevice *)self mode]== 5;
  }

  return mode;
}

- (BOOL)canStartOSUpdate
{
  mode = [(MSDTargetDevice *)self mode];
  if (mode != 1)
  {
    LOBYTE(mode) = [(MSDTargetDevice *)self mode]== 5;
  }

  return mode;
}

- (BOOL)canUnenrollWithObliteration:(BOOL)obliteration consultDeviceOptions:(BOOL)options
{
  if (options)
  {
    getDeviceOptions = [(MSDTargetDevice *)self getDeviceOptions];
    v6 = [getDeviceOptions objectForKey:@"enable_on_device_unenroll"];

    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Consulting device options before unenroll: %{public}@", &v11, 0xCu);
    }

    v9 = v6 == 0;
    if (!v6 || ([v6 BOOLValue] & 1) == 0)
    {

      return v9;
    }
  }

  return [(MSDTargetDevice *)self mode]== 5 || ![(MSDTargetDevice *)self mode]|| [(MSDTargetDevice *)self mode]== 1;
}

- (BOOL)canRunCleanUpForBetterTogetherDevice
{
  v3 = +[MSDPlatform sharedInstance];
  if ([v3 watchOS])
  {
    isBetterTogetherDemo = [(MSDTargetDevice *)self isBetterTogetherDemo];
  }

  else
  {
    isBetterTogetherDemo = 0;
  }

  return isBetterTogetherDemo;
}

- (BOOL)shouldForgetKnownNetworkUponUnlock
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"ForgetKnownNetworkUponUnlock"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setShouldForgetKnownNetworkUponUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  v4 = sub_100063A54(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = @"ForgetKnownNetworkUponUnlock";
    v9 = 1024;
    v10 = unlockCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set %{public}@ to %{BOOL}d", &v7, 0x12u);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  v6 = [NSNumber numberWithBool:unlockCopy];
  [v5 setObject:v6 forKey:@"ForgetKnownNetworkUponUnlock"];
}

- (BOOL)backgroundDownloadActive
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"BackgroundDownloadActive"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setBackgroundDownloadActive:(BOOL)active
{
  activeCopy = active;
  v4 = sub_100063A54(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting bg:%d", v13, 8u);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  v6 = v5;
  if (activeCopy)
  {
    v7 = [NSNumber numberWithBool:1];
    v8 = [v6 setObject:v7 forKey:@"BackgroundDownloadActive"];

    if ((v8 & 1) == 0)
    {
      v10 = sub_100063A54(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3CB0();
      }

LABEL_11:
    }
  }

  else
  {
    v11 = [v5 removeObjectForKey:@"BackgroundDownloadActive"];

    if ((v11 & 1) == 0)
    {
      v10 = sub_100063A54(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3C7C();
      }

      goto LABEL_11;
    }
  }
}

- (void)setBackgroundDownloadState:(unint64_t)state
{
  v5 = sub_100063A54(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setting background download state:%lu", &v8, 0xCu);
  }

  v6 = +[MSDProgressUpdater sharedInstance];
  backgroundBundle = [v6 backgroundBundle];
  [backgroundBundle setBundleStateAs:state];

  if (state - 3 <= 1)
  {
    [(MSDTargetDevice *)self setBackgroundDownloadActive:0];
  }
}

- (void)setHubProtocolVersion:(id)version
{
  versionCopy = version;
  v4 = sub_100063A54(versionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = versionCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting hub proto version:%{public}@", &v6, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  [v5 setObject:versionCopy forKey:@"HubProtocolVersion"];
}

- (NSString)hubProtocolVersion
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubProtocolVersion"];

  if (v3)
  {
    v4 = +[MSDPreferencesFile sharedInstance];
    v5 = [v4 objectForKey:@"HubProtocolVersion"];
  }

  else
  {
    v5 = @"2";
  }

  return v5;
}

- (BOOL)proceeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"Proceeded"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setProceeded:(BOOL)proceeded
{
  proceededCopy = proceeded;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (proceededCopy)
  {
    v6 = [NSNumber numberWithBool:1];
    v7 = [v5 setObject:v6 forKey:@"Proceeded"];

    if (v7)
    {
      return;
    }

    goto LABEL_3;
  }

  v9 = [v4 removeObjectForKey:@"Proceeded"];

  if ((v9 & 1) == 0)
  {
LABEL_3:
    sub_1000D3CE4(v8);
  }
}

- (void)cleanUpBackgroundState:(BOOL)state
{
  if (state)
  {
    v4 = +[MSDPreferencesFile sharedInstance];
    [v4 removeObjectsForKeys:&off_10017BD78];
  }

  [MSDBundleProgressTracker removeBundleFromPreferences:@"Content.Downloading"];
  v5 = +[MSDProgressUpdater sharedInstance];
  [v5 resetTrackerForBundleType:1];

  [(MSDTargetDevice *)self setBackgroundDownloadActive:0];
}

- (NSDictionary)wifiSettings
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"WiFiSettings"];

  return v3;
}

- (void)setWifiSettings:(id)settings
{
  settingsCopy = settings;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = v4;
  if (settingsCopy)
  {
    v6 = [v4 setObject:settingsCopy forKey:@"WiFiSettings"];
  }

  else
  {
    v6 = [v4 removeObjectForKey:@"WiFiSettings"];
  }

  v7 = v6;

  if ((v7 & 1) == 0)
  {
    sub_1000D3CE4(v8);
  }
}

- (id)getDesiredIconStateFromSB
{
  SBSSpringBoardBlockableServerPort();
  v2 = SBGetPendingIconState();
  if (v2)
  {
    v4 = sub_100063A54(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3D8C();
    }
  }

  return 0;
}

- (BOOL)sendIconStateToSB:(id)b
{
  bCopy = b;
  v4 = bCopy;
  if (bCopy && [bCopy length])
  {
    SBSSpringBoardBlockableServerPort();
    [v4 bytes];
    [v4 length];
    v5 = SBSetIconState();
    v6 = v5;
    v7 = v5 == 0;
    v8 = sub_100063A54(v5);
    v9 = v8;
    if (v6)
    {
      sub_1000D3E00(v8);
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Desired icon state is restored.", v11, 2u);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)delayRebootForTesting
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[MSDTestPreferences sharedInstance];
  rebootDelayForStaging = [v3 rebootDelayForStaging];

  if (rebootDelayForStaging)
  {
    v5 = [v2 fileExistsAtPath:@"/tmp/rebootDelayEntered"];
    if ((v5 & 1) == 0)
    {
      v5 = [v2 createFileAtPath:@"/tmp/rebootDelayEntered" contents:0 attributes:0];
    }

    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = rebootDelayForStaging;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for %u seconds to run test.", v7, 8u);
    }

    sleep(rebootDelayForStaging);
  }
}

- (void)configureLowPowerModeForTime:(id)time
{
  timeCopy = time;
  v5 = +[MSDStoreHoursManager sharedInstance];
  v6 = +[MSDPreferencesFile sharedInstance];
  v7 = [v6 objectForKey:@"LowPowerModeConfigured"];
  bOOLValue = [v7 BOOLValue];

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Configuring low power mode...", buf, 2u);
  }

  v11 = +[MSDHubFeatureFlags disableNightlyLowPowerMode];
  if (v11)
  {
    v12 = sub_100063A54(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Nightly low power mode is disabled by feature flag!", v13, 2u);
    }

    if (bOOLValue)
    {
      [(MSDTargetDevice *)self setLowPowerMode:0];
      [v6 removeObjectForKey:@"LowPowerModeConfigured"];
    }
  }

  else
  {
    if (timeCopy)
    {
      [v5 evaluateStoreStatusAgainstPointInTime:timeCopy];
    }

    else
    {
      [v5 evaluateStoreStatusAgainstCurrentTime];
    }

    -[MSDTargetDevice setLowPowerMode:](self, "setLowPowerMode:", [v5 isStoreOpenNow] ^ 1);
    [v6 setObject:&__kCFBooleanTrue forKey:@"LowPowerModeConfigured"];
  }
}

- (BOOL)setLowPowerMode:(int64_t)mode
{
  v4 = +[_PMLowPowerMode sharedInstance];
  getPowerMode = [v4 getPowerMode];

  v7 = getPowerMode == mode;
  if (getPowerMode == mode)
  {
    v8 = sub_100063A54(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      modeCopy = mode;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Low power mode already set to: %ld", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = +[_PMLowPowerMode sharedInstance];
  v10 = [v9 setPowerMode:mode fromSource:@"MobileStoreDemo"];

  if ((v10 & 1) == 0)
  {
    v8 = sub_100063A54(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3E94();
    }

LABEL_9:

    return v7;
  }

  return 1;
}

- (void)notifyCleanEnergyChargingToggled
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MSDNotificationCleanEnergyCharging" object:0 userInfo:0 deliverImmediately:1];
}

- (id)retrieveSignedManifest
{
  v3 = +[MSDFileDownloadCredentials sharedInstance];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:@"/var/MSDWorkContainer/.MSD_cache_manifest"];

  v6 = +[NSFileManager defaultManager];
  manifestPath = [(MSDTargetDevice *)self manifestPath];
  v8 = [v6 fileExistsAtPath:manifestPath];

  if (!v8 || ([(MSDTargetDevice *)self manifestPath], v9 = objc_claimAutoreleasedReturnValue(), [MSDSignedManifestFactory createSignedManifestFromManifestFile:v9], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = objc_alloc_init(MSDDownloadManifestRequest);
    manifestInfo = [v3 manifestInfo];
    [(MSDDownloadManifestRequest *)v11 setManifestInfo:manifestInfo];

    manifestPath2 = [(MSDTargetDevice *)self manifestPath];
    [(MSDServerRequest *)v11 setSavePath:manifestPath2];

    v14 = +[MSDServerRequestHandler sharedInstance];
    v15 = [v14 handleRequestSync:v11];

    error = [v15 error];

    if (error)
    {
      v42 = 0;
    }

    else
    {
      manifestPath3 = [(MSDTargetDevice *)self manifestPath];
      v10 = [MSDSignedManifestFactory createSignedManifestFromManifestFile:manifestPath3];

      if (v10)
      {

        goto LABEL_6;
      }

      v46 = 0;
      sub_1000C1390(&v46, 3727740938, @"Manifest is corrupted.");
      v42 = v46;
    }

    v10 = 0;
LABEL_26:

    v45 = v42;
    sub_1000C1424(&v45, 3727740940, @"Could not download manifest.");
    v31 = v45;

    v29 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v29 demoUpdateFailed:v31];
    v40 = 0;
    goto LABEL_17;
  }

LABEL_6:
  helperAgent = [(MSDTargetDevice *)self helperAgent];
  updateSignedManifest = [helperAgent updateSignedManifest];

  if ((updateSignedManifest & 1) == 0)
  {
    v11 = sub_100063A54(v20);
    if (os_log_type_enabled(&v11->super.super.super.super, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3F04();
    }

    v42 = 0;
    goto LABEL_26;
  }

  v43 = v5;
  v21 = +[MSDPreferencesFile sharedInstance];
  v22 = [v21 objectForKey:@"MSDCacheManifestVersion"];

  getInfo = [v10 getInfo];
  v24 = [getInfo objectForKey:@"PartNumber"];
  getInfo2 = [v10 getInfo];
  v26 = [getInfo2 objectForKey:@"Revision"];
  v44 = v3;
  manifestInfo2 = [v3 manifestInfo];
  v28 = [manifestInfo2 objectForKey:@"SigningKey"];
  v29 = [NSString stringWithFormat:@"%@_%@_%@", v24, v26, v28];

  v31 = v22;
  if (v22 && (v30 = [v22 isEqualToString:v29], (v30 & 1) == 0))
  {
    v36 = sub_100063A54(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "This is a new manifest (%{public}@). Discard this cache and reset timer.", buf, 0xCu);
    }

    v37 = +[MSDContentCacheManager sharedInstance];
    getAllFileHash = [v10 getAllFileHash];
    [v37 clearCacheExceptFileHashes:getAllFileHash];

    [(MSDTargetDevice *)self cleanUpBackgroundState:1];
    v3 = v44;
    p_superclass = MSDS3UploadHandler.superclass;
  }

  else
  {
    v3 = v44;
    p_superclass = (MSDS3UploadHandler + 8);
    if (v43)
    {
      v33 = sub_100063A54(v30);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Factory cache exists. Discard this cache.", buf, 2u);
      }

      v34 = +[MSDContentCacheManager sharedInstance];
      getAllFileHash2 = [v10 getAllFileHash];
      [v34 clearCacheExceptFileHashes:getAllFileHash2];
    }
  }

  sharedInstance = [p_superclass + 189 sharedInstance];
  [sharedInstance setObject:v29 forKey:@"MSDCacheManifestVersion"];

  v10 = v10;
  v40 = v10;
LABEL_17:

  return v40;
}

- (void)clearSafariHistory
{
  v2 = SFProcessIDForProcessNamed();
  if ((v2 & 0x80000000) != 0)
  {
    v7 = sub_100063A54(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D3F38();
    }
  }

  else
  {
    v3 = v2;
    v4 = kill(v2, 1);
    v5 = v4;
    v6 = sub_100063A54(v4);
    v7 = v6;
    if (v5 == -1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3F6C();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v53) = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Killed com.apple.Safari.History (%i)", buf, 8u);
    }
  }

  v8 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.mobilesafari"];
  dataContainerURL = [v8 dataContainerURL];
  path = [dataContainerURL path];

  v40 = [path stringByAppendingPathComponent:@"Library/Caches"];
  v46 = [path stringByAppendingPathComponent:@"Library/Cookies"];
  v38 = [path stringByAppendingPathComponent:@"Library/WebKit/WebsiteData"];
  v44 = path;
  v45 = [path stringByAppendingPathComponent:@"Library/Caches/WebKit"];
  v43 = NSHomeDirectory();
  v36 = [v43 stringByAppendingPathComponent:@"Library/Safari/History.db"];
  v42 = NSHomeDirectory();
  v34 = [v42 stringByAppendingPathComponent:@"Library/Safari/History.db-shm"];
  v39 = NSHomeDirectory();
  v33 = [v39 stringByAppendingPathComponent:@"Library/Safari/History.db-wal"];
  v37 = NSHomeDirectory();
  v32 = [v37 stringByAppendingPathComponent:@"Library/Safari/SafariTabs.db"];
  v35 = NSHomeDirectory();
  v11 = [v35 stringByAppendingPathComponent:@"Library/Safari/SafariTabs.db-shm"];
  v12 = NSHomeDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"Library/Safari/SafariTabs.db-wal"];
  v14 = NSHomeDirectory();
  v15 = [v14 stringByAppendingPathComponent:@"Library/Safari/LastSession.plist"];
  v16 = NSHomeDirectory();
  v17 = [v16 stringByAppendingPathComponent:@"Library/Safari/RecentlyClosedTabs.plist"];
  v41 = [NSArray arrayWithObjects:v40, v46, v38, v45, v36, v34, v33, v32, v11, v13, v15, v17, 0];

  v18 = +[NSFileManager defaultManager];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = v41;
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v49;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        v25 = [v18 fileExistsAtPath:v24];
        v26 = v25;
        v27 = sub_100063A54(v25);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (!v26)
        {
          if (v28)
          {
            *buf = 138543362;
            v53 = v24;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "File not found for Safari: %{public}@", buf, 0xCu);
          }

          v31 = 0;
          goto LABEL_23;
        }

        if (v28)
        {
          *buf = 138543362;
          v53 = v24;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Removing item for Safari: %{public}@", buf, 0xCu);
        }

        v47 = 0;
        v29 = [v18 removeItemAtPath:v24 error:&v47];
        v30 = v47;
        v31 = v30;
        if ((v29 & 1) == 0)
        {
          v27 = sub_100063A54(v30);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v53 = v24;
            v54 = 2114;
            v55 = v31;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to remove item for Safari: %{public}@, Error: %{public}@", buf, 0x16u);
          }

LABEL_23:
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v21);
  }
}

- (BOOL)deleteOperationRequest
{
  request = [(MSDTargetDevice *)self request];

  if (!request || (+[MSDPreferencesFile sharedInstance](MSDPreferencesFile, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 removeObjectForKey:@"criticalContentUpdateOnly"], v4, v5 = -[MSDTargetDevice removeKeyFromPreferenceFile:](self, "removeKeyFromPreferenceFile:", @"msd-request")))
  {
    response = [(MSDTargetDevice *)self response];

    if (response)
    {

      LOBYTE(v5) = [(MSDTargetDevice *)self removeKeyFromPreferenceFile:@"msd-response"];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)deleteOperationRequestAndQuitHelper
{
  deleteOperationRequest = [(MSDTargetDevice *)self deleteOperationRequest];
  if (deleteOperationRequest)
  {
    helperAgent = [(MSDTargetDevice *)self helperAgent];
    quitHelper = [helperAgent quitHelper];

    LOBYTE(deleteOperationRequest) = quitHelper;
  }

  return deleteOperationRequest;
}

- (int64_t)findMyHubRetryAtTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"FMHRetryAtTime"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)hubLastOnlineTime
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubLastOnlineTime"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)snapshotRevertFlagged
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"SnapshotRevertFlagged"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)hubSuppliedSettings
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"HubSuppliedSettings"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKey:@"SettingsID"];

      if (v4)
      {
        v6 = v3;
        goto LABEL_5;
      }

      v8 = sub_100063A54(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[MSDTargetDevice hubSuppliedSettings]";
        sub_100033CD8(&_mh_execute_header, v8, v9, "%s: Hub supplied settings not in right format.", &v10);
      }
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)saveHubSuppliedSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [settingsCopy objectForKey:@"SettingsID"];

  if (!v5)
  {
    v13 = sub_100063A54(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[MSDTargetDevice saveHubSuppliedSettings:]";
      sub_100033CD8(&_mh_execute_header, v13, v14, "%s: Hub supplied settings not in right format.", &v15);
    }

    goto LABEL_10;
  }

  v7 = +[MSDPreferencesFile sharedInstance];
  v8 = [v7 setObject:settingsCopy forKey:@"HubSuppliedSettings"];

  if (!v8)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_6;
  }

  v9 = +[NSDate date];
  [(MSDTargetDevice *)self saveLastSettingsUpdatedTime:v9];

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  [v10 postNotificationName:@"com.apple.MobileStoreDemo.SettingsUpdated" object:0 userInfo:0 options:3];

  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)waitingForCommand
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"WaitingForCommand"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unint64_t)backgroundDownloadState
{
  v2 = +[MSDProgressUpdater sharedInstance];
  backgroundBundle = [v2 backgroundBundle];

  if (backgroundBundle)
  {
    bundleState = [backgroundBundle bundleState];
  }

  else
  {
    bundleState = 0;
  }

  return bundleState;
}

@end