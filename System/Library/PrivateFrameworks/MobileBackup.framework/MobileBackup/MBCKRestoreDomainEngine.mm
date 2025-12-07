@interface MBCKRestoreDomainEngine
- (BOOL)finalizeRestoredDomainWithError:(id *)error;
- (BOOL)isRestoringToSameDevice;
- (BOOL)restoreFilesWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (MBCKRestoreDomainEngine)initWithRestoreEngine:(id)engine enumeratorCache:(id)cache domain:(id)domain;
- (MBCKRestoreEngine)parentEngine;
- (id)restorePolicy;
- (int)restoreType;
- (void)_handleStateTransition;
- (void)cleanUpAfterError:(id)error;
- (void)makeStateTransition;
- (void)resume;
@end

@implementation MBCKRestoreDomainEngine

- (MBCKRestoreDomainEngine)initWithRestoreEngine:(id)engine enumeratorCache:(id)cache domain:(id)domain
{
  engineCopy = engine;
  cacheCopy = cache;
  domainCopy = domain;
  if (!engineCopy)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 52, "engine");
  }

  v11 = domainCopy;
  ckOperationPolicy = [engineCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 54, "policy");
  }

  v13 = ckOperationPolicy;
  ckOperationTracker = [engineCopy ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 56, "tracker");
  }

  v15 = ckOperationTracker;
  cache = [engineCopy cache];
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 58, "cache");
  }

  v17 = cache;
  serviceManager = [engineCopy serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 60, "serviceManager");
  }

  v19 = serviceManager;
  device = [engineCopy device];
  if (!device)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 62, "device");
  }

  v21 = device;
  obj = domain;
  v35 = v11;
  [engineCopy context];
  v34 = v21;
  v22 = v19;
  v23 = v17;
  v24 = v15;
  v25 = v13;
  v27 = v26 = cacheCopy;
  debugContext = [engineCopy debugContext];
  domainManager = [engineCopy domainManager];
  v36.receiver = self;
  v36.super_class = MBCKRestoreDomainEngine;
  v30 = [(MBCKEngine *)&v36 initWithSettingsContext:v27 debugContext:debugContext domainManager:domainManager];

  if (v30)
  {
    [(MBCKEngine *)v30 setServiceManager:v22];
    [(MBCKEngine *)v30 setCkOperationPolicy:v25];
    [(MBCKEngine *)v30 setCkOperationTracker:v24];
    [(MBCKRestoreDomainEngine *)v30 setParentEngine:engineCopy];
    [(MBCKRestoreDomainEngine *)v30 setRestoreState:1];
    objc_storeStrong(&v30->_domain, obj);
    [(MBCKEngine *)v30 setDevice:v34];
    [(MBCKEngine *)v30 setShouldAdvanceState:1];
    [(MBCKEngine *)v30 setCache:v23];
    [(MBCKRestoreDomainEngine *)v30 setEnumeratorCache:v26];
    targetSnapshot = [engineCopy targetSnapshot];
    [(MBCKRestoreDomainEngine *)v30 setTargetSnapshot:targetSnapshot];
  }

  return v30;
}

- (int)restoreType
{
  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  restoreType = [parentEngine restoreType];

  return restoreType;
}

- (BOOL)isRestoringToSameDevice
{
  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  device = [parentEngine device];
  deviceUUID = [device deviceUUID];
  v5 = MBDeviceUUID();
  v6 = [deviceUUID isEqualToString:v5];

  return v6;
}

- (id)restorePolicy
{
  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  restorePolicy = [parentEngine restorePolicy];

  return restorePolicy;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  domain = [(MBCKRestoreDomainEngine *)self domain];
  name = [domain name];
  if (([MBDomain isAppName:name]& 1) != 0 || ([MBDomain isAppPluginName:name]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [MBDomain isAppGroupName:name];
  }

  if (![(MBEngine *)self isBackgroundRestore]|| !v7 || ![MBError isRetryableRestoreError:errorCopy])
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = errorCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "=ckdomain-engine= Removing staged items for %{public}@ with error %@", buf, 0x16u);
      _MBLog(@"F ", "=ckdomain-engine= Removing staged items for %{public}@ with error %@", name, errorCopy);
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100119530;
    v34[3] = &unk_1003BF078;
    v34[4] = self;
    v35 = domain;
    v37 = &v39;
    v10 = name;
    v36 = v10;
    v38 = &v43;
    v11 = objc_retainBlock(v34);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = sub_100119BC0;
    v54 = sub_100119BD0;
    v55 = 0;
    cache = [(MBCKEngine *)self cache];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100119BD8;
    v31[3] = &unk_1003BF0A0;
    v33 = buf;
    v13 = v11;
    v32 = v13;
    v14 = [cache enumeratePendingRestoreFilesForDomain:v10 excludingType:1 foundRestorable:v31];

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v44[3];
      *v48 = 134218242;
      v49 = v16;
      v50 = 2114;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed a total of %llu files for %{public}@", v48, 0x16u);
      _MBLog(@"Df", "=ckdomain-engine= Removed a total of %llu files for %{public}@", v44[3], v10);
    }

    v17 = *(*&buf[8] + 40);
    if (v14)
    {
      if (!v17)
      {
LABEL_20:
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v48 = 138543362;
          v49 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate restore files to cleanup after error: %{public}@", v48, 0xCu);
          _MBLog(@"E ", "=ckdomain-engine= Failed to enumerate restore files to cleanup after error: %{public}@", v14);
        }

        goto LABEL_33;
      }

LABEL_19:
      v18 = v17;

      v14 = v18;
      goto LABEL_20;
    }

    if (v17)
    {
      goto LABEL_19;
    }

    cache2 = [(MBCKEngine *)self cache];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100119C34;
    v28[3] = &unk_1003BF0A0;
    v30 = buf;
    v29 = v13;
    v14 = [cache2 enumeratePendingRestoreFilesForDomain:v10 forType:1 orderAscending:0 foundRestorable:v28];

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v40[3];
      *v48 = 134218242;
      v49 = v22;
      v50 = 2114;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed a total of %llu dirs for %{public}@", v48, 0x16u);
      _MBLog(@"Df", "=ckdomain-engine= Removed a total of %llu dirs for %{public}@", v40[3], v10);
    }

    v23 = *(*&buf[8] + 40);
    if (v14)
    {
      if (!v23)
      {
LABEL_29:
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v48 = 138543362;
          v49 = v14;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate pending restore directories to cleanup after error: %{public}@", v48, 0xCu);
          _MBLog(@"E ", "=ckdomain-engine= Failed to enumerate pending restore directories to cleanup after error: %{public}@", v14);
        }

        goto LABEL_31;
      }
    }

    else if (!v23)
    {
      cache3 = [(MBCKEngine *)self cache];
      v14 = [cache3 setRestoreState:1 forFilesInDomain:v10];

      if (!v14)
      {
        v27.receiver = self;
        v27.super_class = MBCKRestoreDomainEngine;
        [(MBCKEngine *)&v27 cleanUpAfterError:errorCopy];
        v14 = 0;
        goto LABEL_32;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v48 = 138543362;
        v49 = v14;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to unset restore state: %{public}@", v48, 0xCu);
        _MBLog(@"E ", "=ckdomain-engine= Failed to unset restore state: %{public}@", v14);
      }

LABEL_31:

LABEL_32:
      v19 = v29;
LABEL_33:

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);
      goto LABEL_34;
    }

    v24 = v23;

    v14 = v24;
    goto LABEL_29;
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = name;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Not removing staged items for %{public}@ with error %@", buf, 0x16u);
    _MBLog(@"Df", "=ckdomain-engine= Not removing staged items for %{public}@ with error %@", name, errorCopy);
  }

  v47.receiver = self;
  v47.super_class = MBCKRestoreDomainEngine;
  [(MBCKEngine *)&v47 cleanUpAfterError:errorCopy];
LABEL_34:
}

- (BOOL)runWithError:(id *)error
{
  [(MBCKRestoreDomainEngine *)self resume];
  [(MBCKRestoreDomainEngine *)self makeStateTransition];
  hasError = [(MBCKEngine *)self hasError];
  if (hasError)
  {
    engineError = [(MBCKEngine *)self engineError];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MBError loggableDescriptionForError:engineError];
      domain = [(MBCKRestoreDomainEngine *)self domain];
      name = [domain name];
      *buf = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = name;
      v20 = 2112;
      v21 = engineError;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Restore failed: %{public}@ (%@), %@", buf, 0x20u);

      v11 = [MBError loggableDescriptionForError:engineError];
      domain2 = [(MBCKRestoreDomainEngine *)self domain];
      name2 = [domain2 name];
      _MBLog(@"E ", "=ckdomain-engine= Restore failed: %{public}@ (%@), %@", v11, name2, engineError);
    }

    [(MBCKRestoreDomainEngine *)self cleanUpAfterError:engineError];
    if (error)
    {
      v14 = engineError;
      *error = engineError;
    }
  }

  return hasError ^ 1;
}

- (void)resume
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  cache = [(MBCKEngine *)self cache];
  domainName = [(MBCKRestoreDomainEngine *)self domainName];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100119F64;
  v6[3] = &unk_1003BF0C8;
  v6[4] = &v7;
  v5 = [cache fetchDomainRestoreStateForDomain:domainName callback:v6];

  if (!v5)
  {
    [(MBCKRestoreDomainEngine *)self setRestoreState:v8[3]];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_handleStateTransition
{
  restoreState = [(MBCKRestoreDomainEngine *)self restoreState];
  if (restoreState <= 2)
  {
    if (restoreState == 1)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10011A2B4;
      v18[3] = &unk_1003BC400;
      v18[4] = self;
      v4 = v18;
    }

    else
    {
      if (restoreState != 2)
      {
        goto LABEL_13;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10011A2C0;
      v17[3] = &unk_1003BC400;
      v17[4] = self;
      v4 = v17;
    }

    goto LABEL_12;
  }

  if (restoreState == 3)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10011A2CC;
    v16[3] = &unk_1003BC400;
    v16[4] = self;
    v4 = v16;
LABEL_12:
    [(MBCKEngine *)self performRetryablePhase:v4];
    goto LABEL_13;
  }

  if (restoreState == 4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      domainName = [(MBCKRestoreDomainEngine *)self domainName];
      *buf = 138543362;
      v20 = domainName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Domain restore of %{public}@ finished successfully", buf, 0xCu);

      domainName2 = [(MBCKRestoreDomainEngine *)self domainName];
      _MBLog(@"Df", "=ckdomain-engine= Domain restore of %{public}@ finished successfully", domainName2);
    }

    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
  }

LABEL_13:
  if ([(MBCKEngine *)self isFinished])
  {
    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel ended];
  }

  else
  {
    [(MBCKRestoreDomainEngine *)self setRestoreState:[(MBCKRestoreDomainEngine *)self restoreState]+ 1];
  }

  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  isForegroundRestore = [parentEngine isForegroundRestore];

  if ((isForegroundRestore & 1) == 0)
  {
    cache = [(MBCKEngine *)self cache];
    restoreState2 = [(MBCKRestoreDomainEngine *)self restoreState];
    domainName3 = [(MBCKRestoreDomainEngine *)self domainName];
    v14 = [cache setDomainRestoreState:restoreState2 forDomain:domainName3];

    if (v14)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to set state in cache transaction: %@", buf, 0xCu);
        _MBLog(@"E ", "=ckdomain-engine= Failed to set state in cache transaction: %@", v14);
      }
    }
  }
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKRestoreDomainEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKRestoreDomainEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (BOOL)setUpWithError:(id *)error
{
  v60.receiver = self;
  v60.super_class = MBCKRestoreDomainEngine;
  if ([(MBCKEngine *)&v60 setUpWithError:?])
  {
    domain = [(MBCKRestoreDomainEngine *)self domain];

    if (domain)
    {
      cache = [(MBCKEngine *)self cache];
      domainName = [(MBCKRestoreDomainEngine *)self domainName];
      v59 = 0;
      v8 = [cache domainShouldRestoreToSafeHarbor:domainName error:&v59];
      domainName6 = v59;

      if (domainName6)
      {
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          domainName2 = [(MBCKRestoreDomainEngine *)self domainName];
          *buf = 138412546;
          selfCopy = domainName2;
          v63 = 2112;
          v64 = domainName6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if %@ should restore to safe harbor: %@", buf, 0x16u);

          domainName3 = [(MBCKRestoreDomainEngine *)self domainName];
          _MBLog(@"E ", "=ckdomain-engine= Failed to determine if %@ should restore to safe harbor: %@", domainName3, domainName6);
        }

        if (error)
        {
          v13 = domainName6;
          v14 = 0;
          *error = domainName6;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_39;
      }

      parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
      if (!parentEngine)
      {
        __assert_rtn("[MBCKRestoreDomainEngine setUpWithError:]", "MBCKRestoreDomainEngine.m", 296, "parentEngine");
      }

      v19 = parentEngine;
      domain2 = [(MBCKRestoreDomainEngine *)self domain];
      rootPath = [domain2 rootPath];

      if ([v19 isForegroundRestore])
      {
        domain3 = [(MBCKRestoreDomainEngine *)self domain];
        shouldRestoreToSharedVolume = [domain3 shouldRestoreToSharedVolume];
        persona = [(MBCKEngine *)self persona];
        v25 = persona;
        if (shouldRestoreToSharedVolume)
        {
          [persona sharedIncompleteRestoreDirectory];
        }

        else
        {
          [persona userIncompleteRestoreDirectory];
        }
        v26 = ;

        v27 = [v26 stringByAppendingPathComponent:rootPath];

        rootPath = v27;
      }

      if (v8)
      {
        appManager = [v19 appManager];
        context = [(MBCKEngine *)self context];
        restoreMode = [context restoreMode];
        bundleID = [restoreMode bundleID];
        domain6 = [appManager appWithIdentifier:bundleID];

        appManager2 = [v19 appManager];
        persona2 = [(MBCKEngine *)self persona];
        v58 = 0;
        v35 = [appManager2 createSafeHarborForContainer:domain6 withPersona:persona2 usingIntermediateRestoreDir:objc_msgSend(v19 error:{"isForegroundRestore"), &v58}];
        v36 = v58;

        if (v35)
        {
          appManager3 = [v19 appManager];
          context2 = [(MBCKEngine *)self context];
          restoreMode2 = [context2 restoreMode];
          bundleID2 = [restoreMode2 bundleID];
          v41 = [appManager3 appWithIdentifier:bundleID2];

          if ([v41 isSafeHarbor])
          {
            safeHarborDir = [v41 safeHarborDir];
            [(MBCKRestoreDomainEngine *)self setSafeHarborDir:safeHarborDir];
          }

          v14 = 1;
          domain6 = v41;
          goto LABEL_37;
        }

        v49 = MBGetDefaultLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          context3 = [(MBCKEngine *)self context];
          restoreMode3 = [context3 restoreMode];
          bundleID3 = [restoreMode3 bundleID];
          *buf = 138412546;
          selfCopy = bundleID3;
          v63 = 2112;
          v64 = v36;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Failed to create safe harbor for %@: %@", buf, 0x16u);

          context4 = [(MBCKEngine *)self context];
          restoreMode4 = [context4 restoreMode];
          bundleID4 = [restoreMode4 bundleID];
          _MBLog(@"Df", "=ckdomain-engine= Failed to create safe harbor for %@: %@", bundleID4, v36);
        }

        if (error)
        {
          v56 = v36;
          v14 = 0;
          *error = v36;
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:
        v14 = 0;
        goto LABEL_37;
      }

      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        domain4 = [(MBCKRestoreDomainEngine *)self domain];
        *buf = 138543618;
        selfCopy = domain4;
        v63 = 2114;
        v64 = rootPath;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Creating root path for domain %{public}@ at %{public}@", buf, 0x16u);

        domain5 = [(MBCKRestoreDomainEngine *)self domain];
        _MBLog(@"Df", "=ckdomain-engine= Creating root path for domain %{public}@ at %{public}@", domain5, rootPath);
      }

      v36 = +[NSFileManager defaultManager];
      if ([v36 fileExistsAtPath:rootPath])
      {
        v14 = 1;
      }

      else
      {
        v46 = MBMobileFileAttributes();
        v14 = 1;
        v47 = [v36 createDirectoryAtPath:rootPath withIntermediateDirectories:1 attributes:v46 error:error];

        if ((v47 & 1) == 0)
        {
          if (!error)
          {
            v14 = 0;
            goto LABEL_38;
          }

          domain6 = [(MBCKRestoreDomainEngine *)self domain];
          name = [domain6 name];
          *error = [MBError errorWithCode:100 path:rootPath format:@"Error creating root path for domain %@", name];

          goto LABEL_36;
        }
      }

LABEL_38:

      domainName6 = 0;
      goto LABEL_39;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      domainName4 = [(MBCKRestoreDomainEngine *)self domainName];
      *buf = 138412546;
      selfCopy = self;
      v63 = 2112;
      v64 = domainName4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Unable to get domain for restore %@ (%@)", buf, 0x16u);

      domainName5 = [(MBCKRestoreDomainEngine *)self domainName];
      _MBLog(@"E ", "=ckdomain-engine= Unable to get domain for restore %@ (%@)", self, domainName5);
    }

    if (error)
    {
      domainName6 = [(MBCKRestoreDomainEngine *)self domainName];
      [MBError errorWithCode:205 format:@"Failed to get domain for %@", domainName6];
      *error = v14 = 0;
LABEL_39:

      return v14;
    }
  }

  return 0;
}

- (BOOL)restoreFilesWithError:(id *)error
{
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  v5 = ckOperationTracker;
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 332, "tracker");
  }

  account = [ckOperationTracker account];
  if (!account)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 334, "serviceAccount");
  }

  domainName = [(MBCKRestoreDomainEngine *)self domainName];
  domain = [(MBCKRestoreDomainEngine *)self domain];
  if (domain)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v99 = sub_100119BC0;
    v100 = sub_100119BD0;
    v101 = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.backupd.restore_queue", v7);

    v90[0] = 0;
    v90[1] = v90;
    v90[2] = 0x3032000000;
    v90[3] = sub_100119BC0;
    v90[4] = sub_100119BD0;
    v91 = objc_opt_new();
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = sub_100119BC0;
    v88 = sub_100119BD0;
    v89 = objc_opt_new();
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = sub_100119BC0;
    v82 = sub_100119BD0;
    v83 = objc_opt_new();
    v9 = +[MBBehaviorOptions sharedOptions];
    maxBatchCount = [v9 maxBatchCount];

    v11 = +[MBBehaviorOptions sharedOptions];
    maxBatchFetchAssetSize = [v11 maxBatchFetchAssetSize];

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10011B65C;
    v71[3] = &unk_1003BF140;
    v71[4] = self;
    v72 = v5;
    v76 = &v78;
    v73 = account;
    v49 = v8;
    v74 = v49;
    v13 = domainName;
    v75 = v13;
    v77 = &v84;
    v50 = objc_retainBlock(v71);
    enumeratorCache = [(MBCKRestoreDomainEngine *)self enumeratorCache];
    if (enumeratorCache)
    {
      v15 = 0;
    }

    else
    {
      cache = [(MBCKEngine *)self cache];
      tracker = [cache tracker];

      if (!tracker)
      {
        __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 489, "cacheTracker");
      }

      v70 = 0;
      enumeratorCache = [tracker openCacheWithAccessType:2 cached:0 error:&v70];
      v15 = v70;
      if (!enumeratorCache)
      {
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v96 = 138412546;
          *&v96[4] = v13;
          *&v96[12] = 2112;
          *&v96[14] = v15;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to re-open cache during restore for %@: %@", v96, 0x16u);
          _MBLog(@"E ", "=ckdomain-engine= Failed to re-open cache during restore for %@: %@", v13, v15);
        }

        if (error)
        {
          v38 = v15;
          v17 = 0;
          *error = v15;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_44;
      }
    }

    *v96 = 0;
    *&v96[8] = v96;
    *&v96[16] = 0x2020000000;
    v97 = 0;
    parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
    if (!parentEngine)
    {
      __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 500, "parentEngine");
    }

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10011C7A0;
    v59[3] = &unk_1003BF168;
    v59[4] = self;
    v63 = buf;
    v21 = domain;
    v60 = v21;
    v22 = parentEngine;
    v61 = v22;
    v64 = v90;
    v65 = &v78;
    v66 = &v84;
    v67 = v96;
    v68 = maxBatchCount;
    v69 = maxBatchFetchAssetSize;
    v23 = v50;
    v62 = v23;
    v24 = [enumeratorCache enumeratePendingRestoreFilesForDomain:v13 orderAscending:1 foundRestorable:v59];

    if (v24)
    {
      enumeratorCache2 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v26 = enumeratorCache == enumeratorCache2;

      if (!v26)
      {
        [enumeratorCache close];
      }

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v92 = 138412546;
        v93 = v13;
        v94 = 2112;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate pending restore directories (first pass) for %@: %@", v92, 0x16u);
        _MBLog(@"E ", "=ckdomain-engine= Failed to enumerate pending restore directories (first pass) for %@: %@", v13, v24);
      }

      if (error)
      {
        v28 = v24;
        v17 = 0;
        *error = v24;
LABEL_43:

        _Block_object_dispose(v96, 8);
        tracker = enumeratorCache;
        v15 = v24;
LABEL_44:

        _Block_object_dispose(&v78, 8);
        _Block_object_dispose(&v84, 8);

        _Block_object_dispose(v90, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_45;
      }

LABEL_42:
      v17 = 0;
      goto LABEL_43;
    }

    if ([(MBCKEngine *)self handleCancelation:error])
    {
      enumeratorCache3 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v30 = enumeratorCache == enumeratorCache3;

      if (v30)
      {
LABEL_41:
        v24 = 0;
        goto LABEL_42;
      }

LABEL_23:
      [enumeratorCache close];
      goto LABEL_41;
    }

    if (!*(*&buf[8] + 40) && [v85[5] count])
    {
      v31 = (v23[2])(v23, v85[5]);
      v32 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v31;
    }

    if (*(*&buf[8] + 40))
    {
      enumeratorCache4 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v34 = enumeratorCache == enumeratorCache4;

      if (!v34)
      {
        [enumeratorCache close];
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*&buf[8] + 40);
        *v92 = 138412290;
        v93 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore domain: %@", v92, 0xCu);
        _MBLog(@"E ", "=ckdomain-engine= Failed to restore domain: %@", *(*&buf[8] + 40));
      }

      if (error)
      {
        v24 = 0;
        v17 = 0;
        *error = *(*&buf[8] + 40);
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if ([(MBCKEngine *)self handleCancelation:error])
    {
      enumeratorCache5 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v40 = enumeratorCache == enumeratorCache5;

      if (v40)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

    v42 = v79[5];
    v79[5] = 0;

    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10011D054;
    v54[3] = &unk_1003BF190;
    v54[4] = self;
    v57 = buf;
    v58 = v90;
    v55 = v21;
    v56 = v22;
    v24 = [enumeratorCache enumeratePendingRestoreFilesForDomain:v13 forType:1 orderAscending:1 foundRestorable:v54];
    enumeratorCache6 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
    v44 = enumeratorCache == enumeratorCache6;

    if (!v44)
    {
      [enumeratorCache close];
    }

    if (v24)
    {
      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v92 = 138412546;
        v93 = v13;
        v94 = 2112;
        v95 = v24;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate pending restore directories (second pass) for %@: %@", v92, 0x16u);
        _MBLog(@"E ", "=ckdomain-engine= Failed to enumerate pending restore directories (second pass) for %@: %@", v13, v24);
      }

      v46 = v24;
      if (!error)
      {
LABEL_60:
        v17 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      if (!*(*&buf[8] + 40))
      {
        v17 = 1;
        goto LABEL_62;
      }

      v47 = MBGetDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = *(*&buf[8] + 40);
        *v92 = 138412546;
        v93 = v13;
        v94 = 2112;
        v95 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore domain %@: %@", v92, 0x16u);
        _MBLog(@"E ", "=ckdomain-engine= Failed to restore domain %@: %@", v13, *(*&buf[8] + 40));
      }

      if (!error)
      {
        goto LABEL_60;
      }

      v46 = *(*&buf[8] + 40);
    }

    v17 = 0;
    *error = v46;
LABEL_62:

    goto LABEL_43;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = domainName;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Unable to get domain for restore %@ (%@)", buf, 0x16u);
    _MBLog(@"E ", "=ckdomain-engine= Unable to get domain for restore %@ (%@)", self, domainName);
  }

  if (error)
  {
    [MBError errorWithCode:205 format:@"Failed to get domain for %@", domainName];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_45:

  return v17;
}

- (BOOL)finalizeRestoredDomainWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKRestoreDomainEngine finalizeRestoredDomainWithError:]", "MBCKRestoreDomainEngine.m", 650, "error");
  }

  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  if (!parentEngine)
  {
    __assert_rtn("[MBCKRestoreDomainEngine finalizeRestoredDomainWithError:]", "MBCKRestoreDomainEngine.m", 652, "parentEngine");
  }

  v6 = parentEngine;
  if (([parentEngine isForegroundRestore] & 1) == 0)
  {
    context = [(MBCKEngine *)self context];
    restoreMode = [context restoreMode];
    isBackgroundApp = [restoreMode isBackgroundApp];

    if (isBackgroundApp)
    {
      context2 = [(MBCKEngine *)self context];
      restoreMode2 = [context2 restoreMode];
      bundleID = [restoreMode2 bundleID];

      domain = [(MBCKRestoreDomainEngine *)self domain];
      name = [domain name];

      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v43 = name;
        v44 = 2112;
        v45 = bundleID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finalizing the restore for %@ (%@)", buf, 0x16u);
        _MBLog(@"I ", "=ckdomain-engine= Finalizing the restore for %@ (%@)", name, bundleID);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v17 = v16;
      context3 = [(MBCKEngine *)self context];
      restoreMode3 = [context3 restoreMode];
      wasCancelled = [restoreMode3 wasCancelled];

      if (wasCancelled)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = bundleID;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Uninstalling the placeholder for %@", buf, 0xCu);
          _MBLog(@"Df", "=ckdomain-engine= Uninstalling the placeholder for %@", bundleID);
        }

        v41 = 0;
        v22 = [MBMobileInstallation uninstallAppWithBundleID:bundleID error:&v41];
        v23 = v41;
        if ((v22 & 1) == 0)
        {
          v24 = MBGetDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v43 = bundleID;
            v44 = 2112;
            v45 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to uninstall the placeholder for %@: %@", buf, 0x16u);
            _MBLog(@"E ", "=ckdomain-engine= Failed to uninstall the placeholder for %@: %@", bundleID, v23);
          }

          v25 = v23;
          *error = v23;
        }
      }

      else
      {
        appManager = [v6 appManager];
        persona = [(MBCKEngine *)self persona];
        v29 = [appManager fetchAppWithIdentifier:bundleID persona:persona error:error];

        if (!v29)
        {
          v26 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v31 = v30;
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = v31 - v17;
        context4 = [(MBCKEngine *)self context];
        restoreMode4 = [context4 restoreMode];
        errorString = [restoreMode4 errorString];
        *buf = 138413058;
        v43 = name;
        v44 = 2112;
        v45 = bundleID;
        v46 = 2048;
        v47 = v33;
        v48 = 2112;
        v49 = errorString;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finalized the restore for %@ (%@) in %0.3fs (%@)", buf, 0x2Au);

        context5 = [(MBCKEngine *)self context];
        restoreMode5 = [context5 restoreMode];
        errorString2 = [restoreMode5 errorString];
        _MBLog(@"I ", "=ckdomain-engine= Finalized the restore for %@ (%@) in %0.3fs (%@)", name, bundleID, *&v33, errorString2);
      }

      v26 = 1;
      goto LABEL_20;
    }
  }

  v26 = 1;
LABEL_21:

  return v26;
}

- (MBCKRestoreEngine)parentEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEngine);

  return WeakRetained;
}

@end