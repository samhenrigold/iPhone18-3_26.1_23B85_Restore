@interface MBCKBatchDelete
- (MBCKBatchDelete)initWithOperationTracker:(id)tracker;
- (MBCKOperationTracker)ckOperationTracker;
- (OS_dispatch_semaphore)deleteSemaphore;
- (void)_deleteRecordsWithCompletion:(id)completion;
- (void)_finishBatchedDeletesWithCompletion:(id)completion;
- (void)_flush;
- (void)_flushBatchedDeletes:(unint64_t)deletes;
- (void)_handleCompletionForDeleteInfo:(id)info operation:(id)operation error:(id)error;
- (void)_performCallbacksForDeleteInfo:(id)info error:(id)error;
- (void)_scheduleBatchDeleteOperationForDeleteInfos:(id)infos;
- (void)_sendBatchDeleteOperationForDeleteInfos:(id)infos;
- (void)dealloc;
- (void)deleteRecordWithID:(id)d completion:(id)completion;
- (void)deleteRecordsWithCompletion:(id)completion;
@end

@implementation MBCKBatchDelete

- (MBCKBatchDelete)initWithOperationTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKBatchDelete initWithOperationTracker:]", "MBCKBatchDelete.m", 53, "tracker");
  }

  v5 = trackerCopy;
  ckOperationPolicy = [trackerCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchDelete initWithOperationTracker:]", "MBCKBatchDelete.m", 55, "policy");
  }

  v7 = ckOperationPolicy;
  v21.receiver = self;
  v21.super_class = MBCKBatchDelete;
  v8 = [(MBCKBatchDelete *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_ckOperationTracker, v5);
    objc_storeStrong(&v9->_ckOperationPolicy, v7);
    *&v9->_deleteIncrementally = 257;
    v10 = objc_opt_new();
    deleteInfos = v9->_deleteInfos;
    v9->_deleteInfos = v10;

    v12 = objc_opt_new();
    deleteInfosByRecordID = v9->_deleteInfosByRecordID;
    v9->_deleteInfosByRecordID = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);

    v16 = dispatch_queue_create("com.apple.backupd.batchDelete", v15);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v16;

    v18 = dispatch_group_create();
    deleteGroup = v9->_deleteGroup;
    v9->_deleteGroup = v18;

    atomic_store(0, &v9->_pendingOperationsCount);
    atomic_store(0, &v9->_started);
  }

  return v9;
}

- (void)dealloc
{
  if ([(NSMutableOrderedSet *)self->_deleteInfos count])
  {
    __assert_rtn("[MBCKBatchDelete dealloc]", "MBCKBatchDelete.m", 73, "_deleteInfos.count == 0");
  }

  v3.receiver = self;
  v3.super_class = MBCKBatchDelete;
  [(MBCKBatchDelete *)&v3 dealloc];
}

- (OS_dispatch_semaphore)deleteSemaphore
{
  if (qword_100421A18 != -1)
  {
    dispatch_once(&qword_100421A18, &stru_1003C1490);
  }

  v3 = qword_100421A10;

  return v3;
}

- (void)deleteRecordWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v36 = dCopy;
    v37 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Adding a delete for %{public}@ to %{public}@", buf, 0x16u);
    v34 = dCopy;
    _MBLog(@"Db", "Adding a delete for %{public}@ to %{public}@");
  }

  if (dCopy)
  {
    v16 = atomic_load(&self->_started);
    v17 = v16 ^ 1;
    if (((v16 ^ 1) & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "You can't add a new recordID to an already started batch", buf, 2u);
      }
    }

    v19 = _MBAssert(v17 & 1, @"You can't add a new recordID to an already started batch", v10, v11, v12, v13, v14, v15, v34);
    if (v19)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, dCopy, v19);
      }

      goto LABEL_29;
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    deleteInfosByRecordID = [(MBCKBatchDelete *)selfCopy2 deleteInfosByRecordID];
    v22 = [deleteInfosByRecordID objectForKeyedSubscript:dCopy];

    if (v22)
    {
      if (!completionCopy)
      {
        v26 = 1;
        v27 = v22;
        goto LABEL_26;
      }

      callbacks = [v22 callbacks];
      deleteInfos = [completionCopy copy];
      v25 = objc_retainBlock(deleteInfos);
      [callbacks addObject:v25];

      v26 = 1;
      v27 = v22;
    }

    else
    {
      v27 = objc_opt_new();
      [v27 setState:0];
      if (completionCopy)
      {
        callbacks2 = [v27 callbacks];
        v29 = [completionCopy copy];
        v30 = objc_retainBlock(v29);
        [callbacks2 addObject:v30];
      }

      [v27 setRecordID:dCopy];
      ckOperationPolicy = [(MBCKBatchDelete *)selfCopy2 ckOperationPolicy];
      callbacks = ckOperationPolicy;
      if (!ckOperationPolicy)
      {
        __assert_rtn("[MBCKBatchDelete deleteRecordWithID:completion:]", "MBCKBatchDelete.m", 125, "policy");
      }

      maxBatchCount = [ckOperationPolicy maxBatchCount];
      if ([(MBCKBatchDelete *)selfCopy2 deleteIncrementally]&& [(MBCKBatchDelete *)selfCopy2 currentBatchCount]&& [(MBCKBatchDelete *)selfCopy2 currentBatchCount]>= maxBatchCount)
      {
        [(MBCKBatchDelete *)selfCopy2 setCurrentBatchCount:0];
        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      [(MBCKBatchDelete *)selfCopy2 setCurrentBatchCount:[(MBCKBatchDelete *)selfCopy2 currentBatchCount]+ 1];
      deleteInfosByRecordID2 = [(MBCKBatchDelete *)selfCopy2 deleteInfosByRecordID];
      [deleteInfosByRecordID2 setObject:v27 forKeyedSubscript:dCopy];

      deleteInfos = [(MBCKBatchDelete *)selfCopy2 deleteInfos];
      [deleteInfos addObject:v27];
    }

LABEL_26:
    objc_sync_exit(selfCopy2);

    if (!((v22 != 0) | v26 & 1))
    {
      [(MBCKBatchDelete *)selfCopy2 _flushBatchedDeletes:1];
    }

    v19 = 0;
    goto LABEL_29;
  }

  if (completionCopy)
  {
    v19 = [MBError errorWithCode:1 format:@"You can't delete a nil recordID"];
    completionCopy[2](completionCopy, 0, v19);
LABEL_29:
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_flush
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKBatchDelete *)self _flushBatchedDeletes:-1];

  objc_autoreleasePoolPop(v3);
}

- (void)_performCallbacksForDeleteInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  if ([infoCopy state] == 3)
  {
    v19 = +[NSAssertionHandler currentHandler];
    recordID = [infoCopy recordID];
    v21 = +[NSThread callStackSymbols];
    [v19 handleFailureInMethod:a2 object:self file:@"MBCKBatchDelete.m" lineNumber:151 description:{@"We've already finished Deleting record %@: %@", recordID, v21}];
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    recordID2 = [infoCopy recordID];
    *buf = 138543362;
    v34 = recordID2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Performing callbacks for delete of record %{public}@", buf, 0xCu);

    recordID3 = [infoCopy recordID];
    _MBLog(@"Db", "Performing callbacks for delete of record %{public}@", recordID3);
  }

  [infoCopy setState:3];
  [infoCopy setError:errorCopy];
  callbacks = [infoCopy callbacks];
  [infoCopy setCallbacks:0];
  recordID4 = [infoCopy recordID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = callbacks;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        callbackQueue = [(MBCKBatchDelete *)self callbackQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001E7C58;
        block[3] = &unk_1003C14B8;
        v27 = v17;
        v25 = recordID4;
        v26 = errorCopy;
        dispatch_async(callbackQueue, block);
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }
}

- (void)_finishBatchedDeletesWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deleteInfos = [(MBCKBatchDelete *)selfCopy deleteInfos];
  v7 = [deleteInfos count];

  objc_sync_exit(selfCopy);
  if (v7)
  {
    [(MBCKBatchDelete *)selfCopy _deleteRecordsWithCompletion:completionCopy];
  }

  else
  {
    if ([(MBCKBatchDelete *)selfCopy canceled])
    {
      [MBError errorWithCode:202 format:@"Batch delete canceled"];
    }

    else
    {
      [(MBCKBatchDelete *)selfCopy deleteError];
    }
    v8 = ;
    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = selfCopy;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed %{public}@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed %{public}@: %@", selfCopy, v8);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Finished %{public}@", selfCopy);
    }

    if (completionCopy)
    {
      callbackQueue = [(MBCKBatchDelete *)selfCopy callbackQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E7EFC;
      block[3] = &unk_1003BE9A8;
      v15 = completionCopy;
      v14 = v8;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(callbackQueue, v12);
    }
  }
}

- (void)_handleCompletionForDeleteInfo:(id)info operation:(id)operation error:(id)error
{
  infoCopy = info;
  operationCopy = operation;
  errorCopy = error;
  if (!infoCopy)
  {
    __assert_rtn("[MBCKBatchDelete _handleCompletionForDeleteInfo:operation:error:]", "MBCKBatchDelete.m", 191, "deleteInfo");
  }

  if (!operationCopy)
  {
    __assert_rtn("[MBCKBatchDelete _handleCompletionForDeleteInfo:operation:error:]", "MBCKBatchDelete.m", 192, "operation");
  }

  v11 = errorCopy;
  if ([infoCopy state] != 3)
  {
    recordID = [infoCopy recordID];
    deleteAttempts = [infoCopy deleteAttempts];
    [infoCopy setError:v11];
    if (!v11)
    {
      v26 = MBGetDefaultLog();
      v27 = v26;
      if (deleteAttempts == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v41 = recordID;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Deleted record %{public}@", buf, 0xCu);
          _MBLog(@"Db", "Deleted record %{public}@", recordID);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = recordID;
        v42 = 2048;
        v43 = *&deleteAttempts;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Deleted record %{public}@ after %lu attempts", buf, 0x16u);
        _MBLog(@"Df", "Deleted record %{public}@ after %lu attempts", recordID, deleteAttempts);
      }

      goto LABEL_47;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v41 = recordID;
      v42 = 2112;
      v43 = *&v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Handling delete error for record %{public}@: %@", buf, 0x16u);
      _MBLog(@"E ", "Handling delete error for record %{public}@: %@", recordID, v11);
    }

    ckOperationPolicy = [(MBCKBatchDelete *)self ckOperationPolicy];
    if (!ckOperationPolicy)
    {
      __assert_rtn("[MBCKBatchDelete _handleCompletionForDeleteInfo:operation:error:]", "MBCKBatchDelete.m", 203, "policy");
    }

    v16 = ckOperationPolicy;
    [ckOperationPolicy retryAfterInterval];
    v18 = v17;
    domain = [v11 domain];
    v20 = [domain isEqualToString:CKErrorDomain];

    if (!v20)
    {
      if (([operationCopy atomic] & 1) != 0 || (v21 = 5.0, !+[MBError isRetryableXPCError:](MBError, "isRetryableXPCError:", v11)))
      {
LABEL_45:

        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v41 = recordID;
          v42 = 2048;
          v43 = *&deleteAttempts;
          v44 = 2112;
          v45 = v11;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to delete record %{public}@ after %lu attempts, error:%@", buf, 0x20u);
          _MBLog(@"E ", "Failed to delete record %{public}@ after %lu attempts, error:%@", recordID, deleteAttempts, v11);
        }

LABEL_47:

        [(MBCKBatchDelete *)self _performCallbacksForDeleteInfo:infoCopy error:v11];
LABEL_48:

        goto LABEL_49;
      }

      goto LABEL_44;
    }

    v21 = fmax(v18, 1.0);
    code = [v11 code];
    if (code > 5)
    {
      switch(code)
      {
        case 6:
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = recordID;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ hit a service unavailable error", buf, 0xCu);
            _MBLog(@"E ", "Delete of record %{public}@ hit a service unavailable error", recordID);
          }

          break;
        case 7:
          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = recordID;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ was rate limited", buf, 0xCu);
            _MBLog(@"E ", "Delete of record %{public}@ was rate limited", recordID);
          }

          if ([MBError isNetworkDisconnectedError:v11]&& ![(MBCKBatchDelete *)self retryWhenNetworkDisconnected])
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 23:
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = recordID;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ got a zone busy error", buf, 0xCu);
            _MBLog(@"E ", "Delete of record %{public}@ got a zone busy error", recordID);
          }

          break;
        default:
          goto LABEL_45;
      }
    }

    else
    {
      switch(code)
      {
        case 2:
          userInfo = [v11 userInfo];
          v30 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
          v31 = [v30 objectForKeyedSubscript:recordID];

          if (!v31)
          {
            v39 = MBGetDefaultLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v41 = recordID;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "No partial error found for record %{public}@", buf, 0xCu);
              _MBLog(@"E ", "No partial error found for record %{public}@", recordID);
            }

            goto LABEL_45;
          }

          [(MBCKBatchDelete *)self _handleCompletionForDeleteInfo:infoCopy operation:operationCopy error:v31];
          goto LABEL_55;
        case 3:
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = recordID;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ hit a network unavailable error", buf, 0xCu);
            _MBLog(@"E ", "Delete of record %{public}@ hit a network unavailable error", recordID);
          }

          if ([MBError isNetworkDisconnectedError:v11]&& ![(MBCKBatchDelete *)self retryWhenNetworkDisconnected])
          {
            goto LABEL_45;
          }

          v24 = arc4random_uniform(5u);
          v25 = 10.0;
          break;
        case 4:
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = recordID;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ hit a network failure error", buf, 0xCu);
            _MBLog(@"E ", "Delete of record %{public}@ hit a network failure error", recordID);
          }

          v24 = arc4random_uniform(5u);
          v25 = 1.0;
          break;
        default:
          goto LABEL_45;
      }

      v21 = fmax(v21, v24 + v25);
    }

LABEL_44:
    if (deleteAttempts > [v16 maxRetryAttempts])
    {
      goto LABEL_45;
    }

    userInfo2 = [v11 userInfo];
    v31 = [userInfo2 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v31)
    {
      [v31 doubleValue];
      v21 = v35;
    }

    v36 = fmax(v21, 0.0);
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v41 = recordID;
      v42 = 2048;
      v43 = v36;
      v44 = 2048;
      v45 = deleteAttempts;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Retrying delete of record %{public}@ in %0.3fs after %lu attempts", buf, 0x20u);
      _MBLog(@"Df", "Retrying delete of record %{public}@ in %0.3fs after %lu attempts", recordID, *&v36, deleteAttempts);
    }

    v38 = [NSDate dateWithTimeIntervalSinceNow:v36];
    [infoCopy setRetryDate:v38];

    [infoCopy setState:1];
LABEL_55:

    goto LABEL_48;
  }

LABEL_49:
}

- (void)_sendBatchDeleteOperationForDeleteInfos:(id)infos
{
  infosCopy = infos;
  ckOperationTracker = [(MBCKBatchDelete *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKBatchDelete _sendBatchDeleteOperationForDeleteInfos:]", "MBCKBatchDelete.m", 269, "tracker");
  }

  ckOperationPolicy = [(MBCKBatchDelete *)self ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchDelete _sendBatchDeleteOperationForDeleteInfos:]", "MBCKBatchDelete.m", 271, "policy");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v33 = 2048;
    selfCopy2 = [infosCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting a batch for %{public}@, c:%lu", buf, 0x16u);
    _MBLog(@"Df", "Deleting a batch for %{public}@, c:%lu", self, [infosCopy count]);
  }

  v8 = [infosCopy valueForKey:@"recordID"];
  v9 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:v8];
  objc_initWeak(&location, v9);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001E8B68;
  v27[3] = &unk_1003BEB28;
  objc_copyWeak(&v29, &location);
  v27[4] = self;
  v10 = infosCopy;
  v28 = v10;
  [v9 setModifyRecordsCompletionBlock:v27];
  pendingOperationsCount = self->_pendingOperationsCount;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = pendingOperationsCount;
    v14 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      operationID = [v9 operationID];
      v16 = [v8 count];
      *buf = 138544130;
      selfCopy = operationID;
      v33 = 2114;
      selfCopy2 = self;
      v35 = 2048;
      v36 = v16;
      v37 = 2048;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Created operation %{public}@ for %{public}@, c:%lu, o:%ld", buf, 0x2Au);
    }

    operationID2 = [v9 operationID];
    _MBLog(@"Df", "Created operation %{public}@ for %{public}@, c:%lu, o:%ld", operationID2, self, [v8 count], v13);
  }

  deleteGroup = [(MBCKBatchDelete *)self deleteGroup];
  dispatch_group_enter(deleteGroup);

  callbackQueue = [(MBCKBatchDelete *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E904C;
  block[3] = &unk_1003BC5B8;
  block[4] = self;
  v24 = ckOperationTracker;
  v25 = v9;
  v26 = ckOperationPolicy;
  v20 = ckOperationPolicy;
  v21 = v9;
  v22 = ckOperationTracker;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_scheduleBatchDeleteOperationForDeleteInfos:(id)infos
{
  infosCopy = infos;
  if (![infosCopy count])
  {
    __assert_rtn("[MBCKBatchDelete _scheduleBatchDeleteOperationForDeleteInfos:]", "MBCKBatchDelete.m", 336, "deleteInfos.count");
  }

  deleteGroup = [(MBCKBatchDelete *)self deleteGroup];
  dispatch_group_enter(deleteGroup);

  v6 = +[NSDate now];
  deleteSemaphore = [(MBCKBatchDelete *)self deleteSemaphore];
  dispatch_semaphore_wait(deleteSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  v8 = +[NSDate now];
  [v8 timeIntervalSinceDate:v6];
  v10 = v9;

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v35 = 2048;
    v36 = COERCE_DOUBLE([infosCopy count]);
    v37 = 2048;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preparing to delete a batch for %{public}@, c:%lu, tq:%.3fs", buf, 0x20u);
    _MBLog(@"Df", "Preparing to delete a batch for %{public}@, c:%lu, tq:%.3fs", self, [infosCopy count], v10);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = infosCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v13)
  {

LABEL_20:
    [(MBCKBatchDelete *)self _sendBatchDeleteOperationForDeleteInfos:v12];
    deleteGroup2 = [(MBCKBatchDelete *)self deleteGroup];
    dispatch_group_leave(deleteGroup2);
    goto LABEL_21;
  }

  v14 = v13;
  deleteGroup2 = 0;
  v16 = *v29;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(v12);
      }

      retryDate = [*(*(&v28 + 1) + 8 * i) retryDate];
      v19 = retryDate;
      if (retryDate)
      {
        if (deleteGroup2)
        {
          v20 = [deleteGroup2 laterDate:retryDate];

          deleteGroup2 = v20;
        }

        else
        {
          deleteGroup2 = retryDate;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v14);

  if (!deleteGroup2)
  {
    goto LABEL_20;
  }

  [deleteGroup2 timeIntervalSinceNow];
  v22 = fmax(v21, 0.0);
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v35 = 2048;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Scheduling a batch for %{public}@ in %0.3fs", buf, 0x16u);
    _MBLog(@"Df", "Scheduling a batch for %{public}@ in %0.3fs", self, *&v22);
  }

  v24 = dispatch_time(0, (v22 * 1000000000.0));
  v25 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9544;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v27 = v12;
  dispatch_after(v24, v25, block);

LABEL_21:
}

- (void)_flushBatchedDeletes:(unint64_t)deletes
{
  if (!deletes)
  {
    __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 369, "flushCount");
  }

  deletesCopy = deletes;
  ckOperationPolicy = [(MBCKBatchDelete *)self ckOperationPolicy];
  v31 = ckOperationPolicy;
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 371, "policy");
  }

  maxBatchCount = [ckOperationPolicy maxBatchCount];
  deleteIncrementally = [(MBCKBatchDelete *)self deleteIncrementally];
  v34 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deleteInfos = [(MBCKBatchDelete *)selfCopy deleteInfos];
  array = [deleteInfos array];

  v30 = array;
  v29 = [array sortedArrayWithOptions:16 usingComparator:&stru_1003C14D8];
  objectEnumerator = [v29 objectEnumerator];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    v14 = [v12 count];
    v15 = v14;
    if (!nextObject && !v14)
    {
      break;
    }

    zoneID = v11;
    if (nextObject)
    {
      if ([nextObject state])
      {
        zoneID = v11;
        goto LABEL_30;
      }

      recordID = [nextObject recordID];
      zoneID = [recordID zoneID];

      if (!v15)
      {
LABEL_27:
        [nextObject setState:2];
        [nextObject setDeleteAttempts:{objc_msgSend(nextObject, "deleteAttempts") + 1}];
        if (!v12)
        {
          v12 = objc_opt_new();
        }

        [v12 addObject:nextObject];
        goto LABEL_30;
      }

      if (v11)
      {
        v18 = [v11 isEqual:zoneID];
        if (v15 >= maxBatchCount)
        {
          v19 = deleteIncrementally;
        }

        else
        {
          v19 = 0;
        }

        if (v18 && (v19 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v15 >= maxBatchCount)
        {
          v20 = deleteIncrementally;
        }

        else
        {
          v20 = 0;
        }

        if (v20 != 1)
        {
          goto LABEL_27;
        }
      }
    }

    if (!v12 || !v15)
    {
      __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 413, "batch && batchCount");
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v41 = v15;
      v42 = 2114;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Flushing %lu batched deletes, zoneID:%{public}@", buf, 0x16u);
      _MBLog(@"I ", "Flushing %lu batched deletes, zoneID:%{public}@", v15, v11);
    }

    [v34 addObject:v12];
    deleteGroup = [(MBCKBatchDelete *)selfCopy deleteGroup];
    dispatch_group_enter(deleteGroup);

    v12 = 0;
    if (!--deletesCopy)
    {
      goto LABEL_32;
    }

    if (nextObject)
    {
      goto LABEL_27;
    }

LABEL_30:
    v23 = zoneID;

    v10 = nextObject;
    v11 = v23;
  }

  nextObject = 0;
  zoneID = v11;
LABEL_32:
  if ([v12 count])
  {
    __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 429, "!batch.count");
  }

  objc_sync_exit(selfCopy);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = v34;
  v25 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v25)
  {
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v24);
        }

        [(MBCKBatchDelete *)selfCopy _scheduleBatchDeleteOperationForDeleteInfos:*(*(&v35 + 1) + 8 * i)];
        deleteGroup2 = [(MBCKBatchDelete *)selfCopy deleteGroup];
        dispatch_group_leave(deleteGroup2);
      }

      v25 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v25);
  }
}

- (void)_deleteRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MBCKBatchDelete *)self _flush];
  deleteGroup = [(MBCKBatchDelete *)self deleteGroup];
  v6 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E9BC4;
  v9[3] = &unk_1003BD478;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_group_notify(deleteGroup, v6, v8);
}

- (void)deleteRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  if (atomic_exchange(&self->_started, 1u))
  {
    __assert_rtn("[MBCKBatchDelete deleteRecordsWithCompletion:]", "MBCKBatchDelete.m", 449, "!started && can't start a batch twice");
  }

  v5 = v4;
  [(MBCKBatchDelete *)self _deleteRecordsWithCompletion:completionCopy];
  objc_autoreleasePoolPop(v5);
}

- (MBCKOperationTracker)ckOperationTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_ckOperationTracker);

  return WeakRetained;
}

@end