@interface CKDDatabaseOperation
- (BOOL)isAnonymous;
- (BOOL)needsUserKeySyncToPopulateServiceIdentity;
- (CKDDatabaseOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)CKStatusReportProperties;
- (id)activityCreate;
- (id)analyticsPayload;
- (void)_encryptMergeableDeltas:(id)deltas completionHandler:(id)handler;
- (void)setPCSData:(id)data forFetchedRecordID:(id)d;
- (void)setPCSData:(id)data forFetchedShareID:(id)d;
- (void)setPCSData:(id)data forFetchedZoneID:(id)d;
- (void)spawnAndRunOperationOfClass:(Class)class operationInfo:(id)info spawnQueue:(id)queue container:(id)container operationConfigurationBlock:(id)block;
@end

@implementation CKDDatabaseOperation

- (id)analyticsPayload
{
  v12.receiver = self;
  v12.super_class = CKDDatabaseOperation;
  analyticsPayload = [(CKDOperation *)&v12 analyticsPayload];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(v4, v8, v7);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v10, v9, 0x2838630E0);

  return analyticsPayload;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/db-operation", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_encryptMergeableDeltas:(id)deltas completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  deltasCopy = deltas;
  handlerCopy = handler;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_225074000;
  v48 = sub_22507358C;
  v49 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2251CA1D4;
  v43[3] = &unk_2785491B0;
  v43[4] = &v44;
  v9 = objc_msgSend_CKCompactReduceIntoDictionary_(deltasCopy, v8, v43);
  v12 = v9;
  if (v45[5])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_msgSend_operationID(self, v14, v15);
      v32 = v45[5];
      *location = 138543618;
      *&location[4] = v31;
      v51 = 2112;
      v52 = v32;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Invalid encrypted deltas for operation %{public}@: %@", location, 0x16u);
    }

    if (handlerCopy)
    {
      v16 = v45[5];
LABEL_8:
      handlerCopy[2](handlerCopy, v16);
    }
  }

  else
  {
    v17 = objc_msgSend_count(v9, v10, v11);
    v18 = *MEMORY[0x277CBC878];
    if (v17)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v19 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_msgSend_operationID(self, v20, v21);
        *location = 138543362;
        *&location[4] = v33;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Will encrypt deltas for operation %{public}@", location, 0xCu);
      }

      objc_initWeak(location, self);
      v22 = dispatch_group_create();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2251CA2F8;
      v38[3] = &unk_278549200;
      v23 = v22;
      v39 = v23;
      selfCopy = self;
      objc_copyWeak(&v42, location);
      v41 = &v44;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v24, v38);
      v27 = objc_msgSend_callbackQueue(self, v25, v26);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2251CA810;
      v35[3] = &unk_278549228;
      v35[4] = self;
      v36 = handlerCopy;
      v37 = &v44;
      dispatch_group_notify(v23, v27, v35);

      objc_destroyWeak(&v42);
      objc_destroyWeak(location);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v28 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v34 = objc_msgSend_operationID(self, v29, v30);
        *location = 138543362;
        *&location[4] = v34;
        _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "No deltas to encrypt for operation %{public}@", location, 0xCu);
      }

      if (handlerCopy)
      {
        v16 = 0;
        goto LABEL_8;
      }
    }
  }

  _Block_object_dispose(&v44, 8);
}

- (CKDDatabaseOperation)initWithOperationInfo:(id)info container:(id)container
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  containerCopy = container;
  v44.receiver = self;
  v44.super_class = CKDDatabaseOperation;
  v10 = [(CKDOperation *)&v44 initWithOperationInfo:infoCopy container:containerCopy];
  if (v10)
  {
    v10->_databaseScope = objc_msgSend_databaseScope(infoCopy, v8, v9);
    if (objc_msgSend_databaseScope(infoCopy, v11, v12) == 4)
    {
      objc_msgSend_setUseClearAssetEncryption_(v10, v13, 1);
    }

    else if (objc_msgSend_supportsClearAssetEncryption(v10, v13, v14))
    {
      v17 = objc_msgSend_options(containerCopy, v15, v16);
      v20 = objc_msgSend_useClearAssetEncryption(v17, v18, v19);

      if (v20)
      {
        v21 = objc_msgSend_containerID(containerCopy, v15, v16);
        v24 = objc_msgSend_specialContainerType(v21, v22, v23);

        if (v24 == 15 || (objc_msgSend_containerID(containerCopy, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), isTestContainer = objc_msgSend_isTestContainer(v27, v28, v29), v27, isTestContainer))
        {
          objc_msgSend_setUseClearAssetEncryption_(v10, v25, 1);
        }

        if ((objc_msgSend_useClearAssetEncryption(v10, v25, v31) & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v32 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
          {
            v37 = v32;
            v40 = objc_msgSend_applicationBundleID(containerCopy, v38, v39);
            v43 = objc_msgSend_containerID(containerCopy, v41, v42);
            *buf = 138543618;
            v46 = v40;
            v47 = 2114;
            v48 = v43;
            _os_log_fault_impl(&dword_22506F000, v37, OS_LOG_TYPE_FAULT, "Unauthorized client (%{public}@) is trying to use clear asset encryption in container (%{public}@)", buf, 0x16u);
          }
        }
      }
    }

    if (objc_msgSend_databaseScope(infoCopy, v15, v16) == 1 || objc_msgSend_databaseScope(infoCopy, v33, v34) == 4 || objc_msgSend_useClearAssetEncryption(v10, v33, v35))
    {
      objc_msgSend_setUseEncryption_(v10, v33, 0);
    }
  }

  return v10;
}

- (void)spawnAndRunOperationOfClass:(Class)class operationInfo:(id)info spawnQueue:(id)queue container:(id)container operationConfigurationBlock:(id)block
{
  blockCopy = block;
  containerCopy = container;
  queueCopy = queue;
  infoCopy = info;
  v18 = objc_msgSend_databaseScope(self, v16, v17);
  objc_msgSend_setDatabaseScope_(infoCopy, v19, v18);
  v20.receiver = self;
  v20.super_class = CKDDatabaseOperation;
  [(CKDOperation *)&v20 spawnAndRunOperationOfClass:class operationInfo:infoCopy spawnQueue:queueCopy container:containerCopy operationConfigurationBlock:blockCopy];
}

- (id)CKStatusReportProperties
{
  v12.receiver = self;
  v12.super_class = CKDDatabaseOperation;
  cKStatusReportProperties = [(CKDOperation *)&v12 CKStatusReportProperties];
  v4 = MEMORY[0x277CCACA8];
  objc_msgSend_databaseScope(self, v5, v6);
  v7 = CKDatabaseScopeString();
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"scope: %@", v7);
  objc_msgSend_addObject_(cKStatusReportProperties, v10, v9);

  return cKStatusReportProperties;
}

- (BOOL)isAnonymous
{
  v4 = objc_msgSend_preferAnonymousRequests(self, a2, v2);
  if (v4)
  {
    LOBYTE(v4) = objc_msgSend_databaseScope(self, v5, v6) == 1;
  }

  return v4;
}

- (BOOL)needsUserKeySyncToPopulateServiceIdentity
{
  v4 = objc_msgSend_useEncryption(self, a2, v2);
  if (v4)
  {
    if (objc_msgSend_databaseScope(self, v5, v6) == 2)
    {
      if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v9, v10, @"ForceNeedsUserKeySyncToPopulateServiceIdentity"), v11 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_BOOLValue(v11, v12, v13), v11, v9, v14))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v15 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *v23 = 0;
          _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Current identity will be considered needing user key sync due to unit test override", v23, 2u);
        }

        LOBYTE(v4) = 1;
      }

      else
      {
        v16 = objc_msgSend_container(self, v7, v8);
        v19 = objc_msgSend_pcsManager(v16, v17, v18);
        v21 = objc_msgSend_needsUserKeySyncToPopulateCurrentIdentityForServiceType_(v19, v20, 0);

        LOBYTE(v4) = v21;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)setPCSData:(id)data forFetchedRecordID:(id)d
{
  if (d)
  {
    dCopy = d;
    dataCopy = data;
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);
    v13 = objc_msgSend_container(self, v11, v12);
    v16 = objc_msgSend_pcsCache(v13, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22526D38C;
    v22[3] = &unk_2785470C0;
    v23 = v10;
    v20 = v10;
    objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v16, v21, dataCopy, dCopy, v19, v22);
  }
}

- (void)setPCSData:(id)data forFetchedZoneID:(id)d
{
  if (d)
  {
    dCopy = d;
    dataCopy = data;
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);
    v13 = objc_msgSend_container(self, v11, v12);
    v16 = objc_msgSend_pcsCache(v13, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22526D4A8;
    v22[3] = &unk_2785470C0;
    v23 = v10;
    v20 = v10;
    objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v16, v21, dataCopy, dCopy, v19, v22);
  }
}

- (void)setPCSData:(id)data forFetchedShareID:(id)d
{
  if (d)
  {
    dCopy = d;
    dataCopy = data;
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);
    v13 = objc_msgSend_container(self, v11, v12);
    v16 = objc_msgSend_pcsCache(v13, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22526D5C4;
    v22[3] = &unk_2785470C0;
    v23 = v10;
    v20 = v10;
    objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v16, v21, dataCopy, dCopy, v19, v22);
  }
}

@end