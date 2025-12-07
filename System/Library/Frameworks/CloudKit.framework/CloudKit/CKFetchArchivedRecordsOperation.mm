@interface CKFetchArchivedRecordsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchArchivedRecordsOperation)init;
- (CKFetchArchivedRecordsOperation)initWithRecordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d;
- (id)activityCreate;
- (id)fetchArchivedRecordsCompletionBlock;
- (id)recordFetchedBlock;
- (id)recordZoneArchivesStatusByZoneID;
- (id)recordZoneChangeTokensUpdatedBlock;
- (id)recordZoneFetchCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleChangeSetCompletionForRecordZoneID:(id)d serverChangeToken:(id)token archivedRecordStatus:(int64_t)status error:(id)error reply:(id)reply;
- (void)handleFetchForRecordID:(id)d record:(id)record error:(id)error;
- (void)setFetchArchivedRecordsCompletionBlock:(id)block;
- (void)setRecordFetchedBlock:(id)block;
- (void)setRecordZoneChangeTokensUpdatedBlock:(id)block;
- (void)setRecordZoneFetchCompletionBlock:(id)block;
@end

@implementation CKFetchArchivedRecordsOperation

- (CKFetchArchivedRecordsOperation)init
{
  v8.receiver = self;
  v8.super_class = CKFetchArchivedRecordsOperation;
  v2 = [(CKOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    statusByZoneID = v2->_statusByZoneID;
    v2->_statusByZoneID = v3;

    v5 = objc_opt_new();
    perItemErrors = v2->_perItemErrors;
    v2->_perItemErrors = v5;

    v2->_shouldFetchAssetContents = 1;
    v2->_fetchAllChanges = 1;
  }

  return v2;
}

- (CKFetchArchivedRecordsOperation)initWithRecordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(dsCopy, v10, v11);
    recordZoneIDs = v12->_recordZoneIDs;
    v12->_recordZoneIDs = v13;

    v17 = objc_msgSend_copy(dCopy, v15, v16);
    configurationsByRecordZoneID = v12->_configurationsByRecordZoneID;
    v12->_configurationsByRecordZoneID = v17;
  }

  return v12;
}

- (void)setRecordFetchedBlock:(id)block
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
    v12[2] = sub_1885C06E4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordFetchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordFetchedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordFetchedBlock = self->_recordFetchedBlock;
    self->_recordFetchedBlock = v9;
LABEL_9:
  }
}

- (id)recordFetchedBlock
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
    v13 = sub_1883EDAE4;
    v14 = sub_1883EF62C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C08E0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordFetchedBlock);
  }

  return v6;
}

- (void)setRecordZoneChangeTokensUpdatedBlock:(id)block
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
    v12[2] = sub_1885C0A70;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordZoneChangeTokensUpdatedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneChangeTokensUpdatedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordZoneChangeTokensUpdatedBlock = self->_recordZoneChangeTokensUpdatedBlock;
    self->_recordZoneChangeTokensUpdatedBlock = v9;
LABEL_9:
  }
}

- (id)recordZoneChangeTokensUpdatedBlock
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
    v13 = sub_1883EDAE4;
    v14 = sub_1883EF62C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C0C6C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneChangeTokensUpdatedBlock);
  }

  return v6;
}

- (void)setRecordZoneFetchCompletionBlock:(id)block
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
    v12[2] = sub_1885C0DFC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordZoneFetchCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneFetchCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordZoneFetchCompletionBlock = self->_recordZoneFetchCompletionBlock;
    self->_recordZoneFetchCompletionBlock = v9;
LABEL_9:
  }
}

- (id)recordZoneFetchCompletionBlock
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
    v13 = sub_1883EDAE4;
    v14 = sub_1883EF62C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C0FF8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneFetchCompletionBlock);
  }

  return v6;
}

- (void)setFetchArchivedRecordsCompletionBlock:(id)block
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
    v12[2] = sub_1885C1188;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    fetchArchivedRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchArchivedRecordsCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    fetchArchivedRecordsCompletionBlock = self->_fetchArchivedRecordsCompletionBlock;
    self->_fetchArchivedRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)fetchArchivedRecordsCompletionBlock
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
    v13 = sub_1883EDAE4;
    v14 = sub_1883EF62C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C1384;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchArchivedRecordsCompletionBlock);
  }

  return v6;
}

- (id)recordZoneArchivesStatusByZoneID
{
  v3 = objc_msgSend_statusByZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  objc_msgSend_setRecordZoneIDs_(infoCopy, v8, v7);

  v11 = objc_msgSend_configurationsByRecordZoneID(self, v9, v10);
  objc_msgSend_setConfigurationsByRecordZoneID_(infoCopy, v12, v11);

  AssetContents = objc_msgSend_shouldFetchAssetContents(self, v13, v14);
  objc_msgSend_setShouldFetchAssetContents_(infoCopy, v16, AssetContents);
  AllChanges = objc_msgSend_fetchAllChanges(self, v17, v18);
  objc_msgSend_setFetchAllChanges_(infoCopy, v20, AllChanges);
  v23 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v21, v22);
  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(infoCopy, v24, v23);

  v25.receiver = self;
  v25.super_class = CKFetchArchivedRecordsOperation;
  [(CKDatabaseOperation *)&v25 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v25.receiver = self;
  v25.super_class = CKFetchArchivedRecordsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v25 fillFromOperationInfo:infoCopy];
  AssetContents = objc_msgSend_shouldFetchAssetContents(infoCopy, v5, v6, v25.receiver, v25.super_class);
  objc_msgSend_setShouldFetchAssetContents_(self, v8, AssetContents);
  AllChanges = objc_msgSend_fetchAllChanges(infoCopy, v9, v10);
  objc_msgSend_setFetchAllChanges_(self, v12, AllChanges);
  v15 = objc_msgSend_configurationsByRecordZoneID(infoCopy, v13, v14);
  objc_msgSend_setConfigurationsByRecordZoneID_(self, v16, v15);

  v19 = objc_msgSend_recordZoneIDs(infoCopy, v17, v18);
  objc_msgSend_setRecordZoneIDs_(self, v20, v19);

  v23 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(infoCopy, v21, v22);

  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(self, v24, v23);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v17.receiver = self;
  v17.super_class = CKFetchArchivedRecordsOperation;
  if ([(CKOperation *)&v17 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordFetchedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordZoneChangeTokensUpdatedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_recordZoneFetchCompletionBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v15 = objc_msgSend_fetchArchivedRecordsCompletionBlock(self, v12, v13);
        v5 = v15 != 0;
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordZoneIDs(self, a2, run);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = objc_msgSend_recordZoneIDs(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v24;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v11);
          }

          if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v14, *(*(&v23 + 1) + 8 * v17), run))
          {

            return 0;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v23, v27, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22.receiver = self;
    v22.super_class = CKFetchArchivedRecordsOperation;
    return [(CKDatabaseOperation *)&v22 CKOperationShouldRun:run];
  }

  else
  {
    if (run)
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"You must pass at least one zone ID to %@", v20);
    }

    return 0;
  }
}

- (void)handleFetchForRecordID:(id)d record:(id)record error:(id)error
{
  v63 = *MEMORY[0x1E69E9840];
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
        v59 = 138412546;
        v60 = dCopy;
        v61 = 2112;
        v62 = v12;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v21, OS_SIGNPOST_EVENT, v26, "CKFetchArchivedRecordsOperation", "Record %@ fetched with error: %@", &v59, 0x16u);
      }
    }

    v27 = objc_msgSend_perItemErrors(self, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v12, dCopy);
LABEL_14:

    goto LABEL_15;
  }

  if (v14)
  {
    if (self)
    {
      v34 = self->super.super._signpost;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v27 = objc_msgSend_log(v35, v36, v37);

    if (self)
    {
      v38 = self->super.super._signpost;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v42 = objc_msgSend_identifier(v39, v40, v41);

    if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v59 = 138412290;
      v60 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v27, OS_SIGNPOST_EVENT, v42, "CKFetchArchivedRecordsOperation", "Record %@ fetched", &v59, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
  if (!recordCopy)
  {
    goto LABEL_22;
  }

  v29 = objc_msgSend_recordFetchedBlock(self, v15, v16);

  if (v29)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v30 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v45 = v30;
      v48 = objc_msgSend_operationID(self, v46, v47);
      v51 = objc_msgSend_recordID(recordCopy, v49, v50);
      v59 = 138543618;
      v60 = v48;
      v61 = 2112;
      v62 = v51;
      _os_log_debug_impl(&dword_1883EA000, v45, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a fetched record with id %@", &v59, 0x16u);
    }

    v33 = objc_msgSend_recordFetchedBlock(self, v31, v32);
    (v33)[2](v33, recordCopy);

    goto LABEL_22;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v43 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v52 = v43;
    v55 = objc_msgSend_operationID(self, v53, v54);
    v58 = objc_msgSend_recordID(recordCopy, v56, v57);
    v59 = 138543618;
    v60 = v55;
    v61 = 2112;
    v62 = v58;
    _os_log_debug_impl(&dword_1883EA000, v52, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received a fetched record (%@), but no recordFetchedBlock has been set.", &v59, 0x16u);

LABEL_22:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }
  }

  v44 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v59 = 138412290;
    v60 = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "Progress callback for record %@ is done", &v59, 0xCu);
  }
}

- (void)handleChangeSetCompletionForRecordZoneID:(id)d serverChangeToken:(id)token archivedRecordStatus:(int64_t)status error:(id)error reply:(id)reply
{
  v81 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  replyCopy = reply;
  v17 = objc_msgSend_CKClientSuitableError(error, v15, v16);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v19 = signpost;

  if (v19)
  {
    if (self)
    {
      v20 = self->super.super._signpost;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v24 = objc_msgSend_log(v21, v22, v23);

    if (self)
    {
      v25 = self->super.super._signpost;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v29 = objc_msgSend_identifier(v26, v27, v28);

    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v75 = 138412546;
      *&v75[4] = tokenCopy;
      *&v75[12] = 2112;
      *&v75[14] = v17;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v24, OS_SIGNPOST_EVENT, v29, "CKFetchArchivedRecordsOperation", "Server change token updated to %@ with error: %@", v75, 0x16u);
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v30 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v57 = v30;
    v60 = objc_msgSend_operationID(self, v58, v59);
    *v75 = 138543874;
    *&v75[4] = v60;
    *&v75[12] = 2048;
    *&v75[14] = status;
    *&v75[22] = 2112;
    v76 = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v57, OS_LOG_TYPE_DEBUG, "Operation %{public}@ updating archivedRecordStatus to %ld for record zone %@", v75, 0x20u);
  }

  v32 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v31, status);
  v35 = objc_msgSend_statusByZoneID(self, v33, v34);
  objc_msgSend_setObject_forKeyedSubscript_(v35, v36, v32, dCopy);

  if (v17)
  {
    v39 = objc_msgSend_perItemErrors(self, v37, v38);
    objc_msgSend_setObject_forKeyedSubscript_(v39, v40, v17, dCopy);
  }

  AllChanges = objc_msgSend_fetchAllChanges(self, v37, v38);
  if (!v17 && status && AllChanges)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v42 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v65 = v42;
      v68 = objc_msgSend_operationID(self, v66, v67);
      *v75 = 138543874;
      *&v75[4] = v68;
      *&v75[12] = 2114;
      *&v75[14] = tokenCopy;
      *&v75[22] = 2112;
      v76 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v65, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a server change token %{public}@ for zoneID %@", v75, 0x20u);
    }

    v45 = objc_msgSend_recordZoneChangeTokensUpdatedBlock(self, v43, v44);

    if (v45)
    {
      v48 = objc_msgSend_recordZoneChangeTokensUpdatedBlock(self, v46, v47);
      (v48)[2](v48, dCopy, tokenCopy);
LABEL_32:
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v49 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v69 = v49;
      v72 = objc_msgSend_operationID(self, v70, v71);
      *v75 = 138544386;
      v73 = @", error ";
      *&v75[4] = v72;
      v74 = &stru_1EFA32970;
      *&v75[12] = 2112;
      if (!v17)
      {
        v73 = &stru_1EFA32970;
      }

      *&v75[14] = tokenCopy;
      if (v17)
      {
        v74 = v17;
      }

      *&v75[22] = 2112;
      v76 = dCopy;
      v77 = 2114;
      v78 = v73;
      v79 = 2112;
      v80 = v74;
      _os_log_debug_impl(&dword_1883EA000, v69, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about per-zone completion with server change token %@ for zoneID %@%{public}@%@", v75, 0x34u);
    }

    v52 = objc_msgSend_recordZoneFetchCompletionBlock(self, v50, v51, *v75, *&v75[8]);

    if (v52)
    {
      v55 = status != 0;
      v48 = objc_msgSend_recordZoneFetchCompletionBlock(self, v53, v54);
      (v48[2])(v48, dCopy, tokenCopy, v55, v17);
      goto LABEL_32;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v56 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v61 = v56;
    v64 = objc_msgSend_operationID(self, v62, v63);
    *v75 = 138543618;
    *&v75[4] = v64;
    *&v75[12] = 2112;
    *&v75[14] = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v61, OS_LOG_TYPE_DEBUG, "Progress callback for operation %{public}@ zoneID %@ is done", v75, 0x16u);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v79 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchArchivedRecordsOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_perItemErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_perItemErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Couldn't fetch some items when fetching changes");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_recordZoneIDs(self, v7, v8);
  v32 = objc_msgSend_count(v29, v30, v31);

  if (v32)
  {
    v35 = MEMORY[0x1E695DFA8];
    v36 = objc_msgSend_recordZoneIDs(self, v33, v34);
    v38 = objc_msgSend_setWithArray_(v35, v37, v36);

    v40 = objc_msgSend_zoneIDsToZoneNamesString_(self, v39, v38);
    v43 = objc_msgSend_operationMetric(self, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v43, v44, v40, @"zoneNames");
  }

  v45 = objc_msgSend_fetchArchivedRecordsCompletionBlock(self, v33, v34);

  if (v45)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v46 = ck_log_facility_ck;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v64 = objc_msgSend_operationID(self, v47, v48);
      v65 = &stru_1EFA32970;
      if (errorCopy)
      {
        v66 = @" Error was: ";
      }

      else
      {
        v66 = &stru_1EFA32970;
      }

      if (errorCopy)
      {
        v65 = objc_msgSend_CKClientSuitableError(errorCopy, v62, v63);
      }

      *buf = 138543874;
      v74 = v64;
      v75 = 2114;
      v76 = v66;
      v77 = 2112;
      v78 = v65;
      _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed. %{public}@%@", buf, 0x20u);
      if (errorCopy)
      {
      }
    }

    v51 = objc_msgSend_fetchArchivedRecordsCompletionBlock(self, v49, v50);
    v54 = objc_msgSend_CKClientSuitableError(errorCopy, v52, v53);
    (v51)[2](v51, v54);

    objc_msgSend_setFetchArchivedRecordsCompletionBlock_(self, v55, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v57 = ck_log_facility_ck;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v69 = objc_msgSend_operationID(self, v58, v59);
      v70 = &stru_1EFA32970;
      if (errorCopy)
      {
        v71 = @" Error was: ";
      }

      else
      {
        v71 = &stru_1EFA32970;
      }

      if (errorCopy)
      {
        v70 = objc_msgSend_CKClientSuitableError(errorCopy, v67, v68);
      }

      *buf = 138543874;
      v74 = v69;
      v75 = 2114;
      v76 = v71;
      v77 = 2112;
      v78 = v70;
      _os_log_debug_impl(&dword_1883EA000, v57, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no fetchArchivedRecordsCompletionBlock was set.%{public}@%@", buf, 0x20u);
      if (errorCopy)
      {
      }
    }
  }

  objc_msgSend_setRecordFetchedBlock_(self, v56, 0);
  objc_msgSend_setRecordZoneChangeTokensUpdatedBlock_(self, v60, 0);
  objc_msgSend_setRecordZoneFetchCompletionBlock_(self, v61, 0);
  v72.receiver = self;
  v72.super_class = CKFetchArchivedRecordsOperation;
  [(CKOperation *)&v72 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchArchivedRecordsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v42, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchArchivedRecordsOperation", "Error=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-archived-records", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleFetchForRecordID_record_error_, 2, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v8, v7, sel_handleChangeSetCompletionForRecordZoneID_serverChangeToken_archivedRecordStatus_error_reply_, 3, 0);

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CKFetchArchivedRecordsOperation;
  objc_msgSendSuper2(&v9, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end