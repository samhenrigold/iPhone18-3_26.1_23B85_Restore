@interface CKFetchShareMetadataOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchShareMetadataOperation)init;
- (CKFetchShareMetadataOperation)initWithShareURLs:(NSArray *)shareURLs;
- (CKFetchShareMetadataOperation)initWithShareURLs:(id)ls invitationTokensByShareURL:(id)l;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fetchShareMetadataCompletionBlock;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleShareMetadataFetchForURL:(id)l shareMetadata:(id)metadata error:(id)error;
- (void)perShareMetadataBlock;
- (void)setFetchShareMetadataCompletionBlock:(void *)fetchShareMetadataCompletionBlock;
- (void)setFetchShareMetadataCompletionBlockIVar:(id)var;
- (void)setPerShareMetadataBlock:(void *)perShareMetadataBlock;
@end

@implementation CKFetchShareMetadataOperation

- (CKFetchShareMetadataOperation)init
{
  v6.receiver = self;
  v6.super_class = CKFetchShareMetadataOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorsByURL = v2->_errorsByURL;
    v2->_errorsByURL = v3;
  }

  return v2;
}

- (CKFetchShareMetadataOperation)initWithShareURLs:(NSArray *)shareURLs
{
  v4 = shareURLs;
  v26 = 0;
  v5 = _CKCheckArgument("shareURLs", v4, 0, 0, 0, &v26);
  v6 = v26;
  if ((v5 & 1) == 0)
  {
    v15 = v6;
    v16 = [CKException alloc];
    v19 = objc_msgSend_code(v15, v17, v18);
    v22 = objc_msgSend_localizedDescription(v15, v20, v21);
    v24 = objc_msgSend_initWithCode_format_(v16, v23, v19, @"%@", v22);
    v25 = v24;

    objc_exception_throw(v24);
  }

  v11 = objc_msgSend_init(self, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_copy(v4, v9, v10);
    v13 = v11->_shareURLs;
    v11->_shareURLs = v12;
  }

  return v11;
}

- (CKFetchShareMetadataOperation)initWithShareURLs:(id)ls invitationTokensByShareURL:(id)l
{
  lCopy = l;
  v10 = objc_msgSend_initWithShareURLs_(self, v7, ls);
  if (v10)
  {
    v11 = objc_msgSend_copy(lCopy, v8, v9);
    shareInvitationTokensByShareURL = v10->_shareInvitationTokensByShareURL;
    v10->_shareInvitationTokensByShareURL = v11;
  }

  return v10;
}

- (void)setPerShareMetadataBlock:(void *)perShareMetadataBlock
{
  v6 = perShareMetadataBlock;
  if (__sTestOverridesAvailable == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885ED364;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perShareMetadataBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perShareMetadataBlock;
    self->_perShareMetadataBlock = v9;
LABEL_9:
  }
}

- (void)perShareMetadataBlock
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
    v13 = sub_1883EDD88;
    v14 = sub_1883EF6AC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885ED560;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perShareMetadataBlock);
  }

  return v6;
}

- (void)setFetchShareMetadataCompletionBlockIVar:(id)var
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
    v12[2] = sub_1885ED6F0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    fetchShareMetadataCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchShareMetadataCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    fetchShareMetadataCompletionBlock = self->_fetchShareMetadataCompletionBlock;
    self->_fetchShareMetadataCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchShareMetadataCompletionBlock
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
    v13 = sub_1883EDD88;
    v14 = sub_1883EF6AC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885ED8EC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchShareMetadataCompletionBlock);
  }

  return v6;
}

- (void)setFetchShareMetadataCompletionBlock:(void *)fetchShareMetadataCompletionBlock
{
  v4 = fetchShareMetadataCompletionBlock == 0;
  v7 = fetchShareMetadataCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setFetchShareMetadataCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_shareURLs(self, v5, v6);
  objc_msgSend_setShareURLsToFetch_(infoCopy, v8, v7);

  RootRecord = objc_msgSend_shouldFetchRootRecord(self, v9, v10);
  objc_msgSend_setShouldFetchRootRecord_(infoCopy, v12, RootRecord);
  v15 = objc_msgSend_rootRecordDesiredKeys(self, v13, v14);
  objc_msgSend_setRootRecordDesiredKeys_(infoCopy, v16, v15);

  v19 = objc_msgSend_shareInvitationTokensByShareURL(self, v17, v18);
  objc_msgSend_setShareInvitationTokensByShareURL_(infoCopy, v20, v19);

  v23 = objc_msgSend_overwriteContainerPCSServiceIfManatee(self, v21, v22);
  objc_msgSend_setOverwriteContainerPCSServiceIfManatee_(infoCopy, v24, v23);
  v27 = objc_msgSend_skipShareDecryption(self, v25, v26);
  objc_msgSend_setSkipShareDecryption_(infoCopy, v28, v27);
  v29.receiver = self;
  v29.super_class = CKFetchShareMetadataOperation;
  [(CKOperation *)&v29 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v29.receiver = self;
  v29.super_class = CKFetchShareMetadataOperation;
  infoCopy = info;
  [(CKOperation *)&v29 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_shareURLsToFetch(infoCopy, v5, v6, v29.receiver, v29.super_class);
  objc_msgSend_setShareURLs_(self, v8, v7);

  RootRecord = objc_msgSend_shouldFetchRootRecord(infoCopy, v9, v10);
  objc_msgSend_setShouldFetchRootRecord_(self, v12, RootRecord);
  v15 = objc_msgSend_rootRecordDesiredKeys(infoCopy, v13, v14);
  objc_msgSend_setRootRecordDesiredKeys_(self, v16, v15);

  v19 = objc_msgSend_shareInvitationTokensByShareURL(infoCopy, v17, v18);
  objc_msgSend_setShareInvitationTokensByShareURL_(self, v20, v19);

  v23 = objc_msgSend_overwriteContainerPCSServiceIfManatee(infoCopy, v21, v22);
  objc_msgSend_setOverwriteContainerPCSServiceIfManatee_(self, v24, v23);
  v27 = objc_msgSend_skipShareDecryption(infoCopy, v25, v26);

  objc_msgSend_setSkipShareDecryption_(self, v28, v27);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKFetchShareMetadataOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perShareMetadataBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_fetchShareMetadataCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  runCopy = run;
  v49 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_shareURLs(self, a2, run);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v9 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = objc_msgSend_shareURLs(self, v10, v11);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v44, v48, 16);
    if (v13)
    {
      v14 = v13;
      v15 = *v45;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (runCopy)
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v36, @"CKErrorDomain", 12, @"Unexpected share URL passed to %@: %@", v35, v17);
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        if (objc_msgSend_containsObject_(v9, v18, v17))
        {
          break;
        }

        objc_msgSend_addObject_(v9, v19, v17);
        v22 = objc_msgSend_shareInvitationTokensByShareURL(self, v20, v21);
        if (objc_msgSend_count(v22, v23, v24))
        {
          v27 = objc_msgSend_shareInvitationTokensByShareURL(self, v25, v26);
          v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v17);

          if (!v29)
          {
            if (runCopy)
            {
              v39 = objc_opt_class();
              v35 = NSStringFromClass(v39);
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v40, @"CKErrorDomain", 12, @"No sharing invitation token for URL %@ was passed to %@", v17, v35);
              *runCopy = LABEL_24:;
            }

            goto LABEL_25;
          }
        }

        else
        {
        }

        if (v14 == ++v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v44, v48, 16);
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }
      }

      if (runCopy)
      {
        v37 = objc_opt_class();
        v35 = NSStringFromClass(v37);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v38, @"CKErrorDomain", 12, @"URL %@ was passed to %@ twice", v17, v35);
        goto LABEL_24;
      }

LABEL_25:

      LOBYTE(runCopy) = 0;
      goto LABEL_26;
    }

LABEL_15:

    v43.receiver = self;
    v43.super_class = CKFetchShareMetadataOperation;
    LOBYTE(runCopy) = [(CKOperation *)&v43 CKOperationShouldRun:runCopy];
LABEL_26:
  }

  else if (runCopy)
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    *runCopy = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 12, @"No share URLs were passed to %@", v32);

    LOBYTE(runCopy) = 0;
  }

  return runCopy;
}

- (void)handleShareMetadataFetchForURL:(id)l shareMetadata:(id)metadata error:(id)error
{
  v68 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  errorCopy = error;
  v13 = objc_msgSend_CKClientSuitableError(errorCopy, v11, v12);
  if (self)
  {
    signpost = self->super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v15 = signpost;

  if (v13)
  {
    if (v15)
    {
      if (self)
      {
        v18 = self->super._signpost;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v22 = objc_msgSend_log(v19, v20, v21);

      if (self)
      {
        v23 = self->super._signpost;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v27 = objc_msgSend_identifier(v24, v25, v26);

      if ((v27 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
      {
        goto LABEL_21;
      }

      *v64 = 138412546;
      *&v64[4] = lCopy;
      *&v64[12] = 2112;
      *&v64[14] = v13;
      v28 = "Shared %@ fetched metadata with error: %@";
      v29 = v22;
      v30 = v27;
      v31 = 22;
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v29, OS_SIGNPOST_EVENT, v30, "CKFetchShareMetadataOperation", v28, v64, v31);
LABEL_21:
    }
  }

  else if (v15)
  {
    if (self)
    {
      v32 = self->super._signpost;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v22 = objc_msgSend_log(v33, v34, v35);

    if (self)
    {
      v36 = self->super._signpost;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v40 = objc_msgSend_identifier(v37, v38, v39);

    if ((v40 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
    {
      goto LABEL_21;
    }

    *v64 = 138412290;
    *&v64[4] = lCopy;
    v28 = "Shared %@ fetched metadata";
    v29 = v22;
    v30 = v40;
    v31 = 12;
    goto LABEL_20;
  }

  v41 = objc_msgSend_CKClientSuitableError(errorCopy, v16, v17, *v64, *&v64[8]);

  if (v41 && (objc_msgSend_canDropItemResultsEarly(self, v42, v43) & 1) == 0)
  {
    v44 = objc_msgSend_errorsByURL(self, v42, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v41, lCopy);
  }

  v46 = objc_msgSend_perShareMetadataBlock_wrapper(self, v42, v43);
  v49 = v46;
  if (v46)
  {
    v50 = _Block_copy(v46);
  }

  else
  {
    v51 = objc_msgSend_perShareMetadataBlock(self, v47, v48);
    v50 = _Block_copy(v51);
  }

  if (v50)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v52 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v54 = v52;
      v57 = objc_msgSend_operationID(self, v55, v56);
      v60 = objc_msgSend_share(metadataCopy, v58, v59);
      v63 = objc_msgSend_recordID(v60, v61, v62);
      *v64 = 138544130;
      *&v64[4] = v57;
      *&v64[12] = 2112;
      *&v64[14] = lCopy;
      *&v64[22] = 2112;
      v65 = v63;
      v66 = 2112;
      v67 = v41;
      _os_log_debug_impl(&dword_1883EA000, v54, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about fetched share metadata for URL %@ with ID %@: %@", v64, 0x2Au);
    }

    if (v41)
    {
      v53 = 0;
    }

    else
    {
      v53 = metadataCopy;
    }

    (v50)[2](v50, lCopy, v53, v41);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v56 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super._signpost;
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
      v9 = self->super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchShareMetadataOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_errorsByURL(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_errorsByURL(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to fetch some share info");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_fetchShareMetadataCompletionBlock_wrapper(self, v7, v8);
  v32 = v29;
  if (v29)
  {
    v33 = _Block_copy(v29);
  }

  else
  {
    v34 = objc_msgSend_fetchShareMetadataCompletionBlock(self, v30, v31);
    v33 = _Block_copy(v34);
  }

  if (v33)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v41 = v36;
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v46 = objc_msgSend_ckShortDescription(self, v44, v45);
      *buf = 138544130;
      v49 = v43;
      v50 = 2048;
      selfCopy = self;
      v52 = 2114;
      v53 = v46;
      v54 = 2112;
      v55 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v41, OS_LOG_TYPE_DEBUG, "Calling fetchShareMetadataCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v39 = objc_msgSend_CKClientSuitableError(errorCopy, v37, v38);
    v33[2](v33, v39);

    objc_msgSend_setFetchShareMetadataCompletionBlock_(self, v40, 0);
  }

  objc_msgSend_setPerShareMetadataBlock_(self, v35, 0);
  v47.receiver = self;
  v47.super_class = CKFetchShareMetadataOperation;
  [(CKOperation *)&v47 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)ckSignpostBegin
{
  v54 = *MEMORY[0x1E69E9840];
  if (self)
  {
    signpost = self->super._signpost;
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
      v5 = self->super._signpost;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v9 = objc_msgSend_log(v6, v7, v8);

    if (self)
    {
      v10 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchShareMetadataOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v42, 0x3Eu);
    }
  }
}

- (void)ckSignpostEndWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super._signpost;
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
      v7 = self->super._signpost;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v11 = objc_msgSend_log(v8, v9, v10);

    if (self)
    {
      v12 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchShareMetadataOperation", "Error=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-share-metadatas", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleShareMetadataFetchForURL_shareMetadata_error_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchShareMetadataOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end