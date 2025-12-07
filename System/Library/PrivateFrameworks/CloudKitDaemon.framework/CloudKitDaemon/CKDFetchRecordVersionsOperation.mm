@interface CKDFetchRecordVersionsOperation
- (CKDDecryptRecordsOperation)recordDecryptOperation;
- (CKDFetchRecordVersionsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleRecordVersionsFetchedForID:(id)d isDeleted:(BOOL)deleted versions:(id)versions responseCode:(id)code;
- (void)finishDecryption;
- (void)main;
@end

@implementation CKDFetchRecordVersionsOperation

- (CKDFetchRecordVersionsOperation)initWithOperationInfo:(id)info container:(id)container
{
  v34[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = CKDFetchRecordVersionsOperation;
  v9 = [(CKDDatabaseOperation *)&v33 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(infoCopy, v7, v8);
    objc_msgSend_setRecordIDs_(v9, v11, v10);

    v14 = objc_msgSend_desiredKeys(infoCopy, v12, v13);
    if (v14 && (v17 = v14, objc_msgSend_desiredKeys(infoCopy, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_count(v18, v19, v20), v18, v17, !v21))
    {
      v34[0] = *MEMORY[0x277CBC030];
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v34, 1);
    }

    else
    {
      v22 = objc_msgSend_desiredKeys(infoCopy, v15, v16);
    }

    desiredKeys = v9->_desiredKeys;
    v9->_desiredKeys = v22;

    v26 = objc_msgSend_minimumVersionETag(infoCopy, v24, v25);
    objc_msgSend_setMinimumVersionETag_(v9, v27, v26);

    v28 = dispatch_group_create();
    objc_msgSend_setFetchVersionsGroup_(v9, v29, v28);

    v9->_shouldFetchAssetContent = objc_msgSend_shouldFetchAssetContent(infoCopy, v30, v31);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-record-versions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (CKDDecryptRecordsOperation)recordDecryptOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  decryptOperation = selfCopy->_decryptOperation;
  if (!decryptOperation || objc_msgSend_isFinished(decryptOperation, v3, v4))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_class();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2251E5C64;
    v11[3] = &unk_278548B60;
    v11[4] = selfCopy;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(selfCopy, v8, v7, v6, v11);
  }

  objc_sync_exit(selfCopy);

  v9 = selfCopy->_decryptOperation;

  return v9;
}

- (void)finishDecryption
{
  obj = self;
  objc_sync_enter(obj);
  decryptOperation = obj->_decryptOperation;
  if (decryptOperation && (objc_msgSend_isFinished(decryptOperation, v2, v3) & 1) == 0)
  {
    objc_msgSend_finishDecryption(obj->_decryptOperation, v5, v6);
  }

  objc_sync_exit(obj);
}

- (void)_handleRecordVersionsFetchedForID:(id)d isDeleted:(BOOL)deleted versions:(id)versions responseCode:(id)code
{
  deletedCopy = deleted;
  v96 = *MEMORY[0x277D85DE8];
  dCopy = d;
  versionsCopy = versions;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_225074040;
  v88 = sub_2250735AC;
  v89 = 0;
  codeCopy = code;
  v10 = objc_msgSend_code(codeCopy, v8, v9);
  if (dCopy && v10 == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v54 = objc_msgSend_count(versionsCopy, v12, v13);
      v55 = @"false";
      *location = 134218498;
      *&location[4] = v54;
      v92 = 2114;
      if (deletedCopy)
      {
        v55 = @"true";
      }

      v93 = dCopy;
      v94 = 2114;
      v95 = v55;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Fetched %ld versions for record with ID %{public}@ (is deleted: %{public}@)", location, 0x20u);
    }

    if (objc_msgSend_count(versionsCopy, v14, v15))
    {
      v18 = objc_msgSend_fetchVersionsGroup(self, v16, v17);
      dispatch_group_enter(v18);

      objc_initWeak(location, self);
      v19 = dispatch_group_create();
      v20 = objc_opt_new();
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = versionsCopy;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v80, v90, 16);
      if (v22)
      {
        v23 = *v81;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v81 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v80 + 1) + 8 * i);
            dispatch_group_enter(v19);
            v28 = objc_msgSend_recordDecryptOperation(self, v26, v27);
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = sub_2251E64CC;
            v75[3] = &unk_278549AD8;
            objc_copyWeak(&v79, location);
            v76 = v20;
            v78 = &v84;
            v77 = v19;
            objc_msgSend_decryptRecord_withCompletion_(v28, v29, v25, v75);

            objc_destroyWeak(&v79);
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v80, v90, 16);
        }

        while (v22);
      }

      v31 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251E6740;
      block[3] = &unk_278549B28;
      objc_copyWeak(&v73, location);
      v32 = dCopy;
      v74 = deletedCopy;
      v69 = v32;
      v70 = v20;
      v72 = &v84;
      selfCopy = self;
      v33 = v20;
      dispatch_group_notify(v19, v31, block);

      objc_destroyWeak(&v73);
      objc_destroyWeak(location);
      goto LABEL_21;
    }
  }

  else
  {
    v34 = MEMORY[0x277CBC560];
    v35 = sub_2253962A4(codeCopy);
    v38 = objc_msgSend_request(self, v36, v37);
    v39 = sub_225395734(v38, codeCopy);
    v42 = objc_msgSend_error(codeCopy, v40, v41);
    v45 = objc_msgSend_errorDescription(v42, v43, v44);
    v47 = objc_msgSend_errorWithDomain_code_userInfo_format_(v34, v46, *MEMORY[0x277CBC120], v35, v39, @"Error fetching versions for record %@ from server: %@", dCopy, v45);
    v48 = v85[5];
    v85[5] = v47;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v56 = v85[5];
      *location = 138412546;
      *&location[4] = dCopy;
      v92 = 2112;
      v93 = v56;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Failed to fetch versions for record %@: %@", location, 0x16u);
    }
  }

  v50 = objc_msgSend_recordVersionFetchedBlock(self, v16, v17);

  if (v50)
  {
    v53 = objc_msgSend_callbackQueue(self, v51, v52);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2251E68B4;
    v63[3] = &unk_278549B00;
    v63[4] = self;
    v64 = dCopy;
    v67 = deletedCopy;
    v65 = versionsCopy;
    v66 = &v84;
    dispatch_async(v53, v63);
  }

LABEL_21:
  _Block_object_dispose(&v84, 8);
}

- (void)main
{
  v4 = objc_msgSend_recordIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v9 = [CKDFetchRecordVersionsRequest alloc];
    v12 = objc_msgSend_recordIDs(self, v10, v11);
    v15 = objc_msgSend_desiredKeys(self, v13, v14);
    v18 = objc_msgSend_minimumVersionETag(self, v16, v17);
    v20 = objc_msgSend_initWithOperation_recordIDs_desiredKeys_minimumVersionETag_(v9, v19, self, v12, v15, v18);

    AssetContent = objc_msgSend_shouldFetchAssetContent(self, v21, v22);
    objc_msgSend_setShouldFetchAssetContent_(v20, v24, AssetContent);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v20);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2251E6B9C;
    v35[3] = &unk_278549B50;
    objc_copyWeak(&v36, &location);
    objc_msgSend_setRecordVersionsFetchedBlock_(v20, v25, v35);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2251E6C38;
    v32[3] = &unk_278548748;
    objc_copyWeak(&v33, &location);
    objc_copyWeak(&v34, &from);
    objc_msgSend_setCompletionBlock_(v20, v26, v32);
    objc_msgSend_setRequest_(self, v27, v20);
    v30 = objc_msgSend_container(self, v28, v29);
    objc_msgSend_performRequest_(v30, v31, v20);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {

    objc_msgSend_finishWithError_(self, v8, 0);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v45 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v23 = v5;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v28 = objc_msgSend_ckShortDescription(self, v26, v27);
    *buf = 138544130;
    v38 = v25;
    v39 = 2048;
    selfCopy = self;
    v41 = 2114;
    v42 = v28;
    v43 = 2112;
    v44 = errorCopy;
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Fetch record versions operation <%{public}@: %p; %{public}@> finished with error %@", buf, 0x2Au);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = objc_msgSend_recordIDs(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v32, v36, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_zoneID(*(*(&v32 + 1) + 8 * i), v12, v13);
        objc_msgSend_addObject_(v6, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v32, v36, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v6, v19, v20))
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2251E6FFC;
    v30[3] = &unk_2785487F8;
    v31 = v6;
    objc_msgSend_updateCloudKitMetrics_(self, v22, v30);
  }

  objc_msgSend_setRecordVersionFetchedBlock_(self, v21, 0);
  v29.receiver = self;
  v29.super_class = CKDFetchRecordVersionsOperation;
  [(CKDOperation *)&v29 _finishOnCallbackQueueWithError:errorCopy];
}

- (id)relevantZoneIDs
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_recordIDs(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v16 = objc_msgSend_zoneID(*(*(&v18 + 1) + 8 * i), v10, v11, v18);
          if (v16)
          {
            objc_msgSend_addObject_(v6, v15, v16);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
      }

      while (v12);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end