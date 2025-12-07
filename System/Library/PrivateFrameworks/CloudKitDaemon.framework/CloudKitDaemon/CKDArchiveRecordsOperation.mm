@interface CKDArchiveRecordsOperation
- (CKDArchiveRecordsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleRecordArchived:(id)archived responseCode:(id)code;
- (void)main;
@end

@implementation CKDArchiveRecordsOperation

- (CKDArchiveRecordsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKDArchiveRecordsOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(infoCopy, v7, v8);
    recordIDs = v9->_recordIDs;
    v9->_recordIDs = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/archive-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setRecordArchivedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDArchiveRecordsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)_handleRecordArchived:(id)archived responseCode:(id)code
{
  v49 = *MEMORY[0x277D85DE8];
  archivedCopy = archived;
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
      v46 = archivedCopy;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Record with ID %@ was successfully archived", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v21 = objc_msgSend_error(codeCopy, v19, v20);
      v24 = objc_msgSend_errorDescription(v21, v22, v23);
      *buf = 138412546;
      v46 = archivedCopy;
      v47 = 2114;
      v48 = v24;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Error archiving record with ID %@: %{public}@", buf, 0x16u);
    }

    v25 = MEMORY[0x277CBC560];
    v26 = *MEMORY[0x277CBC120];
    v27 = sub_2253962A4(codeCopy);
    v30 = objc_msgSend_request(self, v28, v29);
    v31 = sub_225395734(v30, codeCopy);
    v34 = objc_msgSend_error(codeCopy, v32, v33);
    v37 = objc_msgSend_errorDescription(v34, v35, v36);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_format_(v25, v38, v26, v27, v31, @"Error archiving record with ID %@: %@", archivedCopy, v37);
  }

  v39 = objc_msgSend_callbackQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D5FF0;
  block[3] = &unk_278546990;
  block[4] = self;
  v43 = archivedCopy;
  v44 = v16;
  v40 = v16;
  v41 = archivedCopy;
  dispatch_async(v39, block);
}

- (void)main
{
  v47 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v29 = v3;
    v32 = objc_msgSend_operationID(self, v30, v31);
    v35 = objc_msgSend_recordIDs(self, v33, v34);
    *location = 138543618;
    *&location[4] = v32;
    v45 = 2112;
    v46 = v35;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Starting archive records operation %{public}@ for record IDs %@", location, 0x16u);
  }

  v6 = objc_msgSend_recordIDs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) == 0;

  if (v9)
  {
    objc_msgSend_finishWithError_(self, v10, 0);
  }

  else
  {
    v11 = dispatch_group_create();
    v12 = [CKDArchiveRecordsURLRequest alloc];
    v15 = objc_msgSend_recordIDs(self, v13, v14);
    v17 = objc_msgSend_initWithOperation_recordIDsToArchive_(v12, v16, self, v15);

    objc_initWeak(location, self);
    objc_initWeak(&from, v17);
    dispatch_group_enter(v11);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2251D6420;
    v41[3] = &unk_278549608;
    objc_copyWeak(&v42, location);
    objc_msgSend_setRecordArchivedBlock_(v17, v18, v41);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2251D6498;
    v37[3] = &unk_278548AD0;
    objc_copyWeak(&v39, &from);
    objc_copyWeak(&v40, location);
    v19 = v11;
    v38 = v19;
    objc_msgSend_setCompletionBlock_(v17, v20, v37);
    objc_msgSend_setRequest_(self, v21, v17);
    v24 = objc_msgSend_container(self, v22, v23);
    objc_msgSend_performRequest_(v24, v25, v17);

    v28 = objc_msgSend_callbackQueue(self, v26, v27);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2251D6530;
    v36[3] = &unk_278545A00;
    v36[4] = self;
    dispatch_group_notify(v19, v28, v36);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
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