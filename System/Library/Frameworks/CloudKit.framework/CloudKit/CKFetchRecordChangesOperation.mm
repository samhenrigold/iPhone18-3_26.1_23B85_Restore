@interface CKFetchRecordChangesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchRecordChangesOperation)init;
- (CKFetchRecordChangesOperation)initWithRecordZoneID:(CKRecordZoneID *)recordZoneID previousServerChangeToken:(CKServerChangeToken *)previousServerChangeToken;
- (id)activityCreate;
- (id)changeTokensUpdatedBlock;
- (id)relevantZoneIDs;
- (id)serverChangeTokenFetchedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fetchRecordChangesCompletionBlock;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleChangeForRecordID:(id)d record:(id)record error:(id)error;
- (void)handleChangeSetCompletionWithServerChangeToken:(id)token clientChangeTokenData:(id)data recordChangesStatus:(int64_t)status reply:(id)reply;
- (void)handleDeleteForRecordID:(id)d;
- (void)handleOperationDidCompleteWithServerChangeToken:(id)token clientChangeTokenData:(id)data recordChangesStatus:(int64_t)status metrics:(id)metrics error:(id)error;
- (void)performCKOperation;
- (void)recordChangedBlock;
- (void)recordWithIDWasDeletedBlock;
- (void)setChangeTokensUpdatedBlock:(id)block;
- (void)setFetchRecordChangesCompletionBlock:(void *)fetchRecordChangesCompletionBlock;
- (void)setRecordChangedBlock:(void *)recordChangedBlock;
- (void)setRecordWithIDWasDeletedBlock:(void *)recordWithIDWasDeletedBlock;
- (void)setServerChangeTokenFetchedBlock:(id)block;
@end

@implementation CKFetchRecordChangesOperation

- (CKFetchRecordChangesOperation)init
{
  v6.receiver = self;
  v6.super_class = CKFetchRecordChangesOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordErrors = v2->_recordErrors;
    v2->_recordErrors = v3;

    v2->_shouldFetchAssetContents = 1;
  }

  return v2;
}

- (CKFetchRecordChangesOperation)initWithRecordZoneID:(CKRecordZoneID *)recordZoneID previousServerChangeToken:(CKServerChangeToken *)previousServerChangeToken
{
  v6 = recordZoneID;
  v7 = previousServerChangeToken;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    v14 = v12->_recordZoneID;
    v12->_recordZoneID = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    v18 = v12->_previousServerChangeToken;
    v12->_previousServerChangeToken = v17;
  }

  return v12;
}

- (void)setRecordChangedBlock:(void *)recordChangedBlock
{
  v6 = recordChangedBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885C36C4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordChangedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordChangedBlock;
    self->_recordChangedBlock = v9;
LABEL_9:
  }
}

- (void)recordChangedBlock
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
    v13 = sub_1883EDB10;
    v14 = sub_1883EF634;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C38C0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordChangedBlock);
  }

  return v6;
}

- (void)setRecordWithIDWasDeletedBlock:(void *)recordWithIDWasDeletedBlock
{
  v6 = recordWithIDWasDeletedBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885C3A50;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordWithIDWasDeletedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordWithIDWasDeletedBlock;
    self->_recordWithIDWasDeletedBlock = v9;
LABEL_9:
  }
}

- (void)recordWithIDWasDeletedBlock
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
    v13 = sub_1883EDB10;
    v14 = sub_1883EF634;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C3C4C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordWithIDWasDeletedBlock);
  }

  return v6;
}

- (void)setFetchRecordChangesCompletionBlock:(void *)fetchRecordChangesCompletionBlock
{
  v6 = fetchRecordChangesCompletionBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885C3DDC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_fetchRecordChangesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_fetchRecordChangesCompletionBlock;
    self->_fetchRecordChangesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchRecordChangesCompletionBlock
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
    v13 = sub_1883EDB10;
    v14 = sub_1883EF634;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C3FD8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRecordChangesCompletionBlock);
  }

  return v6;
}

- (void)setServerChangeTokenFetchedBlock:(id)block
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
    v12[2] = sub_1885C4168;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    serverChangeTokenFetchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_serverChangeTokenFetchedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    serverChangeTokenFetchedBlock = self->_serverChangeTokenFetchedBlock;
    self->_serverChangeTokenFetchedBlock = v9;
LABEL_9:
  }
}

- (id)serverChangeTokenFetchedBlock
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
    v13 = sub_1883EDB10;
    v14 = sub_1883EF634;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C4364;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_serverChangeTokenFetchedBlock);
  }

  return v6;
}

- (void)setChangeTokensUpdatedBlock:(id)block
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
    v12[2] = sub_1885C44F4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    changeTokensUpdatedBlock = v13;
    goto LABEL_9;
  }

  if (self->_changeTokensUpdatedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    changeTokensUpdatedBlock = self->_changeTokensUpdatedBlock;
    self->_changeTokensUpdatedBlock = v9;
LABEL_9:
  }
}

- (id)changeTokensUpdatedBlock
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
    v13 = sub_1883EDB10;
    v14 = sub_1883EF634;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C46F0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_changeTokensUpdatedBlock);
  }

  return v6;
}

- (id)relevantZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_recordZoneID(self, a2, v2);
  v7[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 1);

  return v5;
}

- (void)fillOutOperationInfo:(id)info
{
  v48[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = objc_opt_new();
  v8 = objc_msgSend_previousServerChangeToken(self, v6, v7);
  objc_msgSend_setPreviousServerChangeToken_(v5, v9, v8);

  v12 = objc_msgSend_resultsLimit(self, v10, v11);
  objc_msgSend_setResultsLimit_(v5, v13, v12);
  v16 = objc_msgSend_desiredKeys(self, v14, v15);
  objc_msgSend_setDesiredKeys_(v5, v17, v16);

  v18 = objc_alloc(MEMORY[0x1E695DF20]);
  v48[0] = v5;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v48, 1);
  v23 = objc_msgSend_recordZoneID(self, v21, v22);
  v47 = v23;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, &v47, 1);
  v27 = objc_msgSend_initWithObjects_forKeys_(v18, v26, v20, v25);

  objc_msgSend_setConfigurationsByRecordZoneID_(infoCopy, v28, v27);
  v31 = objc_msgSend_recordZoneID(self, v29, v30);
  v46 = v31;
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v32, &v46, 1);
  objc_msgSend_setRecordZoneIDs_(infoCopy, v34, v33);

  AssetContents = objc_msgSend_shouldFetchAssetContents(self, v35, v36);
  if (infoCopy)
  {
    *(infoCopy + 144) = AssetContents;
    *(infoCopy + 21) = objc_msgSend_changeTypesFromSetCallbacks(self, v38, v39);
  }

  else
  {
    objc_msgSend_changeTypesFromSetCallbacks(self, v38, v39);
  }

  AllChanges = objc_msgSend_fetchAllChanges(self, v40, v41);
  objc_msgSend_setFetchAllChanges_(infoCopy, v43, AllChanges);
  objc_msgSend_setErrorReportingStyle_(infoCopy, v44, 2);
  v45.receiver = self;
  v45.super_class = CKFetchRecordChangesOperation;
  [(CKDatabaseOperation *)&v45 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v43.receiver = self;
  v43.super_class = CKFetchRecordChangesOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v43 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_configurationsByRecordZoneID(infoCopy, v5, v6, v43.receiver, v43.super_class);
  v10 = objc_msgSend_allKeys(v7, v8, v9);
  v13 = objc_msgSend_firstObject(v10, v11, v12);

  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);
  v18 = objc_msgSend_recordZoneIDs(infoCopy, v16, v17);
  v21 = objc_msgSend_firstObject(v18, v19, v20);
  objc_msgSend_setRecordZoneID_(self, v22, v21);

  v25 = objc_msgSend_previousServerChangeToken(v15, v23, v24);
  objc_msgSend_setPreviousServerChangeToken_(self, v26, v25);

  v29 = objc_msgSend_desiredKeys(v15, v27, v28);
  objc_msgSend_setDesiredKeys_(self, v30, v29);

  v33 = objc_msgSend_resultsLimit(v15, v31, v32);
  objc_msgSend_setResultsLimit_(self, v34, v33);
  AssetContents = objc_msgSend_shouldFetchAssetContents(infoCopy, v35, v36);
  objc_msgSend_setShouldFetchAssetContents_(self, v38, AssetContents);
  AllChanges = objc_msgSend_fetchAllChanges(infoCopy, v39, v40);

  objc_msgSend_setFetchAllChanges_(self, v42, AllChanges);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v20.receiver = self;
  v20.super_class = CKFetchRecordChangesOperation;
  if ([(CKOperation *)&v20 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordChangedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordWithIDWasDeletedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_serverChangeTokenFetchedBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v17 = objc_msgSend_changeTokensUpdatedBlock(self, v12, v13);
        if (v17)
        {
          v5 = 1;
        }

        else
        {
          v18 = objc_msgSend_fetchRecordChangesCompletionBlock(self, v15, v16);
          v5 = v18 != 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_recordZoneID(self, a2, run);

  if (v5)
  {
    v8 = objc_msgSend_recordZoneID(self, v6, v7);
    v10 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v9, v8, run);

    if (v10)
    {
      v15.receiver = self;
      v15.super_class = CKFetchRecordChangesOperation;
      return [(CKDatabaseOperation *)&v15 CKOperationShouldRun:run];
    }
  }

  else if (run)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 12, @"property recordZoneID must not be nil for %@", v13);
  }

  return 0;
}

- (void)performCKOperation
{
  v20 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v7 = objc_msgSend_recordZoneID(self, v5, v6);
    v10 = objc_msgSend_previousServerChangeToken(self, v8, v9);
    *buf = 138412802;
    v15 = v7;
    v16 = 2114;
    v17 = v10;
    v18 = 2048;
    v19 = objc_msgSend_resultsLimit(self, v11, v12);
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Fetching changes from the server for zone %@ with change token %{public}@. Fetching %lu items at a time.", buf, 0x20u);
  }

  v13.receiver = self;
  v13.super_class = CKFetchRecordChangesOperation;
  [(CKOperation *)&v13 performCKOperation];
}

- (void)handleChangeForRecordID:(id)d record:(id)record error:(id)error
{
  v76 = *MEMORY[0x1E69E9840];
  dCopy = d;
  recordCopy = record;
  v12 = objc_msgSend_CKClientSuitableError(error, v10, v11);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v14 = signpost;

  if (v12)
  {
    if (v14)
    {
      if (self)
      {
        v17 = self->super.super._signpost;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v21 = objc_msgSend_log(v18, v19, v20);

      if (self)
      {
        v22 = self->super.super._signpost;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v26 = objc_msgSend_identifier(v23, v24, v25);

      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        v70 = 138412546;
        v71 = dCopy;
        v72 = 2112;
        v73 = v12;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v21, OS_SIGNPOST_EVENT, v26, "CKFetchRecordChangesOperation", "Record %@ changed with error: %@", &v70, 0x16u);
      }
    }

    v27 = objc_msgSend_recordErrors(self, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v12, dCopy);

    recordCopy = 0;
    goto LABEL_14;
  }

  if (v14)
  {
    if (self)
    {
      v35 = self->super.super._signpost;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v39 = objc_msgSend_log(v36, v37, v38);

    if (self)
    {
      v40 = self->super.super._signpost;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v44 = objc_msgSend_identifier(v41, v42, v43);

    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      v70 = 138412290;
      v71 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v39, OS_SIGNPOST_EVENT, v44, "CKFetchRecordChangesOperation", "Record %@ changed", &v70, 0xCu);
    }
  }

  if (recordCopy)
  {
    v45 = objc_msgSend_recordChangedBlock(self, v15, v16);

    if (v45)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v46 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v60 = v46;
        v63 = objc_msgSend_operationID(self, v61, v62);
        if (objc_msgSend_isMergeableValueDeltaRecord(recordCopy, v64, v65))
        {
          v68 = @"mergeable delta partial ";
        }

        else
        {
          v68 = &stru_1EFA32970;
        }

        v69 = objc_msgSend_recordID(recordCopy, v66, v67);
        v70 = 138543874;
        v71 = v63;
        v72 = 2112;
        v73 = v68;
        v74 = 2112;
        v75 = v69;
        _os_log_debug_impl(&dword_1883EA000, v60, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a changed %@record with id %@", &v70, 0x20u);
      }

      v49 = objc_msgSend_recordChangedBlock(self, v47, v48);
      v49[2](v49, recordCopy);
      goto LABEL_34;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v50 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v49 = v50;
      v53 = objc_msgSend_operationID(self, v51, v52);
      if (objc_msgSend_isMergeableValueDeltaRecord(recordCopy, v54, v55))
      {
        v58 = @"mergeable delta partial ";
      }

      else
      {
        v58 = &stru_1EFA32970;
      }

      v59 = objc_msgSend_recordID(recordCopy, v56, v57);
      v70 = 138543874;
      v71 = v53;
      v72 = 2112;
      v73 = v58;
      v74 = 2112;
      v75 = v59;
      _os_log_debug_impl(&dword_1883EA000, v49, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received a changed %@record (%@), but no recordChangedBlock has been set.", &v70, 0x20u);

LABEL_34:
    }
  }

LABEL_14:
  v29 = objc_msgSend_configuration(self, v15, v16);
  v32 = objc_msgSend_container(v29, v30, v31);
  objc_msgSend_handleRecordChanged_changeType_record_error_(v32, v33, dCopy, 1, recordCopy, v12);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v34 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v70 = 138412290;
    v71 = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Progress callback for record %@ is done", &v70, 0xCu);
  }
}

- (void)handleDeleteForRecordID:(id)d
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v9 = self->super.super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super.super._signpost;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v18 = objc_msgSend_identifier(v15, v16, v17);

    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v40 = 138412290;
      v41 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRecordChangesOperation", "Record %@ deleted", &v40, 0xCu);
    }
  }

  v19 = objc_msgSend_recordWithIDWasDeletedBlock(self, v7, v8);

  if (v19)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v33 = v20;
      v36 = objc_msgSend_operationID(self, v34, v35);
      v40 = 138543618;
      v41 = v36;
      v42 = 2112;
      v43 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v33, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a deleted record with id %@", &v40, 0x16u);
    }

    v23 = objc_msgSend_recordWithIDWasDeletedBlock(self, v21, v22);
    v23[2](v23, dCopy);
    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v26 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v23 = v26;
    v39 = objc_msgSend_operationID(self, v37, v38);
    v40 = 138543618;
    v41 = v39;
    v42 = 2112;
    v43 = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received a deleted record (%@), but no recordWithIDWasDeletedBlock has been set.", &v40, 0x16u);

LABEL_18:
  }

  v27 = objc_msgSend_configuration(self, v24, v25);
  v30 = objc_msgSend_container(v27, v28, v29);
  objc_msgSend_handleRecordChanged_changeType_record_error_(v30, v31, dCopy, 3, 0, 0);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v40 = 138412290;
    v41 = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Progress callback for record %@ is done", &v40, 0xCu);
  }
}

- (void)handleChangeSetCompletionWithServerChangeToken:(id)token clientChangeTokenData:(id)data recordChangesStatus:(int64_t)status reply:(id)reply
{
  v63 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dataCopy = data;
  replyCopy = reply;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v14 = signpost;

  if (v14)
  {
    if (self)
    {
      v17 = self->super.super._signpost;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v21 = objc_msgSend_log(v18, v19, v20);

    if (self)
    {
      v22 = self->super.super._signpost;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v26 = objc_msgSend_identifier(v23, v24, v25);

    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(v57) = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v21, OS_SIGNPOST_EVENT, v26, "CKFetchRecordChangesOperation", "Progress callback", &v57, 2u);
    }
  }

  if (status != -1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v53 = v27;
      v56 = objc_msgSend_operationID(self, v54, v55);
      v57 = 138543618;
      v58 = v56;
      v59 = 2048;
      statusCopy = status;
      _os_log_debug_impl(&dword_1883EA000, v53, OS_LOG_TYPE_DEBUG, "Operation %{public}@ updating recordChangesStatus to %ld", &v57, 0x16u);
    }

    objc_msgSend_setStatus_(self, v28, status);
  }

  v29 = objc_msgSend_changeTokensUpdatedBlock(self, v15, v16);
  if (v29)
  {

LABEL_21:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v33 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v49 = v33;
      v52 = objc_msgSend_operationID(self, v50, v51);
      v57 = 138543874;
      v58 = v52;
      v59 = 2114;
      statusCopy = tokenCopy;
      v61 = 2114;
      v62 = dataCopy;
      _os_log_debug_impl(&dword_1883EA000, v49, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a server change token %{public}@, client change token data %{public}@", &v57, 0x20u);
    }

    v36 = objc_msgSend_changeTokensUpdatedBlock(self, v34, v35);

    if (v36)
    {
      v39 = objc_msgSend_changeTokensUpdatedBlock(self, v37, v38);
      (v39)[2](v39, tokenCopy, dataCopy);
    }

    else
    {
      v40 = objc_msgSend_serverChangeTokenFetchedBlock(self, v37, v38);

      if (!v40)
      {
        goto LABEL_30;
      }

      v39 = objc_msgSend_serverChangeTokenFetchedBlock(self, v41, v42);
      (v39[2])(v39, tokenCopy);
    }

LABEL_30:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    goto LABEL_32;
  }

  v32 = objc_msgSend_serverChangeTokenFetchedBlock(self, v30, v31);

  if (v32)
  {
    goto LABEL_21;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v44 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v45 = v44;
    v48 = objc_msgSend_operationID(self, v46, v47);
    v57 = 138543874;
    v58 = v48;
    v59 = 2114;
    statusCopy = tokenCopy;
    v61 = 2114;
    v62 = dataCopy;
    _os_log_debug_impl(&dword_1883EA000, v45, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received a server change token (%{public}@) and client change token data (%{public}@), but neither changeTokensUpdatedBlock nor serverChangeTokenFetchedBlock has been set.", &v57, 0x20u);

    goto LABEL_30;
  }

LABEL_32:
  v43 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v57) = 0;
    _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Progress callback for change tokens is done", &v57, 2u);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)handleOperationDidCompleteWithServerChangeToken:(id)token clientChangeTokenData:(id)data recordChangesStatus:(int64_t)status metrics:(id)metrics error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dataCopy = data;
  errorCopy = error;
  metricsCopy = metrics;
  objc_msgSend_setResultServerChangeToken_(self, v16, tokenCopy);
  objc_msgSend_setResultClientChangeTokenData_(self, v17, dataCopy);
  if (status != -1)
  {
    objc_msgSend_setStatus_(self, v18, status);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v20 = v19;
    v23 = objc_msgSend_operationID(self, v21, v22);
    *buf = 138544130;
    v26 = v23;
    v27 = 2114;
    v28 = tokenCopy;
    v29 = 2114;
    v30 = dataCopy;
    v31 = 2048;
    statusCopy = status;
    _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Received completion callback for operation %{public}@ with server change token %{public}@, client change token data %{public}@, status %ld", buf, 0x2Au);
  }

  v24.receiver = self;
  v24.super_class = CKFetchRecordChangesOperation;
  [(CKOperation *)&v24 handleOperationDidCompleteWithMetrics:metricsCopy error:errorCopy];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v94 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v9 = self->super.super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super.super._signpost;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v18 = objc_msgSend_identifier(v15, v16, v17);

    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRecordChangesOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_recordErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_recordErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Couldn't fetch some records when fetching changes");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_recordZoneID(self, v7, v8);

  if (v29)
  {
    v32 = MEMORY[0x1E695DFA8];
    v33 = MEMORY[0x1E695DEC8];
    v34 = objc_msgSend_recordZoneID(self, v30, v31);
    v36 = objc_msgSend_arrayWithObjects_(v33, v35, v34, 0);
    v38 = objc_msgSend_setWithArray_(v32, v37, v36);

    v40 = objc_msgSend_zoneIDsToZoneNamesString_(self, v39, v38);
    v43 = objc_msgSend_operationMetric(self, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v43, v44, v40, @"zoneNames");
  }

  v45 = objc_msgSend_fetchRecordChangesCompletionBlock(self, v30, v31);

  if (v45)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v46 = ck_log_facility_ck;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v67 = objc_msgSend_operationID(self, v47, v48);
      v70 = objc_msgSend_resultServerChangeToken(self, v68, v69);
      v75 = objc_msgSend_resultClientChangeTokenData(self, v71, v72);
      v76 = &stru_1EFA32970;
      if (errorCopy)
      {
        v77 = @" Error was: ";
      }

      else
      {
        v77 = &stru_1EFA32970;
      }

      if (errorCopy)
      {
        v76 = objc_msgSend_CKClientSuitableError(errorCopy, v73, v74);
      }

      *buf = 138544386;
      v85 = v67;
      v86 = 2112;
      v87 = v70;
      v88 = 2114;
      v89 = v75;
      v90 = 2114;
      v91 = v77;
      v92 = 2112;
      v93 = v76;
      _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed. Server change token is %@, client change token data is %{public}@.%{public}@%@", buf, 0x34u);
      if (errorCopy)
      {
      }
    }

    v53 = objc_msgSend_fetchRecordChangesCompletionBlock(self, v49, v50);
    if (errorCopy)
    {
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v54 = objc_msgSend_resultServerChangeToken(self, v51, v52);
      v55 = objc_msgSend_resultClientChangeTokenData(self, v60, v61);
    }

    v62 = objc_msgSend_CKClientSuitableError(errorCopy, v51, v52);
    (v53)[2](v53, v54, v55, v62);

    if (!errorCopy)
    {
    }

    objc_msgSend_setFetchRecordChangesCompletionBlock_(self, v63, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v56 = ck_log_facility_ck;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v80 = objc_msgSend_operationID(self, v57, v58);
      v81 = &stru_1EFA32970;
      if (errorCopy)
      {
        v82 = @" Error was: ";
      }

      else
      {
        v82 = &stru_1EFA32970;
      }

      if (errorCopy)
      {
        v81 = objc_msgSend_CKClientSuitableError(errorCopy, v78, v79);
      }

      *buf = 138543874;
      v85 = v80;
      v86 = 2114;
      v87 = v82;
      v88 = 2112;
      v89 = v81;
      _os_log_debug_impl(&dword_1883EA000, v56, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no fetchRecordChangesCompletionBlock was set.%{public}@%@", buf, 0x20u);
      if (errorCopy)
      {
      }
    }
  }

  objc_msgSend_setRecordChangedBlock_(self, v59, 0);
  objc_msgSend_setRecordWithIDWasDeletedBlock_(self, v64, 0);
  objc_msgSend_setServerChangeTokenFetchedBlock_(self, v65, 0);
  objc_msgSend_setChangeTokensUpdatedBlock_(self, v66, 0);
  v83.receiver = self;
  v83.super_class = CKFetchRecordChangesOperation;
  [(CKOperation *)&v83 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)ckSignpostBegin
{
  v54 = *MEMORY[0x1E69E9840];
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v4 = signpost;

  if (v4)
  {
    if (self)
    {
      v5 = self->super.super._signpost;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v9 = objc_msgSend_log(v6, v7, v8);

    if (self)
    {
      v10 = self->super.super._signpost;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v14 = objc_msgSend_identifier(v11, v12, v13);

    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v17 = objc_msgSend_operationID(self, v15, v16);
      v20 = objc_msgSend_containerID(self, v18, v19);
      v23 = objc_msgSend_group(self, v21, v22);
      v26 = objc_msgSend_operationGroupID(v23, v24, v25);
      v29 = objc_msgSend_operationGroupName(self, v27, v28);
      v32 = objc_msgSend_operationInfo(self, v30, v31);
      v35 = objc_msgSend_discretionaryNetworkBehavior(v32, v33, v34);
      v36 = CKStringForDiscretionaryNetworkBehavior(v35);
      v39 = objc_msgSend_qualityOfService(self, v37, v38);
      v41 = CKStringForQOS(v39, v40);
      v42 = 138413570;
      v43 = v17;
      v44 = 2112;
      v45 = v20;
      v46 = 2112;
      v47 = v26;
      v48 = 2114;
      v49 = v29;
      v50 = 2114;
      v51 = v36;
      v52 = 2114;
      v53 = v41;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchRecordChangesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v42, 0x3Eu);
    }
  }
}

- (void)ckSignpostEndWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v7 = self->super.super._signpost;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v11 = objc_msgSend_log(v8, v9, v10);

    if (self)
    {
      v12 = self->super.super._signpost;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v17 = 138412290;
      v18 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchRecordChangesOperation", "Error=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-record-changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleChangeForRecordID_record_error_, 2, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v8, v7, sel_handleOperationDidCompleteWithServerChangeToken_clientChangeTokenData_recordChangesStatus_metrics_error_, 4, 0);

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CKFetchRecordChangesOperation;
  objc_msgSendSuper2(&v9, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end