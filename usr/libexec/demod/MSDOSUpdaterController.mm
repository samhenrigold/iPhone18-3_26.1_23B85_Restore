@interface MSDOSUpdaterController
+ (id)sharedInstance;
- (BOOL)cleanup;
- (BOOL)doesAvailableUpdateVersion:(id)version andUpdateBuild:(id)build matchExpectedUpdateVersion:(id)updateVersion andUpdateBuild:(id)updateBuild;
- (BOOL)isOSUpdateInProgress;
- (MSDOSUpdaterController)init;
- (id)prettyPrintSUDescriptor:(id)descriptor;
- (void)bail:(const char *)bail error:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidFinish:(id)finish;
- (void)client:(id)client installDidStart:(id)start;
- (void)downloadFailed:(id)failed;
- (void)downloadProgressChanged:(id)changed withPercent:(float)percent;
- (void)saveAvailableOSVersion:(id)version andOSBuild:(id)build;
- (void)scanResult:(id)result error:(id)error;
- (void)startOSUpdate;
@end

@implementation MSDOSUpdaterController

+ (id)sharedInstance
{
  if (qword_1001A59F0 != -1)
  {
    sub_1000E6914();
  }

  v3 = qword_1001A59E8;

  return v3;
}

- (MSDOSUpdaterController)init
{
  v6.receiver = self;
  v6.super_class = MSDOSUpdaterController;
  v2 = [(MSDOSUpdaterController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUManagerClient);
    manager = v2->_manager;
    v2->_manager = v3;

    [(SUManagerClient *)v2->_manager setDelegate:v2];
  }

  return v2;
}

- (BOOL)isOSUpdateInProgress
{
  v2 = +[MSDTargetDevice sharedInstance];
  previousiOSBuild = [v2 previousiOSBuild];

  if (previousiOSBuild)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "An OS update is already in progress!", v7, 2u);
    }
  }

  return previousiOSBuild != 0;
}

- (void)startOSUpdate
{
  v3 = +[MSDTargetDevice sharedInstance];
  previousiOSBuild = [v3 previousiOSBuild];
  getOSUpdateRequest = [v3 getOSUpdateRequest];
  v6 = [getOSUpdateRequest objectForKey:@"OSVersion"];
  v7 = [v6 componentsSeparatedByString:@"_"];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  if ([v7 count] < 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 objectAtIndex:1];
  }

  [(MSDOSUpdaterController *)self setExpectedOSVersion:v8];
  [(MSDOSUpdaterController *)self setExpectedOSBuild:v9];
  if (previousiOSBuild)
  {
    oSBuild = [v3 OSBuild];
    v11 = [previousiOSBuild isEqualToString:oSBuild];

    v13 = sub_100063A54(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        *buf = 138543362;
        v44 = previousiOSBuild;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "OS build number didn't change, still %{public}@, indicating a non-successful OS update.", buf, 0xCu);
      }

      [v3 clearCurrentiOSBuild];
      [v3 clearOSUpdateRequest];
      [(MSDOSUpdaterController *)self bail:"[MSDOSUpdaterController startOSUpdate]" error:0];
    }

    else
    {
      if (v14)
      {
        oSBuild2 = [v3 OSBuild];
        *buf = 138543618;
        v44 = previousiOSBuild;
        v45 = 2114;
        v46 = oSBuild2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "OS build has been changed from %{public}@ to %{public}@, indicating a successful OS update.", buf, 0x16u);
      }

      v25 = +[MSDProgressUpdater sharedInstance];
      [v25 updateStage:14];

      v27 = sub_100063A54(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Waiting for data migration to finish", buf, 2u);
      }

      v28 = DMPerformMigration();
      v29 = sub_100063A54(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Data migration finished.", buf, 2u);
      }

      v30 = +[MSDUIHelper sharedInstance];
      [v30 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

      if (([v3 isPressDemoDevice] & 1) == 0)
      {
        v31 = +[MSDConfigurationProfileManager sharedInstance];
        [v31 installDefaultConfigurationProfile];
      }

      sleep(0xB4u);
      [v3 clearCurrentiOSBuild];
      [v3 clearOSUpdateRequest];
      v32 = +[MSDAnalytics sharedInstance];
      [v32 disableCoreAnalticsTransformSampling];

      v33 = +[MSDTargetDevice sharedInstance];
      [v33 applyStagedDevicePreferences:0];

      v34 = 0;
      if (+[MSDGreyMatterHelper isOptedIn])
      {
        sleep(0x1Eu);
        v35 = +[MSDAssetUpdater sharedInstance];
        v42 = 0;
        [v35 downloadAssetsWithError:&v42];
        v34 = v42;

        v36 = +[MSDGreyMatterHelper waitForGMAvailability];
        if ((v36 & 1) == 0)
        {
          v37 = sub_100063A54(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1000E6928(v37);
          }
        }
      }

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000A4950;
      v40[3] = &unk_100169B48;
      v41 = v3;
      [v41 waitForBuddy:v40];
    }
  }

  else
  {
    v15 = +[MSDUIHelper sharedInstance];
    [v15 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

    v17 = sub_100063A54(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wait for some extra time to make sure everything get ready for OS update.", buf, 2u);
    }

    sleep(0x1Eu);
    v18 = sub_100063A54([(MSDOSUpdaterController *)self cleanup]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Wait for some extra time to make sure that the cancelDownload and purgeDownload complete before starting a scan.", buf, 2u);
    }

    sleep(0x1Eu);
    if (v8)
    {
      v19 = sub_100063A54([(MSDOSUpdaterController *)self setStarted:1]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting to scan for updates...", buf, 2u);
      }

      v20 = +[MSDProgressUpdater sharedInstance];
      [v20 updateStage:23];

      [v3 clearMinOSVersionAvailable];
      v21 = objc_alloc_init(SUScanOptions);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000A495C;
      v39[3] = &unk_10016C048;
      v39[4] = self;
      v22 = objc_retainBlock(v39);
      [v21 setForced:1];
      manager = [(MSDOSUpdaterController *)self manager];
      [manager scanForUpdates:v21 withScanResults:v22];
    }

    else
    {
      v21 = [NSError errorDomainMSDWithCode:3727741032 message:@"OS update failed."];
      v38 = sub_100063A54(v21);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "UpdateOS command was sent in an invalid format.", buf, 2u);
      }

      [(MSDOSUpdaterController *)self bail:"[MSDOSUpdaterController startOSUpdate]" error:v21];
    }
  }
}

- (BOOL)cleanup
{
  if (![(MSDOSUpdaterController *)self purged])
  {
    v3 = +[MSDTargetDevice sharedInstance];
    [v3 clearCurrentiOSBuild];

    v4 = dispatch_semaphore_create(0);
    manager = [(MSDOSUpdaterController *)self manager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A4B04;
    v14[3] = &unk_10016BAA0;
    v6 = v4;
    v15 = v6;
    [manager purgeDownload:v14];

    v7 = dispatch_time(0, 60000000000);
    v8 = dispatch_semaphore_wait(v6, v7);
    if (v8)
    {
      v9 = sub_100063A54(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Didn't wait long enough for purge to complete.", v13, 2u);
      }
    }

    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Clean up is done.", v13, 2u);
    }

    [(MSDOSUpdaterController *)self setPurged:1];
  }

  return 0;
}

- (void)bail:(const char *)bail error:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    if (code == 3727741185 || (code = [v7 code], code > 3727741029) && (code = objc_msgSend(v7, "code"), code < 3727741034))
    {
      v9 = sub_100063A54(code);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E696C(bail, v7);
      }

      v10 = v7;
    }

    else
    {
      v15 = sub_100063A54(code);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E696C(bail, v7);
      }

      localizedDescription = [v7 localizedDescription];
      v10 = [NSError errorDomainMSDWithCode:3727741032 message:@"OS update failed." reason:localizedDescription];
    }

    v12 = +[MSDAnalyticsEventHandler sharedInstance];
    v13 = v12;
    v14 = v7;
  }

  else
  {
    v11 = sub_100063A54(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E6A00(bail, v11);
    }

    v10 = [NSError errorDomainMSDWithCode:3727741032 message:@"OS update failed."];
    v12 = +[MSDAnalyticsEventHandler sharedInstance];
    v13 = v12;
    v14 = v10;
  }

  [v12 sendOSUpdateFailureEvent:v14];

  [(MSDOSUpdaterController *)self cleanup];
  if ([v7 code] != 3727741185)
  {
    v17 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v17 demoUpdateFailed:v10];

    v18 = +[MSDTestPreferences sharedInstance];
    timeShowingFatalError = [v18 timeShowingFatalError];

    if (timeShowingFatalError)
    {
      v21 = sub_100063A54(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 67109120;
        v24[1] = timeShowingFatalError;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Override MSDTimeShowingFatalError timeout: %u", v24, 8u);
      }
    }

    else
    {
      timeShowingFatalError = 900;
    }

    v22 = +[MSDDemoUpdateTimeKeeper sharedInstance];
    v23 = [v22 setCompletionTimeForFatalError:timeShowingFatalError];
  }
}

- (void)saveAvailableOSVersion:(id)version andOSBuild:(id)build
{
  versionCopy = version;
  buildCopy = build;
  v6 = buildCopy;
  if (versionCopy)
  {
    if (buildCopy)
    {
      buildCopy = [NSString stringWithFormat:@"%@_%@", versionCopy, buildCopy];
    }

    else
    {
      buildCopy = versionCopy;
    }

    v8 = buildCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[MSDTargetDevice sharedInstance];
  [v9 saveMinOSVersionAvailable:v8];
}

- (void)scanResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = errorCopy;
  if (resultCopy)
  {
    preferredDescriptor = [resultCopy preferredDescriptor];
    alternateDescriptor = [resultCopy alternateDescriptor];
    latestUpdate = [resultCopy latestUpdate];
    v12 = sub_100063A54(latestUpdate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received OS update scan results:", buf, 2u);
    }

    v14 = sub_100063A54(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MSDOSUpdaterController *)self prettyPrintSUDescriptor:preferredDescriptor];
      *buf = 138543362;
      v49 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, ">> Preferred update: %{public}@", buf, 0xCu);
    }

    v17 = sub_100063A54(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(MSDOSUpdaterController *)self prettyPrintSUDescriptor:alternateDescriptor];
      *buf = 138543362;
      v49 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, ">> Alternate update: %{public}@", buf, 0xCu);
    }

    v46 = v8;

    v20 = sub_100063A54(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(MSDOSUpdaterController *)self prettyPrintSUDescriptor:latestUpdate];
      *buf = 138543362;
      v49 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, ">> Latest update: %{public}@", buf, 0xCu);
    }

    v22 = latestUpdate;

    productVersion = [preferredDescriptor productVersion];
    productBuildVersion = [preferredDescriptor productBuildVersion];
    expectedOSVersion = [(MSDOSUpdaterController *)self expectedOSVersion];
    expectedOSBuild = [(MSDOSUpdaterController *)self expectedOSBuild];
    v27 = [(MSDOSUpdaterController *)self doesAvailableUpdateVersion:productVersion andUpdateBuild:productBuildVersion matchExpectedUpdateVersion:expectedOSVersion andUpdateBuild:expectedOSBuild];

    v28 = preferredDescriptor;
    if (v27 & 1) != 0 || ([alternateDescriptor productVersion], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(alternateDescriptor, "productBuildVersion"), v30 = objc_claimAutoreleasedReturnValue(), -[MSDOSUpdaterController expectedOSVersion](self, "expectedOSVersion"), v31 = objc_claimAutoreleasedReturnValue(), -[MSDOSUpdaterController expectedOSBuild](self, "expectedOSBuild"), v32 = objc_claimAutoreleasedReturnValue(), v33 = -[MSDOSUpdaterController doesAvailableUpdateVersion:andUpdateBuild:matchExpectedUpdateVersion:andUpdateBuild:](self, "doesAvailableUpdateVersion:andUpdateBuild:matchExpectedUpdateVersion:andUpdateBuild:", v29, v30, v31, v32), v32, v31, v30, v29, v28 = alternateDescriptor, (v33))
    {
      v34 = v28;
      v35 = objc_alloc_init(SUMutableDownloadMetadata);
      v36 = sub_100063A54(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(MSDOSUpdaterController *)self prettyPrintSUDescriptor:v34];
        *buf = 138543362;
        v49 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Will start to download update: %{public}@", buf, 0xCu);
      }

      v38 = +[MSDProgressUpdater sharedInstance];
      [v38 updateStage:18];

      [v35 setDownloadOnly:1];
      v39 = [SUDownloadPolicyFactory userDownloadPolicyForDescriptor:v34 existingPolicy:0 allowCellularOverride:1];
      [v35 setDownloadFeeAgreementStatus:1];
      [v35 applyDownloadPolicy:v39];
      v40 = [[SUDownloadOptions alloc] initWithMetadata:v35 andDescriptor:v34];
      manager = [(MSDOSUpdaterController *)self manager];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000A5560;
      v47[3] = &unk_10016BAA0;
      v47[4] = self;
      [manager startDownloadWithOptions:v40 withResult:v47];
    }

    else
    {
      v43 = [NSError errorDomainMSDWithCode:3727741030 message:@"Unexpected OS update version found."];
      productVersion2 = [v22 productVersion];
      productBuildVersion2 = [v22 productBuildVersion];
      [(MSDOSUpdaterController *)self saveAvailableOSVersion:productVersion2 andOSBuild:productBuildVersion2];

      [(MSDOSUpdaterController *)self bail:"[MSDOSUpdaterController scanResult:error:]" error:v43];
    }

    v8 = v46;
  }

  else
  {
    v42 = sub_100063A54(errorCopy);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No update found.", buf, 2u);
    }

    [(MSDOSUpdaterController *)self bail:"[MSDOSUpdaterController scanResult:error:]" error:v8];
  }
}

- (id)prettyPrintSUDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [descriptorCopy updateType];
  v6 = SUStringFromUpdateType();
  humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
  productSystemName = [descriptorCopy productSystemName];
  productVersion = [descriptorCopy productVersion];
  productBuildVersion = [descriptorCopy productBuildVersion];
  releaseType = [descriptorCopy releaseType];
  downloadSize = [descriptorCopy downloadSize];

  v13 = [NSString stringWithFormat:@"<%@[%p] Update type: %@, Update name: %@, System name: %@, OS version: %@, Build version: %@, Release type: %@, Download size: %lld>", v5, self, v6, humanReadableUpdateName, productSystemName, productVersion, productBuildVersion, releaseType, downloadSize];

  return v13;
}

- (void)client:(id)client downloadDidStart:(id)start
{
  if ([(MSDOSUpdaterController *)self started:client])
  {

    [(MSDOSUpdaterController *)self setPurged:0];
  }
}

- (void)client:(id)client downloadDidFinish:(id)finish
{
  v5 = [(MSDOSUpdaterController *)self started:client];
  if (v5)
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Downloading finished, will install it.", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A57DC;
    block[3] = &unk_100169B70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  changeCopy = change;
  progress = [changeCopy progress];
  phase = [progress phase];

  progress2 = [changeCopy progress];

  [progress2 percentComplete];
  v9 = v8;

  LODWORD(v10) = v9;
  [(MSDOSUpdaterController *)self downloadProgressChanged:phase withPercent:v10];
}

- (void)client:(id)client installDidStart:(id)start
{
  if ([(MSDOSUpdaterController *)self started:client])
  {
    v4 = +[MSDTargetDevice sharedInstance];
    [v4 saveCurrentiOSBuild];

    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Installation started.", v7, 2u);
    }
  }
}

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  errorCopy = error;
  if ([(MSDOSUpdaterController *)self started])
  {
    [(MSDOSUpdaterController *)self bail:"[MSDOSUpdaterController client:installDidFail:withError:]" error:errorCopy];
  }
}

- (void)client:(id)client installDidFinish:(id)finish
{
  v4 = [(MSDOSUpdaterController *)self started:client];
  if (v4)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[MSDOSUpdaterController client:installDidFinish:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
    }
  }
}

- (void)downloadProgressChanged:(id)changed withPercent:(float)percent
{
  changedCopy = changed;
  if ([(MSDOSUpdaterController *)self started])
  {
    v7 = +[MSDDemoUpdateTimeKeeper sharedInstance];
    v17 = 0;
    v8 = [v7 shouldCleanUp:&v17];
    v9 = v17;

    if (v8)
    {
      [(MSDOSUpdaterController *)self setStarted:0];
      v11 = +[MSDDemoUpdateStatusHub sharedInstance];
      [v11 demoUpdateFailed:v9];

      manager = [(MSDOSUpdaterController *)self manager];
      [manager cancelDownload:&stru_10016C088];
    }

    v13 = sub_100063A54(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = changedCopy;
      v20 = 2048;
      percentCopy = percent;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Download/Prepare progress: %{public}@: %lf", buf, 0x16u);
    }

    if ([changedCopy isEqualToString:@"SUDownloadPhaseFetching"])
    {
      v14 = +[MSDDemoUpdateStatusHub sharedInstance];
      v15 = v14;
      v16 = (percent * 50.0);
LABEL_11:
      [v14 demoUpdateProgress:v16];

      goto LABEL_12;
    }

    if ([changedCopy isEqualToString:@"SUDownloadPhasePreparingForInstallation"])
    {
      v14 = +[MSDDemoUpdateStatusHub sharedInstance];
      v15 = v14;
      v16 = (percent * 50.0) + 50;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
}

- (void)downloadFailed:(id)failed
{
  failedCopy = failed;
  started = [(MSDOSUpdaterController *)self started];
  if (started)
  {
    v6 = sub_100063A54(started);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Download failed.", v7, 2u);
    }

    [(MSDOSUpdaterController *)self bail:"[MSDOSUpdaterController downloadFailed:]" error:failedCopy];
  }
}

- (BOOL)doesAvailableUpdateVersion:(id)version andUpdateBuild:(id)build matchExpectedUpdateVersion:(id)updateVersion andUpdateBuild:(id)updateBuild
{
  versionCopy = version;
  buildCopy = build;
  updateVersionCopy = updateVersion;
  updateBuildCopy = updateBuild;
  v13 = updateBuildCopy;
  v14 = 0;
  if (versionCopy && updateVersionCopy)
  {
    updateBuildCopy = [updateVersionCopy length];
    if (updateBuildCopy)
    {
      updateBuildCopy = [versionCopy isEqualToString:updateVersionCopy];
      v14 = updateBuildCopy;
      if (!v13 || !updateBuildCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!v13)
    {
LABEL_10:
      v14 = 1;
      goto LABEL_11;
    }

    updateBuildCopy = [v13 length];
    if (updateBuildCopy)
    {
      updateBuildCopy = [buildCopy isEqualToString:v13];
      v14 = updateBuildCopy;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v15 = sub_100063A54(updateBuildCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138544386;
    v18 = versionCopy;
    v19 = 2114;
    v20 = buildCopy;
    v21 = 2114;
    v22 = updateVersionCopy;
    v23 = 2114;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Does available update version (%{public}@, %{public}@) match expected update version (%{public}@, %{public}@): %{BOOL}d", &v17, 0x30u);
  }

  return v14;
}

@end