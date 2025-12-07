@interface CKDPublishAssetsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDPublishAssetsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_checkEntitlements;
- (id)activityCreate;
- (void)_dispatchAssetURLsForRecord:(id)record pcs:(_OpaquePCSShareProtection *)pcs;
- (void)_fetchPCSForRecords;
- (void)_fetchRecords;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_finishPublishAssetsForRecord:(id)record;
- (void)cancel;
- (void)main;
@end

@implementation CKDPublishAssetsOperation

- (CKDPublishAssetsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = CKDPublishAssetsOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(infoCopy, v7, v8);
    recordIDs = v9->_recordIDs;
    v9->_recordIDs = v10;

    v14 = objc_msgSend_fileNamesByAssetFieldNames(infoCopy, v12, v13);
    fileNamesByAssetFieldNames = v9->_fileNamesByAssetFieldNames;
    v9->_fileNamesByAssetFieldNames = v14;

    v18 = objc_msgSend_requestedTTL(infoCopy, v16, v17);
    v21 = 3600;
    if (v18)
    {
      v21 = v18;
    }

    v9->_requestedTTL = v21;
    v9->_URLOptions = objc_msgSend_URLOptions(infoCopy, v19, v20);
    v22 = objc_opt_new();
    fetchedRecordsByID = v9->_fetchedRecordsByID;
    v9->_fetchedRecordsByID = v22;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/publish-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__fetchRecords(self, v6, v7);
      }

      return 1;
    }

    objc_msgSend_setState_(self, v5, 2);
    v10 = objc_msgSend__checkEntitlements(self, v12, v13);
    if (v10)
    {
      objc_msgSend_finishWithError_(self, v14, v10);
      objc_msgSend_setState_(self, v15, 0xFFFFFFFFLL);
    }

LABEL_10:

    return 1;
  }

  if (v4 == 3)
  {
    objc_msgSend_setState_(self, v5, 4);
    objc_msgSend__fetchPCSForRecords(self, v16, v17);
    return 1;
  }

  if (v4 == 4)
  {
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v10 = objc_msgSend_error(self, v8, v9);
    objc_msgSend_finishWithError_(self, v11, v10);
    goto LABEL_10;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDPublishAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548CE0[state - 2];
  }

  return v5;
}

- (id)_checkEntitlements
{
  if ((objc_msgSend_URLOptions(self, a2, v2) & 2) != 0 && (objc_msgSend_container(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_entitlements(v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), hasAllowOnDeviceAssetStreamingEntitlement = objc_msgSend_hasAllowOnDeviceAssetStreamingEntitlement(v9, v10, v11), v9, v6, (hasAllowOnDeviceAssetStreamingEntitlement & 1) == 0))
  {
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, *MEMORY[0x277CBBF50], 8, &unk_2838C91D8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_dispatchAssetURLsForRecord:(id)record pcs:(_OpaquePCSShareProtection *)pcs
{
  v108 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v90 = objc_msgSend_recordID(recordCopy, v7, v8);
  if (!v90)
  {
    v84 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v84, v85, a2, self, @"CKDPublishAssetsOperation.m", 120, @"Expected non nil recordID");
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v105 = v90;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Getting asset urls for record %@", buf, 0xCu);
  }

  v14 = objc_msgSend_container(self, v12, v13);
  v17 = objc_msgSend_entitlements(v14, v15, v16);
  hasAlwaysAllowPublishAssetsEntitlement = objc_msgSend_hasAlwaysAllowPublishAssetsEntitlement(v17, v18, v19);

  if ((hasAlwaysAllowPublishAssetsEntitlement & 1) == 0)
  {
    if ((*MEMORY[0x277CBC810] & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        v68 = v33;
        v71 = objc_msgSend_container(self, v69, v70);
        v74 = objc_msgSend_containerID(v71, v72, v73);
        v77 = objc_msgSend_containerIdentifier(v74, v75, v76);
        v80 = objc_msgSend_container(self, v78, v79);
        v83 = objc_msgSend_processName(v80, v81, v82);
        *buf = 138412546;
        v105 = v77;
        v106 = 2112;
        v107 = v83;
        _os_log_fault_impl(&dword_22506F000, v68, OS_LOG_TYPE_FAULT, "Unidentified use of CKPublishAssetsOperation which will break under Walrus in container %@ by client %@. Please file a radar and reach out to cloudkit-client@group.apple.com for next steps.", buf, 0x16u);
      }
    }

    goto LABEL_19;
  }

  v23 = objc_msgSend_container(self, v21, v22);
  v26 = objc_msgSend_containerID(v23, v24, v25);
  if (objc_msgSend_specialContainerType(v26, v27, v28) == 4)
  {
    v31 = objc_msgSend_URLOptions(self, v29, v30);

    if (v31)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v105 = v90;
        _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Asset URL for iCloud Drive record %@ requested for private streaming. This request will fail if walrus is enabled.", buf, 0xCu);
      }

LABEL_19:
      v88 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v88 = 1;
LABEL_22:
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = objc_msgSend_allKeys(recordCopy, v21, v22);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v99, v103, 16);
  if (v35)
  {
    v37 = v35;
    v38 = *v100;
    v87 = *v100;
    do
    {
      v39 = 0;
      v91 = v37;
      do
      {
        if (*v100 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v99 + 1) + 8 * v39);
        v41 = objc_msgSend_objectForKey_(recordCopy, v36, v40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = v41;
          v45 = objc_msgSend_fileNamesByAssetFieldNames(self, v43, v44);
          v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, v40);

          if (v47)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v48 = recordCopy;
            v49 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v105 = v42;
              _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Creating asset url for asset %@", buf, 0xCu);
            }

            v52 = objc_msgSend_container(self, v50, v51);
            v55 = objc_msgSend_pcsManager(v52, v53, v54);
            v58 = objc_msgSend_useEncryption(self, v56, v57);
            v61 = objc_msgSend_useClearAssetEncryption(self, v59, v60);
            v98 = 0;
            LOBYTE(v86) = v88;
            objc_msgSend_fillInDownloadURLsForAssetWithFieldName_fileName_recordPCS_pcsManager_useEncryption_useClearAssetEncryption_alwaysAllowKeyExport_outError_(v42, v62, v40, v47, pcs, v55, v58, v61, v86, &v98);
            v63 = v98;

            v66 = objc_msgSend_callbackQueue(self, v64, v65);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_2251B498C;
            block[3] = &unk_278548978;
            block[4] = self;
            v94 = v90;
            v95 = v40;
            v96 = v42;
            v97 = v63;
            v67 = v63;
            dispatch_async(v66, block);

            recordCopy = v48;
            v38 = v87;
            v37 = v91;
          }
        }

        ++v39;
      }

      while (v37 != v39);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v99, v103, 16);
    }

    while (v37);
  }
}

- (void)_finishPublishAssetsForRecord:(id)record
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  recordCopy = record;
  obj = objc_msgSend_allKeys(recordCopy, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v31, v35, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = objc_msgSend_fileNamesByAssetFieldNames(self, v8, v9);
        v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v13);

        if (v16)
        {
          v18 = objc_msgSend_objectForKey_(recordCopy, v17, v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            objc_msgSend_setExposeAssetKey_(v19, v20, 1);
            v23 = objc_msgSend_callbackQueue(self, v21, v22);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_2251B4C3C;
            block[3] = &unk_2785463D0;
            block[4] = self;
            v28 = recordCopy;
            v29 = v13;
            v30 = v19;
            v24 = v19;
            dispatch_async(v23, block);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v31, v35, 16);
    }

    while (v10);
  }
}

- (void)_fetchPCSForRecords
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = objc_msgSend_fetchedRecordsByID(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v32, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = objc_msgSend_fetchedRecordsByID(self, v10, v11);
        v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v15);

        v21 = objc_msgSend_stateTransitionGroup(self, v19, v20);
        dispatch_group_enter(v21);

        v24 = objc_msgSend_container(self, v22, v23);
        v27 = objc_msgSend_pcsCache(v24, v25, v26);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_2251B4EDC;
        v30[3] = &unk_278548C98;
        v30[4] = v15;
        v30[5] = self;
        v31 = v18;
        v28 = v18;
        objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v27, v29, v15, self, 0, v30);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v32, v36, 16);
    }

    while (v12);
  }
}

- (void)_fetchRecords
{
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_msgSend_fileNamesByAssetFieldNames(self, a2, v2);
  v8 = objc_msgSend_allKeys(v5, v6, v7);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);

  v11 = objc_opt_new();
  v14 = objc_msgSend_operationInfo(self, v12, v13);
  v17 = objc_msgSend_resolvedConfiguration(v14, v15, v16);
  objc_msgSend_setResolvedConfiguration_(v11, v18, v17);

  v21 = objc_msgSend_operationInfo(self, v19, v20);
  v24 = objc_msgSend_group(v21, v22, v23);
  objc_msgSend_setGroup_(v11, v25, v24);

  v28 = objc_msgSend_recordIDs(self, v26, v27);
  objc_msgSend_setRecordIDs_(v11, v29, v28);

  objc_msgSend_setShouldFetchAssetContent_(v11, v30, 0);
  objc_msgSend_setShouldRequestEncryptedAssetOwnerIdentifier_(v11, v31, 1);
  v34 = objc_msgSend_fileNamesByAssetFieldNames(self, v32, v33);
  v37 = objc_msgSend_allKeys(v34, v35, v36);
  objc_msgSend_setDesiredKeys_(v11, v38, v37);

  objc_msgSend_setAssetFieldNamesToPublishURLs_(v11, v39, v10);
  v42 = objc_msgSend_requestedTTL(self, v40, v41);
  objc_msgSend_setRequestedTTL_(v11, v43, v42);
  v46 = objc_msgSend_URLOptions(self, v44, v45);
  objc_msgSend_setURLOptions_(v11, v47, v46);
  v48 = objc_opt_class();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2251B5358;
  v50[3] = &unk_278548B60;
  v50[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v49, v48, v11, v50);
}

- (void)main
{
  v4 = objc_msgSend_recordIDs(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = objc_msgSend_fileNamesByAssetFieldNames(self, v7, v8);
    v12 = objc_msgSend_count(v9, v10, v11) == 0;
  }

  else
  {
    v12 = 1;
  }

  objc_msgSend_makeStateTransition_(self, v13, v12);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setAssetPublishedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDPublishAssetsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CKDPublishAssetsOperation;
  [(CKDOperation *)&v8 cancel];
  v5 = objc_msgSend_fetchRecordsOperation(self, v3, v4);
  objc_msgSend_cancel(v5, v6, v7);
}

@end