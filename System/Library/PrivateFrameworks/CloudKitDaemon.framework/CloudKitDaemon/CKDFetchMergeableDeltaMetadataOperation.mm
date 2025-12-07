@interface CKDFetchMergeableDeltaMetadataOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDFetchMergeableDeltaMetadataOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)fetchMetadata;
- (void)fetchMetadataRecursivelyForMergeableValueIDs:(id)ds continuationTokens:(id)tokens completionHandler:(id)handler;
- (void)handleFetchedMetadatasForMergeableValueID:(id)d metadatas:(id)metadatas result:(id)result;
- (void)main;
@end

@implementation CKDFetchMergeableDeltaMetadataOperation

- (CKDFetchMergeableDeltaMetadataOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKDFetchMergeableDeltaMetadataOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_mergeableValueIDs(infoCopy, v7, v8);
    mergeableValueIDs = v9->_mergeableValueIDs;
    v9->_mergeableValueIDs = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-mergeable-delta-metadata", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v10 = objc_msgSend_error(self, v8, v9);
    objc_msgSend_finishWithError_(self, v11, v10);
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend_fetchMetadata(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetch Metadata";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchMergeableDeltaMetadataOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)main
{
  v4 = objc_msgSend_mergeableValueIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)fetchMetadata
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  objc_initWeak(&location, self);
  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251CAC54;
  v9[3] = &unk_278549250;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  objc_msgSend_fetchMetadataRecursivelyForMergeableValueIDs_continuationTokens_completionHandler_(self, v8, v7, 0, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fetchMetadataRecursivelyForMergeableValueIDs:(id)ds continuationTokens:(id)tokens completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  tokensCopy = tokens;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    *location = 138412546;
    *&location[4] = dsCopy;
    v38 = 2112;
    v39 = tokensCopy;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Will fetch delta metadata recursively for value IDs %@ with continuation tokens %@", location, 0x16u);
  }

  v12 = [CKDFetchMergeableDeltaMetadataURLRequest alloc];
  v14 = objc_msgSend_initWithOperation_mergeableValueIDs_continuationTokens_(v12, v13, self, dsCopy, tokensCopy);
  v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
  objc_initWeak(location, v14);
  objc_initWeak(&from, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2251CB1D0;
  v33[3] = &unk_278549278;
  objc_copyWeak(&v35, &from);
  v18 = v17;
  v34 = v18;
  objc_msgSend_setMetadataFetchedBlock_(v14, v19, v33);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2251CB3B0;
  v28[3] = &unk_2785492A0;
  objc_copyWeak(&v31, &from);
  v20 = v18;
  v29 = v20;
  v21 = handlerCopy;
  v30 = v21;
  objc_copyWeak(&v32, location);
  objc_msgSend_setCompletionBlock_(v14, v22, v28);
  objc_msgSend_setRequest_(self, v23, v14);
  v26 = objc_msgSend_container(self, v24, v25);
  objc_msgSend_performRequest_(v26, v27, v14);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

- (void)handleFetchedMetadatasForMergeableValueID:(id)d metadatas:(id)metadatas result:(id)result
{
  v101 = *MEMORY[0x277D85DE8];
  dCopy = d;
  metadatasCopy = metadatas;
  resultCopy = result;
  val = self;
  v12 = objc_msgSend_metadataFetchedBlock(self, v10, v11);

  if (v12)
  {
    if (objc_msgSend_code(resultCopy, v13, v14) == 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v72 = v15;
        *v97 = 134218242;
        *&v97[4] = objc_msgSend_count(metadatasCopy, v73, v74);
        *&v97[12] = 2112;
        *&v97[14] = dCopy;
        _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, "Successfully fetched %ld delta metadatas for value %@", v97, 0x16u);
      }

      v77 = objc_msgSend_recordID(dCopy, v16, v17);
      v75 = objc_msgSend_key(dCopy, v18, v19);
      if (v77 && v75)
      {
        *v97 = 0;
        *&v97[8] = v97;
        *&v97[16] = 0x3032000000;
        v98 = sub_225074010;
        v99 = sub_225073594;
        v100 = 0;
        v20 = dispatch_group_create();
        objc_initWeak(&location, self);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v21 = metadatasCopy;
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v89, v96, 16);
        if (v25)
        {
          v26 = *v90;
          do
          {
            v27 = 0;
            do
            {
              if (*v90 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v89 + 1) + 8 * v27);
              if (objc_msgSend_isEncrypted(dCopy, v23, v24) && objc_msgSend_needsDecryption(v28, v23, v24))
              {
                dispatch_group_enter(v20);
                v31 = objc_msgSend_stateTransitionGroup(val, v29, v30);
                dispatch_group_enter(v31);

                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v32 = *MEMORY[0x277CBC840];
                if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v95 = v28;
                  _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Need to decrypt timestamps for metadata %@", buf, 0xCu);
                }

                v35 = objc_msgSend_container(val, v33, v34);
                v38 = objc_msgSend_pcsCache(v35, v36, v37);
                v83[0] = MEMORY[0x277D85DD0];
                v83[1] = 3221225472;
                v83[2] = sub_2251CBE7C;
                v83[3] = &unk_2785492C8;
                objc_copyWeak(&v88, &location);
                v87 = v97;
                v84 = dCopy;
                v85 = v28;
                v86 = v20;
                objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v38, v39, v77, val, 0, v83);

                objc_destroyWeak(&v88);
              }

              ++v27;
            }

            while (v25 != v27);
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v89, v96, 16);
          }

          while (v25);
        }

        if (*(*&v97[8] + 40))
        {

          v21 = 0;
        }

        v42 = objc_msgSend_callbackQueue(val, v40, v41);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251CC1E4;
        block[3] = &unk_2785492F0;
        block[4] = val;
        v80 = dCopy;
        metadatasCopy = v21;
        v81 = metadatasCopy;
        v82 = v97;
        dispatch_group_notify(v20, v42, block);

        objc_destroyWeak(&location);
        _Block_object_dispose(v97, 8);
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v66 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
        {
          *v97 = 138412290;
          *&v97[4] = dCopy;
          _os_log_error_impl(&dword_22506F000, v66, OS_LOG_TYPE_ERROR, "No record ID for delta metadata on value ID %@", v97, 0xCu);
        }

        v68 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v67, *MEMORY[0x277CBC120], 1017, 0, @"Must specify a record ID and field name for value %@", dCopy);
        v71 = objc_msgSend_metadataFetchedBlock(self, v69, v70);
        (v71)[2](v71, dCopy, 0, v68);
      }
    }

    else
    {
      v48 = sub_2253962A4(resultCopy);
      v51 = objc_msgSend_request(self, v49, v50);
      v52 = sub_225395734(v51, resultCopy);

      v53 = MEMORY[0x277CBC560];
      v56 = objc_msgSend_error(resultCopy, v54, v55);
      v59 = objc_msgSend_errorDescription(v56, v57, v58);
      v61 = objc_msgSend_errorWithDomain_code_userInfo_format_(v53, v60, *MEMORY[0x277CBC120], v48, v52, @"Error fetching delta for value %@ from server: %@", dCopy, v59);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v62 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        *v97 = 138412546;
        *&v97[4] = dCopy;
        *&v97[12] = 2112;
        *&v97[14] = v61;
        _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Failed to fetch metadatas for value %@: %@", v97, 0x16u);
      }

      v65 = objc_msgSend_metadataFetchedBlock(self, v63, v64);
      (v65)[2](v65, dCopy, 0, v61);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      v47 = objc_msgSend_operationID(self, v45, v46);
      *v97 = 138412290;
      *&v97[4] = v47;
      _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "No per-valueID fetch block for operation %@", v97, 0xCu);
    }
  }
}

@end