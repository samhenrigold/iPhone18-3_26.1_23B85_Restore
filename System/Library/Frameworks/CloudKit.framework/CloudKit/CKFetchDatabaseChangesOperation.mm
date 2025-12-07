@interface CKFetchDatabaseChangesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchDatabaseChangesOperation)init;
- (CKFetchDatabaseChangesOperation)initWithPreviousServerChangeToken:(CKServerChangeToken *)previousServerChangeToken;
- (id)activityCreate;
- (id)hierarchicalRecordZoneWithIDChangedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)changeTokenUpdatedBlock;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fetchDatabaseChangesCompletionBlock;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleChangeForRecordZoneID:(id)d parentZoneID:(id)iD;
- (void)handleChangeSetCompletionWithServerChangeToken:(id)token databaseChangesStatus:(int64_t)status error:(id)error reply:(id)reply;
- (void)handleDeleteForRecordZoneID:(id)d;
- (void)handleEncryptedDataResetForRecordZoneID:(id)d;
- (void)handlePurgeForRecordZoneID:(id)d;
- (void)performCKOperation;
- (void)recordZoneWithIDChangedBlock;
- (void)recordZoneWithIDWasDeletedBlock;
- (void)recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock;
- (void)recordZoneWithIDWasPurgedBlock;
- (void)setChangeTokenUpdatedBlock:(void *)changeTokenUpdatedBlock;
- (void)setFetchDatabaseChangesCompletionBlock:(void *)fetchDatabaseChangesCompletionBlock;
- (void)setHierarchicalRecordZoneWithIDChangedBlock:(id)block;
- (void)setRecordZoneWithIDChangedBlock:(void *)recordZoneWithIDChangedBlock;
- (void)setRecordZoneWithIDWasDeletedBlock:(void *)recordZoneWithIDWasDeletedBlock;
- (void)setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:(void *)recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock;
- (void)setRecordZoneWithIDWasPurgedBlock:(void *)recordZoneWithIDWasPurgedBlock;
@end

@implementation CKFetchDatabaseChangesOperation

- (CKFetchDatabaseChangesOperation)init
{
  v7.receiver = self;
  v7.super_class = CKFetchDatabaseChangesOperation;
  v2 = [(CKOperation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_fetchAllChanges = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    zoneIDsForMetrics = v3->_zoneIDsForMetrics;
    v3->_zoneIDsForMetrics = v4;
  }

  return v3;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-database-changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchDatabaseChangesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v42, 0x3Eu);
    }
  }
}

- (void)performCKOperation
{
  v17 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v7 = objc_msgSend_operationID(self, v5, v6);
    v10 = objc_msgSend_databaseScope(self, v8, v9);
    v11 = CKDatabaseScopeString(v10);
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v11;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Fetching database changes with operation %{public}@ for database scope %{public}@", buf, 0x16u);
  }

  v12.receiver = self;
  v12.super_class = CKFetchDatabaseChangesOperation;
  [(CKOperation *)&v12 performCKOperation];
}

- (void)changeTokenUpdatedBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FE9AC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_changeTokenUpdatedBlock);
  }

  return v6;
}

- (void)fetchDatabaseChangesCompletionBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FEBA0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchDatabaseChangesCompletionBlock);
  }

  return v6;
}

- (CKFetchDatabaseChangesOperation)initWithPreviousServerChangeToken:(CKServerChangeToken *)previousServerChangeToken
{
  v4 = previousServerChangeToken;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_previousServerChangeToken;
    v9->_previousServerChangeToken = v10;
  }

  return v9;
}

- (void)setRecordZoneWithIDChangedBlock:(void *)recordZoneWithIDChangedBlock
{
  v6 = recordZoneWithIDChangedBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FDEA4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneWithIDChangedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordZoneWithIDChangedBlock;
    self->_recordZoneWithIDChangedBlock = v9;
LABEL_9:
  }
}

- (void)recordZoneWithIDChangedBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FE0A0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneWithIDChangedBlock);
  }

  return v6;
}

- (void)setRecordZoneWithIDWasDeletedBlock:(void *)recordZoneWithIDWasDeletedBlock
{
  v6 = recordZoneWithIDWasDeletedBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FE230;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneWithIDWasDeletedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordZoneWithIDWasDeletedBlock;
    self->_recordZoneWithIDWasDeletedBlock = v9;
LABEL_9:
  }
}

- (void)recordZoneWithIDWasDeletedBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FE42C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneWithIDWasDeletedBlock);
  }

  return v6;
}

- (void)setRecordZoneWithIDWasPurgedBlock:(void *)recordZoneWithIDWasPurgedBlock
{
  v6 = recordZoneWithIDWasPurgedBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FE5BC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneWithIDWasPurgedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordZoneWithIDWasPurgedBlock;
    self->_recordZoneWithIDWasPurgedBlock = v9;
LABEL_9:
  }
}

- (void)recordZoneWithIDWasPurgedBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FE7B8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneWithIDWasPurgedBlock);
  }

  return v6;
}

- (void)setChangeTokenUpdatedBlock:(void *)changeTokenUpdatedBlock
{
  v6 = changeTokenUpdatedBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FE948;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_changeTokenUpdatedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_changeTokenUpdatedBlock;
    self->_changeTokenUpdatedBlock = v9;
LABEL_9:
  }
}

- (void)setFetchDatabaseChangesCompletionBlock:(void *)fetchDatabaseChangesCompletionBlock
{
  v6 = fetchDatabaseChangesCompletionBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FEB3C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_fetchDatabaseChangesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_fetchDatabaseChangesCompletionBlock;
    self->_fetchDatabaseChangesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:(void *)recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock
{
  v6 = recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FED30;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock;
    self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock = v9;
LABEL_9:
  }
}

- (void)recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FEF2C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock);
  }

  return v6;
}

- (void)setHierarchicalRecordZoneWithIDChangedBlock:(id)block
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
    v12[2] = sub_1885FF0BC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    hierarchicalRecordZoneWithIDChangedBlock = v13;
    goto LABEL_9;
  }

  if (self->_hierarchicalRecordZoneWithIDChangedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    hierarchicalRecordZoneWithIDChangedBlock = self->_hierarchicalRecordZoneWithIDChangedBlock;
    self->_hierarchicalRecordZoneWithIDChangedBlock = v9;
LABEL_9:
  }
}

- (id)hierarchicalRecordZoneWithIDChangedBlock
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
    v13 = sub_1883EDF40;
    v14 = sub_1883EF6FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FF2B8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_hierarchicalRecordZoneWithIDChangedBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_previousServerChangeToken(self, v5, v6);
  objc_msgSend_setPreviousServerChangeToken_(infoCopy, v8, v7);

  v11 = objc_msgSend_resultsLimit(self, v9, v10);
  objc_msgSend_setResultsLimit_(infoCopy, v12, v11);
  AllChanges = objc_msgSend_fetchAllChanges(self, v13, v14);
  objc_msgSend_setFetchAllChanges_(infoCopy, v16, AllChanges);
  v17.receiver = self;
  v17.super_class = CKFetchDatabaseChangesOperation;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = CKFetchDatabaseChangesOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v17 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_previousServerChangeToken(infoCopy, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setPreviousServerChangeToken_(self, v8, v7);

  v11 = objc_msgSend_resultsLimit(infoCopy, v9, v10);
  objc_msgSend_setResultsLimit_(self, v12, v11);
  AllChanges = objc_msgSend_fetchAllChanges(infoCopy, v13, v14);

  objc_msgSend_setFetchAllChanges_(self, v16, AllChanges);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v20.receiver = self;
  v20.super_class = CKFetchDatabaseChangesOperation;
  if ([(CKOperation *)&v20 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordZoneWithIDChangedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordZoneWithIDWasDeletedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_fetchDatabaseChangesCompletionBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v17 = objc_msgSend_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock(self, v12, v13);
        if (v17)
        {
          v5 = 1;
        }

        else
        {
          v18 = objc_msgSend_hierarchicalRecordZoneWithIDChangedBlock(self, v15, v16);
          v5 = v18 != 0;
        }
      }
    }
  }

  return v5;
}

- (void)handleChangeForRecordZoneID:(id)d parentZoneID:(id)iD
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
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
      v50 = 138412290;
      v51 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_EVENT, v21, "CKFetchDatabaseChangesOperation", "Record zone %@ changed", &v50, 0xCu);
    }
  }

  v22 = objc_msgSend_zoneIDsForMetrics(self, v10, v11);
  objc_msgSend_addObject_(v22, v23, dCopy);

  v26 = objc_msgSend_hierarchicalRecordZoneWithIDChangedBlock_wrapper(self, v24, v25);
  v29 = v26;
  if (v26)
  {
    v30 = _Block_copy(v26);
  }

  else
  {
    v31 = objc_msgSend_hierarchicalRecordZoneWithIDChangedBlock(self, v27, v28);
    v30 = _Block_copy(v31);
  }

  v34 = objc_msgSend_recordZoneWithIDChangedBlock_wrapper(self, v32, v33);
  v37 = v34;
  if (v34)
  {
    v38 = _Block_copy(v34);
  }

  else
  {
    v39 = objc_msgSend_recordZoneWithIDChangedBlock(self, v35, v36);
    v38 = _Block_copy(v39);
  }

  if (v30)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v40 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v42 = v40;
      v45 = objc_msgSend_operationID(self, v43, v44);
      v50 = 138543874;
      v51 = v45;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = iDCopy;
      _os_log_debug_impl(&dword_1883EA000, v42, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a hierarchical changed zone with ID %@ with parent zone ID %@", &v50, 0x20u);
    }

    v30[2](v30, dCopy, iDCopy);
  }

  else if (v38)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v41 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v46 = v41;
      v49 = objc_msgSend_operationID(self, v47, v48);
      v50 = 138543618;
      v51 = v49;
      v52 = 2112;
      v53 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a changed zone with ID %@", &v50, 0x16u);
    }

    v38[2](v38, dCopy);
  }
}

- (void)handleDeleteForRecordZoneID:(id)d
{
  v38 = *MEMORY[0x1E69E9840];
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
      v34 = 138412290;
      v35 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchDatabaseChangesOperation", "Record zone %@ deleted", &v34, 0xCu);
    }
  }

  v19 = objc_msgSend_zoneIDsForMetrics(self, v7, v8);
  objc_msgSend_addObject_(v19, v20, dCopy);

  v23 = objc_msgSend_recordZoneWithIDWasDeletedBlock_wrapper(self, v21, v22);
  v26 = v23;
  if (v23)
  {
    v27 = _Block_copy(v23);
  }

  else
  {
    v28 = objc_msgSend_recordZoneWithIDWasDeletedBlock(self, v24, v25);
    v27 = _Block_copy(v28);
  }

  if (v27)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v29 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v30 = v29;
      v33 = objc_msgSend_operationID(self, v31, v32);
      v34 = 138543618;
      v35 = v33;
      v36 = 2112;
      v37 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a deleted zone with ID %@", &v34, 0x16u);
    }

    v27[2](v27, dCopy);
  }
}

- (void)handlePurgeForRecordZoneID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
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
      v50 = 138412290;
      v51 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchDatabaseChangesOperation", "Record zone %@ purged", &v50, 0xCu);
    }
  }

  v19 = objc_msgSend_zoneIDsForMetrics(self, v7, v8);
  objc_msgSend_addObject_(v19, v20, dCopy);

  v23 = objc_msgSend_recordZoneWithIDWasPurgedBlock_wrapper(self, v21, v22);
  v26 = v23;
  if (v23)
  {
    v27 = _Block_copy(v23);
  }

  else
  {
    v28 = objc_msgSend_recordZoneWithIDWasPurgedBlock(self, v24, v25);
    v27 = _Block_copy(v28);
  }

  v31 = objc_msgSend_recordZoneWithIDWasDeletedBlock_wrapper(self, v29, v30);
  v34 = v31;
  if (v31)
  {
    v35 = _Block_copy(v31);
  }

  else
  {
    v36 = objc_msgSend_recordZoneWithIDWasDeletedBlock(self, v32, v33);
    v35 = _Block_copy(v36);
  }

  if (v27)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v37 = ck_log_facility_ck;
    v38 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG);
    v39 = v27;
    if (v38)
    {
      v40 = v37;
      v43 = objc_msgSend_operationID(self, v41, v42);
      v50 = 138543618;
      v51 = v43;
      v52 = 2112;
      v53 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v40, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a purged zone with ID %@", &v50, 0x16u);

      v39 = v27;
    }

LABEL_28:
    v39[2](v39, dCopy);
    goto LABEL_29;
  }

  if (v35)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v44 = ck_log_facility_ck;
    v45 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG);
    v39 = v35;
    if (v45)
    {
      v46 = v44;
      v49 = objc_msgSend_operationID(self, v47, v48);
      v50 = 138543618;
      v51 = v49;
      v52 = 2112;
      v53 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "Operation %{public}@ making a delete callback about a purged zone with ID %@", &v50, 0x16u);

      v39 = v35;
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (void)handleEncryptedDataResetForRecordZoneID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
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
      v50 = 138412290;
      v51 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchDatabaseChangesOperation", "Record zone %@ encrypted data reset", &v50, 0xCu);
    }
  }

  v19 = objc_msgSend_zoneIDsForMetrics(self, v7, v8);
  objc_msgSend_addObject_(v19, v20, dCopy);

  v23 = objc_msgSend_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock_wrapper(self, v21, v22);
  v26 = v23;
  if (v23)
  {
    v27 = _Block_copy(v23);
  }

  else
  {
    v28 = objc_msgSend_recordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock(self, v24, v25);
    v27 = _Block_copy(v28);
  }

  v31 = objc_msgSend_recordZoneWithIDWasDeletedBlock_wrapper(self, v29, v30);
  v34 = v31;
  if (v31)
  {
    v35 = _Block_copy(v31);
  }

  else
  {
    v36 = objc_msgSend_recordZoneWithIDWasDeletedBlock(self, v32, v33);
    v35 = _Block_copy(v36);
  }

  if (v27)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v37 = ck_log_facility_ck;
    v38 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG);
    v39 = v27;
    if (v38)
    {
      v40 = v37;
      v43 = objc_msgSend_operationID(self, v41, v42);
      v50 = 138543618;
      v51 = v43;
      v52 = 2112;
      v53 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v40, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a zone deleted due to encrypted data reset with ID %@", &v50, 0x16u);

      v39 = v27;
    }

LABEL_28:
    v39[2](v39, dCopy);
    goto LABEL_29;
  }

  if (v35)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v44 = ck_log_facility_ck;
    v45 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG);
    v39 = v35;
    if (v45)
    {
      v46 = v44;
      v49 = objc_msgSend_operationID(self, v47, v48);
      v50 = 138543618;
      v51 = v49;
      v52 = 2112;
      v53 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "Operation %{public}@ making a delete callback about a zone deleted due to encrypted data reset with ID %@", &v50, 0x16u);

      v39 = v35;
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (void)handleChangeSetCompletionWithServerChangeToken:(id)token databaseChangesStatus:(int64_t)status error:(id)error reply:(id)reply
{
  v69 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  replyCopy = reply;
  v14 = objc_msgSend_CKClientSuitableError(error, v12, v13);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v16 = signpost;

  if (v14)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    if (self)
    {
      v19 = self->super.super._signpost;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v23 = objc_msgSend_log(v20, v21, v22);

    if (self)
    {
      v24 = self->super.super._signpost;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v28 = objc_msgSend_identifier(v25, v26, v27);

    if ((v28 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
    {
      goto LABEL_21;
    }

    *v68 = 138412546;
    *&v68[4] = tokenCopy;
    *&v68[12] = 2112;
    *&v68[14] = v14;
    v29 = "Server change token updated to %@ with error: %@";
    v30 = v23;
    v31 = v28;
    v32 = 22;
    goto LABEL_20;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v33 = self->super.super._signpost;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  v23 = objc_msgSend_log(v34, v35, v36);

  if (self)
  {
    v37 = self->super.super._signpost;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v41 = objc_msgSend_identifier(v38, v39, v40);

  if ((v41 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v68 = 138412290;
    *&v68[4] = tokenCopy;
    v29 = "Server change token updated to %@";
    v30 = v23;
    v31 = v41;
    v32 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v30, OS_SIGNPOST_EVENT, v31, "CKFetchDatabaseChangesOperation", v29, v68, v32);
  }

LABEL_21:

LABEL_22:
  if (status != -1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v42 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v57 = v42;
      v60 = objc_msgSend_operationID(self, v58, v59);
      *v68 = 138543618;
      *&v68[4] = v60;
      *&v68[12] = 2048;
      *&v68[14] = status;
      _os_log_debug_impl(&dword_1883EA000, v57, OS_LOG_TYPE_DEBUG, "Operation %{public}@ updating databaseChangesStatus to %ld", v68, 0x16u);
    }

    objc_msgSend_setStatus_(self, v43, status, *v68, *&v68[8], v69);
  }

  if (tokenCopy)
  {
    objc_msgSend_setServerChangeToken_(self, v17, tokenCopy);
    v46 = objc_msgSend_changeTokenUpdatedBlock(self, v44, v45);

    if (v46)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v47 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v61 = v47;
        v64 = objc_msgSend_operationID(self, v62, v63);
        *v68 = 138543618;
        *&v68[4] = v64;
        *&v68[12] = 2114;
        *&v68[14] = tokenCopy;
        _os_log_debug_impl(&dword_1883EA000, v61, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a server change token %{public}@", v68, 0x16u);
      }

      v50 = objc_msgSend_changeTokenUpdatedBlock(self, v48, v49, *v68, *&v68[8]);
      v50[2](v50, tokenCopy);
      goto LABEL_35;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v51 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v50 = v51;
      v67 = objc_msgSend_operationID(self, v65, v66);
      *v68 = 138543618;
      *&v68[4] = v67;
      *&v68[12] = 2114;
      *&v68[14] = tokenCopy;
      _os_log_debug_impl(&dword_1883EA000, v50, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received a server change token (%{public}@) but no changeTokenUpdatedBlock has been set.", v68, 0x16u);

LABEL_35:
    }
  }

  if (__sTestOverridesAvailable == 1 && (objc_msgSend_unitTestOverrides(self, v17, v18), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v52, v53, @"FailMetasyncOperationDueToClientReturnedCancellationError"), v54 = objc_claimAutoreleasedReturnValue(), v54, v52, v54))
  {
    v56 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v55, @"CKInternalErrorDomain", 1, @"Cancelling operation for tests");
  }

  else
  {
    v56 = 0;
  }

  replyCopy[2](replyCopy, v56);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v84 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchDatabaseChangesOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_zoneIDsForMetrics(self, v7, v8);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (v22)
  {
    v25 = objc_msgSend_zoneIDsForMetrics(self, v23, v24);
    v27 = objc_msgSend_zoneIDsToZoneNamesString_(self, v26, v25);
    v30 = objc_msgSend_operationMetric(self, v28, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v30, v31, v27, @"zoneNames");
  }

  v32 = objc_msgSend_fetchDatabaseChangesCompletionBlock_wrapper(self, v23, v24);
  v35 = v32;
  if (v32)
  {
    v36 = _Block_copy(v32);
  }

  else
  {
    v37 = objc_msgSend_fetchDatabaseChangesCompletionBlock(self, v33, v34);
    v36 = _Block_copy(v37);
  }

  if (v36)
  {
    v40 = objc_msgSend_CKClientSuitableError(errorCopy, v38, v39);
    if (v40)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v41 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v66 = v41;
        v69 = objc_msgSend_operationID(self, v67, v68);
        *buf = 138543618;
        v79 = v69;
        v80 = 2112;
        v81 = v40;
        _os_log_debug_impl(&dword_1883EA000, v66, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed - error:%@", buf, 0x16u);
      }

      (*(v36 + 2))(v36, 0, 0, v40);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v54 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v70 = v54;
        v73 = objc_msgSend_operationID(self, v71, v72);
        v76 = objc_msgSend_serverChangeToken(self, v74, v75);
        *buf = 138543618;
        v79 = v73;
        v80 = 2114;
        v81 = v76;
        _os_log_debug_impl(&dword_1883EA000, v70, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed - server-change-token:%{public}@", buf, 0x16u);
      }

      v57 = objc_msgSend_serverChangeToken(self, v55, v56);
      v60 = objc_msgSend_status(self, v58, v59) == 1;
      (*(v36 + 2))(v36, v57, v60, 0);
    }

    objc_msgSend_setFetchDatabaseChangesCompletionBlock_(self, v42, 0);
    goto LABEL_34;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v43 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v40 = v43;
    v47 = objc_msgSend_operationID(self, v45, v46);
    v50 = objc_msgSend_serverChangeToken(self, v48, v49);
    v53 = objc_msgSend_CKClientSuitableError(errorCopy, v51, v52);
    *buf = 138543874;
    v79 = v47;
    v80 = 2114;
    v81 = v50;
    v82 = 2112;
    v83 = v53;
    _os_log_debug_impl(&dword_1883EA000, v40, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no fetchDatabaseChangesCompletionBlock - server-change-token:%{public}@, error:%@", buf, 0x20u);

LABEL_34:
  }

  objc_msgSend_setRecordZoneWithIDChangedBlock_(self, v44, 0);
  objc_msgSend_setRecordZoneWithIDWasDeletedBlock_(self, v61, 0);
  objc_msgSend_setRecordZoneWithIDWasPurgedBlock_(self, v62, 0);
  objc_msgSend_setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock_(self, v63, 0);
  objc_msgSend_setChangeTokenUpdatedBlock_(self, v64, 0);
  objc_msgSend_setHierarchicalRecordZoneWithIDChangedBlock_(self, v65, 0);
  v77.receiver = self;
  v77.super_class = CKFetchDatabaseChangesOperation;
  [(CKOperation *)&v77 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchDatabaseChangesOperation", "Error=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleChangeSetCompletionWithServerChangeToken_databaseChangesStatus_error_reply_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchDatabaseChangesOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end