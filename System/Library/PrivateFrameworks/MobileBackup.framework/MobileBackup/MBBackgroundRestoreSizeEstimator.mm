@interface MBBackgroundRestoreSizeEstimator
- (MBBackgroundRestoreSizeEstimator)initWithAccount:(id)account serviceManager:(id)manager snapshotUUID:(id)d;
- (MBCKManager)serviceManager;
- (unint64_t)_estimateCurrentBackgroundRestoreSizeWithError:(id *)error;
- (unint64_t)estimatedBackgroundRestoreSizeWithError:(id *)error;
@end

@implementation MBBackgroundRestoreSizeEstimator

- (MBBackgroundRestoreSizeEstimator)initWithAccount:(id)account serviceManager:(id)manager snapshotUUID:(id)d
{
  accountCopy = account;
  managerCopy = manager;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = MBBackgroundRestoreSizeEstimator;
  v12 = [(MBBackgroundRestoreSizeEstimator *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_serviceManager, managerCopy);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_snapshotUUID, d);
    persona = [accountCopy persona];
    v19 = 0;
    v15 = [MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v13->_isRestoringFromFileLists persona:persona error:&v19];
    v16 = v19;

    if ((v15 & 1) == 0)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "=bg-estimate= Failed to determine whether restoring from file lists: %@", buf, 0xCu);
        _MBLog(@"F ", "=bg-estimate= Failed to determine whether restoring from file lists: %@", v16);
      }

      v13->_isRestoringFromFileLists = 0;
    }
  }

  return v13;
}

- (unint64_t)estimatedBackgroundRestoreSizeWithError:(id *)error
{
  v5 = +[NSDate now];
  dateOfLastSizeEstimate = [(MBBackgroundRestoreSizeEstimator *)self dateOfLastSizeEstimate];
  estimatedBackgroundRestoreSize = [(MBBackgroundRestoreSizeEstimator *)self estimatedBackgroundRestoreSize];
  if (estimatedBackgroundRestoreSize && dateOfLastSizeEstimate && ([v5 timeIntervalSinceDate:dateOfLastSizeEstimate], v8 < 30.0))
  {
    unsignedLongLongValue = [estimatedBackgroundRestoreSize unsignedLongLongValue];
  }

  else
  {
    v15 = 0;
    unsignedLongLongValue = [(MBBackgroundRestoreSizeEstimator *)self _estimateCurrentBackgroundRestoreSizeWithError:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }
    }

    else
    {
      [(MBBackgroundRestoreSizeEstimator *)self setDateOfLastSizeEstimate:v5];
      v13 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
      [(MBBackgroundRestoreSizeEstimator *)self setEstimatedBackgroundRestoreSize:v13];
    }
  }

  return unsignedLongLongValue;
}

- (unint64_t)_estimateCurrentBackgroundRestoreSizeWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBBackgroundRestoreSizeEstimator _estimateCurrentBackgroundRestoreSizeWithError:]", "MBBackgroundRestoreSizeEstimator.m", 73, "error");
  }

  v5 = dispatch_group_create();
  v6 = [[NSMutableArray alloc] initWithCapacity:3];
  serviceManager = [(MBBackgroundRestoreSizeEstimator *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBBackgroundRestoreSizeEstimator _estimateCurrentBackgroundRestoreSizeWithError:]", "MBBackgroundRestoreSizeEstimator.m", 79, "serviceManager");
  }

  account = [(MBBackgroundRestoreSizeEstimator *)self account];
  if (!account)
  {
    __assert_rtn("[MBBackgroundRestoreSizeEstimator _estimateCurrentBackgroundRestoreSizeWithError:]", "MBBackgroundRestoreSizeEstimator.m", 81, "account");
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v9 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E32F0;
  block[3] = &unk_1003C1380;
  block[4] = self;
  v10 = serviceManager;
  v55 = v10;
  v11 = account;
  v56 = v11;
  v12 = v6;
  v57 = v12;
  v58 = &v69;
  v59 = &v65;
  v60 = &v61;
  dispatch_group_async(v5, v9, block);

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if ([v11 isPrimaryAccount])
  {
    dispatch_group_enter(v5);
    v13 = objc_alloc_init(ASDRestoreTotalDownloadSizeEstimateRequest);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001E37A8;
    v46[3] = &unk_1003C13A8;
    v47 = v12;
    v49 = &v50;
    v48 = v5;
    [v13 startWithCompletionHandler:v46];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if ([v11 isPrimaryAccount])
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001E38DC;
    v33[3] = &unk_1003BD2C8;
    v35 = &v38;
    v34 = v10;
    v36 = &v73;
    v37 = &v42;
    dispatch_group_async(v5, v9, v33);
  }

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v14 = atomic_load(v74 + 24);
  if (v14)
  {
    v15 = [MBError errorWithCode:17 format:@"Cannot fetch background size estimate for account:%@", v11];
LABEL_12:
    v16 = 0;
    *error = v15;
    goto LABEL_13;
  }

  if ([v12 count])
  {
    v15 = [MBError errorWithErrors:v12];
    goto LABEL_12;
  }

  v18 = v51[3] + v70[3] + v43[3];
  v19 = 100000000 * (v18 / 0x5F5E100);
  v20 = v18 == v19;
  v21 = v19 + 100000000;
  if (v20)
  {
    v16 = v51[3] + v70[3] + v43[3];
  }

  else
  {
    v16 = v21;
  }

  if (self->_isRestoringFromFileLists)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v70[3];
      v24 = v66[3];
      v25 = v62[3];
      v26 = v51[3];
      v27 = v43[3];
      v28 = *(v39 + 24);
      *buf = 138414082;
      v78 = v11;
      v79 = 2048;
      v80 = v23;
      v81 = 2048;
      v82 = v24;
      v83 = 2048;
      v84 = v25;
      v85 = 2048;
      *v86 = v26;
      *&v86[8] = 2048;
      *&v86[10] = v27;
      v87 = 1024;
      v88 = v28;
      v89 = 2048;
      v90 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=bg-estimate= Fetched background restore sizes for account %@ plan:%llu(%llu/%llu) appStore:%llu atc:%llu(%d) total:%llu", buf, 0x4Eu);
      _MBLog(@"Df", "=bg-estimate= Fetched background restore sizes for account %@ plan:%llu(%llu/%llu) appStore:%llu atc:%llu(%d) total:%llu", v11, v70[3], v66[3], v62[3], v51[3], v43[3], *(v39 + 24), v16);
    }
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v70[3];
      v30 = v51[3];
      v31 = v43[3];
      v32 = *(v39 + 24);
      *buf = 138413570;
      v78 = v11;
      v79 = 2048;
      v80 = v29;
      v81 = 2048;
      v82 = v30;
      v83 = 2048;
      v84 = v31;
      v85 = 1024;
      *v86 = v32;
      *&v86[4] = 2048;
      *&v86[6] = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=bg-estimate= Fetched background restore sizes for account %@ cache:%llu appStore:%llu atc:%llu(%d) total:%llu", buf, 0x3Au);
      _MBLog(@"Df", "=bg-estimate= Fetched background restore sizes for account %@ cache:%llu appStore:%llu atc:%llu(%d) total:%llu", v11, v70[3], v51[3], v43[3], *(v39 + 24), v16);
    }
  }

LABEL_13:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  return v16;
}

- (MBCKManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceManager);

  return WeakRetained;
}

@end