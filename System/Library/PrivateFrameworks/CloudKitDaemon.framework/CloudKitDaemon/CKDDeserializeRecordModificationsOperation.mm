@interface CKDDeserializeRecordModificationsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDDeserializeRecordModificationsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_deserialize;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_postflightRecords;
- (void)_setupTranslator;
@end

@implementation CKDDeserializeRecordModificationsOperation

- (CKDDeserializeRecordModificationsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKDDeserializeRecordModificationsOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_serializedModifications(infoCopy, v7, v8);
    serializedModifications = v9->_serializedModifications;
    v9->_serializedModifications = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/deserialize-record-modifications", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

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
      objc_msgSend__postflightRecords(self, v14, v15);
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
    objc_msgSend__setupTranslator(self, v12, v13);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend__deserialize(self, v6, v7);
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
    v7.super_class = &OBJC_METACLASS___CKDDeserializeRecordModificationsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_2785495A8[state - 2];
  }

  return v5;
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v23.receiver = self;
  v23.super_class = CKDDeserializeRecordModificationsOperation;
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
  v7 = objc_msgSend_deserializeCompletionBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_deserializeCompletionBlock(self, v8, v9);
    v13 = v10;
    if (errorCopy)
    {
      (*(v10 + 16))(v10, 0, 0, errorCopy);
    }

    else
    {
      v14 = objc_msgSend_recordsToSave(self, v11, v12);
      v17 = objc_msgSend_recordIDsToDelete(self, v15, v16);
      (v13)[2](v13, v14, v17, 0);
    }

    objc_msgSend_setDeserializeCompletionBlock_(self, v18, 0);
  }

  v19.receiver = self;
  v19.super_class = CKDDeserializeRecordModificationsOperation;
  [(CKDOperation *)&v19 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)_setupTranslator
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
  dispatch_group_enter(v10);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251D2CCC;
  v13[3] = &unk_278549588;
  v13[4] = self;
  v14 = v4;
  v15 = v7;
  v11 = v4;
  objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(v11, v12, self, v13);
}

- (void)_deserialize
{
  v225 = *MEMORY[0x277D85DE8];
  v3 = [CKDPRealTimeMessage alloc];
  v6 = objc_msgSend_serializedModifications(self, v4, v5);
  v8 = objc_msgSend_initWithData_(v3, v7, v6);

  v9 = *MEMORY[0x277CBC878];
  if (!v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v153 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v153, OS_LOG_TYPE_ERROR, "CKDDeserializeRecordModificationsOperation is unable to deserialize its messages", buf, 2u);
    }

    v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v154, *MEMORY[0x277CBBF50], 1000, @"CKDDeserializeRecordModificationsOperation is unable to deserialize its messages");
    objc_msgSend_setError_(self, v155, v13);
    goto LABEL_96;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v9);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v160 = v10;
    v163 = objc_msgSend_saveRecords(v8, v161, v162);
    *buf = 134217984;
    v220 = objc_msgSend_count(v163, v164, v165);
    _os_log_debug_impl(&dword_22506F000, v160, OS_LOG_TYPE_DEBUG, "Unpackaging SaveRecords of %lu records", buf, 0xCu);
  }

  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12);
  v195 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15);
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  obj = objc_msgSend_saveRecords(v8, v16, v17);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v213, v224, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v214;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v214 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v213 + 1) + 8 * i);
        v26 = objc_msgSend_translator(self, v20, v21);
        v29 = objc_msgSend_record(v25, v27, v28);
        v212 = 0;
        v31 = objc_msgSend_recordFromPRecord_error_(v26, v30, v29, &v212);
        v32 = v212;

        if (v32)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v151 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v220 = v32;
            _os_log_error_impl(&dword_22506F000, v151, OS_LOG_TYPE_ERROR, "Error transforming record: %@", buf, 0xCu);
          }

          objc_msgSend_setError_(self, v152, v32);

          goto LABEL_95;
        }

        objc_msgSend_addObject_(v13, v33, v31);
        v36 = objc_msgSend_recordID(v31, v34, v35);
        objc_msgSend_setObject_forKeyedSubscript_(v195, v37, v31, v36);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v213, v224, 16);
    }

    while (v22);
  }

  v38 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v39 = MEMORY[0x277CBC830];
  v40 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v168 = v40;
    v171 = objc_msgSend_associatedMergeableDeltas(v8, v169, v170);
    v174 = objc_msgSend_count(v171, v172, v173);
    *buf = 134217984;
    v220 = v174;
    _os_log_debug_impl(&dword_22506F000, v168, OS_LOG_TYPE_DEBUG, "Unpackaging AssociatedMergeableDeltas with %lu deltas", buf, 0xCu);

    v38 = MEMORY[0x277CBC880];
  }

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  obj = objc_msgSend_associatedMergeableDeltas(v8, v41, v42);
  v188 = v13;
  v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v208, v223, 16);
  if (!v189)
  {
    goto LABEL_51;
  }

  v190 = *v209;
  *&v46 = 138412546;
  v184 = v46;
  v185 = v8;
  while (2)
  {
    v47 = 0;
    do
    {
      if (*v209 != v190)
      {
        objc_enumerationMutation(obj);
      }

      v192 = v47;
      v48 = *(*(&v208 + 1) + 8 * v47);
      v49 = objc_msgSend_translator(self, v44, v45, v184);
      v52 = objc_msgSend_recordIdentifier(v48, v50, v51);
      v207 = 0;
      v54 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v49, v53, v52, &v207);
      v55 = v207;

      if (v55)
      {
        if (*v38 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v166 = *v39;
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v220 = v55;
          _os_log_error_impl(&dword_22506F000, v166, OS_LOG_TYPE_ERROR, "Error transforming CKRecordID, %@", buf, 0xCu);
        }

        objc_msgSend_setError_(self, v167, v55);
        goto LABEL_94;
      }

      v58 = objc_msgSend_fieldIdentifier(v48, v56, v57);
      v61 = objc_msgSend_name(v58, v59, v60);

      v193 = objc_msgSend_objectForKeyedSubscript_(v195, v62, v54);
      if (v193)
      {
        v191 = v61;
        v65 = objc_msgSend_mergeableDeltas(v48, v63, v64);
        v68 = objc_msgSend_firstObject(v65, v66, v67);
        hasData = objc_msgSend_hasData(v68, v69, v70);

        if (hasData)
        {
          v61 = v191;
          v76 = objc_msgSend_objectForKeyedSubscript_(v193, v72, v191);
          if (!v76)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v79 = objc_msgSend_mergeableDeltas(v48, v72, v73);
          v82 = objc_msgSend_firstObject(v79, v80, v81);
          hasEncryptedData = objc_msgSend_hasEncryptedData(v82, v83, v84);

          v61 = v191;
          if (!hasEncryptedData || (objc_msgSend_encryptedValues(v193, v86, v87), v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v88, v89, v191), v90 = objc_claimAutoreleasedReturnValue(), v88, (v76 = v90) == 0))
          {
LABEL_44:
            if (*v38 != -1)
            {
              dispatch_once(v38, *MEMORY[0x277CBC878]);
            }

            v77 = v192;
            v125 = *v39;
            if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
            {
              *buf = v184;
              v220 = v61;
              v221 = 2112;
              v222 = v54;
              _os_log_error_impl(&dword_22506F000, v125, OS_LOG_TYPE_ERROR, "AssociatedMergeableDelta present for missing field '%@' in record %@", buf, 0x16u);
            }

            goto LABEL_49;
          }
        }

        v91 = objc_msgSend_translator(self, v74, v75);
        v94 = objc_msgSend_identifier(v48, v92, v93);
        v187 = v54;
        v97 = objc_msgSend_recordName(v54, v95, v96);
        v186 = v76;
        objc_msgSend_valueID(v76, v98, v99);
        v101 = v100 = v61;
        isEncrypted = objc_msgSend_isEncrypted(v101, v102, v103);
        v206 = 0;
        v106 = objc_msgSend_mergeableValueIDFromPMergeableValueIdentifier_recordName_fieldName_encrypted_error_(v91, v105, v94, v97, v100, isEncrypted, &v206);
        v55 = v206;

        if (v55)
        {
          if (*v38 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v8 = v185;
          v175 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v220 = v55;
            _os_log_error_impl(&dword_22506F000, v175, OS_LOG_TYPE_ERROR, "Error transforming CKMergeableValueID, %@", buf, 0xCu);
          }

          objc_msgSend_setError_(self, v176, v55);

          v54 = v187;
LABEL_94:

          goto LABEL_95;
        }

        v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v110 = objc_msgSend_mergeableDeltas(v48, v108, v109);
        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v111, &v202, v218, 16);
        if (v112)
        {
          v115 = v112;
          v116 = *v203;
          while (2)
          {
            for (j = 0; j != v115; ++j)
            {
              if (*v203 != v116)
              {
                objc_enumerationMutation(v110);
              }

              v118 = *(*(&v202 + 1) + 8 * j);
              v119 = objc_msgSend_translator(self, v113, v114);
              v201 = 0;
              v121 = objc_msgSend_mergeableDeltaFromPDelta_valueID_error_(v119, v120, v118, v106, &v201);
              v122 = v201;

              if (v122)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v13 = v188;
                v156 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v220 = v106;
                  _os_log_error_impl(&dword_22506F000, v156, OS_LOG_TYPE_ERROR, "Error transforming CKMergeableDelta with ID %@", buf, 0xCu);
                }

                objc_msgSend_setError_(self, v157, v122);

                v8 = v185;
                goto LABEL_95;
              }

              objc_msgSend_addObject_(v107, v123, v121);
            }

            v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v113, &v202, v218, 16);
            if (v115)
            {
              continue;
            }

            break;
          }
        }

        objc_msgSend_addUnmergedDeltas_(v186, v124, v107);
        v8 = v185;
        v54 = v187;
        v13 = v188;
        v39 = MEMORY[0x277CBC830];
        v38 = MEMORY[0x277CBC880];
        v61 = v191;
        v77 = v192;
      }

      else
      {
        if (*v38 != -1)
        {
          dispatch_once(v38, *MEMORY[0x277CBC878]);
        }

        v77 = v192;
        v78 = *v39;
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v220 = v54;
          _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "AssociatedMergeableDelta present for missing record %@", buf, 0xCu);
        }
      }

LABEL_49:

      v47 = v77 + 1;
    }

    while (v47 != v189);
    v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v208, v223, 16);
    if (v189)
    {
      continue;
    }

    break;
  }

LABEL_51:

  objc_msgSend_setRecordsToSave_(self, v126, v13);
  if (*v38 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v127 = *v39;
  if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
  {
    v177 = v127;
    v180 = objc_msgSend_deleteRecordids(v8, v178, v179);
    v183 = objc_msgSend_count(v180, v181, v182);
    *buf = 134217984;
    v220 = v183;
    _os_log_debug_impl(&dword_22506F000, v177, OS_LOG_TYPE_DEBUG, "Unpackaging DeleteRecordIDs of %lu recordIDs", buf, 0xCu);
  }

  obj = objc_msgSend_array(MEMORY[0x277CBEB18], v128, v129);
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v130 = v8;
  v133 = objc_msgSend_deleteRecordids(v8, v131, v132);
  v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v134, &v197, v217, 16);
  if (v135)
  {
    v138 = v135;
    v139 = *v198;
    while (2)
    {
      for (k = 0; k != v138; ++k)
      {
        if (*v198 != v139)
        {
          objc_enumerationMutation(v133);
        }

        v141 = *(*(&v197 + 1) + 8 * k);
        v142 = objc_msgSend_translator(self, v136, v137);
        v145 = objc_msgSend_recordIdentifier(v141, v143, v144);
        v196 = 0;
        v147 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v142, v146, v145, &v196);
        v148 = v196;

        if (v148)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v8 = v130;
          v158 = *MEMORY[0x277CBC830];
          v13 = v188;
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v220 = v148;
            _os_log_error_impl(&dword_22506F000, v158, OS_LOG_TYPE_ERROR, "Error transforming recordID: %@", buf, 0xCu);
          }

          objc_msgSend_setError_(self, v159, v148);

          goto LABEL_95;
        }

        objc_msgSend_addObject_(obj, v149, v147);
      }

      v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v136, &v197, v217, 16);
      if (v138)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_setRecordIDsToDelete_(self, v150, obj);
  v8 = v130;
  v13 = v188;
LABEL_95:

LABEL_96:
}

- (void)_postflightRecords
{
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);

    v11 = objc_opt_new();
    objc_msgSend_setShouldFetchAssetContent_(v11, v12, 0);
    objc_msgSend_setShouldFetchMergeableValues_(v11, v13, 0);
    v14 = objc_opt_class();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2251D3E24;
    v16[3] = &unk_278548B60;
    v16[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v15, v14, v11, v16);
  }
}

@end