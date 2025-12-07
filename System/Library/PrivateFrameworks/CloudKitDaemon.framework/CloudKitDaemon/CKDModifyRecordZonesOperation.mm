@interface CKDModifyRecordZonesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_saveZonesToServer;
- (BOOL)_shouldUseZoneishPCSForZone:(id)zone;
- (BOOL)_updateZone:(id)zone withNewPCS:(id)s error:(id *)error;
- (BOOL)isOperationType:(int)type;
- (BOOL)makeStateTransition;
- (BOOL)needsUserKeySyncToPopulateServiceIdentity;
- (CKDModifyRecordZonesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_addParentPCS:(id)s toZonePCS:(id)cS;
- (id)_locallyCreatedParentPCSDataForZone:(id)zone error:(id *)error;
- (id)_topoSortRecordZones;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (int)operationType;
- (void)_checkAndPrepareZones;
- (void)_checkCurrentPCSIdentity;
- (void)_createNewPCSForZone:(id)zone completionHandler:(id)handler;
- (void)_fetchPCSDataForZone:(id)zone completion:(id)completion;
- (void)_fetchPCSDataForZonesFromServer;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleParentPCSForZone:(id)zone completion:(id)completion;
- (void)_handleRecordZoneDeleted:(id)deleted responseCode:(id)code;
- (void)_handleRecordZoneSaved:(id)saved responseCode:(id)code serverCapabilities:(unint64_t)capabilities expirationDate:(id)date expired:(BOOL)expired etag:(id)etag;
- (void)_sendCoreAnalyticsEventForKeySync;
- (void)_sendErrorForFailedZones;
- (void)_synchronizeSigningIdentitiesIfNeeded;
- (void)_synchronizeUserKeyRegistryFailingOnError:(BOOL)error;
- (void)_synchronizeUserKeyRegistryIfNeeded;
- (void)main;
@end

@implementation CKDModifyRecordZonesOperation

- (CKDModifyRecordZonesOperation)initWithOperationInfo:(id)info container:(id)container
{
  v60 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v58.receiver = self;
  v58.super_class = CKDModifyRecordZonesOperation;
  v9 = [(CKDDatabaseOperation *)&v58 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordZonesToSave(infoCopy, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    recordZonesToSave = v9->_recordZonesToSave;
    v9->_recordZonesToSave = v13;

    v9->_hasZoneSaves = objc_msgSend_count(v9->_recordZonesToSave, v15, v16) != 0;
    v19 = objc_msgSend_recordZoneIDsToDelete(infoCopy, v17, v18);
    recordZoneIDsToDelete = v9->_recordZoneIDsToDelete;
    v9->_recordZoneIDsToDelete = v19;

    v9->_hasZoneDeletes = objc_msgSend_count(v9->_recordZoneIDsToDelete, v21, v22) != 0;
    v9->_allowDefaultZoneSave = objc_msgSend_allowDefaultZoneSave(infoCopy, v23, v24);
    v9->_markZonesAsUserPurged = objc_msgSend_markZonesAsUserPurged(infoCopy, v25, v26);
    v29 = objc_msgSend_maxZoneSaveAttempts(infoCopy, v27, v28);
    v9->_maxZoneSaveAttempts = v29;
    if (v29 <= 0)
    {
      v32 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v30, v31);
      v9->_maxZoneSaveAttempts = objc_msgSend_PCSRetryCount(v32, v33, v34);
    }

    v9->_dontFetchFromServer = objc_msgSend_dontFetchFromServer(infoCopy, v30, v31);
    v35 = objc_opt_new();
    recordZonesByZoneID = v9->_recordZonesByZoneID;
    v9->_recordZonesByZoneID = v35;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = v9->_recordZonesToSave;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v54, v59, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v55;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v55 != v43)
          {
            objc_enumerationMutation(v37);
          }

          v45 = *(*(&v54 + 1) + 8 * i);
          v46 = v9->_recordZonesByZoneID;
          v47 = objc_msgSend_zoneID(v45, v40, v41, v54);
          objc_msgSend_setObject_forKeyedSubscript_(v46, v48, v45, v47);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v54, v59, 16);
      }

      while (v42);
    }

    v49 = objc_opt_new();
    retryableErrorsByZoneID = v9->_retryableErrorsByZoneID;
    v9->_retryableErrorsByZoneID = v49;

    v51 = objc_opt_new();
    zonesWaitingOnKeyRegistrySync = v9->_zonesWaitingOnKeyRegistrySync;
    v9->_zonesWaitingOnKeyRegistrySync = v51;
  }

  return v9;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__checkCurrentPCSIdentity(self, v29, v30);
        return 1;
      }

      if (v4 != 3)
      {
        return 1;
      }

      goto LABEL_22;
    }

    objc_msgSend_setState_(self, v5, 2);
    v20 = objc_msgSend__topoSortRecordZones(self, v18, v19);
    objc_msgSend_setRecordZonesToSave_(self, v21, v20);
LABEL_24:

    return 1;
  }

  if (v4 > 5)
  {
    if (v4 == 6)
    {
      objc_msgSend_setState_(self, v5, 7);
      objc_msgSend__synchronizeUserKeyRegistryIfNeeded(self, v27, v28);
      return 1;
    }

    if (v4 != 7)
    {
      return 1;
    }

    v9 = objc_msgSend_numZoneSaveAttempts(self, v5, v6);
    if (objc_msgSend_maxZoneSaveAttempts(self, v10, v11) <= v9)
    {
      v17 = 0;
    }

    else
    {
      v14 = objc_msgSend_recordZonesToSave(self, v12, v13);
      v17 = objc_msgSend_count(v14, v15, v16) != 0;
    }

    v31 = objc_msgSend_zonesWaitingOnKeyRegistrySync(self, v12, v13);
    v34 = objc_msgSend_count(v31, v32, v33);

    if (!v34 && v17)
    {
LABEL_22:
      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend__fetchPCSDataForZonesFromServer(self, v36, v37);
      return 1;
    }

    objc_msgSend__sendErrorForFailedZones(self, v5, v35);
    objc_msgSend__sendCoreAnalyticsEventForKeySync(self, v38, v39);
    objc_msgSend_setState_(self, v40, 0xFFFFFFFFLL);
    v20 = objc_msgSend_error(self, v41, v42);
    objc_msgSend_finishWithError_(self, v43, v20);
    goto LABEL_24;
  }

  if (v4 != 4)
  {
    objc_msgSend_setState_(self, v5, 6);
    objc_msgSend__synchronizeSigningIdentitiesIfNeeded(self, v7, v8);
    return 1;
  }

  objc_msgSend_setState_(self, v5, 5);
  v24 = objc_msgSend_numZoneSaveAttempts(self, v22, v23);
  objc_msgSend_setNumZoneSaveAttempts_(self, v25, (v24 + 1));

  return MEMORY[0x2821F9670](self, sel__saveZonesToServer, v26);
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-record-zones", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 6)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDModifyRecordZonesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854B108[state - 2];
  }

  return v5;
}

- (id)relevantZoneIDs
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  v7 = objc_msgSend_recordZoneIDsToDelete(self, v5, v6);
  v10 = objc_msgSend_count(v4, v8, v9);
  v13 = (objc_msgSend_count(v7, v11, v12) + v10);
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB58]);
    v13 = objc_msgSend_initWithCapacity_(v14, v15, v13);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v4;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v28, v32, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v25 = objc_msgSend_zoneID(*(*(&v28 + 1) + 8 * i), v19, v20, v28);
          if (v25)
          {
            objc_msgSend_addObject_(v13, v24, v25);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v28, v32, 16);
      }

      while (v21);
    }

    objc_msgSend_addObjectsFromArray_(v13, v26, v7);
  }

  return v13;
}

- (void)_synchronizeSigningIdentitiesIfNeeded
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_needsSynchronizeSigningIdentities(self, a2, v2) && (objc_msgSend_didSynchronizeSigningIdentities(self, v4, v5) & 1) == 0)
  {
    v8 = objc_msgSend_topmostParentOperation(self, v6, v7);
    v11 = objc_msgSend_operationID(v8, v9, v10);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Will attempt user key sync to update signing identities for operation %{public}@.", buf, 0xCu);
    }

    v15 = objc_msgSend_stateTransitionGroup(self, v13, v14);
    dispatch_group_enter(v15);

    objc_initWeak(buf, self);
    objc_msgSend_noteOperationWillWaitOnPCS(self, v16, v17);
    v20 = objc_msgSend_container(self, v18, v19);
    v23 = objc_msgSend_pcsManager(v20, v21, v22);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22524CE50;
    v26[3] = &unk_27854ABF0;
    objc_copyWeak(&v28, buf);
    v24 = v11;
    v27 = v24;
    objc_msgSend_synchronizeUserKeyRegistryForSigningIdentitiesForRequestorOperationID_shouldThrottle_completionHandler_(v23, v25, v24, 1, v26);

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)_checkCurrentPCSIdentity
{
  if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(self, a2, v2))
  {

    MEMORY[0x2821F9670](self, sel__synchronizeUserKeyRegistryFailingOnError_, 1);
  }
}

- (BOOL)needsUserKeySyncToPopulateServiceIdentity
{
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CKDModifyRecordZonesOperation;
  return [(CKDDatabaseOperation *)&v9 needsUserKeySyncToPopulateServiceIdentity];
}

- (void)_synchronizeUserKeyRegistryIfNeeded
{
  v4 = objc_msgSend_zonesWaitingOnKeyRegistrySync(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {

    MEMORY[0x2821F9670](self, sel__synchronizeUserKeyRegistryFailingOnError_, 0);
  }
}

- (void)_synchronizeUserKeyRegistryFailingOnError:(BOOL)error
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_topmostParentOperation(self, a2, error);
  v8 = objc_msgSend_operationID(v5, v6, v7);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v39 = v8;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Will attempt user key sync for operation %{public}@.", buf, 0xCu);
  }

  v12 = objc_msgSend_stateTransitionGroup(self, v10, v11);
  dispatch_group_enter(v12);

  objc_initWeak(buf, self);
  objc_msgSend_noteOperationWillWaitOnPCS(self, v13, v14);
  v17 = objc_msgSend_container(self, v15, v16);
  v20 = objc_msgSend_pcsManager(v17, v18, v19);
  v22 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v20, v21, 0, 0);

  v25 = objc_msgSend_container(self, v23, v24);
  v28 = objc_msgSend_pcsManager(v25, v26, v27);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22524D3B8;
  v32[3] = &unk_27854AC18;
  objc_copyWeak(&v36, buf);
  v29 = v8;
  errorCopy = error;
  v33 = v29;
  selfCopy = self;
  v30 = v22;
  v35 = v30;
  objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v28, v31, 0, 0, v30, 1, 0x28387E940, v29, v32);

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

- (void)_sendCoreAnalyticsEventForKeySync
{
  v4 = objc_msgSend_keySyncAnalytics(self, a2, v2);

  if (!v4)
  {
    return;
  }

  v7 = objc_msgSend_recordZonesToSave(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (!v10)
  {
    v23 = objc_msgSend_keySyncAnalytics(self, v11, v12);
    objc_msgSend_setOverallResult_(v23, v28, @"success");
    goto LABEL_7;
  }

  v13 = objc_msgSend_keySyncAnalytics(self, v11, v12);
  objc_msgSend_setOverallResult_(v13, v14, @"failure");

  v17 = objc_msgSend_keySyncAnalytics(self, v15, v16);
  v20 = objc_msgSend_error(v17, v18, v19);

  if (!v20)
  {
    v23 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 2037, 0, @"Error saving record zone to server: Protection data didn't match");
    v26 = objc_msgSend_keySyncAnalytics(self, v24, v25);
    objc_msgSend_setError_(v26, v27, v23);

LABEL_7:
  }

  v30 = objc_msgSend_keySyncAnalytics(self, v21, v22);
  objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v29, v30);
}

- (id)_topoSortRecordZones
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v55, v61, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v56;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v56 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v12 = objc_msgSend_parent(*(*(&v55 + 1) + 8 * v11), v7, v8);

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v55, v61, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (*MEMORY[0x277CBC810] != 1)
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

  else
  {
LABEL_9:

    if ((*MEMORY[0x277CBC810] & 1) == 0)
    {
      goto LABEL_18;
    }

    v15 = 1;
  }

  v16 = objc_msgSend_unitTestOverrides(self, v13, v14);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"SkipToposortingZones");

  if ((v15 & 1) == 0 && !v18)
  {
LABEL_15:
    v19 = objc_alloc_init(MEMORY[0x277CBC5F0]);
    v22 = objc_msgSend_recordZonesToSave(self, v20, v21);
    v54 = 0;
    v24 = objc_msgSend_addRecordZones_error_(v19, v23, v22, &v54);
    v25 = v54;

    if (v24)
    {
      v53 = v25;
      v28 = objc_msgSend_recordZonesByTopologicalSortWithError_(v19, v26, &v53);
      v29 = v53;

      if (v28)
      {
        v32 = v28;
        v25 = v29;
        v33 = v32;
      }

      else
      {
        v46 = MEMORY[0x277CBC560];
        v47 = *MEMORY[0x277CBC120];
        v48 = objc_msgSend_localizedDescription(v29, v30, v31);
        v50 = objc_msgSend_errorWithDomain_code_format_(v46, v49, v47, 1007, @"Invalid list of zones: %@", v48);
        objc_msgSend_setError_(self, v51, v50);

        v32 = 0;
        v33 = 0;
        v25 = v29;
      }
    }

    else
    {
      v41 = MEMORY[0x277CBC560];
      v42 = *MEMORY[0x277CBC120];
      v32 = objc_msgSend_localizedDescription(v25, v26, v27);
      v44 = objc_msgSend_errorWithDomain_code_format_(v41, v43, v42, 1007, @"Invalid list of zones: %@", v32);
      objc_msgSend_setError_(self, v45, v44);

      v33 = 0;
    }

    goto LABEL_26;
  }

LABEL_18:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v37 = v34;
    v40 = objc_msgSend_operationID(self, v38, v39);
    *buf = 138412290;
    v60 = v40;
    _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "No zone parent references found for operation %@, skipping toposort.", buf, 0xCu);
  }

  v33 = objc_msgSend_recordZonesToSave(self, v35, v36);
LABEL_26:

  return v33;
}

- (void)_sendErrorForFailedZones
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) && objc_msgSend_didSynchronizeUserKeyRegistry(self, v7, v8))
  {
    v11 = objc_msgSend_numZoneSaveAttempts(self, v9, v10);

    if (v11 < 2)
    {
      goto LABEL_10;
    }

    v4 = objc_msgSend_container(self, v12, v13);
    v16 = objc_msgSend_processName(v4, v14, v15);
    v19 = objc_msgSend_containerID(v4, v17, v18);
    v22 = objc_msgSend_containerIdentifier(v19, v20, v21);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v58 = v23;
      v61 = objc_msgSend_recordZonesToSave(self, v59, v60);
      v64 = objc_msgSend_count(v61, v62, v63);
      v67 = objc_msgSend_operationID(self, v65, v66);
      *buf = 134218754;
      v78 = v64;
      v79 = 2114;
      *v80 = v67;
      *&v80[8] = 2114;
      *&v80[10] = v16;
      v81 = 2114;
      v82 = v22;
      _os_log_fault_impl(&dword_22506F000, v58, OS_LOG_TYPE_FAULT, "Failed to save %lu zones for operation %{public}@ despite user key sync. procName=%{public}@, containerID=%{public}@", buf, 0x2Au);
    }
  }

LABEL_10:
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = objc_msgSend_recordZonesToSave(self, v12, v13);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v72, v76, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v73;
    v68 = *MEMORY[0x277CBC120];
    v30 = MEMORY[0x277CBC880];
    do
    {
      v31 = 0;
      do
      {
        if (*v73 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v72 + 1) + 8 * v31);
        v33 = objc_msgSend_retryableErrorsByZoneID(self, v26, v27);
        v36 = objc_msgSend_zoneID(v32, v34, v35);
        v38 = objc_msgSend_objectForKeyedSubscript_(v33, v37, v36);

        if (!v38)
        {
          v41 = MEMORY[0x277CBC560];
          v42 = objc_msgSend_zoneID(v32, v39, v40);
          v38 = objc_msgSend_errorWithDomain_code_userInfo_format_(v41, v43, v68, 2037, 0, @"Error saving record zone %@ to server: Protection data didn't match", v42);
        }

        if (*v30 != -1)
        {
          dispatch_once(v30, *MEMORY[0x277CBC878]);
        }

        v44 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v47 = v44;
          v50 = objc_msgSend_zoneID(v32, v48, v49);
          v53 = objc_msgSend_numZoneSaveAttempts(self, v51, v52);
          *buf = 138412802;
          v78 = v50;
          v79 = 1024;
          *v80 = v53;
          *&v80[4] = 2112;
          *&v80[6] = v38;
          _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Failed to save zone %@ to the server %d times. Bailing with error: %@.", buf, 0x1Cu);
        }

        v54 = objc_msgSend_saveCompletionBlock(self, v45, v46);

        if (v54)
        {
          v57 = objc_msgSend_callbackQueue(self, v55, v56);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22524E418;
          block[3] = &unk_278546990;
          block[4] = self;
          block[5] = v32;
          v71 = v38;
          dispatch_async(v57, block);
        }

        ++v31;
      }

      while (v28 != v31);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v72, v76, 16);
    }

    while (v28);
  }
}

- (void)_handleRecordZoneSaved:(id)saved responseCode:(id)code serverCapabilities:(unint64_t)capabilities expirationDate:(id)date expired:(BOOL)expired etag:(id)etag
{
  expiredCopy = expired;
  v224 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  codeCopy = code;
  dateCopy = date;
  etagCopy = etag;
  v16 = objc_msgSend_recordZonesByZoneID(self, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, savedCopy);

  if (v18)
  {
    v21 = sub_2253962A4(codeCopy);
    v22 = MEMORY[0x277CBC810];
    if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(self, v19, @"SwizzleZoneSaveResponseToErrorZonePCSIdentityUnknown"))
    {
      objc_msgSend_setCode_(codeCopy, v19, 3);
      v21 = 2053;
    }

    if (*v22 == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(self, v19, @"SwizzleZoneSaveResponseToErrorZoneNotFound"))
    {
      objc_msgSend_setCode_(codeCopy, v19, 3);
      v21 = 2036;
    }

    v23 = objc_msgSend_code(codeCopy, v19, v20);
    if (savedCopy && v23 == 1)
    {
      v26 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = MEMORY[0x277CBC830];
      v28 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v223 = v18;
        _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "RecordZone %@ was successfully saved to the server", buf, 0xCu);
      }

      objc_msgSend_setCapabilities_(v18, v29, capabilities);
      objc_msgSend_setExpirationDate_(v18, v30, dateCopy);
      objc_msgSend_setExpired_(v18, v31, expiredCopy);
      objc_msgSend_setHasUpdatedExpirationTimeInterval_(v18, v32, 0);
      objc_msgSend_setUpdatedExpirationTimeInterval_(v18, v33, 0);
      objc_msgSend_setEtag_(v18, v34, etagCopy);
      v37 = objc_msgSend_originalRequiredFeatures(v18, v35, v36);
      v40 = objc_msgSend_requiredFeatures(v18, v38, v39);
      isEqual = objc_msgSend_isEqual_(v37, v41, v40);

      if ((isEqual & 1) == 0)
      {
        v45 = objc_msgSend_requiredFeatures(v18, v43, v44);
        objc_msgSend_setOriginalRequiredFeatures_(v18, v46, v45);
      }

      if (etagCopy)
      {
        objc_msgSend_setEtag_(v18, v43, etagCopy);
      }

      v47 = objc_msgSend_recordZonesToSave(self, v43, v44);
      objc_sync_enter(v47);
      v50 = objc_msgSend_recordZonesToSave(self, v48, v49);
      objc_msgSend_removeObject_(v50, v51, v18);

      objc_sync_exit(v47);
      v54 = objc_msgSend_protectionData(v18, v52, v53);

      if (v54)
      {
        v57 = objc_msgSend_zonePCS(v18, v55, v56);
        v60 = objc_msgSend_zoneishPCS(v18, v58, v59);
        shouldUseZoneishPCSForZone = objc_msgSend__shouldUseZoneishPCSForZone_(self, v61, v18);
        if (v60)
        {
          v64 = 0;
        }

        else
        {
          v64 = shouldUseZoneishPCSForZone;
        }

        if (!v57 || v64)
        {
          if (*v26 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v123 = *v27;
          if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
          {
            v204 = v123;
            v207 = objc_msgSend_zoneID(v18, v205, v206);
            *buf = 138412290;
            *v223 = v207;
            _os_log_error_impl(&dword_22506F000, v204, OS_LOG_TYPE_ERROR, "We do not have valid zonePCS (and zoneishPCS if zoneish) in memory for recordZone %@ returned from server but letting the operation succeed.", buf, 0xCu);
          }
        }

        else
        {
          v65 = objc_msgSend_dataWithZone_(CKDZonePCSData, v63, v18);
          objc_msgSend_setPcs_(v65, v66, v57);
          objc_msgSend_setZoneishPCS_(v65, v67, v60);
          objc_msgSend_setPCSData_forFetchedZoneID_(self, v68, v65, savedCopy);
        }
      }

      v124 = objc_msgSend_saveCompletionBlock(self, v55, v56);

      if (v124)
      {
        v127 = objc_msgSend_callbackQueue(self, v125, v126);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22524F22C;
        block[3] = &unk_278546990;
        block[4] = self;
        v219 = savedCopy;
        v220 = v18;
        dispatch_async(v127, block);
      }

      goto LABEL_75;
    }

    if (v21 == 2036)
    {
      v128 = objc_msgSend_container(self, v24, v25);
      v131 = objc_msgSend_options(v128, v129, v130);
      if (((savedCopy != 0) & objc_msgSend_useAnonymousToServerShareParticipants(v131, v132, v133)) == 1)
      {
        v136 = objc_msgSend_databaseScope(self, v134, v135);

        if (v136 == 3)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v139 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v223 = savedCopy;
            _os_log_debug_impl(&dword_22506F000, v139, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          v142 = objc_msgSend_stateTransitionGroup(self, v140, v141);
          dispatch_group_enter(v142);

          v145 = objc_msgSend_container(self, v143, v144);
          v148 = objc_msgSend_anonymousSharingManager(v145, v146, v147);
          v221 = savedCopy;
          v150 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v149, &v221, 1);
          v216[0] = MEMORY[0x277D85DD0];
          v216[1] = 3221225472;
          v216[2] = sub_22524F2B4;
          v216[3] = &unk_278549318;
          objc_copyWeak(&v217, buf);
          objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v148, v151, v150, self, v216);

          objc_destroyWeak(&v217);
          objc_destroyWeak(buf);
        }
      }

      else
      {
      }

      v156 = objc_msgSend_container(self, v137, v138);
      v159 = objc_msgSend_recordCache(v156, v157, v158);
      objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v159, v160, v156, savedCopy);

      if (objc_msgSend_databaseScope(self, v161, v162) != 1 && objc_msgSend_databaseScope(self, v163, v164) != 4)
      {
        objc_msgSend_setPCSData_forFetchedZoneID_(self, v165, 0, savedCopy);
        v168 = objc_msgSend_container(self, v166, v167);
        v171 = objc_msgSend_pcsCache(v168, v169, v170);
        objc_msgSend_removePCSDataForItemsInZoneWithID_(v171, v172, savedCopy);
      }
    }

    else if (v21 == 2053 || v21 == 2037)
    {
      v70 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v71 = MEMORY[0x277CBC830];
      v72 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v75 = v72;
        *buf = 138412546;
        *v223 = savedCopy;
        *&v223[8] = 1024;
        *&v223[10] = objc_msgSend_code(codeCopy, v76, v77);
        _os_log_impl(&dword_22506F000, v75, OS_LOG_TYPE_INFO, "Received a failure for save of zone %@ with error code %d. Re-fetching the zone PCS and trying again", buf, 0x12u);
      }

      if (v21 == 2053 || (objc_msgSend_error(codeCopy, v73, v74), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend_errorDescription(v78, v79, v80), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lowercaseString(v81, v82, v83), v84 = objc_claimAutoreleasedReturnValue(), hasPrefix = objc_msgSend_hasPrefix_(v84, v85, @"zone pcs is created without the user's public key"), v84, v81, v78, hasPrefix))
      {
        if (*v70 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v88 = *v71;
        if (os_log_type_enabled(*v71, OS_LOG_TYPE_INFO))
        {
          v91 = v88;
          v94 = objc_msgSend_operationID(self, v92, v93);
          *buf = 138412546;
          *v223 = savedCopy;
          *&v223[8] = 2114;
          *&v223[10] = v94;
          _os_log_impl(&dword_22506F000, v91, OS_LOG_TYPE_INFO, "Zone PCS for %@ failed server validation. Will attempt user key sync for operation %{public}@ before trying again.", buf, 0x16u);
        }

        if (!savedCopy)
        {
          __assert_rtn("[CKDModifyRecordZonesOperation _handleRecordZoneSaved:responseCode:serverCapabilities:expirationDate:expired:etag:]", "CKDModifyRecordZonesOperation.m", 478, "zoneID");
        }

        v95 = objc_msgSend_zonesWaitingOnKeyRegistrySync(self, v89, v90);
        objc_msgSend_addObject_(v95, v96, savedCopy);
      }

      objc_msgSend_setProtectionData_(v18, v87, 0);
      objc_msgSend_setZoneishProtectionData_(v18, v97, 0);
      objc_msgSend_setProtectionEtag_(v18, v98, 0);
      objc_msgSend_setPreviousProtectionEtag_(v18, v99, 0);
      objc_msgSend_setZonePCS_(v18, v100, 0);
      objc_msgSend_setZoneishPCS_(v18, v101, 0);
      objc_msgSend_setPCSData_forFetchedZoneID_(self, v102, 0, savedCopy);
      v103 = MEMORY[0x277CBC560];
      v106 = objc_msgSend_request(self, v104, v105);
      v107 = sub_225395734(v106, codeCopy);
      v110 = objc_msgSend_error(codeCopy, v108, v109);
      hasErrorDescription = objc_msgSend_hasErrorDescription(v110, v111, v112);
      v116 = *MEMORY[0x277CBC120];
      if (hasErrorDescription)
      {
        v117 = objc_msgSend_error(codeCopy, v114, v115);
        v120 = objc_msgSend_errorDescription(v117, v118, v119);
        v122 = objc_msgSend_errorWithDomain_code_userInfo_format_(v103, v121, v116, v21, v107, @"Error saving record zone %@ to server: %@", v18, v120);
      }

      else
      {
        v122 = objc_msgSend_errorWithDomain_code_userInfo_format_(v103, v114, v116, v21, v107, @"Error saving record zone %@ to server: %@", v18, @"Protection data didn't match");
      }

      if (savedCopy)
      {
        v154 = objc_msgSend_retryableErrorsByZoneID(self, v152, v153);
        objc_msgSend_setObject_forKeyedSubscript_(v154, v155, v122, savedCopy);
      }

      goto LABEL_75;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v173 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v176 = v173;
      v179 = objc_msgSend_code(codeCopy, v177, v178);
      *buf = 67109378;
      *v223 = v179;
      *&v223[4] = 2112;
      *&v223[6] = v18;
      _os_log_impl(&dword_22506F000, v176, OS_LOG_TYPE_INFO, "Error %d when saving record zone %@ to the server", buf, 0x12u);
    }

    v180 = MEMORY[0x277CBC560];
    v181 = objc_msgSend_request(self, v174, v175);
    v182 = sub_225395734(v181, codeCopy);
    v185 = objc_msgSend_error(codeCopy, v183, v184);
    v188 = objc_msgSend_errorDescription(v185, v186, v187);
    v190 = objc_msgSend_errorWithDomain_code_userInfo_format_(v180, v189, *MEMORY[0x277CBC120], v21, v182, @"Error saving record zone %@ to server: %@", v18, v188);

    v193 = objc_msgSend_recordZonesToSave(self, v191, v192);
    objc_sync_enter(v193);
    v196 = objc_msgSend_recordZonesToSave(self, v194, v195);
    objc_msgSend_removeObject_(v196, v197, v18);

    objc_sync_exit(v193);
    v200 = objc_msgSend_saveCompletionBlock(self, v198, v199);

    if (v200)
    {
      v203 = objc_msgSend_callbackQueue(self, v201, v202);
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = sub_22524F3C8;
      v212[3] = &unk_2785463D0;
      v212[4] = self;
      v213 = savedCopy;
      v214 = v18;
      v215 = v190;
      dispatch_async(v203, v212);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v69 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v223 = savedCopy;
      _os_log_error_impl(&dword_22506F000, v69, OS_LOG_TYPE_ERROR, "Got a response for record zone with ID %@, but we didn't try to put that record zone.", buf, 0xCu);
    }
  }

LABEL_75:
}

- (void)_handleRecordZoneDeleted:(id)deleted responseCode:(id)code
{
  v53 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  codeCopy = code;
  v10 = objc_msgSend_code(codeCopy, v8, v9);
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (v10 == 1)
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = deletedCopy;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "RecordZone %@ was successfully deleted from the server", buf, 0xCu);
    }

    objc_msgSend_setPCSData_forFetchedZoneID_(self, v14, 0, deletedCopy);
    v17 = objc_msgSend_container(self, v15, v16);
    v20 = objc_msgSend_pcsCache(v17, v18, v19);
    objc_msgSend_removePCSDataForItemsInZoneWithID_(v20, v21, deletedCopy);

    v24 = objc_msgSend_recordCache(v17, v22, v23);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v24, v25, v17, deletedCopy);
    v26 = 0;
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v50 = codeCopy;
      v51 = 2112;
      v52 = deletedCopy;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Error %@ when deleting record zone %@ from the server", buf, 0x16u);
    }

    v28 = MEMORY[0x277CBC560];
    v29 = *MEMORY[0x277CBC120];
    v30 = sub_2253962A4(codeCopy);
    v17 = objc_msgSend_request(self, v31, v32);
    v24 = sub_225395734(v17, codeCopy);
    v35 = objc_msgSend_error(codeCopy, v33, v34);
    v38 = objc_msgSend_errorDescription(v35, v36, v37);
    v26 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v39, v29, v30, v24, @"Error deleting record zone %@: %@", deletedCopy, v38);
  }

  v42 = objc_msgSend_deleteCompletionBlock(self, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_callbackQueue(self, v43, v44);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22524F774;
    block[3] = &unk_278546990;
    block[4] = self;
    v47 = deletedCopy;
    v48 = v26;
    dispatch_async(v45, block);
  }
}

- (BOOL)_saveZonesToServer
{
  v142 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {

    goto LABEL_4;
  }

  v9 = objc_msgSend_recordZoneIDsToDelete(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
LABEL_4:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v16 = v13;
      v19 = objc_msgSend_recordZonesToSave(self, v17, v18);
      v22 = objc_msgSend_count(v19, v20, v21);
      v25 = objc_msgSend_recordZoneIDsToDelete(self, v23, v24);
      *buf = 134218240;
      v139 = v22;
      v140 = 2048;
      v141 = objc_msgSend_count(v25, v26, v27);
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Saving %ld, deleting %ld record zones on the server.", buf, 0x16u);
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      v28 = objc_msgSend_unitTestOverrides(self, v14, v15);
      v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"AddRandomShareeIdentityToZonePCS");
      v31 = v30 == 0;

      if (!v31)
      {
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v32 = objc_msgSend_recordZonesToSave(self, v14, v15);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v133, v137, 16);
        if (v36)
        {
          v38 = *v134;
          *&v37 = 138412290;
          v125 = v37;
          do
          {
            v39 = 0;
            do
            {
              if (*v134 != v38)
              {
                objc_enumerationMutation(v32);
              }

              v40 = *(*(&v133 + 1) + 8 * v39);
              v43 = objc_msgSend_zonePCS(v40, v34, v35, v125);
              if (v43)
              {
                v44 = objc_msgSend_container(self, v41, v42);
                v47 = objc_msgSend_pcsManager(v44, v45, v46);
                v49 = objc_msgSend_addRandomShareeToPCS_(v47, v48, v43);

                if (v49)
                {
                  objc_msgSend_setZonePCS_(v40, v34, v43);
                  v52 = objc_msgSend_container(self, v50, v51);
                  v55 = objc_msgSend_pcsManager(v52, v53, v54);
                  v132 = 0;
                  v57 = objc_msgSend_dataFromZonePCS_error_(v55, v56, v43, &v132);
                  v58 = v132;

                  if (!v57 || v58)
                  {
                    if (*MEMORY[0x277CBC880] != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v64 = *MEMORY[0x277CBC830];
                    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                    {
                      *buf = v125;
                      v139 = v58;
                      _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Failed to create PCS data, skipping AddRandomShareeIdentityToZonePCS. error: %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    objc_msgSend_setProtectionData_(v40, v59, v57);
                    v61 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v60, v57);
                    objc_msgSend_setProtectionEtag_(v40, v62, v61);
                  }
                }
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v63 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22506F000, v63, OS_LOG_TYPE_INFO, "Warn: PCS not available for the zone, skipping AddRandomShareeIdentityToZonePCS", buf, 2u);
                }
              }

              ++v39;
            }

            while (v36 != v39);
            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v133, v137, 16);
          }

          while (v36);
        }
      }
    }

    v65 = objc_msgSend_stateTransitionGroup(self, v14, v15);
    dispatch_group_enter(v65);

    v66 = [CKDModifyRecordZonesURLRequest alloc];
    v69 = objc_msgSend_recordZonesToSave(self, v67, v68);
    v72 = objc_msgSend_recordZoneIDsToDelete(self, v70, v71);
    v74 = objc_msgSend_initWithOperation_recordZonesToSave_recordZoneIDsToDelete_(v66, v73, self, v69, v72);

    v77 = objc_msgSend_markZonesAsUserPurged(self, v75, v76);
    objc_msgSend_setMarkZonesAsUserPurged_(v74, v78, v77);
    v81 = objc_msgSend_container(self, v79, v80);
    v84 = objc_msgSend_options(v81, v82, v83);
    if ((objc_msgSend_bypassPCSEncryption(v84, v85, v86) & 1) == 0)
    {
      v89 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v87, v88);
      v92 = objc_msgSend_useEncryption(v89, v90, v91);

      if (!v92)
      {
        goto LABEL_36;
      }

      v81 = objc_msgSend_container(self, v93, v94);
      v84 = objc_msgSend_pcsManager(v81, v95, v96);
      v99 = objc_msgSend_lastMissingManateeIdentityErrorDateForCurrentService(v84, v97, v98);
      objc_msgSend_setLastMissingManateeIdentityErrorDate_(v74, v100, v99);
    }

LABEL_36:
    if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v93, v94), v101 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v101, v102, @"EnsureLastMissingManateeIdentityErrorDateOnZoneDelete"), v103 = objc_claimAutoreleasedReturnValue(), v104 = v103 == 0, v103, v101, !v104) && (objc_msgSend_lastMissingManateeIdentityErrorDate(v74, v105, v106), v107 = objc_claimAutoreleasedReturnValue(), v108 = v107 == 0, v107, v108))
    {
      v120 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v109, *MEMORY[0x277CBC120], 1, @"Failing zone delete for unit tests because we should have had a lastMissingManateeIdentityErrorDate");
      objc_msgSend_setError_(self, v121, v120);

      v124 = objc_msgSend_stateTransitionGroup(self, v122, v123);
      dispatch_group_leave(v124);

      v117 = 0;
    }

    else
    {
      objc_initWeak(buf, self);
      objc_initWeak(&location, v74);
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = sub_225250008;
      v129[3] = &unk_27854ABC8;
      objc_copyWeak(&v130, buf);
      objc_msgSend_setRecordZoneModifiedBlock_(v74, v110, v129);
      v126[0] = MEMORY[0x277D85DD0];
      v126[1] = 3221225472;
      v126[2] = sub_22525010C;
      v126[3] = &unk_278548748;
      objc_copyWeak(&v127, buf);
      objc_copyWeak(&v128, &location);
      objc_msgSend_setCompletionBlock_(v74, v111, v126);
      objc_msgSend_setRequest_(self, v112, v74);
      v115 = objc_msgSend_container(self, v113, v114);
      objc_msgSend_performRequest_(v115, v116, v74);

      objc_destroyWeak(&v128);
      objc_destroyWeak(&v127);
      objc_destroyWeak(&v130);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
      v117 = 1;
    }

    return v117;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v119 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v119, OS_LOG_TYPE_INFO, "Skipping save of zones because there is nothing to do", buf, 2u);
  }

  return 0;
}

- (int)operationType
{
  if (self->_hasZoneSaves)
  {
    if (!self->_hasZoneDeletes)
    {
      return 200;
    }
  }

  else if (self->_hasZoneDeletes)
  {
    return 202;
  }

  return 0;
}

- (BOOL)isOperationType:(int)type
{
  if (type == 200)
  {
    v3 = &OBJC_IVAR___CKDModifyRecordZonesOperation__hasZoneSaves;
  }

  else
  {
    if (type != 202)
    {
      v4 = 0;
      return v4 & 1;
    }

    v3 = &OBJC_IVAR___CKDModifyRecordZonesOperation__hasZoneDeletes;
  }

  v4 = *(&self->super.super.super.super.isa + *v3);
  return v4 & 1;
}

- (BOOL)_shouldUseZoneishPCSForZone:(id)zone
{
  zoneCopy = zone;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_options(v7, v8, v9);
  v15 = (objc_msgSend_useZoneWidePCS(v10, v11, v12) & 1) != 0 || objc_msgSend_encryptionScope(zoneCopy, v13, v14) == 1;

  return v15;
}

- (id)_locallyCreatedParentPCSDataForZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  v9 = objc_msgSend_parent(zoneCopy, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_parent(zoneCopy, v10, v11);
    v16 = objc_msgSend_zoneID(v13, v14, v15);

    if (v16)
    {
      v17 = objc_msgSend_parent(zoneCopy, v10, v11);
      v20 = objc_msgSend_zoneID(v17, v18, v19);

      v23 = objc_msgSend_recordZonesByZoneID(self, v21, v22);
      objc_sync_enter(v23);
      v26 = objc_msgSend_recordZonesByZoneID(self, v24, v25);
      v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v20);

      objc_sync_exit(v23);
      if (v28)
      {
        if (objc_msgSend_zonePCS(v28, v29, v30))
        {
          v32 = objc_msgSend_dataWithZone_(CKDZonePCSData, v31, v28);
          v35 = objc_msgSend_zonePCS(v28, v33, v34);
          objc_msgSend_setPcs_(v32, v36, v35);
          v39 = objc_msgSend_zoneishPCS(v28, v37, v38);
          objc_msgSend_setZoneishPCS_(v32, v40, v39);
LABEL_15:

          goto LABEL_16;
        }

        if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5005, @"Parent zone %@ has no PCS data", v20);
          goto LABEL_13;
        }
      }

      else if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 2036, @"Parent zone %@ not found in recordZonesByZoneID", v20);
LABEL_13:
        *error = v32 = 0;
        goto LABEL_15;
      }

      v32 = 0;
      goto LABEL_15;
    }
  }

  if (!error)
  {
    v32 = 0;
    goto LABEL_17;
  }

  v41 = MEMORY[0x277CBC560];
  v42 = *MEMORY[0x277CBC120];
  v20 = objc_msgSend_zoneID(zoneCopy, v10, v11);
  objc_msgSend_errorWithDomain_code_format_(v41, v43, v42, 1017, @"Zone %@ has no parent", v20);
  *error = v32 = 0;
LABEL_16:

LABEL_17:

  return v32;
}

- (BOOL)_updateZone:(id)zone withNewPCS:(id)s error:(id *)error
{
  zoneCopy = zone;
  sCopy = s;
  v12 = objc_msgSend_pcs(sCopy, v10, v11);
  objc_msgSend_setZonePCS_(zoneCopy, v13, v12);
  v16 = objc_msgSend_zoneishPCS(sCopy, v14, v15);

  objc_msgSend_setZoneishPCS_(zoneCopy, v17, v16);
  v20 = objc_msgSend_container(self, v18, v19);
  v23 = objc_msgSend_pcsManager(v20, v21, v22);
  v26 = objc_msgSend_zonePCS(zoneCopy, v24, v25);
  v28 = objc_msgSend_dataFromZonePCS_error_(v23, v27, v26, error);

  if (!v28)
  {
    LOBYTE(v44) = 0;
    goto LABEL_7;
  }

  objc_msgSend_setProtectionData_(zoneCopy, v29, v28);
  v31 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v30, v28);
  objc_msgSend_setProtectionEtag_(zoneCopy, v32, v31);

  if (!objc_msgSend__shouldUseZoneishPCSForZone_(self, v33, zoneCopy))
  {
    goto LABEL_5;
  }

  v36 = objc_msgSend_container(self, v34, v35);
  v39 = objc_msgSend_pcsManager(v36, v37, v38);
  v42 = objc_msgSend_zoneishPCS(zoneCopy, v40, v41);
  v44 = objc_msgSend_dataFromRecordPCS_error_(v39, v43, v42, error);

  if (v44)
  {
    objc_msgSend_setZoneishProtectionData_(zoneCopy, v45, v44);

LABEL_5:
    LOBYTE(v44) = 1;
  }

LABEL_7:

  return v44;
}

- (void)_handleParentPCSForZone:(id)zone completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  completionCopy = completion;
  v9 = objc_msgSend_dataWithZone_(CKDZonePCSData, v8, zoneCopy);
  v12 = objc_msgSend_zonePCS(zoneCopy, v10, v11);
  objc_msgSend_setPcs_(v9, v13, v12);
  v16 = objc_msgSend_zoneishPCS(zoneCopy, v14, v15);
  objc_msgSend_setZoneishPCS_(v9, v17, v16);
  v18 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = MEMORY[0x277CBC830];
  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v45 = v20;
    v48 = objc_msgSend_zoneID(zoneCopy, v46, v47);
    v51 = objc_msgSend_parent(zoneCopy, v49, v50);
    v54 = objc_msgSend_zoneID(v51, v52, v53);
    *buf = 138412546;
    v67 = v48;
    v68 = 2112;
    v69 = v54;
    _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Handling parent PCS for zone %@ which has parent %@", buf, 0x16u);
  }

  v65 = 0;
  v22 = objc_msgSend__locallyCreatedParentPCSDataForZone_error_(self, v21, zoneCopy, &v65);
  v24 = v65;
  if (v22)
  {
    v25 = objc_msgSend__addParentPCS_toZonePCS_(self, v23, v22, v9);
    if (v25)
    {
      v27 = v25;
      if (*v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v67 = v27;
        v29 = "Error adding locally created parent PCS to child zone's PCS: %@";
        goto LABEL_24;
      }
    }

    else
    {
      v64 = 0;
      updated = objc_msgSend__updateZone_withNewPCS_error_(self, v26, zoneCopy, v9, &v64);
      v27 = v64;
      if ((updated & 1) == 0)
      {
        if (*v18 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v28 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v67 = v27;
          v29 = "Error updating zone with new PCS: %@";
LABEL_24:
          _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, v29, buf, 0xCu);
          if (!completionCopy)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }
    }

    if (completionCopy)
    {
LABEL_21:
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (*v18 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *v19;
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
    {
      v55 = v30;
      v58 = objc_msgSend_zoneID(zoneCopy, v56, v57);
      *buf = 138412290;
      v67 = v58;
      _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "No locally created parent PCS found for zone %@. Fetching from pcsCache", buf, 0xCu);
    }

    v33 = objc_msgSend_container(self, v31, v32);
    v36 = objc_msgSend_pcsCache(v33, v34, v35);
    v39 = objc_msgSend_parent(zoneCopy, v37, v38);
    v42 = objc_msgSend_zoneID(v39, v40, v41);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_225250C9C;
    v59[3] = &unk_27854B048;
    v60 = zoneCopy;
    selfCopy = self;
    v63 = completionCopy;
    v62 = v9;
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v36, v43, v42, self, 0, v59);

    v27 = v60;
  }

LABEL_22:
}

- (void)_createNewPCSForZone:(id)zone completionHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = sub_2250740E0;
  v65[4] = sub_2250735FC;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = sub_2250740E0;
  v63[4] = sub_2250735FC;
  v64 = 0;
  v12 = objc_msgSend_container(self, v8, v9);
  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(self, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v13, v14, @"ForceCreateV1_5ZonePCS"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v13, v16))
  {
    v25 = 1;
  }

  else
  {
    v19 = objc_msgSend_unitTestOverrides(self, v17, v18);
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"ForceCreateV1_5ZonePCS");
    v24 = objc_msgSend_BOOLValue(v21, v22, v23);

    v25 = v24 ^ 1u;
  }

  v26 = dispatch_group_create();
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v30 = objc_msgSend_zoneID(zoneCopy, v28, v29);
    *buf = 138412290;
    v68 = v30;
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Creating new PCS data for zone %@", buf, 0xCu);
  }

  dispatch_group_enter(v26);
  objc_msgSend_noteOperationWillWaitOnPCS(self, v31, v32);
  v35 = objc_msgSend_pcsManager(v12, v33, v34);
  v38 = objc_msgSend_topmostParentOperation(self, v36, v37);
  v41 = objc_msgSend_operationID(v38, v39, v40);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2252513F4;
  v57[3] = &unk_27854B070;
  objc_copyWeak(&v61, &location);
  v59 = v65;
  v60 = v63;
  v42 = v26;
  v58 = v42;
  objc_msgSend_createZonePCSWithRequestorOperationID_createV2PCS_completionHandler_(v35, v43, v41, v25, v57);

  v46 = objc_msgSend_callbackQueue(self, v44, v45);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252514A4;
  block[3] = &unk_27854B098;
  v51 = v12;
  v52 = zoneCopy;
  v55 = v63;
  v56 = v65;
  selfCopy = self;
  v54 = handlerCopy;
  v47 = handlerCopy;
  v48 = zoneCopy;
  v49 = v12;
  dispatch_group_notify(v42, v46, block);

  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);
}

- (void)_fetchPCSDataForZone:(id)zone completion:(id)completion
{
  zoneCopy = zone;
  completionCopy = completion;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_2250740E0;
  v40[4] = sub_2250735FC;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_2250740E0;
  v38[4] = sub_2250735FC;
  v39 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v11 = objc_msgSend_container(self, v9, v10);
  v14 = objc_msgSend_pcsCache(v11, v12, v13);
  v17 = objc_msgSend_zoneID(zoneCopy, v15, v16);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_225252000;
  v32[3] = &unk_27854B0C0;
  v36 = v38;
  v18 = zoneCopy;
  v33 = v18;
  selfCopy = self;
  v37 = v40;
  v19 = v8;
  v35 = v19;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v14, v20, v17, self, 0, v32);

  v23 = objc_msgSend_callbackQueue(self, v21, v22);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_225252BAC;
  v26[3] = &unk_27854B0E8;
  v31 = v38;
  v27 = v18;
  selfCopy2 = self;
  v29 = completionCopy;
  v30 = v40;
  v24 = completionCopy;
  v25 = v18;
  dispatch_group_notify(v19, v23, v26);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
}

- (void)_fetchPCSDataForZonesFromServer
{
  v74 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_dontFetchFromServer(self, a2, v2))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
      v10 = objc_msgSend_operationID(self, v8, v9);
      *buf = 138543362;
      v73 = v10;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Skipping fetch of zones from the server for operation %{public}@ because it has dontFetchFromServer set", buf, 0xCu);
    }

    return;
  }

  if (objc_msgSend_useEncryption(self, v4, v5))
  {
    v13 = objc_msgSend_recordZonesToSave(self, v11, v12);
    v16 = objc_msgSend_count(v13, v14, v15);

    v17 = *MEMORY[0x277CBC878];
    if (v16)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v21 = v18;
        v24 = objc_msgSend_recordZonesToSave(self, v22, v23);
        *buf = 134217984;
        v73 = objc_msgSend_count(v24, v25, v26);
        _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Preparing PCS data for %ld zones", buf, 0xCu);
      }

      v27 = objc_msgSend_stateTransitionGroup(self, v19, v20);
      dispatch_group_enter(v27);

      selfCopy = self;
      v31 = objc_msgSend_recordZonesToSave(self, v29, v30);
      v34 = objc_msgSend_copy(v31, v32, v33);

      v35 = dispatch_group_create();
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v36 = v34;
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v67, v71, 16);
      if (v38)
      {
        v42 = v38;
        v43 = *v68;
        v44 = MEMORY[0x277CBC858];
        *&v41 = 138412290;
        v61 = v41;
        do
        {
          v45 = 0;
          do
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(v36);
            }

            v46 = *(*(&v67 + 1) + 8 * v45);
            v47 = objc_msgSend_protectionData(v46, v39, v40, v61);

            if (v47)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v48 = *v44;
              if (os_log_type_enabled(*v44, OS_LOG_TYPE_INFO))
              {
                v49 = v48;
                v52 = objc_msgSend_zoneID(v46, v50, v51);
                *buf = v61;
                v73 = v52;
                _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Zone %@ already has PCS data.", buf, 0xCu);
              }
            }

            else
            {
              dispatch_group_enter(v35);
              v65[0] = MEMORY[0x277D85DD0];
              v65[1] = 3221225472;
              v65[2] = sub_2252533AC;
              v65[3] = &unk_278545A00;
              v66 = v35;
              objc_msgSend__fetchPCSDataForZone_completion_(selfCopy, v53, v46, v65);
            }

            ++v45;
          }

          while (v42 != v45);
          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v67, v71, 16);
        }

        while (v42);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v54 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, "Waiting to fetch zone PCS data", buf, 2u);
      }

      v57 = objc_msgSend_callbackQueue(selfCopy, v55, v56);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2252533B4;
      block[3] = &unk_278545898;
      v63 = v36;
      v64 = selfCopy;
      v58 = v36;
      dispatch_group_notify(v35, v57, block);

      return;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v59 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v60 = "No zone to save in this operation.";
      goto LABEL_38;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v59 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v60 = "Skipping zone PCS stuff because encryption is disabled";
LABEL_38:
      _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, v60, buf, 2u);
    }
  }
}

- (id)_addParentPCS:(id)s toZonePCS:(id)cS
{
  v66 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  v8 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = MEMORY[0x277CBC830];
  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v55 = v10;
    v58 = objc_msgSend_zoneID(cSCopy, v56, v57);
    *buf = 138412546;
    v61 = sCopy;
    v62 = 2112;
    v63 = v58;
    _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Adding parent PCS data %@ to PCS for zone %@", buf, 0x16u);
  }

  if (!objc_msgSend_pcs(sCopy, v11, v12))
  {
    v41 = MEMORY[0x277CBC560];
    v42 = *MEMORY[0x277CBC120];
    v32 = objc_msgSend_zoneID(sCopy, v13, v14);
    v27 = objc_msgSend_errorWithDomain_code_format_(v41, v43, v42, 5004, @"Parent PCS data is missing PCS for zone %@", v32);
LABEL_17:

    goto LABEL_18;
  }

  v15 = objc_msgSend_container(self, v13, v14);
  v18 = objc_msgSend_pcsManager(v15, v16, v17);
  v21 = objc_msgSend_pcs(sCopy, v19, v20);
  v24 = objc_msgSend_pcs(cSCopy, v22, v23);
  v59 = 0;
  v26 = objc_msgSend_addParentZonePCS_toChildZonePCS_error_(v18, v25, v21, v24, &v59);
  v27 = v59;

  if (v26)
  {
    v30 = objc_msgSend_pcs(sCopy, v28, v29);
    v32 = objc_msgSend_publicKeyIDFromIdentity_(CKDPCSManager, v31, v30);
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v34 = v33;
      v37 = objc_msgSend_zoneID(sCopy, v35, v36);
      v40 = objc_msgSend_zoneID(cSCopy, v38, v39);
      *buf = 138412802;
      v61 = v37;
      v62 = 2112;
      v63 = v40;
      v64 = 2114;
      v65 = v32;
      _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Successfully added parent PCS data from zone %@ to zone %@. Public key ID is %{public}@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v44 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v61 = sCopy;
    v62 = 2112;
    v63 = cSCopy;
    v64 = 2112;
    v65 = v27;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Error adding parent PCS %@ to zone PCS %@: %@", buf, 0x20u);
    if (v27)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (!v27)
  {
LABEL_16:
    v47 = MEMORY[0x277CBC560];
    v48 = *MEMORY[0x277CBC120];
    v32 = objc_msgSend_zoneID(sCopy, v45, v46);
    v51 = objc_msgSend_zoneID(cSCopy, v49, v50);
    v27 = objc_msgSend_errorWithDomain_code_format_(v47, v52, v48, 5005, @"Couldn't add parent PCS data from zone %@ to zone %@", v32, v51);

    goto LABEL_17;
  }

LABEL_18:
  v53 = v27;

  return v27;
}

- (void)_checkAndPrepareZones
{
  v49 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_allowDefaultZoneSave(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_recordZonesToSave(self, v4, v5);
    v41 = objc_msgSend_mutableCopy(v6, v7, v8);

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = objc_msgSend_recordZonesToSave(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v44, v48, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v45;
      v18 = *MEMORY[0x277CBC120];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v44 + 1) + 8 * i);
          v21 = objc_msgSend_zoneID(v20, v14, v15, v41);
          isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v21, v22, v23);

          if (isDefaultRecordZoneID)
          {
            v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, v18, 1017, @"You can't save the default zone");
            v28 = objc_msgSend_callbackQueue(self, v26, v27);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_225253DBC;
            block[3] = &unk_278546990;
            block[4] = self;
            block[5] = v20;
            v43 = v25;
            v29 = v25;
            dispatch_async(v28, block);

            objc_msgSend_removeObject_(v41, v30, v20);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v44, v48, 16);
      }

      while (v16);
    }

    v33 = objc_msgSend_count(v41, v31, v32);
    v36 = objc_msgSend_recordZonesToSave(self, v34, v35);
    v39 = objc_msgSend_count(v36, v37, v38);

    if (v33 != v39)
    {
      objc_msgSend_setRecordZonesToSave_(self, v40, v41);
    }
  }
}

- (void)main
{
  objc_msgSend__checkAndPrepareZones(self, a2, v2);
  v6 = objc_msgSend_recordZonesToSave(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_recordZoneIDsToDelete(self, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) == 0;
  }

  objc_msgSend_makeStateTransition_(self, v15, v11);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v4 = MEMORY[0x277CBEB98];
  errorCopy = error;
  v8 = objc_msgSend_recordZonesByZoneID(self, v6, v7);
  v11 = objc_msgSend_allKeys(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v4, v12, v11);

  if (objc_msgSend_count(v13, v14, v15))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_225254010;
    v20[3] = &unk_2785487F8;
    v21 = v13;
    objc_msgSend_updateCloudKitMetrics_(self, v17, v20);
  }

  objc_msgSend_setSaveCompletionBlock_(self, v16, 0);
  objc_msgSend_setDeleteCompletionBlock_(self, v18, 0);
  v19.receiver = self;
  v19.super_class = CKDModifyRecordZonesOperation;
  [(CKDOperation *)&v19 _finishOnCallbackQueueWithError:errorCopy];
}

@end