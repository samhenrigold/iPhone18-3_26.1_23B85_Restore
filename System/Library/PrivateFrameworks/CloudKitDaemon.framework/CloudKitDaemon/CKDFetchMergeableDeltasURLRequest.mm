@interface CKDFetchMergeableDeltasURLRequest
- (CKDFetchMergeableDeltasURLRequest)initWithOperation:(id)operation mergeableValueIDs:(id)ds previousContinuationTokens:(id)tokens;
- (id)anonymousUserIDForHTTPHeader;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchMergeableDeltasURLRequest

- (CKDFetchMergeableDeltasURLRequest)initWithOperation:(id)operation mergeableValueIDs:(id)ds previousContinuationTokens:(id)tokens
{
  dsCopy = ds;
  tokensCopy = tokens;
  v24.receiver = self;
  v24.super_class = CKDFetchMergeableDeltasURLRequest;
  v12 = [(CKDURLRequest *)&v24 initWithOperation:operation];
  if (v12)
  {
    v13 = objc_msgSend_copy(dsCopy, v10, v11);
    mergeableValueIDs = v12->_mergeableValueIDs;
    v12->_mergeableValueIDs = v13;

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
    mergeableValueIDsByRequestID = v12->_mergeableValueIDsByRequestID;
    v12->_mergeableValueIDsByRequestID = v17;

    v21 = objc_msgSend_copy(tokensCopy, v19, v20);
    previousContinuationTokens = v12->_previousContinuationTokens;
    v12->_previousContinuationTokens = v21;
  }

  return v12;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDFetchMergeableDeltasURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_mergeableValueIDs(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"mvIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6);
  objc_msgSend_setFetchMergeableValueIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchMergeableDeltasURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
}

- (id)zoneIDsToLock
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_mergeableValueIDs(self, v4, v5);
  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385E440);
  objc_msgSend_addObjectsFromArray_(v3, v9, v8);

  v12 = objc_msgSend_allObjects(v3, v10, v11);

  return v12;
}

- (id)requestOperationClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

- (id)anonymousUserIDForHTTPHeader
{
  v3 = objc_msgSend_zoneIDsToLock(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);
  v9 = objc_msgSend_anonymousCKUserID(v6, v7, v8);

  return v9;
}

- (id)generateRequestOperations
{
  v4 = objc_msgSend_mergeableValueIDs(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253C2AB0;
  v8[3] = &unk_27854D3C8;
  v8[4] = self;
  v6 = objc_msgSend_CKCompactMap_(v4, v5, v8);

  return v6;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v74 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_msgSend_mergeableValueIDsByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(objectCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!v16)
  {
    v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v58, a2, self, @"CKDFetchMergeableDeltasURLRequest.m", 119, @"Expected non-nil mergeable ID for response %@", objectCopy);
  }

  v19 = objc_opt_new();
  if (objc_msgSend_hasMergeableDeltaRetrieveResponse(objectCopy, v20, v21))
  {
    v61 = objectCopy;
    v24 = objc_msgSend_mergeableDeltaRetrieveResponse(objectCopy, v22, v23);
    objc_msgSend_continuation(v24, v25, v26);
    v60 = v59 = v24;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = objc_msgSend_deltas(v24, v27, v28);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v65, v73, 16);
    if (v30)
    {
      v33 = v30;
      v34 = 0;
      v35 = *v66;
      v62 = *MEMORY[0x277CBC120];
      do
      {
        v36 = 0;
        do
        {
          if (*v66 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v65 + 1) + 8 * v36);
          v38 = objc_msgSend_translator(self, v31, v32);
          v64 = v34;
          v40 = objc_msgSend_mergeableDeltaFromPDelta_valueID_error_(v38, v39, v37, v16, &v64);
          v41 = v64;

          if (v40)
          {
            objc_msgSend_addObject_(v19, v42, v40);
          }

          else
          {
            if (!v41)
            {
              v41 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v42, v62, 1000, @"Failed to load fetched delta");
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v43 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v70 = v16;
              v71 = 2112;
              v72 = v41;
              _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Failed to load fetched delta for mergeable %@: %@", buf, 0x16u);
            }
          }

          v34 = v41;

          ++v36;
        }

        while (v33 != v36);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v65, v73, 16);
      }

      while (v33);
    }

    else
    {
      v34 = 0;
    }

    v47 = v60;
    objectCopy = v61;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22506F000, v44, OS_LOG_TYPE_FAULT, "Expected MergeableDeltaRetrieveResponse for MergeableDeltaRetrieveRequest", buf, 2u);
    }

    v47 = 0;
    v34 = 0;
  }

  v48 = objc_msgSend_deltasFetchedBlock(self, v45, v46);

  if (v48)
  {
    v51 = objc_msgSend_deltasFetchedBlock(self, v49, v50);
    v54 = objc_msgSend_result(objectCopy, v52, v53);
    (v51)[2](v51, v16, v19, v47, v54);
  }

  v55 = v34;

  return v34;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v43 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v33 = v6;
    v36 = objc_msgSend_requestUUID(self, v34, v35);
    *buf = 138412546;
    v40 = v36;
    v41 = 2112;
    v42 = failureCopy;
    _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Node failure in atom sync request %@: %@", buf, 0x16u);
  }

  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_mergeableValueIDsByRequestID(self, v13, v14);
    v18 = objc_msgSend_response(failureCopy, v16, v17);
    v21 = objc_msgSend_operationUUID(v18, v19, v20);
    v23 = objc_msgSend_objectForKeyedSubscript_(v15, v22, v21);

    if (!v23)
    {
      v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDFetchMergeableDeltasURLRequest.m", 158, @"Expected non-nil mergeable ID for response %@", failureCopy);
    }

    v26 = objc_msgSend_deltasFetchedBlock(self, v24, v25);

    if (v26)
    {
      v29 = objc_msgSend_deltasFetchedBlock(self, v27, v28);
      v32 = objc_msgSend_result(failureCopy, v30, v31);
      (v29)[2](v29, v23, 0, 0, v32);
    }
  }

  else
  {
    v23 = 0;
  }
}

@end