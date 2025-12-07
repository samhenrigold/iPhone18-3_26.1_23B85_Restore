@interface CKDReplaceMergeableDeltasURLRequest
+ (id)requestOperationsForRequest:(id)request replaceDeltasRequests:(id)requests ignoreMissingDeltas:(BOOL)deltas error:(id *)error;
- (CKDReplaceMergeableDeltasURLRequest)initWithOperation:(id)operation replaceDeltasRequests:(id)requests ignoreMissingDeltas:(BOOL)deltas;
- (id)anonymousUserIDForHTTPHeader;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDReplaceMergeableDeltasURLRequest

- (CKDReplaceMergeableDeltasURLRequest)initWithOperation:(id)operation replaceDeltasRequests:(id)requests ignoreMissingDeltas:(BOOL)deltas
{
  requestsCopy = requests;
  v17.receiver = self;
  v17.super_class = CKDReplaceMergeableDeltasURLRequest;
  v10 = [(CKDURLRequest *)&v17 initWithOperation:operation];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_replaceDeltasRequests, requests);
    v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
    replacementRequestsByRequestID = v11->_replacementRequestsByRequestID;
    v11->_replacementRequestsByRequestID = v14;

    v11->_ignoreMissingDeltas = deltas;
  }

  return v11;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDReplaceMergeableDeltasURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_replaceDeltasRequests(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"requests");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_replaceDeltasRequests(self, v5, v6);
  v9 = objc_msgSend_CKCompactMap_(v7, v8, &unk_28385E460);

  objc_msgSend_setModifyMergeableValueIDs_(propertiesCopy, v10, v9);
  objc_msgSend_setDeleteMergeableValueIDs_(propertiesCopy, v11, v9);
  v12.receiver = self;
  v12.super_class = CKDReplaceMergeableDeltasURLRequest;
  [(CKDURLRequest *)&v12 fillOutRequestProperties:propertiesCopy];
}

- (id)zoneIDsToLock
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_replaceDeltasRequests(self, v4, v5);
  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385E480);
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
  v3 = objc_opt_class();
  v6 = objc_msgSend_replaceDeltasRequests(self, v4, v5);
  v9 = objc_msgSend_ignoreMissingDeltas(self, v7, v8);
  v36 = 0;
  v11 = objc_msgSend_requestOperationsForRequest_replaceDeltasRequests_ignoreMissingDeltas_error_(v3, v10, self, v6, v9, &v36);
  v12 = v36;

  if (!v11)
  {
    objc_msgSend_finishWithError_(self, v13, v12);
  }

  if (objc_msgSend_count(v11, v13, v14))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_replaceDeltasRequests(self, v15, v16);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v17);

      v22 = objc_msgSend_objectAtIndexedSubscript_(v11, v21, v17);
      v25 = objc_msgSend_replacementRequestsByRequestID(self, v23, v24);
      v28 = objc_msgSend_request(v22, v26, v27);
      v31 = objc_msgSend_operationUUID(v28, v29, v30);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v32, v20, v31);

      ++v17;
    }

    while (v17 < objc_msgSend_count(v11, v33, v34));
  }

  return v11;
}

+ (id)requestOperationsForRequest:(id)request replaceDeltasRequests:(id)requests ignoreMissingDeltas:(BOOL)deltas error:(id *)error
{
  deltasCopy = deltas;
  v123 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  requestsCopy = requests;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = requestsCopy;
  v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v115, v122, 16);
  if (!v107)
  {
    v81 = 0;
    goto LABEL_32;
  }

  errorCopy = error;
  v104 = v12;
  v105 = *v116;
  while (2)
  {
    v15 = 0;
    do
    {
      if (*v116 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v108 = v15;
      v16 = *(*(&v115 + 1) + 8 * v15);
      v17 = objc_msgSend_operationRequestWithType_(requestCopy, v14, 313);
      v109 = v17;
      if (objc_msgSend_requiresCKAnonymousUserIDs(requestCopy, v18, v19))
      {
        v22 = objc_msgSend_valueID(v16, v20, v21);
        v25 = objc_msgSend_zoneID(v22, v23, v24);
        v28 = objc_msgSend_anonymousCKUserID(v25, v26, v27);

        if (!v28)
        {
          v45 = objc_opt_new();
          v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v87, @"An anonymousCKUserID is required to replace deltas for %@ when using anonymous to server share participants", v16);
          objc_msgSend_setObject_forKeyedSubscript_(v45, v89, v88, *MEMORY[0x277CCA450]);
          v92 = objc_msgSend_operation(requestCopy, v90, v91);
          v95 = objc_msgSend_topmostParentOperation(v92, v93, v94);
          v98 = objc_msgSend_operationID(v95, v96, v97);

          if (v98)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v45, v99, v98, *MEMORY[0x277CBBF60]);
          }

          v81 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v99, *MEMORY[0x277CBC120], 5015, v45);

          v85 = v88;
          v17 = v109;
LABEL_30:

          v12 = 0;
          goto LABEL_31;
        }

        v31 = objc_msgSend_valueID(v16, v29, v30);
        v34 = objc_msgSend_zoneID(v31, v32, v33);
        v37 = objc_msgSend_anonymousCKUserID(v34, v35, v36);
        v40 = objc_msgSend_CKDPIdentifier_User(v37, v38, v39);
        v43 = objc_msgSend_request(v17, v41, v42);
        objc_msgSend_setAnonymousCKUserID_(v43, v44, v40);
      }

      v45 = objc_opt_new();
      v48 = objc_msgSend_translator(requestCopy, v46, v47);
      v51 = objc_msgSend_valueID(v16, v49, v50);
      v53 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v48, v52, v51);
      objc_msgSend_setIdentifier_(v45, v54, v53);

      v57 = objc_msgSend_deltaIdentifiersToReplace(v16, v55, v56);
      v60 = objc_msgSend_mutableCopy(v57, v58, v59);
      objc_msgSend_setDeltaIdentifiers_(v45, v61, v60);

      objc_msgSend_setIgnoreMissingDeltas_(v45, v62, deltasCopy);
      v65 = objc_msgSend_replacementDeltasContainNewData(v16, v63, v64);
      objc_msgSend_setContainsNewData_(v45, v66, v65);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v69 = objc_msgSend_replacementDeltas(v16, v67, v68);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v111, v121, 16);
      if (v71)
      {
        v74 = v71;
        v75 = *v112;
LABEL_11:
        v76 = 0;
        while (1)
        {
          if (*v112 != v75)
          {
            objc_enumerationMutation(v69);
          }

          v77 = *(*(&v111 + 1) + 8 * v76);
          v78 = objc_msgSend_translator(requestCopy, v72, v73);
          v110 = 0;
          v80 = objc_msgSend_pMergeableDeltaFromDelta_error_(v78, v79, v77, &v110);
          v81 = v110;

          if (!v80)
          {
            break;
          }

          objc_msgSend_addDeltas_(v45, v82, v80);

          if (v74 == ++v76)
          {
            v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v72, &v111, v121, 16);
            v17 = v109;
            if (v74)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

        v17 = v109;
        if (!v81)
        {
          goto LABEL_19;
        }

        v85 = v104;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v86 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v120 = v81;
          _os_log_fault_impl(&dword_22506F000, v86, OS_LOG_TYPE_FAULT, "Error creating mergeable delta proto for replacement request: %@", buf, 0xCu);
        }

        goto LABEL_30;
      }

LABEL_17:

LABEL_19:
      objc_msgSend_setMergeableDeltaReplaceRequest_(v17, v83, v45);
      v12 = v104;
      objc_msgSend_addObject_(v104, v84, v17);

      v15 = v108 + 1;
    }

    while (v108 + 1 != v107);
    v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v115, v122, 16);
    if (v107)
    {
      continue;
    }

    break;
  }

  v81 = 0;
LABEL_31:
  error = errorCopy;
LABEL_32:

  if (error)
  {
    v100 = v81;
    *error = v81;
  }

  return v12;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v47 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_msgSend_replacementRequestsByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(objectCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!v16)
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CKDReplaceMergeableDeltasURLRequest.m", 176, @"Expected non-nil replacement request for response: %@", objectCopy);
  }

  hasMergeableDeltaReplaceResponse = objc_msgSend_hasMergeableDeltaReplaceResponse(objectCopy, v17, v18);
  v20 = *MEMORY[0x277CBC878];
  if (hasMergeableDeltaReplaceResponse)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v21 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v33 = v21;
      v36 = objc_msgSend_requestUUID(self, v34, v35);
      *buf = 138543618;
      v44 = v36;
      v45 = 2112;
      v46 = v16;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received response for request %@", buf, 0x16u);
    }

    v24 = objc_msgSend_perReplacementCompletionBlock(self, v22, v23);

    if (v24)
    {
      v27 = objc_msgSend_perReplacementCompletionBlock(self, v25, v26);
      v30 = objc_msgSend_result(objectCopy, v28, v29);
      (v27)[2](v27, v16, v30);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v37 = v31;
      v40 = objc_msgSend_requestUUID(self, v38, v39);
      *buf = 138412290;
      v44 = v40;
      _os_log_fault_impl(&dword_22506F000, v37, OS_LOG_TYPE_FAULT, "No mergeableDeltaReplaceResponse for mergeableDeltaReplaceRequest in request UUID %@", buf, 0xCu);
    }
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v37 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
  {
    v27 = v6;
    v30 = objc_msgSend_requestUUID(self, v28, v29);
    *buf = 138543618;
    v34 = v30;
    v35 = 2112;
    v36 = failureCopy;
    _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "req: %{public}@, Node failure in replace deltas request: %@", buf, 0x16u);
  }

  v9 = objc_msgSend_replacementRequestsByRequestID(self, v7, v8);
  v12 = objc_msgSend_response(failureCopy, v10, v11);
  v15 = objc_msgSend_operationUUID(v12, v13, v14);
  v17 = objc_msgSend_objectForKeyedSubscript_(v9, v16, v15);

  if (!v17)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDReplaceMergeableDeltasURLRequest.m", 194, @"Expected non-nil replacement request for response: %@", failureCopy);
  }

  v20 = objc_msgSend_perReplacementCompletionBlock(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_perReplacementCompletionBlock(self, v21, v22);
    v26 = objc_msgSend_result(failureCopy, v24, v25);
    (v23)[2](v23, v17, v26);
  }
}

@end