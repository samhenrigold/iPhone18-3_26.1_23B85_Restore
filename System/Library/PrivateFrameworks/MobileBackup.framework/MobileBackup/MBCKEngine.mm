@interface MBCKEngine
- (BOOL)_refreshCacheWithDevice:(id)device operationTracker:(id)tracker refreshState:(id)state error:(id *)error;
- (BOOL)_refreshSnapshot:(id)snapshot operationTracker:(id)tracker refreshState:(id)state error:(id *)error;
- (BOOL)_refreshSnapshot:(id)snapshot operationTracker:(id)tracker refreshState:(id)state fileToDomainCache:(id)cache error:(id *)error;
- (BOOL)_verifySnapshotManifests:(id)manifests operationTracker:(id)tracker summary:(id)summary shouldOutput:(BOOL)output;
- (BOOL)backsUpPrimaryAccount;
- (BOOL)cancelWithError:(id)error;
- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)account error:(id *)error;
- (BOOL)handleCancelation:(id *)cancelation;
- (BOOL)hasError;
- (BOOL)isNetworkAvailable;
- (BOOL)refreshCacheWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (MBCKEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager;
- (MBCKManager)serviceManager;
- (MBCKOperationTracker)ckOperationTracker;
- (MBProgressModel)progressModel;
- (MBRetryStrategy)multistateRetryStrategy;
- (MBRetryStrategy)retryStrategy;
- (id)setUpOperationTrackerWithError:(id *)error;
- (void)dealloc;
- (void)makeStateTransition;
- (void)performRetryablePhase:(id)phase;
- (void)replenishRetryTokens;
- (void)run;
- (void)setCkOperationTracker:(id)tracker;
@end

@implementation MBCKEngine

- (MBCKEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKEngine initWithSettingsContext:debugContext:domainManager:]", "MBCKEngine.m", 50, "account");
  }

  v13 = account;
  v21.receiver = self;
  v21.super_class = MBCKEngine;
  v14 = [(MBEngine *)&v21 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:managerCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, context);
    objc_storeStrong(&v15->super._settingsContext, context);
    objc_storeStrong(&v15->_serviceAccount, v13);
    [(MBCKEngine *)v15 setShouldAdvanceState:1];
    if ([debugContextCopy isFlagSet:@"VerifyProgress"])
    {
      [(MBCKEngine *)v15 setVerifyProgressModel:1];
    }

    v16 = objc_alloc_init(NSMutableDictionary);
    performanceStatistics = v15->_performanceStatistics;
    v15->_performanceStatistics = v16;

    v15->_qualityOfService = 17;
    v18 = objc_opt_new();
    [(MBCKEngine *)v15 setCkOperationPolicy:v18];
    v19 = [v18 operationGroupWithName:0];
    [(MBCKEngine *)v15 setCkOperationGroup:v19];
  }

  return v15;
}

- (void)dealloc
{
  [(MBCKOperationTracker *)self->_ckOperationTracker removeEngine:self];
  v3.receiver = self;
  v3.super_class = MBCKEngine;
  [(MBCKEngine *)&v3 dealloc];
}

- (MBCKOperationTracker)ckOperationTracker
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_ckOperationTracker;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCkOperationTracker:(id)tracker
{
  trackerCopy = tracker;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ckOperationTracker = selfCopy->_ckOperationTracker;
  selfCopy->_ckOperationTracker = trackerCopy;
  v7 = trackerCopy;

  objc_sync_exit(selfCopy);
  [(MBCKOperationTracker *)v7 addEngine:selfCopy];
}

- (BOOL)hasError
{
  engineError = [(MBCKEngine *)self engineError];
  v3 = engineError != 0;

  return v3;
}

- (MBProgressModel)progressModel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_progressModel)
  {
    v3 = objc_opt_new();
    progressModel = selfCopy->_progressModel;
    selfCopy->_progressModel = v3;

    if ([(MBCKEngine *)selfCopy verifyProgressModel])
    {
      [(MBProgressModel *)selfCopy->_progressModel setVerify:1];
    }
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_progressModel;

  return v5;
}

- (MBRetryStrategy)retryStrategy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  retryStrategy = selfCopy->_retryStrategy;
  if (!retryStrategy)
  {
    v4 = [[MBRetryStrategy alloc] initWithEngine:selfCopy];
    v5 = selfCopy->_retryStrategy;
    selfCopy->_retryStrategy = v4;

    retryStrategy = selfCopy->_retryStrategy;
  }

  v6 = retryStrategy;
  objc_sync_exit(selfCopy);

  return v6;
}

- (MBRetryStrategy)multistateRetryStrategy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  multistateRetryStrategy = selfCopy->_multistateRetryStrategy;
  if (!multistateRetryStrategy)
  {
    v4 = [[MBRetryStrategy alloc] initWithEngine:selfCopy];
    v5 = selfCopy->_multistateRetryStrategy;
    selfCopy->_multistateRetryStrategy = v4;

    multistateRetryStrategy = selfCopy->_multistateRetryStrategy;
  }

  v6 = multistateRetryStrategy;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)run
{
  *&v3 = atomic_fetch_add_explicit(&dword_100421650, 1u, memory_order_relaxed);
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    engineModeString = [(MBEngine *)self engineModeString];
    persona = [(MBCKEngine *)self persona];
    personaName = [persona personaName];
    *buf = 138543874;
    v63 = engineModeString;
    v64 = 2048;
    v65 = v3;
    v66 = 2112;
    v67 = *&personaName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "========== %{public}@ starting (%ld) for %@ persona", buf, 0x20u);

    engineModeString2 = [(MBEngine *)self engineModeString];
    persona2 = [(MBCKEngine *)self persona];
    personaName2 = [persona2 personaName];
    _MBLog(@"Df", "========== %{public}@ starting (%ld) for %@ persona", engineModeString2, *&v3, personaName2);
  }

  if (![(MBEngine *)self isBackgroundRestore])
  {
    MBLogDeviceProperties();
  }

  stateChange = [(MBCKEngine *)self stateChange];
  if (!stateChange)
  {
    __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 151, "stateChange");
  }

  v14 = __ROR8__([(MBCKEngine *)self qualityOfService]- 9, 3);
  if (v14 > 3)
  {
    v15 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v15 = dword_1002B9D90[v14];
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_attr_make_with_qos_class(v16, v15, 0);

  v18 = dispatch_queue_create("com.apple.backupd.stateChange", v17);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FDB4;
  block[3] = &unk_1003BCB38;
  v19 = stateChange;
  v61 = v19;
  dispatch_sync(v18, block);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10007FDD0;
  v57[3] = &unk_1003BCB88;
  v20 = v18;
  v58 = v20;
  v21 = v19;
  v59 = v21;
  progressModel = [(MBCKEngine *)self progressModel];
  [progressModel setBlock:v57];

  v56 = 0;
  v23 = [(MBCKEngine *)self runWithError:&v56];
  v24 = v56;
  progressModel2 = [(MBCKEngine *)self progressModel];
  [progressModel2 setBlock:0];

  [(MBCKCache *)self->_cache flush];
  +[NSDate timeIntervalSinceReferenceDate];
  v27 = v26 - v5;
  if ([(MBEngine *)self isCanceled])
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      engineModeString3 = [(MBEngine *)self engineModeString];
      *buf = 138412546;
      v63 = engineModeString3;
      v64 = 2048;
      v65 = v3;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "========== %@ cancelled (%ld)", buf, 0x16u);

      engineModeString4 = [(MBEngine *)self engineModeString];
      _MBLog(@"Df", "========== %@ cancelled (%ld)", engineModeString4, *&v3);
    }

    cancelError = [(MBEngine *)self cancelError];

    if (!cancelError)
    {
      __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 181, "localError");
    }

    v32 = 4;
    goto LABEL_29;
  }

  if (v23)
  {

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      engineModeString5 = [(MBEngine *)self engineModeString];
      *buf = 138412802;
      v63 = engineModeString5;
      v64 = 2048;
      v65 = v27;
      v66 = 2048;
      v67 = v3;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "========== %@ finished in %0.3fs (%ld)", buf, 0x20u);

      engineModeString6 = [(MBEngine *)self engineModeString];
      _MBLog(@"Df", "========== %@ finished in %0.3fs (%ld)", engineModeString6, *&v27, *&v3);
    }

    if (self->_performanceStatistics)
    {
      v36 = [NSNumber numberWithDouble:v27];
      [(NSMutableDictionary *)self->_performanceStatistics setObject:v36 forKeyedSubscript:@"TotalDuration"];
    }

    cancelError = 0;
    v32 = 2;
    goto LABEL_29;
  }

  if ([(MBEngine *)self isRestoreEngine]&& [MBError isRetryableRestoreError:v24])
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      engineModeString7 = [(MBEngine *)self engineModeString];
      [MBError loggableDescriptionForError:v24];
      v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v40 = [MBError descriptionForError:v24];
      *buf = 138413058;
      v63 = engineModeString7;
      v64 = 2114;
      v65 = v39;
      v66 = 2112;
      v67 = *&v40;
      v68 = 2048;
      v69 = v3;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "========== %@ encountered a retryable error: %{public}@, %@ (%ld)", buf, 0x2Au);

      engineModeString8 = [(MBEngine *)self engineModeString];
      v42 = [MBError loggableDescriptionForError:v24];
      v43 = [MBError descriptionForError:v24];
      _MBLog(@"Df", "========== %@ encountered a retryable error: %{public}@, %@ (%ld)", engineModeString8, v42, v43, *&v3);
LABEL_26:
    }
  }

  else
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      engineModeString9 = [(MBEngine *)self engineModeString];
      [MBError loggableDescriptionForError:v24];
      v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v46 = [MBError descriptionForError:v24];
      *buf = 138413058;
      v63 = engineModeString9;
      v64 = 2114;
      v65 = v45;
      v66 = 2112;
      v67 = *&v46;
      v68 = 2048;
      v69 = v3;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "========== %@ failed: %{public}@, %@ (%ld)", buf, 0x2Au);

      engineModeString8 = [(MBEngine *)self engineModeString];
      v42 = [MBError loggableDescriptionForError:v24];
      v43 = [MBError descriptionForError:v24];
      _MBLog(@"E ", "========== %@ failed: %{public}@, %@ (%ld)", engineModeString8, v42, v43, *&v3);
      goto LABEL_26;
    }
  }

  if (!v24)
  {
    __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 193, "localError");
  }

  v32 = 4;
  cancelError = v24;
LABEL_29:
  [(MBCKEngine *)self sendEngineCompletionTelemetry:cancelError duration:v27];
  v47 = dispatch_group_create();
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10007FE88;
  v52[3] = &unk_1003BCBB0;
  v48 = v21;
  v54 = v48;
  v55 = v32;
  v49 = cancelError;
  v53 = v49;
  dispatch_group_async(v47, v20, v52);
  v50 = dispatch_time(0, 14700000000000);
  if (dispatch_group_wait(v47, v50))
  {
    __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 216, "result == 0");
  }

  [(MBCKEngine *)self setStateChange:0];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  [ckOperationTracker drain];
}

- (BOOL)cancelWithError:(id)error
{
  v9.receiver = self;
  v9.super_class = MBCKEngine;
  v4 = [(MBEngine *)&v9 cancelWithError:error];
  if (!v4)
  {
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    [ckOperationTracker cancel];

    retryStrategy = [(MBCKEngine *)self retryStrategy];
    [retryStrategy cancel];

    multistateRetryStrategy = [(MBCKEngine *)self multistateRetryStrategy];
    [multistateRetryStrategy cancel];
  }

  return v4;
}

- (BOOL)handleCancelation:(id *)cancelation
{
  isCanceled = [(MBEngine *)self isCanceled];
  if (isCanceled)
  {
    cancelError = [(MBEngine *)self cancelError];
    if (!cancelError)
    {
      __assert_rtn("[MBCKEngine handleCancelation:]", "MBCKEngine.m", 239, "cancelError");
    }

    v7 = cancelError;
    [(MBCKEngine *)self cleanUpAfterError:cancelError];
    if (cancelation)
    {
      v8 = v7;
      *cancelation = v7;
    }
  }

  return isCanceled;
}

- (BOOL)_refreshSnapshot:(id)snapshot operationTracker:(id)tracker refreshState:(id)state error:(id *)error
{
  snapshotCopy = snapshot;
  trackerCopy = tracker;
  stateCopy = state;
  if (!snapshotCopy)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:error:]", "MBCKEngine.m", 247, "snapshot");
  }

  v13 = stateCopy;
  if ([snapshotCopy snapshotFormat] == 3)
  {
    v14 = 1;
  }

  else
  {
    cache = [(MBCKEngine *)self cache];
    path = [cache path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    v18 = [[MBCKRefreshManifestDomainCache alloc] initWithCacheDirPath:stringByDeletingLastPathComponent error:error];
    if (v18)
    {
      v14 = [(MBCKEngine *)self _refreshSnapshot:snapshotCopy operationTracker:trackerCopy refreshState:v13 fileToDomainCache:v18 error:error];
      v23 = 0;
      v19 = [(MBCKRefreshManifestDomainCache *)v18 close:&v23];
      v20 = v23;
      if ((v19 & 1) == 0)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error closing file to domain cache: %@", buf, 0xCu);
          _MBLog(@"E ", "Error closing file to domain cache: %@", v20);
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

- (BOOL)_refreshSnapshot:(id)snapshot operationTracker:(id)tracker refreshState:(id)state fileToDomainCache:(id)cache error:(id *)error
{
  snapshotCopy = snapshot;
  trackerCopy = tracker;
  stateCopy = state;
  cacheCopy = cache;
  v77 = snapshotCopy;
  if (!snapshotCopy)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 270, "snapshot");
  }

  if (!trackerCopy)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 271, "tracker");
  }

  if (!stateCopy)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 272, "refreshState");
  }

  if (!error)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 273, "error");
  }

  v71 = trackerCopy;
  v72 = stateCopy;
  cache = [(MBCKEngine *)self cache];
  if (!cache)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 276, "cache");
  }

  snapshotID = [snapshotCopy snapshotID];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = snapshotID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Refreshing snapshot %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Refreshing snapshot %{public}@", snapshotID);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  if ([(MBCKEngine *)self handleCancelation:error])
  {
    goto LABEL_9;
  }

  if (![stateCopy hasRefreshedSnapshotID:snapshotID])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v145 = sub_100081454;
    v146 = sub_100081464;
    v147 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x3032000000;
    v136 = sub_100081454;
    v137 = sub_100081464;
    v138 = 0;
    v102 = 0;
    v103 = &v102;
    v104 = 0x2020000000;
    v105 = 0;
    *v139 = 0;
    *&v139[8] = v139;
    *&v139[16] = 0x2020000000;
    v140 = 0;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v132 = 0;
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_10008146C;
    v124[3] = &unk_1003BCBD8;
    v124[4] = self;
    v126 = v139;
    v127 = &v129;
    v68 = cacheCopy;
    v125 = v68;
    v128 = &v133;
    v120[0] = _NSConcreteStackBlock;
    v120[1] = 3221225472;
    v120[2] = sub_1000816AC;
    v120[3] = &unk_1003BCC00;
    v120[4] = self;
    v122 = &v133;
    v123 = &v102;
    v121 = snapshotID;
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_10008194C;
    v113[3] = &unk_1003BCC28;
    v116 = buf;
    v69 = v121;
    v114 = v69;
    v117 = &v102;
    v118 = &v129;
    v119 = v139;
    v20 = v19;
    v115 = v20;
    [snapshotCopy fetchManifestsWithOperationTracker:trackerCopy referenceFetchProgress:v124 manifestProgress:v120 snapshotCompletion:v113];
    MBGroupWaitForever();
    v21 = v134[5];
    if (v21 || (v21 = *(*&buf[8] + 40)) != 0)
    {
      v22 = 0;
      *error = v21;
    }

    else
    {
      v22 = 1;
    }

    _Block_object_dispose(&v129, 8);
    _Block_object_dispose(v139, 8);
    _Block_object_dispose(&v102, 8);
    _Block_object_dispose(&v133, 8);

    _Block_object_dispose(buf, 8);
    if ((v22 & 1) == 0)
    {
LABEL_9:
      if (!*error)
      {
        __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 345, "*error");
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *error;
        *buf = 138543618;
        *&buf[4] = snapshotID;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to refresh snapshot %{public}@: %{public}@", buf, 0x16u);
        _MBLog(@"E ", "Failed to refresh snapshot %{public}@: %{public}@", snapshotID, *error);
      }

      v18 = 0;
      goto LABEL_60;
    }

    if ([(MBEngine *)self isRestoreEngine])
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        snapshotID2 = [snapshotCopy snapshotID];
        *buf = 138412290;
        *&buf[4] = snapshotID2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "RestoreApps: Populating restoreApps for snapshot: %@", buf, 0xCu);

        snapshotID3 = [snapshotCopy snapshotID];
        _MBLog(@"I ", "RestoreApps: Populating restoreApps for snapshot: %@", snapshotID3);
      }

      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      manifestsByDomainName = [snapshotCopy manifestsByDomainName];
      v27 = [manifestsByDomainName countByEnumeratingWithState:&v109 objects:v143 count:16];
      if (v27)
      {
        v28 = *v110;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v110 != v28)
            {
              objc_enumerationMutation(manifestsByDomainName);
            }

            v30 = *(*(&v109 + 1) + 8 * i);
            v31 = objc_autoreleasePoolPush();
            manifestsByDomainName2 = [v77 manifestsByDomainName];
            v33 = [manifestsByDomainName2 objectForKeyedSubscript:v30];

            domainName = [v33 domainName];
            dependentDomainNames = [v33 dependentDomainNames];
            v36 = MBGetDefaultLog();
            v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
            if (dependentDomainNames)
            {
              if (v37)
              {
                *buf = 138412546;
                *&buf[4] = domainName;
                *&buf[12] = 2112;
                *&buf[14] = dependentDomainNames;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "RestoreApps: %@ -> %@", buf, 0x16u);
                _MBLog(@"I ", "RestoreApps: %@ -> %@", domainName, dependentDomainNames);
              }

              v38 = [cache addDependentDomains:dependentDomainNames forApp:domainName];
            }

            else
            {
              if (v37)
              {
                *buf = 138412290;
                *&buf[4] = domainName;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "RestoreApps: %@", buf, 0xCu);
                _MBLog(@"I ", "RestoreApps: %@", domainName);
              }
            }

            objc_autoreleasePoolPop(v31);
          }

          v27 = [manifestsByDomainName countByEnumeratingWithState:&v109 objects:v143 count:16];
        }

        while (v27);
      }
    }

    v39 = +[MBBehaviorOptions sharedOptions];
    numberOfRecordsToFetchBeforeCancellingPrivilegedSnapshotDownload = [v39 numberOfRecordsToFetchBeforeCancellingPrivilegedSnapshotDownload];

    manifestsByDomainName3 = [v77 manifestsByDomainName];
    v42 = [manifestsByDomainName3 count];

    v43 = dispatch_group_create();
    dispatch_group_enter(v43);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v145 = sub_100081454;
    v146 = sub_100081464;
    v147 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x3032000000;
    v136 = sub_100081454;
    v137 = sub_100081464;
    v138 = 0;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v132 = 0;
    v108[0] = 0;
    v108[1] = v108;
    v108[2] = 0x2020000000;
    v108[3] = 0;
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = sub_100081454;
    v106 = sub_100081464;
    v107 = [v72 queryCursorForSnapshotID:v69];
    if (v103[5])
    {
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v103[5];
        *v139 = 138544130;
        *&v139[4] = @"PrivilegedSnapshotDownload";
        *&v139[12] = 2114;
        *&v139[14] = v69;
        *&v139[22] = 2048;
        v140 = v42;
        v141 = 2114;
        v142 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Resuming %{public}@ query for snapshot %{public}@ (%lu manifests) with cursor: %{public}@", v139, 0x2Au);
        _MBLog(@"Df", "Resuming %{public}@ query for snapshot %{public}@ (%lu manifests) with cursor: %{public}@", @"PrivilegedSnapshotDownload", v69, v42, v103[5], v68);
      }

      v46 = [CKQueryOperation alloc];
      v47 = [v46 initWithCursor:v103[5]];
    }

    else
    {
      v48 = MBGetDefaultLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v139 = 138543874;
        *&v139[4] = @"PrivilegedSnapshotDownload";
        *&v139[12] = 2114;
        *&v139[14] = v69;
        *&v139[22] = 2048;
        v140 = v42;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ query for snapshot %{public}@ (%lu manifests)", v139, 0x20u);
        _MBLog(@"Df", "Starting %{public}@ query for snapshot %{public}@ (%lu manifests)", @"PrivilegedSnapshotDownload", v69, v42);
      }

      recordID = [v77 recordID];
      v50 = [NSPredicate predicateWithFormat:@"recordID==%@", recordID];

      v51 = [[CKQuery alloc] initWithRecordType:@"PrivilegedSnapshotDownload" predicate:v50];
      v47 = [[CKQueryOperation alloc] initWithQuery:v51];
    }

    if (!v47)
    {
      __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 392, "op");
    }

    if ([(MBEngine *)self isBackupEngine])
    {
      +[MBCKFile keysToFetchWithoutContents];
    }

    else
    {
      +[MBCKFile keysToFetchWithContents];
    }
    v52 = ;
    [v47 setDesiredKeys:v52];

    [v47 setFetchAllResults:1];
    [v47 setShouldFetchAssetContent:0];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100081B28;
    v97[3] = &unk_1003BCC50;
    v100 = &v102;
    v98 = @"PrivilegedSnapshotDownload";
    v53 = v69;
    v99 = v53;
    v101 = &v129;
    [v47 setQueryCursorFetchedBlock:v97];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100081C54;
    v86[3] = &unk_1003BCC78;
    v96 = numberOfRecordsToFetchBeforeCancellingPrivilegedSnapshotDownload;
    v93 = &v129;
    v87 = @"PrivilegedSnapshotDownload";
    v54 = v53;
    v88 = v54;
    selfCopy = self;
    v90 = v68;
    v94 = &v133;
    v91 = cache;
    v55 = v77;
    v92 = v55;
    v95 = v108;
    [v47 setRecordFetchedBlock:v86];
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_100082220;
    v78[3] = &unk_1003BCCA0;
    v79 = @"PrivilegedSnapshotDownload";
    v56 = v54;
    v83 = buf;
    v84 = &v129;
    v80 = v56;
    selfCopy2 = self;
    v85 = v108;
    v16 = v43;
    v82 = v16;
    [v47 setQueryCompletionBlock:v78];
    [trackerCopy addDatabaseOperation:v47];
    MBGroupWaitForever();
    [v55 forgetManifests];
    v57 = v134[5];
    if (v57)
    {
      *error = v57;
    }

    else
    {
      v62 = *(*&buf[8] + 40);
      if (!v62)
      {
        [v72 addRefreshedSnapshotID:v56];
        +[NSDate timeIntervalSinceReferenceDate];
        v66 = v65;
        v59 = MBGetDefaultLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v67 = v66 - v15;
          *v139 = 138543618;
          *&v139[4] = v56;
          *&v139[12] = 2048;
          *&v139[14] = v67;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Finished refreshing snapshot %{public}@ in %.3fs", v139, 0x16u);
          _MBLog(@"Df", "Finished refreshing snapshot %{public}@ in %.3fs", v56, *&v67);
        }

        v18 = 1;
        goto LABEL_59;
      }

      *error = v62;
      if (v103[5] && [MBError isResumableCacheRefreshError:*(*&buf[8] + 40)])
      {
        v63 = MBGetDefaultLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v103[5];
          *v139 = 138543618;
          *&v139[4] = v56;
          *&v139[12] = 2114;
          *&v139[14] = v64;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Updating the query cursor for snapshot %{public}@: %{public}@", v139, 0x16u);
          _MBLog(@"Df", "Updating the query cursor for snapshot %{public}@: %{public}@", v56, v103[5]);
        }

        [v72 addQueryCursor:v103[5] forSnapshotID:v56];
        goto LABEL_55;
      }
    }

    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *v139 = 138543362;
      *&v139[4] = v55;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Resetting the query cursor for snapshot %{public}@", v139, 0xCu);
      _MBLog(@"Df", "Resetting the query cursor for snapshot %{public}@", v55);
    }

    [v72 forgetSnapshotID:v56];
LABEL_55:
    if (!*error)
    {
      __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 477, "*error");
    }

    v59 = MBGetDefaultLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *error;
      *v139 = 138543618;
      *&v139[4] = v56;
      *&v139[12] = 2114;
      *&v139[14] = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Failed to refresh snapshot %{public}@: %{public}@", v139, 0x16u);
      _MBLog(@"Df", "Failed to refresh snapshot %{public}@: %{public}@", v56, *error);
    }

    v18 = 0;
LABEL_59:

    _Block_object_dispose(&v102, 8);
    _Block_object_dispose(v108, 8);
    _Block_object_dispose(&v129, 8);
    _Block_object_dispose(&v133, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_60;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = snapshotID;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping snapshot %{public}@ since it's was already refreshed", buf, 0xCu);
    _MBLog(@"Df", "Skipping snapshot %{public}@ since it's was already refreshed", snapshotID);
  }

  v18 = 1;
LABEL_60:

  return v18;
}

- (BOOL)_verifySnapshotManifests:(id)manifests operationTracker:(id)tracker summary:(id)summary shouldOutput:(BOOL)output
{
  outputCopy = output;
  manifestsCopy = manifests;
  trackerCopy = tracker;
  summaryCopy = summary;
  selfCopy = self;
  cache = [(MBCKEngine *)self cache];
  if (!cache)
  {
    __assert_rtn("[MBCKEngine _verifySnapshotManifests:operationTracker:summary:shouldOutput:]", "MBCKEngine.m", 485, "cache");
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    snapshotID = [manifestsCopy snapshotID];
    *buf = 138543362;
    *&buf[4] = snapshotID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verifying snapshot %{public}@", buf, 0xCu);

    snapshotID2 = [manifestsCopy snapshotID];
    _MBLog(@"Df", "Verifying snapshot %{public}@", snapshotID2);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  if ([manifestsCopy snapshotFormat] == 3)
  {
    LOBYTE(v14) = 1;
    goto LABEL_53;
  }

  [manifestsCopy manifestIDs];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  obj = v70 = 0u;
  v15 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v15)
  {
    v14 = 1;
    goto LABEL_48;
  }

  v16 = *v70;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v70 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v69 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v19 = [obj indexOfObject:v18];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to find manifest %{public}@ - cannot validate cache", buf, 0xCu);
          _MBLog(@"E ", "Failed to find manifest %{public}@ - cannot validate cache", v18);
        }

LABEL_47:

        objc_autoreleasePoolPop(context);
        v14 = 0;
        goto LABEL_48;
      }

      v20 = [v18 substringFromIndex:{objc_msgSend(@"M:", "length")}];
      v68 = 0;
      v21 = [cache checksumForManifest:v20 error:&v68];
      v22 = v68;
      manifestChecksums = [manifestsCopy manifestChecksums];
      v24 = [manifestChecksums objectAtIndexedSubscript:v19];
      longLongValue = [v24 longLongValue];

      if (v22)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v20;
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to compute the checksum for the cached manifest %{public}@: %{public}@", buf, 0x16u);
          _MBLog(@"E ", "Failed to compute the checksum for the cached manifest %{public}@: %{public}@", v20, v22);
        }

        goto LABEL_25;
      }

      if (longLongValue != v21)
      {
        v27 = [cache countFilesForManifestID:v20 error:0];
        v26 = [cache domainNameForManifestID:v20 error:0];
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544386;
          *&buf[4] = v20;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          v75 = longLongValue;
          *v76 = 2048;
          *&v76[2] = v21;
          *&v76[10] = 2048;
          *&v76[12] = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Found a checksum mismatch for cached manifest %{public}@ %{public}@: %llx != %llx (%llu)", buf, 0x34u);
          _MBLog(@"E ", "Found a checksum mismatch for cached manifest %{public}@ %{public}@: %llx != %llx (%llu)", v20, v26, longLongValue, v21, v27);
        }

        snapshotID3 = [manifestsCopy snapshotID];
        [summaryCopy trackVerificationFailureForSnapshot:snapshotID3 manifestID:v18 domain:v26 serverChecksum:longLongValue localChecksum:v21 localFileCount:v27];

LABEL_25:
        if (outputCopy)
        {
          if (([manifestsCopy hasFetchedManifests] & 1) == 0)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v75 = sub_100081454;
            *v76 = sub_100081464;
            *&v76[8] = 0;
            v30 = dispatch_semaphore_create(0);
            v66 = buf;
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_100082EB8;
            v67[3] = &unk_1003BCCC8;
            v67[4] = selfCopy;
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_100082EFC;
            v64[3] = &unk_1003BC160;
            v31 = v30;
            v65 = v31;
            [manifestsCopy fetchManifestsWithOperationTracker:trackerCopy referenceFetchProgress:0 manifestProgress:v67 snapshotCompletion:v64];
            MBSemaphoreWaitForever();
            v32 = *(*&buf[8] + 40);

            _Block_object_dispose(buf, 8);
            v22 = v32;
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          manifestsByDomainName = [manifestsCopy manifestsByDomainName];
          v33 = [manifestsByDomainName countByEnumeratingWithState:&v60 objects:v73 count:16];
          if (v33)
          {
            v53 = *v61;
LABEL_30:
            v34 = 0;
            while (1)
            {
              if (*v61 != v53)
              {
                objc_enumerationMutation(manifestsByDomainName);
              }

              v35 = *(*(&v60 + 1) + 8 * v34);
              manifestsByDomainName2 = [manifestsCopy manifestsByDomainName];
              v37 = [manifestsByDomainName2 objectForKeyedSubscript:v35];

              manifestID = [v37 manifestID];
              LOBYTE(v35) = [manifestID isEqualToString:v20];

              if (v35)
              {
                break;
              }

              if (v33 == ++v34)
              {
                v33 = [manifestsByDomainName countByEnumeratingWithState:&v60 objects:v73 count:16];
                if (v33)
                {
                  goto LABEL_30;
                }

                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            v37 = 0;
          }

          v39 = MBGetDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            domainName = [v37 domainName];
            *buf = 138544130;
            *&buf[4] = v18;
            *&buf[12] = 2114;
            *&buf[14] = domainName;
            *&buf[22] = 2048;
            v75 = v21;
            *v76 = 2048;
            *&v76[2] = longLongValue;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Manifest %{public}@ (%{public}@) may be corrupted in the cache: 0x%llx != 0x%llx", buf, 0x2Au);

            domainName2 = [v37 domainName];
            _MBLog(@"E ", "Manifest %{public}@ (%{public}@) may be corrupted in the cache: 0x%llx != 0x%llx", v18, domainName2, v21, longLongValue);
          }

          if (MBIsInternalInstall() && !dword_100421654 && !atomic_fetch_add_explicit(&dword_100421654, 1u, memory_order_relaxed))
          {
            v42 = MBGetDefaultLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Snapshot did not verify", buf, 2u);
              _MBLog(@"F ", "Snapshot did not verify");
            }
          }
        }

        goto LABEL_47;
      }

      objc_autoreleasePoolPop(context);
    }

    v15 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    v14 = 1;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_48:

  +[NSDate timeIntervalSinceReferenceDate];
  v44 = v43;
  v45 = MBGetDefaultLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    snapshotID4 = [manifestsCopy snapshotID];
    v47 = v44 - v13;
    *buf = 138543874;
    *&buf[4] = snapshotID4;
    *&buf[12] = 2048;
    *&buf[14] = v47;
    *&buf[22] = 1024;
    LODWORD(v75) = v14;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Finished verifying snapshot %{public}@ in %.3fs: %d", buf, 0x1Cu);

    snapshotID5 = [manifestsCopy snapshotID];
    _MBLog(@"Df", "Finished verifying snapshot %{public}@ in %.3fs: %d", snapshotID5, *&v47, v14);
  }

  if (v14)
  {
    [manifestsCopy forgetManifests];
  }

LABEL_53:
  return v14;
}

- (BOOL)_refreshCacheWithDevice:(id)device operationTracker:(id)tracker refreshState:(id)state error:(id *)error
{
  deviceCopy = device;
  trackerCopy = tracker;
  stateCopy = state;
  if (!deviceCopy)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 558, "device");
  }

  v180 = trackerCopy;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 559, "tracker");
  }

  if (!stateCopy)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 560, "refreshState");
  }

  if (!error)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 561, "error");
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 563, "serviceManager");
  }

  v13 = serviceManager;
  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 565, "serviceAccount");
  }

  v15 = account;
  v16 = objc_opt_new();
  stateDescription = self->_stateDescription;
  self->_stateDescription = v16;

  if ([(MBCKEngine *)self handleCancelation:error])
  {
    LOBYTE(v18) = 0;
    goto LABEL_203;
  }

  errorCopy = error;
  cache = [(MBCKEngine *)self cache];
  v20 = cache;
  if (!cache)
  {
    [MBError errorWithCode:1 format:@"nil cache"];
    *error = LOBYTE(v18) = 0;
    goto LABEL_202;
  }

  v173 = v15;
  [cache beginBatch];
  selfCopy = self;
  v21 = objc_opt_new();
  [(MBCKEngine *)selfCopy setCacheRefreshSummary:v21];
  context = [(MBCKEngine *)selfCopy context];
  backupUDID = [context backupUDID];
  v24 = MBDeviceUUID();
  v25 = [backupUDID isEqualToString:v24];

  v174 = v21;
  if (v25)
  {
    [MBCKJournal journalForDevice:deviceCopy cache:v20 engine:selfCopy];
    v227 = 0;
    obj = v226 = 0;
    v26 = [obj replayWithOperationTracker:v180 actionCount:&v227 error:&v226];
    v27 = COERCE_DOUBLE(v226);
    [v21 setJournalActionCount:v227];
    if ((v26 & 1) == 0 && v27 != 0.0)
    {
      v28 = *&v27;
      *errorCopy = v27;
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v230 = v27;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to replay journal %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to replay journal %@", *&v27);
      }

      LOBYTE(v18) = 0;
      v15 = v173;
      goto LABEL_200;
    }

    [v21 setJournalReplaySucceeded:v26];
  }

  if (([deviceCopy hasFetchedSnapshots] & 1) == 0)
  {
    if (![deviceCopy fetchSnapshotsWithOperationTracker:v180 error:errorCopy])
    {
      LOBYTE(v18) = 0;
      v15 = v173;
      goto LABEL_201;
    }

    watchdog = [(MBEngine *)selfCopy watchdog];
    [watchdog resume];
  }

  v188 = v20;
  v170 = v13;
  snapshots = [deviceCopy snapshots];
  v169 = deviceCopy;
  snapshots2 = [deviceCopy snapshots];
  [v21 setServerSnapshotCount:{objc_msgSend(snapshots2, "count")}];

  v32 = +[NSDate date];
  [v32 timeIntervalSinceReferenceDate];
  v34 = v33;

  v27 = COERCE_DOUBLE([[NSMutableSet alloc] initWithCapacity:{objc_msgSend(snapshots, "count")}]);
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  obj = snapshots;
  v35 = [obj countByEnumeratingWithState:&v222 objects:v241 count:16];
  v187 = v27;
  if (v35)
  {
    v36 = v35;
    v37 = *v223;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v223 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v222 + 1) + 8 * i);
        v40 = objc_autoreleasePoolPush();
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = COERCE_DOUBLE([*&v187 count]);
            *buf = 134218242;
            v230 = v43;
            v231 = 2114;
            v232 = v39;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Found device record snapshot (%lu): %{public}@", buf, 0x16u);
          }

          v27 = v187;
          _MBLog(@"Df", "Found device record snapshot (%lu): %{public}@", [*&v187 count], v39);
        }

        snapshotID = [v39 snapshotID];
        [*&v27 addObject:snapshotID];

        objc_autoreleasePoolPop(v40);
      }

      v36 = [obj countByEnumeratingWithState:&v222 objects:v241 count:16];
    }

    while (v36);
  }

  v45 = MBGetDefaultLog();
  v13 = v170;
  v15 = v173;
  v20 = v188;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = COERCE_DOUBLE([*&v27 count]);
      *buf = 134217984;
      v230 = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Found %lu snapshots in the device record", buf, 0xCu);
    }

    _MBLog(@"Df", "Found %lu snapshots in the device record", [*&v27 count]);
  }

  v219[0] = _NSConcreteStackBlock;
  v219[1] = 3221225472;
  v219[2] = sub_100084B54;
  v219[3] = &unk_1003BCCF0;
  v190 = objc_opt_new();
  v220 = v190;
  v189 = COERCE_DOUBLE(v174);
  v221 = v189;
  [v188 enumerateSnapshots:v219];
  v178 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  if (v178 != 0.0)
  {
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = v48;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v230 = v178;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to fetch the snapshots from the local cache: %@", buf, 0xCu);
      }

      _MBLog(@"E ", "Failed to fetch the snapshots from the local cache: %@", *&v178);
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v50 = v18;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Resetting the cache (failed to enumerate the snapshots from the local cache)", buf, 2u);
      }

      _MBLog(@"E ", "Resetting the cache (failed to enumerate the snapshots from the local cache)");
    }

    LODWORD(v18) = [v170 resetCacheWithAccount:v173 error:errorCopy];
    v218 = 0;
    [v170 openCacheWithAccount:v173 accessType:1 error:&v218];
    v51 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v52 = v218;
    [(MBCKEngine *)selfCopy setCache:*&v51];
    if (!v18)
    {
      v78 = v178;
      goto LABEL_199;
    }

    if (v51 == 0.0)
    {
      __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 637, "cache");
    }
  }

  v53 = MBGetDefaultLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = v53;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = COERCE_DOUBLE([v190 count]);
      *buf = 134217984;
      v230 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Found %lu snapshots in the local cache", buf, 0xCu);
    }

    _MBLog(@"Df", "Found %lu snapshots in the local cache", [v190 count]);
  }

  v56 = [v190 mutableCopy];
  [v56 minusSet:*&v27];
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v168 = v56;
  allObjects = [v56 allObjects];
  v58 = [allObjects countByEnumeratingWithState:&v214 objects:v240 count:16];
  v182 = v58 != 0;
  if (v58)
  {
    v59 = v58;
    v60 = *v215;
    do
    {
      for (j = 0; j != v59; j = j + 1)
      {
        if (*v215 != v60)
        {
          objc_enumerationMutation(allObjects);
        }

        v62 = *(*(&v214 + 1) + 8 * j);
        v63 = MBGetDefaultLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v63;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v230 = v62;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Removing cache-only snapshot %{public}@", buf, 0xCu);
          }

          _MBLog(@"Df", "Removing cache-only snapshot %{public}@", *&v62);
        }

        [*&v189 setCacheOnlySnapshotCount:{objc_msgSend(*&v189, "cacheOnlySnapshotCount") + 1}];
        v65 = [v188 removeSnapshotID:*&v62];
        [v190 removeObject:*&v62];
      }

      v59 = [allObjects countByEnumeratingWithState:&v214 objects:v240 count:16];
    }

    while (v59);
  }

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v66 = obj;
  v67 = [v66 countByEnumeratingWithState:&v210 objects:v239 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v211;
    v70 = v188;
    do
    {
      for (k = 0; k != v68; k = k + 1)
      {
        if (*v211 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v72 = *(*(&v210 + 1) + 8 * k);
        v73 = objc_autoreleasePoolPush();
        [v72 snapshotID];
        v74 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if ([v190 containsObject:*&v74] && !-[MBCKEngine _verifySnapshotManifests:operationTracker:summary:shouldOutput:](selfCopy, "_verifySnapshotManifests:operationTracker:summary:shouldOutput:", v72, v180, *&v189, 0))
        {
          v75 = MBGetDefaultLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v75;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v230 = v74;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Removing unverified snapshot %{public}@", buf, 0xCu);
            }

            _MBLog(@"Df", "Removing unverified snapshot %{public}@", *&v74);
          }

          [*&v189 setJournalVerificationErrorCount:{objc_msgSend(*&v189, "journalVerificationErrorCount") + 1}];
          v70 = v188;
          v77 = [v188 removeSnapshotID:*&v74];
          [v190 removeObject:*&v74];
          [stateCopy forgetSnapshotID:*&v74];
          [(NSMutableString *)selfCopy->_stateDescription appendFormat:@"mismatch(%@), ", *&v74];
          v182 = 1;
        }

        objc_autoreleasePoolPop(v73);
      }

      v68 = [v66 countByEnumeratingWithState:&v210 objects:v239 count:16];
    }

    while (v68);
  }

  else
  {
    v70 = v188;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v80 = v79 - v34;
  v81 = MBGetDefaultLog();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = v81;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v230 = v80;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Analyzed existing cache in %0.3fs", buf, 0xCu);
    }

    _MBLog(@"Df", "Analyzed existing cache in %0.3fs", v80);
  }

  v83 = [NSNumber numberWithDouble:v80];
  [(NSMutableDictionary *)selfCopy->_performanceStatistics setObject:v83 forKeyedSubscript:@"CacheAnalysis"];

  if ([*&v189 journalVerificationErrorCount])
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v85 = v84;
    removeAllOrphanedItems = [v70 removeAllOrphanedItems];
    +[NSDate timeIntervalSinceReferenceDate];
    v88 = v87;
    v89 = MBGetDefaultLog();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = v88 - v85;
      v91 = v89;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v230 = v90;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Removed orphaned items in %0.3fs", buf, 0xCu);
      }

      _MBLog(@"Df", "Removed orphaned items in %0.3fs", v90);
    }
  }

  v92 = +[NSDate date];
  [v92 timeIntervalSinceReferenceDate];
  v94 = v93;

  progressModel = [(MBCKEngine *)selfCopy progressModel];
  [progressModel willTransferItemsWithSize:0 count:{objc_msgSend(v66, "count")}];

  v184 = COERCE_DOUBLE(objc_opt_new());
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v96 = v66;
  v97 = [v96 countByEnumeratingWithState:&v206 objects:v238 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v207;
    do
    {
      for (m = 0; m != v98; m = m + 1)
      {
        if (*v207 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = *(*(&v206 + 1) + 8 * m);
        [v101 snapshotID];
        v102 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        productVersion = [v101 productVersion];
        requiredProductVersion = [v101 requiredProductVersion];
        v105 = MBGetDefaultLog();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v106 = v105;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v230 = v102;
            v231 = 2114;
            v232 = productVersion;
            v233 = 2114;
            v234 = requiredProductVersion;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "snapshot:%{public}@, productVersion:%{public}@, requiredProductVersion:%{public}@", buf, 0x20u);
          }

          _MBLog(@"Df", "snapshot:%{public}@, productVersion:%{public}@, requiredProductVersion:%{public}@", *&v102, productVersion, requiredProductVersion);
        }

        if (productVersion)
        {
          [*&v184 setObject:requiredProductVersion forKeyedSubscript:productVersion];
        }
      }

      v98 = [v96 countByEnumeratingWithState:&v206 objects:v238 count:16];
    }

    while (v98);
  }

  v107 = MBGetDefaultLog();
  v13 = v170;
  p_isa = &selfCopy->super.super.isa;
  v27 = v187;
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v109 = v107;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v230 = v184;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "requiredProductVersionByProductVersion: %{public}@", buf, 0xCu);
    }

    _MBLog(@"Df", "requiredProductVersionByProductVersion: %{public}@", *&v184);
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v175 = v96;
  v110 = [v175 countByEnumeratingWithState:&v202 objects:v237 count:16];
  if (!v110)
  {
    v78 = 0.0;
    goto LABEL_150;
  }

  v111 = v110;
  v112 = *v203;
  v171 = *v203;
  while (2)
  {
    v113 = 0;
    v172 = v111;
    do
    {
      if (*v203 != v112)
      {
        objc_enumerationMutation(v175);
      }

      v114 = *(*(&v202 + 1) + 8 * v113);
      v115 = objc_autoreleasePoolPush();
      [v114 snapshotID];
      v116 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      productVersion2 = [v114 productVersion];
      if (productVersion2)
      {
        v181 = [*&v184 objectForKeyedSubscript:productVersion2];
      }

      else
      {
        v181 = 0;
      }

      device = [v114 device];
      deviceClass = [device deviceClass];

      v119 = MBGetDefaultLog();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = v119;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v230 = v116;
          v231 = 2114;
          v232 = productVersion2;
          v233 = 2114;
          v234 = v181;
          v235 = 2114;
          v236 = deviceClass;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "snapshot:%{public}@, productVersion:%{public}@, requiredProductVersion:%{public}@, snapshotDeviceClass:%{public}@", buf, 0x2Au);
        }

        _MBLog(@"Df", "snapshot:%{public}@, productVersion:%{public}@, requiredProductVersion:%{public}@, snapshotDeviceClass:%{public}@", *&v116, productVersion2, v181, deviceClass);
      }

      if ([(MBEngine *)selfCopy isRestoreEngine])
      {
        v121 = MBProductVersion();
        v122 = MBIsRestoreCompatible();

        if (!v122)
        {
          v177 = productVersion2;
          v126 = v116;
          v78 = 0.0;
          goto LABEL_146;
        }
      }

      if ([(MBEngine *)selfCopy isBackupEngine])
      {
        v123 = MBProductVersion();
        v124 = MBCompareVersionStrings();

        if (v124 == -1)
        {
          v177 = productVersion2;
          v126 = v116;
          [MBError errorWithCode:203 format:@"Version incompatible. iCloud contains a backup for this device from a newer OS version"];
          v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_146:
          p_isa = &selfCopy->super.super.isa;
LABEL_149:

          objc_autoreleasePoolPop(v115);
          v13 = v170;
          goto LABEL_150;
        }
      }

      if ([v190 containsObject:*&v116])
      {
        MBGetDefaultLog();
        *&v125 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          *&v125 = COERCE_DOUBLE(v125);
          p_isa = &selfCopy->super.super.isa;
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v230 = v116;
            _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Skipping snapshot %{public}@ since it's already in the cache", buf, 0xCu);
          }

          _MBLog(@"Df", "Skipping snapshot %{public}@ since it's already in the cache", *&v116);
        }

        else
        {
          p_isa = &selfCopy->super.super.isa;
        }

        goto LABEL_140;
      }

      v177 = productVersion2;
      v126 = v116;
      [*&v189 setDownloadedSnapshotCount:{objc_msgSend(*&v189, "downloadedSnapshotCount") + 1}];
      v201 = 0;
      v127 = [(MBCKEngine *)selfCopy _refreshSnapshot:v114 operationTracker:v180 refreshState:stateCopy error:&v201];
      v128 = v201;
      v129 = v128;
      if (!v127)
      {
        p_isa = &selfCopy->super.super.isa;
        v78 = *&v128;
        goto LABEL_149;
      }

      [(NSMutableString *)selfCopy->_stateDescription appendFormat:@"fetched(%@), ", *&v116];
      if ([(MBCKEngine *)selfCopy _verifySnapshotManifests:v114 operationTracker:v180 summary:*&v189 shouldOutput:1])
      {
        v125 = v129;
        v182 = 1;
        p_isa = &selfCopy->super.super.isa;
        v112 = v171;
        v111 = v172;
      }

      else
      {
        v130 = MBGetDefaultLog();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          v131 = v130;
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v230 = v116;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Failed to verify snapshot %{public}@", buf, 0xCu);
          }

          _MBLog(@"E ", "Failed to verify snapshot %{public}@", *&v116);
        }

        [*&v189 setDownloadedSnapshotVerificationFailureCount:{objc_msgSend(*&v189, "downloadedSnapshotVerificationFailureCount") + 1}];
        [stateCopy forgetSnapshotID:*&v116];
        v200 = v129;
        v132 = [(MBCKEngine *)selfCopy _refreshSnapshot:v114 operationTracker:v180 refreshState:stateCopy error:&v200];
        *&v125 = COERCE_DOUBLE(v200);

        if (!v132)
        {
          v78 = *&v125;
          p_isa = &selfCopy->super.super.isa;
          goto LABEL_149;
        }

        [(NSMutableString *)selfCopy->_stateDescription appendFormat:@"fetched(%@), ", *&v116];
        v182 = 1;
        p_isa = &selfCopy->super.super.isa;
        v112 = v171;
        v111 = v172;
      }

      productVersion2 = v177;
LABEL_140:

      objc_autoreleasePoolPop(v115);
      v113 = v113 + 1;
    }

    while (v111 != v113);
    v111 = [v175 countByEnumeratingWithState:&v202 objects:v237 count:16];
    v78 = 0.0;
    v13 = v170;
    if (v111)
    {
      continue;
    }

    break;
  }

LABEL_150:

  v15 = v173;
  v20 = v188;
  if (MBIsInternalInstall())
  {
    v133 = v189;
    if ([*&v189 downloadedSnapshotCount] && objc_msgSend(*&v189, "cachedSnapshotCount") && !dword_100421658 && !atomic_fetch_add_explicit(&dword_100421658, 1u, memory_order_relaxed))
    {
      v134 = MBGetDefaultLog();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
      {
        v135 = v134;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v230 = v189;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_FAULT, "Downloaded snapshot during cache refresh: %@", buf, 0xCu);
        }

        _MBLog(@"F ", "Downloaded snapshot during cache refresh: %@", *&v189);
      }

      v133 = v189;
    }

    persona = [v173 persona];
    v137 = v133;
    v138 = persona;
    dictionaryRepresentation = [*&v137 dictionaryRepresentation];
    [v138 setPreferencesValue:dictionaryRepresentation forKey:@"WasSnapshotDownloadedDuringCacheRefresh"];
  }

  if ([p_isa handleCancelation:errorCopy])
  {
LABEL_162:
    LOBYTE(v18) = 0;
  }

  else if (v78 == 0.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v142 = v141 - v94;
    v143 = [NSNumber numberWithDouble:v142];
    [p_isa[27] setObject:v143 forKeyedSubscript:@"CacheFetchTime"];

    v144 = MBGetDefaultLog();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v145 = v144;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v230 = v142;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Fetched all missing snapshots in %0.3fs", buf, 0xCu);
      }

      _MBLog(@"Df", "Fetched all missing snapshots in %0.3fs", v142);
    }

    if (v182)
    {
      v146 = +[NSDate date];
      [v146 timeIntervalSinceReferenceDate];
      v148 = v147;

      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v149 = v175;
      v150 = [v149 countByEnumeratingWithState:&v196 objects:v228 count:16];
      if (v150)
      {
        v151 = v150;
        v152 = 0;
        v153 = *v197;
        do
        {
          for (n = 0; n != v151; n = n + 1)
          {
            if (*v197 != v153)
            {
              objc_enumerationMutation(v149);
            }

            v152 |= [p_isa _verifySnapshotManifests:*(*(&v196 + 1) + 8 * n) operationTracker:v180 summary:*&v189 shouldOutput:1] ^ 1;
          }

          v151 = [v149 countByEnumeratingWithState:&v196 objects:v228 count:16];
        }

        while (v151);
      }

      else
      {
        LOBYTE(v152) = 0;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v156 = v155 - v148;
      v157 = MBGetDefaultLog();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v158 = v157;
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v230 = v156;
          _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Validated all snapshots in %0.3fs", buf, 0xCu);
        }

        _MBLog(@"Df", "Validated all snapshots in %0.3fs", v156);
      }

      v159 = [NSNumber numberWithDouble:v156];
      [p_isa[27] setObject:v159 forKeyedSubscript:@"CacheValidationTime"];

      if (v152)
      {
        v160 = MBGetDefaultLog();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          v161 = v160;
          if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "CK Cache is corrupted - continuing anyways", buf, 2u);
          }

          _MBLog(@"E ", "CK Cache is corrupted - continuing anyways");
        }

        [p_isa[26] appendFormat:@"forced-rebuild, "];
      }

      v191[0] = _NSConcreteStackBlock;
      v191[1] = 3221225472;
      v191[2] = sub_100084C80;
      v191[3] = &unk_1003BCD18;
      v192 = v188;
      v193 = v149;
      v194 = p_isa;
      v195 = v169;
      [v192 performInTransaction:v191];
      v162 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (v162 == 0.0)
      {
        v166 = 0;
      }

      else
      {
        v163 = MBGetDefaultLog();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          v164 = v163;
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v230 = v162;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "Failed to save the snapshots and update the FileChanges table: %{public}@", buf, 0xCu);
          }

          _MBLog(@"E ", "Failed to save the snapshots and update the FileChanges table: %{public}@", *&v162);
        }

        v165 = *&v162;
        *errorCopy = v162;
        v166 = 78;
      }

      v15 = v173;

      if (v166 == 78)
      {
        if (!*errorCopy)
        {
          __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 809, "*error");
        }

        v78 = 0.0;
        goto LABEL_162;
      }
    }

    [v188 flush];
    v78 = 0.0;
    LOBYTE(v18) = 1;
  }

  else
  {
    v140 = *&v78;
    LOBYTE(v18) = 0;
    *errorCopy = v78;
  }

  v52 = v168;
  v51 = v184;
LABEL_199:

  deviceCopy = v169;
LABEL_200:

LABEL_201:
LABEL_202:

LABEL_203:
  return v18;
}

- (BOOL)refreshCacheWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 836, "error");
  }

  device = [(MBCKEngine *)self device];
  v6 = device;
  if (!device)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 838, "device");
  }

  deviceUUID = [device deviceUUID];
  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 841, "serviceManager");
  }

  cache = [(MBCKEngine *)self cache];
  if (!cache)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 843, "cache");
  }

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 845, "serviceAccount");
  }

  v8 = [MBCacheRefreshState loadFromCache:cache];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = deviceUUID;
    v45 = 2114;
    v46 = *&v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting cache refresh for device %{public}@ with cache refresh state: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Starting cache refresh for device %{public}@ with cache refresh state: %{public}@", deviceUUID, v8);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  if (![(MBCKEngine *)self handleCancelation:error])
  {
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      ckOperationPolicy = [(MBCKEngine *)self ckOperationPolicy];
      v15 = ckOperationPolicy;
      if (!ckOperationPolicy)
      {
        __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 860, "policy");
      }

      v16 = [ckOperationPolicy operationGroupWithName:@"refreshCache" processName:0];
      databaseManager = [serviceManager databaseManager];
      ckOperationTracker = [MBCKOperationTracker operationTrackerWithAccount:serviceAccount databaseManager:databaseManager policy:v15 error:error];

      [ckOperationTracker setCkOperationGroup:v16];
      if (!ckOperationTracker)
      {
        v12 = 0;
        goto LABEL_38;
      }

      [(MBCKEngine *)self setCkOperationTracker:ckOperationTracker];
    }

    v18 = v6;
    objc_sync_enter(v18);
    v42 = 0;
    v19 = [(MBCKEngine *)self _refreshCacheWithDevice:v18 operationTracker:ckOperationTracker refreshState:v8 error:&v42];
    v20 = v42;
    objc_sync_exit(v18);

    +[NSDate timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22 - v11;
      *buf = 138543874;
      v44 = deviceUUID;
      v45 = 2048;
      v46 = v24;
      v47 = 2114;
      v48 = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Finished cache refresh for device %{public}@ in %.3fs with state: %{public}@", buf, 0x20u);
      _MBLog(@"Df", "Finished cache refresh for device %{public}@ in %.3fs with state: %{public}@", deviceUUID, *&v24, v8);
    }

    if (v19)
    {
      v39 = v20;
      v25 = [MBCacheRefreshState saveRefreshState:0 toCache:cache error:&v39];
      v16 = v39;

      if (v25)
      {
        v12 = 1;
LABEL_37:
        v15 = ckOperationTracker;
LABEL_38:

        goto LABEL_39;
      }

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to clear cache refresh state: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to clear cache refresh state: %@", v16);
      }

      v31 = v16;
      *error = v16;
      v32 = v16;
LABEL_35:
      if (!v32)
      {
        __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 898, "result || *error");
      }

      v12 = 0;
      goto LABEL_37;
    }

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v44 = deviceUUID;
      v45 = 2112;
      v46 = *&v20;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed cache refresh for device %{public}@: %@", buf, 0x16u);
      _MBLog(@"Df", "Failed cache refresh for device %{public}@: %@", deviceUUID, v20);
    }

    v27 = v20;
    *error = v20;
    if ([MBError isResumableCacheRefreshError:v20])
    {
      v41 = v20;
      v28 = [MBCacheRefreshState saveRefreshState:v8 toCache:cache error:&v41];
      v16 = v41;

      if (v28)
      {
LABEL_34:
        v32 = *error;
        goto LABEL_35;
      }

      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to set cache refresh state: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to set cache refresh state: %@", v16);
      }
    }

    else
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Not saving cache refresh state for non-resumable error: %@", buf, 0xCu);
        _MBLog(@"I ", "Not saving cache refresh state for non-resumable error: %@", v20);
      }

      v40 = v20;
      v34 = [MBCacheRefreshState saveRefreshState:0 toCache:cache error:&v40];
      v16 = v40;

      if (v34)
      {
        goto LABEL_34;
      }

      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to clear cache refresh state: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to clear cache refresh state: %@", v16);
      }
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (BOOL)setUpWithError:(id *)error
{
  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKEngine setUpWithError:]", "MBCKEngine.m", 904, "serviceManager");
  }

  v6 = serviceManager;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKEngine setUpWithError:]", "MBCKEngine.m", 906, "serviceAccount");
  }

  v8 = serviceAccount;
  cache = [(MBCKEngine *)self cache];
  if (cache)
  {
    v10 = cache;
  }

  else
  {
    v10 = [v6 openCacheWithAccount:v8 accessType:1 error:error];
    if (!v10)
    {
      v11 = 0;
      goto LABEL_8;
    }

    [(MBCKEngine *)self setCache:v10];
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (void)makeStateTransition
{
  if (![(MBCKEngine *)self isFinished]&& [(MBCKEngine *)self shouldAdvanceState])
  {
    stateDescription = self->_stateDescription;
    self->_stateDescription = 0;

    [(MBCKEngine *)self makeStateTransition];
  }
}

- (void)performRetryablePhase:(id)phase
{
  phaseCopy = phase;
  injectedError = [(MBCKEngine *)self injectedError];

  if (injectedError)
  {
    [(MBCKEngine *)self setIsFinished:1];
    injectedError2 = [(MBCKEngine *)self injectedError];
    [(MBCKEngine *)self setEngineError:injectedError2];

    injectedError3 = [(MBCKEngine *)self injectedError];
    [(MBCKEngine *)self cleanUpAfterError:injectedError3];
  }

  else
  {
    retryStrategy = [(MBCKEngine *)self retryStrategy];
    [retryStrategy reset];

    watchdog = [(MBEngine *)self watchdog];
    [watchdog resume];

    v10 = objc_autoreleasePoolPush();
    v33 = 0;
    v11 = [(MBCKEngine *)self handleCancelation:&v33];
    v12 = v33;
    if (v11)
    {
LABEL_4:
      [(MBCKEngine *)self setIsFinished:1];
      [(MBCKEngine *)self setEngineError:v12];
    }

    else
    {
      v13 = MBError_ptr;
      while (1)
      {
        v32 = 0;
        v14 = [(MBCKEngine *)self setUpOperationTrackerWithError:&v32];
        v15 = v32;
        v16 = v15;
        if (!v14)
        {
          [(MBCKEngine *)self setIsFinished:1];
          [(MBCKEngine *)self setEngineError:v16];
LABEL_20:
          v27 = v12;
          goto LABEL_21;
        }

        v31 = 0;
        v17 = phaseCopy[2](phaseCopy, &v31);
        v18 = v31;
        v16 = v18;
        if (v17)
        {
          goto LABEL_20;
        }

        if (!v18)
        {
          v19 = [v13[101] stringWithFormat:@"block returned NO without setting an out error: %@", self];
          if (MBIsInternalInstall())
          {
            v20 = v13;
            v21 = +[NSAssertionHandler currentHandler];
            v22 = [v20[101] stringWithUTF8String:"-[MBCKEngine performRetryablePhase:]"];
            [v21 handleFailureInFunction:v22 file:@"MBCKEngine.m" lineNumber:975 description:v19];
          }

          else
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              selfCopy2 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
              _MBLog(@"F ", "%@", v19);
            }
          }

          v13 = MBError_ptr;
        }

        retryStrategy2 = [(MBCKEngine *)self retryStrategy];
        v24 = [retryStrategy2 shouldRetryAfterError:v16];

        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v36 = 2112;
          v37 = v16;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Retrying transition for %{public}@ after error: %@", buf, 0x16u);
          _MBLog(@"Df", "Retrying transition for %{public}@ after error: %@", self, v16);
        }

        objc_autoreleasePoolPop(v10);
        v10 = objc_autoreleasePoolPush();
        v33 = 0;
        v26 = [(MBCKEngine *)self handleCancelation:&v33];
        v12 = v33;
        if (v26)
        {
          goto LABEL_4;
        }
      }

      v30 = v12;
      v28 = [(MBCKEngine *)self handleCancelation:&v30];
      v27 = v30;

      if (v28)
      {
        [(MBCKEngine *)self setIsFinished:1];
        [(MBCKEngine *)self setEngineError:v27];
      }

      else
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v36 = 2112;
          v37 = v16;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Not retrying transition for %{public}@ after error: %@", buf, 0x16u);
          _MBLog(@"I ", "Not retrying transition for %{public}@ after error: %@", self, v16);
        }

        [(MBCKEngine *)self setIsFinished:1];
        [(MBCKEngine *)self setEngineError:v16];
        [(MBCKEngine *)self cleanUpAfterError:v16];
      }

LABEL_21:
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)account error:(id *)error
{
  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKEngine fetchDeviceToDeviceEncryptionSupportedByAccount:error:]", "MBCKEngine.m", 1004, "serviceManager");
  }

  v8 = serviceManager;
  databaseManager = [serviceManager databaseManager];
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  v11 = [databaseManager fetchDeviceToDeviceEncryptionSupportedByAccount:account account:serviceAccount error:error];

  return v11;
}

- (void)replenishRetryTokens
{
  retryStrategy = [(MBCKEngine *)self retryStrategy];
  [retryStrategy replenishRetryTokens];
}

- (BOOL)backsUpPrimaryAccount
{
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKEngine backsUpPrimaryAccount]", "MBCKEngine.m", 1016, "serviceAccount");
  }

  v3 = serviceAccount;
  isPrimaryAccount = [serviceAccount isPrimaryAccount];

  return isPrimaryAccount;
}

- (BOOL)isNetworkAvailable
{
  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKEngine isNetworkAvailable]", "MBCKEngine.m", 1028, "serviceManager");
  }

  v4 = serviceManager;
  networkConnectivity = [serviceManager networkConnectivity];
  ckOperationPolicy = [(MBCKEngine *)self ckOperationPolicy];
  cellularAccess = [ckOperationPolicy cellularAccess];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v12 = networkConnectivity & 1;
    v13 = 1024;
    v14 = (networkConnectivity >> 8) & 1;
    v15 = 1024;
    v16 = HIWORD(networkConnectivity) & 1;
    v17 = 2114;
    v18 = cellularAccess;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isOnWiFi:%d, isOnCellular:%d(%d), cellularAccess:%{public}@", buf, 0x1Eu);
    _MBLog(@"Df", "isOnWiFi:%d, isOnCellular:%d(%d), cellularAccess:%{public}@", networkConnectivity & 1, (networkConnectivity >> 8) & 1, HIWORD(networkConnectivity) & 1, cellularAccess);
  }

  if (networkConnectivity)
  {
LABEL_5:
    allowsExpensiveNetworkAccess = 1;
    goto LABEL_6;
  }

  allowsExpensiveNetworkAccess = 0;
  if ((networkConnectivity & 0x100) != 0 && cellularAccess)
  {
    if ((networkConnectivity & 0x10000) != 0)
    {
      allowsExpensiveNetworkAccess = [cellularAccess allowsExpensiveNetworkAccess];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  return allowsExpensiveNetworkAccess;
}

- (id)setUpOperationTrackerWithError:(id *)error
{
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1044, "serviceAccount");
  }

  v6 = serviceAccount;
  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1046, "serviceManager");
  }

  v8 = serviceManager;
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  v10 = ckOperationTracker;
  if (ckOperationTracker)
  {
    ckOperationPolicy = [ckOperationTracker ckOperationPolicy];
    ckOperationGroup = [v10 ckOperationGroup];
    ckOperationGroup2 = ckOperationGroup;
    if (ckOperationPolicy)
    {
      if (ckOperationGroup)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }
  }

  else
  {
    ckOperationGroup2 = 0;
  }

  ckOperationPolicy = [(MBCKEngine *)self ckOperationPolicy];
  if (ckOperationGroup2)
  {
LABEL_6:
    if (ckOperationPolicy)
    {
      goto LABEL_7;
    }

LABEL_28:
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1060, "policy");
  }

LABEL_27:
  ckOperationGroup2 = [(MBCKEngine *)self ckOperationGroup];
  if (!ckOperationPolicy)
  {
    goto LABEL_28;
  }

LABEL_7:
  if (!ckOperationGroup2)
  {
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1061, "group");
  }

  cellularAccess = [ckOperationPolicy cellularAccess];
  if ([(MBEngine *)self isRestoreEngine]&& [(MBEngine *)self restoreType]== 2)
  {
    cellularAccess2 = [v8 cellularAccessForRestoreType:-[MBEngine restoreType](self account:{"restoreType"), v6}];
  }

  else
  {
    cellularAccess2 = [ckOperationPolicy cellularAccess];
  }

  v16 = cellularAccess2;
  v24 = v8;
  if (v10 && (cellularAccess == cellularAccess2 || ([cellularAccess isEqual:cellularAccess2] & 1) != 0))
  {
    v17 = ckOperationPolicy;
    v18 = v10;
  }

  else
  {
    v17 = [ckOperationPolicy copy];

    [v17 setCellularAccess:v16];
    databaseManager = [v8 databaseManager];
    v18 = [MBCKOperationTracker operationTrackerWithAccount:v6 databaseManager:databaseManager policy:v17 group:ckOperationGroup2 error:error];

    if (!v18)
    {
      goto LABEL_22;
    }

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v26 = v16;
      v27 = 2114;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Created a new operation tracker with cellularAccess:%{public}@ for %{public}@", buf, 0x16u);
      _MBLog(@"I ", "Created a new operation tracker with cellularAccess:%{public}@ for %{public}@", v16, self);
    }

    [(MBCKEngine *)self setCkOperationTracker:v18];
    if ([(MBEngine *)self isCanceled])
    {
      [v18 cancel];
    }
  }

  qualityOfService = [(MBCKEngine *)self qualityOfService];
  ckOperationPolicy2 = [v18 ckOperationPolicy];
  [ckOperationPolicy2 setQualityOfService:qualityOfService];

LABEL_22:

  return v18;
}

- (MBCKManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceManager);

  return WeakRetained;
}

@end