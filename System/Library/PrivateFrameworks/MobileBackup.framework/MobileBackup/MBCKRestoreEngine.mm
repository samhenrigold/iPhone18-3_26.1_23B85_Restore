@interface MBCKRestoreEngine
+ (int64_t)_fetchBackupPolicyWithDevice:(id)device snapshotUUID:(id)d error:(id *)error;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (BOOL)_configureAndInstallPlaceholdersWithError:(id *)error;
- (BOOL)_downloadRestorablesForBackgroundAppWithError:(id *)error;
- (BOOL)_downloadRestorablesForBackgroundFilesWithError:(id *)error;
- (BOOL)_downloadRestorablesForForegroundWithError:(id *)error;
- (BOOL)_markForegroundRestorablesForBackgroundRestoreInPlan:(id)plan domainName:(id)name error:(id *)error;
- (BOOL)_restoreATCFiles:(id)files usingCKCache:(id *)cache;
- (BOOL)_restoreATCFiles:(id)files usingPlan:(id *)plan;
- (BOOL)_restoreBackgroundContainersUsingCKCacheForApp:(id)app error:(id *)error;
- (BOOL)_restoreBackgroundContainersUsingPlanForApp:(id)app error:(id *)error;
- (BOOL)_restoreDomains:(id)domains plan:(id)plan withQueue:(id)queue concurrencyLimit:(unint64_t)limit error:(id *)error;
- (BOOL)_restoreEntitlements:(id)entitlements withError:(id *)error;
- (BOOL)_restoreForegroundFilesUsingCKCacheForDomainNames:(id)names error:(id *)error;
- (BOOL)_restoreForegroundFilesUsingPlanForDomainNames:(id)names error:(id *)error;
- (BOOL)_runWithError:(id *)error;
- (BOOL)_shouldSimulateCancelationForState:(id)state;
- (BOOL)annotateRestoreWithError:(id *)error;
- (BOOL)cancelWithError:(id)error;
- (BOOL)downloadRestorablesWithError:(id *)error;
- (BOOL)finalizeRestoreWithError:(id *)error;
- (BOOL)findRestorablesWithError:(id *)error;
- (BOOL)isRestoringToSameDevice;
- (BOOL)refreshCacheWithError:(id *)error;
- (BOOL)restoreEntitlementsWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (BOOL)synchronizeFileListsWithError:(id *)error;
- (BOOL)verifyRestoreWithError:(id *)error;
- (MBCKEncryptionManager)encryptionManager;
- (MBCKRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager serviceManager:(id)serviceManager excludedAppBundleIDs:(id)ds;
- (MBRestorePolicy)restorePolicy;
- (NSString)restoreStateDescription;
- (id)_fetchDomainNamesToForegroundRestoreWithError:(id *)error;
- (id)_populatedRestorePlan;
- (id)_restoreATCEngineForPlan:(id)plan error:(id *)error;
- (id)_restoreATCFile:(id)file usingCache:(id)cache;
- (id)_restoreDomainEngineForDomain:(id)domain plan:(id)plan error:(id *)error;
- (id)engineModeString;
- (id)getEntitlementsForDomainsWithError:(id *)error;
- (id)keyBagForUUID:(id)d;
- (id)restoreMode;
- (id)restoringBundleID;
- (id)secretForUUID:(id)d;
- (int)restoreType;
- (void)_finishCollectingTelemetry;
- (void)_handleStateTransition;
- (void)_purgeBeforeRestoring:(unint64_t)restoring;
- (void)_uninstallExistingAppWithBundleID:(id)d;
- (void)cleanUpAfterError:(id)error;
- (void)makeStateTransition;
- (void)reportRestoreStatusForState:(unint64_t)state start:(id)start end:(id)end;
- (void)resetRestorePolicy;
@end

@implementation MBCKRestoreEngine

- (id)restoringBundleID
{
  restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
  serviceRestoreMode = [restorePolicy serviceRestoreMode];

  if ([serviceRestoreMode isBackgroundApp])
  {
    bundleID = [serviceRestoreMode bundleID];
  }

  else
  {
    bundleID = 0;
  }

  return bundleID;
}

- (MBCKRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager serviceManager:(id)serviceManager excludedAppBundleIDs:(id)ds
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  serviceManagerCopy = serviceManager;
  dsCopy = ds;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKRestoreEngine initWithSettingsContext:debugContext:domainManager:serviceManager:excludedAppBundleIDs:]", "MBCKRestoreEngine.m", 90, "account");
  }

  v18 = account;
  if (!managerCopy)
  {
    v19 = [MBDomainManager alloc];
    persona = [v18 persona];
    managerCopy = [(MBDomainManager *)v19 initWithPersona:persona];
  }

  v28.receiver = self;
  v28.super_class = MBCKRestoreEngine;
  v21 = [(MBCKEngine *)&v28 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:managerCopy];
  v22 = v21;
  if (v21)
  {
    [(MBCKRestoreEngine *)v21 setRestoreState:1];
    [(MBCKEngine *)v22 setServiceManager:serviceManagerCopy];
    restoreMode = [contextCopy restoreMode];
    v22->_restoreType = [restoreMode type];

    v24 = +[NSDate date];
    startDate = v22->_startDate;
    v22->_startDate = v24;

    [(MBEngine *)v22 setEncrypted:1];
    v26 = objc_opt_new();
    [(MBCKRestoreEngine *)v22 setEstimator:v26];

    [(MBCKRestoreEngine *)v22 setExcludedAppBundleIDs:dsCopy];
    v22->_allowedCellularCost = 0;
    [(MBDomainManager *)managerCopy setDelegate:v22];
  }

  return v22;
}

- (NSString)restoreStateDescription
{
  restoreState = [(MBCKRestoreEngine *)self restoreState];

  return MBCKStringForRestoreState(restoreState);
}

- (int)restoreType
{
  if (self->_restorePolicy)
  {
    restorePolicy = self->_restorePolicy;

    return [(MBRestorePolicy *)restorePolicy restoreType];
  }

  else
  {
    context = [(MBCKEngine *)self context];
    restoreMode = [context restoreMode];
    if ([restoreMode isForeground])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    return v7;
  }
}

- (id)restoreMode
{
  if (self->_restorePolicy)
  {
    serviceRestoreMode = [(MBRestorePolicy *)self->_restorePolicy serviceRestoreMode];
  }

  else
  {
    context = [(MBCKEngine *)self context];
    serviceRestoreMode = [context restoreMode];
  }

  return serviceRestoreMode;
}

- (MBRestorePolicy)restorePolicy
{
  restorePolicy = self->_restorePolicy;
  if (!restorePolicy)
  {
    __assert_rtn("[MBCKRestoreEngine restorePolicy]", "MBCKRestoreEngine.m", 147, "_restorePolicy");
  }

  return restorePolicy;
}

- (void)resetRestorePolicy
{
  v16 = [MBRestorePolicy alloc];
  persona = [(MBCKEngine *)self persona];
  appManager = [(MBEngine *)self appManager];
  context = [(MBCKEngine *)self context];
  plugins = [context plugins];
  context2 = [(MBCKEngine *)self context];
  restoreMode = [context2 restoreMode];
  properties = [(MBCKEngine *)self properties];
  buildVersion = [properties buildVersion];
  settingsContext = [(MBEngine *)self settingsContext];
  shouldRestoreSystemFiles = [settingsContext shouldRestoreSystemFiles];
  restoresPrimaryAccount = [(MBCKEngine *)self restoresPrimaryAccount];
  BYTE2(v14) = [(MBEngine *)self isForegroundRestore];
  BYTE1(v14) = restoresPrimaryAccount;
  LOBYTE(v14) = shouldRestoreSystemFiles;
  v12 = [MBRestorePolicy initWithPersona:v16 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona plugins:self serviceRestoreMode:appManager osBuildVersionOfBackup:plugins shouldRestoreSystemFiles:restoreMode isRestoringPrimaryAccount:buildVersion shouldCreateMissingIntermediateDirectories:v14];
  restorePolicy = self->_restorePolicy;
  self->_restorePolicy = v12;
}

- (id)keyBagForUUID:(id)d
{
  v4 = [d base64EncodedStringWithOptions:0];
  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  v7 = [keybagManager keybagWithUUID:v4];

  keybag = [v7 keybag];

  return keybag;
}

- (id)secretForUUID:(id)d
{
  v4 = [d base64EncodedStringWithOptions:0];
  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  v7 = [keybagManager keybagWithUUID:v4];

  secret = [v7 secret];

  return secret;
}

- (BOOL)isRestoringToSameDevice
{
  context = [(MBCKEngine *)self context];
  backupUDID = [context backupUDID];
  v4 = MBDeviceUUID();
  v5 = [backupUDID isEqualToString:v4];

  return v5;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  databaseManager = [ckOperationTracker databaseManager];
  ckOperationTracker2 = [(MBCKEngine *)self ckOperationTracker];
  account = [ckOperationTracker2 account];
  [databaseManager setShouldSupportBudgeting:0 account:account];

  v9.receiver = self;
  v9.super_class = MBCKRestoreEngine;
  [(MBCKEngine *)&v9 cleanUpAfterError:errorCopy];
}

- (BOOL)runWithError:(id *)error
{
  v23 = 0;
  v5 = [(MBCKRestoreEngine *)self _runWithError:&v23];
  v6 = v23;
  if (v5)
  {
    goto LABEL_24;
  }

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  restoreMode = [(MBCKRestoreEngine *)self restoreMode];
  if ([(MBEngine *)self isForegroundRestore]&& ![MBError isRetryableRestoreError:v6]&& ([(MBCKRestoreEngine *)self _populatedRestorePlan], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = serviceAccount;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Lightrail restore failed for account %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=ckrestore-engine= Lightrail restore failed for account %@: %@", serviceAccount, v6);
    }

    persona = [(MBCKEngine *)self persona];
    [MBRestoreCloudFormatPolicy recordFileListForegroundRestoreFailure:v6 persona:persona];
  }

  else
  {
    if (([restoreMode isBackgroundFile] & 1) == 0 && !objc_msgSend(restoreMode, "isBackgroundFiles"))
    {
      goto LABEL_14;
    }

    v12 = [MBError sanitizedATCRestoreError:v6];

    persona = MBGetDefaultLog();
    if (os_log_type_enabled(persona, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, persona, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Sanitized ATC restore error: %@", buf, 0xCu);
      _MBLog(@"Df", "=ckrestore-engine= Sanitized ATC restore error: %@", v12);
    }

    v6 = v12;
  }

LABEL_14:
  isBackgroundApp = [restoreMode isBackgroundApp];
  v14 = MBGetDefaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (isBackgroundApp)
  {
    if (v15)
    {
      bundleID = [restoreMode bundleID];
      accountIdentifier = [serviceAccount accountIdentifier];
      *buf = 138543874;
      v25 = bundleID;
      v26 = 2112;
      v27 = accountIdentifier;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed for %{public}@ account %@: %@", buf, 0x20u);

      bundleID2 = [restoreMode bundleID];
      accountIdentifier2 = [serviceAccount accountIdentifier];
      _MBLog(@"E ", "=ckrestore-engine= Restore failed for %{public}@ account %@: %@", bundleID2, accountIdentifier2, v6);
    }
  }

  else if (v15)
  {
    *buf = 138412546;
    v25 = serviceAccount;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed for account %@: %@", buf, 0x16u);
    _MBLog(@"E ", "=ckrestore-engine= Restore failed for account %@: %@", serviceAccount, v6);
  }

  if ([MBError shouldReportLowDiskSpaceForError:v6])
  {
    v20 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpace()];
    [(MBCKRestoreEngine *)self setFreeDiskSpace:v20];
  }

  if (error)
  {
    v21 = v6;
    *error = v6;
  }

LABEL_24:
  return v5;
}

- (BOOL)_runWithError:(id *)error
{
  [(MBCKRestoreEngine *)self setChargingType:MBGetChargingType()];
  v48 = 0;
  v5 = [(MBCKRestoreEngine *)self setUpWithError:&v48];
  restoreMode = v48;
  if (v5)
  {
LABEL_4:

    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      if ([(MBEngine *)self isForegroundRestore])
      {
        selfCopy2 = self;
        v11 = 1;
      }

      else
      {
        selfCopy2 = self;
        v11 = 3;
      }

      [(MBCKRestoreEngine *)selfCopy2 setRestoreState:v11];
    }

    else
    {
      cache = [(MBCKEngine *)self cache];
      context = [(MBCKEngine *)self context];
      backupUDID = [context backupUDID];
      context2 = [(MBCKEngine *)self context];
      snapshotUUID = [context2 snapshotUUID];
      v47 = 0;
      v17 = [cache fetchRestoreStateForDeviceUUID:backupUDID snapshotUUID:snapshotUUID error:&v47];
      v18 = v47;
      [(MBCKRestoreEngine *)self setRestoreState:v17];

      if (v18)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          context3 = [(MBCKEngine *)self context];
          backupUDID2 = [context3 backupUDID];
          context4 = [(MBCKEngine *)self context];
          snapshotUUID2 = [context4 snapshotUUID];
          *buf = 138412802;
          *v50 = backupUDID2;
          *&v50[8] = 2112;
          *&v50[10] = snapshotUUID2;
          *&v50[18] = 2112;
          *&v50[20] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error getting restore state for deviceUUID %@ and snapshotUUID %@: %@", buf, 0x20u);

          context5 = [(MBCKEngine *)self context];
          backupUDID3 = [context5 backupUDID];
          context6 = [(MBCKEngine *)self context];
          snapshotUUID3 = [context6 snapshotUUID];
          _MBLog(@"E ", "=ckrestore-engine= Error getting restore state for deviceUUID %@ and snapshotUUID %@: %@", backupUDID3, snapshotUUID3, v18);
        }

        [(MBCKRestoreEngine *)self setRestoreState:1];
      }

      if ([(MBCKRestoreEngine *)self restoreState]>= 4)
      {
        [(MBCKRestoreEngine *)self setRestoreState:3];
      }
    }

    restoreMode = [(MBCKRestoreEngine *)self restoreMode];
    ckOperationPolicy = [(MBCKEngine *)self ckOperationPolicy];
    cellularAccess = [ckOperationPolicy cellularAccess];

    serviceAccount = [(MBCKEngine *)self serviceAccount];
    if ([restoreMode isBackgroundApp])
    {
      bundleID = [restoreMode bundleID];
      accountIdentifier4 = MBGetDefaultLog();
      if (os_log_type_enabled(accountIdentifier4, OS_LOG_TYPE_DEFAULT))
      {
        accountIdentifier = [serviceAccount accountIdentifier];
        *buf = 138543874;
        *v50 = bundleID;
        *&v50[8] = 2112;
        *&v50[10] = accountIdentifier;
        *&v50[18] = 2112;
        *&v50[20] = cellularAccess;
        _os_log_impl(&_mh_execute_header, accountIdentifier4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting restore for %{public}@ account %@ cellularAccess:%@", buf, 0x20u);

        accountIdentifier2 = [serviceAccount accountIdentifier];
        _MBLog(@"Df", "=ckrestore-engine= Starting restore for %{public}@ account %@ cellularAccess:%@", bundleID, accountIdentifier2, cellularAccess);
      }
    }

    else
    {
      bundleID = MBGetDefaultLog();
      if (!os_log_type_enabled(bundleID, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        if ([(MBEngine *)self isForegroundRestore])
        {
          restoreLogger = [(MBCKRestoreEngine *)self restoreLogger];
          [restoreLogger logForegroundRestoreStart];
        }

        [(MBCKRestoreEngine *)self makeStateTransition];
        if ([(MBEngine *)self isForegroundRestore])
        {
          restoreLogger2 = [(MBCKRestoreEngine *)self restoreLogger];
          [restoreLogger2 logForegroundRestoreFinished];

          restoreLogger3 = [(MBCKRestoreEngine *)self restoreLogger];
          [restoreLogger3 flush];
        }

        hasError = [(MBCKEngine *)self hasError];
        if (hasError)
        {
          engineError = [(MBCKEngine *)self engineError];
          if (error)
          {
            engineError = engineError;
            *error = engineError;
          }
        }

        v30 = hasError ^ 1;

        goto LABEL_35;
      }

      restoreType = self->_restoreType;
      accountIdentifier3 = [serviceAccount accountIdentifier];
      *buf = 67109634;
      *v50 = restoreType;
      *&v50[4] = 2112;
      *&v50[6] = accountIdentifier3;
      *&v50[14] = 2112;
      *&v50[16] = cellularAccess;
      _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting restore (%d) account %@ cellularAccess:%@", buf, 0x1Cu);

      v40 = self->_restoreType;
      accountIdentifier4 = [serviceAccount accountIdentifier];
      _MBLog(@"Df", "=ckrestore-engine= Starting restore (%d) account %@ cellularAccess:%@", v40, accountIdentifier4, cellularAccess);
    }

    goto LABEL_26;
  }

  while (1)
  {
    retryStrategy = [(MBCKEngine *)self retryStrategy];
    v8 = [retryStrategy shouldRetryAfterError:restoreMode];

    if ((v8 & 1) == 0)
    {
      break;
    }

    v48 = 0;
    v9 = [(MBCKRestoreEngine *)self setUpWithError:&v48];
    restoreMode = v48;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v50 = restoreMode;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed to setup: %@", buf, 0xCu);
    _MBLog(@"E ", "=ckrestore-engine= Restore failed to setup: %@", restoreMode);
  }

  if (error)
  {
    v29 = restoreMode;
    v30 = 0;
    *error = restoreMode;
  }

  else
  {
    v30 = 0;
  }

LABEL_35:

  return v30;
}

- (void)_handleStateTransition
{
  v3 = +[NSDate date];
  restoreState = [(MBCKRestoreEngine *)self restoreState];
  if (restoreState <= 5)
  {
    if (restoreState > 2)
    {
      if (restoreState == 3)
      {
        [(MBCKRestoreEngine *)self setRestoreState:4];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10005636C;
        v30[3] = &unk_1003BC400;
        v30[4] = self;
        v5 = v30;
      }

      else if (restoreState == 4)
      {
        [(MBCKRestoreEngine *)self setRestoreState:5];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000563D8;
        v29[3] = &unk_1003BC400;
        v29[4] = self;
        v5 = v29;
      }

      else
      {
        [(MBCKRestoreEngine *)self setRestoreState:6];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000563E4;
        v28[3] = &unk_1003BC400;
        v28[4] = self;
        v5 = v28;
      }

      goto LABEL_23;
    }

    if (restoreState == 1)
    {
      [(MBCKRestoreEngine *)self setRestoreState:2];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100056288;
      v33[3] = &unk_1003BC400;
      v33[4] = self;
      v5 = v33;
      goto LABEL_23;
    }

    if (restoreState == 2)
    {
      [(MBCKRestoreEngine *)self setRestoreState:9];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000562F4;
      v32[3] = &unk_1003BC400;
      v32[4] = self;
      v5 = v32;
LABEL_23:
      [(MBCKEngine *)self performRetryablePhase:v5];
LABEL_24:
      LOBYTE(isFinished) = 0;
      goto LABEL_25;
    }

LABEL_52:
    __assert_rtn("[MBCKRestoreEngine _handleStateTransition]", "MBCKRestoreEngine.m", 291, "0");
  }

  if (restoreState <= 7)
  {
    if (restoreState == 6)
    {
      [(MBCKRestoreEngine *)self setRestoreState:7];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000563F0;
      v27[3] = &unk_1003BC400;
      v27[4] = self;
      v5 = v27;
    }

    else
    {
      [(MBCKRestoreEngine *)self setRestoreState:10];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000563FC;
      v26[3] = &unk_1003BC400;
      v26[4] = self;
      v5 = v26;
    }

    goto LABEL_23;
  }

  if (restoreState == 8)
  {
    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
    goto LABEL_24;
  }

  if (restoreState == 9)
  {
    [(MBCKRestoreEngine *)self setRestoreState:3];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100056360;
    v31[3] = &unk_1003BC400;
    v31[4] = self;
    v5 = v31;
    goto LABEL_23;
  }

  if (restoreState != 10)
  {
    goto LABEL_52;
  }

  [(MBCKRestoreEngine *)self setRestoreState:8];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100056408;
  v25[3] = &unk_1003BC400;
  v25[4] = self;
  [(MBCKEngine *)self performRetryablePhase:v25];
  isFinished = [(MBCKEngine *)self isFinished];
  if (isFinished)
  {
    engineError = [(MBCKEngine *)self engineError];
    if (!engineError)
    {
      __assert_rtn("[MBCKRestoreEngine _handleStateTransition]", "MBCKRestoreEngine.m", 375, "self.engineError != nil");
    }
  }

  else
  {
    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
    [(MBCKRestoreEngine *)self setEstimator:0];
    if (![(MBEngine *)self isForegroundRestore])
    {
      goto LABEL_25;
    }

    engineError = MBGetDefaultLog();
    if (os_log_type_enabled(engineError, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, engineError, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Foreground restore finished successfully", buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= Foreground restore finished successfully");
    }
  }

LABEL_25:
  v8 = MBCKStringForRestoreState([(MBCKRestoreEngine *)self restoreState]);
  if ([(MBCKRestoreEngine *)self _shouldSimulateCancelationForState:v8])
  {
    v9 = [MBError errorWithCode:202 format:@"Restore canceled (simulated for %@)", v8];
    [(MBCKEngine *)self setEngineError:v9];

    [(MBCKEngine *)self setIsFinished:1];
  }

  v10 = +[NSDate date];
  if ([(MBEngine *)self isForegroundRestore])
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v10 timeIntervalSinceDate:v3];
      *buf = 138543618;
      v35 = v8;
      v36 = 2048;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= %{public}@ done in %.3fs", buf, 0x16u);
      [v10 timeIntervalSinceDate:v3];
      _MBLog(@"Df", "=ckrestore-engine= %{public}@ done in %.3fs", v8, v13);
    }
  }

  [(MBCKRestoreEngine *)self reportRestoreStatusForState:[(MBCKRestoreEngine *)self restoreState] start:v3 end:v10];
  if ([(MBCKEngine *)self isFinished])
  {
    [(MBCKRestoreEngine *)self _finishCollectingTelemetry];
    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel ended];
  }

  if (![(MBCKRestoreEngine *)self useFileLists])
  {
    if (![(MBCKEngine *)self isFinished]|| ([(MBCKRestoreEngine *)self restoreState]!= 8 ? (v15 = 1) : (v15 = isFinished), (v15 & 1) == 0))
    {
      cache = [(MBCKEngine *)self cache];
      restoreState2 = [(MBCKRestoreEngine *)self restoreState];
      context = [(MBCKEngine *)self context];
      backupUDID = [context backupUDID];
      context2 = [(MBCKEngine *)self context];
      snapshotUUID = [context2 snapshotUUID];
      v22 = [cache setRestoreState:restoreState2 forDeviceUUID:backupUDID snapshotUUID:snapshotUUID];

      if (v22)
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set restore state in cache transaction: %@", buf, 0xCu);
          _MBLog(@"E ", "=ckrestore-engine= Failed to set restore state in cache transaction: %@", v22);
        }
      }
    }

    if ([(MBCKRestoreEngine *)self restoreState]<= 3)
    {
      cache2 = [(MBCKEngine *)self cache];
      [cache2 flush];
    }
  }
}

- (BOOL)_shouldSimulateCancelationForState:(id)state
{
  stateCopy = state;
  if (MBIsInternalInstall() && ![(MBCKEngine *)self isFinished]&& [(MBEngine *)self isForegroundRestore])
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    engineStateToCancelRestoreAfter = [v5 engineStateToCancelRestoreAfter];
    v7 = [engineStateToCancelRestoreAfter isEqualToString:stateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKRestoreEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKRestoreEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (void)_finishCollectingTelemetry
{
  if (![(MBEngine *)self isBackgroundRestore])
  {
    estimator = [(MBCKRestoreEngine *)self estimator];
    [estimator progressAtLastUpdate];
    if (v4 > 0.0)
    {
      minutesRemaining = [estimator minutesRemaining];
      if (minutesRemaining != -1)
      {
        v6 = [NSNumber numberWithUnsignedInteger:minutesRemaining];
        [(MBCKRestoreEngine *)self setMinutesRemaining:v6];
      }
    }
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  networkConnectivity = [serviceManager networkConnectivity];
  [(MBCKRestoreEngine *)self setNetworkConnectivityAtFinish:networkConnectivity, v8];
}

- (void)reportRestoreStatusForState:(unint64_t)state start:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  [MBCKStatusReporter reportRestoreStateChangeForEngine:self state:state start:startCopy end:endCopy];
  [MBTelemetry sendRestoreEngineStateChangeStatus:self state:[(MBCKRestoreEngine *)self restoreState] start:startCopy end:endCopy];
  performanceStatistics = [(MBCKEngine *)self performanceStatistics];

  if (performanceStatistics)
  {
    v10 = [NSString alloc];
    v11 = MBCKStringForRestoreState(state);
    v12 = [v10 initWithFormat:@"state-%@", v11];

    [endCopy timeIntervalSinceDate:startCopy];
    v13 = [NSNumber numberWithDouble:?];
    performanceStatistics2 = [(MBCKEngine *)self performanceStatistics];
    [performanceStatistics2 setObject:v13 forKeyedSubscript:v12];
  }
}

- (BOOL)refreshCacheWithError:(id *)error
{
  targetSnapshot = [(MBCKRestoreEngine *)self targetSnapshot];
  if (!targetSnapshot)
  {
    __assert_rtn("[MBCKRestoreEngine refreshCacheWithError:]", "MBCKRestoreEngine.m", 476, "targetSnapshot");
  }

  v6 = targetSnapshot;
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v6 snapshotFormat];
      v8 = MBStringForSnapshotFormat();
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Skipping refreshCacheWithError when restoring from snapshot format %@", buf, 0xCu);

      [v6 snapshotFormat];
      v9 = MBStringForSnapshotFormat();
      _MBLog(@"Df", "=ckrestore-engine= Skipping refreshCacheWithError when restoring from snapshot format %@", v9);
    }

    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MBCKRestoreEngine;
    v10 = [(MBCKEngine *)&v12 refreshCacheWithError:error];
  }

  return v10;
}

+ (int64_t)_fetchBackupPolicyWithDevice:(id)device snapshotUUID:(id)d error:(id *)error
{
  deviceCopy = device;
  dCopy = d;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 486, "device");
  }

  v9 = dCopy;
  if (!dCopy)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 487, "snapshotUUID");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 488, "error");
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  snapshots = [deviceCopy snapshots];
  v11 = [snapshots countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(snapshots);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      snapshotID = [v15 snapshotID];
      v17 = [snapshotID isEqualToString:v9];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [snapshots countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v18 = v15;

    if (!v18)
    {
      goto LABEL_17;
    }

    backupPolicy = [v18 backupPolicy];
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v28 = v9;
      v29 = 2048;
      v30 = backupPolicy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Found target snapshot %{public}@, backupPolicy:%ld", buf, 0x16u);
      _MBLog(@"I ", "=ckrestore-engine= Found target snapshot %{public}@, backupPolicy:%ld", v9, backupPolicy);
    }
  }

  else
  {
LABEL_12:

LABEL_17:
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find target snapshot %{public}@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed to find target snapshot %{public}@", v9);
    }

    [MBError errorWithCode:205 format:@"Failed to fetch the backup policy for target snapshot %@", v9];
    *error = backupPolicy = 0;
  }

  return backupPolicy;
}

- (BOOL)setUpWithError:(id *)error
{
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 509, "serviceAccount");
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 511, "serviceManager");
  }

  v176.receiver = self;
  v176.super_class = MBCKRestoreEngine;
  if (![(MBCKEngine *)&v176 setUpWithError:error])
  {
    goto LABEL_46;
  }

  domainManager = [(MBEngine *)self domainManager];
  v7 = domainManager == 0;

  if (!v7)
  {
    v8 = [MBAppManager alloc];
    settingsContext = [(MBEngine *)self settingsContext];
    mobileInstallation = [settingsContext mobileInstallation];
    v11 = [(MBAppManager *)v8 initWithMobileInstallation:mobileInstallation];
    appManager = self->super.super._appManager;
    self->super.super._appManager = v11;

    if (![(MBEngine *)self isForegroundRestore])
    {
      restoreMode = [(MBCKRestoreEngine *)self restoreMode];
      if ([restoreMode isBackgroundFile])
      {
      }

      else
      {
        restoreMode2 = [(MBCKRestoreEngine *)self restoreMode];
        isBackgroundFiles = [restoreMode2 isBackgroundFiles];

        if (!isBackgroundFiles)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = self->super.super._appManager;
    persona = [(MBCKEngine *)self persona];
    LODWORD(v18) = [(MBAppManager *)v18 loadAppsWithPersona:persona safeHarbors:0 error:error];

    if (v18)
    {
LABEL_14:
      v20 = [(MBCKEngine *)self setUpOperationTrackerWithError:error];
      v156 = v20;
      if (!v20)
      {
        v15 = 0;
LABEL_83:

        goto LABEL_47;
      }

      ckOperationPolicy = [v20 ckOperationPolicy];
      cellularAccess = [ckOperationPolicy cellularAccess];

      if (cellularAccess)
      {
        if ([cellularAccess allowsExpensiveNetworkAccess])
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        [(MBCKRestoreEngine *)self setAllowedCellularCost:v22];
      }

      networkConnectivity = [serviceManager networkConnectivity];
      [(MBCKRestoreEngine *)self setNetworkConnectivityAtStart:networkConnectivity, v24];
      persona2 = [(MBCKEngine *)self persona];
      if ([persona2 cleanupRestoreDirectoriesWithError:error])
      {
        isForegroundRestore = [(MBEngine *)self isForegroundRestore];
        if (!isForegroundRestore)
        {
          goto LABEL_31;
        }

        if ([serviceManager resetCacheWithAccount:serviceAccount error:error])
        {
          backupUDID = [serviceManager openCacheWithAccount:serviceAccount accessType:1 error:error];
          v26 = backupUDID;
          if (!backupUDID)
          {
            v15 = 0;
LABEL_81:

            goto LABEL_82;
          }

          [(MBCKEngine *)self setCache:?];
          [_TtC7backupd14MBRestoreDepot disposeAllDepotsForPersona:persona2 error:0];
          [persona2 removeRestorePrefetchCachesOlderThanDate:0];
          if (([persona2 createRestoreDirectoriesWithError:error] & 1) == 0)
          {
            v76 = MBGetDefaultLog();
            v29 = v76;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              if (error)
              {
                v77 = *error;
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v77;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating restore directory: %@", &buf, 0xCu);
                v78 = *error;
              }

              else
              {
                LODWORD(buf) = 138412290;
                v78 = @"(no error available)";
                *(&buf + 4) = @"(no error available)";
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating restore directory: %@", &buf, 0xCu);
              }

              _MBLog(@"E ", "=ckrestore-engine= Error creating restore directory: %@", v78);
              v15 = 0;
              v29 = v76;
              goto LABEL_80;
            }

            goto LABEL_74;
          }

          userIncompleteRestoreDirectory = [persona2 userIncompleteRestoreDirectory];
          placeholderRestoreDirectory = [persona2 placeholderRestoreDirectory];
          v29 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:placeholderRestoreDirectory];

          restoreMode3 = [(MBCKRestoreEngine *)self restoreMode];
          v31 = [restoreMode3 type] == 6;

          if (v31)
          {
            v32 = MBGetDefaultLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=ckrestore-engine= FIXME: Removing existing placeholder directories to get data-separated restores working.", &buf, 2u);
              _MBLog(@"E ", "=ckrestore-engine= FIXME: Removing existing placeholder directories to get data-separated restores working.");
            }

            v33 = +[NSFileManager defaultManager];
            [v33 removeItemAtPath:v29 error:0];
          }

          v34 = +[NSFileManager defaultManager];
          v35 = MBMobileFileAttributes();
          v36 = [v34 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:v35 error:error];

          if ((v36 & 1) == 0)
          {
            v79 = MBGetDefaultLog();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating placeholder directory", &buf, 2u);
              _MBLog(@"E ", "=ckrestore-engine= Error creating placeholder directory");
            }

            goto LABEL_74;
          }

LABEL_31:
          context = [(MBCKEngine *)self context];
          backupUDID = [context backupUDID];

          if (!backupUDID)
          {
            __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 592, "backupUDID");
          }

          cache = [(MBCKEngine *)self cache];
          v152 = [serviceManager fetchDeviceForRestoreWithUUID:backupUDID tracker:v156 isForegroundRestore:isForegroundRestore cache:cache error:error];

          v29 = v152;
          if (v152)
          {
            [(MBCKEngine *)self setDevice:v152];
            if (![(MBCKEngine *)self handleCancelation:error])
            {
              storedKeybagsByUUIDString = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
              if (storedKeybagsByUUIDString)
              {
                storedKeybagsByUUIDString2 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                v41 = [storedKeybagsByUUIDString2 count] == 0;

                if (!v41)
                {
                  v42 = MBGetDefaultLog();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "=ckrestore-engine= Using keybags serialized to disk for this restore session", &buf, 2u);
                    _MBLog(@"I ", "=ckrestore-engine= Using keybags serialized to disk for this restore session");
                  }

                  v174 = 0u;
                  v175 = 0u;
                  v172 = 0u;
                  v173 = 0u;
                  storedKeybagsByUUIDString3 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                  v44 = [storedKeybagsByUUIDString3 countByEnumeratingWithState:&v172 objects:v186 count:16];
                  if (v44)
                  {
                    v45 = *v173;
                    do
                    {
                      for (i = 0; i != v44; i = i + 1)
                      {
                        if (*v173 != v45)
                        {
                          objc_enumerationMutation(storedKeybagsByUUIDString3);
                        }

                        v47 = *(*(&v172 + 1) + 8 * i);
                        storedKeybagsByUUIDString4 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                        v49 = [storedKeybagsByUUIDString4 objectForKeyedSubscript:v47];

                        device = [(MBCKEngine *)self device];
                        keybagManager = [device keybagManager];
                        [keybagManager addKeybag:v49];
                      }

                      v44 = [storedKeybagsByUUIDString3 countByEnumeratingWithState:&v172 objects:v186 count:16];
                    }

                    while (v44);
                  }

LABEL_54:
                  if (![(MBCKEngine *)self handleCancelation:error])
                  {
                    context2 = [(MBCKEngine *)self context];
                    lockManager = [context2 lockManager];
                    v63 = [lockManager reacquireLockWithError:error];

                    if (v63)
                    {
                      if (!-[MBCKEngine handleCancelation:](self, "handleCancelation:", error) && [v152 fetchSnapshotsWithOperationTracker:v156 retry:1 error:error])
                      {
                        context3 = [(MBCKEngine *)self context];
                        snapshotUUID = [context3 snapshotUUID];

                        v65 = [NSMutableArray alloc];
                        device2 = [(MBCKEngine *)self device];
                        snapshots = [device2 snapshots];
                        obj = [v65 initWithCapacity:{objc_msgSend(snapshots, "count")}];

                        v170 = 0u;
                        v171 = 0u;
                        v168 = 0u;
                        v169 = 0u;
                        device3 = [(MBCKEngine *)self device];
                        snapshots2 = [device3 snapshots];

                        v70 = [snapshots2 countByEnumeratingWithState:&v168 objects:v185 count:16];
                        if (v70)
                        {
                          v71 = *v169;
                          while (2)
                          {
                            for (j = 0; j != v70; j = j + 1)
                            {
                              if (*v169 != v71)
                              {
                                objc_enumerationMutation(snapshots2);
                              }

                              v73 = *(*(&v168 + 1) + 8 * j);
                              [obj addObject:v73];
                              snapshotID = [v73 snapshotID];
                              v75 = [snapshotID isEqualToString:snapshotUUID];

                              if (v75)
                              {
                                objc_storeStrong(&self->_targetSnapshot, v73);

                                goto LABEL_93;
                              }
                            }

                            v70 = [snapshots2 countByEnumeratingWithState:&v168 objects:v185 count:16];
                            if (v70)
                            {
                              continue;
                            }

                            break;
                          }
                        }

LABEL_93:
                        if (self->_targetSnapshot)
                        {
                          serviceAccount2 = [(MBCKEngine *)self serviceAccount];
                          if (!serviceAccount2)
                          {
                            __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 649, "account");
                          }

                          v167 = 0;
                          if ([(MBEngine *)self isForegroundRestore])
                          {
                            if ([MBRestoreCloudFormatPolicy shouldRestoreSnapshot:self->_targetSnapshot account:serviceAccount2 persona:persona2 useFileLists:&v167 error:error])
                            {
                              v82 = [persona2 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];
                              if (!v82)
                              {
                                __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 659, "savedCloudFormatInfo");
                              }

                              [(MBCKRestoreEngine *)self setCloudFormatInfo:v82];

LABEL_102:
                              [(MBCKRestoreEngine *)self setUseFileLists:v167];
                              *&buf = 0;
                              *(&buf + 1) = &buf;
                              v183 = 0x2020000000;
                              v184 = 0;
                              if ([(MBCKRestoreEngine *)self useFileLists])
                              {
                                if ([(MBEngine *)self isForegroundRestore])
                                {
                                  v86 = 0;
                                }

                                else
                                {
                                  snapshotID2 = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
                                  v166 = 0;
                                  v91 = [serviceManager restorePlanForAccount:serviceAccount2 snapshotUUID:snapshotID2 error:&v166];
                                  v86 = v166;
                                  if (!v91)
                                  {
                                    v111 = MBGetDefaultLog();
                                    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                                    {
                                      *v178 = 138412290;
                                      v179 = v86;
                                      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to load restore plan for background restore: %@", v178, 0xCu);
                                      _MBLog(@"E ", "=ckrestore-engine= Failed to load restore plan for background restore: %@", v86);
                                    }

                                    if (error)
                                    {
                                      v112 = v86;
                                      *error = v86;
                                    }

                                    goto LABEL_140;
                                  }

                                  isPopulated = [v91 isPopulated];
                                  *(*(&buf + 1) + 24) = isPopulated;
                                }
                              }

                              else
                              {
                                cache2 = [(MBCKEngine *)self cache];
                                v165[0] = _NSConcreteStackBlock;
                                v165[1] = 3221225472;
                                v165[2] = sub_1000582FC;
                                v165[3] = &unk_1003BC428;
                                v165[4] = &buf;
                                v86 = [cache2 hasRestoreFilesWithCallback:v165];

                                if (v86)
                                {
                                  v88 = MBGetDefaultLog();
                                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                                  {
                                    *v178 = 138412290;
                                    v179 = v86;
                                    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Cache error checking for restorable files: %@", v178, 0xCu);
                                    _MBLog(@"E ", "=ckrestore-engine= Cache error checking for restorable files: %@", v86);
                                  }

                                  if (error)
                                  {
                                    v89 = v86;
                                    *error = v86;
                                  }

                                  v86 = 0;
                                  goto LABEL_140;
                                }
                              }

                              if (*(*(&buf + 1) + 24) == 1 && ![(MBEngine *)self isForegroundRestore])
                              {
                                goto LABEL_125;
                              }

                              v93 = MBGetDefaultLog();
                              if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                              {
                                v94 = v93;
                                if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                                {
                                  device4 = [(MBCKEngine *)self device];
                                  snapshots3 = [device4 snapshots];
                                  *v178 = 138412290;
                                  v179 = snapshots3;
                                  _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "=ckrestore-engine= Device has snapshots: %@", v178, 0xCu);
                                }

                                device5 = [(MBCKEngine *)self device];
                                snapshots4 = [device5 snapshots];
                                _MBLog(@"I ", "=ckrestore-engine= Device has snapshots: %@", snapshots4);
                              }

                              v99 = [MBCKProperties alloc];
                              backupProperties = [(MBCKSnapshot *)self->_targetSnapshot backupProperties];
                              v101 = [(MBProperties *)v99 initWithData:backupProperties error:error];
                              [(MBCKEngine *)self setProperties:v101];

                              properties = [(MBCKEngine *)self properties];
                              v103 = properties == 0;

                              if (!v103)
                              {
                                objc_storeStrong(&self->_validSnapshots, obj);
                                v104 = MBGetDefaultLog();
                                if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                                {
                                  validSnapshots = self->_validSnapshots;
                                  *v178 = 138412290;
                                  v179 = validSnapshots;
                                  _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "=ckrestore-engine= Restoring from snapshots: %@", v178, 0xCu);
                                  _MBLog(@"I ", "=ckrestore-engine= Restoring from snapshots: %@", self->_validSnapshots);
                                }

LABEL_125:
                                v164 = v86;
                                persona3 = [objc_opt_class() _fetchBackupPolicyWithDevice:v152 snapshotUUID:snapshotUUID error:&v164];
                                v146 = v164;

                                if (!persona3 && v146)
                                {
                                  if (error)
                                  {
                                    [MBError errorWithCode:205 format:@"Failed to fetch the backup policy for snapshot %@", snapshotUUID];
                                    *error = v15 = 0;
LABEL_175:
                                    v86 = v146;
                                    goto LABEL_176;
                                  }

LABEL_174:
                                  v15 = 0;
                                  goto LABEL_175;
                                }

                                context4 = [(MBCKEngine *)self context];
                                [context4 setBackupPolicy:persona3];

                                if ([(MBCKEngine *)self handleCancelation:error])
                                {
                                  goto LABEL_174;
                                }

                                device6 = [(MBCKEngine *)self device];
                                canRestoreSystemFiles = [device6 canRestoreSystemFiles];
                                if (canRestoreSystemFiles)
                                {
                                  persona3 = [(MBCKEngine *)self persona];
                                  shouldRestoreToSharedVolume = [persona3 shouldRestoreToSharedVolume];
                                }

                                else
                                {
                                  shouldRestoreToSharedVolume = 0;
                                }

                                context5 = [(MBCKEngine *)self context];
                                [context5 setShouldRestoreSystemFiles:shouldRestoreToSharedVolume];

                                if (canRestoreSystemFiles)
                                {
                                }

                                context6 = [(MBCKEngine *)self context];
                                shouldRestoreSystemFiles = [context6 shouldRestoreSystemFiles];

                                if ((shouldRestoreSystemFiles & 1) == 0)
                                {
                                  v116 = MBGetDefaultLog();
                                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v117 = v116;
                                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                                    {
                                      device7 = [(MBCKEngine *)self device];
                                      deviceClass = [device7 deviceClass];
                                      v120 = MBDeviceClass();
                                      *v178 = 138412546;
                                      v179 = deviceClass;
                                      v180 = 2112;
                                      v181 = v120;
                                      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not restoring system files from %@ backup to %@", v178, 0x16u);
                                    }

                                    device8 = [(MBCKEngine *)self device];
                                    deviceClass2 = [device8 deviceClass];
                                    v123 = MBDeviceClass();
                                    _MBLog(@"Df", "=ckrestore-engine= Not restoring system files from %@ backup to %@", deviceClass2, v123);
                                  }
                                }

                                if (![(MBCKRestoreEngine *)self useFileLists])
                                {
                                  v124 = +[NSMutableSet set];
                                  cache3 = [(MBCKEngine *)self cache];
                                  v162[0] = _NSConcreteStackBlock;
                                  v162[1] = 3221225472;
                                  v162[2] = sub_10005830C;
                                  v162[3] = &unk_1003BC450;
                                  v126 = v124;
                                  v163 = v126;
                                  v127 = [cache3 enumeratePendingRestorableDomainsWithCallback:v162];

                                  v160 = 0u;
                                  v161 = 0u;
                                  v158 = 0u;
                                  v159 = 0u;
                                  allContainers = [(MBAppManager *)self->super.super._appManager allContainers];
                                  v128 = [allContainers countByEnumeratingWithState:&v158 objects:v177 count:16];
                                  if (v128)
                                  {
                                    v149 = *v159;
                                    do
                                    {
                                      for (k = 0; k != v128; k = k + 1)
                                      {
                                        if (*v159 != v149)
                                        {
                                          objc_enumerationMutation(allContainers);
                                        }

                                        v130 = *(*(&v158 + 1) + 8 * k);
                                        domain = [v130 domain];
                                        name = [domain name];
                                        v133 = [v126 containsObject:name];

                                        if (v133)
                                        {
                                          domainManager2 = [(MBEngine *)self domainManager];
                                          domain2 = [v130 domain];
                                          [domainManager2 addDomain:domain2];
                                        }
                                      }

                                      v128 = [allContainers countByEnumeratingWithState:&v158 objects:v177 count:16];
                                    }

                                    while (v128);
                                  }
                                }

                                [(MBCKRestoreEngine *)self resetRestorePolicy];
                                if ([(MBEngine *)self isForegroundRestore])
                                {
                                  restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
                                  v137 = [restorePolicy notifyPluginsStartingRestoreWithEngine:self];

                                  if (v137)
                                  {
                                    v138 = MBGetDefaultLog();
                                    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                                    {
                                      *v178 = 138412290;
                                      v179 = v137;
                                      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of startingRestoreWithEngine: %@", v178, 0xCu);
                                      _MBLog(@"E ", "=ckrestore-engine= Failed to notify plugins of startingRestoreWithEngine: %@", v137);
                                    }

LABEL_171:

                                    if (error)
                                    {
                                      v145 = v137;
                                      *error = v137;
                                    }

                                    goto LABEL_174;
                                  }

                                  restorePolicy2 = [(MBCKRestoreEngine *)self restorePolicy];
                                  v137 = [restorePolicy2 notifyPluginsPreparingRestoreWithEngine:self];

                                  if (v137)
                                  {
                                    v138 = MBGetDefaultLog();
                                    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                                    {
                                      *v178 = 138412290;
                                      v179 = v137;
                                      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of preparingRestoreWithEngine: %@", v178, 0xCu);
                                      _MBLog(@"E ", "=ckrestore-engine= Failed to notify plugins of preparingRestoreWithEngine: %@", v137);
                                    }

                                    goto LABEL_171;
                                  }
                                }

                                else
                                {
                                  context7 = [(MBCKEngine *)self context];
                                  v140 = [context7 qos];
                                  integerValue = [v140 integerValue];

                                  databaseManager = [v156 databaseManager];
                                  account = [v156 account];
                                  [databaseManager setShouldSupportBudgeting:integerValue > 24 account:account];
                                }

                                v15 = 1;
                                goto LABEL_175;
                              }

                              if (error)
                              {
                                [MBError errorWithCode:205 format:@"Invalid snapshot %@: missing properties", self->_targetSnapshot];
                                *error = v15 = 0;
LABEL_176:
                                _Block_object_dispose(&buf, 8);
                                goto LABEL_177;
                              }

LABEL_140:
                              v15 = 0;
                              goto LABEL_176;
                            }
                          }

                          else if ([MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v167 persona:persona2 error:error])
                          {
                            goto LABEL_102;
                          }
                        }

                        else
                        {
                          if (!error)
                          {
                            v86 = 0;
                            v15 = 0;
LABEL_178:

                            goto LABEL_79;
                          }

                          serviceAccount2 = [(MBCKEngine *)self context];
                          snapshotID3 = [serviceAccount2 snapshotID];
                          device9 = [(MBCKEngine *)self device];
                          snapshots5 = [device9 snapshots];
                          *error = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, @"Invalid snapshot offset (%ld of %lu snapshots)", snapshotID3, [snapshots5 count]);
                        }

                        v86 = 0;
                        v15 = 0;
LABEL_177:

                        goto LABEL_178;
                      }
                    }

                    else
                    {
                      v80 = MBGetDefaultLog();
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(buf) = 0;
                        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to acquire lock", &buf, 2u);
                        _MBLog(@"E ", "=ckrestore-engine= Failed to acquire lock");
                      }
                    }
                  }

                  goto LABEL_78;
                }
              }

              device10 = [(MBCKEngine *)self device];
              keybagManager2 = [device10 keybagManager];
              hasFetchedKeybags = [keybagManager2 hasFetchedKeybags];

              if (hasFetchedKeybags)
              {
                goto LABEL_54;
              }

              if (-[MBEngine isForegroundRestore](self, "isForegroundRestore") || (-[MBCKEngine persona](self, "persona"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 isDataSeparatedPersona], v56, v57))
              {
                device11 = [(MBCKEngine *)self device];
                keybagManager3 = [device11 keybagManager];
                v60 = [keybagManager3 fetchKeybagsWithOperationTracker:v156 error:error];

                if (v60)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v81 = MBGetDefaultLog();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore keybag not loaded yet", &buf, 2u);
                  _MBLog(@"E ", "=ckrestore-engine= Restore keybag not loaded yet");
                }

                if (error)
                {
                  [MBError errorWithCode:208 format:@"Restore keybag not loaded yet"];
                  *error = v15 = 0;
                  goto LABEL_79;
                }
              }
            }

LABEL_78:
            v15 = 0;
LABEL_79:
            v29 = v152;
            goto LABEL_80;
          }

LABEL_74:
          v15 = 0;
LABEL_80:

          v26 = backupUDID;
          goto LABEL_81;
        }
      }

      v15 = 0;
LABEL_82:

      v20 = v156;
      goto LABEL_83;
    }

    goto LABEL_46;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= nil domain manager", &buf, 2u);
    _MBLog(@"E ", "=ckrestore-engine= nil domain manager");
  }

  if (!error)
  {
LABEL_46:
    v15 = 0;
    goto LABEL_47;
  }

  [MBError errorWithCode:1 format:@"nil domain manager"];
  *error = v15 = 0;
LABEL_47:

  return v15;
}

- (BOOL)cancelWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = MBCKRestoreEngine;
  v4 = [(MBCKEngine *)&v7 cancelWithError:error];
  if (!v4)
  {
    cacheDeleteRequest = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    [cacheDeleteRequest cancel];
  }

  return v4;
}

- (BOOL)synchronizeFileListsWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 767, "error");
  }

  if (![(MBEngine *)self isForegroundRestore])
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Skipping file list synchronization for background restore", buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= =sync= Skipping file list synchronization for background restore");
    }

    goto LABEL_15;
  }

  if (![(MBCKRestoreEngine *)self useFileLists])
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Skipping file list synchronization, restoring legacy snapshot data", buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= =sync= Skipping file list synchronization, restoring legacy snapshot data");
    }

LABEL_15:
    v12 = 1;
    goto LABEL_72;
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 780, "serviceManager");
  }

  v6 = serviceManager;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 783, "account");
  }

  v8 = serviceAccount;
  snapshotID = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
  errorCopy = error;
  v10 = [v6 restorePlanForAccount:v8 snapshotUUID:snapshotID error:error];
  v63 = v10;
  if (v10)
  {
    if ([v10 isPopulated])
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = v63;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Restore plan already synchronized %@", buf, 0xCu);
        _MBLog(@"Df", "=ckrestore-engine= =sync= Restore plan already synchronized %@", v63);
      }

      v12 = 1;
    }

    else
    {
      device = [(MBCKEngine *)self device];
      if (!device)
      {
        __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 799, "device");
      }

      v11 = device;
      ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
      if (!ckOperationTracker)
      {
        __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 801, "tracker");
      }

      v16 = ckOperationTracker;
      v17 = +[NSMutableArray array];
      restoreSnapshotsDirectoryRoot = [v63 restoreSnapshotsDirectoryRoot];
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100058D94;
      v76[3] = &unk_1003BC478;
      v19 = v17;
      v77 = v19;
      LOBYTE(v17) = [v11 synchronizeFileListsWithOperationTracker:v16 snapshotDirectory:restoreSnapshotsDirectoryRoot snapshotUUID:snapshotID error:error fetchedFileListBlock:v76];

      v60 = v19;
      if (v17)
      {
        v55 = v16;
        v56 = v11;
        v57 = snapshotID;
        v58 = v8;
        v59 = v6;

        domainManager = [(MBEngine *)self domainManager];
        if (!domainManager)
        {
          __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 814, "domainManager");
        }

        [v19 sortUsingSelector:"compare:"];
        v20 = +[NSMutableArray array];
        v21 = +[NSMutableArray array];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v22 = v19;
        v23 = [v22 countByEnumeratingWithState:&v72 objects:v86 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v73;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v73 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v72 + 1) + 8 * i);
              restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
              v29 = [restorePolicy shouldForegroundRestoreDomain:v27];

              if (v29)
              {
                v30 = v20;
              }

              else
              {
                v30 = v21;
              }

              [v30 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v72 objects:v86 count:16];
          }

          while (v24);
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v31 = v20;
        v32 = [v31 countByEnumeratingWithState:&v68 objects:v85 count:16];
        obj = v31;
        if (v32)
        {
          v33 = v32;
          v34 = *v69;
LABEL_35:
          v35 = 0;
          while (1)
          {
            if (*v69 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v68 + 1) + 8 * v35);
            v37 = MBGetDefaultLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v80 = v36;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Ingesting foreground domain (%@) into restore plan", buf, 0xCu);
              _MBLog(@"Df", "=ckrestore-engine= =sync= Ingesting foreground domain (%@) into restore plan", v36);
            }

            if (([v63 ingestFileListForDomainNamed:v36 error:errorCopy] & 1) == 0)
            {
              break;
            }

            if (![(MBCKRestoreEngine *)self _markForegroundRestorablesForBackgroundRestoreInPlan:v63 domainName:v36 error:errorCopy])
            {
              v12 = 0;
              v50 = obj;
              v38 = obj;
              v8 = v58;
              v6 = v59;
              v11 = v56;
              snapshotID = v57;
LABEL_64:
              v47 = domainManager;
              goto LABEL_69;
            }

            if (v33 == ++v35)
            {
              v31 = obj;
              v33 = [obj countByEnumeratingWithState:&v68 objects:v85 count:16];
              if (v33)
              {
                goto LABEL_35;
              }

              goto LABEL_44;
            }
          }

          v48 = MBGetDefaultLog();
          v8 = v58;
          v6 = v59;
          v11 = v56;
          snapshotID = v57;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = *errorCopy;
            *buf = 138412802;
            v80 = v36;
            v81 = 2112;
            v82 = v63;
            v83 = 2112;
            v84 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error ingesting foreground domain (%@) into restore plan %@: %@", buf, 0x20u);
            _MBLog(@"E ", "=ckrestore-engine= =sync= Error ingesting foreground domain (%@) into restore plan %@: %@", v36, v63, *errorCopy);
          }

          v12 = 0;
          v50 = obj;
          v38 = obj;
          goto LABEL_64;
        }

LABEL_44:

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v38 = v21;
        v39 = [v38 countByEnumeratingWithState:&v64 objects:v78 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v65;
          while (2)
          {
            for (j = 0; j != v40; j = j + 1)
            {
              if (*v65 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v64 + 1) + 8 * j);
              v44 = MBGetDefaultLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v80 = v43;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Ingesting background domain (%@) into restore plan", buf, 0xCu);
                _MBLog(@"Df", "=ckrestore-engine= =sync= Ingesting background domain (%@) into restore plan", v43);
              }

              if (([v63 ingestFileListForDomainNamed:v43 error:errorCopy] & 1) == 0)
              {
                v51 = MBGetDefaultLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v52 = *errorCopy;
                  *buf = 138412802;
                  v80 = v43;
                  v81 = 2112;
                  v82 = v63;
                  v83 = 2112;
                  v84 = v52;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error ingesting background domain (%@) into restore plan %@: %@", buf, 0x20u);
                  _MBLog(@"E ", "=ckrestore-engine= =sync= Error ingesting background domain (%@) into restore plan %@: %@", v43, v63, *errorCopy);
                }

                v12 = 0;
                goto LABEL_68;
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v64 objects:v78 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v22 count];
          *buf = 134218242;
          v80 = v45;
          v81 = 2112;
          v82 = v63;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Restore plan initialized, ingested %ld file lists: %@", buf, 0x16u);
          _MBLog(@"Df", "=ckrestore-engine= =sync= Restore plan initialized, ingested %ld file lists: %@", [v22 count], v63);
        }

        v12 = 1;
LABEL_68:
        v8 = v58;
        v6 = v59;
        v11 = v56;
        snapshotID = v57;
        v47 = domainManager;
        v50 = obj;
LABEL_69:

        v16 = v55;
      }

      else
      {
        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error synchronizing file lists", buf, 2u);
          _MBLog(@"E ", "=ckrestore-engine= =sync= Error synchronizing file lists");
        }

        v12 = 0;
        v47 = v77;
      }
    }
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *error;
      *buf = 138412290;
      v80 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Failed to open a restore plan to synchronize into: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= =sync= Failed to open a restore plan to synchronize into: %@", *error);
    }

    v12 = 0;
  }

LABEL_72:
  return v12;
}

- (BOOL)_markForegroundRestorablesForBackgroundRestoreInPlan:(id)plan domainName:(id)name error:(id *)error
{
  planCopy = plan;
  nameCopy = name;
  if (!error)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]", "MBCKRestoreEngine.m", 857, "error");
  }

  v10 = nameCopy;
  domainManager = [(MBEngine *)self domainManager];
  v12 = [domainManager domainForName:v10];

  if (!v12)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]", "MBCKRestoreEngine.m", 860, "domain");
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v13 = [planCopy planForDomain:v12 restoreType:1 error:error];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000591E0;
  v22[3] = &unk_1003BC4A0;
  v22[4] = self;
  v22[5] = &v27;
  v22[6] = &v23;
  if (([v13 enumerateAndMarkATCRestorables:error enumerator:v22] & 1) == 0)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *error;
      *buf = 138412546;
      v32 = v10;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error marking ATC files for (%@) in restore plan: %@", buf, 0x16u);
      _MBLog(@"E ", "=ckrestore-engine= =sync= Error marking ATC files for (%@) in restore plan: %@", v10, *error);
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v24[3];
    v17 = v28[3];
    *buf = 134218498;
    v32 = v16;
    v33 = 2048;
    v34 = v17;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Deferred %ld/%ld restorables from foreground to background in %@", buf, 0x20u);
    _MBLog(@"Df", "=ckrestore-engine= =sync= Deferred %ld/%ld restorables from foreground to background in %@", v24[3], v28[3], v10);
  }

  v18 = 1;
LABEL_12:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v18;
}

- (BOOL)findRestorablesWithError:(id *)error
{
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v4 = MBGetDefaultLog();
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Skipping findRestorables when restoring assets from file lists", &buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= Skipping findRestorables when restoring assets from file lists");
      v6 = 1;
      v5 = v4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    cache = [(MBCKEngine *)self cache];
    v41 = self->_validSnapshots;
    domainManager = [(MBEngine *)self domainManager];
    serviceAccount = [(MBCKEngine *)self serviceAccount];
    Current = CFAbsoluteTimeGetCurrent();
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finding restorable files", &buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= Finding restorable files");
    }

    serviceManager = [(MBCKEngine *)self serviceManager];
    v48 = [serviceManager openCacheWithAccount:serviceAccount accessType:2 cached:0 error:error];

    if (v48)
    {
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = v41;
      v10 = 0;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v86 count:16];
      if (v11)
      {
        v45 = *v70;
        do
        {
          v12 = 0;
          do
          {
            if (*v70 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v69 + 1) + 8 * v12);
            v68 = v10;
            v14 = [(MBCKEngine *)self handleCancelation:&v68];
            v15 = v68;

            if (v14)
            {
              v10 = v15;
              goto LABEL_31;
            }

            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v13;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding restorables for snapshot %@", &buf, 0xCu);
              _MBLog(@"Df", "=ckrestore-engine= Adding restorables for snapshot %@", v13);
            }

            v64 = 0;
            v65 = &v64;
            v66 = 0x2020000000;
            v67 = 0;
            *&buf = 0;
            *(&buf + 1) = &buf;
            v82 = 0x3032000000;
            v83 = sub_100059C00;
            v84 = sub_100059C10;
            v85 = 0;
            v58 = 0;
            v59 = &v58;
            v60 = 0x3032000000;
            v61 = sub_100059C00;
            v62 = sub_100059C10;
            v63 = 0;
            snapshotID = [v13 snapshotID];
            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_100059C18;
            v50[3] = &unk_1003BC4C8;
            v51 = domainManager;
            selfCopy = self;
            v54 = &v58;
            v53 = cache;
            p_buf = &buf;
            v56 = &v64;
            v57 = &v73;
            v18 = [v48 enumerateFilesForSnapshotOrderedByDomain:snapshotID block:v50];

            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v65[3];
              v21 = *(*(&buf + 1) + 40);
              *v77 = 134218242;
              v78 = v20;
              v79 = 2114;
              v80 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found %llu restorables for %{public}@", v77, 0x16u);
              _MBLog(@"Df", "=ckrestore-engine= Found %llu restorables for %{public}@", v65[3], *(*(&buf + 1) + 40));
            }

            v22 = v18;
            if (v18 || (v22 = v59[5]) != 0)
            {
              v10 = v22;

              v23 = 0;
            }

            else
            {
              v23 = 1;
              v10 = v15;
            }

            _Block_object_dispose(&v58, 8);
            _Block_object_dispose(&buf, 8);

            _Block_object_dispose(&v64, 8);
            if (!v23)
            {
              goto LABEL_31;
            }

            v12 = v12 + 1;
          }

          while (v11 != v12);
          v24 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v86 count:16];
          v11 = v24;
        }

        while (v24);
      }

LABEL_31:

      [v48 close];
      if (v10)
      {
        if (error)
        {
          v27 = v10;
          v6 = 0;
          *error = v10;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v74[3];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found %llu total restorables", &buf, 0xCu);
          _MBLog(@"Df", "=ckrestore-engine= Found %llu total restorables", v74[3]);
        }

        v49 = 0;
        v30 = [cache computeSignatureRetainCountsWithError:&v49];
        v31 = v49;
        if (v30)
        {
          removeDeletedRestoreFiles = [cache removeDeletedRestoreFiles];

          if (removeDeletedRestoreFiles)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = removeDeletedRestoreFiles;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to remove deleted restore files prior to restore: %@", &buf, 0xCu);
              _MBLog(@"E ", "=ckrestore-engine= Failed to remove deleted restore files prior to restore: %@", removeDeletedRestoreFiles);
            }

            if (error)
            {
              v34 = removeDeletedRestoreFiles;
              v6 = 0;
              *error = removeDeletedRestoreFiles;
            }

            else
            {
              v6 = 0;
            }

            v31 = removeDeletedRestoreFiles;
          }

          else
          {
            v37 = CFAbsoluteTimeGetCurrent();
            v38 = MBGetDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v37 - Current;
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finished finding restorables in %.3fs", &buf, 0xCu);
              _MBLog(@"Df", "=ckrestore-engine= Finished finding restorables in %.3fs", v39);
            }

            v31 = 0;
            v6 = 1;
          }
        }

        else
        {
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v31;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to compute signature retain counts: %@", &buf, 0xCu);
            _MBLog(@"E ", "=ckrestore-engine= Failed to compute signature retain counts: %@", v31);
          }

          if (error)
          {
            v36 = v31;
            v6 = 0;
            *error = v31;
          }

          else
          {
            v6 = 0;
          }
        }
      }

      _Block_object_dispose(&v73, 8);
    }

    else
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *error;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to open readonly cache %@", &buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to open readonly cache %@", *error);
      }

      v6 = 0;
    }

    v5 = cache;
  }

  return v6;
}

- (void)_uninstallExistingAppWithBundleID:(id)d
{
  dCopy = d;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine _uninstallExistingAppWithBundleID:]", "MBCKRestoreEngine.m", 1016, "serviceAccount");
  }

  v6 = serviceAccount;
  settingsContext = [(MBEngine *)self settingsContext];
  mobileInstallation = [settingsContext mobileInstallation];

  if (!mobileInstallation)
  {
    __assert_rtn("[MBCKRestoreEngine _uninstallExistingAppWithBundleID:]", "MBCKRestoreEngine.m", 1018, "mobileInstallation");
  }

  useFileLists = [(MBCKRestoreEngine *)self useFileLists];
  persona = [v6 persona];
  if (useFileLists)
  {
    v27 = 0;
    v11 = [mobileInstallation userAppWithBundleID:dCopy placeholder:1 persona:persona error:&v27];
    v12 = v27;

    v13 = v11 != 0;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v26 = 0;
    v11 = [mobileInstallation userAppWithBundleID:dCopy placeholder:0 persona:persona error:&v26];
    v12 = v26;

    if (v11)
    {
      v14 = [v11 objectForKeyedSubscript:@"IsInstalled"];
      bOOLValue = [v14 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_13:
      v17 = [MBApp alloc];
      persona2 = [(MBCKEngine *)self persona];
      userDataVolume = [persona2 userDataVolume];
      v20 = [(MBContainer *)v17 initWithPropertyList:v11 volumeMountPoint:userDataVolume];

      LODWORD(persona2) = [(MBApp *)v20 isSystemApp];
      v21 = MBGetDefaultLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (persona2)
      {
        if (v22)
        {
          *buf = 138412290;
          v29 = dCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not uninstalling system app with bundleID %@", buf, 0xCu);
          _MBLog(@"Df", "=ckrestore-engine= Not uninstalling system app with bundleID %@", dCopy);
        }
      }

      else
      {
        if (v22)
        {
          *buf = 138412290;
          v29 = dCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Uninstalling 2nd party factory-installed app %@", buf, 0xCu);
          _MBLog(@"Df", "=ckrestore-engine= Uninstalling 2nd party factory-installed app %@", dCopy);
        }

        v25 = v12;
        v23 = [MBMobileInstallation uninstallAppWithBundleID:dCopy error:&v25];
        v24 = v25;

        if (v23)
        {
          v12 = v24;
LABEL_24:

          goto LABEL_25;
        }

        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v29 = dCopy;
          v30 = 2112;
          v31 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to uninstall %{public}@: %@", buf, 0x16u);
          _MBLog(@"E ", "=ckrestore-engine= Failed to uninstall %{public}@: %@", dCopy, v24);
        }

        v12 = v24;
      }

      goto LABEL_24;
    }

    v13 = 0;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = dCopy;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Failed to find user app %@: %@", buf, 0x16u);
    _MBLog(@"Df", "=ckrestore-engine= Failed to find user app %@: %@", dCopy, v12);
  }

  v11 = 0;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_25:
}

- (id)_fetchDomainNamesToForegroundRestoreWithError:(id *)error
{
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1054, "tracker");
  }

  v6 = ckOperationTracker;
  account = [ckOperationTracker account];
  if (!account)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1056, "serviceAccount");
  }

  v8 = account;
  domainManager = [(MBEngine *)self domainManager];
  if (!domainManager)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1058, "domainManager");
  }

  v10 = domainManager;
  v11 = self->_targetSnapshot;
  if (!v11)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1060, "targetSnapshot");
  }

  v12 = v11;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 3221225472;
  v137[2] = sub_10005B144;
  v137[3] = &unk_1003BC4F0;
  v137[4] = self;
  v95 = v13;
  v138 = v95;
  v94 = v10;
  v139 = v94;
  v15 = v14;
  v140 = v15;
  v16 = objc_retainBlock(v137);
  v109 = v15;
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    selfCopy2 = self;
    _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
    if (!_populatedRestorePlan)
    {
      __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1102, "plan");
    }

    v19 = _populatedRestorePlan;
    v136 = 0;
    v20 = [_populatedRestorePlan enumerateDomainNamesPendingRestoreWithError:&v136 enumerator:v16];
    v21 = v136;
    v22 = v21;
    if ((v20 & 1) == 0)
    {
      if (error)
      {
        v29 = v21;
        *error = v22;
      }

      v30 = MBGetDefaultLog();
      v15 = v109;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v145 = v22;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to enumerate restorable domains from plan: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to enumerate restorable domains from plan: %@", v22);
      }

      goto LABEL_23;
    }

    v135 = v21;
    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v134[2] = sub_10005B36C;
    v134[3] = &unk_1003BC518;
    v134[4] = self;
    v23 = [v19 enumerateBundleIDsWithPlaceholderIPAsWithError:&v135 enumerator:v134];
    v24 = v135;

    if ((v23 & 1) == 0)
    {
      if (error)
      {
        v80 = v24;
        *error = v24;
      }

      v81 = MBGetDefaultLog();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v145 = v24;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to enumerate app bundleIDs from plan: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to enumerate app bundleIDs from plan: %@", v24);
      }

      v31 = 0;
      v15 = v109;
      goto LABEL_24;
    }

    v15 = v109;
  }

  else
  {
    cache = [(MBCKEngine *)self cache];
    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v132[2] = sub_10005B4D0;
    v132[3] = &unk_1003BC540;
    v133 = v16;
    v26 = [cache enumeratePendingRestorableDomainsWithCallback:v132];

    if (v26)
    {
      if (error)
      {
        v27 = v26;
        *error = v26;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v145 = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to enumerate restorable domains from cache: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to enumerate restorable domains from cache: %@", v26);
      }

      goto LABEL_23;
    }

    selfCopy2 = self;
    v19 = v133;
  }

  if ([(MBCKEngine *)selfCopy2 handleCancelation:error])
  {
LABEL_23:
    v31 = 0;
    goto LABEL_24;
  }

  v91 = v12;
  v92 = v8;
  v93 = v6;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  p_isa = &selfCopy2->super.super.super.isa;
  obj = [(MBAppManager *)selfCopy2->super.super._appManager allPlugins];
  v99 = [obj countByEnumeratingWithState:&v128 objects:v153 count:16];
  v100 = v16;
  if (v99)
  {
    v98 = *v129;
    do
    {
      v33 = 0;
      do
      {
        if (*v129 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v105 = v33;
        v34 = *(*(&v128 + 1) + 8 * v33);
        context = objc_autoreleasePoolPush();
        identifier = [v34 identifier];
        domain = [v34 domain];
        name = [domain name];

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          containerTypeString = [v34 containerTypeString];
          *buf = 138412802;
          v145 = name;
          v146 = 2112;
          v147 = identifier;
          v148 = 2112;
          v149 = containerTypeString;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding plugin %@/%@ (%@)", buf, 0x20u);

          containerTypeString2 = [v34 containerTypeString];
          _MBLog(@"Df", "=ckrestore-engine= Adding plugin %@/%@ (%@)", name, identifier, containerTypeString2);
        }

        v101 = name;
        [v15 addObject:name];
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        allAppGroupContainers = [v34 allAppGroupContainers];
        v41 = [allAppGroupContainers countByEnumeratingWithState:&v124 objects:v152 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v125;
          do
          {
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v125 != v43)
              {
                objc_enumerationMutation(allAppGroupContainers);
              }

              v45 = *(*(&v124 + 1) + 8 * i);
              v46 = MBGetDefaultLog();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                domain2 = [v45 domain];
                name2 = [domain2 name];
                identifier2 = [v45 identifier];
                containerTypeString3 = [v45 containerTypeString];
                *buf = 138413058;
                v145 = name2;
                v146 = 2112;
                v147 = identifier2;
                v148 = 2112;
                v149 = containerTypeString3;
                v150 = 2112;
                v151 = identifier;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding app group container %@/%@ (%@) for %@", buf, 0x2Au);

                domain3 = [v45 domain];
                name3 = [domain3 name];
                identifier3 = [v45 identifier];
                containerTypeString4 = [v45 containerTypeString];
                _MBLog(@"Df", "=ckrestore-engine= Adding app group container %@/%@ (%@) for %@", name3, identifier3, containerTypeString4, identifier);

                v15 = v109;
              }

              domain4 = [v45 domain];
              name4 = [domain4 name];
              [v15 addObject:name4];
            }

            v42 = [allAppGroupContainers countByEnumeratingWithState:&v124 objects:v152 count:16];
          }

          while (v42);
        }

        objc_autoreleasePoolPop(context);
        v33 = v105 + 1;
        v16 = v100;
      }

      while (v105 + 1 != v99);
      v99 = [obj countByEnumeratingWithState:&v128 objects:v153 count:16];
    }

    while (v99);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  allApps = [p_isa[6] allApps];
  v57 = [allApps countByEnumeratingWithState:&v120 objects:v143 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v121;
    v102 = *v121;
    do
    {
      v60 = 0;
      contexta = v58;
      do
      {
        if (*v121 != v59)
        {
          objc_enumerationMutation(allApps);
        }

        v61 = *(*(&v120 + 1) + 8 * v60);
        if ([v61 isSystemApp])
        {
          containerDir = [v61 containerDir];

          if (containerDir)
          {
            v107 = v60;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            containers = [v61 containers];
            v64 = [containers countByEnumeratingWithState:&v116 objects:v142 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v117;
              do
              {
                for (j = 0; j != v65; j = j + 1)
                {
                  if (*v117 != v66)
                  {
                    objc_enumerationMutation(containers);
                  }

                  v68 = *(*(&v116 + 1) + 8 * j);
                  if ([v68 containerType] - 1 <= 2)
                  {
                    v69 = MBGetDefaultLog();
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                    {
                      domain5 = [v68 domain];
                      name5 = [domain5 name];
                      identifier4 = [v68 identifier];
                      containerTypeString5 = [v68 containerTypeString];
                      *buf = 138412802;
                      v145 = name5;
                      v146 = 2112;
                      v147 = identifier4;
                      v148 = 2112;
                      v149 = containerTypeString5;
                      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding container %@/%@ (%@)", buf, 0x20u);

                      domain6 = [v68 domain];
                      name6 = [domain6 name];
                      identifier5 = [v68 identifier];
                      containerTypeString6 = [v68 containerTypeString];
                      _MBLog(@"Df", "=ckrestore-engine= Adding container %@/%@ (%@)", name6, identifier5, containerTypeString6);

                      v15 = v109;
                    }

                    domain7 = [v68 domain];
                    name7 = [domain7 name];
                    [v15 addObject:name7];
                  }
                }

                v65 = [containers countByEnumeratingWithState:&v116 objects:v142 count:16];
              }

              while (v65);
            }

            v16 = v100;
            v59 = v102;
            v58 = contexta;
            v60 = v107;
          }
        }

        v60 = v60 + 1;
      }

      while (v60 != v58);
      v58 = [allApps countByEnumeratingWithState:&v120 objects:v143 count:16];
    }

    while (v58);
  }

  if ([p_isa useFileLists])
  {
    [v15 intersectSet:v95];
  }

  else
  {
    v82 = +[NSMutableSet set];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v83 = v15;
    v84 = [v83 countByEnumeratingWithState:&v112 objects:v141 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v113;
      do
      {
        for (k = 0; k != v85; k = k + 1)
        {
          if (*v113 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v112 + 1) + 8 * k);
          cache2 = [p_isa cache];
          v110[0] = _NSConcreteStackBlock;
          v110[1] = 3221225472;
          v110[2] = sub_10005B4E4;
          v110[3] = &unk_1003BC568;
          v110[4] = v88;
          v111 = v82;
          v90 = [cache2 fetchPendingRestoreSizeForDomain:v88 callback:v110];
        }

        v85 = [v83 countByEnumeratingWithState:&v112 objects:v141 count:16];
      }

      while (v85);
    }

    [v83 minusSet:v82];
    v15 = v109;
    v16 = v100;
  }

  v31 = v15;
  v8 = v92;
  v6 = v93;
  v12 = v91;
LABEL_24:

  return v31;
}

- (BOOL)_downloadRestorablesForForegroundWithError:(id *)error
{
  v5 = [(MBCKRestoreEngine *)self _fetchDomainNamesToForegroundRestoreWithError:?];
  if (v5)
  {
    [(MBRestorePolicy *)self->_restorePolicy setDomainNamesToForegroundRestore:v5];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    [(MBCKRestoreEngine *)self setForegroundRestorableDomainCount:v6];

    v7 = self->_targetSnapshot;
    if (!v7)
    {
      __assert_rtn("[MBCKRestoreEngine _downloadRestorablesForForegroundWithError:]", "MBCKRestoreEngine.m", 1198, "targetSnapshot");
    }

    v8 = v7;
    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      v9 = [(MBCKRestoreEngine *)self _restoreForegroundFilesUsingPlanForDomainNames:v5 error:error];
    }

    else
    {
      v9 = [(MBCKRestoreEngine *)self _restoreForegroundFilesUsingCKCacheForDomainNames:v5 error:error];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_restoreDomainEngineForDomain:(id)domain plan:(id)plan error:(id *)error
{
  domainCopy = domain;
  planCopy = plan;
  device = [(MBCKEngine *)self device];
  if (!device)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1209, "device");
  }

  v11 = device;
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1211, "tracker");
  }

  v13 = ckOperationTracker;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1213, "persona");
  }

  v15 = persona;
  restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
  v17 = [restorePolicy restoreRootForDomain:domainCopy];

  if ([(MBEngine *)self isForegroundRestore]&& ![MBFileOperation createDirectories:4294967294 destinationBasePath:@"/" destinationRpath:v17 permissions:493 error:error])
  {
    v28 = 0;
  }

  else
  {
    v18 = [_TtC7backupd14MBRestoreDepot restoreDepotWithPersona:v15 destination:v17 restoreDepotOverridePath:0 error:error];
    if (v18)
    {
      v19 = [planCopy planForDomain:domainCopy restoreType:-[MBCKRestoreEngine restoreType](self error:{"restoreType"), error}];
      if (v19)
      {
        v20 = [MBAssetRecordFetcher assetFetcherWithTracker:v13 device:v11 error:error];
        if (v20)
        {
          v44 = v20;
          v21 = [MBAssetDecrypterFactory assetDecrypterWithTracker:v13 device:v11 error:error];
          if (v21)
          {
            v39 = v21;
            v40 = planCopy;
            v37 = v19;
            targetSnapshot = [(MBCKRestoreEngine *)self targetSnapshot];
            v38 = targetSnapshot;
            if (-[MBEngine isBackgroundRestore](self, "isBackgroundRestore") && (v23 = [targetSnapshot snapshotFormat], -[MBCKEngine serviceAccount](self, "serviceAccount"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v23, v26 = v24, v41 = +[MBRestoreSnapshotIntegrityVerifier shouldRunVerifierForRestoreWithSnapshotFormat:account:](MBRestoreSnapshotIntegrityVerifier, "shouldRunVerifierForRestoreWithSnapshotFormat:account:", v25), v26, v41))
            {
              v42 = [MBRestoreSnapshotIntegrityVerifier alloc];
              restorePolicy2 = [(MBCKRestoreEngine *)self restorePolicy];
              snapshotFormat = [targetSnapshot snapshotFormat];
              restoreSnapshotsDirectoryRoot = [v40 restoreSnapshotsDirectoryRoot];
              snapshotID = [targetSnapshot snapshotID];
              v43 = [(MBRestoreSnapshotIntegrityVerifier *)v42 initWithPolicy:restorePolicy2 snapshotFormat:snapshotFormat snapshotDir:restoreSnapshotsDirectoryRoot snapshotUUID:snapshotID delegate:self];
            }

            else
            {
              v43 = 0;
            }

            v36 = [MBRestoreDomainEngine alloc];
            restorePolicy3 = [(MBCKRestoreEngine *)self restorePolicy];
            progressModel = [(MBCKEngine *)self progressModel];
            restoreLogger = [(MBCKRestoreEngine *)self restoreLogger];
            v19 = v37;
            v28 = [(MBRestoreDomainEngine *)v36 initWithRootPath:v17 policy:restorePolicy3 depot:v18 fetcher:v44 decrypter:v39 plan:v37 progress:progressModel verifier:v43 logger:restoreLogger error:error];

            v21 = v39;
            planCopy = v40;
          }

          else
          {
            v28 = 0;
          }

          v20 = v44;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (BOOL)_restoreForegroundFilesUsingPlanForDomainNames:(id)names error:(id *)error
{
  namesCopy = names;
  _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!_populatedRestorePlan)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreForegroundFilesUsingPlanForDomainNames:error:]", "MBCKRestoreEngine.m", 1270, "plan");
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

  v10 = dispatch_queue_create("com.apple.MobileBackup.ForegroundRestore", v9);
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v50) = [namesCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=ckrestore-engine= Performing restore for %u foreground domains using plan", buf, 8u);
    _MBLog(@"I ", "=ckrestore-engine= Performing restore for %u foreground domains using plan", [namesCopy count]);
  }

  v12 = [(MBCKRestoreEngine *)self _restoreDomains:namesCopy plan:_populatedRestorePlan withQueue:v10 concurrencyLimit:6 error:error];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10005BF88;
  v26[3] = &unk_1003BC590;
  v13 = namesCopy;
  v27 = v13;
  v28 = &v45;
  v29 = &v41;
  v30 = &v33;
  v31 = &v37;
  v14 = [_populatedRestorePlan enumerateDomainsAndAttributes:&v32 enumerator:v26];
  v15 = v32;
  if (v14)
  {
    v16 = [NSNumber numberWithUnsignedLongLong:v46[3]];
    [(MBCKRestoreEngine *)self setForegroundRestorableFileCount:v16];

    v17 = [NSNumber numberWithLongLong:v42[3]];
    [(MBCKRestoreEngine *)self setForegroundRestorableSize:v17];

    v18 = [NSNumber numberWithLongLong:v34[3]];
    [(MBCKRestoreEngine *)self setBackgroundRestorableFileCount:v18];

    v19 = [NSNumber numberWithUnsignedLongLong:v38[3]];
    [(MBCKRestoreEngine *)self setBackgroundRestorableSize:v19];

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v46[3];
      v22 = v42[3];
      v23 = v34[3];
      v24 = v38[3];
      *buf = 134218752;
      v50 = v21;
      v51 = 2048;
      v52 = v22;
      v53 = 2048;
      v54 = v23;
      v55 = 2048;
      v56 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Foreground asset count:%llu size:%llu, background asset count:%llu size:%llu", buf, 0x2Au);
      _MBLog(@"Df", "=ckrestore-engine= Foreground asset count:%llu size:%llu, background asset count:%llu size:%llu", v46[3], v42[3], v34[3], v38[3]);
    }
  }

  else
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to collect FG/BG domain statistics from restore plan: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed to collect FG/BG domain statistics from restore plan: %@", v15);
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v12;
}

- (BOOL)_restoreDomains:(id)domains plan:(id)plan withQueue:(id)queue concurrencyLimit:(unint64_t)limit error:(id *)error
{
  domainsCopy = domains;
  planCopy = plan;
  queueCopy = queue;
  progressModel = [(MBCKEngine *)self progressModel];
  v14 = [planCopy addRemainingProgress:progressModel forDomainNames:domainsCopy error:error];

  if (v14)
  {
    dsema = dispatch_semaphore_create(limit);
    group = dispatch_group_create();
    v42 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = domainsCopy;
    v15 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v15)
    {
      v16 = *v49;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        if ([v42 count])
        {
          break;
        }

        domainManager = [(MBEngine *)self domainManager];
        v20 = [domainManager domainForName:v18];

        if (!v20)
        {
          __assert_rtn("[MBCKRestoreEngine _restoreDomains:plan:withQueue:concurrencyLimit:error:]", "MBCKRestoreEngine.m", 1325, "domain");
        }

        if ([v20 hasRootPath])
        {
          v47 = 0;
          v21 = [(MBCKRestoreEngine *)self _restoreDomainEngineForDomain:v20 plan:planCopy error:&v47];
          v22 = v47;
          v23 = v22;
          if (!v21)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v54 = v23;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to create restore domain engine: %@", buf, 0xCu);
              _MBLog(@"E ", "=ckrestore-engine= Failed to create restore domain engine: %@", v23);
            }

            v34 = v42;
            objc_sync_enter(v34);
            [v34 addObject:v23];
            objc_sync_exit(v34);

            break;
          }

          v41 = v20;
          v24 = v22;
          dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005C56C;
          block[3] = &unk_1003BC5B8;
          block[4] = v18;
          v44 = v21;
          v45 = v42;
          v25 = v24;
          v20 = v41;
          v46 = dsema;
          v26 = v21;
          dispatch_group_async(group, queueCopy, block);
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            name = [v20 name];
            *buf = 138412290;
            v54 = name;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not restoring domain %@ with nil root path", buf, 0xCu);

            name2 = [v20 name];
            _MBLog(@"Df", "=ckrestore-engine= Not restoring domain %@ with nil root path", name2);
          }

          v52 = v18;
          v30 = [NSArray arrayWithObjects:&v52 count:1];
          v31 = [planCopy skipDomains:v30 error:error];

          if ((v31 & 1) == 0)
          {

            goto LABEL_27;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    if ([v42 count])
    {
      if (error)
      {
        [MBError errorWithErrors:v42];
        *error = v32 = 0;
      }

      else
      {
LABEL_27:
        v32 = 0;
      }
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)_restoreForegroundFilesUsingCKCacheForDomainNames:(id)names error:(id *)error
{
  namesCopy = names;
  cache = [(MBCKEngine *)self cache];
  tracker = [cache tracker];

  if (!tracker)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreForegroundFilesUsingCKCacheForDomainNames:error:]", "MBCKRestoreEngine.m", 1367, "cacheTracker");
  }

  v138 = 0;
  v82 = [tracker openCacheWithAccessType:2 cached:0 error:&v138];
  v6 = COERCE_DOUBLE(v138);
  if (!v82)
  {
    v67 = MBGetDefaultLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v141 = v6;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to re-open cache for restore enumeration: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed to re-open cache for restore enumeration: %@", *&v6);
    }

    if (error)
    {
      v68 = *&v6;
      v79 = 0;
      *error = v6;
    }

    else
    {
      v79 = 0;
    }

    goto LABEL_49;
  }

  v7 = +[NSDate date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3221225472;
  v121[2] = sub_10005D5BC;
  v121[3] = &unk_1003BC5E0;
  v123 = &v126;
  v121[4] = self;
  v10 = namesCopy;
  v122 = v10;
  v124 = &v134;
  v125 = &v130;
  v11 = [v82 enumeratePendingRestoreFilesForAnyDomainOrderAscendingWithBlock:v121];

  progressModel = [(MBCKEngine *)self progressModel];
  [progressModel willTransferItemsWithSize:v135[3] count:*(v131 + 6)];

  +[NSDate timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = MBGetDefaultLog();
  v16 = v14 - v9;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v135[3];
    v18 = *(v131 + 6);
    *buf = 134218496;
    v141 = v16;
    v142 = 2048;
    v143 = v17;
    v144 = 2048;
    v145 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Preflight: duration:%.3fs, fgTotalRestorableSize:%llu, fgTotalRestorableCount:%lu", buf, 0x20u);
    _MBLog(@"Df", "=ckrestore-engine= Preflight: duration:%.3fs, fgTotalRestorableSize:%llu, fgTotalRestorableCount:%lu", v16, v135[3], *(v131 + 6));
  }

  [(MBCKRestoreEngine *)self _purgeBeforeRestoring:v127[3]];
  v19 = +[NSDate date];
  [v19 timeIntervalSinceReferenceDate];
  v21 = v20;

  v75 = [[MBCKRestoreFilePrefetchEngine alloc] initWithRestoreEngine:self];
  if (![(MBCKRestoreFilePrefetchEngine *)v75 setUpWithError:error])
  {
    [v82 close];
    v79 = 0;
    goto LABEL_48;
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_10005D6D0;
  v88[3] = &unk_1003BC608;
  v88[4] = self;
  v22 = v10;
  v89 = v22;
  v91 = &v101;
  v92 = &v113;
  v93 = &v109;
  v94 = &v97;
  v23 = v75;
  v90 = v23;
  v95 = &v117;
  v96 = &v105;
  v74 = [v82 enumeratePendingRestoreRegularFilesForAnyDomainOrderAscendingWithBlock:v88];

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v106[3];
    v26 = v118[3];
    v27 = v98[3];
    v28 = v110[3];
    v29 = v102[3];
    *buf = 134219008;
    v141 = v25;
    v142 = 2048;
    v143 = v26;
    v144 = 2048;
    v145 = v27;
    v146 = 2048;
    v147 = v28;
    v148 = 2048;
    v149 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Preflight: fgRestoreSize:%llu, fgRestoreCount:%llu, fgPrefetchRestoreSize:%llu, fgPrefetchRestoreCount:%llu, bgRestoreSize:%llu", buf, 0x34u);
    _MBLog(@"Df", "=ckrestore-engine= Preflight: fgRestoreSize:%llu, fgRestoreCount:%llu, fgPrefetchRestoreSize:%llu, fgPrefetchRestoreCount:%llu, bgRestoreSize:%llu", *(v106 + 3), v118[3], v98[3], v110[3], v102[3]);
  }

  v30 = [NSNumber numberWithDouble:v16];
  performanceStatistics = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics setObject:v30 forKeyedSubscript:@"PreflightTime"];

  v32 = [NSNumber numberWithUnsignedLongLong:v118[3]];
  performanceStatistics2 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics2 setObject:v32 forKeyedSubscript:@"ForegroundRestoreItems"];

  v34 = [NSNumber numberWithUnsignedLongLong:v110[3]];
  performanceStatistics3 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics3 setObject:v34 forKeyedSubscript:@"ForegroundPrefetchItems"];

  v36 = [NSNumber numberWithUnsignedLongLong:v98[3]];
  performanceStatistics4 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics4 setObject:v36 forKeyedSubscript:@"ForegroundPrefetchSize"];

  v38 = [NSNumber numberWithUnsignedLongLong:v102[3]];
  performanceStatistics5 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics5 setObject:v38 forKeyedSubscript:@"BackgroundRestoreSize"];

  v40 = [NSNumber numberWithUnsignedLongLong:v114[3]];
  performanceStatistics6 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics6 setObject:v40 forKeyedSubscript:@"BackgroundRestoreItems"];

  v42 = [NSNumber numberWithUnsignedLongLong:*(v106 + 3)];
  [(MBCKRestoreEngine *)self setForegroundRestorableSize:v42];

  v43 = [NSNumber numberWithUnsignedLongLong:v102[3]];
  [(MBCKRestoreEngine *)self setBackgroundRestorableSize:v43];

  v44 = [NSNumber numberWithUnsignedLongLong:v118[3]];
  [(MBCKRestoreEngine *)self setForegroundRestorableFileCount:v44];

  v45 = [NSNumber numberWithUnsignedLongLong:v114[3]];
  [(MBCKRestoreEngine *)self setBackgroundRestorableFileCount:v45];

  [(MBCKRestoreFilePrefetchEngine *)v23 waitForPrefetchCompletion];
  +[NSDate timeIntervalSinceReferenceDate];
  v47 = v46 - v21;
  v48 = [NSNumber numberWithDouble:v47];
  performanceStatistics7 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics7 setObject:v48 forKeyedSubscript:@"PrefetchTime"];

  v50 = MBGetDefaultLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v141 = v47;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Prefetch: duration:%.3fs", buf, 0xCu);
    _MBLog(@"Df", "=ckrestore-engine= Prefetch: duration:%.3fs", v47);
  }

  v51 = +[NSDate date];
  [v51 timeIntervalSinceReferenceDate];
  v53 = v52;

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v22;
  v54 = 0;
  v55 = [obj countByEnumeratingWithState:&v84 objects:v139 count:16];
  if (!v55)
  {
    v79 = 1;
LABEL_43:

    goto LABEL_45;
  }

  v79 = 1;
  v80 = *v85;
LABEL_12:
  v56 = 0;
  while (1)
  {
    if (*v85 != v80)
    {
      objc_enumerationMutation(obj);
    }

    v57 = *(*(&v84 + 1) + 8 * v56);
    if ([(MBCKEngine *)self handleCancelation:error])
    {
      [v82 close];

LABEL_41:
      v79 = 0;
      goto LABEL_47;
    }

    v58 = objc_autoreleasePoolPush();
    v59 = MBGetDefaultLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v141 = v57;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restoring domain %{public}@", buf, 0xCu);
      _MBLog(@"Df", "=ckrestore-engine= Restoring domain %{public}@", *&v57);
    }

    domainManager = [(MBEngine *)self domainManager];
    v61 = [domainManager domainForName:*&v57];

    v62 = [[MBCKRestoreDomainEngine alloc] initWithRestoreEngine:self enumeratorCache:v82 domain:v61];
    v83 = v54;
    LOBYTE(domainManager) = [(MBCKRestoreDomainEngine *)v62 runWithError:&v83];
    v63 = v83;

    v54 = v63;
    if (domainManager)
    {
      v64 = 0;
      v65 = 0;
    }

    else
    {
      if ([v61 isLegacyPerAppPlaceholderDomain] && !+[MBError isRetryableRestoreError:](MBError, "isRetryableRestoreError:", v63))
      {
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v141 = v57;
          v142 = 2112;
          v143 = v63;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Ignoring placeholder failure: to restore domain %@: %@", buf, 0x16u);
          _MBLog(@"E ", "=ckrestore-engine= Ignoring placeholder failure: to restore domain %@: %@", *&v57, v63);
        }

        v64 = 0;
        v65 = 19;
      }

      else
      {
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v141 = v57;
          v142 = 2112;
          v143 = v63;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore domain %@: %@", buf, 0x16u);
          _MBLog(@"E ", "=ckrestore-engine= Failed to restore domain %@: %@", *&v57, v63);
        }

        v79 = 0;
        v65 = 18;
        v64 = 1;
      }
    }

    objc_autoreleasePoolPop(v58);
    if (v65 != 19)
    {
      if (v65)
      {
        break;
      }
    }

    if (v55 == ++v56)
    {
      v55 = [obj countByEnumeratingWithState:&v84 objects:v139 count:16];
      if (v55)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }
  }

  if (!v64)
  {
    goto LABEL_41;
  }

LABEL_45:
  +[NSDate timeIntervalSinceReferenceDate];
  v70 = [NSNumber numberWithDouble:v69 - v53];
  performanceStatistics8 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics8 setObject:v70 forKeyedSubscript:@"RestoreTime"];

  [v82 close];
  if (!((error == 0) | v79 & 1))
  {
    v72 = v54;
    v79 = 0;
    *error = v54;
  }

LABEL_47:

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(&v117, 8);
  v11 = v74;
LABEL_48:

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v134, 8);
  v6 = *&v11;
LABEL_49:

  return v79 & 1;
}

- (void)_purgeBeforeRestoring:(unint64_t)restoring
{
  v4 = [MBCacheDeleteRequest purgeRequestForCloudForegroundRestoreOfSize:restoring];
  if (v4)
  {
    [(MBCKRestoreEngine *)self setCacheDeleteRequest:v4];
  }

  else
  {
    cacheDeleteRequest = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    [(MBCKRestoreEngine *)self setCacheDeleteRequest:cacheDeleteRequest];
  }

  cacheDeleteRequest2 = [(MBCKRestoreEngine *)self cacheDeleteRequest];

  if (cacheDeleteRequest2)
  {
    cacheDeleteRequest3 = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    purge = [cacheDeleteRequest3 purge];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = purge;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= CacheDelete purged %llu bytes", buf, 0xCu);
      _MBLog(@"Df", "=ckrestore-engine= CacheDelete purged %llu bytes", purge);
    }
  }
}

- (BOOL)_downloadRestorablesForBackgroundAppWithError:(id *)error
{
  context = [(MBCKEngine *)self context];
  restoreMode = [context restoreMode];
  bundleID = [restoreMode bundleID];

  appManager = [(MBEngine *)self appManager];
  persona = [(MBCKEngine *)self persona];
  v31 = 0;
  v10 = [appManager fetchAppWithIdentifier:bundleID persona:persona error:&v31];
  v11 = v31;

  if (v10)
  {
    errorCopy = error;
    v26 = bundleID;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    containers = [v10 containers];
    v13 = [containers countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(containers);
          }

          domain = [*(*(&v27 + 1) + 8 * i) domain];
          domainManager = [(MBEngine *)self domainManager];
          name = [domain name];
          [domainManager addDomain:domain forName:name];
        }

        v14 = [containers countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      v20 = [(MBCKRestoreEngine *)self _restoreBackgroundContainersUsingPlanForApp:v10 error:errorCopy];
    }

    else
    {
      v20 = [(MBCKRestoreEngine *)self _restoreBackgroundContainersUsingCKCacheForApp:v10 error:errorCopy];
    }

    v23 = v20;
    bundleID = v26;
  }

  else
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to load app: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed to load app: %@", v11);
    }

    if (error)
    {
      v22 = v11;
      v23 = 0;
      *error = v11;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)_restoreBackgroundContainersUsingPlanForApp:(id)app error:(id *)error
{
  appCopy = app;
  bundleID = [appCopy bundleID];
  if (!bundleID)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1555, "bundleID");
  }

  _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!_populatedRestorePlan)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1557, "plan");
  }

  persona = [(MBCKEngine *)self persona];
  personaIdentifier = [persona personaIdentifier];

  if (!personaIdentifier)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1559, "currentPersonaIdentifier");
  }

  if (qword_1004215F0 != -1)
  {
    dispatch_once(&qword_1004215F0, &stru_1003BC628);
  }

  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = [qword_1004215E8 objectForKeyedSubscript:personaIdentifier];
  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v70 = personaIdentifier;
      v71 = 2048;
      v72 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Creating empty active set for personaID %@ (%p)", buf, 0x16u);
      _MBLog(@"Df", "=ckrestore-engine= Creating empty active set for personaID %@ (%p)", personaIdentifier, v6);
    }

    [qword_1004215E8 setObject:v6 forKeyedSubscript:personaIdentifier];
  }

  objc_sync_exit(v5);

  if (!v6)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1576, "activeDomainRestoresForCurrentPersona");
  }

  v51 = objc_opt_new();
  v8 = v6;
  objc_sync_enter(v8);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  containers = [appCopy containers];
  v10 = [containers countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v10)
  {
    v11 = *v64;
LABEL_13:
    v12 = 0;
    while (1)
    {
      if (*v64 != v11)
      {
        objc_enumerationMutation(containers);
      }

      domain = [*(*(&v63 + 1) + 8 * v12) domain];
      name = [domain name];
      v62 = 0;
      v15 = [_populatedRestorePlan planForDomain:domain restoreType:2 error:&v62];
      v16 = v62;
      if (!v15)
      {
        break;
      }

      if ([v15 isPopulated])
      {
        if ([v8 containsObject:name])
        {
          v40 = MBGetDefaultLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = [v8 count];
              *buf = 138413058;
              v70 = name;
              v71 = 2112;
              v72 = bundleID;
              v73 = 2048;
              v74 = v8;
              v75 = 2048;
              v76 = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Dependent domain %@ for %@ is actively being restored (%p: count %lu)", buf, 0x2Au);
            }

            _MBLog(@"Df", "=ckrestore-engine= Dependent domain %@ for %@ is actively being restored (%p: count %lu)", name, bundleID, v8, [v8 count]);
          }

          if (error)
          {
            v39 = [MBError errorWithCode:17 format:@"Dependent domain %@ is actively being restored", name];
LABEL_60:
            *error = v39;
          }

          goto LABEL_62;
        }

        [v51 addObject:name];
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v70 = name;
          v71 = 2112;
          v72 = bundleID;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=ckrestore-engine= Not restoring dependent domain %@ for bundleID %@", buf, 0x16u);
          _MBLog(@"I ", "=ckrestore-engine= Not restoring dependent domain %@ for bundleID %@", name, bundleID);
        }
      }

      if (v10 == ++v12)
      {
        v10 = [containers countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }
    }

    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v70 = name;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed look up domain plan for domain %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed look up domain plan for domain %@", name);
    }

    if (error)
    {
      v38 = v16;
      v39 = v16;
      goto LABEL_60;
    }

    v15 = 0;
LABEL_62:

    objc_sync_exit(v8);
    v49 = 0;
    v36 = v8;
    goto LABEL_63;
  }

LABEL_25:

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = v51;
  v19 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v19)
  {
    v20 = *v59;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v8 count];
            *buf = 138413058;
            v70 = v22;
            v71 = 2112;
            v72 = personaIdentifier;
            v73 = 2048;
            v74 = v8;
            v75 = 2048;
            v76 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding domain %@ to active set for personaID %@ (%p: count %lu)", buf, 0x2Au);
          }

          _MBLog(@"Df", "=ckrestore-engine= Adding domain %@ to active set for personaID %@ (%p: count %lu)", v22, personaIdentifier, v8, [v8 count]);
        }

        [v8 addObject:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v19);
  }

  objc_sync_exit(v8);
  v47 = [NSString stringWithFormat:@"com.apple.MobileBackup.Background.%@", bundleID];
  v26 = v47;
  v44 = dispatch_queue_create([v47 UTF8String], &_dispatch_queue_attr_concurrent);
  v49 = [MBCKRestoreEngine _restoreDomains:"_restoreDomains:plan:withQueue:concurrencyLimit:error:" plan:v18 withQueue:_populatedRestorePlan concurrencyLimit:? error:?];
  v27 = v8;
  objc_sync_enter(v27);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v28 = v18;
  v29 = [v28 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v29)
  {
    v30 = *v55;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v54 + 1) + 8 * j);
        if ([v27 containsObject:v32])
        {
          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v27 count];
              *buf = 138413058;
              v70 = v32;
              v71 = 2112;
              v72 = personaIdentifier;
              v73 = 2048;
              v74 = v27;
              v75 = 2048;
              v76 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Removing domain %@ from active set for personaID %@ (%p: count %lu)", buf, 0x2Au);
            }

            _MBLog(@"Df", "=ckrestore-engine= Removing domain %@ from active set for personaID %@ (%p: count %lu)", v32, personaIdentifier, v27, [v27 count]);
          }

          [v27 removeObject:v32];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v29);
  }

  objc_sync_exit(v27);
  v36 = v47;
LABEL_63:

  return v49;
}

- (BOOL)_restoreBackgroundContainersUsingCKCacheForApp:(id)app error:(id *)error
{
  appCopy = app;
  bundleID = [appCopy bundleID];
  if (qword_100421600 != -1)
  {
    dispatch_once(&qword_100421600, &stru_1003BC648);
  }

  v87 = objc_opt_new();
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [appCopy containers];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v5 = v105 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v104 objects:v123 count:16];
  if (v6)
  {
    v90 = *v105;
    while (2)
    {
      v88 = v6;
      for (i = 0; i != v88; i = i + 1)
      {
        if (*v105 != v90)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v104 + 1) + 8 * i);
        if ([(MBCKEngine *)self handleCancelation:error])
        {
          goto LABEL_71;
        }

        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = v9;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            identifier = [v8 identifier];
            containerTypeString = [v8 containerTypeString];
            *buf = 138412802;
            *&buf[4] = identifier;
            *&buf[12] = 2112;
            *&buf[14] = containerTypeString;
            *&buf[22] = 2112;
            v120 = bundleID;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ckrestore-engine= Restoring container %@ (%@) as a dependent of %@", buf, 0x20u);
          }

          identifier2 = [v8 identifier];
          containerTypeString2 = [v8 containerTypeString];
          _MBLog(@"I ", "=ckrestore-engine= Restoring container %@ (%@) as a dependent of %@", identifier2, containerTypeString2, bundleID);
        }

        v100 = 0;
        v101 = &v100;
        v102 = 0x2020000000;
        v103 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v120 = sub_100059C00;
        v121 = sub_100059C10;
        v122 = 0;
        cache = [(MBCKEngine *)self cache];
        domain = [v8 domain];
        name = [domain name];
        v99[0] = _NSConcreteStackBlock;
        v99[1] = 3221225472;
        v99[2] = sub_10005F784;
        v99[3] = &unk_1003BC670;
        v99[4] = &v100;
        v99[5] = buf;
        v18 = [cache fetchDomainRestoreStateForDomain:name callback:v99];

        if (v18)
        {
          v58 = MBGetDefaultLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = v58;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              domain2 = [v8 domain];
              name2 = [domain2 name];
              *v111 = 138412546;
              v112 = name2;
              v113 = 2112;
              v114 = v18;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to fetch domain state for dependent container %@: %@", v111, 0x16u);
            }

            domain3 = [v8 domain];
            name3 = [domain3 name];
            _MBLog(@"E ", "=ckrestore-engine= Failed to fetch domain state for dependent container %@: %@", name3, v18);
          }

          if (error)
          {
LABEL_69:
            v70 = v18;
            *error = v18;
          }

LABEL_70:
          _Block_object_dispose(buf, 8);

          _Block_object_dispose(&v100, 8);
LABEL_71:

          v52 = obj;
          objc_sync_exit(obj);
          v57 = 0;
          goto LABEL_72;
        }

        if (v101[3] <= 3)
        {
          v19 = *&buf[8];
          v20 = *(*&buf[8] + 40);
          if (v20)
          {
            v21 = [v20 isEqualToString:bundleID];
            v19 = *&buf[8];
            if ((v21 & 1) == 0)
            {
              if ([qword_1004215F8 containsObject:*(*&buf[8] + 40)])
              {
                v72 = MBGetDefaultLog();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  v73 = v72;
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                  {
                    domain4 = [v8 domain];
                    name4 = [domain4 name];
                    v76 = v101[3];
                    v77 = *(*&buf[8] + 40);
                    *v111 = 138413058;
                    v112 = name4;
                    v113 = 2048;
                    v114 = v76;
                    v115 = 2112;
                    v116 = bundleID;
                    v117 = 2112;
                    v118 = v77;
                    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Dependent domain %@ (state:%ld) for %@ is being restored by agent %@", v111, 0x2Au);
                  }

                  domain5 = [v8 domain];
                  name5 = [domain5 name];
                  _MBLog(@"E ", "=ckrestore-engine= Dependent domain %@ (state:%ld) for %@ is being restored by agent %@", name5, v101[3], bundleID, *(*&buf[8] + 40));
                }

                if (error)
                {
                  domain6 = [v8 domain];
                  name6 = [domain6 name];
                  v82 = [NSString stringWithFormat:@"Dependent domain %@ is being restored by agent %@", name6, *(*&buf[8] + 40)];

                  v109[0] = NSLocalizedDescriptionKey;
                  v109[1] = @"RetryAfter";
                  v110[0] = v82;
                  v110[1] = @"5";
                  v83 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:2];
                  *error = [NSError errorWithDomain:@"MBErrorDomain" code:17 userInfo:v83];
                }

                v18 = 0;
                goto LABEL_70;
              }

              v19 = *&buf[8];
            }
          }

          v22 = *(v19 + 40);
          if (v22 && ([v22 isEqualToString:bundleID] & 1) == 0)
          {
            v23 = MBGetDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = v5;
                v26 = *(*&buf[8] + 40);
                domain7 = [v8 domain];
                name7 = [domain7 name];
                *v111 = 138412802;
                v112 = v26;
                v113 = 2112;
                v114 = bundleID;
                v115 = 2112;
                v116 = name7;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Changing the dependent domain from %@ to %@ for dependent %@", v111, 0x20u);

                v5 = v25;
              }

              v29 = *(*&buf[8] + 40);
              domain8 = [v8 domain];
              name8 = [domain8 name];
              _MBLog(@"Df", "=ckrestore-engine= Changing the dependent domain from %@ to %@ for dependent %@", v29, bundleID, name8);
            }
          }

          cache2 = [(MBCKEngine *)self cache];
          domain9 = [v8 domain];
          name9 = [domain9 name];
          v18 = [cache2 setDomainRestoreAgent:bundleID forDomain:name9];

          if (v18)
          {
            v64 = MBGetDefaultLog();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              v65 = v64;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                domain10 = [v8 domain];
                name10 = [domain10 name];
                *v111 = 138412802;
                v112 = bundleID;
                v113 = 2112;
                v114 = name10;
                v115 = 2112;
                v116 = v18;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set agent domain %@ for dependent %@: %@", v111, 0x20u);
              }

              domain11 = [v8 domain];
              name11 = [domain11 name];
              _MBLog(@"E ", "=ckrestore-engine= Failed to set agent domain %@ for dependent %@: %@", bundleID, name11, v18);
            }

            if (error)
            {
              goto LABEL_69;
            }

            goto LABEL_70;
          }

          [v87 addObject:v8];
        }

        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v100, 8);
      }

      v6 = [v5 countByEnumeratingWithState:&v104 objects:v123 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([v5 count] >= 2)
  {
    [qword_1004215F8 addObject:bundleID];
    if ([v87 count])
    {
      cache3 = [(MBCKEngine *)self cache];
      [cache3 flush];
    }
  }

  objc_sync_exit(obj);
  [v87 sortUsingComparator:&stru_1003BC6B0];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obja = v87;
  v91 = [obja countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v91)
  {
    v89 = *v96;
    while (2)
    {
      for (j = 0; j != v91; j = j + 1)
      {
        if (*v96 != v89)
        {
          objc_enumerationMutation(obja);
        }

        domain12 = [*(*(&v95 + 1) + 8 * j) domain];
        if ([(MBCKEngine *)self handleCancelation:error])
        {

LABEL_63:
          v57 = 0;
          v52 = obja;
          goto LABEL_72;
        }

        v38 = objc_autoreleasePoolPush();
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            name12 = [domain12 name];
            *buf = 138412290;
            *&buf[4] = name12;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Beginning restore for %@", buf, 0xCu);
          }

          name13 = [domain12 name];
          _MBLog(@"Df", "=ckrestore-engine= Beginning restore for %@", name13);
        }

        v43 = [[MBCKRestoreDomainEngine alloc] initWithRestoreEngine:self enumeratorCache:0 domain:domain12];
        v94 = 0;
        v44 = [(MBCKRestoreDomainEngine *)v43 runWithError:&v94];
        v45 = v94;
        if ((v44 & 1) == 0)
        {
          v46 = MBGetDefaultLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = v46;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              name14 = [domain12 name];
              *buf = 138412546;
              *&buf[4] = name14;
              *&buf[12] = 2112;
              *&buf[14] = v45;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore domain %@: %@", buf, 0x16u);
            }

            name15 = [domain12 name];
            _MBLog(@"E ", "=ckrestore-engine= Failed to restore domain %@: %@", name15, v45);
          }
        }

        objc_autoreleasePoolPop(v38);
        if (error)
        {
          v50 = v45;
          *error = v45;
        }

        if (!v44)
        {
          goto LABEL_63;
        }
      }

      v91 = [obja countByEnumeratingWithState:&v95 objects:v108 count:16];
      if (v91)
      {
        continue;
      }

      break;
    }
  }

  v51 = MBGetDefaultLog();
  v52 = v51;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    domain13 = [appCopy domain];
    name16 = [domain13 name];
    *buf = 138412290;
    *&buf[4] = name16;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restored domain %@ successfully", buf, 0xCu);

    domain14 = [appCopy domain];
    name17 = [domain14 name];
    _MBLog(@"Df", "=ckrestore-engine= Restored domain %@ successfully", name17);

    v57 = 1;
    v52 = v51;
  }

  else
  {
    v57 = 1;
  }

LABEL_72:

  return v57;
}

- (id)_populatedRestorePlan
{
  snapshotID = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
  serviceManager = [(MBCKEngine *)self serviceManager];
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  v13 = 0;
  v6 = [serviceManager restorePlanForAccount:serviceAccount snapshotUUID:snapshotID error:&v13];
  v7 = v13;

  if (!v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to load restore plan: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed to load restore plan: %@", v7);
    }

    goto LABEL_10;
  }

  isPopulated = [v6 isPopulated];
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!isPopulated)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=ckrestore-engine= No plan", buf, 2u);
      _MBLog(@"I ", "=ckrestore-engine= No plan");
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=ckrestore-engine= Plan populated", buf, 2u);
    _MBLog(@"I ", "=ckrestore-engine= Plan populated");
  }

  v11 = v6;
LABEL_11:

  return v11;
}

- (id)_restoreATCEngineForPlan:(id)plan error:(id *)error
{
  planCopy = plan;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1770, "persona");
  }

  v8 = persona;
  domain = [planCopy domain];
  rootPath = [domain rootPath];

  if (!rootPath)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1772, "rootPath");
  }

  v11 = [_TtC7backupd14MBRestoreDepot restoreDepotWithPersona:v8 destination:rootPath restoreDepotOverridePath:0 error:error];
  if (v11)
  {
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1780, "tracker");
    }

    v13 = ckOperationTracker;
    device = [(MBCKEngine *)self device];
    if (!device)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1782, "device");
    }

    v15 = device;
    v16 = [MBAssetRecordFetcher assetFetcherWithTracker:v13 device:device error:error];
    if (v16)
    {
      v17 = [MBAssetDecrypterFactory assetDecrypterWithTracker:v13 device:v15 error:error];
      if (v17)
      {
        v25 = v17;
        restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
        deriveATCPolicy = [restorePolicy deriveATCPolicy];

        v23 = [_TtC7backupd18MBRestoreATCEngine alloc];
        progressModel = [(MBCKEngine *)self progressModel];
        restoreLogger = [(MBCKRestoreEngine *)self restoreLogger];
        v20 = [(MBRestoreATCEngine *)v23 initWithRootPath:rootPath policy:deriveATCPolicy depot:v11 fetcher:v16 decrypter:v25 plan:planCopy progress:progressModel verifier:0 logger:restoreLogger error:error];

        v17 = v25;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)_downloadRestorablesForBackgroundFilesWithError:(id *)error
{
  context = [(MBCKEngine *)self context];
  restoreMode = [context restoreMode];
  type = [restoreMode type];

  context2 = [(MBCKEngine *)self context];
  restoreMode2 = [context2 restoreMode];
  v10 = restoreMode2;
  if (type == 5)
  {
    paths = [restoreMode2 paths];
  }

  else
  {
    path = [restoreMode2 path];
    v16 = path;
    paths = [NSArray arrayWithObjects:&v16 count:1];
  }

  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v13 = [(MBCKRestoreEngine *)self _restoreATCFiles:paths usingPlan:error];
  }

  else
  {
    v13 = [(MBCKRestoreEngine *)self _restoreATCFiles:paths usingCKCache:error];
  }

  v14 = v13;

  return v14;
}

- (BOOL)_restoreATCFiles:(id)files usingPlan:(id *)plan
{
  filesCopy = files;
  _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!_populatedRestorePlan)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingPlan:]", "MBCKRestoreEngine.m", 1826, "restorePlan");
  }

  v8 = _populatedRestorePlan;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005FFA0;
  v25[3] = &unk_1003BC6D8;
  v25[4] = self;
  v9 = [_populatedRestorePlan atcRestorePlansForAbsolutePaths:filesCopy domainProvider:v25 error:plan];
  v10 = v9;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      v20 = filesCopy;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(MBCKRestoreEngine *)self _restoreATCEngineForPlan:*(*(&v21 + 1) + 8 * i) error:plan];
          v17 = v16;
          if (!v16)
          {
            goto LABEL_16;
          }

          v18 = [v16 runWithError:plan];

          if (!v18)
          {
            LOBYTE(v17) = 0;
LABEL_16:
            filesCopy = v20;
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        LOBYTE(v17) = 1;
        filesCopy = v20;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v17) = 1;
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)_restoreATCFiles:(id)files usingCKCache:(id *)cache
{
  filesCopy = files;
  cacheCopy = cache;
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingCKCache:]", "MBCKRestoreEngine.m", 1850, "error");
  }

  v7 = filesCopy;
  cache = [(MBCKEngine *)self cache];
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingCKCache:]", "MBCKRestoreEngine.m", 1853, "cache");
  }

  v8 = [[MBCKRestoreFilePrefetchEngine alloc] initWithRestoreEngine:self];
  if ([(MBCKRestoreFilePrefetchEngine *)v8 setUpWithError:cache])
  {
    selfCopy = self;
    domainManager = [(MBEngine *)self domainManager];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [cache fetchRestorableFileForPath:v14 error:0];
          v17 = v16;
          if (v16)
          {
            domainName = [v16 domainName];
            v19 = [domainManager domainForName:domainName];

            if (v19)
            {
              [v17 setupWithDomain:v19];
            }

            [(MBCKRestoreFilePrefetchEngine *)v8 prefetchRecord:v17];
            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = v14;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found Legacy file by absolute path: %@", buf, 0xCu);
              _MBLog(@"Df", "=ckrestore-engine= Found Legacy file by absolute path: %@", v14);
            }
          }

          else
          {
            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find file by absolute path: %@", buf, 0xCu);
              _MBLog(@"E ", "=ckrestore-engine= Failed to find file by absolute path: %@", v14);
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v11);
    }

    v21 = objc_autoreleasePoolPush();
    [(MBCKRestoreFilePrefetchEngine *)v8 waitForPrefetchCompletion];

    objc_autoreleasePoolPop(v21);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * j);
          if ([(MBCKEngine *)selfCopy handleCancelation:cacheCopy])
          {
            goto LABEL_34;
          }

          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=ckrestore-engine= Starting restore for %@", buf, 0xCu);
            _MBLog(@"I ", "=ckrestore-engine= Starting restore for %@", v27);
          }

          v29 = objc_autoreleasePoolPush();
          v30 = [(MBCKRestoreEngine *)selfCopy _restoreATCFile:v27 usingCache:cache];
          objc_autoreleasePoolPop(v29);
          if (v30)
          {
            v32 = v30;
            *cacheCopy = v30;

LABEL_34:
            v31 = 0;
            goto LABEL_35;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
        v31 = 1;
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v31 = 1;
    }

LABEL_35:

    v8 = 0;
    v7 = v34;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)_restoreATCFile:(id)file usingCache:(id)cache
{
  fileCopy = file;
  cacheCopy = cache;
  cache = [(MBCKEngine *)self cache];
  v27 = 0;
  v9 = [cache fetchRestorableFileForPath:fileCopy error:&v27];
  v10 = v27;

  if (v9)
  {
    domainManager = self->super.super._domainManager;
    domainName = [v9 domainName];
    v13 = [(MBDomainManager *)domainManager domainForName:domainName];

    if (!v13)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCFile:usingCache:]", "MBCKRestoreEngine.m", 1921, "domain");
    }

    [v9 setupWithDomain:v13];
    v14 = [(MBRestorePolicy *)self->_restorePolicy deprecated_destinationPathForiCloudRestorable:v9 safeHarborDir:0];
    v15 = [[MBCKRestoreFileEngine alloc] initWithRestoreEngine:self file:v9 destinationPath:v14 shouldSetProtectionClass:1];
    v26 = v10;
    v16 = [(MBCKRestoreFileEngine *)v15 runWithError:&v26];
    v17 = v26;

    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        fileID = [v9 fileID];
        *buf = 138412546;
        v29 = fileID;
        v30 = 2112;
        v31 = fileCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restored file(%@) at %@", buf, 0x16u);

        fileID2 = [v9 fileID];
        _MBLog(@"Df", "=ckrestore-engine= Restored file(%@) at %@", fileID2, fileCopy);
      }

      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        fileID3 = [v9 fileID];
        *buf = 138412802;
        v29 = fileID3;
        v30 = 2112;
        v31 = fileCopy;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore file(%@) at %@: %@", buf, 0x20u);

        fileID4 = [v9 fileID];
        _MBLog(@"E ", "=ckrestore-engine= Failed to restore file(%@) at %@: %@", fileID4, fileCopy, v17);
      }

      v10 = v17;
    }
  }

  else
  {
    v17 = MBGetDefaultLog();
    v22 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v22)
      {
        *buf = 138412546;
        v29 = fileCopy;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to fetch file %@ from RestoreFiles table: %@", buf, 0x16u);
        _MBLog(@"E ", "=ckrestore-engine= Failed to fetch file %@ from RestoreFiles table: %@", fileCopy, v10);
      }
    }

    else
    {
      if (v22)
      {
        *buf = 138412290;
        v29 = fileCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find file %@ in the RestoreFiles table", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to find file %@ in the RestoreFiles table", fileCopy);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)downloadRestorablesWithError:(id *)error
{
  context = [(MBCKEngine *)self context];
  restoreMode = [context restoreMode];
  type = [restoreMode type];

  if (type > 7)
  {
    return 1;
  }

  if (((1 << type) & 0x8E) != 0)
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForBackgroundAppWithError:error];
  }

  else if (((1 << type) & 0x30) != 0)
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForBackgroundFilesWithError:error];
  }

  else
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForForegroundWithError:error];
  }
}

- (BOOL)_restoreEntitlements:(id)entitlements withError:(id *)error
{
  entitlementsCopy = entitlements;
  restoreMode = [(MBCKRestoreEngine *)self restoreMode];
  type = [restoreMode type];

  persona = [(MBCKEngine *)self persona];
  v10 = persona;
  if (type == 6)
  {
    placeholderRestoreDirectory = [persona placeholderRestoreDirectory];
    v49[0] = placeholderRestoreDirectory;
    bundleID = [entitlementsCopy bundleID];
    v49[1] = bundleID;
    relativePath = [entitlementsCopy relativePath];
    v49[2] = relativePath;
    bundleID2 = [NSArray arrayWithObjects:v49 count:3];
    v15 = [NSString pathWithComponents:bundleID2];
  }

  else
  {
    placeholderRestoreDirectory = [persona userIncompleteRestoreDirectory];
    v48[0] = placeholderRestoreDirectory;
    bundleID = [(MBCKEngine *)self persona];
    relativePath = [bundleID placeholderRestoreDirectory];
    v48[1] = relativePath;
    bundleID2 = [entitlementsCopy bundleID];
    v48[2] = bundleID2;
    relativePath2 = [entitlementsCopy relativePath];
    v48[3] = relativePath2;
    v17 = [NSArray arrayWithObjects:v48 count:4];
    v15 = [NSString pathWithComponents:v17];
  }

  stringByDeletingLastPathComponent = [v15 stringByDeletingLastPathComponent];
  v43 = 0;
  v19 = +[NSFileManager defaultManager];
  v20 = [v19 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v43];

  if (v20)
  {
    if (v43)
    {
      v42 = 0;
      v21 = [entitlementsCopy writeToFile:v15 error:&v42];
      v22 = v42;
      if (v21)
      {
        v23 = +[NSFileManager defaultManager];
        v24 = MBMobileFileAttributes();
        v41 = v22;
        v25 = [v23 setAttributes:v24 ofItemAtPath:v15 error:&v41];
        v26 = v41;

        if (v25)
        {
          v27 = 1;
        }

        else
        {
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            bundleID3 = [entitlementsCopy bundleID];
            *buf = 138412546;
            v45 = bundleID3;
            v46 = 2112;
            v47 = v26;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set placeholder entitlements file attributes for %@: %@", buf, 0x16u);

            bundleID4 = [entitlementsCopy bundleID];
            _MBLog(@"E ", "=ckrestore-engine= Failed to set placeholder entitlements file attributes for %@: %@", bundleID4, v26);
          }

          if (error)
          {
            [MBError errorWithCode:100 error:v26 path:v15 format:@"Error setting placeholder entitlements plist file attributes"];
            *error = v27 = 0;
          }

          else
          {
            v27 = 0;
          }
        }

        v22 = v26;
        goto LABEL_28;
      }

      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        bundleID5 = [entitlementsCopy bundleID];
        *buf = 138412546;
        v45 = bundleID5;
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore placeholder entitlement for %@: %@", buf, 0x16u);

        bundleID6 = [entitlementsCopy bundleID];
        _MBLog(@"E ", "=ckrestore-engine= Failed to restore placeholder entitlement for %@: %@", bundleID6, v22);
      }

      if (error)
      {
        v36 = v22;
        v27 = 0;
        *error = v22;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        bundleID7 = [entitlementsCopy bundleID];
        *buf = 138412290;
        v45 = bundleID7;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore placeholder entitlements for %@: parent directory is a file", buf, 0xCu);

        bundleID8 = [entitlementsCopy bundleID];
        _MBLog(@"E ", "=ckrestore-engine= Failed to restore placeholder entitlements for %@: parent directory is a file", bundleID8);
      }

      if (error)
      {
        bundleID9 = [entitlementsCopy bundleID];
        *error = [MBError errorWithCode:100 path:stringByDeletingLastPathComponent format:@"Placeholder entitlement's parent directory for %@ is a file", bundleID9];
      }

      v22 = 0;
    }

    v27 = 0;
    goto LABEL_28;
  }

  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v45 = stringByDeletingLastPathComponent;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Application placeholder does not exist at %{public}@ - not setting entitlements", buf, 0xCu);
    _MBLog(@"E ", "=ckrestore-engine= Application placeholder does not exist at %{public}@ - not setting entitlements", stringByDeletingLastPathComponent);
  }

  v22 = 0;
  v27 = 1;
LABEL_28:

  return v27;
}

- (BOOL)restoreEntitlementsWithError:(id *)error
{
  v5 = self->_targetSnapshot;
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine restoreEntitlementsWithError:]", "MBCKRestoreEngine.m", 1999, "targetSnapshot");
  }

  v6 = v5;
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(MBCKSnapshot *)v6 snapshotFormat];
      v8 = MBStringForSnapshotFormat();
      *buf = 138412290;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Skipping restoreEntitlements for snapshot format %@", buf, 0xCu);

      [(MBCKSnapshot *)v6 snapshotFormat];
      v9 = MBStringForSnapshotFormat();
      _MBLog(@"Df", "=ckrestore-engine= Skipping restoreEntitlements for snapshot format %@", v9);
      LOBYTE(v10) = 1;
      goto LABEL_40;
    }

    LOBYTE(v10) = 1;
    goto LABEL_41;
  }

  if (![(MBEngine *)self isForegroundRestore])
  {
    LOBYTE(v10) = 1;
    goto LABEL_42;
  }

  v38 = 0;
  v9 = [(MBCKRestoreEngine *)self getEntitlementsForDomainsWithError:&v38];
  v11 = v38;
  if (v11)
  {
    v7 = v11;
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to get entitlements for domains: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Failed to get entitlements for domains: %@", v7);
    }

    if (error)
    {
      v13 = v7;
      LOBYTE(v10) = 0;
      *error = v7;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    goto LABEL_40;
  }

  v29 = v6;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v9;
  v32 = [v9 countByEnumeratingWithState:&v34 objects:v43 count:16];
  v7 = 0;
  v10 = 1;
  if (!v32)
  {
    goto LABEL_39;
  }

  v31 = *v35;
  while (2)
  {
    v30 = v10;
    for (i = 0; i != v32; i = i + 1)
    {
      if (*v35 != v31)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v34 + 1) + 8 * i);
      if ([(MBCKEngine *)self handleCancelation:error])
      {
        LOBYTE(v10) = 0;
        goto LABEL_39;
      }

      v16 = [v9 objectForKeyedSubscript:v15];
      appManager = [(MBEngine *)self appManager];
      bundleID = [v16 bundleID];
      v19 = [appManager appWithIdentifier:bundleID];

      if ([v19 isSystemApp])
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          bundleID2 = [v16 bundleID];
          *buf = 138412290;
          v40 = bundleID2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Skipping restore of entitlements for system app %@", buf, 0xCu);

          bundleID3 = [v16 bundleID];
          _MBLog(@"I ", "=ckrestore-engine= Skipping restore of entitlements for system app %@", bundleID3);
        }

LABEL_33:

        goto LABEL_34;
      }

      relativePath = [v16 relativePath];

      v20 = MBGetDefaultLog();
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (!relativePath)
      {
        if (v24)
        {
          *buf = 138412290;
          v40 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Not creating placeholder entitlement for %@", buf, 0xCu);
          _MBLog(@"I ", "=ckrestore-engine= Not creating placeholder entitlement for %@", v15);
        }

        goto LABEL_33;
      }

      if (v24)
      {
        *buf = 138412290;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Creating placeholder entitlement for %@", buf, 0xCu);
        _MBLog(@"I ", "=ckrestore-engine= Creating placeholder entitlement for %@", v15);
      }

      v33 = 0;
      v25 = [(MBCKRestoreEngine *)self _restoreEntitlements:v16 withError:&v33];
      v26 = v33;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        if (error)
        {
          v27 = v26;
          *error = v7;
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v40 = v15;
          v41 = 2112;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error writing placeholder entitlement for %@: %@", buf, 0x16u);
          _MBLog(@"E ", "=ckrestore-engine= Error writing placeholder entitlement for %@: %@", v15, v7);
        }

        v30 = 0;
        goto LABEL_33;
      }

LABEL_34:
    }

    v10 = v30;
    v32 = [v9 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v6 = v29;
LABEL_40:

LABEL_41:
LABEL_42:

  return v10 & 1;
}

- (id)getEntitlementsForDomainsWithError:(id *)error
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Getting entitlements for domains", buf, 2u);
    _MBLog(@"Df", "=ckrestore-engine= Getting entitlements for domains");
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_validSnapshots;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        cache = [(MBCKEngine *)self cache];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10006171C;
        v22[3] = &unk_1003BC700;
        v12 = v5;
        v23 = v5;
        v13 = [cache enumerateManifestsForSnapshot:v10 foundManifest:v22];

        if (v13)
        {
          if (error)
          {
            v15 = v13;
            *error = v13;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            snapshotID = [v10 snapshotID];
            *buf = 138412546;
            v29 = snapshotID;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error fetching manifests for snapshot %@: %@", buf, 0x16u);

            snapshotID2 = [v10 snapshotID];
            _MBLog(@"E ", "=ckrestore-engine= Error fetching manifests for snapshot %@: %@", snapshotID2, v13);
          }

          v14 = 0;
          v5 = v12;
          goto LABEL_17;
        }

        v5 = v12;
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = v5;
LABEL_17:

  return v14;
}

- (BOOL)annotateRestoreWithError:(id *)error
{
  restoreMode = [(MBCKRestoreEngine *)self restoreMode];
  type = [restoreMode type];

  if (type == 6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not annotating the restored data", buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= Not annotating the restored data");
    }

    v8 = 1;
LABEL_18:

    return v8;
  }

  if ([(MBEngine *)self isForegroundRestore])
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Annotating restored data", buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= Annotating restored data");
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10;
    persona = [(MBCKEngine *)self persona];
    backupPolicy = [(MBEngine *)self backupPolicy];
    settingsContext = [(MBEngine *)self settingsContext];
    v7 = +[MBRestoreDirectoryAnnotator restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:](MBRestoreDirectoryAnnotator, "restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:", persona, 2, backupPolicy, [settingsContext shouldRestoreSystemFiles], -[MBCKEngine encrypted](self, "encrypted"));

    domainManager = [(MBEngine *)self domainManager];
    allDomains = [domainManager allDomains];
    [v7 annotateDomains:allDomains];
    v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v8 = *&v17 == 0;
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v17 == 0.0)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        +[NSDate timeIntervalSinceReferenceDate];
        *buf = 134217984;
        v25 = v21 - v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=ckrestore-engine= Finished annotating all restored domains in %0.3f s", buf, 0xCu);
        +[NSDate timeIntervalSinceReferenceDate];
        _MBLog(@"I ", "=ckrestore-engine= Finished annotating all restored domains in %0.3f s", v22 - v11);
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to annotate all restored domains: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to annotate all restored domains: %@", *&v17);
      }

      if (error)
      {
        v20 = *&v17;
        *error = v17;
      }
    }

    goto LABEL_18;
  }

  return 1;
}

- (BOOL)verifyRestoreWithError:(id *)error
{
  if ([(MBCKRestoreEngine *)self restoreType]== 1 && [(MBCKRestoreEngine *)self useFileLists])
  {
    serviceAccount = [(MBCKEngine *)self serviceAccount];
    if (![MBRestoreSnapshotIntegrityVerifier shouldRunVerifierForRestoreWithSnapshotFormat:[(MBCKSnapshot *)self->_targetSnapshot snapshotFormat] account:serviceAccount])
    {
      v18 = 1;
LABEL_17:

      return v18;
    }

    _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
    [(MBCKRestoreEngine *)self setForegroundRestoreVerificationEnabled:1];
    v7 = [MBRestoreSnapshotIntegrityVerifier alloc];
    restorePolicy = self->_restorePolicy;
    snapshotFormat = [(MBCKSnapshot *)self->_targetSnapshot snapshotFormat];
    persona = [(MBCKEngine *)self persona];
    restoreSnapshotsDatabaseDirectory = [persona restoreSnapshotsDatabaseDirectory];
    snapshotID = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
    v13 = [(MBRestoreSnapshotIntegrityVerifier *)v7 initWithPolicy:restorePolicy snapshotFormat:snapshotFormat snapshotDir:restoreSnapshotsDatabaseDirectory snapshotUUID:snapshotID delegate:self];

    domainManager = [(MBEngine *)self domainManager];
    v26 = 0;
    LODWORD(persona) = [(MBRestoreSnapshotIntegrityVerifier *)v13 verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:domainManager plan:_populatedRestorePlan overridePath:0 error:&v26];
    v15 = v26;

    if (persona)
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Successfully verified intermediate directories for foreground restore", buf, 2u);
        _MBLog(@"Df", "=ckrestore-engine= Successfully verified intermediate directories for foreground restore");
      }

      v17 = @"PASS";
    }

    else
    {
      v19 = [MBError isError:v15 withCode:202];
      v20 = MBGetDefaultLog();
      v21 = v20;
      if (!v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to verify intermediate directory for foreground restore %@", buf, 0xCu);
          _MBLog(@"E ", "=ckrestore-engine= Failed to verify intermediate directory for foreground restore %@", v15);
        }

        [(MBCKRestoreEngine *)self setForegroundRestoreVerificationStatus:@"FAIL"];
        v23 = +[MBBehaviorOptions sharedOptions];
        isAutomation = [v23 isAutomation];

        if (isAutomation)
        {
          if (error)
          {
            v25 = v15;
            v18 = 0;
            *error = v15;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_16;
        }

LABEL_15:
        v18 = 1;
LABEL_16:

        goto LABEL_17;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Cancelled verifying intermediate directories for foreground restore", buf, 2u);
        _MBLog(@"Df", "=ckrestore-engine= Cancelled verifying intermediate directories for foreground restore");
      }

      v17 = @"CANCELLED";
    }

    [(MBCKRestoreEngine *)self setForegroundRestoreVerificationStatus:v17];
    goto LABEL_15;
  }

  return 1;
}

- (BOOL)finalizeRestoreWithError:(id *)error
{
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2164, "tracker");
  }

  v6 = ckOperationTracker;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2166, "serviceAccount");
  }

  v8 = serviceAccount;
  if ([(MBCKRestoreEngine *)self restoreType]== 1)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finalizing foreground restore", buf, 2u);
      _MBLog(@"Df", "=ckrestore-engine= Finalizing foreground restore");
    }

    restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
    v11 = [restorePolicy notifyPluginsEndingRestoreWithEngine:self];

    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of endingRestoreWithEngine: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to notify plugins of endingRestoreWithEngine: %@", v11);
      }

LABEL_15:

      if (error)
      {
        v19 = v11;
        v16 = 0;
        *error = v11;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_40;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=ckrestore-engine= Notifying plugins of endedRestoreWithEngine:", buf, 2u);
      _MBLog(@"I ", "=ckrestore-engine= Notifying plugins of endedRestoreWithEngine:");
    }

    restorePolicy2 = [(MBCKRestoreEngine *)self restorePolicy];
    engineError = [(MBCKEngine *)self engineError];
    v11 = [restorePolicy2 notifyPluginsEndedRestoreWithEngine:self error:engineError];

    if (v11)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of endedRestoreWithEngine:error: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to notify plugins of endedRestoreWithEngine:error: %@", v11);
      }

      goto LABEL_15;
    }

    device = [(MBCKEngine *)self device];
    v54 = 0;
    v21 = [MBCKEncryptionManager saveRestoreKeyBagsWithAccount:v8 device:device error:&v54];
    v22 = v54;

    if ((v21 & 1) == 0)
    {
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v22;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Unable to save restore keybags for device: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Unable to save restore keybags for device: %@", v22);
      }

      if (error)
      {
        v45 = v22;
        v16 = 0;
        *error = v22;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_39;
    }

    persona = [(MBCKEngine *)self persona];
    serviceManager = [(MBCKEngine *)self serviceManager];
    v25 = [MBServiceRestoreSession alloc];
    v50 = persona;
    personaIdentifier = [persona personaIdentifier];
    v27 = [(MBServiceRestoreSession *)v25 initWithPersonaIdentifier:personaIdentifier];

    context = [(MBCKEngine *)self context];
    -[MBServiceRestoreSession setSnapshotID:](v27, "setSnapshotID:", [context snapshotID]);

    context2 = [(MBCKEngine *)self context];
    snapshotUUID = [context2 snapshotUUID];
    [(MBServiceRestoreSession *)v27 setSnapshotUUID:snapshotUUID];

    context3 = [(MBCKEngine *)self context];
    backupUDID = [context3 backupUDID];
    [(MBServiceRestoreSession *)v27 setBackupUDID:backupUDID];

    startDate = [(MBCKRestoreEngine *)self startDate];
    [(MBServiceRestoreSession *)v27 setStartDate:startDate];

    [(MBServiceRestoreSession *)v27 setFinishing:0];
    [(MBServiceRestoreSession *)v27 setCancelled:0];
    context4 = [(MBCKEngine *)self context];
    -[MBServiceRestoreSession setSnapshotBackupPolicy:](v27, "setSnapshotBackupPolicy:", [context4 backupPolicy]);

    -[MBServiceRestoreSession setTelemetryID:](v27, "setTelemetryID:", [serviceManager restoreTelemetryID]);
    cloudFormatInfo = [(MBCKRestoreEngine *)self cloudFormatInfo];
    if (!cloudFormatInfo)
    {
      __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2214, "cloudFormatInfo");
    }

    v36 = cloudFormatInfo;
    performanceStatistics = [(MBCKEngine *)self performanceStatistics];
    v53 = v22;
    v38 = [MBDataMigratorPlugin setUpMobileBackupPreferencesForBackgroundRestoreWithAccount:v8 restoreSession:v27 cloudFormatInfo:v36 performanceStatistics:performanceStatistics backupPolicy:[(MBEngine *)self backupPolicy] error:&v53];
    v39 = v53;

    if (v38)
    {
      snapshotUUID2 = [(MBServiceRestoreSession *)v27 snapshotUUID];
      v52 = v39;
      v41 = [serviceManager closeRestorePlanForAccount:v8 snapshotUUID:snapshotUUID2 error:&v52];
      v42 = v52;

      if ((v41 & 1) == 0)
      {
        v47 = MBGetDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v56 = v42;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed closing restore plan: %@", buf, 0xCu);
          _MBLog(@"E ", "=ckrestore-engine= Failed closing restore plan: %@", v42);
        }

        if (!error)
        {
          v16 = 0;
          v39 = v42;
          goto LABEL_38;
        }

        v39 = v42;
        goto LABEL_37;
      }

      v51 = v42;
      v43 = [v50 finalizeRestoreDirectoriesWithError:&v51];
      v39 = v51;

      if (v43)
      {
        v16 = 1;
LABEL_38:

        v22 = v39;
LABEL_39:

        v11 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v39;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to move restore sandboxes into place: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to move restore sandboxes into place: %@", v39);
      }
    }

    else
    {
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v39;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set up MobileBackup preferences for background restore: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to set up MobileBackup preferences for background restore: %@", v39);
      }
    }

    if (!error)
    {
      v16 = 0;
      goto LABEL_38;
    }

LABEL_37:
    v48 = v39;
    v16 = 0;
    *error = v39;
    goto LABEL_38;
  }

  databaseManager = [v6 databaseManager];
  account = [v6 account];
  [databaseManager setShouldSupportBudgeting:0 account:account];

  v16 = 1;
LABEL_41:

  return v16;
}

- (MBCKEncryptionManager)encryptionManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_encryptionManager;
  if (!v3)
  {
    v4 = objc_alloc_init(MBCKEncryptionManager);
    encryptionManager = selfCopy->_encryptionManager;
    selfCopy->_encryptionManager = v4;

    v3 = v4;
  }

  v6 = v3;

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)_configureAndInstallPlaceholdersWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKRestoreEngine _configureAndInstallPlaceholdersWithError:]", "MBCKRestoreEngine.m", 2260, "error");
  }

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine _configureAndInstallPlaceholdersWithError:]", "MBCKRestoreEngine.m", 2262, "serviceAccount");
  }

  v6 = serviceAccount;
  if ([(MBEngine *)self isForegroundRestore])
  {
    persona = [v6 persona];
    if (-[MBCKRestoreEngine useFileLists](self, "useFileLists") && (-[MBCKRestoreEngine excludedAppBundleIDs](self, "excludedAppBundleIDs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [persona copyPlaceholderIPAsForAppInstallationExcluding:v8 error:error], v8, !v9))
    {
      LOBYTE(v13) = 0;
    }

    else if ([persona isDataSeparatedPersona])
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Installing the app placeholders for the data-separated foreground restore", buf, 2u);
        _MBLog(@"Df", "=ckrestore-engine= Installing the app placeholders for the data-separated foreground restore");
      }

      v11 = objc_opt_new();
      v12 = [[_TtC7backupd14MigratorConfig alloc] initWithDataSeparatedAccount:v6];
      v13 = [v11 performMigrationWithConfig:v12 error:error];
      v14 = MBGetDefaultLog();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finished installing the app placeholders for the data-separated foreground restore", buf, 2u);
          _MBLog(@"Df", "=ckrestore-engine= Finished installing the app placeholders for the data-separated foreground restore");
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *error;
        *buf = 138543362;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to install the app placeholders for the data-separated foreground restore: %{public}@", buf, 0xCu);
        _MBLog(@"E ", "=ckrestore-engine= Failed to install the app placeholders for the data-separated foreground restore: %{public}@", *error);
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (id)engineModeString
{
  if ([(MBEngine *)self isForegroundRestore])
  {
    v3 = @"Foreground Restore";
  }

  else if ([(MBEngine *)self isBackgroundRestore])
  {
    restoreMode = [(MBCKRestoreEngine *)self restoreMode];
    if ([restoreMode isBackgroundApp])
    {
      if (MBIsInternalInstall())
      {
        bundleID = [restoreMode bundleID];
        v3 = [NSString stringWithFormat:@"Background Restore for %@", bundleID];
      }

      else
      {
        v3 = [NSString stringWithFormat:@"Background Restore for App"];
      }
    }

    else if ([restoreMode isBackgroundFile])
    {
      v3 = @"Background Restore for ATC File";
    }

    else if ([restoreMode isBackgroundFiles])
    {
      v3 = @"Background Restore for ATC Files";
    }

    else
    {
      v3 = @"Background Restore [UNKNOWN TYPE]";
    }
  }

  else
  {
    v3 = @"UNKNOWN RESTORE TYPE";
  }

  return v3;
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart
{
  p_networkConnectivityAtStart = &self->_networkConnectivityAtStart;
  v3 = *&self->_networkConnectivityAtStart.isOnWiFi;
  backupOnCellularSupport = p_networkConnectivityAtStart->backupOnCellularSupport;
  result.var4 = backupOnCellularSupport;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = HIDWORD(v3);
  return result;
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish
{
  p_networkConnectivityAtFinish = &self->_networkConnectivityAtFinish;
  v3 = *&self->_networkConnectivityAtFinish.isOnWiFi;
  backupOnCellularSupport = p_networkConnectivityAtFinish->backupOnCellularSupport;
  result.var4 = backupOnCellularSupport;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = HIDWORD(v3);
  return result;
}

@end