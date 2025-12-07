@interface MBPeerTransferDrive
- (BOOL)_handleMoveItem:(id)item metadata:(id)metadata error:(id *)error;
- (BOOL)_handleReceivedItem:(id)item metadata:(id)metadata error:(id *)error;
- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)freeSpace:(unint64_t *)space error:(id *)error;
- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (MBPeerTransferDrive)initWithRootURL:(id)l fileTransferSession:(id)session uploadBatchSize:(unint64_t)size concurrentUploadBatchCount:(unint64_t)count concurrentOpenBatchCount:(unint64_t)batchCount;
- (id)_queueWithBatch:(id)batch;
- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (id)fullURLForDriveRelativePath:(id)path;
- (void)_resetReceivedFilesProgress;
- (void)_updateProgressForReceivedItem:(id)item size:(int64_t)size;
- (void)_updateProgressForSentItem:(id)item size:(int64_t)size;
- (void)_uploadBatch:(id)batch options:(id)options completion:(id)completion;
- (void)cleanUpReceivedFilesDirectory;
- (void)dealloc;
- (void)finishBatchUploadsWithOptions:(id)options completion:(id)completion;
- (void)invalidate;
- (void)startListeningForFileTransfers;
- (void)uploadBatch:(id)batch options:(id)options completion:(id)completion;
@end

@implementation MBPeerTransferDrive

- (MBPeerTransferDrive)initWithRootURL:(id)l fileTransferSession:(id)session uploadBatchSize:(unint64_t)size concurrentUploadBatchCount:(unint64_t)count concurrentOpenBatchCount:(unint64_t)batchCount
{
  lCopy = l;
  sessionCopy = session;
  if (!size)
  {
    __assert_rtn("[MBPeerTransferDrive initWithRootURL:fileTransferSession:uploadBatchSize:concurrentUploadBatchCount:concurrentOpenBatchCount:]", "MBPeerTransferDrive.m", 54, "uploadBatchSize");
  }

  if (!count)
  {
    __assert_rtn("[MBPeerTransferDrive initWithRootURL:fileTransferSession:uploadBatchSize:concurrentUploadBatchCount:concurrentOpenBatchCount:]", "MBPeerTransferDrive.m", 55, "concurrentUploadBatchCount");
  }

  if (!batchCount)
  {
    __assert_rtn("[MBPeerTransferDrive initWithRootURL:fileTransferSession:uploadBatchSize:concurrentUploadBatchCount:concurrentOpenBatchCount:]", "MBPeerTransferDrive.m", 56, "concurrentOpenBatchCount");
  }

  v14 = sessionCopy;
  v54.receiver = self;
  v54.super_class = MBPeerTransferDrive;
  v15 = [(MBPeerTransferDrive *)&v54 init];
  v16 = v15;
  if (v15)
  {
    sizeCopy = size;
    countCopy = count;
    v15->_progressLock._os_unfair_lock_opaque = 0;
    v52 = v14;
    [(MBPeerTransferDrive *)v15 setFileTransferSession:v14];
    v53 = lCopy;
    [(MBPeerTransferDrive *)v16 setRootURL:lCopy];
    v17 = [[NSMutableArray alloc] initWithCapacity:batchCount];
    v18 = 0;
    do
    {
      v19 = [NSString stringWithFormat:@"com.apple.backup.batch.%lu", v18];
      uTF8String = [v19 UTF8String];
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_UTILITY, 0);
      v23 = dispatch_queue_create(uTF8String, v22);

      [v17 addObject:v23];
      ++v18;
    }

    while (batchCount != v18);
    v51 = v16;
    [(MBPeerTransferDrive *)v16 setBatchQueues:v17];
    v24 = [[NSMutableArray alloc] initWithCapacity:batchCount];
    v25 = 0;
    do
    {
      v26 = [NSString stringWithFormat:@"com.apple.backup.medatada.%lu", v25];
      uTF8String2 = [v26 UTF8String];
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_UTILITY, 0);
      v30 = dispatch_queue_create(uTF8String2, v29);

      [v24 addObject:v30];
      ++v25;
    }

    while (batchCount != v25);
    [(MBPeerTransferDrive *)v51 setMetadataQueues:v24];
    v31 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v31 responseClass:objc_opt_class() forTask:@"MBPeerTaskMove"];
    v16 = v51;
    v32 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v32 responseClass:objc_opt_class() forTask:@"MBPeerTaskRemove"];
    v51->_uploadBatchSize = sizeCopy;
    v51->_concurrentUploadBatchCount = countCopy;
    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      uploadBatchSize = v51->_uploadBatchSize;
      concurrentUploadBatchCount = v51->_concurrentUploadBatchCount;
      *buf = 138544130;
      v56 = v34;
      v57 = 2048;
      v58 = uploadBatchSize;
      v59 = 2048;
      v60 = concurrentUploadBatchCount;
      v61 = 2048;
      batchCountCopy = batchCount;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@, uploadBatchSize:%lu, concurrentUploadBatchCount:%lu, concurrentOpenBatchCount:%lu", buf, 0x2Au);
      v37 = objc_opt_class();
      _MBLog(@"Df", "%{public}@, uploadBatchSize:%lu, concurrentUploadBatchCount:%lu, concurrentOpenBatchCount:%lu", v37, v51->_uploadBatchSize, v51->_concurrentUploadBatchCount, batchCount);
    }

    v38 = dispatch_semaphore_create(v51->_concurrentUploadBatchCount);
    batchUploadSemaphore = v51->_batchUploadSemaphore;
    v51->_batchUploadSemaphore = v38;

    v40 = dispatch_semaphore_create(v51->_uploadBatchSize * batchCount);
    openSQLiteFilesSemaphore = v51->_openSQLiteFilesSemaphore;
    v51->_openSQLiteFilesSemaphore = v40;

    v42 = [MBError errorWithCode:202 format:@"Invalidated"];
    invalidationError = v51->_invalidationError;
    v51->_invalidationError = v42;

    if (_os_feature_enabled_impl())
    {
      v44 = NSTemporaryDirectory();
      v45 = [v44 stringByAppendingPathComponent:@"filehashes.db"];

      v46 = [[MBFileHashDB alloc] initWithPath:v45];
      fileHashDB = v51->_fileHashDB;
      v51->_fileHashDB = v46;
    }

    v14 = v52;
    lCopy = v53;
  }

  return v16;
}

- (void)dealloc
{
  path = [(MBFileHashDB *)self->_fileHashDB path];
  fileHashDB = self->_fileHashDB;
  v15 = 0;
  v5 = [(MBFileHashDB *)fileHashDB close:&v15];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = path;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to close the SQLite DB at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to close the SQLite DB at %@: %@", path, v6);
    }
  }

  if (MBIsInternalInstall())
  {
    v8 = MBGetCacheDir();
    v9 = [v8 stringByAppendingPathComponent:@"filehashes.db"];
    v14 = v6;
    v10 = [MBSQLiteFileHandle copySQLiteFileAtPath:path toPath:v9 error:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = path;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to copy the SQLite file at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to copy the SQLite file at %@: %@", path, v11);
      }
    }
  }

  else
  {
    v11 = v6;
  }

  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:path];
  [(MBPeerTransferDrive *)self stopListeningForFileTransfers];

  v13.receiver = self;
  v13.super_class = MBPeerTransferDrive;
  [(MBPeerTransferDrive *)&v13 dealloc];
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v5 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidated %@", buf, 0xCu);
      v3 = objc_opt_class();
      _MBLog(@"Df", "Invalidated %@", v3);
    }
  }
}

- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  __assert_rtn("[MBPeerTransferDrive contentsOfDirectoryAtPath:options:error:]", "MBPeerTransferDrive.m", 133, "0 && not yet implemented");
}

- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  __assert_rtn("[MBPeerTransferDrive copyItemAtPath:toPath:options:error:]", "MBPeerTransferDrive.m", 138, "0 && not yet implemented");
}

- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  v22 = pathCopy;
  v23 = toPathCopy;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = 0;
  v21 = 0;
  v14 = [(MBPeerTransferDrive *)self uploadFilesAtPaths:v13 options:optionsCopy results:&v21 error:&v20];
  v15 = v21;
  v16 = v20;

  if (!v14)
  {
    if (!v16)
    {
      __assert_rtn("[MBPeerTransferDrive uploadFileAtPath:toPath:options:error:]", "MBPeerTransferDrive.m", 146, "error");
    }

    v17 = [v15 objectForKeyedSubscript:pathCopy];

    if (!v17)
    {
      __assert_rtn("[MBPeerTransferDrive uploadFileAtPath:toPath:options:error:]", "MBPeerTransferDrive.m", 148, "error");
    }

    if (error)
    {
      v18 = v17;
      *error = v17;
    }

    v16 = v17;
  }

  return v14;
}

- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10018970C;
  v32 = sub_10018971C;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10018970C;
  v26 = sub_10018971C;
  v27 = 0;
  v12 = [[MBDriveUploadBatch alloc] initWithPaths:pathsCopy size:0 last:1];
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100189724;
  v18[3] = &unk_1003C0368;
  v20 = &v28;
  v21 = &v22;
  v14 = v13;
  v19 = v14;
  [(MBPeerTransferDrive *)self uploadBatch:v12 options:optionsCopy completion:v18];
  MBGroupWaitForever();
  v15 = v29[5];
  if (v15 || v23[5])
  {
    if (results)
    {
      *results = v15;
    }

    v16 = 0;
    if (error)
    {
      *error = v23[5];
    }
  }

  else
  {
    v16 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

- (void)_uploadBatch:(id)batch options:(id)options completion:(id)completion
{
  batchCopy = batch;
  optionsCopy = options;
  completionCopy = completion;
  if (!batchCopy)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 176, "batch");
  }

  v65 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 177, "completion");
  }

  fileTransferSession = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 179, "fileTransferSession");
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"FileHandleFactory"];
  paths = [batchCopy paths];
  v71 = [paths count];
  if (v71 > self->_uploadBatchSize)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 183, "pathCount <= _uploadBatchSize");
  }

  index = [batchCopy index];
  v13 = [batchCopy size];
  last = [batchCopy last];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *v101 = index;
    *&v101[4] = 2048;
    *&v101[6] = v71;
    *&v101[14] = 2048;
    *&v101[16] = v13;
    *&v101[24] = 1024;
    *&v101[26] = last;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Preparing batch i:%u, pc:%lu, s:%llu, l:%d", buf, 0x22u);
    _MBLog(@"Df", "Preparing batch i:%u, pc:%lu, s:%llu, l:%d", index, v71, v13, last);
  }

  v15 = dispatch_group_create();
  v16 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v17 = [[NSMutableArray alloc] initWithCapacity:v71];
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_10018A2D4;
  v87[3] = &unk_1003C0400;
  v87[4] = self;
  v64 = v16;
  v88 = v64;
  v62 = v11;
  v89 = v62;
  v94 = &v96;
  v18 = batchCopy;
  v90 = v18;
  v95 = index;
  v66 = fileTransferSession;
  v91 = v66;
  group = v15;
  v92 = group;
  v19 = v17;
  v93 = v19;
  [paths enumerateKeysAndObjectsUsingBlock:v87];
  [v18 setItems:v19];

  context = objc_autoreleasePoolPush();
  if (last & 1) != 0 || (v97[3])
  {
    invalidated = 1;
  }

  else
  {
    invalidated = [(MBPeerTransferDrive *)self invalidated];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = [(NSMutableArray *)selfCopy->_pendingUploadBatches count];
  concurrentUploadBatchCount = selfCopy->_concurrentUploadBatchCount;
  if (v22 >= concurrentUploadBatchCount)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 358, "pendingUploadBatchCount < _concurrentUploadBatchCount");
  }

  v24 = &v13[selfCopy->_pendingUploadSize];
  if (v24 > 0xF423F)
  {
    v25 = 1;
  }

  else
  {
    v25 = invalidated;
  }

  if ((v25 & 1) != 0 || (v26 = v22 + 1, v22 + 1 >= concurrentUploadBatchCount / 3) && v24 > 0x249EF)
  {
    v27 = 1;
  }

  else
  {
    v28 = v24 >> 5;
    v27 = v26 >= 2 * concurrentUploadBatchCount / 3 && v28 > 0xC34 || concurrentUploadBatchCount <= v26;
  }

  pendingUploadBatches = selfCopy->_pendingUploadBatches;
  if (!pendingUploadBatches)
  {
    v32 = [[NSMutableArray alloc] initWithCapacity:selfCopy->_concurrentUploadBatchCount];
    v33 = selfCopy->_pendingUploadBatches;
    selfCopy->_pendingUploadBatches = v32;

    pendingUploadBatches = selfCopy->_pendingUploadBatches;
  }

  if (![(NSMutableArray *)pendingUploadBatches count]&& selfCopy->_pendingUploadSize)
  {
    v57 = "_pendingUploadBatches.count || !_pendingUploadSize";
    v58 = 367;
LABEL_64:
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", v58, v57);
  }

  [(NSMutableArray *)selfCopy->_pendingUploadBatches addObject:v18];
  v68 = &v13[selfCopy->_pendingUploadSize];
  selfCopy->_pendingUploadSize = v68;
  if (v27)
  {
    v34 = selfCopy->_pendingUploadBatches;
    v35 = selfCopy->_pendingUploadBatches;
    selfCopy->_pendingUploadBatches = 0;

    selfCopy->_pendingUploadSize = 0;
  }

  else
  {
    v34 = 0;
  }

  if ([(NSMutableArray *)selfCopy->_pendingUploadBatches count]>= selfCopy->_concurrentUploadBatchCount)
  {
    v57 = "_pendingUploadBatches.count < _concurrentUploadBatchCount";
    v58 = 376;
    goto LABEL_64;
  }

  objc_sync_exit(selfCopy);

  if (v34)
  {
    v36 = v27;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    __assert_rtn("[MBPeerTransferDrive _uploadBatch:options:completion:]", "MBPeerTransferDrive.m", 378, "flush || !pendingUploadBatches");
  }

  v37 = dword_100421930;
  v38 = dword_100421934;
  v39 = MBGetDefaultLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v101 = index;
    *&v101[4] = 1024;
    *&v101[6] = v37;
    *&v101[10] = 1024;
    *&v101[12] = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Queued batch i:%u, o:%u(%u)", buf, 0x14u);
    _MBLog(@"Df", "Queued batch i:%u, o:%u(%u)", index, v37, v38);
  }

  if (v27)
  {
    v40 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    dispatch_semaphore_wait(selfCopy->_batchUploadSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v59 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v41 = [[NSMutableArray alloc] initWithCapacity:{self->_uploadBatchSize * -[NSMutableArray count](v34, "count")}];
    v42 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](v34, "count")}];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10018B3CC;
    v83[3] = &unk_1003C0428;
    v86 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v43 = v41;
    v84 = v43;
    v44 = v42;
    v85 = v44;
    [(NSMutableArray *)v34 enumerateObjectsUsingBlock:v83];
    v45 = [v44 componentsJoinedByString:{@", "}];
    add_explicit = atomic_fetch_add_explicit(&dword_100421930, 1u, memory_order_relaxed);
    v60 = atomic_fetch_add_explicit(&dword_100421934, [v43 count], memory_order_relaxed);
    if ([(MBPeerTransferDrive *)selfCopy invalidated])
    {
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = v46;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [v43 count];
          *buf = 134218754;
          *v101 = v48;
          *&v101[8] = 2114;
          *&v101[10] = v45;
          *&v101[18] = 1024;
          *&v101[20] = add_explicit;
          *&v101[24] = 1024;
          *&v101[26] = v60;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Invalidating %lu items for batches i:[%{public}@], o:%u(%u)", buf, 0x22u);
        }

        _MBLog(@"E ", "Invalidating %lu items for batches i:[%{public}@], o:%u(%u)", [v43 count], v45, add_explicit, v60);
      }

      dispatchQueue = [v66 dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018B494;
      block[3] = &unk_1003BC060;
      v81 = v43;
      v82 = selfCopy;
      dispatch_group_async(group, dispatchQueue, block);
    }

    else
    {
      v50 = MBGetDefaultLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v50;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [v43 count];
          *buf = 138544642;
          *v101 = v45;
          *&v101[8] = 2048;
          *&v101[10] = v52;
          *&v101[18] = 2048;
          *&v101[20] = v68;
          *&v101[28] = 2048;
          v102 = (v59 - v40) / 1000000000.0;
          v103 = 1024;
          v104 = add_explicit;
          v105 = 1024;
          v106 = v60;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Uploading batches i:[%{public}@], c:%lu, s:%llu, tq:%.3f, o:%u(%u)", buf, 0x36u);
        }

        _MBLog(@"Df", "Uploading batches i:[%{public}@], c:%lu, s:%llu, tq:%.3f, o:%u(%u)", v45, [v43 count], v68, (v59 - v40) / 1000000000.0, add_explicit, v60);
      }

      [v66 addItems:v43];
    }

    v34 = 0;
  }

  v53 = dispatch_get_global_queue(17, 0);
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10018B570;
  v73[3] = &unk_1003C0478;
  v54 = v18;
  v79 = v27;
  v74 = v54;
  v75 = selfCopy;
  v78 = v71;
  v55 = v64;
  v76 = v55;
  v56 = v65;
  v77 = v56;
  dispatch_group_notify(group, v53, v73);

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v96, 8);
}

- (id)_queueWithBatch:(id)batch
{
  batchCopy = batch;
  batchQueues = [(MBPeerTransferDrive *)self batchQueues];
  index = [batchCopy index];

  v7 = [batchQueues objectAtIndexedSubscript:{index % objc_msgSend(batchQueues, "count")}];

  return v7;
}

- (void)uploadBatch:(id)batch options:(id)options completion:(id)completion
{
  batchCopy = batch;
  optionsCopy = options;
  completionCopy = completion;
  v11 = [(MBPeerTransferDrive *)self _queueWithBatch:batchCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018BA44;
  v15[3] = &unk_1003C04A0;
  v15[4] = self;
  v16 = batchCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = batchCopy;
  dispatch_async(v11, v15);
}

- (void)finishBatchUploadsWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = [[MBDriveUploadBatch alloc] initWithPaths:0 size:0 last:1];
  v9 = [(MBPeerTransferDrive *)self _queueWithBatch:v8];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018BB6C;
  v13[3] = &unk_1003C04A0;
  v13[4] = self;
  v14 = v8;
  v15 = optionsCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = optionsCopy;
  v12 = v8;
  dispatch_async(v9, v13);
}

- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  if (error)
  {
    *error = [MBError errorWithCode:4 path:path format:@"Download file at path is not implemented"];
  }

  return 0;
}

- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  __assert_rtn("[MBPeerTransferDrive downloadFilesAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 472, "0 && not yet implemented");
}

- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  toPathCopy2 = toPath;
  pathCopy2 = path;
  v13 = [NSDictionary dictionaryWithObjects:&toPathCopy forKeys:&pathCopy count:1];

  LOBYTE(error) = [(MBPeerTransferDrive *)self moveItemsAtPaths:v13 options:optionsCopy results:0 error:error];
  return error;
}

- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  fileTransferSession = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBPeerTransferDrive moveItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 482, "fileTransferSession");
  }

  v13 = fileTransferSession;
  if ([(MBPeerTransferDrive *)self invalidated])
  {
    v14 = self->_invalidationError;
  }

  else
  {
    v15 = objc_opt_new();
    [v15 setRelativePaths:pathsCopy];
    v25 = 0;
    v16 = [MBPeerMessenger sendRequestSync:v15 session:v13 error:&v25];
    v14 = v25;

    if (v16)
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  if (!v14)
  {
    __assert_rtn("[MBPeerTransferDrive moveItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 497, "error");
  }

  if (results)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10018BFB0;
    v22[3] = &unk_1003C04F0;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(pathsCopy, "count")}];
    v24 = v14;
    v18 = v23;
    [pathsCopy enumerateKeysAndObjectsUsingBlock:v22];
    v19 = v18;
    *results = v18;
  }

  if (error)
  {
    v20 = v14;
    v17 = 0;
    v16 = 0;
    *error = v14;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

LABEL_12:

  return v17;
}

- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  pathCopy2 = path;
  v10 = [NSArray arrayWithObjects:&pathCopy count:1];

  LOBYTE(error) = [(MBPeerTransferDrive *)self removeItemsAtPaths:v10 options:optionsCopy results:0 error:error, pathCopy];
  return error;
}

- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  fileTransferSession = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBPeerTransferDrive removeItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 520, "fileTransferSession");
  }

  v13 = fileTransferSession;
  if ([(MBPeerTransferDrive *)self invalidated])
  {
    v14 = self->_invalidationError;
  }

  else
  {
    v15 = objc_opt_new();
    [v15 setRelativePaths:pathsCopy];
    v25 = 0;
    v16 = [MBPeerMessenger sendRequestSync:v15 session:v13 error:&v25];
    v14 = v25;

    if (v16)
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  if (!v14)
  {
    __assert_rtn("[MBPeerTransferDrive removeItemsAtPaths:options:results:error:]", "MBPeerTransferDrive.m", 535, "error");
  }

  if (results)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10018C2A4;
    v22[3] = &unk_1003C0518;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(pathsCopy, "count")}];
    v24 = v14;
    v18 = v23;
    [pathsCopy enumerateObjectsUsingBlock:v22];
    v19 = v18;
    *results = v18;
  }

  if (error)
  {
    v20 = v14;
    v17 = 0;
    v16 = 0;
    *error = v14;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

LABEL_12:

  return v17;
}

- (BOOL)freeSpace:(unint64_t *)space error:(id *)error
{
  if (space)
  {
    *space = self->_freeSpace;
  }

  return 1;
}

- (void)startListeningForFileTransfers
{
  fileTransferSession = [(MBPeerTransferDrive *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBPeerTransferDrive startListeningForFileTransfers]", "MBPeerTransferDrive.m", 567, "fileTransferSession");
  }

  [(MBPeerTransferDrive *)self _resetReceivedFilesProgress];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C590;
  v10[3] = &unk_1003C0540;
  objc_copyWeak(&v11, &location);
  [fileTransferSession setReceivedItemHandler:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018C8A0;
  v9[3] = &unk_1003C0568;
  v9[4] = self;
  [MBPeerMessenger registerRequestHandler:v9 forTask:@"MBPeerTaskMove" session:fileTransferSession];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018CD98;
  v8[3] = &unk_1003C0590;
  v8[4] = self;
  [MBPeerMessenger registerRequestHandler:v8 forTask:@"MBPeerTaskRemove" session:fileTransferSession];
  [fileTransferSession activate];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      selfPublicKey = [fileTransferSession selfPublicKey];
      *buf = 138412290;
      v14 = selfPublicKey;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activated the FT session (selfPublicKey: %@)", buf, 0xCu);
    }

    selfPublicKey2 = [fileTransferSession selfPublicKey];
    _MBLog(@"Df", "Activated the FT session (selfPublicKey: %@)", selfPublicKey2);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)_handleReceivedItem:(id)item metadata:(id)metadata error:(id *)error
{
  itemCopy = item;
  metadataCopy = metadata;
  if (!error)
  {
    __assert_rtn("[MBPeerTransferDrive _handleReceivedItem:metadata:error:]", "MBPeerTransferDrive.m", 663, "errorOut");
  }

  v10 = metadataCopy;
  itemURL = [itemCopy itemURL];
  if (!itemURL)
  {
    __assert_rtn("[MBPeerTransferDrive _handleReceivedItem:metadata:error:]", "MBPeerTransferDrive.m", 668, "fromFileURL");
  }

  v12 = itemURL;
  relativePath = [v10 relativePath];
  if (relativePath)
  {
    protectionClass = [v10 protectionClass];
    v92 = 0;
    v15 = MBProtectionClassSupportedValue([protectionClass intValue], 1, &v92);
    v16 = v92;

    errorCopy = error;
    if (v15 == 255)
    {
      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v18 = v16;
        goto LABEL_13;
      }

      path = [v12 path];
      *buf = 138412546;
      v94 = path;
      v95 = 2112;
      v96 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "invalid protection class at %@: %@", buf, 0x16u);

      path2 = [v12 path];
      _MBLog(@"E ", "invalid protection class at %@: %@", path2, v16);
      v18 = v16;
    }

    else
    {
      v91 = v16;
      v17 = +[MBProtectionClassUtils setWithPathFSR:value:error:](MBProtectionClassUtils, "setWithPathFSR:value:error:", [v12 fileSystemRepresentation], v15, &v91);
      v18 = v91;

      if (v17)
      {
        goto LABEL_14;
      }

      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v18 = 0;
LABEL_14:
        v87 = relativePath;
        v24 = [(MBPeerTransferDrive *)self fullURLForDriveRelativePath:relativePath];
        uRLByDeletingLastPathComponent = [v24 URLByDeletingLastPathComponent];
        v26 = +[NSFileManager defaultManager];
        [v26 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        if (!self->_fileHashDB)
        {
          goto LABEL_42;
        }

        v84 = uRLByDeletingLastPathComponent;
        v85 = itemCopy;
        sha256HashData = [itemCopy sha256HashData];
        fileHashDB = self->_fileHashDB;
        v90 = v18;
        path26 = [(MBFileHashDB *)fileHashDB filePathForHash:sha256HashData error:&v90];
        v81 = v90;

        v82 = sha256HashData;
        if (path26)
        {
          v83 = v10;
          v30 = copyfile_state_alloc();
          v31 = copyfile([path26 fileSystemRepresentation], objc_msgSend(v24, "fileSystemRepresentation"), v30, 0x12C0000u);
          v32 = *__error();
          copyfile_state_free(v30);
          if (!v31)
          {
            v48 = MBGetDefaultLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              path3 = [v24 path];
              *buf = 138412546;
              v94 = path26;
              v95 = 2112;
              v96 = path3;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Cloned %@ to %@", buf, 0x16u);

              path4 = [v24 path];
              _MBLog(@"Db", "Cloned %@ to %@", path26, path4);
            }

            v51 = +[NSFileManager defaultManager];
            v89 = v81;
            v52 = [v51 removeItemAtURL:v12 error:&v89];
            v18 = v89;

            v53 = sha256HashData;
            if (v52)
            {
              goto LABEL_49;
            }

            path27 = MBGetDefaultLog();
            if (os_log_type_enabled(path27, OS_LOG_TYPE_ERROR))
            {
              path5 = [v12 path];
              *buf = 138412546;
              v94 = path5;
              v95 = 2112;
              v96 = v18;
              _os_log_impl(&_mh_execute_header, path27, OS_LOG_TYPE_ERROR, "Failed to remove received file %@: %@", buf, 0x16u);

              path6 = [v12 path];
              _MBLog(@"E ", "Failed to remove received file %@: %@", path6, v18);
            }

LABEL_48:

LABEL_49:
            uRLByDeletingLastPathComponent = v84;
            itemCopy = v85;
LABEL_50:

            fileSize = [itemCopy fileSize];
            [(MBPeerTransferDrive *)self _updateProgressForReceivedItem:v24 size:fileSize];
            v77 = MBGetDefaultLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              path7 = [v24 path];
              *buf = 138412546;
              v94 = path7;
              v95 = 2048;
              v96 = fileSize;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "Downloaded %@ (%llu)", buf, 0x16u);

              path8 = [v24 path];
              _MBLog(@"Db", "Downloaded %@ (%llu)", path8, fileSize);
            }

            v22 = 1;
            v10 = v83;
            goto LABEL_53;
          }

          if (v32 == 18)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              path9 = [v24 path];
              *buf = 138412546;
              v94 = path26;
              v95 = 2112;
              v96 = path9;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed to clone from %@ to %@. Destination is on a different volume. Will copy instead", buf, 0x16u);

              path10 = [v24 path];
              _MBLog(@"Df", "Failed to clone from %@ to %@. Destination is on a different volume. Will copy instead", path26, path10);
            }

            v36 = copyfile_state_alloc();
            v37 = copyfile([path26 fileSystemRepresentation], objc_msgSend(v24, "fileSystemRepresentation"), v36, 0x120000u);
            v38 = *__error();
            copyfile_state_free(v36);
            v10 = v83;
            if (v37)
            {
              v39 = MBGetDefaultLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                path11 = [v12 path];
                path12 = [v24 path];
                *buf = 138412802;
                v94 = path11;
                v95 = 2112;
                v96 = path12;
                v97 = 1024;
                LODWORD(v98[0]) = v38;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to copy received file from %@ to %@: %{errno}d", buf, 0x1Cu);

                path13 = [v12 path];
                path14 = [v24 path];
                _MBLog(@"E ", "Failed to copy received file from %@ to %@: %{errno}d", path13, path14, v38);
              }

              path15 = [v24 path];
              v18 = [MBError posixErrorWithPath:path15 format:@"Failed to move transferred item into place"];

              v45 = v18;
              *errorCopy = v18;

              v22 = 0;
              uRLByDeletingLastPathComponent = v84;
              itemCopy = v85;
              relativePath = v87;
LABEL_53:

              goto LABEL_54;
            }

            relativePath = v87;
            v18 = v81;
            v53 = sha256HashData;
            goto LABEL_49;
          }

          v54 = [MBError posixErrorWithPath:path26 format:@"copyfile failed"];

          v55 = MBGetDefaultLog();
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v10 = v83;
            goto LABEL_40;
          }

          path16 = [v24 path];
          *buf = 138413058;
          v94 = path26;
          v95 = 2112;
          v96 = path16;
          v97 = 1024;
          LODWORD(v98[0]) = v31;
          WORD2(v98[0]) = 1024;
          *(v98 + 6) = v32;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "copyfile(%@, %@) failed (%d): %{errno}d", buf, 0x22u);

          path17 = [v24 path];
          _MBLog(@"E ", "copyfile(%@, %@) failed (%d): %{errno}d", path26, path17, v31, v32);
          v10 = v83;
        }

        else
        {
          v46 = self->_fileHashDB;
          path18 = [v24 path];
          v88 = 0;
          LOBYTE(v46) = [(MBFileHashDB *)v46 addFilePath:path18 forHash:sha256HashData error:&v88];
          path26 = v88;

          if (v46)
          {
            v18 = v81;
LABEL_41:

            uRLByDeletingLastPathComponent = v84;
            itemCopy = v85;
LABEL_42:
            fileSystemRepresentation = [v12 fileSystemRepresentation];
            fileSystemRepresentation2 = [v24 fileSystemRepresentation];
            rename(fileSystemRepresentation, fileSystemRepresentation2, v64);
            if (v65)
            {
              path19 = [v24 path];
              v67 = [MBError posixErrorWithPath:path19 format:@"Failed to move transferred item into place"];

              v68 = MBGetDefaultLog();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                path20 = [v12 path];
                path21 = [v24 path];
                *buf = 138412802;
                v94 = path20;
                v95 = 2112;
                v96 = path21;
                v97 = 2112;
                v98[0] = v67;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to move received file from %@ to %@: %@", buf, 0x20u);

                path22 = [v12 path];
                path23 = [v24 path];
                _MBLog(@"E ", "Failed to move received file from %@ to %@: %@", path22, path23, v67);
              }

              v73 = v67;
              v22 = 0;
              *errorCopy = v67;
              v18 = v67;
              goto LABEL_53;
            }

            v83 = v10;
            v53 = MBGetDefaultLog();
            if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_50;
            }

            v84 = uRLByDeletingLastPathComponent;
            v85 = itemCopy;
            path24 = [v12 path];
            path25 = [v24 path];
            *buf = 138412546;
            v94 = path24;
            v95 = 2112;
            v96 = path25;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Moved %@ to %@", buf, 0x16u);

            path26 = [v12 path];
            path27 = [v24 path];
            _MBLog(@"Db", "Moved %@ to %@", path26, path27);
            goto LABEL_48;
          }

          v55 = MBGetDefaultLog();
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v54 = v81;
            goto LABEL_40;
          }

          path28 = [v24 path];
          *buf = 138412802;
          v94 = path28;
          v95 = 2112;
          v96 = sha256HashData;
          v97 = 2112;
          v98[0] = path26;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to add file path for hash %@ %@: %@", buf, 0x20u);

          path17 = [v24 path];
          _MBLog(@"E ", "Failed to add file path for hash %@ %@: %@", path17, sha256HashData, path26);
          v54 = v81;
        }

LABEL_40:
        v18 = v54;
        goto LABEL_41;
      }

      path29 = [v12 path];
      *buf = 138412546;
      v94 = path29;
      v95 = 2112;
      v96 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to set the protection class at %@: %@", buf, 0x16u);

      path2 = [v12 path];
      _MBLog(@"E ", "Failed to set the protection class at %@: %@", path2, v18);
    }

    goto LABEL_13;
  }

  [MBError errorWithCode:1 format:@"nil path"];
  *error = v22 = 0;
LABEL_54:

  return v22;
}

- (BOOL)_handleMoveItem:(id)item metadata:(id)metadata error:(id *)error
{
  itemCopy = item;
  metadataCopy = metadata;
  relativePath = [metadataCopy relativePath];
  v11 = [(MBPeerTransferDrive *)self fullURLForDriveRelativePath:relativePath];

  uRLByDeletingLastPathComponent = [v11 URLByDeletingLastPathComponent];
  v13 = +[NSFileManager defaultManager];
  [v13 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  itemURL = [itemCopy itemURL];
  if (!itemURL)
  {
    __assert_rtn("[MBPeerTransferDrive _handleMoveItem:metadata:error:]", "MBPeerTransferDrive.m", 775, "item.itemURL");
  }

  v15 = +[NSFileManager defaultManager];
  itemURL2 = [itemCopy itemURL];
  v36 = 0;
  v17 = [v15 moveItemAtURL:itemURL2 toURL:v11 error:&v36];
  v18 = v36;

  v19 = MBGetDefaultLog();
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      itemURL3 = [itemCopy itemURL];
      path = [itemURL3 path];
      path2 = [v11 path];
      *buf = 138412546;
      v38 = path;
      v39 = 2112;
      v40 = path2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Moved %@ to %@", buf, 0x16u);

      itemURL4 = [itemCopy itemURL];
      path3 = [itemURL4 path];
      path4 = [v11 path];
      _MBLog(@"Db", "Moved %@ to %@", path3, path4);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      itemURL5 = [itemCopy itemURL];
      path5 = [itemURL5 path];
      [v11 path];
      v29 = v35 = error;
      *buf = 138412802;
      v38 = path5;
      v39 = 2112;
      v40 = v29;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to move received file from %@ to %@: %@", buf, 0x20u);

      itemURL6 = [itemCopy itemURL];
      path6 = [itemURL6 path];
      path7 = [v11 path];
      _MBLog(@"E ", "Failed to move received file from %@ to %@: %@", path6, path7, v18);

      error = v35;
    }

    if (error)
    {
      v33 = v18;
      *error = v18;
    }
  }

  return v17;
}

- (void)cleanUpReceivedFilesDirectory
{
  rootURL = [(MBPeerTransferDrive *)self rootURL];
  path = [rootURL path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:path];

  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = path;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
      _MBLog(@"Df", "Removing %@", path);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = +[NSFileManager defaultManager];
    v17 = 0;
    v10 = [v9 removeItemAtPath:path error:&v17];
    v11 = v17;

    if ((v10 & 1) == 0)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = path;
        v20 = 2112;
        v21 = *&v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove %@: %@", path, v11);
      }
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v14 = v13;
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v14 - v8;
      *buf = 138412546;
      v19 = path;
      v20 = 2048;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed %@ in %.3fs", buf, 0x16u);
      _MBLog(@"Df", "Removed %@ in %.3fs", path, *&v16);
    }
  }
}

- (void)_resetReceivedFilesProgress
{
  os_unfair_lock_lock(&self->_progressLock);
  self->_filesReceived = 0;
  self->_bytesReceived = 0;
  self->_filesSent = 0;
  self->_bytesSent = 0;

  os_unfair_lock_unlock(&self->_progressLock);
}

- (id)fullURLForDriveRelativePath:(id)path
{
  pathCopy = path;
  rootURL = [(MBPeerTransferDrive *)self rootURL];
  v6 = [rootURL URLByAppendingPathComponent:pathCopy];

  return v6;
}

- (void)_updateProgressForReceivedItem:(id)item size:(int64_t)size
{
  itemCopy = item;
  v7 = itemCopy;
  if ((size & 0x8000000000000000) == 0)
  {
LABEL_4:
    os_unfair_lock_lock(&self->_progressLock);
    self->_bytesReceived += size;
    v11 = self->_filesReceived + 1;
    self->_filesReceived = v11;
    bytesReceived = self->_bytesReceived;
    os_unfair_lock_unlock(&self->_progressLock);
    receiveProgressHandler = [(MBPeerTransferDrive *)self receiveProgressHandler];
    v10 = receiveProgressHandler;
    if (receiveProgressHandler)
    {
      v14 = *(receiveProgressHandler + 16);
      *buf = v11;
      *&buf[8] = bytesReceived;
      *&buf[16] = 0;
      v21 = 0;
      v14(receiveProgressHandler, buf);
    }

    goto LABEL_9;
  }

  v19 = 0;
  v18 = 0;
  v8 = [itemCopy getResourceValue:&v19 forKey:NSURLFileSizeKey error:&v18];
  v9 = v19;
  v10 = v18;
  if (v8)
  {
    size = [v9 longLongValue];

    goto LABEL_4;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    path = [v7 path];
    *buf = 138412546;
    *&buf[4] = path;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get file size of %@: %@", buf, 0x16u);

    path2 = [v7 path];
    _MBLog(@"E ", "Failed to get file size of %@: %@", path2, v10);
  }

LABEL_9:
}

- (void)_updateProgressForSentItem:(id)item size:(int64_t)size
{
  itemCopy = item;
  v7 = itemCopy;
  if ((size & 0x8000000000000000) == 0)
  {
LABEL_4:
    os_unfair_lock_lock(&self->_progressLock);
    self->_bytesSent += size;
    v11 = self->_filesSent + 1;
    self->_filesSent = v11;
    bytesSent = self->_bytesSent;
    os_unfair_lock_unlock(&self->_progressLock);
    sendProgressHandler = [(MBPeerTransferDrive *)self sendProgressHandler];
    v10 = sendProgressHandler;
    if (sendProgressHandler)
    {
      v14 = *(sendProgressHandler + 16);
      *buf = v11;
      *&buf[8] = bytesSent;
      *&buf[16] = 0;
      v21 = 0;
      v14(sendProgressHandler, buf);
    }

    goto LABEL_9;
  }

  v19 = 0;
  v18 = 0;
  v8 = [itemCopy getResourceValue:&v19 forKey:NSURLFileSizeKey error:&v18];
  v9 = v19;
  v10 = v18;
  if (v8)
  {
    size = [v9 longLongValue];

    goto LABEL_4;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    path = [v7 path];
    *buf = 138412546;
    *&buf[4] = path;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get file size of %@: %@", buf, 0x16u);

    path2 = [v7 path];
    _MBLog(@"E ", "Failed to get file size of %@: %@", path2, v10);
  }

LABEL_9:
}

@end