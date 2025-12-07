@interface CKDModifyWebSharingOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDModifyWebSharingOperation)initWithOperationInfo:(id)info container:(id)container;
- (_PCSIdentityData)_copyShareProtectionFromRecord:(id)record error:(id *)error;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_fetchRecords;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleRecordFetched:(id)fetched recordID:(id)d error:(id)error;
- (void)_handleRecordSaved:(id)saved error:(id)error;
- (void)_saveRecords;
- (void)main;
@end

@implementation CKDModifyWebSharingOperation

- (CKDModifyWebSharingOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = CKDModifyWebSharingOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordIDsToShare(infoCopy, v7, v8);
    recordIDsToShare = v9->_recordIDsToShare;
    v9->_recordIDsToShare = v10;

    v14 = objc_msgSend_recordIDsToUnshare(infoCopy, v12, v13);
    recordIDsToUnshare = v9->_recordIDsToUnshare;
    v9->_recordIDsToUnshare = v14;

    v18 = objc_msgSend_recordIDsToShareReadWrite(infoCopy, v16, v17);
    recordIDsToShareReadWrite = v9->_recordIDsToShareReadWrite;
    v9->_recordIDsToShareReadWrite = v18;

    v20 = objc_opt_new();
    recordsToSaveByID = v9->_recordsToSaveByID;
    v9->_recordsToSaveByID = v20;

    v22 = objc_opt_new();
    fetchedRecordIDs = v9->_fetchedRecordIDs;
    v9->_fetchedRecordIDs = v22;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-web-sharing", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)relevantZoneIDs
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordIDsToShare(self, a2, v2);
  v7 = objc_msgSend_recordIDsToUnshare(self, v5, v6);
  v10 = objc_msgSend_recordIDsToShareReadWrite(self, v8, v9);
  if (objc_msgSend_count(v4, v11, v12))
  {
    v15 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v16 = v4;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v61, v67, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v62;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v25 = objc_msgSend_zoneID(*(*(&v61 + 1) + 8 * i), v19, v20);
          if (v25)
          {
            objc_msgSend_addObject_(v15, v24, v25);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v61, v67, 16);
      }

      while (v21);
    }

    if (!objc_msgSend_count(v7, v26, v27))
    {
LABEL_26:
      if (!objc_msgSend_count(v10, v28, v29))
      {
        goto LABEL_41;
      }

      if (v15)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v15)
    {
LABEL_16:
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v32 = v7;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v57, v66, 16);
      if (v34)
      {
        v37 = v34;
        v38 = *v58;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v58 != v38)
            {
              objc_enumerationMutation(v32);
            }

            v41 = objc_msgSend_zoneID(*(*(&v57 + 1) + 8 * j), v35, v36);
            if (v41)
            {
              objc_msgSend_addObject_(v15, v40, v41);
            }
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v57, v66, 16);
        }

        while (v37);
      }

      goto LABEL_26;
    }

LABEL_15:
    v15 = objc_opt_new();
    goto LABEL_16;
  }

  if (objc_msgSend_count(v7, v13, v14))
  {
    goto LABEL_15;
  }

  if (!objc_msgSend_count(v10, v30, v31))
  {
    v15 = 0;
    goto LABEL_41;
  }

LABEL_30:
  v15 = objc_opt_new();
LABEL_31:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v42 = v10;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v53, v65, 16);
  if (v44)
  {
    v47 = v44;
    v48 = *v54;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v54 != v48)
        {
          objc_enumerationMutation(v42);
        }

        v51 = objc_msgSend_zoneID(*(*(&v53 + 1) + 8 * k), v45, v46, v53);
        if (v51)
        {
          objc_msgSend_addObject_(v15, v50, v51);
        }
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v53, v65, 16);
    }

    while (v47);
  }

LABEL_41:

  return v15;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 3)
  {
    v9 = objc_msgSend_recordsToSaveByID(self, v5, v6);
    if (objc_msgSend_count(v9, v10, v11))
    {
      v14 = objc_msgSend_numSaveAttempts(self, v12, v13);
      v17 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16);
      v20 = objc_msgSend_PCSRetryCount(v17, v18, v19);

      if (v14 < v20)
      {
LABEL_8:
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend__fetchRecords(self, v21, v22);
        return 1;
      }
    }

    else
    {
    }

    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v25 = objc_msgSend_error(self, v23, v24);
    objc_msgSend_finishWithError_(self, v26, v25);

    return 1;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      return 1;
    }

    goto LABEL_8;
  }

  objc_msgSend_setState_(self, v5, 3);
  objc_msgSend__saveRecords(self, v7, v8);
  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetching Records";
  }

  else if (state == 3)
  {
    v5 = @"Saving Records";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDModifyWebSharingOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_handleRecordSaved:(id)saved error:(id)error
{
  v74 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  errorCopy = error;
  v10 = objc_msgSend_recordIDsToShare(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, savedCopy);

  v13 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = MEMORY[0x277CBC830];
  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v50 = @"un";
    v51 = &stru_28385ED00;
    if (v12)
    {
      v50 = &stru_28385ED00;
    }

    *buf = 138544130;
    v52 = @" with error ";
    v67 = v50;
    v68 = 2112;
    v69 = savedCopy;
    if (!errorCopy)
    {
      v52 = &stru_28385ED00;
    }

    v70 = 2114;
    v71 = v52;
    if (errorCopy)
    {
      v51 = errorCopy;
    }

    v72 = 2112;
    v73 = v51;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Record for %{public}@share (%@) was saved%{public}@%@", buf, 0x2Au);
  }

  if (objc_msgSend_code(errorCopy, v16, v17) == 2037 && (v20 = objc_msgSend_numSaveAttempts(self, v18, v19), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_PCSRetryCount(v23, v24, v25), v23, v20 <= v26))
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v53 = @"un";
      if (v12)
      {
        v53 = &stru_28385ED00;
      }

      *buf = 138543618;
      v67 = v53;
      v68 = 2112;
      v69 = savedCopy;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Oplock failure while trying to %{public}@share record %@. Retrying.", buf, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v27 = objc_msgSend_recordsToSaveByID(self, v18, v19);
      v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, savedCopy);

      v32 = objc_msgSend_encryptedValues(v29, v30, v31);
      v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277CBC150]);

      v36 = objc_msgSend_objectForKeyedSubscript_(v29, v35, *MEMORY[0x277CBC138]);
      v39 = objc_msgSend_recordWebSharedBlock(self, v37, v38);

      if (v39)
      {
        v42 = objc_msgSend_callbackQueue(self, v40, v41);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22521D520;
        block[3] = &unk_278548978;
        block[4] = self;
        v62 = savedCopy;
        v63 = v34;
        v64 = v36;
        v65 = errorCopy;
        dispatch_async(v42, block);
      }
    }

    else
    {
      v45 = objc_msgSend_recordWebUnsharedBlock(self, v18, v19);

      if (v45)
      {
        v46 = objc_msgSend_callbackQueue(self, v43, v44);
        v54 = MEMORY[0x277D85DD0];
        v55 = 3221225472;
        v56 = sub_22521D5A8;
        v57 = &unk_278546990;
        selfCopy = self;
        v59 = savedCopy;
        v60 = errorCopy;
        dispatch_async(v46, &v54);
      }
    }

    v47 = objc_msgSend_recordsToSaveByID(self, v43, v44, v54, v55, v56, v57, selfCopy);
    objc_msgSend_removeObjectForKey_(v47, v48, savedCopy);
  }
}

- (void)_saveRecords
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numSaveAttempts(self, a2, v2);
  objc_msgSend_setNumSaveAttempts_(self, v5, (v4 + 1));
  v8 = objc_msgSend_recordsToSaveByID(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  v12 = *MEMORY[0x277CBC878];
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v26 = v13;
      v29 = objc_msgSend_recordsToSaveByID(self, v27, v28);
      v32 = objc_msgSend_count(v29, v30, v31);
      v35 = objc_msgSend_recordsToSaveByID(self, v33, v34);
      v38 = objc_msgSend_allKeys(v35, v36, v37);
      *buf = 134218242;
      v41 = v32;
      v42 = 2112;
      v43 = v38;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Saving %ld records: %@", buf, 0x16u);
    }

    v14 = objc_opt_new();
    v17 = objc_msgSend_recordsToSaveByID(self, v15, v16);
    v20 = objc_msgSend_allValues(v17, v18, v19);
    objc_msgSend_setRecordsToSave_(v14, v21, v20);

    objc_msgSend_setSavePolicy_(v14, v22, 1);
    v23 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_22521D8B4;
    v39[3] = &unk_278548B60;
    v39[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v24, v23, v14, v39);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "We don't have any records to save, so bailing now.", buf, 2u);
    }
  }
}

- (_PCSIdentityData)_copyShareProtectionFromRecord:(id)record error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v9 = recordCopy;
  if (!error)
  {
    if (!recordCopy)
    {
      v10 = 0;
      goto LABEL_25;
    }

LABEL_5:
    v11 = objc_msgSend_encryptedValues(recordCopy, v7, v8);
    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x277CBC150]);

    if (v13)
    {
      v16 = objc_msgSend_container(self, v14, v15);
      v19 = objc_msgSend_pcsManager(v16, v17, v18);
      v44 = 0;
      v10 = objc_msgSend_createSharingIdentityFromData_error_(v19, v20, v13, &v44);
      v21 = v44;

      if (v21 || !v10)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v35 = v32;
          v38 = objc_msgSend_recordID(v9, v36, v37);
          *buf = 138412802;
          v46 = v38;
          v47 = 2112;
          v48 = v21;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize share protection data on record %@: %@.\nData was %@", buf, 0x20u);
        }

        if (error)
        {
          v39 = MEMORY[0x277CBC560];
          v40 = *MEMORY[0x277CBC120];
          v41 = objc_msgSend_recordID(v9, v33, v34);
          *error = objc_msgSend_errorWithDomain_code_error_format_(v39, v42, v40, 5001, v21, @"Couldn't deserialize share protection data on record %@", v41);
        }

        if (v10)
        {
          CFRelease(v10);
          v10 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v25 = v22;
        v28 = objc_msgSend_recordID(v9, v26, v27);
        *buf = 138412290;
        v46 = v28;
        _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Warn: Record %@ didn't have any share protection data on it", buf, 0xCu);
      }

      if (!error)
      {
        v10 = 0;
        goto LABEL_24;
      }

      v29 = MEMORY[0x277CBC560];
      v30 = *MEMORY[0x277CBC120];
      v21 = objc_msgSend_recordID(v9, v23, v24);
      objc_msgSend_errorWithDomain_code_format_(v29, v31, v30, 5001, @"Record %@ didn't contain any share protection data", v21);
      *error = v10 = 0;
    }

LABEL_24:
    goto LABEL_25;
  }

  *error = 0;
  if (recordCopy)
  {
    goto LABEL_5;
  }

  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch record from the server");
  *error = v10 = 0;
LABEL_25:

  return v10;
}

- (void)_handleRecordFetched:(id)fetched recordID:(id)d error:(id)error
{
  v118 = *MEMORY[0x277D85DE8];
  fetchedCopy = fetched;
  dCopy = d;
  errorCopy = error;
  v13 = objc_msgSend_recordIDsToShare(self, v11, v12);
  v15 = objc_msgSend_containsObject_(v13, v14, dCopy);

  if (v15)
  {
    v18 = v111;
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v19 = sub_22521ED70;
LABEL_5:
    v18[2] = v19;
    v18[3] = &unk_278549C18;
    v18[4] = self;
    v23 = _Block_copy(v18);
    v24 = *MEMORY[0x277CBC878];
    v25 = *MEMORY[0x277CBC880];
    if (fetchedCopy && !errorCopy)
    {
      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v24);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v76 = @"un";
        if (v15)
        {
          v76 = &stru_28385ED00;
        }

        *buf = 138412546;
        v113 = dCopy;
        v114 = 2114;
        v115 = v76;
        _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetched record with ID %@ from the server. Unwrapping sharing identity and %{public}@sharing the record", buf, 0x16u);
      }

      v109 = 0;
      v28 = objc_msgSend__copyShareProtectionFromRecord_error_(self, v27, fetchedCopy, &v109);
      v31 = v109;
      if (!v31 && v28)
      {
        v34 = objc_msgSend_recordPCS(fetchedCopy, v29, v30);
        if (v34)
        {
          v106 = objc_msgSend_container(self, v32, v33);
          v37 = objc_msgSend_pcsManager(v106, v35, v36);
          v39 = v37;
          if (v15)
          {
            objc_msgSend_addSharingIdentity_toSharePCS_permission_(v37, v38, v28, v34, 0);
          }

          else
          {
            objc_msgSend_removeSharingIdentity_fromSharePCS_(v37, v38, v28, v34);
          }
          v31 = ;

          CFRelease(v28);
          if (v31)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v49 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v50 = @"un";
              *buf = 138543874;
              if (v15)
              {
                v50 = &stru_28385ED00;
              }

              v113 = v50;
              v114 = 2112;
              v115 = dCopy;
              v116 = 2112;
              v117 = v31;
              _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Warn: Error %{public}@sharing record %@: %@", buf, 0x20u);
            }

            v23[2](v23, dCopy, v31);
          }

          else
          {
            v51 = objc_msgSend_pcsManager(v106, v47, v48);
            v54 = objc_msgSend_pcsKeysToRemove(fetchedCopy, v52, v53);
            v57 = objc_msgSend_protectionEtag(fetchedCopy, v55, v56);
            v59 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v51, v58, v54, v34, v57, self);

            if (v59)
            {
              v108[0] = MEMORY[0x277D85DD0];
              v108[1] = 3221225472;
              v108[2] = sub_22521F060;
              v108[3] = &unk_2785498A0;
              v108[4] = v59;
              objc_msgSend_updateCloudKitMetrics_(self, v60, v108);
            }

            v62 = objc_msgSend_protectionData(fetchedCopy, v60, v61);
            v64 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v63, v62);
            objc_msgSend_setPreviousProtectionEtag_(fetchedCopy, v65, v64);

            v68 = objc_msgSend_pcsManager(v106, v66, v67);
            v107 = 0;
            v70 = objc_msgSend_dataFromRecordPCS_error_(v68, v69, v34, &v107);
            v31 = v107;
            objc_msgSend_setProtectionData_(fetchedCopy, v71, v70);

            if (v31 || (objc_msgSend_protectionData(fetchedCopy, v72, v73), v77 = objc_claimAutoreleasedReturnValue(), v78 = v77 == 0, v77, v78))
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v74 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                v75 = @"un";
                *buf = 138543874;
                if (v15)
                {
                  v75 = &stru_28385ED00;
                }

                v113 = v75;
                v114 = 2112;
                v115 = dCopy;
                v116 = 2112;
                v117 = v31;
                _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "Warn: Error serializing record PCS data for %{public}@share of record %@: %@", buf, 0x20u);
              }

              v23[2](v23, dCopy, v31);
            }

            else
            {
              v80 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v79, v15);
              objc_msgSend_setObject_forKeyedSubscript_(fetchedCopy, v81, v80, *MEMORY[0x277CBC148]);

              v84 = objc_msgSend_recordIDsToShareReadWrite(self, v82, v83);
              v86 = objc_msgSend_containsObject_(v84, v85, dCopy);

              v88 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v87, v86 ^ 1u);
              objc_msgSend_setObject_forKeyedSubscript_(fetchedCopy, v89, v88, *MEMORY[0x277CBC140]);

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v90 = MEMORY[0x277CBC830];
              v91 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v100 = v15 ? &stru_28385ED00 : @"un";
                v101 = v91;
                v104 = objc_msgSend_protectionData(fetchedCopy, v102, v103);
                *buf = 138412802;
                v113 = dCopy;
                v114 = 2114;
                v115 = v100;
                v116 = 2112;
                v117 = v104;
                _os_log_debug_impl(&dword_22506F000, v101, OS_LOG_TYPE_DEBUG, "New protection data for record %@ after %{public}@sharing is %@", buf, 0x20u);

                v90 = MEMORY[0x277CBC830];
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }
              }

              v92 = *v90;
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
              {
                v105 = @"removed";
                if (v15)
                {
                  v105 = @"added";
                }

                *buf = 138543618;
                v113 = v105;
                v114 = 2112;
                v115 = dCopy;
                _os_log_debug_impl(&dword_22506F000, v92, OS_LOG_TYPE_DEBUG, "Successfully %{public}@ sharing info to record %@. Preparing to save the record back to the server", buf, 0x16u);
              }

              v95 = objc_msgSend_recordsToSaveByID(self, v93, v94);
              objc_sync_enter(v95);
              v98 = objc_msgSend_recordsToSaveByID(self, v96, v97);
              objc_msgSend_setObject_forKeyedSubscript_(v98, v99, fetchedCopy, dCopy);

              objc_sync_exit(v95);
              v31 = 0;
            }
          }
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v45 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v113 = dCopy;
            _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Fetched record %@ had no PCS data", buf, 0xCu);
          }

          v31 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v46, *MEMORY[0x277CBC120], 5001, @"Fetched record %@ had no PCS data", dCopy);
          v23[2](v23, dCopy, v31);
          CFRelease(v28);
        }

LABEL_68:

        errorCopy = v23;
        goto LABEL_69;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v113 = dCopy;
        v114 = 2112;
        v115 = v31;
        _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Error getting share identity from record %@: %@", buf, 0x16u);
        if (v31)
        {
LABEL_30:
          v23[2](v23, dCopy, v31);
          if (v28)
          {
            CFRelease(v28);
          }

          goto LABEL_68;
        }
      }

      else if (v31)
      {
        goto LABEL_30;
      }

      v31 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 2003, @"Couldn't get a web sharing identity from record %@", dCopy);
      goto LABEL_30;
    }

    if (v25 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v113 = dCopy;
      v114 = 2112;
      v115 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Couldn't fetch record %@ from the server: %@", buf, 0x16u);
      if (errorCopy)
      {
        goto LABEL_20;
      }
    }

    else if (errorCopy)
    {
LABEL_20:
      v23[2](v23, dCopy, errorCopy);

      goto LABEL_69;
    }

    errorCopy = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 2003, @"Couldn't find record %@ on the server", dCopy);
    goto LABEL_20;
  }

  v20 = objc_msgSend_recordIDsToUnshare(self, v16, v17);
  v22 = objc_msgSend_containsObject_(v20, v21, dCopy);

  if (v22)
  {
    v18 = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    v19 = sub_22521EEEC;
    goto LABEL_5;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v42 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v113 = dCopy;
    _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Received a record ID that we don't know anything about: %@", buf, 0xCu);
  }

LABEL_69:
}

- (void)_fetchRecords
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_recordIDsToShare(self, v5, v6);
  objc_msgSend_addObjectsFromArray_(v4, v8, v7);

  v11 = objc_msgSend_recordIDsToUnshare(self, v9, v10);
  objc_msgSend_addObjectsFromArray_(v4, v12, v11);

  objc_msgSend_setRecordIDs_(v3, v13, v4);
  v14 = *MEMORY[0x277CBC138];
  v23[0] = *MEMORY[0x277CBC150];
  v23[1] = v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v23, 2);
  objc_msgSend_setDesiredKeys_(v3, v17, v16);

  v18 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22521F24C;
  v21[3] = &unk_278548C48;
  v21[4] = self;
  v22 = v4;
  v19 = v4;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v20, v18, v3, v21);
}

- (void)main
{
  v37 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v3;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v20 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v19, 1, 0, 0);
    v23 = objc_msgSend_CKPropertiesStyleString(v20, v21, v22);
    v25 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v24, 0, 1, 0);
    v28 = objc_msgSend_CKPropertiesStyleString(v25, v26, v27);
    v29 = 138544130;
    v30 = v18;
    v31 = 2048;
    selfCopy = self;
    v33 = 2114;
    v34 = v23;
    v35 = 2112;
    v36 = v28;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Starting web share operation <%{public}@: %p; %{public}@, %@>", &v29, 0x2Au);
  }

  v6 = objc_msgSend_recordIDsToShare(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_recordIDsToUnshare(self, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) == 0;
  }

  objc_msgSend_makeStateTransition_(self, v15, v11);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v65 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = objc_msgSend_recordIDsToShare(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v58, v64, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v59;
    do
    {
      v15 = 0;
      do
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_zoneID(*(*(&v58 + 1) + 8 * v15), v11, v12);
        objc_msgSend_addObject_(v5, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v58, v64, 16);
    }

    while (v13);
  }

  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0u;
  v20 = objc_msgSend_recordIDsToUnshare(self, v18, v19);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v54, v63, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v55;
    do
    {
      v27 = 0;
      do
      {
        if (*v55 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = objc_msgSend_zoneID(*(*(&v54 + 1) + 8 * v27), v23, v24);
        objc_msgSend_addObject_(v5, v29, v28);

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v54, v63, 16);
    }

    while (v25);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = objc_msgSend_recordIDsToShareReadWrite(self, v30, v31);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v50, v62, 16);
  if (v34)
  {
    v37 = v34;
    v38 = *v51;
    do
    {
      v39 = 0;
      do
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v32);
        }

        v40 = objc_msgSend_zoneID(*(*(&v50 + 1) + 8 * v39), v35, v36);
        objc_msgSend_addObject_(v5, v41, v40);

        ++v39;
      }

      while (v37 != v39);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v50, v62, 16);
    }

    while (v37);
  }

  if (objc_msgSend_count(v5, v42, v43))
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22521FC84;
    v48[3] = &unk_2785487F8;
    v49 = v5;
    objc_msgSend_updateCloudKitMetrics_(self, v45, v48);
  }

  objc_msgSend_setRecordWebSharedBlock_(self, v44, 0);
  objc_msgSend_setRecordWebUnsharedBlock_(self, v46, 0);
  v47.receiver = self;
  v47.super_class = CKDModifyWebSharingOperation;
  [(CKDOperation *)&v47 _finishOnCallbackQueueWithError:errorCopy];
}

@end