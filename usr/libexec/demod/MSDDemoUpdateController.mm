@interface MSDDemoUpdateController
+ (id)sharedInstance;
- (BOOL)PLHasCompletedMomentAnalysis;
- (BOOL)PLHasCompletedRestorePostProcessing;
- (BOOL)_kickOffContentUpdateForManifest:(id)manifest withOptions:(id)options error:(id *)error;
- (BOOL)_signedManifestMinimumOSVersionCheck:(id)check error:(id *)error;
- (BOOL)continueToContinuityLinking;
- (BOOL)continueToUpdateAccountContent;
- (BOOL)continueToUpdateAssets;
- (BOOL)continueToUpdateDemoContent;
- (BOOL)continueToUpdateOSPreferences;
- (BOOL)enrollForDeviceName:(id)name pairingCredential:(id)credential hubHostName:(id)hostName hubPort:(id)port error:(id *)error;
- (BOOL)enrolled;
- (BOOL)installCachedContentForCurrentLocale:(BOOL *)locale;
- (BOOL)migrateDataWithBlockingUI:(int)i startMigration:(BOOL)migration;
- (BOOL)setupAccounts:(id *)accounts;
- (BOOL)setupContinuityLinking:(id *)linking;
- (BOOL)updateDemoContent;
- (MSDDemoUpdateController)init;
- (id)_contentPlistPathForManifest:(id)manifest;
- (id)_selectCachedManifestWithError:(id *)error;
- (void)_configureMailAppForDemo;
- (void)_stageContentPlistForManifest:(id)manifest;
- (void)cancelDemoContentUpdate;
- (void)checkWithTimeKeeper:(id)keeper;
- (void)concludeDemoContenUpdateWithResult:(BOOL)result andError:(id)error;
- (void)getDemoUpdateInProgress:(BOOL *)progress operationAllowed:(BOOL *)allowed;
- (void)setAutomatedDeviceGroupStoreID;
@end

@implementation MSDDemoUpdateController

+ (id)sharedInstance
{
  if (qword_1001A5960 != -1)
  {
    sub_1000DF2C4();
  }

  v3 = qword_1001A5958;

  return v3;
}

- (MSDDemoUpdateController)init
{
  v6.receiver = self;
  v6.super_class = MSDDemoUpdateController;
  v2 = [(MSDDemoUpdateController *)&v6 init];
  if (v2)
  {
    v3 = +[MSDTargetDevice sharedInstance];
    [(MSDDemoUpdateController *)v2 setDevice:v3];

    v4 = +[MSDHelperAgent sharedInstance];
    [(MSDDemoUpdateController *)v2 setHelperAgent:v4];
  }

  return v2;
}

- (void)getDemoUpdateInProgress:(BOOL *)progress operationAllowed:(BOOL *)allowed
{
  *progress = 1;
  *allowed = 0;
  device = [(MSDDemoUpdateController *)self device];
  mode = [device mode];

  if (mode <= 5 && ((1 << mode) & 0x27) != 0)
  {
    *allowed = 1;
    if (![(MSDDemoUpdateController *)self busy])
    {
      *progress = 0;
    }
  }
}

- (BOOL)enrollForDeviceName:(id)name pairingCredential:(id)credential hubHostName:(id)hostName hubPort:(id)port error:(id *)error
{
  nameCopy = name;
  credentialCopy = credential;
  hostNameCopy = hostName;
  portCopy = port;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v66 = +[MSDProgressUpdater sharedInstance];
  v62 = credentialCopy;
  v63 = nameCopy;
  v65 = +[MSDServerRequestHandler sharedInstance];
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v61 = sub_100063A54(busy);
    sub_1000DF394(v61);
    v33 = 0;
    v64 = 0;
    v17 = 0;
    v21 = 0;
    setDemoDeviceFlag = 0;
    goto LABEL_26;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  [v66 updateStage:1];
  v17 = objc_alloc_init(MSDEnrollRequest);
  device = [(MSDDemoUpdateController *)selfCopy device];
  getRegistrationInfoKeys = [(MSDEnrollRequest *)v17 getRegistrationInfoKeys];
  v20 = [device deviceInformation:getRegistrationInfoKeys];
  v21 = [v20 mutableCopy];

  v22 = +[MSDNPIMaskValues sharedInstance];
  LODWORD(getRegistrationInfoKeys) = [v22 isNPIDevice];

  if (getRegistrationInfoKeys)
  {
    v23 = &off_10017B200;
  }

  else
  {
    v23 = &off_10017B218;
  }

  [v21 setObject:v23 forKeyedSubscript:@"MSDDemoPingType"];
  v24 = [NSDictionary dictionaryWithDictionary:v21];
  [(MSDEnrollRequest *)v17 setRegistrationInfo:v24];

  if (hostNameCopy && portCopy)
  {
    [(MSDCommandServerRequest *)v17 setServer:hostNameCopy];
    [(MSDCommandServerRequest *)v17 setPort:portCopy];
  }

  v64 = [v65 handleRequestSync:v17];
  error = [v64 error];

  if (error)
  {
    v33 = 0;
    goto LABEL_29;
  }

  device2 = [(MSDDemoUpdateController *)selfCopy device];
  [device2 setHubHostName:hostNameCopy];

  device3 = [(MSDDemoUpdateController *)selfCopy device];
  [device3 setHubPort:portCopy];

  device4 = [(MSDDemoUpdateController *)selfCopy device];
  v29 = +[NSDate date];
  [v29 timeIntervalSinceReferenceDate];
  [device4 saveHubLastOnlineTime:v30];

  device5 = [(MSDDemoUpdateController *)selfCopy device];
  [device5 holdPowerAssertion];

  +[MSDBundleProgressTracker migratePreferencesFromFactoryDevicesIfNeeded];
  [v66 loadBundles];
  device6 = [(MSDDemoUpdateController *)selfCopy device];
  LODWORD(v29) = [device6 isBetterTogetherDemo];

  if (v29)
  {
    v33 = +[MSDPairedWatchProxy sharedInstance];
    [v33 bootstrap];
  }

  else
  {
    v33 = 0;
  }

  device7 = [(MSDDemoUpdateController *)selfCopy device];
  setDemoDeviceFlag = [device7 setDemoDeviceFlag];

  if (setDemoDeviceFlag)
  {
    device8 = [(MSDDemoUpdateController *)selfCopy device];
    [device8 setupWorkFolderForBootTask];

    v38 = +[MSDCryptoHandler sharedInstance];
    [v38 createSecretKeyIfNeeded];

    device9 = [(MSDDemoUpdateController *)selfCopy device];
    turnOnDemoMode = [device9 turnOnDemoMode];

    if (turnOnDemoMode)
    {
      device10 = [(MSDDemoUpdateController *)selfCopy device];
      [device10 configureGreyMatterAutoUpdate];

      v42 = +[MSDAnalytics sharedInstance];
      [v42 disableCoreAnalticsTransformSampling];

      device11 = [(MSDDemoUpdateController *)selfCopy device];
      isPressDemoDevice = [device11 isPressDemoDevice];

      if ((isPressDemoDevice & 1) == 0)
      {
        v45 = +[MSDConfigurationProfileManager sharedInstance];
        [v45 installDefaultConfigurationProfile];
      }

      device12 = [(MSDDemoUpdateController *)selfCopy device];
      [device12 setWaitingForCommand:1];

      v47 = +[MSDMailProcessor sharedInstance];
      [v47 setWaitingForCommand:1];

      device13 = [(MSDDemoUpdateController *)selfCopy device];
      v49 = [device13 switchModeImmediately:1];

      if (v49)
      {
        v51 = sub_100063A54(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Starting mail processor after enrolling.", buf, 2u);
        }

        v52 = +[MSDMailProcessor sharedInstance];
        [v52 start];

        v54 = sub_100063A54(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Starting mail processor ended", buf, 2u);
        }

        device14 = [(MSDDemoUpdateController *)selfCopy device];
        [device14 terminateConfigurationApp];

        v57 = sub_100063A54(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "terminateConfigurationApp ended", buf, 2u);
        }

        device15 = [(MSDDemoUpdateController *)selfCopy device];
        [device15 deleteConfigurationApp];

        sub_100063A54(v59);
        objc_claimAutoreleasedReturnValue();
        sub_1000DF334();
        goto LABEL_24;
      }
    }

LABEL_29:
    setDemoDeviceFlag = 0;
    goto LABEL_25;
  }

  sub_100063A54(v36);
  objc_claimAutoreleasedReturnValue();
  sub_1000DF2D8();
LABEL_24:

LABEL_25:
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
LABEL_26:

  objc_sync_exit(selfCopy);
  return setDemoDeviceFlag;
}

- (BOOL)installCachedContentForCurrentLocale:(BOOL *)locale
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v4 = +[MSDUIHelper sharedInstance];
  v5 = +[MSDProgressUpdater sharedInstance];
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Installing cached demo content...", buf, 2u);
  }

  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 skipVerifyHashBeforeStaging], v7, v8))
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping file hash verification before staging", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v84[0] = @"IsCriticalUpdate";
  v84[1] = @"ForBackgroundDownload";
  v85[0] = &__kCFBooleanFalse;
  v85[1] = &__kCFBooleanFalse;
  v84[2] = @"VerifyHashBeforeStaging";
  v12 = [NSNumber numberWithBool:v11];
  v85[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:3];

  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if (busy)
  {
    v60 = sub_100063A54(busy);
    sub_1000DF43C(v60);
    v16 = 0;
    v20 = 0;
    v57 = 0;
    goto LABEL_29;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  device = [(MSDDemoUpdateController *)selfCopy device];
  [device setCachedBundleInstallState:@"cachedBundleInstallInProgress"];

  v79 = 0;
  v16 = [(MSDDemoUpdateController *)selfCopy _selectCachedManifestWithError:&v79];
  v17 = v79;
  v18 = v17;
  if (!v16)
  {
    v56 = 0;
    goto LABEL_35;
  }

  v78 = v17;
  v19 = [(MSDDemoUpdateController *)selfCopy _signedManifestMinimumOSVersionCheck:v16 error:&v78];
  v20 = v78;

  if (!v19)
  {
LABEL_34:
    v56 = 0;
    v18 = v20;
    goto LABEL_35;
  }

  device2 = [(MSDDemoUpdateController *)selfCopy device];
  installedFactoryBundleID = [device2 installedFactoryBundleID];

  if (installedFactoryBundleID)
  {
    device3 = [(MSDDemoUpdateController *)selfCopy device];
    installedFactoryBundleID2 = [device3 installedFactoryBundleID];
    bundleID = [v16 bundleID];
    v26 = [installedFactoryBundleID2 isEqualToString:bundleID];

    if (v26)
    {
      device4 = [(MSDDemoUpdateController *)selfCopy device];
      [device4 setCachedBundleInstallState:@"cachedBundleInstallDone"];

      device12 = sub_100063A54(v70);
      if (os_log_type_enabled(device12, OS_LOG_TYPE_DEFAULT))
      {
        getLocaleCode = [v16 getLocaleCode];
        device5 = [(MSDDemoUpdateController *)selfCopy device];
        installedFactoryBundleID3 = [device5 installedFactoryBundleID];
        *buf = 138543618;
        v81 = getLocaleCode;
        v82 = 2114;
        v83 = installedFactoryBundleID3;
        _os_log_impl(&_mh_execute_header, device12, OS_LOG_TYPE_DEFAULT, "Bundle with locale %{public}@ & bundle ID %{public}@ already installed", buf, 0x16u);
      }

      v56 = 0;
      v57 = 1;
      goto LABEL_26;
    }
  }

  helperAgent = [(MSDDemoUpdateController *)selfCopy helperAgent];
  v28 = [helperAgent stageDeviceForUpdateProcess:0];

  if ((v28 & 1) == 0)
  {
    v61 = sub_100063A54(v29);
    sub_1000DF3E8(v61);
    goto LABEL_34;
  }

  v30 = +[MSDUIHelper sharedInstance];
  [v30 startFullScreenUIWith:@"CACHED_BUNDLE_INSTALL" allowCancel:0];

  device6 = [(MSDDemoUpdateController *)selfCopy device];
  dcotaOfflineModeDevice = [device6 dcotaOfflineModeDevice];

  if ((dcotaOfflineModeDevice & 1) == 0)
  {
    device7 = [(MSDDemoUpdateController *)selfCopy device];
    [device7 setupDummyPreferenceFile];
  }

  [v5 startBundleUpdateMonitor:v16 inMode:0];
  bundleInProgress = [v5 bundleInProgress];
  [bundleInProgress startBundleUpdateTimer];

  device8 = [(MSDDemoUpdateController *)selfCopy device];
  [device8 setBackgroundDownloadActive:0];

  v37 = sub_100063A54(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Stopping all apps running in the foreground...", buf, 2u);
  }

  v38 = +[MSDAppHelper sharedInstance];
  fullScreenUIAppId = [v4 fullScreenUIAppId];
  v40 = [NSArray arrayWithObjects:fullScreenUIAppId, @"com.apple.ist.windward", @"com.apple.ist.DemoDiscoveryApp", @"com.apple.PineBoard", 0];
  [v38 stopAllAppsExcept:v40];

  v77 = v20;
  LODWORD(v38) = [(MSDDemoUpdateController *)selfCopy _kickOffContentUpdateForManifest:v16 withOptions:v13 error:&v77];
  v18 = v77;

  if (!v38)
  {
    goto LABEL_30;
  }

  bundleInProgress2 = [v5 bundleInProgress];
  [bundleInProgress2 getBundleUpdateTime];
  v43 = v42;

  v45 = sub_100063A54(v44);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v81 = v43;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Total time taken for this update: %f.", buf, 0xCu);
  }

  bundleInProgress3 = [v5 bundleInProgress];
  [bundleInProgress3 stopBundleUpdateTimer];

  v48 = sub_100063A54(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Done with content update, switching to real backup folder.", buf, 2u);
  }

  helperAgent2 = [(MSDDemoUpdateController *)selfCopy helperAgent];
  switchToBackupFolder = [helperAgent2 switchToBackupFolder];

  if (!switchToBackupFolder)
  {
LABEL_30:
    v56 = 1;
LABEL_35:
    v76 = v18;
    sub_1000C1424(&v76, 3727744768, @"An error has occurred.");
    v20 = v76;

    v62 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v62 demoUpdateFailed:v20];

    device9 = [(MSDDemoUpdateController *)selfCopy device];
    dcotaOfflineModeDevice2 = [device9 dcotaOfflineModeDevice];

    if ((dcotaOfflineModeDevice2 & 1) == 0)
    {
      v66 = sub_100063A54(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Cleaning up keep alive file and BootTask Work folder...", buf, 2u);
      }

      device10 = [(MSDDemoUpdateController *)selfCopy device];
      [device10 cleanupDummyPreferenceFile];

      device11 = [(MSDDemoUpdateController *)selfCopy device];
      [device11 destroyWorkFolderForBootTask];
    }

    device12 = [(MSDDemoUpdateController *)selfCopy device];
    [device12 setCachedBundleInstallState:@"cachedBundleInstallDone"];
    v57 = 0;
    goto LABEL_26;
  }

  [(MSDDemoUpdateController *)selfCopy _stageContentPlistForManifest:v16];
  v51 = +[MSDLanguageAndRegionManager sharedInstance];
  [v51 saveCurrentDeviceLanguageIdentifier];

  v52 = +[MSDLanguageAndRegionManager sharedInstance];
  [v52 saveCurrentDeviceRegionCode];

  bundleID2 = [v16 bundleID];
  device13 = [(MSDDemoUpdateController *)selfCopy device];
  [device13 setInstalledFactoryBundleID:bundleID2];

  device12 = [(MSDDemoUpdateController *)selfCopy device];
  [device12 setCachedBundleInstallState:@"cachedBundleInstallWaitMigration"];
  v56 = 1;
  v57 = 1;
  v20 = v18;
LABEL_26:

  if (locale)
  {
    *locale = v56;
  }

  v58 = +[MSDUIHelper sharedInstance];
  [v58 stopFullScreenUI:0];

  [(MSDDemoUpdateController *)selfCopy setBusy:0];
LABEL_29:

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v57;
}

- (BOOL)updateDemoContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v3 = +[MSDProgressUpdater sharedInstance];
  v69 = +[MSDUIHelper sharedInstance];
  device = [(MSDDemoUpdateController *)selfCopy device];
  criticalUpdatePrioritized = [device criticalUpdatePrioritized];

  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 skipVerifyHashBeforeStaging], v5, v6))
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping file hash verification before staging", buf, 2u);
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v77[0] = @"IsCriticalUpdate";
  v10 = [NSNumber numberWithBool:criticalUpdatePrioritized];
  v78[0] = v10;
  v78[1] = &__kCFBooleanFalse;
  v77[1] = @"ForBackgroundDownload";
  v77[2] = @"VerifyHashBeforeStaging";
  v11 = [NSNumber numberWithBool:v9];
  v78[2] = v11;
  v68 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:3];

  v65 = +[MSDPairedWatchProxy sharedInstance];
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  v70 = busy;
  if (busy)
  {
    v57 = sub_100063A54(busy);
    sub_1000DF48C(v57);
    getContentUpdateType = 0;
    downloadedContentSource = 0;
    v64 = 0;
    retrieveSignedManifest = 0;
    goto LABEL_27;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  device2 = [(MSDDemoUpdateController *)selfCopy device];
  v14 = [device2 switchModeImmediately:2];

  if (!v14)
  {
    paired = 0;
LABEL_31:
    getContentUpdateType = 0;
    downloadedContentSource = 0;
    v23 = 0;
LABEL_33:
    retrieveSignedManifest = 0;
    goto LABEL_37;
  }

  device3 = [(MSDDemoUpdateController *)selfCopy device];
  if ([device3 isBetterTogetherDemo])
  {
    paired = [v65 paired];
  }

  else
  {
    paired = 0;
  }

  helperAgent = [(MSDDemoUpdateController *)selfCopy helperAgent];
  v17 = [helperAgent stageDeviceForUpdateProcess:0];

  if ((v17 & 1) == 0)
  {
    v58 = sub_100063A54(v18);
    sub_1000DF3E8(v58);
    goto LABEL_31;
  }

  v19 = sub_100063A54(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device downloading manifest...", buf, 2u);
  }

  [v3 updateStage:2];
  device4 = [(MSDDemoUpdateController *)selfCopy device];
  retrieveSignedManifest = [device4 retrieveSignedManifest];

  if (!retrieveSignedManifest)
  {
    v74 = 0;
    sub_1000C1424(&v74, 3727740940, @"Could not download manifest.");
    v23 = v74;
    getContentUpdateType = 0;
    downloadedContentSource = 0;
    goto LABEL_33;
  }

  v73 = 0;
  v22 = [(MSDDemoUpdateController *)selfCopy _signedManifestMinimumOSVersionCheck:retrieveSignedManifest error:&v73];
  v23 = v73;
  if (v22)
  {
    [v3 startBundleUpdateMonitor:retrieveSignedManifest inMode:0];
    bundleInProgress = [v3 bundleInProgress];
    [bundleInProgress startBundleUpdateTimer];

    v25 = +[MSDAppPrivacyPermissionsHelper sharedInstance];
    [v25 savePrivacyPermissionsForAllApps:retrieveSignedManifest];

    device5 = [(MSDDemoUpdateController *)selfCopy device];
    [device5 setBackgroundDownloadActive:0];

    v27 = sub_100063A54([v3 updateStage:21]);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Stopping all apps running in the foreground...", buf, 2u);
    }

    v28 = +[MSDAppHelper sharedInstance];
    fullScreenUIAppId = [v69 fullScreenUIAppId];
    v30 = [NSArray arrayWithObjects:fullScreenUIAppId, @"com.apple.ist.windward", @"com.apple.ist.DemoDiscoveryApp", @"com.apple.PineBoard", @"com.apple.ist.DigitalSignage.iOS", 0];
    [v28 stopAllAppsExcept:v30];

    [v3 updateStage:22];
    v72 = v23;
    LODWORD(v28) = [(MSDDemoUpdateController *)selfCopy _kickOffContentUpdateForManifest:retrieveSignedManifest withOptions:v68 error:&v72];
    v64 = v72;

    if (v28)
    {
      getContentUpdateType = [v3 getContentUpdateType];
      bundleInProgress2 = [v3 bundleInProgress];
      downloadedContentSource = [bundleInProgress2 downloadedContentSource];

      v33 = [downloadedContentSource objectForKey:@"remote"];
      longLongValue = [v33 longLongValue];
      v35 = [downloadedContentSource objectForKey:@"local"];
      longLongValue2 = [v35 longLongValue];

      bundleInProgress3 = [v3 bundleInProgress];
      getComponentsSuccessful = [bundleInProgress3 getComponentsSuccessful];
      bundleInProgress4 = [v3 bundleInProgress];
      getAllComponentsForUpdate = [bundleInProgress4 getAllComponentsForUpdate];

      v41 = [downloadedContentSource objectForKey:@"local"];
      longLongValue3 = [v41 longLongValue];

      bundleInProgress5 = [v3 bundleInProgress];
      [bundleInProgress5 getBundleUpdateTime];
      v45 = v44;

      v47 = sub_100063A54(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v76 = v45;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Total time taken for this update: %f.", buf, 0xCu);
      }

      v48 = +[MSDAnalyticsEventHandler sharedInstance];
      [v48 sendContentUpdateCompletedEvent:&longLongValue[longLongValue2] withTimeTaken:longLongValue3 != 0 cachingHubAvailable:criticalUpdatePrioritized isCriticalUpdate:getContentUpdateType contentUpdateType:100 * getComponentsSuccessful / getAllComponentsForUpdate andComponentSuccess:v45];

      bundleInProgress6 = [v3 bundleInProgress];
      [bundleInProgress6 stopBundleUpdateTimer];

      v51 = sub_100063A54(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Done with content update, switching to real backup folder.", buf, 2u);
      }

      helperAgent2 = [(MSDDemoUpdateController *)selfCopy helperAgent];
      switchToBackupFolder = [helperAgent2 switchToBackupFolder];

      if (switchToBackupFolder)
      {
        device6 = [(MSDDemoUpdateController *)selfCopy device];
        v55 = [device6 switchModeImmediately:4];

        if (v55)
        {
          [(MSDDemoUpdateController *)selfCopy setBusy:0];
          LOBYTE(v11) = 1;
          goto LABEL_27;
        }
      }
    }

    else
    {
      getContentUpdateType = 0;
      downloadedContentSource = 0;
    }

    v23 = v64;
  }

  else
  {
    getContentUpdateType = 0;
    downloadedContentSource = 0;
  }

LABEL_37:
  v71 = v23;
  sub_1000C1424(&v71, 3727744768, @"An error has occurred.");
  v64 = v71;

  v59 = +[MSDDemoUpdateStatusHub sharedInstance];
  [v59 demoUpdateFailed:v64];

  v60 = +[MSDAnalyticsEventHandler sharedInstance];
  [v60 sendContentUpdateFailureEvent:v64 isFatal:1];

  if (paired)
  {
    v61 = +[MSDPairedWatchProxy sharedInstance];
    [v61 signalContentUpdateCompletion:0 andError:v64];
  }

  [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v64];
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  LOBYTE(v11) = 0;
LABEL_27:

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v11 & (v70 ^ 1);
}

- (void)cancelDemoContentUpdate
{
  v15 = +[MSDPairedWatchProxy sharedInstance];
  device = [(MSDDemoUpdateController *)self device];
  if ([device isBetterTogetherDemo])
  {
    paired = [v15 paired];

    if (paired)
    {
      [v15 cancelOperation];
    }
  }

  else
  {
  }

  v5 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  [v5 canceledByUser];

  v6 = +[MSDPlatform sharedInstance];
  if ([v6 macOS])
  {
  }

  else
  {
    v7 = +[MSDPlatform sharedInstance];
    v8 = [v7 iOS];

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = +[MSDPricingUpdateController sharedInstance];
  [v9 operationCanceled];

LABEL_9:
  componentManager = [(MSDDemoUpdateController *)self componentManager];

  if (componentManager)
  {
    componentManager2 = [(MSDDemoUpdateController *)self componentManager];
    [componentManager2 abortProcessing];
  }

  v12 = +[MSDUIHelper sharedInstance];
  [v12 fullScreenUICanceledByUser];

  v13 = +[MSDProgressUpdater sharedInstance];
  [v13 updateStage:101];

  v14 = +[MSDMailProcessor sharedInstance];
  [v14 sendImmediateDeviceInfoPing];
}

- (void)concludeDemoContenUpdateWithResult:(BOOL)result andError:(id)error
{
  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  if ((busy & 1) == 0)
  {
    v11 = sub_100063A54(busy);
    sub_1000DF4DC(v11);
    goto LABEL_6;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  if (!resultCopy)
  {
LABEL_6:
    v13 = errorCopy;
    sub_1000C1424(&v13, 3727744768, @"An error has occurred.");
    v10 = v13;

    v12 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v12 demoUpdateFailed:v10];

    [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v10];
    goto LABEL_4;
  }

  device = [(MSDDemoUpdateController *)selfCopy device];
  [device switchModeImmediately:5];

  v10 = errorCopy;
LABEL_4:
  objc_sync_exit(selfCopy);
}

- (BOOL)setupAccounts:(id *)accounts
{
  v4 = +[MSDAccountManager sharedInstance];
  v13 = 0;
  v5 = [v4 setupAccounts:&v13];
  v6 = v13;

  if ((v5 & 1) == 0)
  {
    v12 = v6;
    sub_1000C1424(&v12, 3727744743, @"An error has occurred.");
    v7 = v12;

    v8 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v8 demoUpdateFailed:v7];

    v9 = +[MSDAnalyticsEventHandler sharedInstance];
    [v9 sendiCloudSigninFailureEvent:v7];

    if (accounts)
    {
      v10 = v7;
      *accounts = v7;
    }

    v6 = v7;
  }

  return v5;
}

- (BOOL)setupContinuityLinking:(id *)linking
{
  v4 = +[MSDAccountManager sharedInstance];
  v13 = 0;
  v5 = [v4 setupContinuityLinking:&v13];
  v6 = v13;

  if ((v5 & 1) == 0)
  {
    v12 = v6;
    sub_1000C1424(&v12, 3727744743, @"An error has occurred.");
    v7 = v12;

    v8 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v8 demoUpdateFailed:v7];

    v9 = +[MSDAnalyticsEventHandler sharedInstance];
    [v9 sendContinuityLinkingFailureEvent:v7];

    if (linking)
    {
      v10 = v7;
      *linking = v7;
    }

    v6 = v7;
  }

  return v5;
}

- (BOOL)continueToUpdateAccountContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  v5 = busy;
  if (busy)
  {
    v6 = sub_100063A54(busy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF52C();
    }
  }

  else
  {
    [(MSDDemoUpdateController *)selfCopy setBusy:1];
    v8 = 0;
    v2 = [(MSDDemoUpdateController *)selfCopy setupAccounts:&v8];
    v6 = v8;
    if (v6)
    {
      [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v6];
    }

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
  }

  objc_sync_exit(selfCopy);
  return (v5 ^ 1) & v2;
}

- (BOOL)continueToUpdateAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  v5 = busy;
  if (busy)
  {
    v14 = sub_100063A54(busy);
    sub_1000DF394(v14);
    v12 = 0;
    goto LABEL_10;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  if (!+[MSDGreyMatterHelper isOptedIn])
  {
    v12 = 0;
    goto LABEL_9;
  }

  sleep(0x1Eu);
  v6 = +[MSDAssetUpdater sharedInstance];
  v17 = 0;
  v7 = [v6 downloadAssetsWithError:&v17];
  v8 = v17;

  if ((v7 & 1) == 0)
  {
    sub_100063A54(v9);
    objc_claimAutoreleasedReturnValue();
    sub_1000DF568();
LABEL_14:

    v16 = v8;
    sub_1000C1424(&v16, 3727744776, @"Failed to download support for Apple Intelligence");
    v12 = v16;

    v15 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v15 demoUpdateFailed:v12];

    [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v12];
    [(MSDDemoUpdateController *)selfCopy setBusy:0];
    v2 = 0;
    goto LABEL_10;
  }

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling waitForGMAvailability", buf, 2u);
  }

  v11 = +[MSDGreyMatterHelper waitForGMAvailability];
  if ((v11 & 1) == 0)
  {
    sub_100063A54(v11);
    objc_claimAutoreleasedReturnValue();
    sub_1000DF5C4();
    goto LABEL_14;
  }

  v12 = v8;
LABEL_9:
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  v2 = 1;
LABEL_10:
  objc_sync_exit(selfCopy);

  return v2 & (v5 ^ 1);
}

- (BOOL)continueToUpdateOSPreferences
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  v4 = busy;
  if (busy)
  {
    v9 = sub_100063A54(busy);
    sub_1000DF394(v9);
    getCurrentSiriLanguage = 0;
  }

  else
  {
    [(MSDDemoUpdateController *)selfCopy setBusy:1];
    v5 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentSiriLanguage = [v5 getCurrentSiriLanguage];

    device = [(MSDDemoUpdateController *)selfCopy device];
    [device applyStagedDevicePreferences:0];

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
  }

  objc_sync_exit(selfCopy);

  return v4 ^ 1;
}

- (BOOL)continueToContinuityLinking
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  v5 = busy;
  if (busy)
  {
    v6 = sub_100063A54(busy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF52C();
    }
  }

  else
  {
    [(MSDDemoUpdateController *)selfCopy setBusy:1];
    v8 = 0;
    v2 = [(MSDDemoUpdateController *)selfCopy setupContinuityLinking:&v8];
    v6 = v8;
    if (v6)
    {
      [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v6];
    }

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
  }

  objc_sync_exit(selfCopy);
  return (v5 ^ 1) & v2;
}

- (BOOL)continueToUpdateDemoContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v55 = +[MSDPairedWatchProxy sharedInstance];
  busy = [(MSDDemoUpdateController *)selfCopy busy];
  v56 = busy;
  if (busy)
  {
    v51 = sub_100063A54(busy);
    sub_1000DF394(v51);
    v21 = 0;
    allKeys = 0;
    v28 = 0;
    v36 = 0;
    goto LABEL_37;
  }

  [(MSDDemoUpdateController *)selfCopy setBusy:1];
  v5 = +[MSDAppPrivacyPermissionsHelper sharedInstance];
  [v5 grantPrivacyPermissionsForAllApps];

  device = [(MSDDemoUpdateController *)selfCopy device];
  isPressDemoDevice = [device isPressDemoDevice];

  if ((isPressDemoDevice & 1) == 0)
  {
    v8 = +[MSDConfigurationProfileManager sharedInstance];
    [v8 installDefaultConfigurationProfile];
  }

  +[MSDGreyMatterHelper migrateOptInValue];
  v61 = 0;
  [(MSDDemoUpdateController *)selfCopy setupAccounts:&v61];
  v54 = v61;
  device2 = [(MSDDemoUpdateController *)selfCopy device];
  if (![device2 isBetterTogetherDemo])
  {

    goto LABEL_12;
  }

  paired = [v55 paired];

  if (!paired)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  if (os_variant_has_internal_content())
  {
    v12 = +[MSDTestPreferences sharedInstance];
    contentSyncTimeoutInterval = [v12 contentSyncTimeoutInterval];

    if (contentSyncTimeoutInterval)
    {
      v15 = sub_100063A54(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v63 = contentSyncTimeoutInterval;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Override default content sync timeout interval with value: %{public}@", buf, 0xCu);
      }

      unsignedIntValue = [contentSyncTimeoutInterval unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 1800;
    }
  }

  else
  {
    unsignedIntValue = 1800;
  }

  v45 = +[MSDProgressUpdater sharedInstance];
  [v45 updateStage:32];

  v47 = sub_100063A54(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v63) = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Wait extra %u seconds for content sync between phone and watch...", buf, 8u);
  }

  v48 = sleep(unsignedIntValue);
  v49 = sub_100063A54(v48);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending content update completion signal to paired watch...", buf, 2u);
  }

  v11 = [v55 signalContentUpdateCompletion:1 andError:0];
  v17 = 1;
  if (v11)
  {
LABEL_13:
    v18 = sub_100063A54(v11);
    v52 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Re-enabling idle timer for blocking UI", buf, 2u);
    }

    v19 = +[MSDUIHelper sharedInstance];
    [v19 reenableIdleTimer];

    device3 = [(MSDDemoUpdateController *)selfCopy device];
    v60 = 0;
    [device3 applyStagedDevicePreferences:&v60];
    v21 = v60;

    device4 = [(MSDDemoUpdateController *)selfCopy device];
    getSavedOSPreferencesRequest = [device4 getSavedOSPreferencesRequest];
    allKeys = [getSavedOSPreferencesRequest allKeys];

    v25 = +[MSDLanguageAndRegionManager sharedInstance];
    if ([v25 isSiriEnabled])
    {
      v26 = [v21 containsObject:@"SystemSiriLanguage"] ^ 1;
    }

    else
    {
      v26 = 0;
    }

    if ([allKeys containsObject:@"SystemLanguage"] && objc_msgSend(allKeys, "containsObject:", @"SystemRegion"))
    {
      v27 = +[MSDPreferencesFile sharedInstance];
      [v27 removeObjectForKey:@"locale"];
      v28 = 0;
    }

    else
    {
      v29 = +[MSDPreferencesFile sharedInstance];
      v28 = [v29 objectForKey:@"locale"];

      if (!v28)
      {
        goto LABEL_24;
      }

      v27 = [v28 objectForKey:@"language"];
      v30 = [v28 objectForKey:@"region"];
      v31 = +[MSDLanguageAndRegionManager sharedInstance];
      [v31 setDeviceLanguage:v27 andRegion:v30 matchToSystemLanguage:0 sbRestartNeeded:0 sbRestartHandler:0];

      v32 = +[MSDPreferencesFile sharedInstance];
      [v32 removeObjectForKey:@"locale"];
    }

LABEL_24:
    v33 = +[MSDAnalytics sharedInstance];
    [v33 disableCoreAnalticsTransformSampling];

    if (+[MSDGreyMatterHelper isOptedIn])
    {
      sleep(0x1Eu);
      v34 = +[MSDAssetUpdater sharedInstance];
      v59 = v54;
      v35 = [v34 downloadAssetsWithError:&v59];
      v36 = v59;

      if ((v35 & 1) == 0)
      {
        v40 = sub_100063A54(v37);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000DF65C();
        }

        goto LABEL_53;
      }

      v38 = sub_100063A54(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Calling waitForGMAvailability", buf, 2u);
      }

      v39 = +[MSDGreyMatterHelper waitForGMAvailability];
      if ((v39 & 1) == 0)
      {
        v40 = sub_100063A54(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000DF698();
        }

LABEL_53:

        v54 = v36;
        goto LABEL_47;
      }
    }

    else if (v26)
    {
      v41 = +[MSDAssetUpdater sharedInstance];
      v58 = v54;
      v42 = [v41 handleSiriAssetsWithError:&v58];
      v36 = v58;

      if ((v42 & 1) == 0)
      {
        v40 = sub_100063A54(v43);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000DF620();
        }

        goto LABEL_53;
      }
    }

    else
    {
      v36 = v54;
    }

    [(MSDDemoUpdateController *)selfCopy setBusy:0];
    v2 = 1;
    goto LABEL_37;
  }

  v52 = 1;
  v21 = 0;
  allKeys = 0;
  v28 = 0;
LABEL_47:
  v57 = v54;
  sub_1000C1424(&v57, 3727744768, @"An error has occurred.");
  v36 = v57;

  v50 = +[MSDDemoUpdateStatusHub sharedInstance];
  [v50 demoUpdateFailed:v36];

  if (v52)
  {
    [v55 signalContentUpdateCompletion:0 andError:v36];
  }

  [(MSDDemoUpdateController *)selfCopy checkWithTimeKeeper:v36];
  [(MSDDemoUpdateController *)selfCopy setBusy:0];
  v2 = 0;
LABEL_37:

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v2 & (v56 ^ 1);
}

- (void)checkWithTimeKeeper:(id)keeper
{
  keeperCopy = keeper;
  v4 = +[MSDDemoUpdateTimeKeeper sharedInstance];
  v16 = 0;
  v5 = [v4 shouldCleanUp:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    code = [v6 code];
    if (code != 3727741184)
    {
      v9 = sub_100063A54(code);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unknown clean up reason!", buf, 2u);
      }
    }

    v10 = +[MSDTargetDevice sharedInstance];
    [v10 forceSwitchToDemoModeIfNeeded];
    goto LABEL_9;
  }

  if ([keeperCopy code] == 3727740939)
  {
    v10 = +[MSDProgressUpdater sharedInstance];
    [v10 updateStage:24];
LABEL_9:

    goto LABEL_16;
  }

  v11 = +[MSDTestPreferences sharedInstance];
  timeShowingFatalError = [v11 timeShowingFatalError];

  if (timeShowingFatalError)
  {
    v14 = sub_100063A54(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = timeShowingFatalError;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Override MSDTimeShowingFatalError timeout: %u", buf, 8u);
    }
  }

  else
  {
    timeShowingFatalError = 900;
  }

  v15 = [v4 setCompletionTimeForFatalError:timeShowingFatalError];
LABEL_16:
}

- (BOOL)PLHasCompletedRestorePostProcessing
{
  v13 = 0;
  v2 = [PLAssetsdClient alloc];
  v3 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v4 = [v2 initWithPhotoLibraryURL:v3];

  demoClient = [v4 demoClient];
  v12 = 0;
  v6 = [demoClient hasCompletedRestorePostProcessing:&v13 error:&v12];
  v7 = v12;

  if (v6)
  {
    v9 = v13;
  }

  else
  {
    v10 = sub_100063A54(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF6D4();
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)PLHasCompletedMomentAnalysis
{
  v13 = 0;
  v2 = [PLAssetsdClient alloc];
  v3 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v4 = [v2 initWithPhotoLibraryURL:v3];

  demoClient = [v4 demoClient];
  v12 = 0;
  v6 = [demoClient hasCompletedMomentAnalysis:&v13 error:&v12];
  v7 = v12;

  if (v6)
  {
    v9 = v13;
  }

  else
  {
    v10 = sub_100063A54(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF744();
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)migrateDataWithBlockingUI:(int)i startMigration:(BOOL)migration
{
  migrationCopy = migration;
  if (![(MSDDemoUpdateController *)self migrationDone])
  {
    v6 = +[MSDProgressUpdater sharedInstance];
    [v6 updateStage:14];

    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v41) = 67109120;
      HIDWORD(v41) = migrationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Waiting for data migration to finish; startMigration=%{BOOL}d", &v41, 8u);
    }

    if (migrationCopy)
    {
      v9 = DMPerformMigration();
    }

    else
    {
      v9 = DMPerformMigrationIfNeeded();
    }

    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Data migration finished.", &v41, 2u);
    }

    device = [(MSDDemoUpdateController *)self device];
    isOfflineMode = [device isOfflineMode];

    v13 = +[MSDUIHelper sharedInstance];
    v14 = v13;
    if (isOfflineMode)
    {
      v15 = @"CACHED_BUNDLE_INSTALL";
    }

    else
    {
      v15 = @"IN_PROGRESS";
    }

    [v13 startFullScreenUIWith:v15 allowCancel:1 disableIdleTimer:1];

    v17 = sub_100063A54(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Checking photo library migration.", &v41, 2u);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v20;
      v22 = v19;
      v20 = +[NSDate date];

      pLHasCompletedRestorePostProcessing = [(MSDDemoUpdateController *)self PLHasCompletedRestorePostProcessing];
      sleep(2u);
      v19 = +[NSDate date];

      v24 = [v19 timeIntervalSinceDate:v20];
      v18 += v25;
    }

    while ((pLHasCompletedRestorePostProcessing & 1) == 0 && v18 < 900);
    v26 = sub_100063A54(v24);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (pLHasCompletedRestorePostProcessing)
    {
      if (!v27)
      {
        goto LABEL_23;
      }

      LODWORD(v41) = 67109120;
      HIDWORD(v41) = v18;
      v28 = "Photo library migration finished after %d seconds.";
    }

    else
    {
      if (!v27)
      {
        goto LABEL_23;
      }

      LODWORD(v41) = 67109120;
      HIDWORD(v41) = v18;
      v28 = "Photo library migration timeout after %d seconds.";
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, &v41, 8u);
LABEL_23:

    v30 = sub_100063A54(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Checking photo moment analysis.", &v41, 2u);
    }

    v31 = 0;
    do
    {
      v32 = v20;
      v33 = v19;
      v20 = +[NSDate date];

      pLHasCompletedMomentAnalysis = [(MSDDemoUpdateController *)self PLHasCompletedMomentAnalysis];
      sleep(5u);
      v19 = +[NSDate date];

      v35 = [v19 timeIntervalSinceDate:v20];
      v31 += v36;
    }

    while ((pLHasCompletedMomentAnalysis & 1) == 0 && v31 < 300);
    v37 = sub_100063A54(v35);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    if (pLHasCompletedMomentAnalysis)
    {
      if (v38)
      {
        LODWORD(v41) = 67109120;
        HIDWORD(v41) = v31;
        v39 = "Photo moment analysis finished after %d seconds.";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v39, &v41, 8u);
      }
    }

    else if (v38)
    {
      LODWORD(v41) = 67109120;
      HIDWORD(v41) = v31;
      v39 = "Photo moment analysis timeout after %d seconds.";
      goto LABEL_33;
    }

    [(MSDDemoUpdateController *)self setMigrationDone:1];
  }

  return 1;
}

- (void)setAutomatedDeviceGroupStoreID
{
  v3 = +[MSDTargetDevice sharedInstance];
  getDeviceOptions = [v3 getDeviceOptions];

  if (getDeviceOptions)
  {
    v5 = [getDeviceOptions objectForKey:@"store_id"];
  }

  else
  {
    v5 = 0;
  }

  device = [(MSDDemoUpdateController *)self device];
  serialNumber = [device serialNumber];

  v8 = +[OSASystemConfiguration automatedDeviceGroup];
  if (!v8)
  {
    v11 = sub_100063A54(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF95C();
    }

    v12 = 0;
    v9 = 0;
    goto LABEL_26;
  }

  v9 = v8;
  if (!v5)
  {
    v11 = sub_100063A54(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF8D0();
    }

    goto LABEL_25;
  }

  if (!serialNumber)
  {
    v11 = sub_100063A54(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF850();
    }

    goto LABEL_25;
  }

  if ([(__CFString *)v8 containsString:v5])
  {
    v10 = [(__CFString *)v9 containsString:serialNumber];
    if (v10)
    {
      v11 = sub_100063A54(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v17 = @"AutomatedDeviceGroup";
        v18 = 2114;
        v19 = v9;
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = serialNumber;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ key with value %{public}@ already contains store ID %{public}@ and serial number %{public}@, skip appending store ID and serial number again", buf, 0x2Au);
      }

LABEL_25:
      v12 = 0;
LABEL_26:

      v13 = v9;
      goto LABEL_27;
    }
  }

  v13 = [NSString stringWithFormat:@"%@_%@_%@", v9, v5, serialNumber];

  v14 = sub_100063A54([OSASystemConfiguration setAutomatedDeviceGroup:v13]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Set new AutomatedDeviceGroup %@", buf, 0xCu);
  }

  v15 = +[OSASystemConfiguration automatedDeviceGroup];
  v12 = v15;
  if (!v15 || (v15 = [v15 isEqualToString:v13], (v15 & 1) == 0))
  {
    v11 = sub_100063A54(v15);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF7B4();
    }

    v9 = v13;
    goto LABEL_26;
  }

LABEL_27:
}

- (void)_configureMailAppForDemo
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(EMDaemonInterface);
  [v3 launchDaemon];
  clientState = [v3 clientState];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008BEA8;
  v9[3] = &unk_10016BAA0;
  v5 = v2;
  v10 = v5;
  [clientState setStateForDemoMode:v9];

  v6 = dispatch_time(0, 3000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  if (v7)
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000DF9E8();
    }
  }
}

- (BOOL)_signedManifestMinimumOSVersionCheck:(id)check error:(id *)error
{
  checkCopy = check;
  getInfo = [checkCopy getInfo];
  v8 = [getInfo objectForKey:@"MinimumOSVersion"];

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    getInfo2 = [checkCopy getInfo];
    v12 = [getInfo2 objectForKey:@"PartNumber"];
    getInfo3 = [checkCopy getInfo];
    v14 = [getInfo3 objectForKey:@"Revision"];
    v20 = 138543874;
    v21 = v12;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manifest partnumber/revision: %{public}@_%{public}@, minimum OS version is %{public}@", &v20, 0x20u);
  }

  if (v8 && (-[MSDDemoUpdateController device](self, "device"), v15 = objc_claimAutoreleasedReturnValue(), [v15 OSVersion], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v8, "higherVersionThan:", v16), v16, v15, v17))
  {
    sub_1000DFAB0(v8, self, error);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)_kickOffContentUpdateForManifest:(id)manifest withOptions:(id)options error:(id *)error
{
  manifestCopy = manifest;
  optionsCopy = options;
  v9 = [optionsCopy mutableCopy];
  v10 = +[MSDPlatform sharedInstance];
  if ([v10 macOS])
  {
  }

  else
  {
    v11 = +[MSDPlatform sharedInstance];
    v12 = [v11 iOS];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  getAppList = [manifestCopy getAppList];
  v14 = [getAppList objectForKey:@"com.retailtech.arkenstone"];
  if (v14 || ([getAppList objectForKey:@"com.apple.retailtech.experiences.mac"], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(getAppList, "objectForKey:", @"com.apple.ist.windward"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
LABEL_8:
    device = [(MSDDemoUpdateController *)self device];
    getSavedFlag = [device getSavedFlag];

    if ((getSavedFlag & 2) != 0)
    {
      v18 = +[MSDPricingUpdateController sharedInstance];
      completed = [v18 completed];

      if ((completed & 1) == 0)
      {
        v21 = sub_100063A54(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v68 = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Request builder to defer the update of app: %{public}@", buf, 0xCu);
        }

        [v9 setObject:v15 forKey:@"AppItemToDefer"];
      }
    }

    goto LABEL_13;
  }

  v15 = [getAppList objectForKey:@"com.apple.ist.DemoDiscoveryApp"];
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_13:

LABEL_14:
  v22 = [[MSDComponentBuilder alloc] initWithSignedManifest:manifestCopy andOptions:v9];
  v23 = +[MSDConfigurationProfileManager sharedInstance];
  [v23 uninstallAllDemoBundleConfigurationProfiles];

  buildComponentsNotInManifest = [(MSDComponentBuilder *)v22 buildComponentsNotInManifest];
  if (buildComponentsNotInManifest)
  {
    buildComponentsFromManifest = [(MSDComponentBuilder *)v22 buildComponentsFromManifest];
    if (buildComponentsFromManifest)
    {
      v26 = buildComponentsFromManifest;
      errorCopy = error;
      v52 = v9;
      v53 = optionsCopy;

      v27 = +[MSDDemoUpdateTimeKeeper sharedInstance];
      date = [v27 date];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v50 = v26;
      v51 = buildComponentsNotInManifest;
      v65[0] = buildComponentsNotInManifest;
      v65[1] = v26;
      obj = [NSArray arrayWithObjects:v65 count:2];
      v28 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (!v28)
      {
        v30 = 0;
LABEL_32:

        v22 = 0;
        manifestCopy = 0;
        v44 = 1;
        v9 = v52;
        optionsCopy = v53;
        v45 = v50;
        buildComponentsNotInManifest = v51;
        goto LABEL_33;
      }

      v29 = v28;
      v30 = 0;
      v31 = *v60;
LABEL_18:
      v32 = 0;
      while (1)
      {
        if (*v60 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v59 + 1) + 8 * v32);
        v34 = objc_autoreleasePoolPush();
        if ([v33 count])
        {
          v35 = +[MSDDemoUpdateTimeKeeper sharedInstance];
          v58 = v30;
          v36 = [v35 shouldCleanUp:&v58];
          v37 = v58;

          if (v36)
          {
            v39 = sub_100063A54(v38);
            if (os_log_type_enabled(&v39->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v68 = "[MSDDemoUpdateController _kickOffContentUpdateForManifest:withOptions:error:]";
              _os_log_impl(&_mh_execute_header, &v39->super, OS_LOG_TYPE_DEFAULT, "%s - Content update has been cancelled by users request", buf, 0xCu);
            }

            v30 = v37;
LABEL_38:
            v9 = v52;
            optionsCopy = v53;
            error = errorCopy;
            v45 = v50;
            buildComponentsNotInManifest = v51;

            objc_autoreleasePoolPop(v34);
            v22 = 0;
            manifestCopy = 0;
            if (!errorCopy)
            {
              goto LABEL_45;
            }

LABEL_39:
            v47 = v30;
            v44 = 0;
            *error = v30;
            goto LABEL_33;
          }

          v39 = [[MSDComponentProcessor alloc] initWithQoS:33];
          v40 = [[MSDComponentManager alloc] initWithComponents:v33 andProcessor:v39];
          [(MSDDemoUpdateController *)self setComponentManager:v40];
          componentManager = [(MSDDemoUpdateController *)self componentManager];
          [componentManager startProcessingAllComponents];

          componentManager2 = [(MSDDemoUpdateController *)self componentManager];
          v57 = v37;
          v43 = [componentManager2 waitForProcessingCompletionTillDate:date outError:&v57];
          v30 = v57;

          if ((v43 & 1) == 0 && ([v30 code] == 3727741184 || objc_msgSend(v30, "code") == 3727741185))
          {

            goto LABEL_38;
          }
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        objc_autoreleasePoolPop(v34);
        if (v29 == ++v32)
        {
          v29 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
          if (v29)
          {
            goto LABEL_18;
          }

          goto LABEL_32;
        }
      }
    }

    v63 = 0;
    sub_1000C1390(&v63, 3727740938, @"Manifest is corrupted.");
    v48 = v63;
  }

  else
  {
    v64 = 0;
    sub_1000C1390(&v64, 3727740938, @"Manifest is corrupted.");
    v48 = v64;
  }

  v30 = v48;
  v45 = 0;
  date = 0;
  if (error)
  {
    goto LABEL_39;
  }

LABEL_45:
  v44 = 0;
LABEL_33:

  return v44;
}

- (void)_stageContentPlistForManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = +[NSFileManager defaultManager];
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Staging Content.plist...", buf, 2u);
  }

  v7 = [(MSDDemoUpdateController *)self _contentPlistPathForManifest:manifestCopy];

  if (!v7)
  {
    v12 = sub_100063A54(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFE14();
    }

    goto LABEL_25;
  }

  v9 = [v5 fileExistsAtPath:v7];
  v10 = v9;
  v11 = sub_100063A54(v9);
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFBB0();
    }

LABEL_25:
    stringByDeletingLastPathComponent = 0;
    fileHash = 0;
    v15 = 0;
LABEL_35:

    goto LABEL_20;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = v7;
    v36 = 2114;
    v37 = @"/private/var/mobile/backup/var/mobile/Media/Content.plist";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Copying %{public}@ to %{public}@...", buf, 0x16u);
  }

  stringByDeletingLastPathComponent = [@"/private/var/mobile/backup/var/mobile/Media/Content.plist" stringByDeletingLastPathComponent];
  v14 = [v5 fileExistsAtPath:stringByDeletingLastPathComponent];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = sub_100063A54(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = stringByDeletingLastPathComponent;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating %{public}@...", buf, 0xCu);
    }

    v33 = 0;
    v17 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v33];
    v18 = v33;
    v15 = v18;
    if ((v17 & 1) == 0)
    {
      v12 = sub_100063A54(v18);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000DFC20();
      }

      fileHash = 0;
      goto LABEL_35;
    }
  }

  v19 = [NSURL fileURLWithString:v7];
  fileHash = [v19 fileHash];

  helperAgent = [(MSDDemoUpdateController *)self helperAgent];
  v22 = [helperAgent cloneFile:v7 to:@"/private/var/mobile/backup/var/mobile/Media/Content.plist" expectingHash:fileHash];

  v24 = sub_100063A54(v23);
  v12 = v24;
  if ((v22 & 1) == 0)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFC9C();
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = v7;
    v36 = 2114;
    v37 = @"/private/var/demo_backup/Metadata/.Content.plist";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Copying %{public}@ to %{public}@...", buf, 0x16u);
  }

  v25 = [v5 fileExistsAtPath:@"/private/var/demo_backup/Metadata"];
  if ((v25 & 1) == 0)
  {
    v26 = sub_100063A54(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = @"/private/var/demo_backup/Metadata";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Creating %{public}@...", buf, 0xCu);
    }

    helperAgent2 = [(MSDDemoUpdateController *)self helperAgent];
    v28 = [helperAgent2 prepareWorkDirectory:@"/private/var/demo_backup/Metadata" writableByNonRoot:0];

    if ((v28 & 1) == 0)
    {
      v12 = sub_100063A54(v29);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000DFD18();
      }

      goto LABEL_35;
    }
  }

  helperAgent3 = [(MSDDemoUpdateController *)self helperAgent];
  v31 = [helperAgent3 cloneFile:v7 to:@"/private/var/demo_backup/Metadata/.Content.plist" expectingHash:fileHash];

  if ((v31 & 1) == 0)
  {
    v12 = sub_100063A54(v32);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFD98();
    }

    goto LABEL_35;
  }

LABEL_20:
}

- (id)_selectCachedManifestWithError:(id *)error
{
  v4 = +[NSFileManager defaultManager];
  v5 = +[MSDTargetDevice sharedInstance];
  manifestPath = [v5 manifestPath];

  stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];
  v65 = objc_opt_new();
  v8 = +[MSDLanguageAndRegionManager sharedInstance];
  getCurrentDevicePreferredLanguage = [v8 getCurrentDevicePreferredLanguage];

  v9 = +[MSDLanguageAndRegionManager sharedInstance];
  getCurrentDeviceRegion = [v9 getCurrentDeviceRegion];

  v12 = sub_100063A54(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = getCurrentDevicePreferredLanguage;
    v76 = 2114;
    v77 = getCurrentDeviceRegion;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Selecting cached bundle with preferred language code %{public}@; region %{public}@", buf, 0x16u);
  }

  v13 = [MSDSignedManifestFactoryMetadata loadManifestMetadata:@"/var/MSDWorkContainer/.MSD_cache_content_plist"];
  v61 = stringByDeletingLastPathComponent;
  v62 = v4;
  v60 = v13;
  if (!v13 && [0 count])
  {
    sub_1000DFE50();
    v17 = 0;
    v35 = 0;
    goto LABEL_61;
  }

  selfCopy = self;
  v64 = manifestPath;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v70;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v69 + 1) + 8 * i);
        supportedRegions = [v20 supportedRegions];
        v22 = [supportedRegions containsObject:getCurrentDeviceRegion];

        if (v22)
        {
          [v65 addObject:v20];
        }

        if ([v20 isPrimaryBundle])
        {
          v23 = v20;

          v25 = sub_100063A54(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found default primary bundle: %{public}@", buf, 0xCu);
          }

          v17 = v23;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v26 = [v65 count];
  manifestPath = v64;
  if (v26)
  {
    v27 = sub_100063A54(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v65 count];
      *buf = 134218498;
      *&buf[4] = v28;
      v76 = 2114;
      v77 = getCurrentDeviceRegion;
      v78 = 2114;
      v79 = v65;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found %lu bundles for region %{public}@: %{public}@", buf, 0x20u);
    }

    v29 = [MSDSignedManifestFactoryMetadata languageIdentifiersForMetadataList:v65];
    v74 = getCurrentDevicePreferredLanguage;
    v30 = [NSArray arrayWithObjects:&v74 count:1];
    v31 = [NSLocale matchedLanguagesFromAvailableLanguages:v29 forPreferredLanguages:v30];

    if ([v31 count])
    {
      firstObject = [v31 firstObject];
      v33 = sub_100063A54(firstObject);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = firstObject;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Found matched language code: %{public}@", buf, 0xCu);
      }

      v34 = [MSDSignedManifestFactoryMetadata metadataWithLanugageIdentifier:firstObject fromList:v65];
      if (v34)
      {
        v35 = v34;

        goto LABEL_35;
      }

      v37 = sub_100063A54(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000DFEEC();
      }
    }
  }

  v38 = sub_100063A54(v26);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Did not find matching bundle; selecting default primary bundle", buf, 2u);
  }

  v36 = v17;
  v35 = v36;
LABEL_35:
  v39 = sub_100063A54(v36);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Selected bundle metadata: %{public}@", buf, 0xCu);
  }

  fileName = [v35 fileName];

  if (!fileName)
  {
    sub_1000E01C0();
LABEL_61:
    v46 = 0;
    v43 = 0;
    v52 = *buf;
    goto LABEL_62;
  }

  v73[0] = @"/var/MSDWorkContainer/.MSD_cache_manifest";
  fileName2 = [v35 fileName];
  v73[1] = fileName2;
  v42 = [NSArray arrayWithObjects:v73 count:2];
  v43 = [NSString pathWithComponents:v42];

  v45 = sub_100063A54(v44);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v43;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Loading manifest file from path %{public}@", buf, 0xCu);
  }

  v46 = [MSDSignedManifestFactory createSignedManifestFromManifestFile:v43];
  v47 = sub_100063A54(v46);
  v48 = v47;
  if (!v46)
  {
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000E0150();
    }

    v68 = 0;
    sub_1000C1390(&v68, 3727740942, @"Failed to load cached manifest file");
    v52 = v68;
    v46 = 0;
    goto LABEL_62;
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v43;
    v76 = 2114;
    v77 = v64;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Copying manifest file from %{public}@ to %{public}@", buf, 0x16u);
  }

  if ([v62 fileExistsAtPath:v61] & 1) != 0 || (-[MSDDemoUpdateController helperAgent](selfCopy, "helperAgent"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "prepareWorkDirectory:writableByNonRoot:", v61, 1), v49, (v50))
  {
    if ([v62 fileExistsAtPath:v64])
    {
      v67 = 0;
      v51 = [v62 removeItemAtPath:v64 error:&v67];
      v52 = v67;
      if ((v51 & 1) == 0)
      {
        sub_1000E0000(v64);
        goto LABEL_62;
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
    v66 = v52;
    v54 = [v62 copyItemAtPath:v43 toPath:v64 error:&v66];
    v52 = v66;

    if (v54)
    {
      v46 = v46;
      v55 = v46;
      manifestPath = v64;
      goto LABEL_51;
    }

    sub_1000E00B8(v52);
    manifestPath = v64;
  }

  else
  {
    sub_1000DFF5C(v61);
    v52 = 0;
  }

LABEL_62:
  if (error)
  {
    v57 = v52;
    v55 = 0;
    *error = v52;
  }

  else
  {
    v55 = 0;
  }

LABEL_51:

  return v55;
}

- (id)_contentPlistPathForManifest:(id)manifest
{
  manifestCopy = manifest;
  getInfo = [manifestCopy getInfo];
  v5 = [getInfo objectForKey:@"PartNumber"];

  getInfo2 = [manifestCopy getInfo];

  v7 = [getInfo2 objectForKey:@"Revision"];

  if (v5)
  {
    if (v7)
    {
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@_%d.plist", @"/var/MSDWorkContainer/.MSD_cache_content_plist", v5, [v7 intValue]);
      goto LABEL_4;
    }

    sub_1000E025C(v8);
  }

  else
  {
    sub_1000E02F8(v8);
  }

  v9 = 0;
LABEL_4:

  return v9;
}

- (BOOL)enrolled
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  if (v3)
  {
    v4 = objc_alloc_init(MSDIsEnrolledRequest);
    v5 = +[MSDServerRequestHandler sharedInstance];
    v6 = [v5 handleRequestSync:v4];

    error = [v6 error];
    if (error)
    {
      isEnrolled = 0;
    }

    else
    {
      isEnrolled = [v6 isEnrolled];
    }
  }

  else
  {
    isEnrolled = 0;
  }

  return isEnrolled;
}

@end