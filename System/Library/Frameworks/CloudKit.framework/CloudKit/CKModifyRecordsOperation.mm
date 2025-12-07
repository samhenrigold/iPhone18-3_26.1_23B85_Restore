@interface CKModifyRecordsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)_prepareFieldValuesForUploadWithError:(id *)error;
- (BOOL)hasCKOperationCallbacksSet;
- (CKModifyRecordsOperation)init;
- (CKModifyRecordsOperation)initWithRecordsToSave:(NSArray *)records recordIDsToDelete:(NSArray *)recordIDs;
- (id)activityCreate;
- (id)recordsInFlightBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleDeleteForRecordID:(id)d error:(id)error;
- (void)handleRecordIDsInFlight:(id)flight reply:(id)reply;
- (void)handleRecordModificationForRecordID:(id)d didProgress:(double)progress;
- (void)handleRecordUploadForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index signature:(id)signature size:(unint64_t)size paddedFileSize:(unint64_t)fileSize uploaded:(BOOL)uploaded uploadReceipt:(id)self0 uploadReceiptExpiration:(double)self1 wrappedAssetKey:(id)self2 clearAssetKey:(id)self3 referenceSignature:(id)self4;
- (void)handleSaveForRecordID:(id)d recordMetadata:(id)metadata error:(id)error;
- (void)modifyRecordsCompletionBlock;
- (void)perRecordCompletionBlock;
- (void)perRecordDeleteBlock;
- (void)perRecordProgressBlock;
- (void)perRecordSaveBlock;
- (void)performCKOperation;
- (void)setModifyRecordsCompletionBlock:(void *)modifyRecordsCompletionBlock;
- (void)setModifyRecordsCompletionBlockIVar:(id)var;
- (void)setPerRecordCompletionBlock:(void *)perRecordCompletionBlock;
- (void)setPerRecordDeleteBlock:(void *)perRecordDeleteBlock;
- (void)setPerRecordProgressBlock:(void *)perRecordProgressBlock;
- (void)setPerRecordSaveBlock:(void *)perRecordSaveBlock;
- (void)setRecordsInFlightBlock:(id)block;
@end

@implementation CKModifyRecordsOperation

- (CKModifyRecordsOperation)init
{
  v14.receiver = self;
  v14.super_class = CKModifyRecordsOperation;
  v2 = [(CKOperation *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordsByRecordIDs = v2->_recordsByRecordIDs;
    v2->_recordsByRecordIDs = v3;

    v5 = objc_opt_new();
    recordErrors = v2->_recordErrors;
    v2->_recordErrors = v5;

    v7 = objc_opt_new();
    savedRecords = v2->_savedRecords;
    v2->_savedRecords = v7;

    v9 = objc_opt_new();
    deletedRecordIDs = v2->_deletedRecordIDs;
    v2->_deletedRecordIDs = v9;

    v2->_savePolicy = 0;
    v11 = objc_opt_new();
    assetsByRecordIDAndRecordKey = v2->_assetsByRecordIDAndRecordKey;
    v2->_assetsByRecordIDAndRecordKey = v11;

    v2->_atomic = 1;
  }

  return v2;
}

- (CKModifyRecordsOperation)initWithRecordsToSave:(NSArray *)records recordIDsToDelete:(NSArray *)recordIDs
{
  v6 = records;
  v7 = recordIDs;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    recordsToSave = v12->_recordsToSave;
    v12->_recordsToSave = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    recordIDsToDelete = v12->_recordIDsToDelete;
    v12->_recordIDsToDelete = v17;
  }

  return v12;
}

- (void)setPerRecordProgressBlock:(void *)perRecordProgressBlock
{
  v6 = perRecordProgressBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D64C0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordProgressBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordProgressBlock;
    self->_perRecordProgressBlock = v9;
LABEL_9:
  }
}

- (void)perRecordProgressBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D66BC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordProgressBlock);
  }

  return v6;
}

- (void)setPerRecordCompletionBlock:(void *)perRecordCompletionBlock
{
  v6 = perRecordCompletionBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D684C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordCompletionBlock;
    self->_perRecordCompletionBlock = v9;
LABEL_9:
  }
}

- (void)perRecordCompletionBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D6A48;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordCompletionBlock);
  }

  return v6;
}

- (void)setPerRecordSaveBlock:(void *)perRecordSaveBlock
{
  v6 = perRecordSaveBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D6BD8;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordSaveBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordSaveBlock;
    self->_perRecordSaveBlock = v9;
LABEL_9:
  }
}

- (void)perRecordSaveBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D6DD4;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordSaveBlock);
  }

  return v6;
}

- (void)setPerRecordDeleteBlock:(void *)perRecordDeleteBlock
{
  v6 = perRecordDeleteBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D6F64;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordDeleteBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordDeleteBlock;
    self->_perRecordDeleteBlock = v9;
LABEL_9:
  }
}

- (void)perRecordDeleteBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D7160;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordDeleteBlock);
  }

  return v6;
}

- (void)setModifyRecordsCompletionBlockIVar:(id)var
{
  varCopy = var;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D72F0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    modifyRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_modifyRecordsCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    modifyRecordsCompletionBlock = self->_modifyRecordsCompletionBlock;
    self->_modifyRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (void)modifyRecordsCompletionBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D74EC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_modifyRecordsCompletionBlock);
  }

  return v6;
}

- (void)setRecordsInFlightBlock:(id)block
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
    v12[2] = sub_1885D767C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordsInFlightBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordsInFlightBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordsInFlightBlock = self->_recordsInFlightBlock;
    self->_recordsInFlightBlock = v9;
LABEL_9:
  }
}

- (id)recordsInFlightBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D7878;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordsInFlightBlock);
  }

  return v6;
}

- (void)setModifyRecordsCompletionBlock:(void *)modifyRecordsCompletionBlock
{
  v4 = modifyRecordsCompletionBlock == 0;
  v7 = modifyRecordsCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setModifyRecordsCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordsToSave(self, v5, v6);
  objc_msgSend_setRecordsToSave_(infoCopy, v8, v7);

  v11 = objc_msgSend_recordIDsToDelete(self, v9, v10);
  objc_msgSend_setRecordIDsToDelete_(infoCopy, v12, v11);

  v15 = objc_msgSend_savePolicy(self, v13, v14);
  objc_msgSend_setSavePolicy_(infoCopy, v16, v15);
  v19 = objc_msgSend_clientChangeTokenData(self, v17, v18);
  objc_msgSend_setClientChangeTokenData_(infoCopy, v20, v19);

  shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(self, v21, v22);
  objc_msgSend_setShouldOnlySaveAssetContent_(infoCopy, v24, shouldOnlySaveAssetContent);
  v27 = objc_msgSend_recordIDsToDeleteToEtags(self, v25, v26);
  objc_msgSend_setRecordIDsToDeleteToEtags_(infoCopy, v28, v27);

  v31 = objc_msgSend_atomic(self, v29, v30);
  objc_msgSend_setAtomic_(infoCopy, v32, v31);
  v35 = objc_msgSend_conflictLosersToResolveByRecordID(self, v33, v34);
  objc_msgSend_setConflictLosersToResolveByRecordID_(infoCopy, v36, v35);

  v39 = objc_msgSend_pluginFieldsForRecordDeletesByID(self, v37, v38);
  objc_msgSend_setPluginFieldsForRecordDeletesByID_(infoCopy, v40, v39);

  v43 = objc_msgSend_recordsInFlightBlock(self, v41, v42);
  objc_msgSend_setShouldReportRecordsInFlight_(infoCopy, v44, v43 != 0);

  v47 = objc_msgSend_markAsParticipantNeedsNewInvitationToken(self, v45, v46);
  objc_msgSend_setMarkAsParticipantNeedsNewInvitationToken_(infoCopy, v48, v47);
  PCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(self, v49, v50);
  objc_msgSend_setAlwaysFetchPCSFromServer_(infoCopy, v52, PCSFromServer);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v53, v54);
  objc_msgSend_setShouldCloneFileInAssetCache_(infoCopy, v56, shouldCloneFileInAssetCache);
  v57.receiver = self;
  v57.super_class = CKModifyRecordsOperation;
  [(CKDatabaseOperation *)&v57 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v53.receiver = self;
  v53.super_class = CKModifyRecordsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v53 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordsToSave(infoCopy, v5, v6, v53.receiver, v53.super_class);
  objc_msgSend_setRecordsToSave_(self, v8, v7);

  v11 = objc_msgSend_recordIDsToDelete(infoCopy, v9, v10);
  objc_msgSend_setRecordIDsToDelete_(self, v12, v11);

  v15 = objc_msgSend_savePolicy(infoCopy, v13, v14);
  objc_msgSend_setSavePolicy_(self, v16, v15);
  v19 = objc_msgSend_clientChangeTokenData(infoCopy, v17, v18);
  objc_msgSend_setClientChangeTokenData_(self, v20, v19);

  shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(infoCopy, v21, v22);
  objc_msgSend_setShouldOnlySaveAssetContent_(self, v24, shouldOnlySaveAssetContent);
  v27 = objc_msgSend_recordIDsToDeleteToEtags(infoCopy, v25, v26);
  objc_msgSend_setRecordIDsToDeleteToEtags_(self, v28, v27);

  v31 = objc_msgSend_atomic(infoCopy, v29, v30);
  objc_msgSend_setAtomic_(self, v32, v31);
  v35 = objc_msgSend_conflictLosersToResolveByRecordID(infoCopy, v33, v34);
  objc_msgSend_setConflictLosersToResolveByRecordID_(self, v36, v35);

  v39 = objc_msgSend_pluginFieldsForRecordDeletesByID(infoCopy, v37, v38);
  objc_msgSend_setPluginFieldsForRecordDeletesByID_(self, v40, v39);

  v43 = objc_msgSend_markAsParticipantNeedsNewInvitationToken(infoCopy, v41, v42);
  objc_msgSend_setMarkAsParticipantNeedsNewInvitationToken_(self, v44, v43);
  PCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(infoCopy, v45, v46);
  objc_msgSend_setAlwaysFetchPCSFromServer_(self, v48, PCSFromServer);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v49, v50);

  objc_msgSend_setShouldCloneFileInAssetCache_(self, v52, shouldCloneFileInAssetCache);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v23.receiver = self;
  v23.super_class = CKModifyRecordsOperation;
  if ([(CKOperation *)&v23 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perRecordProgressBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perRecordCompletionBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_perRecordSaveBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v17 = objc_msgSend_perRecordDeleteBlock(self, v12, v13);
        if (v17)
        {
          v5 = 1;
        }

        else
        {
          v20 = objc_msgSend_recordsInFlightBlock(self, v15, v16);
          if (v20)
          {
            v5 = 1;
          }

          else
          {
            v21 = objc_msgSend_modifyRecordsCompletionBlock(self, v18, v19);
            v5 = v21 != 0;
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v455 = *MEMORY[0x1E69E9840];
  v389 = objc_opt_new();
  v4 = objc_opt_new();
  v441 = 0u;
  v442 = 0u;
  v443 = 0u;
  v444 = 0u;
  selfCopy = self;
  v7 = objc_msgSend_recordIDsToDelete(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v441, v454, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v442;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v442 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v441 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (run)
          {
            v257 = objc_opt_class();
            v258 = NSStringFromClass(v257);
            *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v259, @"CKErrorDomain", 12, @"Unexpected recordID in property recordIDsToDelete passed to %@: %@", v258, v13);
          }

          goto LABEL_133;
        }

        if (objc_msgSend_containsObject_(v4, v14, v13))
        {
          if (run)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKErrorDomain", 12, @"You can't delete the same record (%@) twice in a single operation", v13);
            *run = v260 = 0;
            goto LABEL_141;
          }

LABEL_133:
          v260 = 0;
          goto LABEL_141;
        }

        objc_msgSend_addObject_(v4, v15, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v441, v454, 16);
    }

    while (v10);
  }

  v7 = objc_opt_new();
  v388 = objc_opt_new();
  v437 = 0u;
  v438 = 0u;
  v439 = 0u;
  v440 = 0u;
  v17 = selfCopy;
  obj = objc_msgSend_recordsToSave(selfCopy, v18, v19);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v437, v453, 16);
  v392 = v4;
  v395 = v7;
  runCopy8 = run;
  if (!v21)
  {
    goto LABEL_126;
  }

  v23 = v21;
  v24 = *v438;
  v381 = *v438;
  do
  {
    v25 = 0;
    v382 = v23;
    do
    {
      if (*v438 != v24)
      {
        v26 = v25;
        objc_enumerationMutation(obj);
        v25 = v26;
      }

      v384 = v25;
      v27 = *(*(&v437 + 1) + 8 * v25);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!runCopy8)
        {
          goto LABEL_138;
        }

        v343 = objc_opt_class();
        v385 = NSStringFromClass(v343);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v344, @"CKErrorDomain", 12, @"Unexpected record in property recordsToSave passed to %@: %@", v385, v27);
        *runCopy8 = LABEL_183:;
        goto LABEL_137;
      }

      v385 = objc_msgSend_recordID(v27, v28, v29);
      if (objc_msgSend_containsObject_(v4, v30, v385))
      {
        if (!runCopy8)
        {
          goto LABEL_137;
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v31, @"CKErrorDomain", 12, @"You can't save and delete the same record (%@) in a single operation", v385, v378);
        goto LABEL_183;
      }

      v393 = v27;
      v33 = objc_msgSend_configuration(v17, v31, v32);
      v36 = objc_msgSend_container(v33, v34, v35);
      v39 = objc_msgSend_options(v36, v37, v38);
      if (objc_msgSend_useZoneWidePCS(v39, v40, v41))
      {

        v44 = v393;
        objc_msgSend_parent(v393, v45, v46);
      }

      else
      {
        v47 = objc_msgSend_zoneishKeyID(v393, v42, v43);

        v44 = v393;
        if (!v47)
        {
          goto LABEL_23;
        }

        objc_msgSend_parent(v393, v48, v49);
      }
      v50 = ;

      if (v50)
      {
        if (!runCopy8)
        {
          goto LABEL_137;
        }

        v55 = objc_msgSend_recordID(v44, v51, v52);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v346, @"CKErrorDomain", 12, @"Records with a parent reference cannot use per-zone encryption: %@", v55);
        *runCopy8 = LABEL_189:;
        goto LABEL_190;
      }

      v53 = objc_msgSend_share(v44, v51, v52);

      if (v53)
      {
        if (!runCopy8)
        {
          goto LABEL_137;
        }

        v55 = objc_msgSend_recordID(v44, v48, v49);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v347, @"CKErrorDomain", 12, @"Records with a share reference (root records) cannot use per-zone encryption: %@", v55);
        goto LABEL_189;
      }

LABEL_23:
      v54 = objc_msgSend_changedKeys(v44, v48, v49);
      v55 = CKValidateIndexedArrayKeys(v54, 0);

      if (runCopy8 && v55)
      {
        v345 = v55;
        *runCopy8 = v55;
LABEL_190:

        goto LABEL_137;
      }

      v396 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v56, v57);
      v394 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v58, v59);
      v433 = 0u;
      v434 = 0u;
      v435 = 0u;
      v436 = 0u;
      v391 = objc_msgSend_changedKeys(v44, v60, v61);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v391, v62, &v433, v452, 16);
      if (!v63)
      {
        v66 = 0;
        v113 = 1;
        runCopy6 = run;
        goto LABEL_73;
      }

      v64 = v63;
      v383 = v55;
      v397 = *v434;
LABEL_27:
      v65 = 0;
      while (1)
      {
        if (*v434 != v397)
        {
          objc_enumerationMutation(v391);
        }

        v66 = *(*(&v433 + 1) + 8 * v65);
        v432 = 0;
        v431 = 0;
        v430 = 0;
        v67 = CKProcessIndexedArrayKey(v66, &v430, &v432, &v431);
        v68 = v430;
        v71 = v68;
        if (v67)
        {
          v109 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v69, v70);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v109, v110, a2, selfCopy, @"CKModifyRecordsOperation.m", 215, @"Error processing indexed array key, which should have been caught earlier: %@", v67);

          if (!v71)
          {
LABEL_57:

            goto LABEL_58;
          }
        }

        else if (!v68)
        {
          goto LABEL_57;
        }

        v72 = objc_msgSend_valueStore(v44, v69, v70);
        v74 = objc_msgSend_objectForKeyedSubscript_(v72, v73, v66);
        v77 = v74;
        if (v74)
        {
          v78 = v74;
        }

        else
        {
          v79 = objc_msgSend_encryptedValueStore(v44, v75, v76);
          v78 = objc_msgSend_objectForKeyedSubscript_(v79, v80, v66);

          v7 = v395;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          runCopy6 = run;
          if (run)
          {
            v115 = objc_msgSend_recordID(v393, v81, v82);
            *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v116, @"CKErrorDomain", 12, @"Value type for indexed list key %@ in record %@ needs to be NSArray", v66, v115);
          }

          v66 = 0;
          v113 = 0;
          v44 = v393;
LABEL_65:
          v55 = v383;
          goto LABEL_73;
        }

        v83 = objc_msgSend_objectForKeyedSubscript_(v396, v81, v71);
        v84 = v83;
        if (v83)
        {
          v85 = v83;
        }

        else
        {
          v85 = objc_opt_new();
        }

        v87 = objc_msgSend_objectForKeyedSubscript_(v394, v86, v71);
        v88 = v432;
        v89 = v431;
        if (v89 == objc_msgSend_count(v78, v90, v91))
        {
          if (v432 < 0)
          {
            v379 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v92, v93);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v379, v111, a2, selfCopy, @"CKModifyRecordsOperation.m", 247, @"For now, negative indexed list keys (%@) can only be appends: should have been caught in CKProcessIndexedArrayKey", v66);
          }

          if (objc_msgSend_containsIndexesInRange_(v85, v92, v88, v89))
          {
            v380 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v94, v95);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v380, v112, a2, selfCopy, @"CKModifyRecordsOperation.m", 249, @"Overlapping replacements: should have been caught in CKValidateIndexedArrayKeys");
          }

          objc_msgSend_addIndexesInRange_(v85, v94, v88, v89);
          if (v87)
          {
            if ((objc_msgSend_integerValue(v87, v96, v97) & 0x8000000000000000) == 0 && objc_msgSend_lastIndex(v85, v96, v98) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v100 = objc_msgSend_integerValue(v87, v96, v99);
              if (v100 <= objc_msgSend_lastIndex(v85, v101, v102))
              {
LABEL_66:
                v117 = v66;

                v7 = v395;
                goto LABEL_68;
              }
            }
          }

          objc_msgSend_setObject_forKeyedSubscript_(v396, v96, v85, v71);
          v7 = v395;
          goto LABEL_55;
        }

        if (v87)
        {
          goto LABEL_66;
        }

        v103 = v432;
        v7 = v395;
        if (v432 >= 1)
        {
          Index = objc_msgSend_lastIndex(v85, v92, v93);
          v103 = v432;
          if (Index != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }
        }

LABEL_54:
        v106 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v92, v103);
        objc_msgSend_setObject_forKeyedSubscript_(v394, v107, v106, v71);

LABEL_55:
        v4 = v392;
        v44 = v393;
LABEL_58:
        if (v64 == ++v65)
        {
          v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v391, v108, &v433, v452, 16);
          if (v64)
          {
            goto LABEL_27;
          }

          v66 = 0;
          v113 = 1;
          runCopy6 = run;
          goto LABEL_65;
        }
      }

      if (v103 > objc_msgSend_lastIndex(v85, v92, v105))
      {
        v103 = v432;
        goto LABEL_54;
      }

      v118 = v66;
LABEL_68:

      v113 = v66 == 0;
      v121 = run == 0;
      if (!v66)
      {
        v121 = 1;
      }

      v4 = v392;
      runCopy6 = run;
      v55 = v383;
      if (v121)
      {
        v44 = v393;
        goto LABEL_74;
      }

      v44 = v393;
      v391 = objc_msgSend_recordID(v393, v119, v120);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v122, @"CKErrorDomain", 12, @"Found non-commutative indexed list key %@ in record %@: every mutation for a given list key must commute", v66, v391);
      *run = v113 = 0;
LABEL_73:

LABEL_74:
      if (!v113)
      {
        goto LABEL_137;
      }

      v428 = 0u;
      v429 = 0u;
      v426 = 0u;
      v427 = 0u;
      v125 = objc_msgSend_valueStore(v44, v123, v124);
      v128 = objc_msgSend_allRawValues(v125, v126, v127);

      v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v129, &v426, v451, 16);
      if (v130)
      {
        v131 = v130;
        v132 = *v427;
        v398 = v128;
        do
        {
          v133 = 0;
          v134 = selfCopy;
          do
          {
            if (*v427 != v132)
            {
              objc_enumerationMutation(v128);
            }

            v135 = *(*(&v426 + 1) + 8 * v133);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_1885D9520;
            aBlock[3] = &unk_1E70BEC48;
            aBlock[4] = v134;
            aBlock[5] = v393;
            v136 = _Block_copy(aBlock);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v136[2](v136, v135, runCopy6))
              {
                goto LABEL_94;
              }

LABEL_135:

LABEL_136:
              v7 = v395;
              goto LABEL_137;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_94;
            }

            v423 = 0u;
            v424 = 0u;
            v421 = 0u;
            v422 = 0u;
            v137 = v135;
            v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v138, &v421, v450, 16);
            if (!v139)
            {
              goto LABEL_93;
            }

            v140 = v139;
            v141 = *v422;
            do
            {
              for (j = 0; j != v140; ++j)
              {
                if (*v422 != v141)
                {
                  objc_enumerationMutation(v137);
                }

                v143 = *(*(&v421 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && !v136[2](v136, v143, run))
                {

                  v4 = v392;
                  v128 = v398;
                  goto LABEL_135;
                }
              }

              v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v144, &v421, v450, 16);
            }

            while (v140);
LABEL_93:

            v4 = v392;
            v128 = v398;
            runCopy6 = run;
            v134 = selfCopy;
LABEL_94:

            ++v133;
          }

          while (v133 != v131);
          v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v145, &v426, v451, 16);
        }

        while (v131);
      }

      objc_msgSend_addObject_(v388, v146, v385);
      v149 = objc_msgSend_recordType(v393, v147, v148);
      isEqualToString = objc_msgSend_isEqualToString_(v149, v150, @"cloudkit.share");

      if (isEqualToString)
      {
        v154 = v393;
        v159 = objc_msgSend_rootRecordID(v154, v155, v156);
        if (v159 && (objc_msgSend_isKnownToServer(v154, v157, v158) & 1) == 0)
        {
          v162 = objc_msgSend_recordID(v154, v160, v161);
          objc_msgSend_setObject_forKeyedSubscript_(v395, v163, v162, v159);
        }
      }

      v164 = objc_msgSend_configuration(selfCopy, v152, v153);
      v167 = objc_msgSend_container(v164, v165, v166);
      v170 = objc_msgSend_options(v167, v168, v169);
      if (objc_msgSend_bypassPCSEncryption(v170, v171, v172))
      {
      }

      else
      {
        v177 = objc_msgSend_configuration(selfCopy, v173, v174);
        v180 = objc_msgSend_container(v177, v178, v179);
        v183 = objc_msgSend_options(v180, v181, v182);
        OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v183, v184, v185);

        if (!OnlyManatee)
        {
          goto LABEL_124;
        }
      }

      v187 = objc_msgSend_configuration(selfCopy, v175, v176);
      v190 = objc_msgSend_container(v187, v188, v189);
      v193 = objc_msgSend_options(v190, v191, v192);
      v196 = objc_msgSend_bypassPCSEncryption(v193, v194, v195);

      v199 = @"no encryption";
      if ((v196 & 1) == 0)
      {
        v200 = objc_msgSend_configuration(selfCopy, v197, v198);
        v203 = objc_msgSend_container(v200, v201, v202);
        v206 = objc_msgSend_options(v203, v204, v205);
        v209 = objc_msgSend_forceEnableReadOnlyManatee(v206, v207, v208);

        if (v209)
        {
          v199 = @"manatee force enabled";
        }

        else
        {
          v199 = @"?";
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!run)
        {
          goto LABEL_136;
        }

        v377 = @"This container has requested %@ but record %@ is a share";
        v7 = v395;
LABEL_224:
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v210, @"CKErrorDomain", 12, v377, v199, v385);
        goto LABEL_137;
      }

      v212 = objc_msgSend_share(v393, v210, v211);

      if (v212)
      {
        v7 = v395;
        if (!run)
        {
          goto LABEL_137;
        }

        v377 = @"This container has requested %@ but record %@ has a share reference";
        goto LABEL_224;
      }

      v214 = objc_msgSend_parent(v393, v210, v213);

      v7 = v395;
      if (v214)
      {
        if (!run)
        {
          goto LABEL_137;
        }

        v377 = @"This container has requested %@ but record %@ has a parent reference";
        goto LABEL_224;
      }

      if (objc_msgSend_wantsChainPCS(v393, v210, v215))
      {
        if (!run)
        {
          goto LABEL_137;
        }

        v377 = @"This container has requested %@ but record %@ wants chain PCS";
        goto LABEL_224;
      }

      v217 = objc_msgSend_encryptedValueStore(v393, v210, v216);
      v220 = objc_msgSend_allKeys(v217, v218, v219);
      v223 = objc_msgSend_count(v220, v221, v222);

      if (v223)
      {
        if (!run)
        {
          goto LABEL_137;
        }

        v377 = @"This container has requested %@ but record %@ has encrypted values";
        goto LABEL_224;
      }

      v419 = 0u;
      v420 = 0u;
      v417 = 0u;
      v418 = 0u;
      v225 = objc_msgSend_valueStore(v393, v210, v224);
      v228 = objc_msgSend_allRawValues(v225, v226, v227);

      v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v229, &v417, v449, 16);
      if (!v230)
      {
        goto LABEL_123;
      }

      v231 = v230;
      v232 = *v418;
      do
      {
        for (k = 0; k != v231; ++k)
        {
          if (*v418 != v232)
          {
            objc_enumerationMutation(v228);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }
          }

          if (run)
          {
            v339 = objc_opt_class();
            v340 = NSStringFromClass(v339);
            *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v341, @"CKErrorDomain", 12, @"This container has requested %@ but record %@ has a value of class %@", v199, v385, v340);
          }

LABEL_137:
LABEL_138:

          goto LABEL_139;
        }

        v231 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v234, &v417, v449, 16);
      }

      while (v231);
LABEL_123:

LABEL_124:
      v25 = v384 + 1;
      v24 = v381;
      v7 = v395;
      runCopy8 = run;
      v17 = selfCopy;
    }

    while (v384 + 1 != v382);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v235, &v437, v453, 16);
  }

  while (v23);
LABEL_126:

  objc_msgSend_database(v17, v236, v237);
  v239 = v238 = v17;
  if (objc_msgSend_databaseScope(v239, v240, v241) == 3)
  {
    v244 = objc_msgSend_configuration(v238, v242, v243);
    v247 = objc_msgSend_container(v244, v245, v246);
    v250 = objc_msgSend_options(v247, v248, v249);
    if (objc_msgSend_bypassPCSEncryption(v250, v251, v252))
    {

LABEL_170:
      if (runCopy8)
      {
        v337 = objc_msgSend_operationID(selfCopy, v255, v256);
        *runCopy8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v338, @"CKErrorDomain", 12, @"This container has requested no encryption but CKModifyRecordsOperation %@ is targeting the shared database, which requires encryption", v337);
      }

LABEL_139:
      v260 = 0;
      goto LABEL_140;
    }

    v327 = objc_msgSend_configuration(v238, v253, v254);
    v330 = objc_msgSend_container(v327, v328, v329);
    v333 = objc_msgSend_options(v330, v331, v332);
    v336 = objc_msgSend_forceEnableReadOnlyManatee(v333, v334, v335);

    v7 = v395;
    runCopy8 = run;

    if (v336)
    {
      goto LABEL_170;
    }
  }

  else
  {
  }

  if (objc_msgSend_count(v7, v255, v256) && (objc_msgSend_atomic(selfCopy, v262, v263) & 1) == 0)
  {
    if (runCopy8)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v262, @"CKErrorDomain", 12, @"When saving an added share with its rootRecord, the operation must be marked as atomic = YES");
      *runCopy8 = v260 = 0;
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v415 = 0u;
  v416 = 0u;
  v413 = 0u;
  v414 = 0u;
  v264 = objc_msgSend_allKeys(v7, v262, v263);
  v266 = objc_msgSend_countByEnumeratingWithState_objects_count_(v264, v265, &v413, v448, 16);
  if (!v266)
  {
    goto LABEL_153;
  }

  v268 = v266;
  v269 = *v414;
  do
  {
    for (m = 0; m != v268; ++m)
    {
      if (*v414 != v269)
      {
        objc_enumerationMutation(v264);
      }

      v271 = *(*(&v413 + 1) + 8 * m);
      if ((objc_msgSend_containsObject_(v388, v267, v271) & 1) == 0)
      {
        if (run)
        {
          v319 = objc_msgSend_objectForKeyedSubscript_(v7, v267, v271);
          v322 = objc_msgSend_ckShortDescription(v319, v320, v321);
          v325 = objc_msgSend_ckShortDescription(v271, v323, v324);
          *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v326, @"CKErrorDomain", 12, @"An added share is being saved without its rootRecord being saved in the same operation. (Share ID: %@, Root Record ID: %@)", v322, v325);
        }

        goto LABEL_139;
      }
    }

    v268 = objc_msgSend_countByEnumeratingWithState_objects_count_(v264, v267, &v413, v448, 16);
  }

  while (v268);
LABEL_153:

  v272 = objc_opt_new();
  v273 = objc_opt_new();
  v409 = 0u;
  v410 = 0u;
  v411 = 0u;
  v412 = 0u;
  v276 = objc_msgSend_recordsToSave(selfCopy, v274, v275);
  v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v277, &v409, v447, 16);
  if (!v278)
  {
    goto LABEL_164;
  }

  v281 = v278;
  v282 = *v410;
  while (2)
  {
    v283 = 0;
    while (2)
    {
      if (*v410 != v282)
      {
        objc_enumerationMutation(v276);
      }

      v284 = *(*(&v409 + 1) + 8 * v283);
      v285 = objc_msgSend_recordID(v284, v279, v280);
      v287 = objc_msgSend_containsObject_(v389, v286, v285);

      if (v287)
      {
        v4 = v392;
        if (!run)
        {
          goto LABEL_193;
        }

        v290 = objc_msgSend_recordID(v284, v288, v289);
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v342, @"CKErrorDomain", 12, @"You can't save the same record twice: %@", v290);
        goto LABEL_192;
      }

      v290 = v284;
      if (!objc_msgSend_containsPackageValues(v290, v291, v292))
      {
        goto LABEL_162;
      }

      v295 = objc_msgSend_recordWithDuplicatedPackagesOfRecord_error_(CKRecord, v293, v290, run);
      if (!v295)
      {
        v4 = v392;
LABEL_192:

        goto LABEL_193;
      }

      v297 = v295;
      objc_msgSend_addObject_(v272, v296, v295);
      v298 = v297;

      v290 = v298;
LABEL_162:
      v299 = objc_msgSend_recordsByRecordIDs(selfCopy, v293, v294);
      v302 = objc_msgSend_recordID(v290, v300, v301);
      objc_msgSend_setObject_forKeyedSubscript_(v299, v303, v290, v302);

      v306 = objc_msgSend_recordID(v290, v304, v305);
      objc_msgSend_addObject_(v389, v307, v306);

      objc_msgSend_addObject_(v273, v308, v290);
      if (v281 != ++v283)
      {
        continue;
      }

      break;
    }

    v281 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v279, &v409, v447, 16);
    if (v281)
    {
      continue;
    }

    break;
  }

LABEL_164:

  objc_msgSend_setRecordsToSave_(selfCopy, v309, v273);
  v312 = objc_msgSend_recordsToSave(selfCopy, v310, v311);
  if (objc_msgSend_count(v312, v313, v314))
  {

    v4 = v392;
    goto LABEL_197;
  }

  v348 = objc_msgSend_recordIDsToDelete(selfCopy, v315, v316);
  v351 = objc_msgSend_count(v348, v349, v350);

  v4 = v392;
  if (!v351)
  {
    goto LABEL_194;
  }

LABEL_197:
  v407 = 0u;
  v408 = 0u;
  v405 = 0u;
  v406 = 0u;
  v276 = objc_msgSend_recordsToSave(selfCopy, v317, v318);
  v353 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v352, &v405, v446, 16);
  if (v353)
  {
    v356 = v353;
    v357 = *v406;
LABEL_199:
    v358 = 0;
    while (1)
    {
      if (*v406 != v357)
      {
        objc_enumerationMutation(v276);
      }

      v359 = objc_msgSend_recordID(*(*(&v405 + 1) + 8 * v358), v354, v355);
      v362 = objc_msgSend_zoneID(v359, v360, v361);
      v364 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(selfCopy, v363, v362, run);

      if (!v364)
      {
        break;
      }

      if (v356 == ++v358)
      {
        v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v354, &v405, v446, 16);
        if (v356)
        {
          goto LABEL_199;
        }

        goto LABEL_205;
      }
    }

LABEL_193:

LABEL_194:
    v260 = 0;
  }

  else
  {
LABEL_205:

    v403 = 0u;
    v404 = 0u;
    v401 = 0u;
    v402 = 0u;
    v276 = objc_msgSend_recordIDsToDelete(selfCopy, v365, v366);
    v368 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v367, &v401, v445, 16);
    if (v368)
    {
      v371 = v368;
      v372 = *v402;
LABEL_207:
      v373 = 0;
      while (1)
      {
        if (*v402 != v372)
        {
          objc_enumerationMutation(v276);
        }

        v374 = objc_msgSend_zoneID(*(*(&v401 + 1) + 8 * v373), v369, v370);
        v376 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(selfCopy, v375, v374, run);

        if (!v376)
        {
          goto LABEL_193;
        }

        if (v371 == ++v373)
        {
          v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v369, &v401, v445, 16);
          if (v371)
          {
            goto LABEL_207;
          }

          break;
        }
      }
    }

    v400.receiver = selfCopy;
    v400.super_class = CKModifyRecordsOperation;
    v260 = [(CKDatabaseOperation *)&v400 CKOperationShouldRun:run];
  }

  v7 = v395;
LABEL_140:

LABEL_141:
  return v260;
}

- (BOOL)_prepareFieldValuesForUploadWithError:(id *)error
{
  v100 = *MEMORY[0x1E69E9840];
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  selfCopy = self;
  v6 = objc_msgSend_database(self, v4, v5);
  v65 = objc_msgSend_container(v6, v7, v8);

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v11 = objc_msgSend_recordsToSave(self, v9, v10);
  v13 = 0;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v74, v99, 16);
  if (v15)
  {
    v16 = *v75;
LABEL_3:
    v17 = 0;
    v18 = v13;
    while (1)
    {
      if (*v75 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v74 + 1) + 8 * v17);
      v73 = v18;
      v20 = objc_msgSend_prepareMergeablesForUploadInContainer_useAssetsIfNecessary_error_(v19, v14, v65, 1, &v73);
      v13 = v73;

      if ((v20 & 1) == 0)
      {
        break;
      }

      v98[0] = objc_opt_class();
      v98[1] = objc_opt_class();
      v98[2] = objc_opt_class();
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v98, 3);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = sub_1885D9BEC;
      v66[3] = &unk_1E70BEC70;
      v67 = v64;
      v68 = &v78;
      v69 = &v86;
      v70 = &v82;
      v71 = &v94;
      v72 = &v90;
      objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v19, v23, v22, v66);

      ++v17;
      v18 = v13;
      if (v15 == v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v74, v99, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v25 = v95[3];
  if (v25)
  {
    v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v25);
    v29 = objc_msgSend_operationMetric(selfCopy, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v30, v26, @"mergeable_valueCount");
  }

  v31 = v91[3];
  if (v31)
  {
    v32 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v31);
    v35 = objc_msgSend_operationMetric(selfCopy, v33, v34);
    objc_msgSend_setObject_forKeyedSubscript_(v35, v36, v32, @"mergeable_savedDeltaCount");
  }

  v37 = v87[3];
  if (v37)
  {
    v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v37);
    v41 = objc_msgSend_operationMetric(selfCopy, v39, v40);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v42, v38, @"mergeable_savedReplacementDeltaCount");
  }

  v43 = v83[3];
  if (v43)
  {
    v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v43);
    v47 = objc_msgSend_operationMetric(selfCopy, v45, v46);
    objc_msgSend_setObject_forKeyedSubscript_(v47, v48, v44, @"mergeable_replacedDeltaCount");
  }

  v49 = v79[3];
  if (v49)
  {
    v50 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v49);
    v53 = objc_msgSend_operationMetric(selfCopy, v51, v52);
    objc_msgSend_setObject_forKeyedSubscript_(v53, v54, v50, @"mergeable_assetCount");
  }

  if (!v13)
  {
    v55 = objc_msgSend_deviceContext(selfCopy, v24, v49);
    v58 = objc_msgSend_deviceScopedStateManager(v55, v56, v57);
    objc_msgSend_trackAssets_(v58, v59, v64);
  }

  if (error)
  {
    v60 = v13;
    *error = v13;
  }

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);

  return v13 == 0;
}

- (void)performCKOperation
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v6 = objc_msgSend_CKMap_(v4, v5, &unk_1EFA2F4E8);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v12 = v7;
    v15 = objc_msgSend_operationID(self, v13, v14);
    v18 = objc_msgSend_recordIDsToDelete(self, v16, v17);
    *buf = 138543874;
    v22 = v15;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Modifying records with operation %{public}@ recordsToSave=%@ recordIDsToDelete=%@", buf, 0x20u);
  }

  v20 = 0;
  v9 = objc_msgSend__prepareFieldValuesForUploadWithError_(self, v8, &v20);
  v11 = v20;
  if (v9)
  {
    v19.receiver = self;
    v19.super_class = CKModifyRecordsOperation;
    [(CKOperation *)&v19 performCKOperation];
  }

  else
  {
    objc_msgSend_finishWithError_(self, v10, v11);
  }
}

- (void)handleRecordIDsInFlight:(id)flight reply:(id)reply
{
  v45 = *MEMORY[0x1E69E9840];
  flightCopy = flight;
  replyCopy = reply;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v9 = signpost;

  if (v9)
  {
    if (self)
    {
      v12 = self->super.super._signpost;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v16 = objc_msgSend_log(v13, v14, v15);

    if (self)
    {
      v17 = self->super.super._signpost;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v21 = objc_msgSend_identifier(v18, v19, v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v41 = 138412290;
      v42 = flightCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_EVENT, v21, "CKModifyRecordsOperation", "Records in flight: %@", &v41, 0xCu);
    }
  }

  v22 = objc_msgSend_recordsInFlightBlock_wrapper(self, v10, v11);
  v25 = v22;
  if (v22)
  {
    v26 = _Block_copy(v22);
  }

  else
  {
    v27 = objc_msgSend_recordsInFlightBlock(self, v23, v24);
    v26 = _Block_copy(v27);
  }

  if (v26)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v30 = v28;
      v33 = objc_msgSend_operationID(self, v31, v32);
      v41 = 138543618;
      v42 = v33;
      v43 = 2112;
      v44 = flightCopy;
      _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about records in flight %@", &v41, 0x16u);
    }

    v26[2](v26, flightCopy);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v29 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v34 = v29;
      v37 = objc_msgSend_operationID(self, v35, v36);
      v40 = objc_msgSend_count(flightCopy, v38, v39);
      v41 = 138543618;
      v42 = v37;
      v43 = 2048;
      v44 = v40;
      _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received %lu records in flight, but no recordsInFlightBlock has been set.", &v41, 0x16u);
    }
  }

  replyCopy[2](replyCopy, 0);
}

- (void)handleRecordModificationForRecordID:(id)d didProgress:(double)progress
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v8 = signpost;

  if (v8)
  {
    if (self)
    {
      v11 = self->super.super._signpost;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v15 = objc_msgSend_log(v12, v13, v14);

    if (self)
    {
      v16 = self->super.super._signpost;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v20 = objc_msgSend_identifier(v17, v18, v19);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v33 = 138412546;
      v34 = dCopy;
      v35 = 2048;
      progressCopy = progress;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_EVENT, v20, "CKModifyRecordsOperation", "Record %@ updated progress %f", &v33, 0x16u);
    }
  }

  v21 = objc_msgSend_recordsByRecordIDs(self, v9, v10);
  v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, dCopy);

  if (v23)
  {
    v26 = objc_msgSend_perRecordProgressBlock_wrapper(self, v24, v25);
    v29 = v26;
    if (v26)
    {
      v30 = _Block_copy(v26);
    }

    else
    {
      v32 = objc_msgSend_perRecordProgressBlock(self, v27, v28);
      v30 = _Block_copy(v32);
    }

    if (v30)
    {
      v30[2](v30, v23, progress);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = dCopy;
      _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Received progress callback with nil record for recordID %@", &v33, 0xCu);
    }
  }
}

- (void)handleDeleteForRecordID:(id)d error:(id)error
{
  v64 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v11 = signpost;

  if (!v9)
  {
    if (!v11)
    {
      if (objc_msgSend_canDropItemResultsEarly(self, v12, v13))
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (self)
    {
      v28 = self->super.super._signpost;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v18 = objc_msgSend_log(v29, v30, v31);

    if (self)
    {
      v32 = self->super.super._signpost;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v36 = objc_msgSend_identifier(v33, v34, v35);

    if ((v36 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
    {
      goto LABEL_21;
    }

    *v62 = 138412290;
    *&v62[4] = dCopy;
    v24 = "Record %@ deleted";
    v25 = v18;
    v26 = v36;
    v27 = 12;
    goto LABEL_20;
  }

  if (!v11)
  {
    if (objc_msgSend_canDropItemResultsEarly(self, v12, v13))
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (self)
  {
    v14 = self->super.super._signpost;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v18 = objc_msgSend_log(v15, v16, v17);

  if (self)
  {
    v19 = self->super.super._signpost;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v23 = objc_msgSend_identifier(v20, v21, v22);

  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v62 = 138412546;
    *&v62[4] = dCopy;
    *&v62[12] = 2112;
    *&v62[14] = v9;
    v24 = "Record %@ deleted with error: %@";
    v25 = v18;
    v26 = v23;
    v27 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v26, "CKModifyRecordsOperation", v24, v62, v27);
  }

LABEL_21:

  if (objc_msgSend_canDropItemResultsEarly(self, v37, v38))
  {
    goto LABEL_29;
  }

  if (!v9)
  {
LABEL_27:
    v41 = objc_msgSend_deletedRecordIDs(self, v39, v40, *v62, *&v62[8]);
    objc_msgSend_addObject_(v41, v43, dCopy);
    goto LABEL_28;
  }

LABEL_25:
  v41 = objc_msgSend_recordErrors(self, v39, v40, *v62, *&v62[8]);
  objc_msgSend_setObject_forKeyedSubscript_(v41, v42, v9, dCopy);
LABEL_28:

LABEL_29:
  v44 = objc_msgSend_perRecordDeleteBlock_wrapper(self, v39, v40, *v62, *&v62[8]);
  v47 = v44;
  if (v44)
  {
    v48 = _Block_copy(v44);
  }

  else
  {
    v49 = objc_msgSend_perRecordDeleteBlock(self, v45, v46);
    v48 = _Block_copy(v49);
  }

  if (v48)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v52 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v58 = v52;
      v61 = objc_msgSend_operationID(self, v59, v60);
      *v62 = 138543874;
      *&v62[4] = v61;
      *&v62[12] = 2112;
      *&v62[14] = dCopy;
      *&v62[22] = 2112;
      v63 = v9;
      _os_log_debug_impl(&dword_1883EA000, v58, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about deleted record with ID %@: %@", v62, 0x20u);
    }

    v48[2](v48, dCopy, v9);
  }

  v53 = objc_msgSend_configuration(self, v50, v51);
  v56 = objc_msgSend_container(v53, v54, v55);
  objc_msgSend_handleRecordChanged_changeType_record_error_(v56, v57, dCopy, 3, 0, v9);
}

- (void)handleSaveForRecordID:(id)d recordMetadata:(id)metadata error:(id)error
{
  v151 = *MEMORY[0x1E69E9840];
  dCopy = d;
  metadataCopy = metadata;
  errorCopy = error;
  selfCopy = self;
  v12 = errorCopy;
  v15 = objc_msgSend_CKClientSuitableError(errorCopy, v13, v14);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v17 = signpost;

  if (v15)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

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

    if ((v29 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
    {
      goto LABEL_21;
    }

    *buf = 138412546;
    v143 = dCopy;
    v144 = 2112;
    v145 = v15;
    v30 = "Record %@ saved with error: %@";
    v31 = v24;
    v32 = v29;
    v33 = 22;
    goto LABEL_20;
  }

  if (!v17)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v34 = self->super.super._signpost;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v24 = objc_msgSend_log(v35, v36, v37);

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

  if ((v42 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 138412290;
    v143 = dCopy;
    v30 = "Record %@ saved";
    v31 = v24;
    v32 = v42;
    v33 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v31, OS_SIGNPOST_EVENT, v32, "CKModifyRecordsOperation", v30, buf, v33);
  }

LABEL_21:

LABEL_22:
  v43 = objc_msgSend_recordsByRecordIDs(self, v18, v19);
  v45 = objc_msgSend_objectForKeyedSubscript_(v43, v44, dCopy);

  v48 = v45;
  if (v45)
  {
    v49 = objc_msgSend_CKClientSuitableError(v12, v46, v47);

    v135 = v45;
    if (v49)
    {
      if (objc_msgSend_canDropItemResultsEarly(selfCopy, v50, v51))
      {
        goto LABEL_45;
      }

      v54 = objc_msgSend_recordErrors(selfCopy, v52, v53);
      objc_msgSend_setObject_forKeyedSubscript_(v54, v55, v49, dCopy);
    }

    else
    {
      v58 = objc_msgSend_assetsByRecordIDAndRecordKey(selfCopy, v50, v51);
      v61 = objc_msgSend_count(v58, v59, v60);

      if (v61)
      {
        v133 = v12;
        v134 = dCopy;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        obj = objc_msgSend_allKeys(v45, v62, v63);
        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v138, v150, 16);
        if (v65)
        {
          v67 = v65;
          v68 = *v139;
          do
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v139 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v70 = *(*(&v138 + 1) + 8 * i);
              v71 = objc_msgSend_objectForKeyedSubscript_(v48, v66, v70);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v72 = v71;
                objc_msgSend_assetsByRecordIDAndRecordKey(selfCopy, v73, v74);
                v76 = v75 = selfCopy;
                v78 = objc_msgSend_objectForKeyedSubscript_(v76, v77, v134);
                v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, v70);
                objc_msgSend_setAssets_(v72, v81, v80);

                v48 = v135;
                selfCopy = v75;
              }
            }

            v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v138, v150, 16);
          }

          while (v67);
        }

        dCopy = v134;
        v49 = 0;
        v12 = v133;
      }

      shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(selfCopy, v62, v63);
      objc_msgSend_updateWithSavedRecordXPCMetadata_shouldOnlySaveAssetContent_(v48, v83, metadataCopy, shouldOnlySaveAssetContent);
      if (objc_msgSend_canDropItemResultsEarly(selfCopy, v84, v85))
      {
LABEL_45:
        v87 = objc_msgSend_perRecordSaveBlock_wrapper(selfCopy, v52, v53);
        v90 = v87;
        if (v87)
        {
          v91 = _Block_copy(v87);
        }

        else
        {
          v92 = objc_msgSend_perRecordSaveBlock(selfCopy, v88, v89);
          v91 = _Block_copy(v92);
        }

        if (v91)
        {
          if (v49)
          {
            v95 = 0;
          }

          else
          {
            v95 = v48;
          }

          v102 = v12;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v103 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            v112 = v103;
            v115 = objc_msgSend_operationID(selfCopy, v113, v114);
            objc_msgSend_recordID(v48, v116, v117);
            v118 = obja = selfCopy;
            v121 = objc_msgSend_recordChangeTag(v48, v119, v120);
            *buf = 138544130;
            v143 = v115;
            v144 = 2112;
            v145 = v118;
            v146 = 2112;
            v147 = v121;
            v148 = 2112;
            v149 = v49;
            _os_log_debug_impl(&dword_1883EA000, v112, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about saved record with ID %@ etag=%@: %@", buf, 0x2Au);

            v48 = v135;
            selfCopy = obja;
          }

          v106 = objc_msgSend_recordID(v48, v104, v105);
          v91[2](v91, v106, v95, v49);

          v12 = v102;
        }

        else
        {
          v96 = objc_msgSend_perRecordCompletionBlock(selfCopy, v93, v94);

          if (!v96)
          {
LABEL_64:
            v107 = objc_msgSend_configuration(selfCopy, v97, v98);
            v110 = objc_msgSend_container(v107, v108, v109);
            objc_msgSend_handleRecordChanged_changeType_record_error_(v110, v111, dCopy, 2, v48, v49);

            goto LABEL_65;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v99 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            v122 = v99;
            v125 = objc_msgSend_operationID(selfCopy, v123, v124);
            objc_msgSend_recordID(v48, v126, v127);
            v129 = v128 = selfCopy;
            v132 = objc_msgSend_recordChangeTag(v48, v130, v131);
            *buf = 138544130;
            v143 = v125;
            v144 = 2112;
            v145 = v129;
            v146 = 2112;
            v147 = v132;
            v148 = 2112;
            v149 = v49;
            _os_log_debug_impl(&dword_1883EA000, v122, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about saved record with ID %@ etag=%@: %@", buf, 0x2Au);

            v48 = v135;
            selfCopy = v128;
          }

          v95 = objc_msgSend_perRecordCompletionBlock(selfCopy, v100, v101);
          v95[2](v95, v48, v49);
        }

        goto LABEL_64;
      }

      v54 = objc_msgSend_savedRecords(selfCopy, v52, v53);
      objc_msgSend_addObject_(v54, v86, v48);
    }

    goto LABEL_45;
  }

  v56 = metadataCopy;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v57 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v143 = dCopy;
    _os_log_error_impl(&dword_1883EA000, v57, OS_LOG_TYPE_ERROR, "Received progress callback with nil record for recordID %@", buf, 0xCu);
  }

  v49 = v15;
  metadataCopy = v56;
LABEL_65:
}

- (void)handleRecordUploadForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index signature:(id)signature size:(unint64_t)size paddedFileSize:(unint64_t)fileSize uploaded:(BOOL)uploaded uploadReceipt:(id)self0 uploadReceiptExpiration:(double)self1 wrappedAssetKey:(id)self2 clearAssetKey:(id)self3 referenceSignature:(id)self4
{
  v98 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  signatureCopy = signature;
  receiptCopy = receipt;
  assetKeyCopy = assetKey;
  clearAssetKeyCopy = clearAssetKey;
  referenceSignatureCopy = referenceSignature;
  v26 = objc_msgSend_recordsByRecordIDs(self, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, dCopy);

  if (keyCopy && v28)
  {
    v88 = assetKeyCopy;
    v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, keyCopy);
    objc_opt_class();
    v87 = referenceSignatureCopy;
    if (objc_opt_isKindOfClass())
    {
      v30 = v30;
      v32 = 0;
      inited = v30;
      v34 = signatureCopy;
LABEL_5:
      if (inited)
      {
        objc_msgSend_setArrayIndex_(inited, v31, index);
        objc_msgSend_setSignature_(inited, v35, v34);
        objc_msgSend_setSize_(inited, v36, size);
        objc_msgSend_setPaddedFileSize_(inited, v37, fileSize);
        objc_msgSend_setUploaded_(inited, v38, uploaded);
        objc_msgSend_setUploadReceipt_(inited, v39, receiptCopy);
        objc_msgSend_setUploadReceiptExpiration_(inited, v40, v41, expiration);
        objc_msgSend_setWrappedAssetKey_(inited, v42, v88);
        objc_msgSend_setClearAssetKey_(inited, v43, clearAssetKeyCopy);
        objc_msgSend_setReferenceSignature_(inited, v44, v87);
        if (v32)
        {
          v47 = objc_msgSend_assetsByRecordIDAndRecordKey(self, v45, v46);
          v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, dCopy);

          if (!v49)
          {
            v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v53 = objc_msgSend_assetsByRecordIDAndRecordKey(self, v51, v52);
            objc_msgSend_setObject_forKeyedSubscript_(v53, v54, v49, dCopy);
          }

          v56 = objc_msgSend_objectForKeyedSubscript_(v49, v50, keyCopy, fileSize);
          if (!v56)
          {
            v57 = objc_alloc(MEMORY[0x1E695DF70]);
            v56 = objc_msgSend_initWithCapacity_(v57, v58, 2);
            objc_msgSend_setObject_forKeyedSubscript_(v49, v59, v56, keyCopy);
            objc_msgSend_setUploaded_(v32, v60, uploaded);
          }

          objc_msgSend_addObject_(v56, v55, inited);
          v63 = objc_msgSend_uploaded(v32, v61, v62);
          objc_msgSend_setUploaded_(v32, v64, v63 & uploaded);
        }
      }

      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = v30;
      v69 = v66;
      if (index < 0 || objc_msgSend_count(v66, v67, v68) <= index)
      {
        v34 = signatureCopy;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v76 = ck_log_facility_ck;
        v30 = v69;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v82 = v76;
          v85 = objc_msgSend_recordID(v28, v83, v84);
          *buf = 134218242;
          indexCopy2 = index;
          v94 = 2112;
          v95 = v85;
          _os_log_error_impl(&dword_1883EA000, v82, OS_LOG_TYPE_ERROR, "Invalid arrayIndex %ld for record %@", buf, 0x16u);

          v30 = v69;
        }
      }

      else
      {
        v30 = objc_msgSend_objectAtIndex_(v69, v70, index);

        objc_opt_class();
        v34 = signatureCopy;
        if (objc_opt_isKindOfClass())
        {
          v30 = v30;

          v32 = 0;
          inited = v30;
          goto LABEL_5;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v77 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v78 = v77;
          v81 = objc_msgSend_recordID(v28, v79, v80);
          *buf = 134218242;
          indexCopy2 = index;
          v94 = 2112;
          v95 = v81;
          _os_log_error_impl(&dword_1883EA000, v78, OS_LOG_TYPE_ERROR, "Invalid asset at arrayIndex %ld for record %@", buf, 0x16u);
        }
      }
    }

    else
    {
      objc_opt_class();
      v34 = signatureCopy;
      if (objc_opt_isKindOfClass())
      {
        v30 = v30;
        if (objc_msgSend_shouldOnlySaveAssetContent(self, v71, v72))
        {
          v73 = [CKAsset alloc];
          inited = objc_msgSend_initInternal(v73, v74, v75);
          v32 = v30;
          goto LABEL_5;
        }

        inited = 0;
        v32 = v30;
LABEL_30:

        referenceSignatureCopy = v87;
        assetKeyCopy = v88;
        goto LABEL_31;
      }
    }

    v32 = 0;
    inited = 0;
    goto LABEL_30;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v34 = signatureCopy;
  v65 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    indexCopy2 = v28;
    v94 = 2114;
    v95 = keyCopy;
    v96 = 2112;
    v97 = dCopy;
    _os_log_error_impl(&dword_1883EA000, v65, OS_LOG_TYPE_ERROR, "Received upload completion callback with nil record %p or recordKey %{public}@ for recordID %@", buf, 0x20u);
  }

LABEL_31:
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v97 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKModifyRecordsOperation", "Finishing", buf, 2u);
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

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to modify some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_modifyRecordsCompletionBlock_wrapper(self, v7, v8);
  v32 = v29;
  if (v29)
  {
    v33 = _Block_copy(v29);
  }

  else
  {
    v34 = objc_msgSend_modifyRecordsCompletionBlock(self, v30, v31);
    v33 = _Block_copy(v34);
  }

  if (v33)
  {
    v37 = objc_msgSend_savedRecords(self, v35, v36);
    v40 = objc_msgSend_deletedRecordIDs(self, v38, v39);
    v43 = objc_msgSend_CKClientSuitableError(errorCopy, v41, v42);
    v33[2](v33, v37, v40, v43);

    objc_msgSend_setModifyRecordsCompletionBlock_(self, v44, 0);
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v48 = objc_msgSend_savedRecords(self, v46, v47);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v90, v96, 16);
  if (v50)
  {
    v53 = v50;
    v54 = *v91;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v91 != v54)
        {
          objc_enumerationMutation(v48);
        }

        v56 = objc_msgSend_recordID(*(*(&v90 + 1) + 8 * i), v51, v52);
        v59 = objc_msgSend_zoneID(v56, v57, v58);
        objc_msgSend_addObject_(v45, v60, v59);
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v90, v96, 16);
    }

    while (v53);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v63 = objc_msgSend_deletedRecordIDs(self, v61, v62);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v86, v95, 16);
  if (v65)
  {
    v68 = v65;
    v69 = *v87;
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v87 != v69)
        {
          objc_enumerationMutation(v63);
        }

        v71 = objc_msgSend_zoneID(*(*(&v86 + 1) + 8 * j), v66, v67);
        objc_msgSend_addObject_(v45, v72, v71);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v86, v95, 16);
    }

    while (v68);
  }

  if (objc_msgSend_count(v45, v73, v74))
  {
    v76 = objc_msgSend_zoneIDsToZoneNamesString_(self, v75, v45);
    v79 = objc_msgSend_operationMetric(self, v77, v78);
    objc_msgSend_setObject_forKeyedSubscript_(v79, v80, v76, @"zoneNames");
  }

  objc_msgSend_setPerRecordProgressBlock_(self, v75, 0);
  objc_msgSend_setPerRecordCompletionBlock_(self, v81, 0);
  objc_msgSend_setPerRecordSaveBlock_(self, v82, 0);
  objc_msgSend_setPerRecordDeleteBlock_(self, v83, 0);
  objc_msgSend_setRecordsInFlightBlock_(self, v84, 0);
  v85.receiver = self;
  v85.super_class = CKModifyRecordsOperation;
  [(CKOperation *)&v85 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKModifyRecordsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v42, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKModifyRecordsOperation", "Error=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/modify-records", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  v4 = MEMORY[0x1E695DFD8];
  tweaksCopy = tweaks;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v10, v9, sel_handleRecordIDsInFlight_reply_, 0, 0);

  v11 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v12, v11, sel_handleDeleteForRecordID_error_, 1, 0);

  v13 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v14, v13, sel_handleSaveForRecordID_recordMetadata_error_, 2, 0);

  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___CKModifyRecordsOperation;
  objc_msgSendSuper2(&v15, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end