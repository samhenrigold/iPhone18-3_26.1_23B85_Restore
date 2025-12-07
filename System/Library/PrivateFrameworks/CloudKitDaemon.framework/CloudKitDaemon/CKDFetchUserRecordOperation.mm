@interface CKDFetchUserRecordOperation
- (id)analyticsPayload;
- (void)fetchRecordsWithIDs:(id)ds andFullRecords:(id)records;
- (void)main;
@end

@implementation CKDFetchUserRecordOperation

- (void)fetchRecordsWithIDs:(id)ds andFullRecords:(id)records
{
  dsCopy = ds;
  recordsCopy = records;
  v8 = [CKDFetchUserRecordURLRequest alloc];
  v10 = objc_msgSend_initWithOperation_(v8, v9, self);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v10);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2251E50D4;
  v24[3] = &unk_278549A78;
  objc_copyWeak(&v25, &location);
  objc_msgSend_setRecordFetchedBlock_(v10, v11, v24);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2251E5170;
  v21[3] = &unk_278548748;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  objc_msgSend_setCompletionBlock_(v10, v12, v21);
  v15 = objc_msgSend_stateTransitionGroup(self, v13, v14);
  dispatch_group_enter(v15);

  objc_msgSend_setRequest_(self, v16, v10);
  v19 = objc_msgSend_container(self, v17, v18);
  objc_msgSend_performRequest_(v19, v20, v10);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)main
{
  v26 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v8, 1, 0, 0);
    v12 = objc_msgSend_CKPropertiesStyleString(v9, v10, v11);
    v14 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v13, 0, 1, 0);
    v17 = objc_msgSend_CKPropertiesStyleString(v14, v15, v16);
    v18 = 138544130;
    v19 = v7;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = v12;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Starting fetch user record operation <%{public}@: %p; %{public}@, %@>", &v18, 0x2Au);
  }

  objc_msgSend_makeStateTransition_(self, v4, 0);
}

- (id)analyticsPayload
{
  v38.receiver = self;
  v38.super_class = CKDFetchUserRecordOperation;
  analyticsPayload = [(CKDDatabaseOperation *)&v38 analyticsPayload];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_recordIDsToFetch(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v12 = objc_msgSend_numberWithUnsignedInteger_(v4, v11, v10);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v13, v12, 0x28387E6C0);

  v14 = MEMORY[0x277CCABB0];
  AssetContent = objc_msgSend_shouldFetchAssetContent(self, v15, v16);
  v19 = objc_msgSend_numberWithBool_(v14, v18, AssetContent);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v20, v19, 0x28387E6E0);

  v23 = objc_msgSend_desiredKeySet(self, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);

  if (v26)
  {
    v29 = MEMORY[0x277CCABB0];
    v30 = objc_msgSend_desiredKeySet(self, v27, v28);
    v33 = objc_msgSend_count(v30, v31, v32);
    v35 = objc_msgSend_numberWithUnsignedInteger_(v29, v34, v33);
    objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v36, v35, 0x28387E700);
  }

  return analyticsPayload;
}

@end