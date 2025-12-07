@interface CKDSerializeRecordModificationsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDSerializeRecordModificationsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_preflightRecords;
- (void)_serialize;
- (void)_setupTranslator;
@end

@implementation CKDSerializeRecordModificationsOperation

- (CKDSerializeRecordModificationsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = CKDSerializeRecordModificationsOperation;
  v9 = [(CKDDatabaseOperation *)&v17 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordsToSave(infoCopy, v7, v8);
    recordsToSave = v9->_recordsToSave;
    v9->_recordsToSave = v10;

    v14 = objc_msgSend_recordIDsToDelete(infoCopy, v12, v13);
    recordIDsToDelete = v9->_recordIDsToDelete;
    v9->_recordIDsToDelete = v14;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/serialize-record-modifications", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend__serialize(self, v14, v15);
    }

    else if (v4 == 4)
    {
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v10 = objc_msgSend_error(self, v8, v9);
      objc_msgSend_finishWithError_(self, v11, v10);
    }
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend__preflightRecords(self, v12, v13);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend__setupTranslator(self, v6, v7);
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
    v7.super_class = &OBJC_METACLASS___CKDSerializeRecordModificationsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_2785495E8[state - 2];
  }

  return v5;
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v23.receiver = self;
  v23.super_class = CKDSerializeRecordModificationsOperation;
  if (![(CKDOperation *)&v23 validateAgainstLiveContainer:containerCopy error:error])
  {
    goto LABEL_9;
  }

  v9 = objc_msgSend_entitlements(containerCopy, v7, v8);
  hasAllowRealTimeOperationsEntitlement = objc_msgSend_hasAllowRealTimeOperationsEntitlement(v9, v10, v11);

  if ((hasAllowRealTimeOperationsEntitlement & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = v13;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543362;
      v25 = v22;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Operation %{public}@ is not allowed to run without an entitlement", buf, 0xCu);

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBBF50];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *error = objc_msgSend_errorWithDomain_code_format_(v14, v18, v15, 8, @"Operation %@ is not allowed to run without an entitlement", v17);

LABEL_9:
    LOBYTE(error) = 0;
    goto LABEL_10;
  }

  LOBYTE(error) = 1;
LABEL_10:

  return error;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_serializeCompletionBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_serializeCompletionBlock(self, v8, v9);
    v13 = v10;
    if (errorCopy)
    {
      (*(v10 + 16))(v10, 0, errorCopy);
    }

    else
    {
      v14 = objc_msgSend_serializedModifications(self, v11, v12);
      (v13)[2](v13, v14, 0);
    }

    objc_msgSend_setSerializeCompletionBlock_(self, v15, 0);
  }

  v16.receiver = self;
  v16.super_class = CKDSerializeRecordModificationsOperation;
  [(CKDOperation *)&v16 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)_preflightRecords
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    selfCopy = self;
    v10 = objc_msgSend_recordsToSave(self, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v38, v43, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v39;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = objc_msgSend_valueStore(*(*(&v38 + 1) + 8 * v17), v13, v14);
          v42[0] = objc_opt_class();
          v42[1] = objc_opt_class();
          v42[2] = objc_opt_class();
          v42[3] = objc_opt_class();
          v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v42, 4);
          v22 = objc_msgSend_containsValueOfClasses_passingTest_(v18, v21, v20, &unk_28385D580);

          if (v22)
          {
            v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 12, @"CKDSerializeRecordModificationsOperation does not support records with asset values");
            objc_msgSend_setError_(selfCopy, v35, v34);

            v26 = v10;
            goto LABEL_12;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v38, v43, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v25 = objc_msgSend_stateTransitionGroup(selfCopy, v23, v24);
    dispatch_group_enter(v25);

    v26 = objc_opt_new();
    v29 = objc_msgSend_recordsToSave(selfCopy, v27, v28);
    objc_msgSend_setRecordsToSave_(v26, v30, v29);

    objc_msgSend_setShouldModifyRecordsInDatabase_(v26, v31, 0);
    v32 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2251D4A18;
    v37[3] = &unk_278548B60;
    v37[4] = selfCopy;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(selfCopy, v33, v32, v26, v37);
LABEL_12:
  }
}

- (void)_setupTranslator
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
  dispatch_group_enter(v10);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251D4D74;
  v13[3] = &unk_278549588;
  v13[4] = self;
  v14 = v4;
  v15 = v7;
  v11 = v4;
  objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(v11, v12, self, v13);
}

- (void)_serialize
{
  v120 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v82 = v3;
    v85 = objc_msgSend_recordsToSave(self, v83, v84);
    *buf = 134217984;
    v119 = objc_msgSend_count(v85, v86, v87);
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Packaging SaveRecord (%lu records)", buf, 0xCu);
  }

  v104 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v103 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v10 = objc_msgSend_recordsToSave(self, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v111, v117, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v112;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v112 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v111 + 1) + 8 * v15);
        v17 = objc_alloc_init(CKDPRealTimeMessageSaveRecord);
        v20 = objc_msgSend_translator(self, v18, v19);
        v22 = objc_msgSend_pRecordFromRecord_forCache_(v20, v21, v16, 1);

        if (!v22)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v74 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v99 = v74;
            v102 = objc_msgSend_recordID(v16, v100, v101);
            *buf = 138412290;
            v119 = v102;
            _os_log_error_impl(&dword_22506F000, v99, OS_LOG_TYPE_ERROR, "Internal error transforming record %@", buf, 0xCu);
          }

          v77 = MEMORY[0x277CBC560];
          v78 = *MEMORY[0x277CBBF50];
          v22 = objc_msgSend_recordID(v16, v75, v76);
          v80 = objc_msgSend_errorWithDomain_code_format_(v77, v79, v78, 1000, @"Internal error transforming record %@", v22);
          objc_msgSend_setError_(self, v81, v80);

          goto LABEL_50;
        }

        objc_msgSend_setRecord_(v17, v23, v22);
        objc_msgSend_addObject_(v104, v24, v17);
        v116 = objc_opt_class();
        v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, &v116, 1);
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = sub_2251D5774;
        v109[3] = &unk_2785495C8;
        v109[4] = self;
        v109[5] = v16;
        v27 = v103;
        v110 = v27;
        objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v16, v28, v26, v109);

        v31 = objc_msgSend_error(self, v29, v30);

        if (v31)
        {

          goto LABEL_50;
        }

        if (objc_msgSend_count(v27, v32, v33))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v34 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v36 = v34;
            v39 = objc_msgSend_count(v27, v37, v38);
            *buf = 134217984;
            v119 = v39;
            _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Found and packaged AssociatedMergeableDeltas (%lu deltas)", buf, 0xCu);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v35, &v111, v117, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v88 = v40;
    v91 = objc_msgSend_recordIDsToDelete(self, v89, v90);
    v94 = objc_msgSend_count(v91, v92, v93);
    *buf = 134217984;
    v119 = v94;
    _os_log_debug_impl(&dword_22506F000, v88, OS_LOG_TYPE_DEBUG, "Packaging DeleteRecordID (%lu recordIDs)", buf, 0xCu);
  }

  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v41, v42);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v45 = objc_msgSend_recordIDsToDelete(self, v43, v44);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v105, v115, 16);
  if (v47)
  {
    v48 = v47;
    v49 = *v106;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v106 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v105 + 1) + 8 * i);
        v52 = objc_alloc_init(CKDPRealTimeMessageDeleteRecordID);
        v55 = objc_msgSend_translator(self, v53, v54);
        v57 = objc_msgSend_pRecordIdentifierFromRecordID_(v55, v56, v51);

        objc_msgSend_setRecordIdentifier_(v52, v58, v57);
        objc_msgSend_addObject_(v10, v59, v52);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v60, &v105, v115, 16);
    }

    while (v48);
  }

  v17 = objc_alloc_init(CKDPRealTimeMessage);
  if (objc_msgSend_count(v104, v61, v62))
  {
    objc_msgSend_setSaveRecords_(v17, v63, v104);
  }

  else
  {
    objc_msgSend_setSaveRecords_(v17, v63, 0);
  }

  if (objc_msgSend_count(v10, v64, v65))
  {
    objc_msgSend_setDeleteRecordids_(v17, v66, v10);
  }

  else
  {
    objc_msgSend_setDeleteRecordids_(v17, v66, 0);
  }

  if (objc_msgSend_count(v103, v67, v68))
  {
    objc_msgSend_setAssociatedMergeableDeltas_(v17, v69, v103);
  }

  else
  {
    objc_msgSend_setAssociatedMergeableDeltas_(v17, v69, 0);
  }

  v22 = objc_msgSend_data(v17, v70, v71);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v72 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v95 = v72;
    v98 = objc_msgSend_length(v22, v96, v97);
    *buf = 134217984;
    v119 = v98;
    _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Total serialization of %lu bytes", buf, 0xCu);
  }

  objc_msgSend_setSerializedModifications_(self, v73, v22);
LABEL_50:
}

@end