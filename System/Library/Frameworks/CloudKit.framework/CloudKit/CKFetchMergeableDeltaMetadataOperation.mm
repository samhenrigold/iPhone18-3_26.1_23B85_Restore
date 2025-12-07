@interface CKFetchMergeableDeltaMetadataOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchMergeableDeltaMetadataOperation)initWithMergeableValueIDs:(id)ds;
- (id)activityCreate;
- (id)fetchMergeableDeltaMetadataCompletionBlock;
- (id)metadataFetchedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleFetchForMergeableValueID:(id)d metadatas:(id)metadatas error:(id)error;
- (void)setFetchMergeableDeltaMetadataCompletionBlock:(id)block;
- (void)setMetadataFetchedBlock:(id)block;
@end

@implementation CKFetchMergeableDeltaMetadataOperation

- (void)setMetadataFetchedBlock:(id)block
{
  blockCopy = block;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885B1F38;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    metadataFetchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_metadataFetchedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    metadataFetchedBlock = self->_metadataFetchedBlock;
    self->_metadataFetchedBlock = v9;
LABEL_9:
  }
}

- (id)metadataFetchedBlock
{
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, a2, v2))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, a2, v2) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1883ED958;
    v14 = sub_1883EF5E4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B2134;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_metadataFetchedBlock);
  }

  return v6;
}

- (void)setFetchMergeableDeltaMetadataCompletionBlock:(id)block
{
  blockCopy = block;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885B22C4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    fetchMergeableDeltaMetadataCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchMergeableDeltaMetadataCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    fetchMergeableDeltaMetadataCompletionBlock = self->_fetchMergeableDeltaMetadataCompletionBlock;
    self->_fetchMergeableDeltaMetadataCompletionBlock = v9;
LABEL_9:
  }
}

- (id)fetchMergeableDeltaMetadataCompletionBlock
{
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, a2, v2))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, a2, v2) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1883ED958;
    v14 = sub_1883EF5E4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B24C0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchMergeableDeltaMetadataCompletionBlock);
  }

  return v6;
}

- (CKFetchMergeableDeltaMetadataOperation)initWithMergeableValueIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = CKFetchMergeableDeltaMetadataOperation;
  v6 = [(CKOperation *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mergeableValueIDs, ds);
    v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v8, v9);
    perValueErrors = v7->_perValueErrors;
    v7->_perValueErrors = v10;
  }

  return v7;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v16.receiver = self;
  v16.super_class = CKFetchMergeableDeltaMetadataOperation;
  v5 = [(CKDatabaseOperation *)&v16 CKOperationShouldRun:?];
  if (v5)
  {
    v8 = objc_msgSend_mergeableValueIDs(self, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);

    if (v11)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (run)
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 12, @"%@ cannot run without a mergeable value ID", v13);
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)fillOutOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKFetchMergeableDeltaMetadataOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:infoCopy];
  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setMergeableValueIDs_(infoCopy, v8, v7);
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKFetchMergeableDeltaMetadataOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_mergeableValueIDs(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setMergeableValueIDs_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKFetchMergeableDeltaMetadataOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_metadataFetchedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_fetchMergeableDeltaMetadataCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    v7 = objc_msgSend_perValueErrors(self, v4, v5);
    v10 = objc_msgSend_count(v7, v8, v9);

    if (v10)
    {
      v37 = @"CKPartialErrors";
      v11 = objc_msgSend_perValueErrors(self, v4, v5);
      v38[0] = v11;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v38, &v37, 1);

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v14, @"CKInternalErrorDomain", 1011, v13, @"Failed to fetch some delta metadata");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v15 = objc_msgSend_CKClientSuitableError(errorCopy, v4, v5);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v16 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v24 = v16;
    v27 = objc_msgSend_operationID(self, v25, v26);
    *buf = 138543618;
    v34 = v27;
    v35 = 2112;
    v36 = v15;
    _os_log_debug_impl(&dword_1883EA000, v24, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling fetch delta metadata completion block with error: %@", buf, 0x16u);
  }

  v19 = objc_msgSend_fetchMergeableDeltaMetadataCompletionBlock(self, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_fetchMergeableDeltaMetadataCompletionBlock(self, v20, v21);
    (v22)[2](v22, v15);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v28 = v23;
    v31 = objc_msgSend_operationID(self, v29, v30);
    *buf = 138543618;
    v34 = v31;
    v35 = 2112;
    v36 = v15;
    _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished calling fetch delta metadata completion block with error: %@", buf, 0x16u);
  }

  v32.receiver = self;
  v32.super_class = CKFetchMergeableDeltaMetadataOperation;
  [(CKOperation *)&v32 _finishOnCallbackQueueWithError:v15];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-mergeable-delta-metadata", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  v4 = MEMORY[0x1E695DFD8];
  tweaksCopy = tweaks;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v10, v9, sel_handleFetchForMergeableValueID_metadatas_error_, 1, 0);

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___CKFetchMergeableDeltaMetadataOperation;
  objc_msgSendSuper2(&v11, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

- (void)handleFetchForMergeableValueID:(id)d metadatas:(id)metadatas error:(id)error
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  metadatasCopy = metadatas;
  v12 = objc_msgSend_CKClientSuitableError(error, v10, v11);
  v15 = objc_msgSend_perValueErrors(self, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v12, dCopy);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v17 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v25 = v17;
    v28 = objc_msgSend_operationID(self, v26, v27);
    v35 = 138544130;
    v36 = v28;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2048;
    v40 = objc_msgSend_count(metadatasCopy, v29, v30);
    v41 = 2112;
    v42 = v12;
    _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received fetch batch metadata callback for value %@ with %ld metadatas with error: %@", &v35, 0x2Au);
  }

  v20 = objc_msgSend_metadataFetchedBlock(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_metadataFetchedBlock(self, v21, v22);
    (v23)[2](v23, dCopy, metadatasCopy, v12);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v31 = v24;
    v34 = objc_msgSend_operationID(self, v32, v33);
    v35 = 138543874;
    v36 = v34;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2112;
    v40 = v12;
    _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished fetch batch metadata callback for value %@ with error: %@", &v35, 0x20u);
  }
}

@end