@interface NNCompanionSyncService
+ (id)sharedCompanionSyncService;
- (id)_init;
- (void)_updateHeadlines;
- (void)attemptSyncWithCompletion:(id)completion;
- (void)resumeSync;
@end

@implementation NNCompanionSyncService

+ (id)sharedCompanionSyncService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004DB0;
  block[3] = &unk_1000103B8;
  block[4] = self;
  if (qword_100016EA0 != -1)
  {
    dispatch_once(&qword_100016EA0, block);
  }

  v2 = qword_100016E98;

  return v2;
}

- (id)_init
{
  v25.receiver = self;
  v25.super_class = NNCompanionSyncService;
  v2 = [(NNCompanionSyncService *)&v25 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:0];

    v5 = [v4 URLByAppendingPathComponent:@"news-results-to-sync.plist" isDirectory:0];
    v6 = [v4 URLByAppendingPathComponent:@"news-results-last-successful-sync.plist" isDirectory:0];
    v7 = [v4 URLByAppendingPathComponent:@"news-results-last-successful-sync.plist" isDirectory:0];
    v8 = [[NNCompanionSyncServiceManager alloc] initWithResultsFileURL:v7 pendingSyncFileURL:v5 lastSyncFileURL:v6 syncResultsFileURL:v7];
    [(NNCompanionSyncServiceManager *)v8 setDelegate:v2];
    v9 = [[SYService alloc] initWithService:@"com.apple.private.alloy.news" priority:0 asMasterStore:1 options:0];
    [v9 setEngineType:2];
    syncQueue = [(NNCompanionSyncServiceManager *)v8 syncQueue];
    [v9 setDelegate:v8 queue:syncQueue];

    v11 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v11 getActivePairedDevice];

    v14 = NNSetupCompanionSyncLog(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (getActivePairedDevice)
    {
      if (v15)
      {
        pairingID = [getActivePairedDevice pairingID];
        *buf = 138412290;
        v27 = pairingID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting CompanionSync with device pairingID: %@", buf, 0xCu);
      }

      v24 = 0;
      v17 = [v9 resume:&v24];
      v18 = v24;
      v14 = v18;
      if ((v17 & 1) == 0)
      {
        v19 = NNSetupCompanionSyncLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Couldn't startup CompanionSync: %@", buf, 0xCu);
        }
      }
    }

    else if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "There is no active paired device at this time, will not start CompanionSync", buf, 2u);
    }

    service = v2->_service;
    v2->_service = v9;
    v21 = v9;

    serviceManager = v2->_serviceManager;
    v2->_serviceManager = v8;
  }

  return v2;
}

- (void)attemptSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = NNSetupCompanionSyncLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    service = [(NNCompanionSyncService *)self service];
    *buf = 138412290;
    v13 = service;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Someone has asked to start a sync with %@.", buf, 0xCu);
  }

  serviceManager = [(NNCompanionSyncService *)self serviceManager];
  syncQueue = [serviceManager syncQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000526C;
  v10[3] = &unk_100010408;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(syncQueue, v10);
}

- (void)resumeSync
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_1000053F0;
  v6[4] = sub_100005400;
  v7 = os_transaction_create();
  serviceManager = [(NNCompanionSyncService *)self serviceManager];
  syncQueue = [serviceManager syncQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005408;
  v5[3] = &unk_1000104C0;
  v5[4] = self;
  v5[5] = v6;
  dispatch_async(syncQueue, v5);

  _Block_object_dispose(v6, 8);
}

- (void)_updateHeadlines
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  updatingHeadlines = [(NNCompanionSyncService *)selfCopy updatingHeadlines];
  if (updatingHeadlines)
  {
    v4 = NNSetupCompanionSyncLog(updatingHeadlines);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Skipping fetch of headlines for gizmo. Fetch in progress…", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(NNCompanionSyncService *)selfCopy setUpdatingHeadlines:1];
    objc_sync_exit(selfCopy);

    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = sub_1000053F0;
    v17 = sub_100005400;
    v18 = objc_alloc_init(NDNewsDaemonContext);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_1000053F0;
    v11[4] = sub_100005400;
    v12 = os_transaction_create();
    v5 = objc_alloc_init(NTPBTodayResultOperationInfo);
    [v5 setSlotsLimit:5.0];
    [v5 setAllowOnlyWatchEligibleSections:1];
    [v5 setPreferCompactSectionName:1];
    [v5 setThumbnailSizePreset:2];
    [v5 setSourceNameImageSizePreset:1];
    v6 = objc_alloc_init(NTPBSectionSlotCostInfo);
    [v6 setHeadlineSlotCost:1.0];
    [v6 setSectionTitleSlotCost:0.0];
    [v5 setSectionSlotCostInfo:v6];
    v7 = NNURLForNanonewscdContent();
    [v5 setAssetsDirectoryFileURL:v7];

    v8 = NNSetupCompanionSyncLog([v5 setAllowSectionTitles:1]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v19 = 134217984;
      v20 = 5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetching %lu headlines for gizmo.", v19, 0xCu);
    }

    v9 = *(v14 + 5);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005824;
    v10[3] = &unk_100010510;
    v10[4] = selfCopy;
    v10[5] = v11;
    v10[6] = buf;
    [v9 fetchLatestResultsWithParameters:v5 completion:v10];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(buf, 8);
  }
}

@end