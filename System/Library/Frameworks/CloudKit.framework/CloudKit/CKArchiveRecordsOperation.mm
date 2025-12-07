@interface CKArchiveRecordsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKArchiveRecordsOperation)init;
- (CKArchiveRecordsOperation)initWithRecordIDs:(id)ds;
- (id)activityCreate;
- (id)archiveRecordsCompletionBlock;
- (id)recordArchivedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleRecordArchivalForRecordID:(id)d error:(id)error;
- (void)setArchiveRecordsCompletionBlock:(id)block;
- (void)setRecordArchivedBlock:(id)block;
@end

@implementation CKArchiveRecordsOperation

- (CKArchiveRecordsOperation)init
{
  v6.receiver = self;
  v6.super_class = CKArchiveRecordsOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    perItemErrors = v2->_perItemErrors;
    v2->_perItemErrors = v3;
  }

  return v2;
}

- (CKArchiveRecordsOperation)initWithRecordIDs:(id)ds
{
  dsCopy = ds;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(dsCopy, v7, v8);
    recordIDs = v9->_recordIDs;
    v9->_recordIDs = v10;
  }

  return v9;
}

- (void)setRecordArchivedBlock:(id)block
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
    v12[2] = sub_1885BEBA0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordArchivedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordArchivedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordArchivedBlock = self->_recordArchivedBlock;
    self->_recordArchivedBlock = v9;
LABEL_9:
  }
}

- (id)recordArchivedBlock
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
    v13 = sub_1883EDAB8;
    v14 = sub_1883EF624;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885BED9C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordArchivedBlock);
  }

  return v6;
}

- (void)setArchiveRecordsCompletionBlock:(id)block
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
    v12[2] = sub_1885BEF2C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    archiveRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_archiveRecordsCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    archiveRecordsCompletionBlock = self->_archiveRecordsCompletionBlock;
    self->_archiveRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)archiveRecordsCompletionBlock
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
    v13 = sub_1883EDAB8;
    v14 = sub_1883EF624;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885BF128;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_archiveRecordsCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setRecordIDs_(infoCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKArchiveRecordsOperation;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKArchiveRecordsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordIDs(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setRecordIDs_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKArchiveRecordsOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordArchivedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_archiveRecordsCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordIDs(self, a2, run);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = objc_msgSend_recordIDs(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v28;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = objc_msgSend_zoneID(*(*(&v27 + 1) + 8 * v18), v14, v15);
          v21 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v20, v19, run);

          if (!v21)
          {

            return 0;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v26.receiver = self;
    v26.super_class = CKArchiveRecordsOperation;
    return [(CKDatabaseOperation *)&v26 CKOperationShouldRun:run];
  }

  else
  {
    if (run)
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 12, @"You must pass at least one record ID to %@", v24);
    }

    return 0;
  }
}

- (void)handleRecordArchivalForRecordID:(id)d error:(id)error
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  v10 = objc_msgSend_CKClientSuitableError(errorCopy, v8, v9);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v12 = signpost;

  if (v10)
  {
    if (v12)
    {
      if (self)
      {
        v15 = self->super.super._signpost;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v19 = objc_msgSend_log(v16, v17, v18);

      if (self)
      {
        v20 = self->super.super._signpost;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v24 = objc_msgSend_identifier(v21, v22, v23);

      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        v46 = 138412546;
        v47 = dCopy;
        v48 = 2112;
        v49 = v10;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v19, OS_SIGNPOST_EVENT, v24, "CKArchiveRecordsOperation", "Record %@ archived with error: %@", &v46, 0x16u);
      }
    }

    v25 = objc_msgSend_perItemErrors(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v10, dCopy);
LABEL_14:

    goto LABEL_15;
  }

  if (v12)
  {
    if (self)
    {
      v33 = self->super.super._signpost;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v25 = objc_msgSend_log(v34, v35, v36);

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

    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v46 = 138412290;
      v47 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v41, "CKArchiveRecordsOperation", "Record %@ archived", &v46, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
  v27 = objc_msgSend_recordArchivedBlock(self, v13, v14);

  if (v27)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v42 = v28;
      v45 = objc_msgSend_operationID(self, v43, v44);
      v46 = 138543618;
      v47 = v45;
      v48 = 2112;
      v49 = dCopy;
      _os_log_debug_impl(&dword_1883EA000, v42, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about an archived record with id %@", &v46, 0x16u);
    }

    v31 = objc_msgSend_recordArchivedBlock(self, v29, v30);
    (v31)[2](v31, dCopy, errorCopy);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v46 = 138412290;
    v47 = dCopy;
    _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Progress callback for record id %@ is done", &v46, 0xCu);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v90 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKArchiveRecordsOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_perItemErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24);
      v28 = objc_msgSend_perItemErrors(self, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v29, v28, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v30, @"CKInternalErrorDomain", 1011, v25, @"Couldn't archive some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v34 = objc_msgSend_recordIDs(self, v32, v33);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v79, v89, 16);
  if (v36)
  {
    v39 = v36;
    v40 = *v80;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v80 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = objc_msgSend_zoneID(*(*(&v79 + 1) + 8 * i), v37, v38);
        objc_msgSend_addObject_(v31, v43, v42);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v79, v89, 16);
    }

    while (v39);
  }

  if (objc_msgSend_count(v31, v44, v45))
  {
    v48 = objc_msgSend_zoneIDsToZoneNamesString_(self, v46, v31);
    v51 = objc_msgSend_operationMetric(self, v49, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v51, v52, v48, @"zoneNames");
  }

  v53 = objc_msgSend_archiveRecordsCompletionBlock(self, v46, v47);

  if (v53)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v54 = ck_log_facility_ck;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v70 = objc_msgSend_operationID(self, v55, v56);
      v71 = &stru_1EFA32970;
      if (errorCopy)
      {
        v72 = @" Error was: ";
      }

      else
      {
        v72 = &stru_1EFA32970;
      }

      if (errorCopy)
      {
        v71 = objc_msgSend_CKClientSuitableError(errorCopy, v68, v69);
      }

      *buf = 138543874;
      v84 = v70;
      v85 = 2112;
      v86 = v72;
      v87 = 2112;
      v88 = v71;
      _os_log_debug_impl(&dword_1883EA000, v54, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed. %@%@", buf, 0x20u);
      if (errorCopy)
      {
      }
    }

    v59 = objc_msgSend_archiveRecordsCompletionBlock(self, v57, v58);
    v62 = objc_msgSend_CKClientSuitableError(errorCopy, v60, v61);
    (v59)[2](v59, v62);

    objc_msgSend_setArchiveRecordsCompletionBlock_(self, v63, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v65 = ck_log_facility_ck;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v75 = objc_msgSend_operationID(self, v66, v67);
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

      *buf = 138543874;
      v84 = v75;
      v85 = 2112;
      v86 = v77;
      v87 = 2112;
      v88 = v76;
      _os_log_debug_impl(&dword_1883EA000, v65, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no archiveRecordsCompletionBlock was set.%@%@", buf, 0x20u);
      if (errorCopy)
      {
      }
    }
  }

  objc_msgSend_setRecordArchivedBlock_(self, v64, 0);
  v78.receiver = self;
  v78.super_class = CKArchiveRecordsOperation;
  [(CKOperation *)&v78 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKArchiveRecordsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v42, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKArchiveRecordsOperation", "Error=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/archive-records", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleRecordArchivalForRecordID_error_, 1, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKArchiveRecordsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end