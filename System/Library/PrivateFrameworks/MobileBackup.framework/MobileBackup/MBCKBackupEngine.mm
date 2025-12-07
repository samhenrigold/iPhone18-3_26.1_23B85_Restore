@interface MBCKBackupEngine
+ (BOOL)_shouldRemoveSnapshotAfterError:(id)error;
+ (BOOL)_startOTABackupWithAccount:(id)account error:(id *)error;
+ (BOOL)_stopOTABackupWithAccount:(id)account error:(id *)error;
- (BOOL)_handleSkippedFilesWithError:(id *)error;
- (BOOL)_notifyPluginsOfBackupEnded:(id)ended error:(id *)error;
- (BOOL)_shouldBackupUsingFSEvents;
- (BOOL)_shouldSimulateCancelationForState:(id)state;
- (BOOL)_verifySnapshotWithError:(id *)error;
- (BOOL)cancelWithError:(id)error;
- (BOOL)checkIfBackupHasKeybagWithUUID:(id)d;
- (BOOL)commitSnapshotWithError:(id *)error;
- (BOOL)createVolumeSnapshots:(id *)snapshots;
- (BOOL)fileScanner:(id)scanner failedToStatFile:(id)file withErrno:(int)errno;
- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified;
- (BOOL)findChangesWithError:(id *)error;
- (BOOL)finishBackupWithError:(id *)error;
- (BOOL)prepareToUploadChangesWithError:(id *)error;
- (BOOL)reserveQuotaWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (BOOL)shouldCancelTranscription;
- (BOOL)shouldCancelVerification;
- (BOOL)synchronizeFileListsWithError:(id *)error;
- (BOOL)uploadAssetsWithError:(id *)error;
- (BOOL)uploadChangesWithError:(id *)error;
- (BOOL)uploadDomainRecords:(id *)records;
- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager;
- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager domainManager:(id)domainManager;
- (NSString)description;
- (NSString)pendingSnapshotID;
- (id)_createDomainTranscriberForAPFSSnapshots:(id)snapshots error:(id *)error;
- (id)_fetchPreviousBackupFSEventState;
- (id)fileScanner:(id)scanner didFindFile:(id)file;
- (id)powerAssertionName;
- (int64_t)_snapshotFormatForAccount:(id)account previousSnapshot:(id)snapshot error:(id *)error;
- (void)_finishCollectingTelemetry;
- (void)_handleStateTransition;
- (void)_releaseLockAssertion;
- (void)_saveLastPendingSnapshotSize:(unint64_t)size;
- (void)_saveNextBackupFSEventState;
- (void)_sendTelemetryForStateChange:(unint64_t)change start:(id)start end:(id)end;
- (void)_tearDown;
- (void)_unmountSnapshotsAndRemoveThem:(BOOL)them;
- (void)cleanUpAfterError:(id)error;
- (void)dealloc;
- (void)makeStateTransition;
- (void)resumeWatchdogIfNeeded;
- (void)setBackupState:(unint64_t)state;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
@end

@implementation MBCKBackupEngine

- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager domainManager:(id)domainManager
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  domainManagerCopy = domainManager;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKBackupEngine initWithReason:settingsContext:debugContext:serviceManager:domainManager:]", "MBCKBackupEngine.m", 120, "account");
  }

  v17 = account;
  v29.receiver = self;
  v29.super_class = MBCKBackupEngine;
  v18 = [(MBCKEngine *)&v29 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:domainManagerCopy];
  v19 = v18;
  if (v18)
  {
    [(MBCKEngine *)v18 setServiceManager:managerCopy];
    [(MBCKBackupEngine *)v19 setBackupState:1];
    v19->_backupReason = reason;
    v20 = objc_alloc_init(MBCKProperties);
    [(MBCKEngine *)v19 setProperties:v20];

    v19->_lockAssertionRef = 0;
    v21 = objc_opt_new();
    [(MBCKBackupEngine *)v19 setEstimator:v21];

    v22 = [[MBBackupLifecyclePluginNotifier alloc] initWithEngine:v19];
    pluginNotifier = v19->_pluginNotifier;
    v19->_pluginNotifier = v22;

    v24 = objc_opt_new();
    attemptSummary = v19->_attemptSummary;
    v19->_attemptSummary = v24;

    v26 = objc_opt_new();
    telemetry = v19->_telemetry;
    v19->_telemetry = v26;
  }

  return v19;
}

- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKBackupEngine initWithReason:settingsContext:debugContext:serviceManager:]", "MBCKBackupEngine.m", 141, "account");
  }

  v14 = account;
  v15 = [MBDomainManager alloc];
  persona = [v14 persona];
  v17 = [(MBDomainManager *)v15 initWithPersona:persona];

  v18 = [(MBCKBackupEngine *)self initWithReason:reason settingsContext:contextCopy debugContext:debugContextCopy serviceManager:managerCopy domainManager:v17];
  return v18;
}

- (void)dealloc
{
  [(MBCKBackupEngine *)self _releaseLockAssertion];
  [(MBCKBackupEngine *)self _unmountSnapshotsAndRemoveThem:1];
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  [pendingSnapshotDB close:0];

  v4.receiver = self;
  v4.super_class = MBCKBackupEngine;
  [(MBCKEngine *)&v4 dealloc];
}

- (void)_releaseLockAssertion
{
  lockAssertionRef = self->_lockAssertionRef;
  self->_lockAssertionRef = 0;
  if (lockAssertionRef)
  {
    [MBKeyBag releaseLockAssertion:?];
  }
}

- (void)setBackupState:(unint64_t)state
{
  self->_backupState = state;
  self->_backupStateDescription = MBCKStringForBackupState();

  _objc_release_x1();
}

- (id)powerAssertionName
{
  if (MBBackupReasonIsManual())
  {
    return @"backup-manual";
  }

  if (MBBackupReasonIsScheduled())
  {
    return @"backup-scheduled";
  }

  return @"backup";
}

- (BOOL)cancelWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = MBCKBackupEngine;
  v4 = [(MBCKEngine *)&v7 cancelWithError:error];
  if (!v4)
  {
    cacheDeleteRequest = [(MBCKBackupEngine *)self cacheDeleteRequest];
    [cacheDeleteRequest cancel];
  }

  return v4;
}

+ (BOOL)_shouldRemoveSnapshotAfterError:(id)error
{
  if (!MBIsInternalInstall())
  {
    return 1;
  }

  v4 = +[MBBehaviorOptions sharedOptions];
  v5 = v4;
  if (error)
  {
    shouldKeepFileSystemSnapshotAfterBackupFailure = [v4 shouldKeepFileSystemSnapshotAfterBackupFailure];
  }

  else
  {
    shouldKeepFileSystemSnapshotAfterBackupFailure = [v4 shouldKeepFileSystemSnapshotAfterBackupSuccess];
  }

  v7 = shouldKeepFileSystemSnapshotAfterBackupFailure ^ 1;

  return v7;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  if ([MBError isCKError:errorCopy withCode:25])
  {
    device = [(MBCKEngine *)self device];
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    persona = [(MBCKEngine *)self persona];
    MBResetPendingSnapshot(device, ckOperationTracker, persona);
  }

  ckOperationTracker2 = [(MBCKEngine *)self ckOperationTracker];
  [ckOperationTracker2 drain];

  -[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:](self, "_unmountSnapshotsAndRemoveThem:", [objc_opt_class() _shouldRemoveSnapshotAfterError:errorCopy]);
  v9 = self->_currentSnapshot;
  if ([(MBCKBackupEngine *)self backupState]== 3)
  {
    v10 = [MBError isResumableCacheRefreshError:errorCopy];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if ((v10 & 1) == 0)
  {
    cache = [(MBCKEngine *)self cache];
    v12 = [cache removeAllOrphanedItemsForSnapshot:v9];

    if (v12)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to remove orphaned items for snapshot: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Failed to remove orphaned items for snapshot: %@", v12);
      }
    }
  }

LABEL_13:
  v14.receiver = self;
  v14.super_class = MBCKBackupEngine;
  [(MBCKEngine *)&v14 cleanUpAfterError:errorCopy];
}

- (BOOL)runWithError:(id *)error
{
  if ([(MBEngine *)self backupPolicy]== 1)
  {
    v5 = objc_opt_new();
    [v5 setDelegate:self];
    [v5 startSync];
  }

  else
  {
    v5 = 0;
  }

  [(MBCKBackupEngine *)self makeStateTransition];
  isCanceled = [(MBEngine *)self isCanceled];
  if (v5 && isCanceled)
  {
    [v5 cancelSync];
  }

  [(MBCKBackupEngine *)self _tearDown];
  hasError = [(MBCKEngine *)self hasError];
  if (hasError)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      engineError = [(MBCKEngine *)self engineError];
      v10 = [MBError loggableDescriptionForError:engineError];
      engineError2 = [(MBCKEngine *)self engineError];
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = engineError2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=cloud-backup= Backup failed: %{public}@, %@", buf, 0x16u);

      engineError3 = [(MBCKEngine *)self engineError];
      v13 = [MBError loggableDescriptionForError:engineError3];
      engineError4 = [(MBCKEngine *)self engineError];
      _MBLog(@"E ", "=cloud-backup= Backup failed: %{public}@, %@", v13, engineError4);
    }

    engineError5 = [(MBCKEngine *)self engineError];
    v16 = engineError5;
    if (error)
    {
      v17 = engineError5;
      *error = v16;
    }

    persona = [(MBCKEngine *)self persona];
    volumeMountPoint = [persona volumeMountPoint];
    v20 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpaceForVolume()];
    telemetry = [(MBCKBackupEngine *)self telemetry];
    [telemetry setFreeDiskSpace:v20];
  }

  return hasError ^ 1;
}

- (void)_tearDown
{
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];

  if (pendingSnapshotDB)
  {
    pendingSnapshotDB2 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v7 = 0;
    [pendingSnapshotDB2 close:&v7];
    v5 = v7;

    if (v5)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=cloud-backup= Error closing pending snapshot database: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Error closing pending snapshot database: %@", v5);
      }
    }

    [(MBCKBackupEngine *)self setPendingSnapshotDB:0];
  }
}

- (void)_handleStateTransition
{
  v3 = +[NSDate date];
  cache = [(MBCKEngine *)self cache];
  [cache beginBatch];

  switch([(MBCKBackupEngine *)self backupState])
  {
    case 1uLL:
      [(MBCKBackupEngine *)self setBackupState:2];
      multistateRetryStrategy = [(MBCKEngine *)self multistateRetryStrategy];
      [multistateRetryStrategy reset];

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10006D188;
      v36[3] = &unk_1003BC400;
      v36[4] = self;
      v6 = v36;
      goto LABEL_19;
    case 2uLL:
      [(MBCKBackupEngine *)self setBackupState:3];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10006D1F0;
      v35[3] = &unk_1003BC400;
      v35[4] = self;
      v6 = v35;
      goto LABEL_19;
    case 3uLL:
      [(MBCKBackupEngine *)self setBackupState:12];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10006D25C;
      v34[3] = &unk_1003BC400;
      v34[4] = self;
      v6 = v34;
      goto LABEL_19;
    case 4uLL:
      [(MBCKBackupEngine *)self setBackupState:10];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10006D398;
      v31[3] = &unk_1003BC400;
      v31[4] = self;
      v6 = v31;
      goto LABEL_19;
    case 5uLL:
      [(MBCKBackupEngine *)self setBackupState:13];
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry _startCollectingWiFiQualityMeasurements];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10006D464;
      v29[3] = &unk_1003BC400;
      v29[4] = self;
      v6 = v29;
      goto LABEL_19;
    case 6uLL:
      [(MBCKBackupEngine *)self setBackupState:11];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10006D47C;
      v27[3] = &unk_1003BC400;
      v27[4] = self;
      v6 = v27;
      goto LABEL_19;
    case 7uLL:
      [(MBCKBackupEngine *)self setBackupState:8];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10006D550;
      v25[3] = &unk_1003BC400;
      v25[4] = self;
      [(MBCKEngine *)self performRetryablePhase:v25];
      if ([(MBCKEngine *)self isFinished])
      {
        engineError = [(MBCKEngine *)self engineError];
        v10 = [MBError isCancelledError:engineError];

        if (v10)
        {
LABEL_11:
          [(MBCKEngine *)self setEngineError:0];
        }
      }

      else
      {
        [(MBCKEngine *)self setIsFinished:1];
        [(MBCKEngine *)self setEngineError:0];
        [(MBCKBackupEngine *)self setEstimator:0];
        telemetry2 = MBGetDefaultLog();
        if (os_log_type_enabled(telemetry2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, telemetry2, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Backup finished successfully", buf, 2u);
          _MBLog(@"Df", "=cloud-backup= Backup finished successfully");
        }

LABEL_6:
      }

LABEL_20:
      if (MBBackupReasonIsScheduled())
      {
        engineError2 = [(MBCKEngine *)self engineError];
        v12 = [MBError isXPCActivityDeferredError:engineError2];

        if (v12)
        {
          engineError3 = [(MBCKEngine *)self engineError];
          v14 = [MBError errorWithCode:223 error:engineError3 format:@"Backup canceled (deferred)"];
          [(MBCKEngine *)self setEngineError:v14];
        }
      }

      [(MBCKBackupEngine *)self backupState];
      v15 = MBCKStringForBackupState();
      if ([(MBCKBackupEngine *)self _shouldSimulateCancelationForState:v15])
      {
        v16 = [MBError errorWithCode:202 format:@"Backup canceled (simulated for %@)", v15];
        [(MBCKEngine *)self setEngineError:v16];

        [(MBCKEngine *)self setIsFinished:1];
      }

      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:v3];
      v19 = v18;
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = v15;
        v39 = 2048;
        v40 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=cloud-backup= %{public}@ done in %.3fs", buf, 0x16u);
        _MBLog(@"Df", "=cloud-backup= %{public}@ done in %.3fs", v15, *&v19);
      }

      attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
      [attemptSummary trackDuration:v15 forEngineState:v19];

      [(MBCKBackupEngine *)self _sendTelemetryForStateChange:[(MBCKBackupEngine *)self backupState] start:v3 end:v17];
      if ([(MBCKEngine *)self isFinished])
      {
        if ([(MBCKBackupEngine *)self backupState]>= 3 && [(MBCKBackupEngine *)self backupState]!= 8)
        {
          engineError4 = [(MBCKEngine *)self engineError];
          [(MBCKBackupEngine *)self _notifyPluginsOfBackupEnded:engineError4 error:0];
        }

        [(MBCKBackupEngine *)self _finishCollectingTelemetry];
        progressModel = [(MBCKEngine *)self progressModel];
        [progressModel ended];
      }

      cache2 = [(MBCKEngine *)self cache];
      [cache2 flush];

      return;
    case 8uLL:
      [(MBCKEngine *)self setIsFinished:1];
      goto LABEL_11;
    case 9uLL:
      [(MBCKBackupEngine *)self setBackupState:4];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10006D330;
      v32[3] = &unk_1003BC400;
      v32[4] = self;
      v6 = v32;
      goto LABEL_19;
    case 0xAuLL:
      [(MBCKBackupEngine *)self setBackupState:5];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10006D3FC;
      v30[3] = &unk_1003BC400;
      v30[4] = self;
      v6 = v30;
      goto LABEL_19;
    case 0xBuLL:
      [(MBCKBackupEngine *)self setBackupState:7];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10006D4E8;
      v26[3] = &unk_1003BC400;
      v26[4] = self;
      v6 = v26;
      goto LABEL_19;
    case 0xCuLL:
      [(MBCKBackupEngine *)self setBackupState:9];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10006D2C8;
      v33[3] = &unk_1003BC400;
      v33[4] = self;
      v6 = v33;
LABEL_19:
      [(MBCKEngine *)self performRetryablePhase:v6];
      goto LABEL_20;
    case 0xDuLL:
      [(MBCKBackupEngine *)self setBackupState:6];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006D470;
      v28[3] = &unk_1003BC400;
      v28[4] = self;
      [(MBCKEngine *)self performRetryablePhase:v28];
      telemetry2 = [(MBCKBackupEngine *)self telemetry];
      [telemetry2 _stopCollectingWiFiQualityMeasurements];
      goto LABEL_6;
    default:
      __assert_rtn("[MBCKBackupEngine _handleStateTransition]", "MBCKBackupEngine.m", 277, "0");
  }
}

- (BOOL)_shouldSimulateCancelationForState:(id)state
{
  stateCopy = state;
  if (MBIsInternalInstall() && ![(MBCKEngine *)self isFinished])
  {
    v6 = +[MBBehaviorOptions sharedOptions];
    engineStateToCancelBackupAfter = [v6 engineStateToCancelBackupAfter];
    v5 = [engineStateToCancelBackupAfter isEqualToString:stateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKBackupEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKBackupEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (int64_t)_snapshotFormatForAccount:(id)account previousSnapshot:(id)snapshot error:(id *)error
{
  accountCopy = account;
  snapshotCopy = snapshot;
  if ([(MBCKBackupEngine *)self backupState]!= 2)
  {
    __assert_rtn("[MBCKBackupEngine _snapshotFormatForAccount:previousSnapshot:error:]", "MBCKBackupEngine.m", 463, "self.backupState == kMBCKBackupStateSetup");
  }

  v10 = [MBBackupCloudFormatPolicy snapshotFormatForAccount:accountCopy previousSnapshot:snapshotCopy error:error];

  return v10;
}

- (BOOL)setUpWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 474, "error");
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 476, "serviceManager");
  }

  v6 = serviceManager;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 478, "serviceAccount");
  }

  v8 = serviceAccount;
  domainManager = [(MBEngine *)self domainManager];

  if (domainManager)
  {
    v208 = 0;
    persona = [(MBCKEngine *)self persona];
    v11 = [persona getBooleanValueForKey:@"HasDeferredDiscountingQuota" keyExists:&v208];

    if (v208 && v11)
    {
      v207 = 0;
      v12 = [v6 discountCameraRollQuotaWithAccount:v8 connection:0 error:&v207];
      v13 = v207;
      if ((v12 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v210 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to discount camera roll quota: %@", buf, 0xCu);
          _MBLog(@"E ", "=cloud-backup= Failed to discount camera roll quota: %@", v13);
        }
      }
    }

    cacheDeleteRequest = [(MBCKBackupEngine *)self cacheDeleteRequest];
    if (cacheDeleteRequest)
    {
      [(MBCKBackupEngine *)self setCacheDeleteRequest:cacheDeleteRequest];
    }

    else
    {
      v19 = [MBCacheDeleteRequest purgeRequestForCloudBackupReason:self->_backupReason];
      [(MBCKBackupEngine *)self setCacheDeleteRequest:v19];
    }

    cacheDeleteRequest2 = [(MBCKBackupEngine *)self cacheDeleteRequest];

    if (cacheDeleteRequest2)
    {
      cacheDeleteRequest3 = [(MBCKBackupEngine *)self cacheDeleteRequest];
      purge = [cacheDeleteRequest3 purge];

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v210 = purge;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=cloud-backup= CacheDelete purged %llu bytes", buf, 0xCu);
        _MBLog(@"Df", "=cloud-backup= CacheDelete purged %llu bytes", purge);
      }
    }

    v206.receiver = self;
    v206.super_class = MBCKBackupEngine;
    if (![(MBCKEngine *)&v206 setUpWithError:error])
    {
LABEL_49:
      LOBYTE(cache2) = 0;
      goto LABEL_50;
    }

    if (MBBackupReasonIsManual() && !self->_lockAssertionRef)
    {
      self->_lockAssertionRef = [MBKeyBag holdLockAssertion:@"Manual Backup"];
    }

    if ([v8 isEnabled])
    {
      v24 = +[MBManagedPolicy sharedPolicy];
      v25 = [v24 checkIfCloudBackupIsAllowed:error];

      if (v25)
      {
        ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
        if (!ckOperationTracker)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 522, "tracker");
        }

        v27 = ckOperationTracker;
        ckOperationPolicy = [ckOperationTracker ckOperationPolicy];
        cellularAccess = [ckOperationPolicy cellularAccess];

        if (cellularAccess)
        {
          if ([cellularAccess allowsExpensiveNetworkAccess])
          {
            v30 = 2;
          }

          else
          {
            v30 = 1;
          }

          telemetry = [(MBCKBackupEngine *)self telemetry];
          [telemetry setAllowedCellularCost:v30];
        }

        networkConnectivity = [v6 networkConnectivity];
        v34 = v33;
        telemetry2 = [(MBCKBackupEngine *)self telemetry];
        [telemetry2 setNetworkConnectivityAtStart:{networkConnectivity, v34}];

        v36 = MBGetChargingType();
        telemetry3 = [(MBCKBackupEngine *)self telemetry];
        [telemetry3 setChargingType:v36];

        cache = [(MBCKEngine *)self cache];
        if (!cache)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 533, "cache");
        }

        v39 = cache;
        v205 = 0;
        LODWORD(cache2) = [MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:v27 state:&v205 error:error];
        v41 = v205;
        if (!cache2)
        {
          goto LABEL_86;
        }

        v198 = cellularAccess;
        attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
        [attemptSummary trackKeyBagValidationState:v41];

        [(MBCKBackupEngine *)self setKeyBagValidationState:v41];
        v43 = [MBCKAccount fetchAccountWithOperationTracker:v27 cache:v39 create:1 error:error];
        if (!v43)
        {
          if (!*error)
          {
            __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 549, "*error != nil");
          }

          v50 = 0;
          LOBYTE(cache2) = 0;
          goto LABEL_85;
        }

        v44 = v43;
        v45 = MBGetDefaultLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v210 = v44;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=cloud-backup= Account record is %@", buf, 0xCu);
          _MBLog(@"I ", "=cloud-backup= Account record is %@", v44);
        }

        v197 = v41;

        if ([v39 invalidated])
        {
          v46 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

          if (!v46)
          {
            v39 = 0;
            LOBYTE(cache2) = 0;
            v50 = v44;
            goto LABEL_84;
          }

          [(MBCKEngine *)self setCache:v46];
        }

        else
        {
          v46 = v39;
        }

        if ([v44 fetchDevicesWithOperationTracker:v27 error:error])
        {
          if (![(MBCKEngine *)self handleCancelation:error])
          {
            v196 = v27;
            context = [(MBCKEngine *)self context];
            backupUDID = [context backupUDID];
            v53 = [v44 backupsDisabledFromAnotherDeviceForUUID:backupUDID];

            if (!v53)
            {
              v50 = v44;
              v39 = v46;
              v27 = v196;
              goto LABEL_68;
            }

            IsManual = MBBackupReasonIsManual();
            cache2 = MBGetDefaultLog();
            v55 = os_log_type_enabled(cache2, OS_LOG_TYPE_DEFAULT);
            if (IsManual)
            {
              if (v55)
              {
                context2 = [(MBCKEngine *)self context];
                backupUDID2 = [context2 backupUDID];
                *buf = 138412290;
                v210 = backupUDID2;
                _os_log_impl(&_mh_execute_header, cache2, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Disabled from another device triggered manually. Resetting the cache - cached device:%@", buf, 0xCu);

                context3 = [(MBCKEngine *)self context];
                backupUDID3 = [context3 backupUDID];
                _MBLog(@"Df", "=cloud-backup= Disabled from another device triggered manually. Resetting the cache - cached device:%@", backupUDID3);
              }

              v194 = [v6 resetCacheWithAccount:v8 error:error];
              v39 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

              [(MBCKEngine *)self setCache:v39];
              cache2 = [(MBCKEngine *)self cache];
              v27 = v196;
              v60 = [MBCKAccount fetchAccountWithOperationTracker:v196 cache:cache2 error:error];

              v50 = v60;
              LOBYTE(cache2) = 0;
              if (v60)
              {
                v41 = v197;
                cellularAccess = v198;
                if (!v194 || !v39)
                {
                  goto LABEL_85;
                }

LABEL_68:
                v203 = 0;
                v61 = v50;
                [(MBCKEngine *)self context];
                v63 = v62 = v27;
                backupUDID4 = [v63 backupUDID];
                v195 = v61;
                v65 = [v61 setupDeviceWithOperationTracker:v62 deviceUUID:backupUDID4 passcode:0 hasNewOTAKeyBag:&v203 error:error];

                if ([v39 invalidated])
                {
                  v66 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

                  if (!v66)
                  {
                    v39 = 0;
                    goto LABEL_88;
                  }

                  [(MBCKEngine *)self setCache:v66];
                  v39 = v66;
                }

                cellularAccess = v198;
                telemetry4 = [(MBCKBackupEngine *)self telemetry];
                createdNewOTAKeybag = [telemetry4 createdNewOTAKeybag];

                if ((createdNewOTAKeybag & 1) == 0)
                {
                  v69 = v203;
                  telemetry5 = [(MBCKBackupEngine *)self telemetry];
                  [telemetry5 setCreatedNewOTAKeybag:v69];
                }

                if ((v65 & 1) == 0)
                {
                  v27 = v196;
                  if (!*error)
                  {
                    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 612, "*error != nil");
                  }

                  LOBYTE(cache2) = 0;
                  goto LABEL_121;
                }

                context4 = [(MBCKEngine *)self context];
                backupUDID5 = [context4 backupUDID];
                v73 = [v195 deviceForUUID:backupUDID5];
                [(MBCKEngine *)self setDevice:v73];

                device = [(MBCKEngine *)self device];

                if (!device)
                {
                  cache2 = MBGetDefaultLog();
                  if (os_log_type_enabled(cache2, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, cache2, OS_LOG_TYPE_ERROR, "=cloud-backup= Could not find device after setup, failing backup attempt", buf, 2u);
                    _MBLog(@"E ", "=cloud-backup= Could not find device after setup, failing backup attempt");
                  }

                  [MBError errorWithCode:204 format:@"Could not find device after setup"];
                  *error = LOBYTE(cache2) = 0;
                  goto LABEL_120;
                }

                context5 = [(MBCKEngine *)self context];
                backupUDID6 = [context5 backupUDID];
                v77 = MBDeviceUUID();
                v78 = [backupUDID6 isEqualToString:v77];

                if (v78)
                {
                  buf[0] = 0;
                  device2 = [(MBCKEngine *)self device];
                  cache2 = [MBCKJournal journalForDevice:device2 cache:v39 engine:self];

                  v27 = v196;
                  if ([cache2 replayJournalResetOrDisableWithOperationTracker:v196 serviceManager:v6 disable:buf error:error])
                  {
                    if (buf[0] == 1)
                    {
                      [v6 setBackupEnabled:0 account:v8 connection:0];
                      v80 = @"Backups disabled from server action";
LABEL_98:
                      v41 = v197;
                      cellularAccess = v198;
                      *error = [MBError errorWithCode:204 format:v80];
LABEL_99:

                      LOBYTE(cache2) = 0;
LABEL_122:
                      v50 = v195;
                      goto LABEL_85;
                    }

                    if (MBBackupReasonIsScheduled())
                    {
                      v80 = @"Backups reset from server action";
                      goto LABEL_98;
                    }

                    v84 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

                    if (!v84)
                    {
                      v39 = 0;
                      v27 = v196;
                      v41 = v197;
                      cellularAccess = v198;
                      goto LABEL_99;
                    }

                    [(MBCKEngine *)self setCache:v84];
                    v39 = v84;
                  }

                  cellularAccess = v198;
                  if ([v39 invalidated])
                  {
                    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 643, "!cache.invalidated");
                  }
                }

                else
                {
                  cellularAccess = v198;
                }

                device3 = [(MBCKEngine *)self device];
                shouldDeleteDevice = [device3 shouldDeleteDevice];

                if (shouldDeleteDevice)
                {
                  v87 = MBGetDefaultLog();
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Existing backup history has corrupt data. Deleting and starting a fresh backup", buf, 2u);
                    _MBLog(@"Df", "=cloud-backup= Existing backup history has corrupt data. Deleting and starting a fresh backup");
                  }

                  context6 = [(MBCKEngine *)self context];
                  backupUDID7 = [context6 backupUDID];
                  v90 = [v195 deleteDeviceWithOperationTracker:v196 deviceUUID:backupUDID7 error:error];

                  if (v90)
                  {
                    v91 = MBGetDefaultLog();
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resetting the cache - shouldDeleteDevice", buf, 2u);
                      _MBLog(@"Df", "=cloud-backup= Resetting the cache - shouldDeleteDevice");
                    }

                    [v6 resetCacheWithAccount:v8 error:error];
                    v202 = 0;
                    v92 = [v6 openCacheWithAccount:v8 accessType:1 error:&v202];
                    cache2 = v202;

                    [(MBCKEngine *)self setCache:v92];
                    [(MBCKEngine *)self setDevice:0];
                    v93 = [MBError errorWithCode:17 format:@"Device deleted, please retry"];
                    v94 = v93;

                    LOBYTE(cache2) = 0;
                    *error = v93;
                    v39 = v92;
                    goto LABEL_120;
                  }

                  goto LABEL_119;
                }

                device4 = [(MBCKEngine *)self device];
                if ([device4 hasFetchedSnapshots])
                {
                }

                else
                {
                  device5 = [(MBCKEngine *)self device];
                  v97 = [device5 fetchSnapshotsWithOperationTracker:v196 error:error];

                  if ((v97 & 1) == 0)
                  {
                    if (!*error)
                    {
                      __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 662, "*error != nil");
                    }

                    goto LABEL_119;
                  }
                }

                device6 = [(MBCKEngine *)self device];
                [device6 pinLatestGMSnapshotIfNeeded];

                device7 = [(MBCKEngine *)self device];
                snapshots = [device7 snapshots];
                lastObject = [snapshots lastObject];
                previousSnapshot = self->_previousSnapshot;
                self->_previousSnapshot = lastObject;

                v103 = [(MBCKBackupEngine *)self _snapshotFormatForAccount:v8 previousSnapshot:self->_previousSnapshot error:error];
                if (v103 == -1)
                {
LABEL_119:
                  LOBYTE(cache2) = 0;
LABEL_120:
                  v27 = v196;
                  goto LABEL_121;
                }

                v104 = v103;
                device8 = [(MBCKEngine *)self device];
                snapshots2 = [device8 snapshots];
                v107 = [snapshots2 count];

                v191 = v104;
                if (!v107)
                {
                  v110 = 0;
                  goto LABEL_129;
                }

                device9 = [(MBCKEngine *)self device];
                v109 = [device9 requiresFullBackupForAccount:v8];

                if (v109)
                {
                  v110 = 2;
                  goto LABEL_129;
                }

                if ([(MBCKSnapshot *)self->_previousSnapshot snapshotFormat]== v104)
                {
                  v110 = 1;
                  goto LABEL_129;
                }

                v110 = MBSnapshotTypeForFormatTransition([(MBCKSnapshot *)self->_previousSnapshot snapshotFormat], v104, error);
                if (v110 != -1)
                {
LABEL_129:
                  v111 = MBGetDefaultLog();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
                  {
                    v112 = MBStringForSnapshotType();
                    v113 = MBStringForSnapshotFormat();
                    telemetry6 = [(MBCKBackupEngine *)self telemetry];
                    createdNewOTAKeybag2 = [telemetry6 createdNewOTAKeybag];
                    *buf = 138412802;
                    v210 = v112;
                    v211 = 2112;
                    *v212 = v113;
                    *&v212[8] = 1024;
                    *&v212[10] = createdNewOTAKeybag2;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, "=cloud-backup= Setting up backup, type:%@ format:%@ hasNewOTAKeyBag:%d", buf, 0x1Cu);

                    v116 = MBStringForSnapshotType();
                    v117 = MBStringForSnapshotFormat();
                    telemetry7 = [(MBCKBackupEngine *)self telemetry];
                    _MBLog(@"I ", "=cloud-backup= Setting up backup, type:%@ format:%@ hasNewOTAKeyBag:%d", v116, v117, [telemetry7 createdNewOTAKeybag]);

                    v104 = v191;
                  }

                  telemetry8 = [(MBCKBackupEngine *)self telemetry];
                  v190 = v110;
                  [telemetry8 setSnapshotType:v110];

                  telemetry9 = [(MBCKBackupEngine *)self telemetry];
                  [telemetry9 setSnapshotFormat:v104];

                  previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
                  snapshotFormat = [previousSnapshot snapshotFormat];
                  telemetry10 = [(MBCKBackupEngine *)self telemetry];
                  [telemetry10 setPreviousSnapshotFormat:snapshotFormat];

                  v124 = +[MBBehaviorOptions sharedOptions];
                  addRepairDomainToMBCKDevice = [v124 addRepairDomainToMBCKDevice];

                  if ([addRepairDomainToMBCKDevice length])
                  {
                    device10 = [(MBCKEngine *)self device];
                    hmacKey = [device10 hmacKey];
                    v128 = MBDomainHMACForDomainName(addRepairDomainToMBCKDevice, hmacKey);

                    device11 = [(MBCKEngine *)self device];
                    [device11 addRepairDomainHMAC:v128];
                  }

                  v189 = addRepairDomainToMBCKDevice;
                  v130 = MBOperationGroupNamePrefixForBackup(self->_previousSnapshot, v104, v190);
                  [v196 setGroupNamePrefix:v130];

                  v201 = 0;
                  device12 = [(MBCKEngine *)self device];
                  backupReason = [(MBCKBackupEngine *)self backupReason];
                  backupPolicy = [(MBEngine *)self backupPolicy];
                  persona2 = [(MBCKEngine *)self persona];
                  v135 = v104;
                  v136 = persona2;
                  cache2 = MBCreateOrResumePendingSnapshot(device12, v190, v135, backupReason, backupPolicy, v39, persona2, v196, &v201, error);

                  if (!cache2)
                  {
                    v137 = 0;
LABEL_154:
                    v41 = v197;
                    cellularAccess = v198;

                    v27 = v196;
                    goto LABEL_122;
                  }

                  v137 = cache2;
                  objc_storeStrong(&self->_currentSnapshot, cache2);
                  pluginNotifier = [(MBCKBackupEngine *)self pluginNotifier];
                  v200 = 0;
                  v139 = [pluginNotifier notifyPluginsOfStartingBackupWithError:&v200];
                  v140 = v200;

                  if (v139)
                  {
                    pluginNotifier2 = [(MBCKBackupEngine *)self pluginNotifier];
                    v199 = v140;
                    v142 = [pluginNotifier2 notifyPluginsOfPreparingBackupWithError:&v199];
                    v188 = v199;

                    if (v142)
                    {
                      commitID = [(MBCKSnapshot *)self->_currentSnapshot commitID];
                      attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary2 setCommitID:commitID];

                      snapshotFormat2 = [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
                      attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary3 setSnapshotFormat:snapshotFormat2];

                      type = [(MBCKSnapshot *)self->_currentSnapshot type];
                      attemptSummary4 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary4 setSnapshotType:type];

                      commitID2 = [(MBCKSnapshot *)self->_previousSnapshot commitID];
                      attemptSummary5 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary5 setPreviousSnapshotCommitID:commitID2];

                      [(MBCKSnapshot *)self->_currentSnapshot setCameraRollBackupState:[(MBCKBackupEngine *)self cameraRollBackupState]];
                      ckOperationPolicy2 = [(MBCKEngine *)self ckOperationPolicy];
                      cellularAccess2 = [ckOperationPolicy2 cellularAccess];
                      [(MBCKSnapshot *)self->_currentSnapshot setIsBackupAllowedOnCellular:cellularAccess2 != 0];

                      if ([(MBEngine *)self backupPolicy]== 1)
                      {
                        [(MBCKSnapshot *)self->_currentSnapshot setBackupPolicy:1];
                      }

                      v153 = self->_previousSnapshot;
                      log = MBGetDefaultLog();
                      v154 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
                      if (v153)
                      {
                        if (v154)
                        {
                          commitID3 = [v137 commitID];
                          v181 = v201;
                          v156 = MBStringForSnapshotType();
                          v157 = MBStringForSnapshotFormat();
                          [(MBCKSnapshot *)self->_previousSnapshot snapshotFormat];
                          v158 = MBStringForSnapshotFormat();
                          telemetry11 = [(MBCKBackupEngine *)self telemetry];
                          createdNewOTAKeybag3 = [telemetry11 createdNewOTAKeybag];
                          [v137 backupPolicy];
                          v159 = MBStringForBackupPolicy();
                          *buf = 138413826;
                          v210 = commitID3;
                          v211 = 1024;
                          *v212 = v181;
                          *&v212[4] = 2112;
                          *&v212[6] = v156;
                          v213 = 2112;
                          v214 = v157;
                          v215 = 2112;
                          *v216 = v158;
                          *&v216[8] = 1024;
                          *&v216[10] = createdNewOTAKeybag3;
                          v217 = 2112;
                          v218 = v159;
                          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished setting up backup for %@ isResumed:%d type:%@ format:%@ previousFormat:%@ hasNewOTAKeyBag:%d policy:%@", buf, 0x40u);

                          commitID4 = [v137 commitID];
                          v182 = v201;
                          v184 = commitID4;
                          v161 = MBStringForSnapshotType();
                          v162 = MBStringForSnapshotFormat();
                          [(MBCKSnapshot *)self->_previousSnapshot snapshotFormat];
                          v163 = MBStringForSnapshotFormat();
                          telemetry12 = [(MBCKBackupEngine *)self telemetry];
                          createdNewOTAKeybag4 = [telemetry12 createdNewOTAKeybag];
                          [v137 backupPolicy];
                          v166 = MBStringForBackupPolicy();
                          _MBLog(@"Df", "=cloud-backup= Finished setting up backup for %@ isResumed:%d type:%@ format:%@ previousFormat:%@ hasNewOTAKeyBag:%d policy:%@", v184, v182, v161, v162, v163, createdNewOTAKeybag4, v166);
                        }
                      }

                      else if (v154)
                      {
                        commitID5 = [v137 commitID];
                        v185 = v201;
                        v171 = MBStringForSnapshotType();
                        v172 = MBStringForSnapshotFormat();
                        telemetry13 = [(MBCKBackupEngine *)self telemetry];
                        createdNewOTAKeybag5 = [telemetry13 createdNewOTAKeybag];
                        [v137 backupPolicy];
                        v174 = MBStringForBackupPolicy();
                        *buf = 138413570;
                        v210 = commitID5;
                        v211 = 1024;
                        *v212 = v185;
                        *&v212[4] = 2112;
                        *&v212[6] = v171;
                        v213 = 2112;
                        v214 = v172;
                        v215 = 1024;
                        *v216 = createdNewOTAKeybag5;
                        *&v216[4] = 2112;
                        *&v216[6] = v174;
                        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished setting up backup for initial snapshot %@ isResumed:%d type:%@ format:%@ hasNewOTAKeyBag:%d policy:%@", buf, 0x36u);

                        commitID6 = [v137 commitID];
                        v186 = v201;
                        v175 = MBStringForSnapshotType();
                        v176 = MBStringForSnapshotFormat();
                        telemetry14 = [(MBCKBackupEngine *)self telemetry];
                        createdNewOTAKeybag6 = [telemetry14 createdNewOTAKeybag];
                        [v137 backupPolicy];
                        v179 = MBStringForBackupPolicy();
                        _MBLog(@"Df", "=cloud-backup= Finished setting up backup for initial snapshot %@ isResumed:%d type:%@ format:%@ hasNewOTAKeyBag:%d policy:%@", commitID6, v186, v175, v176, createdNewOTAKeybag6, v179);
                      }

                      LOBYTE(cache2) = 1;
                      v140 = v188;
                      goto LABEL_153;
                    }

                    v168 = MBGetDefaultLog();
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v210 = v188;
                      _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of preparingBackupWithError: %@", buf, 0xCu);
                      _MBLog(@"E ", "=cloud-backup= Failed to notify plugins of preparingBackupWithError: %@", v188);
                    }

                    v140 = v188;
                  }

                  else
                  {
                    v167 = MBGetDefaultLog();
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v210 = v140;
                      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of startingBackupWithError: %@", buf, 0xCu);
                      _MBLog(@"E ", "=cloud-backup= Failed to notify plugins of startingBackupWithError: %@", v140);
                    }
                  }

                  v169 = v140;
                  LOBYTE(cache2) = 0;
                  *error = v140;
LABEL_153:

                  goto LABEL_154;
                }

LABEL_88:
                LOBYTE(cache2) = 0;
                v27 = v196;
                cellularAccess = v198;
LABEL_121:
                v41 = v197;
                goto LABEL_122;
              }
            }

            else
            {
              if (v55)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, cache2, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resetting the cache since the backup was disabled from another device", buf, 2u);
                _MBLog(@"Df", "=cloud-backup= Resetting the cache since the backup was disabled from another device");
              }

              [v6 resetCacheWithAccount:v8 error:error];
              v204 = 0;
              v39 = [v6 openCacheWithAccount:v8 accessType:1 error:&v204];
              v81 = v204;

              [(MBCKEngine *)self setCache:v39];
              [v6 setBackupEnabled:0 account:v8 connection:0];
              v82 = [MBError errorWithCode:204 format:@"Backups disabled from another device"];
              v83 = v82;

              LOBYTE(cache2) = 0;
              *error = v82;
              v50 = v44;
              v27 = v196;
            }

LABEL_84:
            v41 = v197;
            cellularAccess = v198;
LABEL_85:

LABEL_86:
            goto LABEL_50;
          }
        }

        else if (!*error)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 565, "*error != nil");
        }

        LOBYTE(cache2) = 0;
        v50 = v44;
        v39 = v46;
        goto LABEL_84;
      }

      v48 = MBGetDefaultLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=cloud-backup= Account disabled in EDU and RRTS mode", buf, 2u);
        _MBLog(@"E ", "=cloud-backup= Account disabled in EDU and RRTS mode");
      }

      goto LABEL_49;
    }

    v47 = MBGetDefaultLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=cloud-backup= Account is not enabled for backup", buf, 2u);
      _MBLog(@"E ", "=cloud-backup= Account is not enabled for backup");
    }

    v17 = @"Account not enabled";
    v18 = 210;
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=cloud-backup= nil domain manager", buf, 2u);
      _MBLog(@"E ", "=cloud-backup= nil domain manager");
    }

    v17 = @"nil domain manager";
    v18 = 1;
  }

  [MBError errorWithCode:v18 format:v17];
  *error = LOBYTE(cache2) = 0;
LABEL_50:

  return cache2;
}

- (BOOL)checkIfBackupHasKeybagWithUUID:(id)d
{
  dCopy = d;
  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  v7 = [keybagManager hasKeybagWithUUID:dCopy];

  return v7;
}

- (BOOL)synchronizeFileListsWithError:(id *)error
{
  persona = [(MBCKEngine *)self persona];
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  device = [(MBCKEngine *)self device];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v12 = MBSynchronizeSnapshotDirectoryForBackup(snapshotDatabaseDirectory, previousSnapshot, currentSnapshot, device, ckOperationTracker, attemptSummary, error);

  if (v12)
  {
    [(MBCKBackupEngine *)self setPendingSnapshotDB:v12];
  }

  return v12 != 0;
}

- (BOOL)createVolumeSnapshots:(id *)snapshots
{
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine createVolumeSnapshots:]", "MBCKBackupEngine.m", 779, "persona");
  }

  snapshotsCopy = snapshots;
  v37 = persona;
  volumesToBackUp = [persona volumesToBackUp];
  v39 = 0;
  v7 = [MBFSEventState stateForVolumeMountPoints:volumesToBackUp error:&v39];
  v8 = v39;

  if (!v7)
  {
    v9 = MBIsInternalInstall();
    v10 = MBGetDefaultLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v41 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Failed to fetch next backup FSEvent state: %@", buf, 0xCu);
        v12 = @"F ";
LABEL_9:
        _MBLog(v12, "=cloud-backup= =cloud-backup= Failed to fetch next backup FSEvent state: %@", v8);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=cloud-backup= =cloud-backup= Failed to fetch next backup FSEvent state: %@", buf, 0xCu);
      v12 = @"E ";
      goto LABEL_9;
    }

    v34 = 0;
    goto LABEL_11;
  }

  v34 = v8;
LABEL_11:
  nextBackupFSEventState = self->_nextBackupFSEventState;
  self->_nextBackupFSEventState = v7;
  v33 = v7;

  v14 = [MBAppManager alloc];
  context = [(MBCKEngine *)self context];
  mobileInstallation = [context mobileInstallation];
  v17 = [(MBAppManager *)v14 initWithMobileInstallation:mobileInstallation];
  appManager = self->super.super._appManager;
  self->super.super._appManager = v17;

  v19 = objc_opt_new();
  mountedSnapshotTracker = self->_mountedSnapshotTracker;
  self->_mountedSnapshotTracker = v19;

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  appManager = [(MBEngine *)self appManager];
  domainManager = [(MBEngine *)self domainManager];
  serviceManager = [(MBCKEngine *)self serviceManager];
  backupReason = [(MBCKBackupEngine *)self backupReason];
  mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
  device = [(MBCKEngine *)self device];
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10006F638;
  v38[3] = &unk_1003BC8B8;
  v38[4] = self;
  v36 = MBCreateVolumeSnapshots(serviceAccount, appManager, domainManager, serviceManager, backupReason, mountedSnapshotTracker, device, pendingSnapshotDB, currentSnapshot, previousSnapshot, attemptSummary, snapshotsCopy, v38);

  return v36;
}

- (void)_saveLastPendingSnapshotSize:(unint64_t)size
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = @"LastPendingSnapshotSize";
    v10 = 2048;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saving %{public}@: %llu", buf, 0x16u);
    _MBLog(@"Df", "=cloud-backup= Saving %{public}@: %llu", @"LastPendingSnapshotSize", size);
  }

  persona = [(MBCKEngine *)self persona];
  v7 = [NSNumber numberWithUnsignedLongLong:size];
  [persona setPreferencesValue:v7 forKey:@"LastPendingSnapshotSize"];
}

+ (BOOL)_startOTABackupWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKBackupEngine _startOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 819, "account");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKBackupEngine _startOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 820, "error");
  }

  v6 = accountCopy;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  persona = [accountCopy persona];
  volumesToBackUp = [persona volumesToBackUp];

  v9 = [volumesToBackUp countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(volumesToBackUp);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v13 error:error];
        if (!v14)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *error;
            *buf = 138543618;
            v25 = v13;
            v26 = 2112;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
            _MBLog(@"E ", "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", v13, *error);
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [MBKeyBag startOTABackupForVolumeUUID:v14];
      }

      v10 = [volumesToBackUp countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

+ (BOOL)_stopOTABackupWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKBackupEngine _stopOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 834, "account");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKBackupEngine _stopOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 835, "error");
  }

  v6 = accountCopy;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  persona = [accountCopy persona];
  volumesToBackUp = [persona volumesToBackUp];

  v9 = [volumesToBackUp countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(volumesToBackUp);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v13 error:error];
        if (!v14)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *error;
            *buf = 138543618;
            v25 = v13;
            v26 = 2112;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
            _MBLog(@"E ", "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", v13, *error);
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [MBKeyBag stopOTABackupForVolumeUUID:v14];
      }

      v10 = [volumesToBackUp countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (BOOL)findChangesWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 848, "error");
  }

  errorCopy = error;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 850, "serviceAccount");
  }

  v6 = serviceAccount;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 852, "persona");
  }

  v8 = persona;
  v9 = self->super.super._domainManager;
  if (!v9)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 854, "domainManager");
  }

  v10 = v9;
  v11 = self->_currentSnapshot;
  if (!v11)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 856, "currentSnapshot");
  }

  v12 = v11;
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  if (!pendingSnapshotDB)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 858, "pendingSnapshotDB");
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = errorCopy;
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning files for changes", buf, 2u);
    }

    _MBLog(@"Df", "=cloud-backup= Scanning files for changes");
    errorCopy = v14;
  }

  v158 = v12;
  if ([(MBCKEngine *)self handleCancelation:errorCopy])
  {
    v16 = 0;
    goto LABEL_180;
  }

  v160 = errorCopy;
  [(MBCKSnapshot *)v12 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    cache = [(MBCKEngine *)self cache];
    removeAllFilesMissingEncryptionKeys = [cache removeAllFilesMissingEncryptionKeys];

    _fetchPreviousBackupFSEventState = removeAllFilesMissingEncryptionKeys;
    if (removeAllFilesMissingEncryptionKeys)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v187 = removeAllFilesMissingEncryptionKeys;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=cloud-backup= Could not remove all missing encryption keys from the cache: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Could not remove all missing encryption keys from the cache: %@", removeAllFilesMissingEncryptionKeys);
      }

      v16 = 0;
      *v160 = removeAllFilesMissingEncryptionKeys;
      goto LABEL_179;
    }
  }

  telemetry = [(MBCKBackupEngine *)self telemetry];
  [telemetry setBackupFileCount:&off_1003E0CF0];

  telemetry2 = [(MBCKBackupEngine *)self telemetry];
  [telemetry2 setBackupDirectoryCount:&off_1003E0CF0];

  telemetry3 = [(MBCKBackupEngine *)self telemetry];
  domainsWithMissingEncryptionKeys = [telemetry3 domainsWithMissingEncryptionKeys];
  [domainsWithMissingEncryptionKeys removeAllObjects];

  if ([(MBCKBackupEngine *)self _shouldBackupUsingFSEvents])
  {
    _fetchPreviousBackupFSEventState = [(MBCKBackupEngine *)self _fetchPreviousBackupFSEventState];
  }

  else
  {
    _fetchPreviousBackupFSEventState = 0;
  }

  v153 = v8;
  v151 = v6;
  v161 = objc_opt_new();
  v163 = objc_opt_new();
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v152 = v10;
  obj = [(MBDomainManager *)v10 allDomains];
  v24 = [obj countByEnumeratingWithState:&v180 objects:v191 count:16];
  if (!v24)
  {
    v26 = 0;
    goto LABEL_62;
  }

  v25 = v24;
  v26 = 0;
  v27 = *v181;
  while (2)
  {
    v28 = 0;
    v156 = &v26[v25];
    do
    {
      if (*v181 != v27)
      {
        objc_enumerationMutation(obj);
      }

      name = [*(*(&v180 + 1) + 8 * v28) name];
      if (!_fetchPreviousBackupFSEventState)
      {
        goto LABEL_46;
      }

      [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
      v179 = 0;
      if (MBSnapshotFormatContainsManifests())
      {
        cache2 = [(MBCKEngine *)self cache];
        v31 = [cache2 hasDomainBeenBackedUp:name backedUp:&v179];

        if (v31)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *v187 = name;
              *&v187[8] = 2112;
              v188 = v31;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Failed to determine whether domain %@ has been backed up:%@", buf, 0x16u);
            }

            _MBLog(@"Df", "=cloud-backup= Failed to determine whether domain %@ has been backed up:%@", name, v31);
          }
        }
      }

      v178 = 0;
      if (MBSnapshotFormatContainsFileLists())
      {
        pendingSnapshotDB2 = [(MBCKBackupEngine *)self pendingSnapshotDB];
        v35 = [pendingSnapshotDB2 isDomainInPreviousSnapshot:name outResult:&v178 error:v160];

        if (!v35)
        {
          v16 = 0;
          v6 = v151;
          v8 = v153;
          goto LABEL_178;
        }
      }

      if ((v179 & 1) == 0 && (MBSnapshotFormatContainsManifests() & 1) != 0 || (v178 & 1) == 0 && MBSnapshotFormatContainsFileLists())
      {
        v36 = MBGetDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = v36;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v187 = name;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=cloud-backup= Forcing a scan on new domain %@", buf, 0xCu);
          }

          _MBLog(@"I ", "=cloud-backup= Forcing a scan on new domain %@", name);
        }

LABEL_46:
        v38 = 0;
        goto LABEL_48;
      }

      v38 = 1;
LABEL_48:
      device = [(MBCKEngine *)self device];
      v40 = [device shouldRepairDomain:name];

      if (v40)
      {
        device2 = [(MBCKEngine *)self device];
        hmacKey = [device2 hmacKey];
        v43 = MBDomainHMACForDomainName(name, hmacKey);
        [v161 addObject:v43];

        v44 = MBGetDefaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = v44;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=cloud-backup= =domain repair= Forcing a scan on domain pending repair", buf, 2u);
          }

          _MBLog(@"I ", "=cloud-backup= =domain repair= Forcing a scan on domain pending repair");
        }
      }

      else if (v38)
      {
        [v163 markUnmodifiedDomain:name];
        goto LABEL_57;
      }

      [v163 markModifiedDomain:name];
LABEL_57:

      ++v28;
    }

    while (v25 != v28);
    v25 = [obj countByEnumeratingWithState:&v180 objects:v191 count:16];
    v26 = v156;
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_62:
  v157 = v26;

  if ([v161 count])
  {
    device3 = [(MBCKEngine *)self device];
    [device3 setDomainHMACsToRepairOnDisk:v161];
  }

  v6 = v151;
  v8 = v153;
  if (_fetchPreviousBackupFSEventState)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v177[0] = _NSConcreteStackBlock;
    v177[1] = 3221225472;
    v177[2] = sub_1000713D4;
    v177[3] = &unk_1003BC8B8;
    v177[4] = self;
    [MBFSEventCollector markModificationsWith:v163 since:_fetchPreviousBackupFSEventState domainManager:v10 persona:v153 cancellationHandler:v177];
    v48 = CFAbsoluteTimeGetCurrent() - Current;
    v49 = MBGetDefaultLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v187 = v48;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished collecting FSEvents in %.3fs", buf, 0xCu);
      }

      _MBLog(@"Df", "=cloud-backup= Finished collecting FSEvents in %.3fs", v48);
    }

    telemetry4 = [(MBCKBackupEngine *)self telemetry];
    [telemetry4 setFseventDuration:v48];
  }

  obj = [v163 unmodifiedDomainNames];
  v52 = MBGetDefaultLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v52;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [obj count];
      *buf = 134218498;
      *v187 = v54;
      *&v187[8] = 2048;
      v188 = v157;
      v189 = 2112;
      v190 = obj;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Unmodified domains: (%lu/%lu) %@", buf, 0x20u);
    }

    _MBLog(@"Df", "=cloud-backup= Unmodified domains: (%lu/%lu) %@", [obj count], v157, obj);
  }

  name = [v163 modifiedDomainNames];
  v55 = MBGetDefaultLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [name count];
      *buf = 134218498;
      *v187 = v57;
      *&v187[8] = 2048;
      v188 = v157;
      v189 = 2112;
      v190 = name;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Modified domains: (%lu/%lu) %@", buf, 0x20u);
    }

    _MBLog(@"Df", "=cloud-backup= Modified domains: (%lu/%lu) %@", [name count], v157, name);
  }

  v58 = [obj count];
  if (&v58[[name count]] != v157)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 953, "unmodifiedDomainNames.count + modifiedDomainNames.count == enabledDomainsCount");
  }

  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (!MBSnapshotFormatContainsManifests())
  {
    goto LABEL_87;
  }

  cache3 = [(MBCKEngine *)self cache];
  markAllFileChangesAsDeleted = [cache3 markAllFileChangesAsDeleted];

  if (markAllFileChangesAsDeleted)
  {
    v61 = MBGetDefaultLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v187 = markAllFileChangesAsDeleted;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark file changes as deleted: %@", buf, 0xCu);
      _MBLog(@"E ", "=cloud-backup= Failed to mark file changes as deleted: %@", markAllFileChangesAsDeleted);
    }

    goto LABEL_86;
  }

  cache4 = [(MBCKEngine *)self cache];
  markAllFileChangesAsDeleted = [cache4 markFileChangesAsUnmodifiedForDomainNames:obj];

  if (!markAllFileChangesAsDeleted)
  {
LABEL_87:
    v64 = objc_opt_new();
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    name = name;
    v65 = [name countByEnumeratingWithState:&v173 objects:v185 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v174;
      do
      {
        for (i = 0; i != v66; i = i + 1)
        {
          if (*v174 != v67)
          {
            objc_enumerationMutation(name);
          }

          v69 = [(MBDomainManager *)self->super.super._domainManager domainForName:*(*(&v173 + 1) + 8 * i)];
          if (!v69)
          {
            __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 977, "domain");
          }

          v70 = v69;
          [v64 addObject:v69];
        }

        v66 = [name countByEnumeratingWithState:&v173 objects:v185 count:16];
      }

      while (v66);
    }

    v71 = +[MBBehaviorOptions sharedOptions];
    domainsToSendInvalidChecksumRegex = [v71 domainsToSendInvalidChecksumRegex];
    v73 = [domainsToSendInvalidChecksumRegex length];

    if (v73)
    {
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v74 = v64;
      v75 = [v74 countByEnumeratingWithState:&v169 objects:v184 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v170;
        while (2)
        {
          for (j = 0; j != v76; j = j + 1)
          {
            if (*v170 != v77)
            {
              objc_enumerationMutation(v74);
            }

            name2 = [*(*(&v169 + 1) + 8 * j) name];
            v80 = MBShouldSendInvalidChecksumForDomain(name2);

            if (v80)
            {
              [(MBCKSnapshot *)self->_currentSnapshot setTestCommitRepairChecksumOnLightrailChecksumMismatch:1];
              goto LABEL_106;
            }
          }

          v76 = [v74 countByEnumeratingWithState:&v169 objects:v184 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }
      }

LABEL_106:
    }

    v8 = v153;
    if (-[MBEngine backupPolicy](self, "backupPolicy") == 1 && [v153 isPersonalPersona])
    {
      volumeMountPoint = [v153 volumeMountPoint];
      mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
      v83 = [mountedSnapshotTracker snapshotMountPointForVolumeMountPoint:volumeMountPoint];

      v84 = [MBiCloudDrivePlugin backUpiCloudDriveDatabaseManifestForUserVolume:volumeMountPoint snapshotMountPoint:v83];
      v85 = MBGetDefaultLog();
      v86 = v85;
      if (v84)
      {
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v87 = v86;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v187 = v84;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to save iCloud Drive Manifest: %@", buf, 0xCu);
          }

          _MBLog(@"E ", "=cloud-backup= Failed to save iCloud Drive Manifest: %@", v84);
        }
      }

      else if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v88 = v86;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saved iCloud Drive Manifest", buf, 2u);
        }

        _MBLog(@"Df", "=cloud-backup= Saved iCloud Drive Manifest", v148);
      }

      v89 = [MBiCloudDrivePlugin backUpFPFSDatabaseManifestForUserVolume:volumeMountPoint snapshotMountPoint:v83];

      v90 = MBGetDefaultLog();
      v91 = v90;
      if (v89)
      {
        v8 = v153;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v92 = v91;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v187 = v89;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to save FPFS Manifest: %@", buf, 0xCu);
          }

          _MBLog(@"E ", "=cloud-backup= Failed to save FPFS Manifest: %@", v89);
        }
      }

      else
      {
        v8 = v153;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v91;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saved FPFS Manifest", buf, 2u);
          }

          _MBLog(@"Df", "=cloud-backup= Saved FPFS Manifest", v148);
        }
      }
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v95 = v94;
    if (!-[MBCKSnapshot type](self->_currentSnapshot, "type") && ![objc_opt_class() _startOTABackupWithAccount:v151 error:v160])
    {
      v16 = 0;
      v10 = v152;
LABEL_177:

      goto LABEL_178;
    }

    v96 = [MBSkippedFileTracker alloc];
    skippedFileRecordsPlistPath = [v8 skippedFileRecordsPlistPath];
    v98 = [(MBSkippedFileTracker *)v96 initWithPlistPath:skippedFileRecordsPlistPath];
    [(MBCKBackupEngine *)self setSkippedFileTracker:v98];

    [v64 sortUsingComparator:&stru_1003BC8D8];
    v99 = MBGetDefaultLog();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v100 = v99;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = [v64 valueForKey:@"name"];
        *buf = 138412290;
        *v187 = v101;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning domains: %@", buf, 0xCu);
      }

      v102 = [v64 valueForKey:@"name"];
      _MBLog(@"Df", "=cloud-backup= Scanning domains: %@", v102);
    }

    mountedSnapshotTracker2 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    v104 = [(MBCKBackupEngine *)self _createDomainTranscriberForAPFSSnapshots:mountedSnapshotTracker2 error:v160];

    if (!v104)
    {
      v16 = 0;
      v10 = v152;
LABEL_176:

      goto LABEL_177;
    }

    v105 = objc_opt_new();
    pendingSnapshotDB3 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    progressModel = [(MBCKEngine *)self progressModel];
    v168 = 0;
    v155 = v104;
    v154 = v105;
    LOBYTE(v105) = [v104 scanDomains:v64 pendingSnapshotDB:pendingSnapshotDB3 progress:progressModel summary:v105 error:&v168];
    v108 = v168;

    if ((v105 & 1) == 0)
    {
      v119 = v154;
      v112 = v108;
      if ([MBError isError:v108 withCode:209])
      {
        [MBCKEncryptionManager trackMissingEncryptionKeyForAccount:v151];
        attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
        [attemptSummary trackDomainTranscription:v154];
      }

      v123 = v108;
      v16 = 0;
      *v160 = v108;
      v10 = v152;
      v104 = v155;
      goto LABEL_175;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v110 = v109;
    v167 = v108;
    [objc_opt_class() _stopOTABackupWithAccount:v151 error:&v167];
    v111 = v167;

    v166 = v111;
    [objc_opt_class() _startOTABackupWithAccount:v151 error:&v166];
    v112 = v166;

    v113 = MBGetDefaultLog();
    v104 = v155;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      v114 = v110 - v95;
      v115 = v113;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v187 = v114;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished scanning for changes in %0.3fs", buf, 0xCu);
      }

      _MBLog(@"Df", "=cloud-backup= Finished scanning for changes in %0.3fs", v114);
    }

    [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
    if (!MBSnapshotFormatContainsManifests())
    {
      goto LABEL_155;
    }

    cache5 = [(MBCKEngine *)self cache];
    v165 = 0;
    v117 = [cache5 countFilesMissingEncryptionKeysWithError:&v165];
    v112 = v165;

    if (v117)
    {
      v118 = MBGetDefaultLog();
      v119 = v154;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        v120 = v112;
        v121 = v118;
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v187 = v117;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found %llu files with missing encryption keys during scan", buf, 0xCu);
        }

        _MBLog(@"Df", "=cloud-backup= Found %llu files with missing encryption keys during scan", v117);
        v112 = v120;
        v104 = v155;
      }

      [MBError errorWithCode:209 format:@"Found %llu files with missing encryption keys during scan", v117];
      *v160 = v16 = 0;
      v10 = v152;
      goto LABEL_175;
    }

    if (v112)
    {
      v124 = v112;
      v16 = 0;
      *v160 = v112;
      v10 = v152;
    }

    else
    {
LABEL_155:
      v10 = v152;
      if (![(MBCKEngine *)self handleCancelation:v160])
      {
        [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
        if (MBSnapshotFormatContainsFileLists())
        {
          v149 = v112;
          +[NSDate timeIntervalSinceReferenceDate];
          v126 = v125;
          commitID = [(MBCKSnapshot *)self->_previousSnapshot commitID];
          [(MBCKSnapshot *)self->_currentSnapshot type];
          IsFull = MBSnapshotTypeIsFull();
          previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
          v129 = MBSnapshotsAreTransitioningFormats(previousSnapshot, self->_currentSnapshot);

          if ((IsFull & 1) != 0 || v129)
          {

            v130 = MBGetDefaultLog();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
            {
              v131 = v130;
              if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v187 = IsFull;
                *&v187[4] = 1024;
                *&v187[6] = v129;
                _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Ignoring previous snapshot from asset copy, isFullBackup:%d isTransitioningFormats:%d", buf, 0xEu);
              }

              _MBLog(@"Df", "=cloud-backup= Ignoring previous snapshot from asset copy, isFullBackup:%d isTransitioningFormats:%d", IsFull, v129);
            }

            commitID = 0;
          }

          device4 = [(MBCKEngine *)self device];
          appManager = [(MBEngine *)self appManager];
          v134 = [pendingSnapshotDB updateDomainListInPlaceholderDomainWithDevice:device4 appManager:appManager error:v160];

          if (!v134 || ([(MBCKEngine *)self device], v135 = objc_claimAutoreleasedReturnValue(), v136 = MBCopyAssetsToUploadIntoPendingSnapshotDB(pendingSnapshotDB, commitID, v135, v160), v135, !v136))
          {

            v16 = 0;
            v10 = v152;
            v104 = v155;
            v119 = v154;
            v112 = v149;
            goto LABEL_175;
          }

          +[NSDate timeIntervalSinceReferenceDate];
          v138 = v137 - v126;
          v139 = MBGetDefaultLog();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
          {
            v140 = v139;
            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v187 = v138;
              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished copying assets into pending snapshot database in %.2f s", buf, 0xCu);
            }

            _MBLog(@"Df", "=cloud-backup= Finished copying assets into pending snapshot database in %.2f s", v138);
          }

          attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
          [attemptSummary2 setAssetCopyDuration:v138];

          v142 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v64 count]);
          telemetry5 = [(MBCKBackupEngine *)self telemetry];
          [telemetry5 setScannedDomainsCount:v142];

          v144 = [NSNumber numberWithUnsignedLong:v157];
          telemetry6 = [(MBCKBackupEngine *)self telemetry];
          [telemetry6 setEnabledDomainsCount:v144];

          v10 = v152;
          v8 = v153;
          v104 = v155;
          v112 = v149;
        }

        attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
        v119 = v154;
        [attemptSummary3 trackDomainTranscription:v154];

        v16 = 1;
LABEL_175:

        goto LABEL_176;
      }

      v16 = 0;
    }

    v119 = v154;
    goto LABEL_175;
  }

  v61 = MBGetDefaultLog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v187 = markAllFileChangesAsDeleted;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark file changes as unmodified: %@", buf, 0xCu);
    _MBLog(@"E ", "=cloud-backup= Failed to mark file changes as unmodified: %@", markAllFileChangesAsDeleted);
  }

LABEL_86:

  v63 = markAllFileChangesAsDeleted;
  *v160 = markAllFileChangesAsDeleted;

  v16 = 0;
LABEL_178:

LABEL_179:
LABEL_180:

  return v16;
}

- (BOOL)reserveQuotaWithError:(id *)error
{
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1112, "persona");
  }

  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1114, "tracker");
  }

  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  if (!currentSnapshot)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1116, "currentSnapshot");
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  [currentSnapshot snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    cache = [(MBCKEngine *)self cache];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100071CE4;
    v59[3] = &unk_1003BC900;
    v60 = v8;
    v61 = &v62;
    v10 = [cache summarizeFileChangesGroupByDomain:v59];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=cloud-backup= Error when summarizing file changes:%@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Error when summarizing file changes:%@", v10);
      }

      if (error)
      {
        v12 = v10;
        *error = v10;
      }

      v13 = 0;
      v14 = v60;
      goto LABEL_39;
    }
  }

  else
  {
    pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100071D64;
    v56[3] = &unk_1003BC928;
    v57 = v8;
    v58 = &v62;
    v16 = [pendingSnapshotDB fetchQuotaReservationByDomain:error block:v56];

    if ((v16 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  type = [currentSnapshot type];
  IsFull = MBSnapshotTypeIsFull();
  if (type)
  {
    v19 = IsFull;
  }

  else
  {
    v19 = 1;
  }

  v20 = v63[3];
  if (v19 != 1 || v20)
  {
    v23 = [NSNumber numberWithUnsignedLongLong:v20];
    telemetry = [(MBCKBackupEngine *)self telemetry];
    [telemetry setBackupTotalSize:v23];

    v25 = [NSNumber numberWithUnsignedLongLong:v63[3]];
    [v8 setObject:v25 forKeyedSubscript:@"_TotalSize"];

    [persona setPreferencesValue:v8 forKey:@"PreflightSizing"];
    v26 = v63[3];
    attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary setTotalQuotaReservation:v26];

    v28 = MBDeviceName();
    device = [(MBCKEngine *)self device];
    [device setDeviceName:v28];

    [(MBCKBackupEngine *)self _saveLastPendingSnapshotSize:v63[3]];
    v30 = v63[3];
    device2 = [(MBCKEngine *)self device];
    [device2 setPendingSnapshotQuotaReserved:v30];

    type2 = [(MBCKSnapshot *)self->_currentSnapshot type];
    device3 = [(MBCKEngine *)self device];
    [device3 setPendingSnapshotType:type2];

    backupPolicy = [(MBCKSnapshot *)self->_currentSnapshot backupPolicy];
    device4 = [(MBCKEngine *)self device];
    [device4 setPendingSnapshotBackupPolicy:backupPolicy];

    snapshotFormat = [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
    device5 = [(MBCKEngine *)self device];
    [device5 setPendingSnapshotFormat:snapshotFormat];

    device6 = [(MBCKEngine *)self device];
    domainHMACsToRepairOnDisk = [device6 domainHMACsToRepairOnDisk];
    v40 = [domainHMACsToRepairOnDisk count] == 0;

    device7 = [(MBCKEngine *)self device];
    if (v40)
    {
      [device7 setPendingRepairedDomainHMACs:0];
    }

    else
    {
      domainHMACsToRepairOnDisk2 = [device7 domainHMACsToRepairOnDisk];
      device8 = [(MBCKEngine *)self device];
      [device8 setPendingRepairedDomainHMACs:domainHMACsToRepairOnDisk2];
    }

    device9 = [(MBCKEngine *)self device];
    [device9 setPendingSnapshot:0];

    device10 = [(MBCKEngine *)self device];
    v46 = [device10 saveWithOperationTracker:ckOperationTracker error:error];

    if (v46)
    {
      device11 = [(MBCKEngine *)self device];
      deviceName = [device11 deviceName];
      [(MBCKSnapshot *)self->_currentSnapshot setDeviceName:deviceName];

      currentSnapshot = self->_currentSnapshot;
      device12 = [(MBCKEngine *)self device];
      [device12 setPendingSnapshot:currentSnapshot];

      pluginNotifier = [(MBCKBackupEngine *)self pluginNotifier];
      v55 = 0;
      LOBYTE(currentSnapshot) = [pluginNotifier notifyPluginsOfPreparedBackupWithError:&v55];
      v14 = v55;

      if (currentSnapshot)
      {
        v13 = 1;
        goto LABEL_39;
      }

      v52 = MBGetDefaultLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v14;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of preparedBackupWithError: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Failed to notify plugins of preparedBackupWithError: %@", v14);
      }

      if (error)
      {
        v53 = v14;
        v13 = 0;
        *error = v14;
        goto LABEL_39;
      }

LABEL_27:
      v13 = 0;
LABEL_39:

      goto LABEL_40;
    }
  }

  else
  {
    if (MBIsInternalInstall() && !dword_100421630 && !atomic_fetch_add_explicit(&dword_100421630, 1u, memory_order_relaxed))
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Backup has reserved quota size of 0", buf, 2u);
        _MBLog(@"F ", "=cloud-backup= =cloud-backup= Backup has reserved quota size of 0");
      }
    }

    if (error)
    {
      v14 = MBStringForSnapshotType();
      localizedCapitalizedString = [v14 localizedCapitalizedString];
      *error = [MBError errorWithCode:205 format:@"%@ backup has a reserved quota size of 0", localizedCapitalizedString];

      goto LABEL_27;
    }
  }

LABEL_34:
  v13 = 0;
LABEL_40:
  _Block_object_dispose(&v62, 8);

  return v13;
}

- (BOOL)_handleSkippedFilesWithError:(id *)error
{
  skippedFileTracker = [(MBCKBackupEngine *)self skippedFileTracker];
  skippedFilesCount = [skippedFileTracker skippedFilesCount];
  if (skippedFilesCount)
  {
    v7 = skippedFilesCount;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Skipped %lld files during the file scan", buf, 0xCu);
      _MBLog(@"Df", "=cloud-backup= Skipped %lld files during the file scan", v7);
    }

    persona = [(MBCKEngine *)self persona];
    skippedFilesPlistValue = [skippedFileTracker skippedFilesPlistValue];
    [persona setPreferencesValue:skippedFilesPlistValue forKey:@"SkippedFilesFromBackup"];

    persona2 = [(MBCKEngine *)self persona];
    skippedFileRecordsPlistPath = [persona2 skippedFileRecordsPlistPath];

    v42 = 0;
    v13 = [skippedFileTracker writeSkippedFilesToPlistWithError:&v42];
    v14 = v42;
    if ((v13 & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to write skipped files to plist", buf, 2u);
        _MBLog(@"E ", "=cloud-backup= Failed to write skipped files to plist");
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v15 = v14;
      goto LABEL_14;
    }

    if (v7 >= 0xB)
    {
      if (!error)
      {
LABEL_27:

        v17 = 0;
        goto LABEL_28;
      }

      v15 = [MBError errorWithCode:100 format:@"Too many skipped files during scanning (%llu > %llu)", v7, 10];
LABEL_14:
      *error = v15;
      goto LABEL_27;
    }

    v19 = self->super.super._domainManager;
    v40 = v19;
    if (![(MBDomainManager *)v19 containsDomainName:@"SkippedFilesDomain"])
    {
      persona3 = [(MBCKEngine *)self persona];
      volumeMountPoint = [persona3 volumeMountPoint];
      stringByDeletingLastPathComponent = [skippedFileRecordsPlistPath stringByDeletingLastPathComponent];
      v23 = [MBDomain skippedFilesDomainWithVolumeMountPoint:volumeMountPoint rootPath:stringByDeletingLastPathComponent];

      lastPathComponent = [skippedFileRecordsPlistPath lastPathComponent];
      v25 = [NSSet setWithObject:lastPathComponent];
      [v23 setRelativePathsToBackupAndRestore:v25];

      v19 = v40;
      [(MBDomainManager *)v40 addDomain:v23];
    }

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = skippedFileRecordsPlistPath;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning the skipped files plist (%@) from the live filesystem", buf, 0xCu);
      _MBLog(@"Df", "=cloud-backup= Scanning the skipped files plist (%@) from the live filesystem", skippedFileRecordsPlistPath);
    }

    v27 = [(MBCKBackupEngine *)self _createDomainTranscriberForAPFSSnapshots:0 error:error];
    if (v27)
    {
      v38 = [(MBDomainManager *)v19 domainForName:@"SkippedFilesDomain"];
      v43 = v38;
      v28 = [NSArray arrayWithObjects:&v43 count:1];
      pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
      progressModel = [(MBCKEngine *)self progressModel];
      v41 = v14;
      v37 = v27;
      v31 = [v27 scanDomains:v28 pendingSnapshotDB:pendingSnapshotDB progress:progressModel summary:0 error:&v41];
      v39 = v41;

      if (v31)
      {
        v32 = [NSNumber numberWithUnsignedLongLong:v7];
        telemetry = [(MBCKBackupEngine *)self telemetry];
        [telemetry setSkippedFilesCount:v32];

        goto LABEL_9;
      }

      v27 = v37;
      v19 = v40;
      v34 = MBGetDefaultLog();
      v14 = v39;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v39;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to transcribe skipped files domain: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Failed to transcribe skipped files domain: %@", v39);
      }

      if (error)
      {
        v35 = v39;
        *error = v39;
      }
    }

    goto LABEL_27;
  }

  persona4 = [(MBCKEngine *)self persona];
  [persona4 setPreferencesValue:0 forKey:@"SkippedFilesFromBackup"];

  [skippedFileTracker writeSkippedFilesToPlistWithError:0];
LABEL_9:
  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)prepareToUploadChangesWithError:(id *)error
{
  v5 = self->_currentSnapshot;
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine prepareToUploadChangesWithError:]", "MBCKBackupEngine.m", 1250, "currentSnapshot");
  }

  v6 = v5;
  if ([(MBCKEngine *)self handleCancelation:error])
  {
    goto LABEL_33;
  }

  [(MBCKBackupEngine *)self _releaseLockAssertion];
  if (![(MBCKBackupEngine *)self _handleSkippedFilesWithError:error])
  {
    goto LABEL_33;
  }

  [(MBCKSnapshot *)v6 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v7 = objc_opt_new();
    cache = [(MBCKEngine *)self cache];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100072AD8;
    v57[3] = &unk_1003BC450;
    v9 = v7;
    v58 = v9;
    v10 = [cache enumerateChangedDomainNames:v57];

    if (v10)
    {
      if (error)
      {
        v11 = v10;
        *error = v10;
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v60 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=cloud-backup= Error enumerating changed domains: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Error enumerating changed domains: %@", v10);
      }

      goto LABEL_33;
    }

    cache2 = [(MBCKEngine *)self cache];
    snapshotID = [(MBCKSnapshot *)self->_currentSnapshot snapshotID];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100072AFC;
    v56[3] = &unk_1003BC450;
    v56[4] = self;
    v15 = [cache2 enumerateDomainNamesOfPendingSnapshot:snapshotID domainCallback:v56];

    if (v15)
    {
      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v60 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Error enumerating changed already uploaded domains: %@", buf, 0xCu);
        _MBLog(@"E ", "=cloud-backup= Error enumerating changed already uploaded domains: %@", v15);
      }

      goto LABEL_33;
    }

    domainManager = [(MBEngine *)self domainManager];
    if (!domainManager)
    {
      __assert_rtn("[MBCKBackupEngine prepareToUploadChangesWithError:]", "MBCKBackupEngine.m", 1293, "domainManager");
    }

    allObjects = [v9 allObjects];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100072BF0;
    v54[3] = &unk_1003BC950;
    v38 = domainManager;
    v55 = v38;
    obj = [allObjects sortedArrayUsingComparator:v54];

    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    cache3 = [(MBCKEngine *)self cache];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100072C7C;
    v41[3] = &unk_1003BC978;
    v41[4] = self;
    v41[5] = &v50;
    v41[6] = &v46;
    v41[7] = &v42;
    v21 = [cache3 summarizeFileChanges:v41];

    v39 = [NSByteCountFormatter stringFromByteCount:v47[3] countStyle:0];
    v37 = v21;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(v51 + 6);
        v24 = v47[3];
        v25 = v43[3];
        v26 = [obj count];
        *buf = 67110146;
        *v60 = v36;
        *&v60[4] = 2048;
        *&v60[6] = v24;
        *&v60[14] = 2112;
        *&v60[16] = v39;
        *&v60[24] = 2048;
        *&v60[26] = v25;
        v61 = 2048;
        v62 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Going to upload %d file records with size %llu (%@) and %llu delete records for %lu domains", buf, 0x30u);
      }

      _MBLog(@"Df", "=cloud-backup= Going to upload %d file records with size %llu (%@) and %llu delete records for %lu domains", *(v51 + 6), v47[3], v39, v43[3], [obj count]);
    }

    if (v37)
    {
      if (error)
      {
        v27 = v37;
        *error = v37;
      }
    }

    else
    {
      objc_storeStrong(&self->_domainNamesToUpload, obj);
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);

    if (v37)
    {
      goto LABEL_33;
    }
  }

  if (MBSnapshotFormatContainsAssets())
  {
    v50 = 0;
    v46 = 0;
    pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v29 = [pendingSnapshotDB fetchPendingUploadSizeInBytes:&v50 assetCount:&v46 error:error];

    if (!v29)
    {
LABEL_33:
      v34 = 0;
      goto LABEL_34;
    }

    v30 = [NSByteCountFormatter stringFromByteCount:v50 countStyle:0];
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *v60 = v46;
      *&v60[8] = 2048;
      *&v60[10] = v50;
      *&v60[18] = 2112;
      *&v60[20] = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Going to upload %llu asset records with size %llu (%@)", buf, 0x20u);
      _MBLog(@"Df", "=cloud-backup= Going to upload %llu asset records with size %llu (%@)", v46, v50, v30);
    }

    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel willTransferItemsWithSize:v50 count:v46];
  }

  progressModel2 = [(MBCKEngine *)self progressModel];
  [(MBCKModel *)self->_currentSnapshot setProgressModel:progressModel2];

  v34 = 1;
LABEL_34:

  return v34;
}

- (BOOL)uploadAssetsWithError:(id *)error
{
  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (!MBSnapshotFormatContainsFileLists())
  {
    return 1;
  }

  domainManager = [(MBEngine *)self domainManager];
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  device = [(MBCKEngine *)self device];
  mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  settingsContext = [(MBEngine *)self settingsContext];
  plugins = [settingsContext plugins];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072E80;
  v15[3] = &unk_1003BC8B8;
  v15[4] = self;
  v13 = MBUploadAssetsForBackup(domainManager, pendingSnapshotDB, device, mountedSnapshotTracker, ckOperationTracker, plugins, attemptSummary, error, v15);

  return v13;
}

- (BOOL)uploadChangesWithError:(id *)error
{
  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    errorCopy = error;
    if (!error)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1370, "error");
    }

    serviceManager = [(MBCKEngine *)self serviceManager];
    if (!serviceManager)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1372, "serviceManager");
    }

    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1374, "tracker");
    }

    serviceAccount = [(MBCKEngine *)self serviceAccount];
    if (!serviceAccount)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1376, "serviceAccount");
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = objc_opt_new();
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v7 = self->_domainNamesToUpload;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v205 objects:v224 count:16];
    if (v8)
    {
      v9 = *v206;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v206 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(MBCKSnapshot *)self->_currentSnapshot manifestForDomainName:*(*(&v205 + 1) + 8 * i)];
          v12 = v11;
          if (v11)
          {
            [v11 setFileUploadError:0];
            [v6 addObject:v12];
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v205 objects:v224 count:16];
      }

      while (v8);
    }

    v204[0] = 0;
    v204[1] = v204;
    v204[2] = 0x2020000000;
    v204[3] = 0;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v200 objects:v223 count:16];
    if (v13)
    {
      v111 = *v201;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v201 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v200 + 1) + 8 * j);
          v16 = objc_autoreleasePoolPush();
          manifestID = [v15 manifestID];
          domainName = [v15 domainName];
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = manifestID;
            *&buf[12] = 2112;
            *&buf[14] = domainName;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Reclaiming quota from pending items for manifest %{public}@ (%@)", buf, 0x16u);
            v102 = manifestID;
            _MBLog(@"Df", "=cloud-backup= Reclaiming quota from pending items for manifest %{public}@ (%@)");
          }

          cache = [(MBCKEngine *)self cache];
          v199[0] = _NSConcreteStackBlock;
          v199[1] = 3221225472;
          v199[2] = sub_100074378;
          v199[3] = &unk_1003BC9A0;
          v199[4] = v204;
          v21 = [cache summarizeCloudFilesPendingDeleteForManifestID:manifestID callback:v199];

          v22 = dispatch_group_create();
          dispatch_group_enter(v22);
          startBatchDelete = [ckOperationTracker startBatchDelete];
          [startBatchDelete setRetryWhenNetworkDisconnected:0];
          dispatch_group_enter(v22);
          v197[0] = _NSConcreteStackBlock;
          v197[1] = 3221225472;
          v197[2] = sub_100074390;
          v197[3] = &unk_1003BC0B0;
          v24 = v22;
          v198 = v24;
          [v15 deletePendingCloudFilesWithBatchDelete:startBatchDelete completion:v197];
          v192[0] = _NSConcreteStackBlock;
          v192[1] = 3221225472;
          v192[2] = sub_100074398;
          v192[3] = &unk_1003BC9C8;
          v25 = manifestID;
          v193 = v25;
          v26 = domainName;
          v194 = v26;
          selfCopy = self;
          v27 = v24;
          v196 = v27;
          [ckOperationTracker finishBatchDelete:startBatchDelete completion:v192];
          MBGroupWaitForever();

          objc_autoreleasePoolPop(v16);
        }

        v13 = [obj countByEnumeratingWithState:&v200 objects:v223 count:16];
      }

      while (v13);
    }

    startBatchSave = [ckOperationTracker startBatchSave];
    v188 = 0;
    v189 = &v188;
    v190 = 0x2020000000;
    v191 = 0;
    v184 = 0;
    v185 = &v184;
    v186 = 0x2020000000;
    v187 = 0;
    v180 = 0;
    v181 = &v180;
    v182 = 0x2020000000;
    v183 = 0;
    v174 = 0;
    v175 = &v174;
    v176 = 0x3032000000;
    v177 = sub_1000744B8;
    v178 = sub_1000744C8;
    v179 = 0;
    v168 = 0;
    v169 = &v168;
    v170 = 0x3032000000;
    v171 = sub_1000744B8;
    v172 = sub_1000744C8;
    v173 = 0;
    v164 = 0;
    v165 = &v164;
    v166 = 0x2020000000;
    v167 = 1;
    v104 = self->_domainNamesToUpload;
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(NSArray *)v104 count];
        *buf = 134217984;
        *&buf[4] = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Uploading files for %lu domains", buf, 0xCu);
      }

      _MBLog(@"Df", "=cloud-backup= Uploading files for %lu domains", [(NSArray *)v104 count]);
    }

    v31 = [serviceManager openCacheWithAccount:serviceAccount accessType:2 cached:0 error:errorCopy];
    if (!v31)
    {
      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        v74 = *errorCopy;
        *buf = 138412290;
        *&buf[4] = v74;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, "=cloud-backup= Failed to open readonly cache %@", buf, 0xCu);
        _MBLog(@"F ", "=cloud-backup= Failed to open readonly cache %@", *errorCopy);
      }

      v73 = 0;
      goto LABEL_96;
    }

    obja = v31;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v32 = v104;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v160 objects:v222 count:16];
    v105 = v32;
    if (v33)
    {
      v112 = *v161;
LABEL_31:
      v34 = 0;
      while (1)
      {
        if (*v161 != v112)
        {
          objc_enumerationMutation(v32);
        }

        v35 = *(*(&v160 + 1) + 8 * v34);
        v36 = objc_autoreleasePoolPush();
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v35;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Uploading files for %{public}@", buf, 0xCu);
          v102 = v35;
          _MBLog(@"Df", "=cloud-backup= Uploading files for %{public}@");
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v211 = sub_1000744B8;
        *v212 = sub_1000744C8;
        *&v212[8] = 0;
        v159 = 0;
        v38 = [(MBCKEngine *)self handleCancelation:&v159];
        objc_storeStrong(&v212[8], v159);
        if (v38)
        {
          objc_storeStrong(v175 + 5, *(*&buf[8] + 40));
          v39 = 0;
          *(v165 + 24) = 0;
        }

        else
        {
          v155 = 0;
          v156 = &v155;
          v157 = 0x2020000000;
          v158 = 0;
          v151 = 0;
          v152 = &v151;
          v153 = 0x2020000000;
          v154 = 0;
          v147 = 0;
          v148 = &v147;
          v149 = 0x2020000000;
          v150 = 0;
          v137[0] = _NSConcreteStackBlock;
          v137[1] = 3221225472;
          v137[2] = sub_1000744D0;
          v137[3] = &unk_1003BC9F0;
          v137[4] = self;
          v140 = buf;
          v40 = obja;
          v138 = v40;
          v139 = startBatchSave;
          v141 = &v155;
          v142 = &v188;
          v143 = &v151;
          v144 = &v147;
          v145 = &v184;
          v146 = &v180;
          v41 = [v40 enumerateFileChangesForDomainName:v35 skipUnmodified:1 foundChange:v137];
          v42 = MBGetDefaultLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v152[3];
            v44 = v148[3];
            v45 = v156[3];
            *v214 = 134218754;
            v215 = v43;
            v216 = 2048;
            v217 = v44;
            v218 = 2048;
            v219 = v45;
            v220 = 2114;
            v221 = v35;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Queued a total of %llu files (%llu) and %llu deletes for %{public}@", v214, 0x2Au);
            v102 = v152[3];
            _MBLog(@"Df", "=cloud-backup= Queued a total of %llu files (%llu) and %llu deletes for %{public}@");
          }

          v46 = *(*&buf[8] + 40);
          if (v46 | v41)
          {
            objc_storeStrong(v175 + 5, v46);
            if (!v175[5])
            {
              objc_storeStrong(v175 + 5, v41);
            }

            v47 = MBGetDefaultLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = v175[5];
              *v214 = 138412546;
              v215 = v35;
              v216 = 2112;
              v217 = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to upload files for domain %@: %@", v214, 0x16u);
              v102 = v35;
              _MBLog(@"E ", "=cloud-backup= Failed to upload files for domain %@: %@");
            }

            v39 = 0;
            *(v165 + 24) = 0;
          }

          else
          {
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            manifestsByDomainName = [(MBCKSnapshot *)self->_currentSnapshot manifestsByDomainName];
            allValues = [manifestsByDomainName allValues];

            v51 = [allValues countByEnumeratingWithState:&v133 objects:v213 count:16];
            if (v51)
            {
              v52 = *v134;
              while (2)
              {
                for (k = 0; k != v51; k = k + 1)
                {
                  if (*v134 != v52)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  fileUploadError = [*(*(&v133 + 1) + 8 * k) fileUploadError];
                  if (fileUploadError)
                  {
                    *(v165 + 24) = 0;
                    v55 = v175[5];
                    v175[5] = fileUploadError;

                    v32 = v105;
                    goto LABEL_56;
                  }
                }

                v51 = [allValues countByEnumeratingWithState:&v133 objects:v213 count:16];
                v32 = v105;
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

LABEL_56:

            v39 = v175[5] == 0;
          }

          _Block_object_dispose(&v147, 8);
          _Block_object_dispose(&v151, 8);
          _Block_object_dispose(&v155, 8);
        }

        _Block_object_dispose(buf, 8);

        objc_autoreleasePoolPop(v36);
        if (!v39)
        {
          break;
        }

        if (++v34 == v33)
        {
          v33 = [(NSArray *)v32 countByEnumeratingWithState:&v160 objects:v222 count:16];
          if (v33)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    [obja close];
    +[NSDate timeIntervalSinceReferenceDate];
    v57 = v56;
    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v57 - v5;
      v60 = v58;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v32;
        v62 = v185[3];
        v63 = v181[3];
        v64 = v189[3];
        v65 = [(NSArray *)v61 count];
        *buf = 134219008;
        *&buf[4] = v62;
        *&buf[12] = 2048;
        *&buf[14] = v63;
        *&buf[22] = 2048;
        v211 = v64;
        *v212 = 2048;
        *&v212[2] = v65;
        *&v212[10] = 2048;
        *&v212[12] = v59;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished queueing %llu files (%llu) and %llu deletes for %lu domains in %.2fs", buf, 0x34u);
        v32 = v105;
      }

      _MBLog(@"Df", "=cloud-backup= Finished queueing %llu files (%llu) and %llu deletes for %lu domains in %.2fs", v185[3], v181[3], v189[3], [(NSArray *)v32 count], v59);
    }

    v66 = MBGetDefaultLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = startBatchSave;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "=cloud-backup= Waiting for %{public}@ to complete", buf, 0xCu);
      v102 = startBatchSave;
      _MBLog(@"I ", "=cloud-backup= Waiting for %{public}@ to complete");
    }

    v67 = dispatch_semaphore_create(0);
    v120[0] = _NSConcreteStackBlock;
    v120[1] = 3221225472;
    v120[2] = sub_100074FE8;
    v120[3] = &unk_1003BCA18;
    v127 = &v184;
    v128 = &v180;
    v129 = &v188;
    v68 = v32;
    v121 = v68;
    selfCopy2 = self;
    v123 = ckOperationTracker;
    v124 = serviceManager;
    v125 = serviceAccount;
    v130 = &v164;
    v131 = &v168;
    v132 = &v174;
    v69 = v67;
    v126 = v69;
    [v123 finishBatchSave:startBatchSave completion:v120];
    throughputEstimator = [startBatchSave throughputEstimator];
    throughputs = [throughputEstimator throughputs];
    telemetry = [(MBCKBackupEngine *)self telemetry];
    [telemetry setThroughputs:throughputs];

    if ([(MBCKEngine *)self handleCancelation:errorCopy])
    {
      v73 = 0;
    }

    else
    {
      MBSemaphoreWaitForever();
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v75 = v68;
      v76 = [(NSArray *)v75 countByEnumeratingWithState:&v116 objects:v209 count:16];
      if (v76)
      {
        v77 = *v117;
        while (2)
        {
          for (m = 0; m != v76; m = m + 1)
          {
            if (*v117 != v77)
            {
              objc_enumerationMutation(v75);
            }

            v79 = [(MBCKSnapshot *)self->_currentSnapshot manifestForDomainName:*(*(&v116 + 1) + 8 * m)];
            fileUploadError2 = [v79 fileUploadError];

            if (fileUploadError2)
            {
              *(v165 + 24) = 0;
              fileUploadError3 = [v79 fileUploadError];
              v82 = v175[5];
              v175[5] = fileUploadError3;

              goto LABEL_83;
            }
          }

          v76 = [(NSArray *)v75 countByEnumeratingWithState:&v116 objects:v209 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }
      }

LABEL_83:

      if ((v165[3] & 1) == 0)
      {
        v83 = v175[5];
        if (!v83)
        {
          v83 = v169[5];
          if (!v83)
          {
            v94 = MBGetDefaultLog();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v94, OS_LOG_TYPE_FAULT, "success is false and uploadError and retryError are both nil", buf, 2u);
            }

            sub_10012F338(@"success is false and uploadError and retryError are both nil", v95, v96, v97, v98, v99, v100, v101, v102);
            *errorCopy = v73 = 0;
            goto LABEL_95;
          }
        }

        *errorCopy = v83;
      }

      v84 = [NSNumber numberWithUnsignedLongLong:v181[3]];
      telemetry2 = [(MBCKBackupEngine *)self telemetry];
      [telemetry2 setQueuedSize:v84];

      v86 = [NSNumber numberWithUnsignedLongLong:v189[3] + v185[3]];
      telemetry3 = [(MBCKBackupEngine *)self telemetry];
      [telemetry3 setQueuedFileCount:v86];

      cache2 = [(MBCKEngine *)self cache];
      v115 = 0;
      v89 = [cache2 countFilesMissingEncryptionKeysWithError:&v115];
      v90 = v115;

      if (v89)
      {
        v91 = MBGetDefaultLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v89;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found %llu files with missing encryption keys during upload", buf, 0xCu);
          _MBLog(@"Df", "=cloud-backup= Found %llu files with missing encryption keys during upload", v89);
        }

        [MBError errorWithCode:209 format:@"Found %llu files with missing encryption keys during upload", v89];
        *errorCopy = v73 = 0;
      }

      else if (v90)
      {
        v92 = v90;
        v73 = 0;
        *errorCopy = v90;
      }

      else
      {
        v73 = *(v165 + 24);
      }
    }

LABEL_95:

LABEL_96:
    _Block_object_dispose(&v164, 8);
    _Block_object_dispose(&v168, 8);

    _Block_object_dispose(&v174, 8);
    _Block_object_dispose(&v180, 8);
    _Block_object_dispose(&v184, 8);
    _Block_object_dispose(&v188, 8);

    _Block_object_dispose(v204, 8);
    return v73 & 1;
  }

  v73 = 1;
  return v73 & 1;
}

- (BOOL)uploadDomainRecords:(id *)records
{
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  [currentSnapshot snapshotFormat];
  v6 = MBSnapshotFormatContainsFileLists();

  if (!v6)
  {
    return 1;
  }

  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  device = [(MBCKEngine *)self device];
  hmacKey = [device hmacKey];
  device2 = [(MBCKEngine *)self device];
  assetIDPrefix = [device2 assetIDPrefix];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v14 = MBUploadDomainRecordsForBackup(pendingSnapshotDB, hmacKey, assetIDPrefix, ckOperationTracker, attemptSummary, records);

  return v14;
}

- (BOOL)commitSnapshotWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine commitSnapshotWithError:]", "MBCKBackupEngine.m", 1703, "error");
  }

  v5 = self->_currentSnapshot;
  if (v5)
  {
    device = [(MBCKEngine *)self device];
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
    appManager = [(MBEngine *)self appManager];
    properties = [(MBCKEngine *)self properties];
    attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
    v12 = MBCommitSnapshot(v5, device, ckOperationTracker, pendingSnapshotDB, appManager, properties, attemptSummary, error);

    if (v12)
    {
      [(MBCKBackupEngine *)self _saveNextBackupFSEventState];
      currentSnapshot = self->_currentSnapshot;
      self->_currentSnapshot = 0;

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [MBError errorWithCode:205 format:@"Attempting to commit a snapshot that doesn't exist"];
    *error = v14 = 0;
  }

  return v14;
}

- (BOOL)_verifySnapshotWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine _verifySnapshotWithError:]", "MBCKBackupEngine.m", 1730, "error");
  }

  backupPolicy = [(MBEngine *)self backupPolicy];
  backupReason = [(MBCKBackupEngine *)self backupReason];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  snapshotFormat = [attemptSummary snapshotFormat];
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  LOBYTE(backupPolicy) = [MBBackupSnapshotIntegrityVerifier shouldRunVerifierWithBackupPolicy:backupPolicy backupReason:backupReason snapshotFormat:snapshotFormat account:serviceAccount];

  telemetry = [(MBCKBackupEngine *)self telemetry];
  v11 = telemetry;
  if (backupPolicy)
  {
    errorCopy = error;
    [telemetry setSnapshotVerificationEnabled:1];

    attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary2 setSnapshotVerificationRan:1];

    telemetry2 = [(MBCKBackupEngine *)self telemetry];
    [telemetry2 setSnapshotVerificationStatus:@"CANCELLED"];

    v43 = 0.0;
    v14 = [[MBBackupSnapshotIntegrityVerifier alloc] initWithDelegate:self];
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    _scannerMode = [(MBCKBackupEngine *)self _scannerMode];
    enginePolicy = [(MBEngine *)self enginePolicy];
    mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    domainManager = [(MBEngine *)self domainManager];
    device = [(MBCKEngine *)self device];
    recordID = [device recordID];
    device2 = [(MBCKEngine *)self device];
    hmacKey = [device2 hmacKey];
    attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
    v41 = v14;
    v42 = 0;
    v23 = v14;
    v24 = ckOperationTracker;
    LOBYTE(ckOperationTracker) = [(MBBackupSnapshotIntegrityVerifier *)v23 verifySnapshotAfterCommitWithOperationTracker:ckOperationTracker scanMode:_scannerMode enginePolicy:enginePolicy snapshotTracker:mountedSnapshotTracker domainManager:domainManager deviceRecordID:recordID hmacKey:hmacKey backupAttemptSummary:attemptSummary3 duration:&v43 error:&v42];
    v40 = v42;

    if (ckOperationTracker)
    {
      telemetry3 = [(MBCKBackupEngine *)self telemetry];
      [telemetry3 setSnapshotVerificationStatus:@"PASS"];
      v26 = v40;
    }

    else
    {
      v26 = v40;
      if ([MBError isError:v40 withCodes:500, 555, 0])
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to verify snapshot: %@", buf, 0xCu);
          _MBLog(@"E ", "=cloud-backup= Failed to verify snapshot: %@", v40);
        }

        telemetry4 = [(MBCKBackupEngine *)self telemetry];
        [telemetry4 setSnapshotVerificationStatus:@"FAIL"];

        v31 = +[MBTapToRadar sharedInstance];
        persona = [(MBCKEngine *)self persona];
        [v31 reportBackupVerificationFailure:v40 persona:persona];

        v33 = v40;
        v28 = 0;
        *errorCopy = v40;
        goto LABEL_12;
      }

      telemetry3 = [(MBCKBackupEngine *)self telemetry];
      [telemetry3 setSnapshotVerificationCancellationError:v40];
    }

    v34 = v43;
    telemetry5 = [(MBCKBackupEngine *)self telemetry];
    [telemetry5 setSnapshotVerificationDuration:v34];

    v28 = 1;
LABEL_12:

    return v28;
  }

  [telemetry setSnapshotVerificationEnabled:0];

  attemptSummary4 = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary4 setSnapshotVerificationRan:0];

  return 1;
}

- (BOOL)finishBackupWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine finishBackupWithError:]", "MBCKBackupEngine.m", 1775, "error");
  }

  v5 = [(MBCKBackupEngine *)self _verifySnapshotWithError:?];
  if (v5)
  {
    if ([(MBCKBackupEngine *)self _notifyPluginsOfBackupEnded:0 error:error])
    {
      -[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:](self, "_unmountSnapshotsAndRemoveThem:", [objc_opt_class() _shouldRemoveSnapshotAfterError:0]);
      cache = [(MBCKEngine *)self cache];
      v7 = [cache size];
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry setCacheSize:v7];

      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of backup ended", v11, 2u);
        _MBLog(@"E ", "=cloud-backup= Failed to notify plugins of backup ended");
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)resumeWatchdogIfNeeded
{
  lastWatchdogResume = [(MBCKBackupEngine *)self lastWatchdogResume];

  if (!lastWatchdogResume)
  {
    v4 = +[NSDate date];
    [(MBCKBackupEngine *)self setLastWatchdogResume:v4];
  }

  lastWatchdogResume2 = [(MBCKBackupEngine *)self lastWatchdogResume];
  [lastWatchdogResume2 timeIntervalSinceNow];
  v7 = v6;

  v8 = -v7;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  if (v8 > 60.0)
  {
    v9 = +[NSDate date];
    [(MBCKBackupEngine *)self setLastWatchdogResume:v9];

    watchdog = [(MBEngine *)self watchdog];
    [watchdog resume];
  }
}

- (void)_unmountSnapshotsAndRemoveThem:(BOOL)them
{
  themCopy = them;
  if (!them && (MBIsInternalInstall() & 1) == 0)
  {
    __assert_rtn("[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:]", "MBCKBackupEngine.m", 1811, "shouldRemove || MBIsInternalInstall()");
  }

  [(MBCKBackupEngine *)self mountedSnapshotTracker];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v26 = 0u;
  obj = [v19 mountedSnapshots];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        volumeMountPoint = [v9 volumeMountPoint];
        snapshotMountPoint = [v9 snapshotMountPoint];
        snapshotName = [v9 snapshotName];
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v28 = snapshotName;
          v29 = 2114;
          v30 = volumeMountPoint;
          v31 = 2114;
          v32 = snapshotMountPoint;
          v33 = 1024;
          LODWORD(v34) = themCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Trying to unmount local snapshot %{public}@ for %{public}@ at %{public}@ (%d)", buf, 0x26u);
          _MBLog(@"Df", "=cloud-backup= Trying to unmount local snapshot %{public}@ for %{public}@ at %{public}@ (%d)", snapshotName, volumeMountPoint, snapshotMountPoint, themCopy);
        }

        if (themCopy)
        {
          v22 = 0;
          v14 = [MBFileSystemManager unmountAndDeleteSnapshotForVolume:volumeMountPoint name:snapshotName mountPoint:snapshotMountPoint error:&v22];
          v15 = v22;
          if (v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = MBSnapshotNameWithCurrentDate(@"com.appleinternal.mobilebackup");
          v21 = 0;
          v17 = [MBFileSystemManager unmountAndRenameSnapshotForVolume:volumeMountPoint name:snapshotName mountPoint:snapshotMountPoint newName:v16 error:&v21];
          v15 = v21;

          if (v17)
          {
            goto LABEL_18;
          }
        }

        if (([MBError isError:v15 withCode:4]& 1) == 0)
        {
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            v28 = snapshotName;
            v29 = 2114;
            v30 = volumeMountPoint;
            v31 = 2114;
            v32 = snapshotMountPoint;
            v33 = 2114;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to unmount snapshot %{public}@ for %{public}@ at %{public}@: %{public}@", buf, 0x2Au);
            _MBLog(@"E ", "=cloud-backup= Failed to unmount snapshot %{public}@ for %{public}@ at %{public}@: %{public}@", snapshotName, volumeMountPoint, snapshotMountPoint, v15);
          }
        }

LABEL_18:
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v6);
  }
}

- (BOOL)_notifyPluginsOfBackupEnded:(id)ended error:(id *)error
{
  endedCopy = ended;
  pluginNotifier = [(MBCKBackupEngine *)self pluginNotifier];
  v19 = 0;
  v8 = [pluginNotifier notifyPluginsOfEndingBackupWithError:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    v18 = v9;
    v11 = [pluginNotifier notifyPluginsOfEndedBackup:endedCopy error:&v18];
    v12 = v18;

    if (v11)
    {
      v13 = 1;
LABEL_14:
      v10 = v12;
      goto LABEL_15;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of endingBackupWithEngine: %@", buf, 0xCu);
      _MBLog(@"E ", "=cloud-backup= Failed to notify plugins of endingBackupWithEngine: %@", v12);
    }

    if (!error)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v10 = v12;
    goto LABEL_12;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of endingBackupWithEngine: %@", buf, 0xCu);
    _MBLog(@"E ", "=cloud-backup= Failed to notify plugins of endingBackupWithEngine: %@", v10);
  }

  if (error)
  {
LABEL_12:
    v16 = v10;
    v13 = 0;
    *error = v10;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified
{
  modifiedCopy = modified;
  cache = [(MBCKEngine *)self cache];
  v7 = [MBCKFile fileWithMBFile:modifiedCopy cache:cache];

  LOBYTE(cache) = [v7 changeType] - 1 < 2;
  return cache;
}

- (id)fileScanner:(id)scanner didFindFile:(id)file
{
  fileCopy = file;
  cache = [(MBCKEngine *)self cache];
  v7 = [MBCKFile fileWithMBFile:fileCopy cache:cache];

  [(MBCKSnapshot *)self->_currentSnapshot type];
  IsFull = MBSnapshotTypeIsFull();
  encryptionKey = [v7 changeTypeForFullBackup:IsFull];
  if (IsFull)
  {
    keyBagValidationState = MBGetDefaultLog();
    if (os_log_type_enabled(keyBagValidationState, OS_LOG_TYPE_INFO))
    {
      domain = [fileCopy domain];
      relativePath = [fileCopy relativePath];
      *buf = 134218498;
      v58 = encryptionKey;
      v59 = 2112;
      v60 = domain;
      v61 = 2112;
      *v62 = relativePath;
      _os_log_impl(&_mh_execute_header, keyBagValidationState, OS_LOG_TYPE_INFO, "=cloud-backup= Detected change type %lu for %@:%@ during full backup", buf, 0x20u);

      domain2 = [fileCopy domain];
      relativePath2 = [fileCopy relativePath];
      _MBLog(@"I ", "=cloud-backup= Detected change type %lu for %@:%@ during full backup", encryptionKey, domain2, relativePath2);
    }

LABEL_9:

    if (encryptionKey)
    {
      v19 = encryptionKey == 3;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  keyBagValidationState = [(MBCKBackupEngine *)self keyBagValidationState];
  if (![keyBagValidationState requiresEncryptionKeyRepair]|| encryptionKey)
  {
    goto LABEL_9;
  }

  encryptionKey = [v7 encryptionKey];
  if (!encryptionKey)
  {

    goto LABEL_27;
  }

  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  encryptionKey2 = [v7 encryptionKey];
  v18 = [keybagManager hasKeybagForEncryptionKey:encryptionKey2];

  if (v18)
  {
    encryptionKey = 0;
    goto LABEL_27;
  }

  v20 = MBGetDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    domain3 = [v7 domain];
    relativePath3 = [v7 relativePath];
    encryptionKey3 = [v7 encryptionKey];
    *buf = 138412802;
    v58 = domain3;
    v59 = 2112;
    v60 = relativePath3;
    v61 = 2048;
    *v62 = [encryptionKey3 length];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found file requiring encryption key repair %@:%@ (sz: %llu)", buf, 0x20u);

    domain4 = [v7 domain];
    relativePath4 = [v7 relativePath];
    encryptionKey4 = [v7 encryptionKey];
    _MBLog(@"Df", "=cloud-backup= Found file requiring encryption key repair %@:%@ (sz: %llu)", domain4, relativePath4, [encryptionKey4 length]);
  }

  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary setEncryptionKeysPendingRepairCount:{objc_msgSend(attemptSummary, "encryptionKeysPendingRepairCount") + 1}];

  encryptionKey = 2;
LABEL_18:
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  device2 = [(MBCKEngine *)self device];
  v56 = 0;
  v30 = [v7 fetchEncryptionKeyWithAccount:serviceAccount device:device2 error:&v56];
  v31 = v56;

  if ((v30 & 1) == 0)
  {
    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      inodeNumber = [fileCopy inodeNumber];
      v33 = [fileCopy size];
      v55 = v31;
      protectionClass = [fileCopy protectionClass];
      domain5 = [fileCopy domain];
      name = [domain5 name];
      relativePath5 = [fileCopy relativePath];
      *buf = 134219522;
      v58 = inodeNumber;
      v59 = 2048;
      v60 = v33;
      v61 = 1024;
      *v62 = protectionClass;
      *&v62[4] = 2048;
      *&v62[6] = encryptionKey;
      v63 = 2112;
      v64 = name;
      v65 = 2112;
      v66 = relativePath5;
      v67 = 2112;
      v68 = v55;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch encryption key for inode:%llu, sz:%lld, pc:%d, changeType:%lu, (%@:%@): %@", buf, 0x44u);

      inodeNumber2 = [fileCopy inodeNumber];
      v38 = [fileCopy size];
      protectionClass2 = [fileCopy protectionClass];
      domain6 = [fileCopy domain];
      name2 = [domain6 name];
      relativePath6 = [fileCopy relativePath];
      _MBLog(@"E ", "=cloud-backup= Failed to fetch encryption key for inode:%llu, sz:%lld, pc:%d, changeType:%lu, (%@:%@): %@", inodeNumber2, v38, protectionClass2, encryptionKey, name2, relativePath6, v55);

      v31 = v55;
    }

    if ([MBError isError:v31 withCode:209])
    {
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry _countMissingEncryptionKeyForFile:v7];
    }
  }

  isDirectory = [v7 isDirectory];
  telemetry2 = [(MBCKBackupEngine *)self telemetry];
  v46 = telemetry2;
  if (isDirectory)
  {
    backupDirectoryCount = [telemetry2 backupDirectoryCount];
    v48 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [backupDirectoryCount integerValue] + 1);
    telemetry3 = [(MBCKBackupEngine *)self telemetry];
    [telemetry3 setBackupDirectoryCount:v48];
  }

  else
  {
    backupDirectoryCount = [telemetry2 backupFileCount];
    v48 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [backupDirectoryCount integerValue] + 1);
    telemetry3 = [(MBCKBackupEngine *)self telemetry];
    [telemetry3 setBackupFileCount:v48];
  }

LABEL_27:
  cache2 = [(MBCKEngine *)self cache];
  v51 = [cache2 fileSeen:v7 changeType:encryptionKey];

  return v51;
}

- (BOOL)fileScanner:(id)scanner failedToStatFile:(id)file withErrno:(int)errno
{
  v5 = *&errno;
  fileCopy = file;
  domain = [fileCopy domain];
  name = [domain name];

  relativePath = [fileCopy relativePath];
  if (![name isEqualToString:@"SkippedFilesDomain"])
  {
    if (v5 > 82)
    {
      if (v5 != 83 && v5 != 92)
      {
LABEL_21:
        cache = MBGetDefaultLog();
        if (os_log_type_enabled(cache, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v27 = name;
          v28 = 2112;
          v29 = relativePath;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&_mh_execute_header, cache, OS_LOG_TYPE_ERROR, "=cloud-backup= Not skipping file %@ %@ after stat error: %{errno}d", buf, 0x1Cu);
          _MBLog(@"E ", "=cloud-backup= Not skipping file %@ %@ after stat error: %{errno}d", name, relativePath, v5);
        }

        goto LABEL_4;
      }
    }

    else if (v5 != 6 && v5 != 22)
    {
      goto LABEL_21;
    }

    cache = [(MBCKEngine *)self cache];
    v25 = 0;
    v13 = [cache lastBackedUpFileWithDomainName:name relativePath:relativePath error:&v25];
    v14 = v25;
    if (v14)
    {
      skippedFileTracker = v14;
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=cloud-backup= Error fetching last backed up file", buf, 2u);
        _MBLog(@"E ", "=cloud-backup= Error fetching last backed up file");
      }

LABEL_15:
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

    if ([v13 isDirectory])
    {
      skippedFileTracker = MBGetDefaultLog();
      if (os_log_type_enabled(skippedFileTracker, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = name;
        v28 = 2112;
        v29 = relativePath;
        _os_log_impl(&_mh_execute_header, skippedFileTracker, OS_LOG_TYPE_ERROR, "=cloud-backup= Cannot skip file %@ %@ from backup because it's a directory", buf, 0x16u);
        _MBLog(@"E ", "=cloud-backup= Cannot skip file %@ %@ from backup because it's a directory", name, relativePath);
      }

      goto LABEL_15;
    }

    skippedFileTracker = [(MBCKBackupEngine *)self skippedFileTracker];
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (skippedFileTracker)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v27 = name;
        v28 = 2112;
        v29 = relativePath;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Skipping file %@ %@ after stat error: %{errno}d", buf, 0x1Cu);
        _MBLog(@"Df", "=cloud-backup= Skipping file %@ %@ after stat error: %{errno}d", name, relativePath, v5);
      }

      v19 = [skippedFileTracker trackSkippedFile:fileCopy syscallType:1 syscallErrno:v5];
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=cloud-backup= Tracking skipped file %@", buf, 0xCu);
        _MBLog(@"I ", "=cloud-backup= Tracking skipped file %@", v19);
      }

      if (!v13)
      {
        goto LABEL_35;
      }

      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = name;
        v28 = 2112;
        v29 = relativePath;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Marking previously backed up file %@ %@ as unmodified", buf, 0x16u);
        _MBLog(@"Df", "=cloud-backup= Marking previously backed up file %@ %@ as unmodified", name, relativePath);
      }

      v22 = [cache fileSeen:v13 changeType:0];
      if (!v22)
      {
LABEL_35:
        v12 = 1;
LABEL_39:

        goto LABEL_16;
      }

      v23 = v22;
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark previously backed up file as modified", buf, 2u);
        _MBLog(@"E ", "=cloud-backup= Failed to mark previously backed up file as modified");
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=cloud-backup= Not skipping file, nil skippedFileTracker", buf, 2u);
      _MBLog(@"E ", "=cloud-backup= Not skipping file, nil skippedFileTracker");
    }

    v12 = 0;
    goto LABEL_39;
  }

  cache = MBGetDefaultLog();
  if (os_log_type_enabled(cache, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, cache, OS_LOG_TYPE_ERROR, "=cloud-backup= Not skipping file error encountered in skipped file domain", buf, 2u);
    _MBLog(@"E ", "=cloud-backup= Not skipping file error encountered in skipped file domain");
  }

LABEL_4:
  v12 = 0;
LABEL_17:

  return v12;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  [(MBCKBackupEngine *)self backupState];
  v5 = MBCKStringForBackupState();
  v6 = [NSString stringWithFormat:@"<%p: %s, state:%@, cancelled:%d>", self, Name, v5, [(MBEngine *)self isCanceled]];

  return v6;
}

- (BOOL)shouldCancelVerification
{
  [(MBCKBackupEngine *)self resumeWatchdogIfNeeded];

  return [(MBCKEngine *)self handleCancelation:0];
}

- (BOOL)shouldCancelTranscription
{
  [(MBCKBackupEngine *)self resumeWatchdogIfNeeded];

  return [(MBCKEngine *)self handleCancelation:0];
}

- (id)_createDomainTranscriberForAPFSSnapshots:(id)snapshots error:(id *)error
{
  snapshotsCopy = snapshots;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1976, "persona");
  }

  v7 = persona;
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  if (!currentSnapshot)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1979, "currentSnapshot");
  }

  v9 = currentSnapshot;
  currentSnapshot2 = [(MBCKBackupEngine *)self currentSnapshot];
  commitID = [currentSnapshot2 commitID];

  if (!commitID)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1982, "currentSnapshotCommitID");
  }

  v35 = 0;
  v12 = [_TtC7backupd11MBVolumeMap createOrLoadForPersona:v7 outLoadType:&v35 error:error];
  if (v12)
  {
    v13 = [_TtC7backupd11MBVolumeMap loadTypeToStringWithLoadType:v35];
    attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary setVolumeMapLoadType:v13];

    if ([v9 snapshotFormat] == 3)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    v16 = selfCopy;
    v32 = [MBDomainTranscriber alloc];
    snapshotDatabaseDirectory = [v7 snapshotDatabaseDirectory];
    _scannerMode = [(MBCKBackupEngine *)self _scannerMode];
    enginePolicy = [(MBEngine *)self enginePolicy];
    v17 = v9;
    snapshotFormat = [v9 snapshotFormat];
    [(MBCKEngine *)self device];
    v19 = v33 = v7;
    keyBagValidationState = [(MBCKBackupEngine *)self keyBagValidationState];
    v21 = commitID;
    requiresEncryptionKeyRepair = [keyBagValidationState requiresEncryptionKeyRepair];
    attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
    LOBYTE(v28) = requiresEncryptionKeyRepair;
    commitID = v21;
    v24 = snapshotFormat;
    v9 = v17;
    v25 = [(MBDomainTranscriber *)v32 initWithPendingCommitID:v21 snapshotDatabaseDirectory:snapshotDatabaseDirectory scanMode:_scannerMode enginePolicy:enginePolicy snapshotFormat:v24 device:v19 volumeMap:v12 shouldRepairEncryptionKeys:v28 snapshotTracker:snapshotsCopy attemptSummary:attemptSummary2 compatibilityDelegate:v16 delegate:self];

    v7 = v33;
  }

  else
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to load volume map: %@", buf, 0xCu);
      _MBLog(@"E ", "=cloud-backup= Failed to load volume map: %@", 0);
    }

    v25 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v25;
}

- (BOOL)_shouldBackupUsingFSEvents
{
  v3 = _os_feature_enabled_impl();
  type = [(MBCKSnapshot *)self->_currentSnapshot type];
  result = 0;
  if (v3 && type == 1)
  {
    if (!MBSnapshotsAreTransitioningFormats(self->_previousSnapshot, self->_currentSnapshot))
    {
      [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
      if (MBSnapshotFormatContainsManifests() && (-[MBCKEngine cache](self, "cache"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 previousSnapshotHasSkippedFiles], v6, v7))
      {
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Previous snapshot has skipped files, not using FSEvents", buf, 2u);
          _MBLog(@"Df", "=cloud-backup= Previous snapshot has skipped files, not using FSEvents");
        }
      }

      else
      {
        keyBagValidationState = [(MBCKBackupEngine *)self keyBagValidationState];
        requiresEncryptionKeyRepair = [keyBagValidationState requiresEncryptionKeyRepair];

        if (!requiresEncryptionKeyRepair)
        {
          return 1;
        }

        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Device requires encryption key repair. Not using FSEvents", v11, 2u);
          _MBLog(@"Df", "=cloud-backup= Device requires encryption key repair. Not using FSEvents");
        }
      }
    }

    return 0;
  }

  return result;
}

- (id)_fetchPreviousBackupFSEventState
{
  persona = [(MBCKEngine *)self persona];
  v3 = [persona copyPreferencesValueForKey:@"FSEventState" class:objc_opt_class()];

  v4 = [[MBFSEventState alloc] initWithDictionaryRepresentation:v3];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Fetched previous FSEvent state of: %@", buf, 0xCu);
    _MBLog(@"Df", "=cloud-backup= Fetched previous FSEvent state of: %@", v4);
  }

  return v4;
}

- (void)_saveNextBackupFSEventState
{
  v3 = self->_nextBackupFSEventState;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Updating FSEvent state to: %@", buf, 0xCu);
    _MBLog(@"Df", "=cloud-backup= Updating FSEvent state to: %@", v3);
  }

  persona = [(MBCKEngine *)self persona];
  dictionaryRepresentation = [(MBFSEventState *)v3 dictionaryRepresentation];
  [persona setPreferencesValue:dictionaryRepresentation forKey:@"FSEventState"];
}

- (void)_sendTelemetryForStateChange:(unint64_t)change start:(id)start end:(id)end
{
  endCopy = end;
  startCopy = start;
  [MBCKStatusReporter reportBackupStateChangeForEngine:self state:change start:startCopy end:endCopy];
  [MBPowerLog reportBackupStateChangeForEngine:self state:change start:startCopy end:endCopy];
  [MBTelemetry sendBackupEngineStateChangeStatus:self state:change start:startCopy end:endCopy];
}

- (void)_finishCollectingTelemetry
{
  [(MBCKBackupEngine *)self backupReason];
  if (MBBackupReasonIsScheduled())
  {
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    ckOperationPolicy = [ckOperationTracker ckOperationPolicy];
    cellularAccess = [ckOperationPolicy cellularAccess];

    if (cellularAccess)
    {
      +[MBCKManager inexpensiveCellularBalance];
      v6 = [NSNumber numberWithDouble:?];
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry setRemainingCellularBalance:v6];
    }
  }

  estimator = [(MBCKBackupEngine *)self estimator];
  [estimator progressAtLastUpdate];
  if (v9 > 0.0)
  {
    minutesRemaining = [estimator minutesRemaining];
    if (minutesRemaining != -1)
    {
      v11 = [NSNumber numberWithUnsignedInteger:minutesRemaining];
      telemetry2 = [(MBCKBackupEngine *)self telemetry];
      [telemetry2 setMinutesRemaining:v11];
    }
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  networkConnectivity = [serviceManager networkConnectivity];
  v16 = v15;
  telemetry3 = [(MBCKBackupEngine *)self telemetry];
  [telemetry3 setNetworkConnectivityAtFinish:{networkConnectivity, v16}];

  engineError = [(MBCKEngine *)self engineError];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary setError:engineError];

  cache = [(MBCKEngine *)self cache];
  v21 = [cache size];
  unsignedLongLongValue = [v21 unsignedLongLongValue];
  attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary2 setLegacyCacheSize:unsignedLongLongValue];

  v45 = 0;
  persona = [(MBCKEngine *)self persona];
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  v44 = 0;
  v26 = MBCalculateDiskUsageForSnapshotDirectory(snapshotDatabaseDirectory, &v45, &v44);
  v27 = v44;

  if (v26 < 0)
  {
    attemptSummary4 = MBGetDefaultLog();
    if (os_log_type_enabled(attemptSummary4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, attemptSummary4, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to calculate disk usage for snapshot directory: %@", buf, 0xCu);
      _MBLog(@"E ", "=cloud-backup= Failed to calculate disk usage for snapshot directory: %@", v27);
    }
  }

  else
  {
    attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary3 setSnapshotDirectorySize:v26];

    v29 = v45;
    attemptSummary4 = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary4 setSnapshotDirectoryCloneSize:v29];
  }

  v31 = MBPeakProcessMemoryUsage();
  attemptSummary5 = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary5 setPeakMemoryUsage:v31];

  if (MBIsInternalInstall())
  {
    attemptSummary6 = [(MBCKBackupEngine *)self attemptSummary];
    commitID = [attemptSummary6 commitID];

    if (commitID)
    {
      attemptSummary7 = [(MBCKBackupEngine *)self attemptSummary];
      persona2 = [(MBCKEngine *)self persona];
      snapshotDatabaseDirectory2 = [persona2 snapshotDatabaseDirectory];
      attemptSummary8 = [(MBCKBackupEngine *)self attemptSummary];
      commitID2 = [attemptSummary8 commitID];
      v43 = 0;
      v40 = MBAppendAttemptSummaryToPlist(attemptSummary7, snapshotDatabaseDirectory2, commitID2, &v43);
      v41 = v43;

      if ((v40 & 1) == 0 && !dword_100421634 && !atomic_fetch_add_explicit(&dword_100421634, 1u, memory_order_relaxed))
      {
        v42 = MBGetDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v47 = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Failed to append attempt summary to plist: %@", buf, 0xCu);
          _MBLog(@"F ", "=cloud-backup= =cloud-backup= Failed to append attempt summary to plist: %@", v41);
        }
      }
    }
  }
}

- (NSString)pendingSnapshotID
{
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  snapshotID = [currentSnapshot snapshotID];

  return snapshotID;
}

- (void)syncProgress:(double)progress
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    progressCopy = progress;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=cloud-backup= BYClientDaemonCloudSyncProtocol sync progress: %f", buf, 0xCu);
    _MBLog(@"I ", "=cloud-backup= BYClientDaemonCloudSyncProtocol sync progress: %f", progress);
  }
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  v4 = [errorsCopy count];
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = errorsCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=cloud-backup= BYClientDaemonCloudSyncProtocol syncCompletedWithErrors: %@", buf, 0xCu);
      _MBLog(@"E ", "=cloud-backup= BYClientDaemonCloudSyncProtocol syncCompletedWithErrors: %@", errorsCopy);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=cloud-backup= BYClientDaemonCloudSyncProtocol sync completed.", buf, 2u);
    _MBLog(@"Df", "=cloud-backup= BYClientDaemonCloudSyncProtocol sync completed.");
  }
}

@end