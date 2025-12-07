@interface SUSUICommandLineTestServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)ddmInstallNow;
- (void)destroyInstallationKeybag;
- (void)dismissAllAlerts;
- (void)downloadDidFinish;
- (void)getAlertStatus:(id)status;
- (void)getDDMAlertStatus:(id)status;
- (void)presentMiniAlert:(unint64_t)alert errorCode:(id)code downloadDescriptor:(id)descriptor scanResultsDescriptor:(id)resultsDescriptor autoInstallForecast:(id)forecast andRollbackDescriptor:(id)rollbackDescriptor result:(id)result;
- (void)reboot:(BOOL)reboot;
- (void)run;
- (void)setInstallOperation:(id)operation;
- (void)setPasscodePolicy:(unint64_t)policy;
- (void)setRestartCountdownOverrideIntervalSeconds:(id)seconds;
- (void)setUpdateToInstall:(id)install;
- (void)showAuthenticationUIWithOptions:(unint64_t)options result:(id)result;
- (void)showDDMAlert:(int64_t)alert install:(BOOL)install;
- (void)showEmergencyCallUIWithOptions:(unint64_t)options result:(id)result;
- (void)showFollowUp:(unint64_t)up;
- (void)showLaggardsUi:(unint64_t)ui usingFakeData:(BOOL)data result:(id)result;
- (void)showMiniAlertWithDescriptors:(unint64_t)descriptors errorCode:(id)code downloadDescriptor:(id)descriptor scanResultsDescriptor:(id)resultsDescriptor autoInstallForecast:(id)forecast andRollbackDescriptor:(id)rollbackDescriptor result:(id)result;
- (void)showMiniAlertWithScan:(unint64_t)scan errorCode:(id)code result:(id)result;
- (void)simulateComingFromOTAUpdate;
- (void)toggleSettingsBadge:(BOOL)badge;
@end

@implementation SUSUICommandLineTestServer

+ (id)sharedInstance
{
  v5 = &unk_6F870;
  location = 0;
  objc_storeStrong(&location, &stru_5ED60);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F868;

  return v2;
}

- (void)run
{
  selfCopy = self;
  v7[1] = a2;
  if (_BSIsInternalInstall())
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1109C;
    v6 = &unk_5CCB0;
    v7[0] = selfCopy;
    v10 = &unk_6F878;
    location = 0;
    objc_storeStrong(&location, &v2);
    if (*v10 != -1)
    {
      dispatch_once(v10, location);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v7, 0);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, listener);
  v16 = 0;
  objc_storeStrong(&v16, connection);
  v10 = [v16 valueForEntitlement:@"com.apple.softwareupdateservices.ui.cli.allowed"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    [v16 _setQueue:selfCopy->_queue];
    [v16 setInterruptionHandler:?];
    [v16 setInvalidationHandler:0];
    v5 = v16;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUSUICommandLineToolClientInterface];
    [v5 setRemoteObjectInterface:?];

    v7 = v16;
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUSUICommandLineToolServerInterface];
    [v7 setExportedInterface:?];

    [v16 setExportedObject:selfCopy];
    [v16 resume];
    v12 = SUSUILog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v20, v16);
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding plugin client: %@", v20, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v19 = 1;
    v13 = 1;
  }

  else
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v21, v16);
      _os_log_impl(&dword_0, v15, v14, "Ignoring plugin client: %@", v21, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v19 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (void)showMiniAlertWithScan:(unint64_t)scan errorCode:(id)code result:(id)result
{
  selfCopy = self;
  v27 = a2;
  scanCopy = scan;
  location = 0;
  objc_storeStrong(&location, code);
  v24 = 0;
  objc_storeStrong(&v24, result);
  BSDispatchQueueAssert();
  v23 = SUSUILog();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_11844(v29, scanCopy);
    _os_log_impl(&dword_0, v23, v22, "Got mini-alert to show: %d", v29, 8u);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&selfCopy->stringResponse, @"[] Locking for a new update for the alert.\n");
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  _download = [(SUSUISoftwareUpdateController *)v5 _download];

  v6 = +[SUSUISoftwareUpdateController sharedInstance];
  _availableRollback = [(SUSUISoftwareUpdateController *)v6 _availableRollback];

  v8 = +[SUSUISoftwareUpdateController sharedInstance];
  v7 = objc_alloc_init(SUScanOptions);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1187C;
  v14 = &unk_5EDB0;
  v15 = selfCopy;
  v19[1] = scanCopy;
  v16 = location;
  v17 = _download;
  v18 = _availableRollback;
  v19[0] = v24;
  [(SUSUISoftwareUpdateController *)v8 scanForUpdates:v7 withScanResults:&v10];

  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&_availableRollback, 0);
  objc_storeStrong(&_download, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

- (void)showMiniAlertWithDescriptors:(unint64_t)descriptors errorCode:(id)code downloadDescriptor:(id)descriptor scanResultsDescriptor:(id)resultsDescriptor autoInstallForecast:(id)forecast andRollbackDescriptor:(id)rollbackDescriptor result:(id)result
{
  selfCopy = self;
  v21 = a2;
  descriptorsCopy = descriptors;
  location = 0;
  objc_storeStrong(&location, code);
  v18 = 0;
  objc_storeStrong(&v18, descriptor);
  v17 = 0;
  objc_storeStrong(&v17, resultsDescriptor);
  v16 = 0;
  objc_storeStrong(&v16, forecast);
  v15 = 0;
  objc_storeStrong(&v15, rollbackDescriptor);
  v14 = 0;
  objc_storeStrong(&v14, result);
  BSDispatchQueueAssert();
  v13 = SUSUILog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_11844(v23, descriptorsCopy);
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Got mini-alert to show: %d", v23, 8u);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&selfCopy->stringResponse, @"[] Making alert with given descriptors.\n");
  [(SUSUICommandLineTestServer *)selfCopy presentMiniAlert:descriptorsCopy errorCode:location downloadDescriptor:v18 scanResultsDescriptor:v17 autoInstallForecast:v16 andRollbackDescriptor:v15 result:v14];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

- (void)presentMiniAlert:(unint64_t)alert errorCode:(id)code downloadDescriptor:(id)descriptor scanResultsDescriptor:(id)resultsDescriptor autoInstallForecast:(id)forecast andRollbackDescriptor:(id)rollbackDescriptor result:(id)result
{
  selfCopy = self;
  v101 = a2;
  alertCopy = alert;
  location = 0;
  objc_storeStrong(&location, code);
  v98 = 0;
  objc_storeStrong(&v98, descriptor);
  v97 = 0;
  objc_storeStrong(&v97, resultsDescriptor);
  v96 = 0;
  objc_storeStrong(&v96, forecast);
  v95 = 0;
  objc_storeStrong(&v95, rollbackDescriptor);
  v94 = 0;
  objc_storeStrong(&v94, result);
  v92 = 0;
  if (v98 || (v65 = 1, ![(SUSUICommandLineTestServer *)selfCopy miniAlertNeedsDownloadDescriptor:alertCopy]))
  {
    if (v97 && (v93 = [v97 preferredDescriptor], v92 = 1, v93) || (v65 = 1, !-[SUSUICommandLineTestServer miniAlertNeedsScanResultsDescriptor:](selfCopy, "miniAlertNeedsScanResultsDescriptor:", alertCopy)))
    {
      if (v96 || (v65 = 1, ![(SUSUICommandLineTestServer *)selfCopy miniAlertNeedsAutoInstallForecastDescriptor:alertCopy]))
      {
        v64 = 0;
        if (!v95)
        {
          v64 = [(SUSUICommandLineTestServer *)selfCopy miniAlertNeedsRollbackDescriptor:alertCopy];
        }

        v65 = v64;
      }
    }
  }

  if (v92)
  {
  }

  if (v65)
  {
    v9 = [(NSString *)selfCopy->stringResponse stringByAppendingString:@"[] Got empty descriptors. Can't show the alert.\n[] Exits.\n"];
    stringResponse = selfCopy->stringResponse;
    selfCopy->stringResponse = v9;

    if (v94)
    {
      v62 = v94;
      v61 = selfCopy->stringResponse;
      v63 = [NSError buildCheckedSUCoreError:8100 underlying:0 description:@"Got empty descriptors. Can't show the alert."];
      (v62)[2](v62, v61);
    }

    v91 = 1;
  }

  else
  {
    v88 = 0;
    if (v98)
    {
      descriptor = [v98 descriptor];
      v88 = 1;
      v11 = descriptor;
    }

    else
    {
      v11 = 0;
    }

    v90 = v11;
    if (v88)
    {
    }

    v87[8] = 0;
    v86 = +[SUSUISoftwareUpdateController sharedInstance];
    *v87 = BYSetupAssistantNeedsToRun();
    switch(alertCopy)
    {
      case 0uLL:
        v59 = [SUSUISoftwareUpdateAvailableAlertItem alloc];
        latestUpdate = [v97 latestUpdate];
        v12 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v59 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];
        v13 = *&v87[1];
        *&v87[1] = v12;

        break;
      case 1uLL:
        v14 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:v98 style:1 softwareUpdateController:v86 tryTonightInstallOperationForecast:v96 installOptions:0];
        v15 = *&v87[1];
        *&v87[1] = v14;

        break;
      case 2uLL:
        v16 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:v98 style:2 softwareUpdateController:v86 tryTonightInstallOperationForecast:v96 installOptions:0];
        v17 = *&v87[1];
        *&v87[1] = v16;

        break;
      case 3uLL:
        v18 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:v98 style:3 softwareUpdateController:v86 tryTonightInstallOperationForecast:v96 installOptions:0];
        v19 = *&v87[1];
        *&v87[1] = v18;

        break;
      case 4uLL:
        v20 = [[SUSUISoftwareUpdateInstallLaterAlertItem alloc] initWithDescriptor:v90 softwareUpdateController:v86 tryTonightOperationForecast:v96];
        v21 = *&v87[1];
        *&v87[1] = v20;

        break;
      case 5uLL:
        if (v87[0])
        {
          v85 = SUSUILog();
          v84 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            log = v85;
            type = v84;
            sub_2544(v83);
            _os_log_impl(&dword_0, log, type, "Buddy running. Not showing install failure UI", v83, 2u);
          }

          objc_storeStrong(&v85, 0);
        }

        else
        {
          v22 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateUnableToInstallAlertItem alloc] initWithDescriptor:v90 softwareUpdateController:v86];
          v23 = *&v87[1];
          *&v87[1] = v22;

          if (location)
          {
            v58 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", SUErrorDomain, [location integerValue], 0);
            [*&v87[1] setError:?];
          }
        }

        break;
      case 6uLL:
        v24 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateVerifyingUpdateAlertItem alloc] initWithDescriptor:v90 softwareUpdateController:v86];
        v25 = *&v87[1];
        *&v87[1] = v24;

        break;
      case 7uLL:
        if (v87[0])
        {
          v82 = SUSUILog();
          v81 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v82;
            v54 = v81;
            sub_2544(v80);
            _os_log_impl(&dword_0, v53, v54, "Buddy running. Not showing verification failure UI", v80, 2u);
          }

          objc_storeStrong(&v82, 0);
        }

        else
        {
          v26 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateVerificationFailedAlertItem alloc] initWithDescriptor:v90 softwareUpdateController:v86];
          v27 = *&v87[1];
          *&v87[1] = v26;

          if (location)
          {
            v55 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", SUErrorDomain, [location integerValue], 0);
            [*&v87[1] setError:?];
          }
        }

        break;
      case 8uLL:
        if (v87[0])
        {
          v79 = SUSUILog();
          v78 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v79;
            v51 = v78;
            sub_2544(v77);
            _os_log_impl(&dword_0, v50, v51, "Buddy running. Not showing download failure UI", v77, 2u);
          }

          objc_storeStrong(&v79, 0);
        }

        else
        {
          v28 = -[SUSUISoftwareUpdateDownloadFailedAlertItem initWithDescriptor:softwareUpdateController:fromSettings:]([SUSUISoftwareUpdateDownloadFailedAlertItem alloc], "initWithDescriptor:softwareUpdateController:fromSettings:", v90, v86, [v86 settingsForeground]);
          v29 = *&v87[1];
          *&v87[1] = v28;

          if (location)
          {
            v52 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", SUErrorDomain, [location integerValue], 0);
            [*&v87[1] setError:?];
          }
        }

        break;
      case 9uLL:
        v30 = [(SUSUIBaseRollbackAlertItem *)[SUSUIRollbackCountdownAlertItem alloc] initWithRollbackDescriptor:v95 softwareUpdateController:v86];
        v31 = *&v87[1];
        *&v87[1] = v30;

        break;
      case 0xAuLL:
        v32 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateRebootingAlertItem alloc] initWithDescriptor:v90 softwareUpdateController:v86];
        v33 = *&v87[1];
        *&v87[1] = v32;

        break;
      case 0xBuLL:
        v34 = objc_alloc_init(SUSUIPostSplatRollbackAlertItem);
        v35 = *&v87[1];
        *&v87[1] = v34;

        break;
      case 0xCuLL:
        v49 = [SUSUISetupUpgradeAlertItem alloc];
        v71 = _NSConcreteStackBlock;
        v72 = -1073741824;
        v73 = 0;
        v74 = sub_131AC;
        v75 = &unk_5CCB0;
        v76 = *&v87[1];
        v36 = [(SUSUISetupUpgradeAlertItem *)v49 initWithAcknowledgementBlock:&v71];
        v37 = *&v87[1];
        *&v87[1] = v36;

        v91 = 2;
        objc_storeStrong(&v76, 0);
        break;
      case 0xDuLL:
        v38 = [[SUSUISoftwareUpdateRecommendedAvailableAlertItem alloc] initWithDescriptor:v90 softwareUpdateController:v86];
        v39 = *&v87[1];
        *&v87[1] = v38;

        break;
      case 0xEuLL:
        v40 = objc_alloc_init(SUSUIRollbackSuggestedAlertItem);
        v41 = *&v87[1];
        *&v87[1] = v40;

        break;
      default:
        oslog = SUSUILog();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_11844(v103, alertCopy);
          _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unrecognized mini-alert to show: %d", v103, 8u);
        }

        objc_storeStrong(&oslog, 0);
        break;
    }

    [*&v87[1] setIsUILocked:{objc_msgSend(v86, "isUILocked")}];
    if ([v86 presentAlert:*&v87[1]])
    {
      v42 = [(NSString *)selfCopy->stringResponse stringByAppendingString:@"[] Presenting the alert.\n[] Exits.\n"];
      v43 = selfCopy->stringResponse;
      selfCopy->stringResponse = v42;

      if (v94)
      {
        (*(v94 + 2))();
      }
    }

    else
    {
      v44 = [(NSString *)selfCopy->stringResponse stringByAppendingString:@"[] Failed to present the alert.\n[] Exits.\n"];
      v45 = selfCopy->stringResponse;
      selfCopy->stringResponse = v44;

      if (v94)
      {
        v47 = v94;
        v46 = selfCopy->stringResponse;
        v48 = [NSError buildCheckedSUCoreError:8100 underlying:0 description:@"Failed to present the alert due to unknown reason."];
        (v47)[2](v47, v46);
      }
    }

    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87[1], 0);
    objc_storeStrong(&v90, 0);
    v91 = 0;
  }

  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(&v97, 0);
  objc_storeStrong(&v98, 0);
  objc_storeStrong(&location, 0);
}

- (void)destroyInstallationKeybag
{
  v2 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v2 destroyInstallationKeybag];
}

- (void)dismissAllAlerts
{
  location[2] = self;
  location[1] = a2;
  BSDispatchQueueAssert();
  location[0] = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "About to dismiss all mini alerts", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v4 _dismissAllAlerts];
  objc_storeStrong(&v4, 0);
}

- (void)showFollowUp:(unint64_t)up
{
  selfCopy = self;
  v16 = a2;
  upCopy = up;
  BSDispatchQueueAssert();
  v7 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v7 setNeedsAlertPresentationAfterOTAUpdate:1];

  if (upCopy)
  {
    if (upCopy == 1)
    {
      v11 = SUSUILog();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v11;
        v4 = v10;
        sub_2544(v9);
        _os_log_impl(&dword_0, v3, v4, "follow up type: SUSUICommandLineToolFollowUpDDMUpdate currently not supported", v9, 2u);
      }

      objc_storeStrong(&v11, 0);
    }

    else
    {
      oslog = SUSUILog();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_13774(v18, upCopy);
        _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unknown follow up type: %lu", v18, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  else
  {
    location = SUSUILog();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v13;
      sub_2544(v12);
      _os_log_impl(&dword_0, log, type, "follow up type: SUSUICommandLineToolFollowUpPostUpdate currently not supported", v12, 2u);
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)showLaggardsUi:(unint64_t)ui usingFakeData:(BOOL)data result:(id)result
{
  selfCopy = self;
  v25 = a2;
  uiCopy = ui;
  dataCopy = data;
  location = 0;
  objc_storeStrong(&location, result);
  BSDispatchQueueAssert();
  v21 = SUSUILog();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sub_13774(v27, uiCopy);
    _os_log_impl(&dword_0, v21, v20, "Laggards UI type: %lu", v27, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_13A58;
  v17 = &unk_5EDD8;
  v18[1] = uiCopy;
  v18[0] = location;
  v19 = objc_retainBlock(&v13);
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_13CF0;
  v10 = &unk_5EE00;
  v11 = location;
  v12 = v19;
  [(SUSUISoftwareUpdateController *)v5 _discoveredUpdates:&v6];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&location, 0);
}

- (void)showAuthenticationUIWithOptions:(unint64_t)options result:(id)result
{
  selfCopy = self;
  v37 = a2;
  optionsCopy = options;
  location = 0;
  objc_storeStrong(&location, result);
  BSDispatchQueueAssert();
  v34 = sub_142F8(optionsCopy, 4);
  v33 = sub_142F8(optionsCopy, 2);
  v32 = sub_142F8(optionsCopy, 8);
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_14330;
  v26 = &unk_5EE28;
  v29 = v34;
  v30 = v32;
  v27 = selfCopy;
  v28 = location;
  v31 = objc_retainBlock(&v22);
  if (v33)
  {
    v19 = 0;
    if (v34)
    {
      v20 = objc_alloc_init(SUSUIFakeSUAutoInstallOperation);
      v19 = 1;
      v4 = v20;
    }

    else
    {
      v4 = 0;
    }

    v21 = v4;
    if (v19)
    {
    }

    v18 = objc_alloc_init(SUSUIFakeSUDownload);
    v8 = v31;
    v7 = v18;
    forecast = [v21 forecast];
    v8[2](v8, v7);

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v6 = +[SUSUISoftwareUpdateController sharedInstance];
    _download = [(SUSUISoftwareUpdateController *)v6 _download];

    if (v34)
    {
      v5 = +[SUSUISoftwareUpdateController sharedInstance];
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_14570;
      v14 = &unk_5EE50;
      v16 = v31;
      v15 = _download;
      [(SUSUISoftwareUpdateController *)v5 _createInstallTonightForecastWithResult:&v10];

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      (*(v31 + 2))(v31, _download, 0);
    }

    objc_storeStrong(&_download, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&location, 0);
}

- (void)showEmergencyCallUIWithOptions:(unint64_t)options result:(id)result
{
  location[3] = self;
  location[2] = a2;
  location[1] = options;
  location[0] = 0;
  objc_storeStrong(location, result);
  BSDispatchQueueAssert();
  v4 = [SUSUIFullScreenEmergencyCallAlert alloc];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_14730;
  v10 = &unk_5D030;
  v11 = location[0];
  v12 = [(SUSUIFullScreenEmergencyCallAlert *)v4 initWithCompletionBlock:?];
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v5 presentEmergencyCallAlert:v12 completion:0];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)toggleSettingsBadge:(BOOL)badge
{
  selfCopy = self;
  v8 = a2;
  badgeCopy = badge;
  v6 = objc_alloc_init(SUSUIFakeSUDownload);
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  v3 = badgeCopy;
  descriptor = [v6 descriptor];
  [(SUSUISoftwareUpdateController *)v5 toggleSettingsBadge:v3 update:?];

  objc_storeStrong(&v6, 0);
}

- (void)reboot:(BOOL)reboot
{
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 reboot:reboot];
}

- (void)simulateComingFromOTAUpdate
{
  selfCopy = self;
  v8[1] = a2;
  v3 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v3 setNeedsAlertPresentationAfterOTAUpdate:1];

  v4 = +[NSFileManager defaultManager];
  [(NSFileManager *)v4 createFileAtPath:@"/var/mobile/Library/SoftwareUpdate/susdKeepAlive" contents:0 attributes:?];

  when = dispatch_time(0, 5000000000);
  v2 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_14A38;
  v7[3] = &unk_5CCB0;
  v8[0] = selfCopy;
  dispatch_after(when, queue, v7);

  objc_storeStrong(v8, 0);
}

- (void)downloadDidFinish
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = +[SUSUISoftwareUpdateController sharedInstance];
  _download = [v4[0] _download];
  _installPolicy = [v4[0] _installPolicy];
  [v4[0] client:? downloadDidFinish:? withInstallPolicy:?];
  objc_storeStrong(&_installPolicy, 0);
  objc_storeStrong(&_download, 0);
  objc_storeStrong(v4, 0);
}

- (void)setPasscodePolicy:(unint64_t)policy
{
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 setPasscodePolicy:policy];
}

- (void)getDDMAlertStatus:(id)status
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  if (location[0])
  {
    v10 = +[SUSUISoftwareUpdateController sharedInstance];
    ddmController = [(SUSUISoftwareUpdateController *)v10 ddmController];

    enforcedInstallDate = [(SUSUIDDMController *)ddmController enforcedInstallDate];
    schduledAlertDate = [(SUSUIDDMController *)ddmController schduledAlertDate];
    v14 = 0;
    if (enforcedInstallDate)
    {
      v15 = [SUUtility prettyPrintDate:enforcedInstallDate];
      v14 = 1;
      v3 = v15;
    }

    else
    {
      v3 = @"N/A";
    }

    v16 = v3;
    if (v14)
    {
    }

    v11 = 0;
    if (schduledAlertDate)
    {
      v12 = [SUUtility prettyPrintDate:schduledAlertDate];
      v11 = 1;
      v4 = v12;
    }

    else
    {
      v4 = @"N/A";
    }

    v13 = v4;
    if (v11)
    {
    }

    v7 = location[0];
    v21[0] = @"DDMEnforcedDate";
    v22[0] = v16;
    v21[1] = @"DDMScheduledAlertDate";
    v22[1] = v13;
    v21[2] = @"DDMScheduledAlertStyle";
    v9 = SUSUIStringForInstallAlertInstallStyle([(SUSUIDDMController *)ddmController scheduledAlertStyle:v22]);
    v22[2] = v9;
    v8 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:3];
    v7[2]();

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&schduledAlertDate, 0);
    objc_storeStrong(&enforcedInstallDate, 0);
    objc_storeStrong(&ddmController, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)showDDMAlert:(int64_t)alert install:(BOOL)install
{
  if (alert == 0x8000000000000000)
  {
    v7 = +[SUSUISoftwareUpdateController sharedInstance];
    ddmController = [(SUSUISoftwareUpdateController *)v7 ddmController];
    [(SUSUIDDMController *)ddmController showNextDDMAlert:install];
  }

  else
  {
    v5 = +[SUSUISoftwareUpdateController sharedInstance];
    ddmController2 = [(SUSUISoftwareUpdateController *)v5 ddmController];
    [(SUSUIDDMController *)ddmController2 showDDMAlert:alert install:install];
  }
}

- (void)ddmInstallNow
{
  location[2] = self;
  location[1] = a2;
  v4 = +[SUSUISoftwareUpdateController sharedInstance];
  ddmController = [(SUSUISoftwareUpdateController *)v4 ddmController];
  [(SUSUIDDMController *)ddmController installNow];

  location[0] = SUSUILog();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[SUSUIPreferences sharedInstance];
    sub_11844(v6, [(SUSUIPreferences *)v2 isSharedIPad]);
    _os_log_impl(&dword_0, location[0], OS_LOG_TYPE_DEFAULT, "issharedipad=%d", v6, 8u);
  }

  objc_storeStrong(location, 0);
}

- (void)getAlertStatus:(id)status
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  if (location[0])
  {
    v14 = +[SUSUISoftwareUpdateController sharedInstance];
    _alertModel = [v14 _alertModel];
    v5 = location[0];
    v16[0] = @"AlertFlow";
    v6 = SUSUIStringForInstallAlertFlow([_alertModel alertFlow]);
    v17[0] = v6;
    v16[1] = @"RepopStrategy";
    v7 = SUSUIStringForInstallAlertRepopStrategy([_alertModel nextAlertRepopStrategy]);
    v17[1] = v7;
    v16[2] = @"NextAlertDate";
    nextAlertDate = [_alertModel nextAlertDate];
    v11 = 0;
    v9 = 0;
    if (nextAlertDate)
    {
      nextAlertDate2 = [_alertModel nextAlertDate];
      v11 = 1;
      v10 = [NSDateFormatter localizedStringFromDate:"localizedStringFromDate:dateStyle:timeStyle:" dateStyle:? timeStyle:?];
      v9 = 1;
      v4 = v10;
    }

    else
    {
      v4 = @"N/A";
    }

    v17[2] = v4;
    v3 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v5[2]();

    if (v9)
    {
    }

    if (v11)
    {
    }

    objc_storeStrong(&_alertModel, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setRestartCountdownOverrideIntervalSeconds:(id)seconds
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, seconds);
  v3 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v3 setRestartCountdownOverrideIntervalSeconds:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setInstallOperation:(id)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 setInstallOperation:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setUpdateToInstall:(id)install
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 setUpdateToInstall:location[0]];

  objc_storeStrong(location, 0);
}

@end