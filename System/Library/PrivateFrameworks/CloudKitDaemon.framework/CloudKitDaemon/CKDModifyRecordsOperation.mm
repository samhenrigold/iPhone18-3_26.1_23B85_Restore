@interface CKDModifyRecordsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_hasHandlerInState:(unint64_t)state;
- (BOOL)_needsSigningPCS;
- (BOOL)_prepareRecordsForSave;
- (BOOL)_topoSortRecords;
- (BOOL)isOperationType:(int)type;
- (BOOL)makeStateTransition;
- (BOOL)needsUserKeySyncToPopulateServiceIdentity;
- (BOOL)retryPCSFailures;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDDecryptRecordsOperation)recordDecryptOperation;
- (CKDModifyRecordsOperation)initWithOperationInfo:(id)info container:(id)container;
- (CKDProtocolTranslator)translator;
- (id)_createModifyRequestWithRecordsToSave:(id)save recordsToDelete:(id)delete recordsToDeleteToEtags:(id)etags recordIDsToDeleteToSigningPCSIdentity:(id)identity handlersByRecordID:(id)d sendMergeableDeltas:(BOOL)deltas;
- (id)_prepareAssetsForUpload;
- (id)_setBoundaryKeyOnAssetsToUpload:(id)upload;
- (id)_topoSortRecordsForHandlers:(id)handlers;
- (id)activityCreate;
- (id)analyticsPayload;
- (id)handlerForSaveWithRecord:(id)record;
- (id)relevantZoneIDs;
- (id)requestedFieldsByRecordIDForRecords:(id)records;
- (int)operationType;
- (void)_applySideEffects;
- (void)_batchFetchAssetRecordsForRereferencing;
- (void)_clearProtectionDataIfNotEntitled;
- (void)_continueRecordsModify;
- (void)_determineEnvironment;
- (void)_didCompleteRecordFetchOperation:(id)operation assetArrayByRecordID:(id)d;
- (void)_enumerateHandlersInState:(unint64_t)state withBlock:(id)block;
- (void)_fetchContainerScopedUserID;
- (void)_fetchGlobalPerUserBoundaryKey;
- (void)_fetchPackageRecordsForRereferencing;
- (void)_fetchRecordPCSData;
- (void)_fetchRecordsForRereferencing;
- (void)_fetchSharePCSData;
- (void)_fetchShareParticipants;
- (void)_fetchUserPublicKeys;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleDecryptionFailure:(id)failure forRecordID:(id)d;
- (void)_handleMergeableDeltaSavedForRecordID:(id)d key:(id)key result:(id)result;
- (void)_handleRecordDeleted:(id)deleted handler:(id)handler responseCode:(id)code;
- (void)_handleRecordSaved:(id)saved handler:(id)handler etag:(id)etag dateStatistics:(id)statistics expirationDate:(id)date responseCode:(id)code keysAssociatedWithETag:(id)tag recordForOplockFailure:(id)self0 serverRecord:(id)self1;
- (void)_handleReplaceDeltasRequest:(id)request result:(id)result;
- (void)_markRecordHandlersAsUploaded;
- (void)_performCallbacksForAtomicZoneHandlers:(id)handlers;
- (void)_performCallbacksForNonAtomicZoneHandlers:(id)handlers;
- (void)_performHandlerCallbacks;
- (void)_prepareForUpload;
- (void)_prepareParentPCS;
- (void)_reallyHandleRecordSaved:(id)saved handler:(id)handler etag:(id)etag dateStatistics:(id)statistics expirationDate:(id)date responseCode:(id)code keysAssociatedWithETag:(id)tag recordForOplockFailure:(id)self0 decryptedServerRecord:(id)self1;
- (void)_reportRecordsInFlight;
- (void)_synchronizeUserKeyRegistryIfNeeded;
- (void)_uploadAssets;
- (void)_uploadMergeableDeltas;
- (void)_verifyRecordEncryption;
- (void)assetArray:(id)array didFetchRecord:(id)record error:(id)error;
- (void)callbackWithMetadata:(id)metadata error:(id)error;
- (void)deleteCallbackWithMetadata:(id)metadata error:(id)error;
- (void)finishDecryption;
- (void)finishWithError:(id)error;
- (void)main;
- (void)packageArray:(id)array didFetchRecord:(id)record error:(id)error;
- (void)saveCallbackWithMetadata:(id)metadata error:(id)error;
@end

@implementation CKDModifyRecordsOperation

- (CKDModifyRecordsOperation)initWithOperationInfo:(id)info container:(id)container
{
  v220 = *MEMORY[0x277D85DE8];
  v214.receiver = self;
  v214.super_class = CKDModifyRecordsOperation;
  infoCopy = info;
  containerCopy = container;
  v192 = [(CKDDatabaseOperation *)&v214 initWithOperationInfo:infoCopy container:?];
  if (v192)
  {
    v5 = objc_opt_new();
    modifyHandlersByZoneID = v192->_modifyHandlersByZoneID;
    v192->_modifyHandlersByZoneID = v5;

    v192->_originatingFromDaemon = objc_msgSend_originatingFromDaemon(infoCopy, v7, v8);
    v192->_markAsParticipantNeedsNewInvitationToken = objc_msgSend_markAsParticipantNeedsNewInvitationToken(infoCopy, v9, v10);
    v192->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v11, v12);
    v189 = objc_opt_new();
    v210 = 0;
    v211 = &v210;
    v212 = 0x2020000000;
    v213 = 0;
    v15 = objc_msgSend_recordsToSave(infoCopy, v13, v14);
    v192->_hasRecordsToSave = objc_msgSend_count(v15, v16, v17) != 0;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    obj = v15;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v206, v219, 16);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v187 = *v207;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v207 != v187)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v206 + 1) + 8 * i);
          v26 = objc_msgSend_recordID(v25, v19, v20);
          v29 = objc_msgSend_zoneID(v26, v27, v28);

          v32 = objc_msgSend_objectForKeyedSubscript_(v192->_modifyHandlersByZoneID, v30, v29);
          if (!v32)
          {
            v32 = objc_opt_new();
            objc_msgSend_setObject_forKeyedSubscript_(v192->_modifyHandlersByZoneID, v33, v32, v29);
          }

          v34 = objc_msgSend_handlerForSaveWithRecord_(v192, v31, v25);
          objc_msgSend_setBatchRank_(v34, v35, v22);
          objc_msgSend_addObject_(v32, v36, v34);
          v39 = objc_msgSend_assetUUIDToExpectedProperties(infoCopy, v37, v38);
          objc_msgSend_setAssetUUIDToExpectedProperties_(v34, v40, v39);

          v43 = objc_msgSend_recordID(v25, v41, v42);
          objc_msgSend_setObject_forKeyedSubscript_(v189, v44, v34, v43);

          v47 = objc_msgSend_size(v25, v45, v46);
          ++v211[3];
          v218 = objc_opt_class();
          v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, &v218, 1);
          v205[0] = MEMORY[0x277D85DD0];
          v205[1] = 3221225472;
          v205[2] = sub_2251FCBE0;
          v205[3] = &unk_278549F10;
          v205[4] = &v210;
          objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v25, v50, v49, v205);

          v23 += v47;
          ++v22;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v206, v219, 16);
      }

      while (v21);
    }

    else
    {
      v23 = 0;
    }

    v188 = v23;

    v53 = objc_msgSend_recordIDsToDelete(infoCopy, v51, v52);
    v192->_hasRecordsToDelete = objc_msgSend_count(v53, v54, v55) != 0;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v186 = v53;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v56, &v201, v217, 16);
    if (v59)
    {
      v60 = *v202;
      v61 = *MEMORY[0x277CBC020];
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v202 != v60)
          {
            objc_enumerationMutation(v186);
          }

          v63 = *(*(&v201 + 1) + 8 * j);
          v64 = objc_msgSend_zoneID(v63, v57, v58);
          v67 = objc_msgSend_objectForKeyedSubscript_(v192->_modifyHandlersByZoneID, v65, v64);
          if (!v67)
          {
            v67 = objc_opt_new();
            objc_msgSend_setObject_forKeyedSubscript_(v192->_modifyHandlersByZoneID, v68, v67, v64);
          }

          v69 = objc_msgSend_handlerForDeleteWithRecordID_(v192, v66, v63);
          v72 = objc_msgSend_recordIDsToDeleteToEtags(infoCopy, v70, v71);
          v74 = objc_msgSend_objectForKeyedSubscript_(v72, v73, v63);
          objc_msgSend_setEtag_(v69, v75, v74);

          objc_msgSend_addObject_(v67, v76, v69);
          objc_msgSend_setObject_forKeyedSubscript_(v189, v77, v69, v63);
          if (objc_msgSend_markAsParticipantNeedsNewInvitationToken(infoCopy, v78, v79))
          {
            v82 = objc_msgSend_recordName(v63, v80, v81);
            isEqualToString = objc_msgSend_isEqualToString_(v82, v83, v61);

            if (isEqualToString)
            {
              v192->_requestNeedsUserPublicKeys = 1;
            }
          }

          v85 = objc_msgSend_size(v63, v80, v81);

          v188 += v85;
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v57, &v201, v217, 16);
      }

      while (v59);
    }

    objc_storeStrong(&v192->_handlersByRecordID, v189);
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v182 = objc_msgSend_allValues(v192->_modifyHandlersByZoneID, v86, v87);
    v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v182, v88, &v197, v216, 16);
    if (v184)
    {
      v183 = *v198;
      v89 = *MEMORY[0x277CBC120];
      do
      {
        for (k = 0; k != v184; ++k)
        {
          if (*v198 != v183)
          {
            objc_enumerationMutation(v182);
          }

          v90 = *(*(&v197 + 1) + 8 * k);
          v91 = objc_opt_new();
          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          v92 = v90;
          v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v193, v215, 16);
          if (v96)
          {
            v97 = *v194;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v194 != v97)
                {
                  objc_enumerationMutation(v92);
                }

                v99 = *(*(&v193 + 1) + 8 * m);
                v100 = objc_msgSend_recordID(v99, v94, v95);
                v102 = objc_msgSend_objectForKeyedSubscript_(v91, v101, v100);

                if (v102)
                {
                  v105 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v103, v89, 1017, @"You can't pass multiple instances of the same record to a CKModifyRecordsOperation");
                  objc_msgSend_setState_(v99, v106, 12);
                  objc_msgSend_setError_(v99, v107, v105);
                  v110 = objc_msgSend_recordID(v99, v108, v109);
                  v112 = objc_msgSend_objectForKeyedSubscript_(v91, v111, v110);

                  objc_msgSend_setState_(v112, v113, 12);
                  objc_msgSend_setError_(v112, v114, v105);
                }

                else
                {
                  v105 = objc_msgSend_recordID(v99, v103, v104);
                  objc_msgSend_setObject_forKeyedSubscript_(v91, v115, v99, v105);
                }
              }

              v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v193, v215, 16);
            }

            while (v96);
          }
        }

        v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v182, v116, &v197, v216, 16);
      }

      while (v184);
    }

    v119 = objc_msgSend_conflictLosersToResolveByRecordID(infoCopy, v117, v118);
    conflictLosersToResolveByRecordID = v192->_conflictLosersToResolveByRecordID;
    v192->_conflictLosersToResolveByRecordID = v119;

    v123 = objc_msgSend_pluginFieldsForRecordDeletesByID(infoCopy, v121, v122);
    pluginFieldsForRecordDeletesByID = v192->_pluginFieldsForRecordDeletesByID;
    v192->_pluginFieldsForRecordDeletesByID = v123;

    v127 = objc_msgSend_recordsToSave(infoCopy, v125, v126);
    if (objc_msgSend_count(v127, v128, v129))
    {
      v192->_haveOutstandingHandlers = 1;
    }

    else
    {
      v132 = objc_msgSend_recordIDsToDelete(infoCopy, v130, v131);
      v192->_haveOutstandingHandlers = objc_msgSend_count(v132, v133, v134) != 0;
    }

    v192->_savePolicy = objc_msgSend_savePolicy(infoCopy, v135, v136);
    v139 = objc_msgSend_clientChangeTokenData(infoCopy, v137, v138);
    clientChangeTokenData = v192->_clientChangeTokenData;
    v192->_clientChangeTokenData = v139;

    v192->_shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(infoCopy, v141, v142);
    v192->_atomic = objc_msgSend_atomic(infoCopy, v143, v144);
    v192->_retryPCSFailures = objc_msgSend_shouldSkipPCSRetryBehavior(infoCopy, v145, v146) ^ 1;
    v192->_shouldReportRecordsInFlight = objc_msgSend_shouldReportRecordsInFlight(infoCopy, v147, v148);
    v151 = objc_msgSend_createSerialQueue(v192, v149, v150);
    modifyRecordsQueue = v192->_modifyRecordsQueue;
    v192->_modifyRecordsQueue = v151;

    v192->_shouldModifyRecordsInDatabase = objc_msgSend_shouldModifyRecordsInDatabase(infoCopy, v153, v154);
    v192->_alwaysFetchPCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(infoCopy, v155, v156);
    v159 = objc_msgSend_assetUUIDToExpectedProperties(infoCopy, v157, v158);
    assetUUIDToExpectedProperties = v192->_assetUUIDToExpectedProperties;
    v192->_assetUUIDToExpectedProperties = v159;

    v163 = objc_msgSend_packageUUIDToExpectedProperties(infoCopy, v161, v162);
    packageUUIDToExpectedProperties = v192->_packageUUIDToExpectedProperties;
    v192->_packageUUIDToExpectedProperties = v163;

    v167 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v165, v166);
    v170 = objc_msgSend_maximumMergeableDeltaRequestSize(v167, v168, v169);

    v173 = v192->_atomic || v188 < v170 && v211[3] < *MEMORY[0x277CBBFA0];
    v192->_includeMergeableDeltasInModifyRecordsRequest = v173;
    if (*MEMORY[0x277CBC810] == 1)
    {
      v174 = objc_msgSend_unitTestOverrides(v192, v171, v172);
      v176 = objc_msgSend_objectForKeyedSubscript_(v174, v175, @"ForceSeparateRequestForMergeableDeltaUpload");
      v179 = objc_msgSend_BOOLValue(v176, v177, v178);

      if (v179)
      {
        v192->_includeMergeableDeltasInModifyRecordsRequest = 0;
      }
    }

    _Block_object_dispose(&v210, 8);
  }

  return v192;
}

- (BOOL)retryPCSFailures
{
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, a2, v2), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v4, v5, @"DontRetryPCSFailures"), v6 = objc_claimAutoreleasedReturnValue(), v6, v4, v6))
  {
    return 0;
  }

  else
  {
    return self->_retryPCSFailures;
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)_hasHandlerInState:(unint64_t)state
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = objc_msgSend_modifyHandlersByZoneID(self, a2, state);
  v7 = objc_msgSend_allValues(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v29, v34, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = v13;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v33, 16);
        if (v16)
        {
          v19 = v16;
          v20 = *v26;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(v14);
              }

              if (objc_msgSend_state(*(*(&v25 + 1) + 8 * j), v17, v18) == state)
              {

                v23 = 1;
                goto LABEL_19;
              }
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v33, 16);
            if (v19)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v29, v34, 16);
      v23 = 0;
    }

    while (v10);
  }

  else
  {
    v23 = 0;
  }

LABEL_19:

  return v23;
}

- (void)_enumerateHandlersInState:(unint64_t)state withBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = objc_msgSend_modifyHandlersByZoneID(self, v6, v7);
    v12 = objc_msgSend_allValues(v9, v10, v11);

    obj = v12;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v34, v39, 16);
    if (v14)
    {
      v15 = v14;
      v29 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = v17;
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v30, v38, 16);
          if (v20)
          {
            v23 = v20;
            v24 = *v31;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(v18);
                }

                v26 = *(*(&v30 + 1) + 8 * j);
                if (objc_msgSend_state(v26, v21, v22) == state)
                {
                  blockCopy[2](blockCopy, v26);
                }
              }

              v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v30, v38, 16);
            }

            while (v23);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v34, v39, 16);
      }

      while (v15);
    }
  }
}

- (int)operationType
{
  if (self->_hasRecordsToSave)
  {
    if (!self->_hasRecordsToDelete)
    {
      return 210;
    }
  }

  else if (self->_hasRecordsToDelete)
  {
    return 214;
  }

  return 0;
}

- (BOOL)isOperationType:(int)type
{
  if (type == 214)
  {
    v5 = 489;
  }

  else
  {
    if (type != 210)
    {
      v9 = v3;
      v10 = v4;
      v8.receiver = self;
      v8.super_class = CKDModifyRecordsOperation;
      v6 = [(CKDOperation *)&v8 isOperationType:?];
      return v6 & 1;
    }

    v5 = 488;
  }

  v6 = *(&self->super.super.super.super.isa + v5);
  return v6 & 1;
}

- (id)handlerForSaveWithRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_modifyHandlerWithShare_operation_(CKDModifyShareHandler, v5, recordCopy, self);
  }

  else
  {
    objc_msgSend_modifyHandlerWithRecord_operation_(CKDModifyRecordHandler, v5, recordCopy, self);
  }
  v6 = ;

  return v6;
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
    v11[2] = sub_2251FD350;
    v11[3] = &unk_278548B60;
    v11[4] = selfCopy;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(selfCopy, v8, v7, v6, v11);
  }

  v9 = selfCopy->_decryptOperation;
  objc_sync_exit(selfCopy);

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

- (BOOL)makeStateTransition
{
  v79 = *MEMORY[0x277D85DE8];
  objc_msgSend__performHandlerCallbacks(self, a2, v2);
  switch(objc_msgSend_state(self, v4, v5))
  {
    case 1:
      objc_msgSend_setState_(self, v6, 2);
      objc_msgSend__determineEnvironment(self, v32, v33);
      return 1;
    case 2:
      objc_msgSend_setState_(self, v6, 3);
      objc_msgSend__fetchContainerScopedUserID(self, v34, v35);
      return 1;
    case 3:
      objc_msgSend_setState_(self, v6, 4);
      objc_msgSend__fetchUserPublicKeys(self, v17, v18);
      return 1;
    case 4:
      objc_msgSend_setState_(self, v6, 5);
      objc_msgSend__applySideEffects(self, v30, v31);
      return 1;
    case 5:
      objc_msgSend_setState_(self, v6, 6);

      return MEMORY[0x2821F9670](self, sel__topoSortRecords, v12);
    case 6:
      objc_msgSend_setState_(self, v6, 7);
      objc_msgSend__synchronizeUserKeyRegistryIfNeeded(self, v47, v48);
      return 1;
    case 7:
    case 18:
      goto LABEL_2;
    case 8:
      objc_msgSend_setState_(self, v6, 10);
      objc_msgSend__fetchSharePCSData(self, v53, v54);
      return 1;
    case 9:
      objc_msgSend_setState_(self, v6, 11);
      objc_msgSend__fetchRecordsForRereferencing(self, v15, v16);
      return 1;
    case 10:
      objc_msgSend_setState_(self, v6, 9);
      objc_msgSend__fetchRecordPCSData(self, v51, v52);
      return 1;
    case 11:
      objc_msgSend_setState_(self, v6, 12);
      objc_msgSend__prepareForUpload(self, v10, v11);
      return 1;
    case 12:
      objc_msgSend_setState_(self, v6, 13);
      objc_msgSend__uploadAssets(self, v13, v14);
      return 1;
    case 13:
      if (objc_msgSend_shouldOnlySaveAssetContent(self, v6, v7))
      {
        goto LABEL_23;
      }

      objc_msgSend_setState_(self, v27, 14);

      return MEMORY[0x2821F9670](self, sel__prepareRecordsForSave, v68);
    case 14:
      v19 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
      shouldDecryptRecordsBeforeSave = objc_msgSend_shouldDecryptRecordsBeforeSave(v19, v20, v21);

      if (!shouldDecryptRecordsBeforeSave)
      {
        goto LABEL_12;
      }

      objc_msgSend_setState_(self, v6, 15);
      objc_msgSend__verifyRecordEncryption(self, v23, v24);
      return 1;
    case 15:
LABEL_12:
      if (!objc_msgSend_shouldReportRecordsInFlight(self, v6, v7))
      {
        goto LABEL_14;
      }

      objc_msgSend_setState_(self, v6, 16);
      objc_msgSend__reportRecordsInFlight(self, v25, v26);
      break;
    case 16:
LABEL_14:
      if (objc_msgSend_shouldModifyRecordsInDatabase(self, v6, v7))
      {
        objc_msgSend_setState_(self, v27, 17);
        objc_msgSend__continueRecordsModify(self, v28, v29);
      }

      else
      {
LABEL_23:
        objc_msgSend_setState_(self, v27, 19);
        objc_msgSend__markRecordHandlersAsUploaded(self, v45, v46);
      }

      break;
    case 17:
      if (objc_msgSend__hasHandlerInState_(self, v6, 10) && (v38 = objc_msgSend_saveAttempts(self, v36, v37), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v39, v40), v41 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend_PCSRetryCount(v41, v42, v43), v41, v38 <= v44))
      {
        objc_msgSend_setState_(self, v36, 18);
        objc_msgSend__fetchShareParticipants(self, v69, v70);
      }

      else
      {
        objc_msgSend_setState_(self, v36, 19);
      }

      break;
    case 19:
      objc_msgSend_setState_(self, v6, 20);
      objc_msgSend__uploadMergeableDeltas(self, v49, v50);
      break;
    case 20:
      if (objc_msgSend_haveOutstandingHandlers(self, v6, v7) && (v57 = objc_msgSend_saveAttempts(self, v55, v56), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v58, v59), v60 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend_PCSRetryCount(v60, v61, v62), v60, v57 <= v63))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v71 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v72 = v71;
          v75 = objc_msgSend_modifyHandlersByZoneID(self, v73, v74);
          v77 = 138412290;
          v78 = v75;
          _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_INFO, "Records needed PCS info re-fetched: %@", &v77, 0xCu);
        }

LABEL_2:
        objc_msgSend_setState_(self, v6, 8);
        objc_msgSend__prepareParentPCS(self, v8, v9);
      }

      else
      {
        objc_msgSend_setState_(self, v55, 0xFFFFFFFFLL);
        v66 = objc_msgSend_error(self, v64, v65);
        objc_msgSend_finishWithError_(self, v67, v66);
      }

      break;
    default:
      return 1;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 0x13)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDModifyRecordsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854A360[state - 2];
  }

  return v5;
}

- (void)callbackWithMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  errorCopy = error;
  LODWORD(error) = objc_msgSend_isDelete(metadataCopy, v8, v9);
  v12 = objc_msgSend_callbackQueue(self, v10, v11);
  if (error)
  {
    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v14 = sub_2251FDA04;
  }

  else
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v14 = sub_2251FDA14;
  }

  v13[2] = v14;
  v13[3] = &unk_278546990;
  v13[4] = self;
  v13[5] = metadataCopy;
  v13[6] = errorCopy;
  v15 = errorCopy;
  v16 = metadataCopy;
  dispatch_async(v12, v13);
}

- (void)saveCallbackWithMetadata:(id)metadata error:(id)error
{
  v82 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  errorCopy = error;
  if (objc_msgSend_saveCompletionBlockCalled(metadataCopy, v9, v10))
  {
    v71 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v74 = objc_msgSend_record(metadataCopy, v72, v73);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v71, v75, a2, self, @"CKDModifyRecordsOperation.m", 647, @"saveCallbackWithMetadata:error: called twice on %@", v74);
  }

  v13 = objc_msgSend_serverRecord(metadataCopy, v11, v12);
  v16 = objc_msgSend_streamingAssetRequestOptions(self, v14, v15);
  objc_msgSend_setStreamingAssetRequestOptions_(v13, v17, v16);

  if (errorCopy)
  {
    v20 = objc_msgSend_saveCompletionBlock(self, v18, v19);

    if (!v20)
    {
      goto LABEL_13;
    }

    v23 = objc_msgSend_saveCompletionBlock(self, v21, v22);
    v26 = objc_msgSend_record(metadataCopy, v24, v25);
    v29 = objc_msgSend_recordID(v26, v27, v28);
    (v23)[2](v23, v29, 0, 0, errorCopy);
    goto LABEL_12;
  }

  v32 = objc_msgSend_error(metadataCopy, v18, v19);
  if (v32)
  {
    goto LABEL_9;
  }

  v33 = objc_msgSend_saveProgressBlock(self, v30, v31);

  if (v33)
  {
    v32 = objc_msgSend_saveProgressBlock(self, v34, v35);
    v38 = objc_msgSend_record(metadataCopy, v36, v37);
    v41 = objc_msgSend_recordID(v38, v39, v40);
    (v32)[2](v32, v41, 1.0);

LABEL_9:
  }

  v42 = objc_msgSend_saveCompletionBlock(self, v34, v35);

  if (!v42)
  {
    goto LABEL_13;
  }

  v23 = objc_msgSend_saveCompletionBlock(self, v21, v22);
  v26 = objc_msgSend_record(metadataCopy, v43, v44);
  v29 = objc_msgSend_recordID(v26, v45, v46);
  v49 = objc_msgSend_record(metadataCopy, v47, v48);
  v52 = objc_msgSend_serverRecord(metadataCopy, v50, v51);
  v55 = objc_msgSend_error(metadataCopy, v53, v54);
  (v23)[2](v23, v29, v49, v52, v55);

LABEL_12:
LABEL_13:
  if (objc_msgSend_didAttemptZoneWideShareKeyRoll(metadataCopy, v21, v22))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v63 = v58;
      v66 = objc_msgSend_operationID(self, v64, v65);
      *buf = 138543618;
      v79 = v66;
      v80 = 2114;
      v81 = 0x28387E400;
      _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", buf, 0x16u);

      if (errorCopy)
      {
        goto LABEL_18;
      }
    }

    else if (errorCopy)
    {
LABEL_18:
      v61 = errorCopy;
LABEL_21:
      v67 = v61;
      v68 = objc_msgSend_dugongKeyRollAnalyticsPayloadWithError_(self, v62, v61);
      AnalyticsSendEvent();

      goto LABEL_22;
    }

    v61 = objc_msgSend_error(metadataCopy, v59, v60);
    goto LABEL_21;
  }

LABEL_22:
  if (!errorCopy)
  {
    v69 = objc_msgSend_error(metadataCopy, v56, v57);

    if (!v69)
    {
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_2251FDE78;
      v76[3] = &unk_278549F38;
      v76[4] = self;
      v77 = metadataCopy;
      objc_msgSend_updateCloudKitMetrics_(self, v70, v76);
    }
  }

  objc_msgSend_setSaveCompletionBlockCalled_(metadataCopy, v56, 1);
}

- (void)deleteCallbackWithMetadata:(id)metadata error:(id)error
{
  metadataCopy = metadata;
  errorCopy = error;
  v9 = objc_msgSend_deleteCompletionBlock(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_deleteCompletionBlock(self, v10, v11);
    v17 = objc_msgSend_recordID(metadataCopy, v13, v14);
    if (errorCopy)
    {
      (v12)[2](v12, v17, errorCopy);
    }

    else
    {
      v18 = objc_msgSend_error(metadataCopy, v15, v16);
      (v12)[2](v12, v17, v18);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_error(metadataCopy, v10, v11);

    if (!v19 && (objc_msgSend_shouldOnlySaveAssetContent(self, v20, v21) & 1) == 0)
    {
      objc_msgSend_updateCloudKitMetrics_(self, v22, &unk_28385D600);
    }
  }
}

- (void)_performCallbacksForNonAtomicZoneHandlers:(id)handlers
{
  v63 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v7 = objc_msgSend_saveAttempts(self, v5, v6);
  v10 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v8, v9);
  v13 = objc_msgSend_PCSRetryCount(v10, v11, v12);
  v14 = v7 <= v13;

  if (*MEMORY[0x277CBC810] == 1)
  {
    v17 = objc_msgSend_unitTestOverrides(self, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"PreventRecordModifyRetries");

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v7 <= v13;
    }

    v14 = v20;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v21 = handlersCopy;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v58, v62, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v59;
    do
    {
      v28 = 0;
      do
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v58 + 1) + 8 * v28);
        v30 = objc_msgSend_state(v29, v24, v25);
        if (v30 <= 8)
        {
          if (v30 < 8)
          {
            goto LABEL_21;
          }

          if (v30 == 8)
          {
            goto LABEL_20;
          }

LABEL_26:
          v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
          v35 = objc_msgSend_state(v29, v33, v34);
          v38 = objc_msgSend_state(self, v36, v37);
          v41 = objc_msgSend_modifyHandlersByZoneID(self, v39, v40);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v42, a2, self, @"CKDModifyRecordsOperation.m", 759, @"Unexpected handler state in default zone %ld %ld %@", v35, v38, v41);

          goto LABEL_22;
        }

        if (v30 <= 12)
        {
          if ((v30 - 9) < 2)
          {
LABEL_21:
            objc_msgSend_setHaveOutstandingHandlers_(self, v24, 1);
            goto LABEL_22;
          }

          if ((v30 - 11) < 2)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }

        if (v30 != 13)
        {
          if (v30 == 14)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }

        if (!v14)
        {
LABEL_20:
          objc_msgSend_setState_(v29, v24, 14);
          objc_msgSend_callbackWithMetadata_error_(self, v31, v29, 0);
          goto LABEL_22;
        }

        objc_msgSend_setError_(v29, v24, 0);
        if (objc_msgSend_isDelete(v29, v43, v44))
        {
          v47 = objc_msgSend__needsSigningPCS(self, v45, v46) == 0;
          v49 = 5;
          v50 = 2;
          goto LABEL_33;
        }

        if ((objc_msgSend_needsRefetch(v29, v45, v46) & 1) == 0)
        {
          v47 = objc_msgSend_isShare(v29, v51, v52) == 0;
          v49 = 2;
          v50 = 10;
LABEL_33:
          if (v47)
          {
            objc_msgSend_setState_(v29, v48, v49);
          }

          else
          {
            objc_msgSend_setState_(v29, v48, v50);
          }

          goto LABEL_36;
        }

        objc_msgSend_setState_(v29, v51, 9);
LABEL_36:
        objc_msgSend_setNeedsRefetch_(v29, v53, 0);
        objc_msgSend_setHaveOutstandingHandlers_(self, v54, 1);
        objc_msgSend_updateCloudKitMetrics_(self, v55, &unk_28385D620);
LABEL_22:
        ++v28;
      }

      while (v26 != v28);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v58, v62, 16);
      v26 = v56;
    }

    while (v56);
  }
}

- (void)_performCallbacksForAtomicZoneHandlers:(id)handlers
{
  v153 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v7 = objc_msgSend_saveAttempts(self, v5, v6);
  v10 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v8, v9);
  v13 = objc_msgSend_PCSRetryCount(v10, v11, v12);
  v130 = v7 <= v13;

  if (*MEMORY[0x277CBC810] == 1)
  {
    v16 = objc_msgSend_unitTestOverrides(self, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"PreventRecordModifyRetries");

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7 <= v13;
    }

    v20 = v19;
    v130 = v20;
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v21 = handlersCopy;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v145, v152, 16);
  obj = v21;
  if (v23)
  {
    v26 = v23;
    v27 = 0;
    v28 = 0;
    v29 = *v146;
    do
    {
      v30 = 0;
      do
      {
        if (*v146 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = objc_msgSend_state(*(*(&v145 + 1) + 8 * v30), v24, v25);
        if (v31 <= 0xD)
        {
          if (((1 << v31) & 0x6FF) != 0)
          {
            objc_msgSend_setHaveOutstandingHandlers_(self, v24, 1);
          }

          else if (((1 << v31) & 0x2800) != 0)
          {
            v27 |= v130;
            v28 |= !v130;
          }

          else if (v31 == 12)
          {
            v28 = 1;
          }
        }

        ++v30;
      }

      while (v26 != v30);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v145, v152, 16);
      v26 = v32;
    }

    while (v32);
    v21 = obj;

    if (v28)
    {
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v35 = obj;
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v141, v151, 16);
      if (!v37)
      {
        goto LABEL_82;
      }

      v40 = v37;
      v41 = *v142;
      v131 = *MEMORY[0x277CBC120];
      while (1)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v142 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v141 + 1) + 8 * i);
          v44 = objc_msgSend_state(v43, v38, v39);
          if (v44 > 8)
          {
            if ((v44 - 9) >= 4)
            {
              if (v44 != 13)
              {
                if (v44 == 14)
                {
                  continue;
                }

                goto LABEL_39;
              }

              objc_msgSend_setState_(v43, v38, 14);
              v68 = MEMORY[0x277CBC560];
              v71 = objc_msgSend_error(v43, v69, v70);
              v74 = objc_msgSend_recordID(v43, v72, v73);
              v54 = objc_msgSend_errorWithDomain_code_error_format_(v68, v75, v131, 2055, v71, @"Record %@ will not be saved but can be retried as is", v74);

              goto LABEL_41;
            }
          }

          else if (v44 >= 8)
          {
            if (v44 == 8)
            {
              objc_msgSend_setState_(v43, v38, 14);
              objc_msgSend_callbackWithMetadata_error_(self, v45, v43, 0);
              continue;
            }

LABEL_39:
            v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v38, v39);
            v60 = objc_msgSend_state(v43, v58, v59);
            v63 = objc_msgSend_state(self, v61, v62);
            v66 = objc_msgSend_modifyHandlersByZoneID(self, v64, v65);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v67, a2, self, @"CKDModifyRecordsOperation.m", 870, @"Unexpected handler state in failed atomic zone %ld %ld %@", v60, v63, v66);

            continue;
          }

          objc_msgSend_setState_(v43, v38, 14);
          v50 = objc_msgSend_error(v43, v46, v47);
          if (!v50)
          {
            v51 = MEMORY[0x277CBC560];
            v52 = objc_msgSend_recordID(v43, v48, v49);
            v54 = objc_msgSend_errorWithDomain_code_format_(v51, v53, v131, 2024, @"Record %@ will not be saved because of previous error in atomic zone", v52);

LABEL_41:
            v50 = objc_msgSend_CKClientSuitableError(v54, v55, v56);
          }

          objc_msgSend_callbackWithMetadata_error_(self, v48, v43, v50);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v141, v151, 16);
        if (!v40)
        {
          goto LABEL_82;
        }
      }
    }

    if (v27)
    {
      objc_msgSend_setHaveOutstandingHandlers_(self, v33, 1);
      objc_msgSend_updateCloudKitMetrics_(self, v76, &unk_28385D640);
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v77 = obj;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v137, v150, 16);
      if (!v79)
      {
        goto LABEL_82;
      }

      v81 = v79;
      v82 = *v138;
      while (1)
      {
        for (j = 0; j != v81; ++j)
        {
          if (*v138 != v82)
          {
            objc_enumerationMutation(v77);
          }

          v84 = *(*(&v137 + 1) + 8 * j);
          objc_msgSend_setError_(v84, v80, 0);
          v87 = objc_msgSend_state(v84, v85, v86);
          if (v87 >= 0xC && v87 != 13)
          {
            v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v88, v89);
            v99 = objc_msgSend_state(v84, v97, v98);
            v102 = objc_msgSend_state(self, v100, v101);
            v105 = objc_msgSend_modifyHandlersByZoneID(self, v103, v104);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v106, a2, self, @"CKDModifyRecordsOperation.m", 911, @"Unexpected handler state in retryable atomic zone %ld %ld %@", v99, v102, v105);

            continue;
          }

          if (objc_msgSend_isDelete(v84, v88, v89))
          {
            if (!objc_msgSend__needsSigningPCS(self, v91, v92))
            {
              objc_msgSend_setState_(v84, v93, 5);
              continue;
            }
          }

          else
          {
            if (objc_msgSend_needsRefetch(v84, v91, v92))
            {
              objc_msgSend_setState_(v84, v94, 9);
              continue;
            }

            if (objc_msgSend_isShare(v84, v94, v95))
            {
              objc_msgSend_setState_(v84, v93, 10);
              continue;
            }
          }

          objc_msgSend_setState_(v84, v93, 2);
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v137, v150, 16);
        if (!v81)
        {
          goto LABEL_82;
        }
      }
    }
  }

  else
  {
  }

  if ((objc_msgSend_haveOutstandingHandlers(self, v33, v34) & 1) == 0)
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v107 = v21;
    v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v133, v149, 16);
    if (v109)
    {
      v112 = v109;
      v113 = *v134;
      do
      {
        for (k = 0; k != v112; ++k)
        {
          if (*v134 != v113)
          {
            objc_enumerationMutation(v107);
          }

          v115 = *(*(&v133 + 1) + 8 * k);
          v116 = objc_msgSend_state(v115, v110, v111);
          if (v116 != 14)
          {
            if (v116 == 8)
            {
              objc_msgSend_setState_(v115, v110, 14);
              objc_msgSend_callbackWithMetadata_error_(self, v117, v115, 0);
            }

            else
            {
              v118 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v110, v111);
              v121 = objc_msgSend_state(v115, v119, v120);
              v124 = objc_msgSend_state(self, v122, v123);
              v127 = objc_msgSend_modifyHandlersByZoneID(self, v125, v126);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v118, v128, a2, self, @"CKDModifyRecordsOperation.m", 927, @"Unexpected handler state in failed atomic zone %ld %ld %@", v121, v124, v127);
            }
          }
        }

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v133, v149, 16);
      }

      while (v112);
    }

LABEL_82:
    v21 = obj;
  }
}

- (void)_performHandlerCallbacks
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_setHaveOutstandingHandlers_(self, a2, 0);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = objc_msgSend_modifyHandlersByZoneID(self, v3, v4, 0);
  v8 = objc_msgSend_allKeys(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v32, v36, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = objc_msgSend_modifyHandlersByZoneID(self, v11, v12);
        v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v16);

        v22 = objc_msgSend_atomic(self, v20, v21);
        v25 = objc_msgSend_container(self, v23, v24);
        objc_msgSend_clientSDKVersion(v25, v26, v27);
        if (CKLinkCheck48d9728e8c354416a38f82379cbb35e3())
        {

          if ((v22 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v16, v28, v29);

          if (((isDefaultRecordZoneID ^ 1) & v22 & 1) == 0)
          {
LABEL_8:
            objc_msgSend__performCallbacksForNonAtomicZoneHandlers_(self, v30, v19);
            goto LABEL_11;
          }
        }

        objc_msgSend__performCallbacksForAtomicZoneHandlers_(self, v30, v19);
LABEL_11:

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v32, v36, 16);
    }

    while (v13);
  }
}

- (void)_determineEnvironment
{
  v19 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  if (objc_msgSend_isAppleInternalInstall(v19, v4, v5))
  {
    v8 = objc_msgSend_container(self, v6, v7);
    v11 = objc_msgSend_cachedEnvironment(v8, v9, v10);

    if (v11 == -1)
    {
      objc_initWeak(&location, self);
      v14 = objc_msgSend_stateTransitionGroup(self, v12, v13);
      dispatch_group_enter(v14);

      v17 = objc_msgSend_container(self, v15, v16);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2251FEEB0;
      v20[3] = &unk_278549F80;
      objc_copyWeak(&v21, &location);
      objc_msgSend_fetchServerEnvironmentForOperation_withCompletionHandler_(v17, v18, self, v20);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

- (void)_fetchUserPublicKeys
{
  v56 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_requestNeedsUserPublicKeys(self, a2, v2))
  {
    v6 = objc_msgSend_userPublicKeys(self, v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (!v9)
    {
      v10 = MEMORY[0x277CBC880];
      v11 = MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = MEMORY[0x277CBC830];
      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v35 = v13;
        v38 = objc_msgSend_operationID(self, v36, v37);
        *buf = 138543362;
        v51 = v38;
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Fetching user public keys for operation %{public}@", buf, 0xCu);
      }

      v16 = objc_msgSend_container(self, v14, v15);
      v19 = objc_msgSend_pcsManager(v16, v17, v18);
      v49 = 0;
      v21 = objc_msgSend_copyAllPublicKeysForService_withError_(v19, v20, 0, &v49);
      v22 = v49;

      v25 = objc_msgSend_count(v21, v23, v24);
      v26 = *v11;
      v27 = *v10;
      if (!v25 || v22)
      {
        if (v27 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v26);
        }

        v30 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v22;
          _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Error fetching current service public keys for user: %@", buf, 0xCu);
        }

        v33 = objc_msgSend_error(self, v31, v32);

        if (!v33)
        {
          objc_msgSend_setError_(self, v34, v22);
        }
      }

      else
      {
        if (v27 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v26);
        }

        v28 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v39 = v28;
          v42 = objc_msgSend_count(v21, v40, v41);
          if (objc_msgSend_count(v21, v43, v44) == 1)
          {
            v47 = &stru_28385ED00;
          }

          else
          {
            v47 = @"s";
          }

          v48 = objc_msgSend_operationID(self, v45, v46);
          *buf = 134218498;
          v51 = v42;
          v52 = 2114;
          v53 = v47;
          v54 = 2114;
          v55 = v48;
          _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Fetched %lu user public key%{public}@ for operation %{public}@", buf, 0x20u);
        }

        objc_msgSend_setUserPublicKeys_(self, v29, v21);
      }
    }
  }
}

- (void)_fetchContainerScopedUserID
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_stateTransitionGroup(self, v3, v4);
  dispatch_group_enter(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251FF2FC;
  v7[3] = &unk_278549318;
  objc_copyWeak(&v8, &location);
  objc_msgSend_fetchContainerScopedUserID_(self, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_applySideEffects
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2251FF3E0;
  v2[3] = &unk_278549FA8;
  v2[4] = self;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, a2, 0, v2);
}

- (id)_topoSortRecordsForHandlers:(id)handlers
{
  v76 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v5 = objc_opt_new();
  v8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
  v9 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v10 = handlersCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v70, v75, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v71;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v70 + 1) + 8 * i);
        v20 = objc_msgSend_record(v18, v13, v14);
        if (v20)
        {
          objc_msgSend_addObject_(v5, v19, v20);
          objc_msgSend_setObject_forKey_(v8, v21, v18, v20);
        }

        else
        {
          objc_msgSend_addObject_(v9, v19, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v70, v75, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v5, v22, v23))
  {
    v24 = objc_alloc_init(MEMORY[0x277CBC5C0]);
    v69 = 0;
    v26 = objc_msgSend_addRecords_error_(v24, v25, v5, &v69);
    v27 = v69;
    v30 = v27;
    if (v26)
    {
      v68 = v27;
      v31 = objc_msgSend_recordsByTopologicalSortWithError_(v24, v28, &v68);
      v32 = v68;

      if (v31)
      {
        v61 = v10;
        v62 = v32;
        v63 = v24;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v35 = v31;
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v64, v74, 16);
        if (v37)
        {
          v39 = v37;
          v40 = 0;
          v41 = *v65;
          do
          {
            v42 = v35;
            v43 = 0;
            v44 = v40;
            do
            {
              if (*v65 != v41)
              {
                objc_enumerationMutation(v42);
              }

              v45 = objc_msgSend_objectForKey_(v8, v38, *(*(&v64 + 1) + 8 * v43));
              v40 = v44 + 1;
              objc_msgSend_setBatchRank_(v45, v46, v44);
              objc_msgSend_addObject_(v9, v47, v45);

              ++v43;
              ++v44;
            }

            while (v39 != v43);
            v35 = v42;
            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v38, &v64, v74, 16);
          }

          while (v39);
        }

        v48 = v9;
        v32 = v62;
        v24 = v63;
        v10 = v61;
      }

      else
      {
        v54 = MEMORY[0x277CBC560];
        v55 = *MEMORY[0x277CBC120];
        v56 = objc_msgSend_localizedDescription(v32, v33, v34);
        v58 = objc_msgSend_errorWithDomain_code_format_(v54, v57, v55, 1007, @"Invalid list of records: %@", v56);
        objc_msgSend_setError_(self, v59, v58);

        v35 = 0;
        v48 = 0;
      }
    }

    else
    {
      v49 = MEMORY[0x277CBC560];
      v50 = *MEMORY[0x277CBC120];
      v35 = objc_msgSend_localizedDescription(v27, v28, v29);
      v52 = objc_msgSend_errorWithDomain_code_format_(v49, v51, v50, 1007, @"Invalid list of records: %@", v35);
      objc_msgSend_setError_(self, v53, v52);

      v48 = 0;
      v32 = v30;
    }
  }

  else
  {
    v48 = v9;
  }

  return v48;
}

- (BOOL)_topoSortRecords
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  v10 = objc_msgSend_maintainRecordUploadOrder(v7, v8, v9);

  if (*MEMORY[0x277CBC810])
  {
    v13 = objc_msgSend_unitTestOverrides(self, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"SkipToposortingRecords");
    v16 = v15 != 0;

    if ((v16 | v10))
    {
      goto LABEL_15;
    }
  }

  else if (v10)
  {
LABEL_15:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v48 = v46;
      v51 = objc_msgSend_container(self, v49, v50);
      v54 = objc_msgSend_containerID(v51, v52, v53);
      v57 = objc_msgSend_ckShortDescription(v54, v55, v56);
      *buf = 138543362;
      v63 = v57;
      _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Skipping topo sort of all zones for container %{public}@", buf, 0xCu);
    }

    return 1;
  }

  v17 = objc_msgSend_container(self, v11, v12);
  v20 = objc_msgSend_containerID(v17, v18, v19);
  shouldToposortInContainerID = objc_msgSend__shouldToposortInContainerID_(self, v21, v20);

  if (!shouldToposortInContainerID)
  {
    goto LABEL_15;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v25 = objc_msgSend_modifyHandlersByZoneID(self, v23, v24, 0);
  v28 = objc_msgSend_allKeys(v25, v26, v27);

  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v58, v64, 16);
  if (v30)
  {
    v33 = v30;
    v34 = *v59;
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v59 != v34)
        {
          objc_enumerationMutation(v28);
        }

        v36 = *(*(&v58 + 1) + 8 * i);
        v37 = objc_msgSend_modifyHandlersByZoneID(self, v31, v32);
        v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v36);
        v41 = objc_msgSend__topoSortRecordsForHandlers_(self, v40, v39);

        if (!v41)
        {

          return 0;
        }

        v44 = objc_msgSend_modifyHandlersByZoneID(self, v42, v43);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v41, v36);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v58, v64, 16);
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)_fetchShareParticipants
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2251FFEE8;
  v29[3] = &unk_278549FA8;
  v4 = v3;
  v30 = v4;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v5, 10, v29);
  if (objc_msgSend_count(v4, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v14 = objc_msgSend_allKeys(v4, v12, v13);
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Fetching participants for shares: %@", buf, 0xCu);
    }

    v15 = objc_msgSend_stateTransitionGroup(self, v9, v10);
    dispatch_group_enter(v15);

    v16 = objc_opt_new();
    v19 = objc_msgSend_allKeys(v4, v17, v18);
    objc_msgSend_setRecordIDs_(v16, v20, v19);

    v31 = *MEMORY[0x277CBC040];
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, &v31, 1);
    objc_msgSend_setDesiredKeys_(v16, v23, v22);

    v24 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2251FFF6C;
    v26[3] = &unk_278548C48;
    v27 = v4;
    selfCopy = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v25, v24, v16, v26);
  }
}

- (void)_synchronizeUserKeyRegistryIfNeeded
{
  v30 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(self, a2, v2))
  {
    v6 = objc_msgSend_topmostParentOperation(self, v4, v5);
    v9 = objc_msgSend_operationID(v6, v7, v8);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v29 = v9;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Will attempt user key sync for operation %{public}@.", buf, 0xCu);
    }

    v13 = objc_msgSend_stateTransitionGroup(self, v11, v12);
    dispatch_group_enter(v13);

    objc_initWeak(buf, self);
    objc_msgSend_noteOperationWillWaitOnPCS(self, v14, v15);
    v18 = objc_msgSend_container(self, v16, v17);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2252005A8;
    v24[3] = &unk_278549FD0;
    objc_copyWeak(&v27, buf);
    v22 = v9;
    v25 = v22;
    selfCopy = self;
    objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v21, v23, 0, 0, 0, 1, 0x28387E940, v22, v24);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

- (BOOL)needsUserKeySyncToPopulateServiceIdentity
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_handlersByRecordID(self, a2, v2);
  v7 = objc_msgSend_allValues(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v18;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        if (objc_msgSend_requiresPCS(*(*(&v17 + 1) + 8 * v14), v10, v11))
        {

          v16.receiver = self;
          v16.super_class = CKDModifyRecordsOperation;
          return [(CKDDatabaseOperation *)&v16 needsUserKeySyncToPopulateServiceIdentity];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (void)_prepareParentPCS
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_saveAttempts(self, a2, v2);
  objc_msgSend_setSaveAttempts_(self, v5, (v4 + 1));
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_225074060;
  v45 = sub_2250735BC;
  v46 = objc_opt_new();
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_225200E88;
  v40[3] = &unk_278549FF8;
  v40[4] = &v41;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v6, 2, v40);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v42[5];
  v9 = 0;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v36, v47, 16);
  if (v12)
  {
    v13 = *v37;
    v14 = MEMORY[0x277CBC810];
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v17 = objc_msgSend_handlersByRecordID(self, v10, v11, v36);
        v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v16);

        if (v19)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          objc_msgSend_setObject_forKeyedSubscript_(v9, v20, v19, v16);
          v23 = objc_msgSend_record(v19, v21, v22);
          objc_msgSend_setWantsChainPCS_(v23, v24, 1);

          if (*v14 == 1)
          {
            v27 = objc_msgSend_unitTestOverrides(self, v25, v26);
            v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"SkipChainPCS");
            v30 = v29 == 0;

            if (!v30)
            {
              v33 = objc_msgSend_record(v19, v31, v32);
              objc_msgSend_setWantsChainPCS_(v33, v34, 0);
            }
          }
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v36, v47, 16);
    }

    while (v12);
  }

  objc_msgSend_setParentsByRecordID_(self, v35, v9);
  _Block_object_dispose(&v41, 8);
}

- (void)_fetchSharePCSData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225201118;
  v18[3] = &unk_27854A020;
  v18[4] = self;
  v4 = v3;
  v19 = v4;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v5, 1, v18);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v20, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_fetchSharePCSData(*(*(&v14 + 1) + 8 * v13++), v9, v10, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v20, 16);
    }

    while (v11);
  }
}

- (BOOL)_needsSigningPCS
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v7, v8, v9))
  {
    v12 = objc_msgSend_databaseScope(self, v10, v11) == 3;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_fetchRecordPCSData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225201448;
  v18[3] = &unk_27854A020;
  v18[4] = self;
  v4 = v3;
  v19 = v4;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v5, 2, v18);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v20, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_fetchRecordPCSData(*(*(&v14 + 1) + 8 * v13++), v9, v10, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v20, 16);
    }

    while (v11);
  }
}

- (void)assetArray:(id)array didFetchRecord:(id)record error:(id)error
{
  v214 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  recordCopy = record;
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  v186 = errorCopy;
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v171 = v11;
    v172 = objc_opt_class();
    v173 = NSStringFromClass(v172);
    v176 = objc_msgSend_ckShortDescription(self, v174, v175);
    v179 = objc_msgSend_recordID(recordCopy, v177, v178);
    v180 = v179;
    *buf = 138544642;
    v181 = @" Error was ";
    v203 = v173;
    v182 = &stru_28385ED00;
    v204 = 2048;
    if (!errorCopy)
    {
      v181 = &stru_28385ED00;
    }

    selfCopy = self;
    if (errorCopy)
    {
      v182 = errorCopy;
    }

    v206 = 2114;
    v207 = v176;
    v208 = 2112;
    v209 = v179;
    v210 = 2114;
    v211 = v181;
    v212 = 2112;
    v213 = v182;
    _os_log_debug_impl(&dword_22506F000, v171, OS_LOG_TYPE_DEBUG, "Record fetcher <%{public}@: %p; %{public}@> fetched a record with ID %@.%{public}@%@", buf, 0x3Eu);
  }

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = arrayCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v196, v201, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v197;
    v184 = *MEMORY[0x277CBC120];
    v185 = *v197;
    selfCopy2 = self;
    v183 = recordCopy;
    do
    {
      v16 = 0;
      v188 = v14;
      do
      {
        if (*v197 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v196 + 1) + 8 * v16);
        v20 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v18, v19);
        v191 = objc_msgSend_objectForKey_(v20, v21, v17);

        if (!errorCopy)
        {
          v32 = objc_msgSend_assetReference(v17, v22, v23);
          v35 = objc_msgSend_fieldName(v32, v33, v34);
          v37 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v36, v35);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = recordCopy;
            v39 = v37;
            v40 = v37;
            v43 = objc_msgSend_reReferenceItemID(v40, v41, v42);
            objc_msgSend_setReReferenceItemID_(v17, v44, v43);
            v47 = objc_msgSend_signature(v40, v45, v46);
            v50 = objc_msgSend_assetReference(v17, v48, v49);
            v53 = objc_msgSend_fileSignature(v50, v51, v52);
            isEqualToData = objc_msgSend_isEqualToData_(v47, v54, v53);

            v58 = objc_msgSend_assetRereferenceInfo(v17, v56, v57);
            v61 = v58;
            if (isEqualToData)
            {
              PropertiesWithAsset = objc_msgSend_validateAndSetRecordFetchPropertiesWithAsset_(v58, v59, v40);

              if ((PropertiesWithAsset & 1) == 0)
              {
                v65 = objc_msgSend_assetRereferenceInfo(v17, v63, v64);
                v68 = objc_msgSend_error(v65, v66, v67);

                v15 = v185;
                errorCopy = v186;
                v14 = v188;
                if (!v68)
                {
                  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v69, v184, 1, @"the referenced asset %@ has missing information", v40);
                  goto LABEL_35;
                }

LABEL_41:

                v30 = v39;
                recordCopy = v38;
                self = selfCopy2;
                goto LABEL_47;
              }

LABEL_33:
              v15 = v185;
              errorCopy = v186;
LABEL_40:
              v14 = v188;
              goto LABEL_41;
            }

            v103 = objc_msgSend_error(v58, v59, v60);

            if (v103)
            {
              goto LABEL_33;
            }

            v123 = MEMORY[0x277CBC560];
            v109 = objc_msgSend_assetReference(v17, v104, v105);
            v112 = objc_msgSend_fileSignature(v109, v124, v125);
            v128 = objc_msgSend_signature(v40, v126, v127);
            v130 = objc_msgSend_errorWithDomain_code_format_(v123, v129, v184, 1, @"the referencing asset's signature %@ and the referenced asset's signature %@ don't match", v112, v128);
            v133 = objc_msgSend_assetRereferenceInfo(v17, v131, v132);
            objc_msgSend_setError_(v133, v134, v130);

            v15 = v185;
            errorCopy = v186;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v70 = v37;
              v192 = 0u;
              v193 = 0u;
              v194 = 0u;
              v195 = 0u;
              v190 = v70;
              v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v190, v71, &v192, v200, 16);
              if (v72)
              {
                v73 = v72;
                v74 = *v193;
                while (2)
                {
                  for (i = 0; i != v73; ++i)
                  {
                    if (*v193 != v74)
                    {
                      objc_enumerationMutation(v190);
                    }

                    v76 = *(*(&v192 + 1) + 8 * i);
                    v79 = objc_msgSend_signature(v76, v77, v78);
                    v82 = objc_msgSend_assetReference(v17, v80, v81);
                    v85 = objc_msgSend_fileSignature(v82, v83, v84);
                    v87 = objc_msgSend_isEqualToData_(v79, v86, v85);

                    if (v87)
                    {
                      v114 = objc_msgSend_reReferenceItemID(v76, v88, v89);
                      objc_msgSend_setReReferenceItemID_(v17, v115, v114);
                      v118 = objc_msgSend_assetRereferenceInfo(v17, v116, v117);
                      v120 = objc_msgSend_validateAndSetRecordFetchPropertiesWithAsset_(v118, v119, v76);

                      if (v120)
                      {
                        v99 = v190;
                        errorCopy = v186;
                        self = selfCopy2;
                        recordCopy = v183;
                        v15 = v185;
                        v14 = v188;
                      }

                      else
                      {
                        v135 = objc_msgSend_assetRereferenceInfo(v17, v121, v122);
                        v138 = objc_msgSend_error(v135, v136, v137);

                        errorCopy = v186;
                        self = selfCopy2;
                        recordCopy = v183;
                        v15 = v185;
                        v14 = v188;
                        if (!v138)
                        {
                          v140 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v139, v184, 1, @"the referenced asset %@ has missing information", v76);
                          v143 = objc_msgSend_assetRereferenceInfo(v17, v141, v142);
                          objc_msgSend_setError_(v143, v144, v140);
                        }

                        v99 = v190;
                      }

                      goto LABEL_45;
                    }
                  }

                  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v190, v90, &v192, v200, 16);
                  if (v73)
                  {
                    continue;
                  }

                  break;
                }
              }

              v93 = objc_msgSend_assetRereferenceInfo(v17, v91, v92);
              v96 = objc_msgSend_error(v93, v94, v95);

              errorCopy = v186;
              self = selfCopy2;
              recordCopy = v183;
              v15 = v185;
              v14 = v188;
              if (!v96)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v97 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_22506F000, v97, OS_LOG_TYPE_ERROR, "re-referenced asset signature not found in source asset array", buf, 2u);
                }

                v99 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v98, v184, 3011, @"Re-referenced asset signature not found in source asset array");
                v76 = objc_msgSend_assetRereferenceInfo(v17, v100, v101);
                objc_msgSend_setError_(v76, v102, v99);
LABEL_45:
              }

              v30 = v190;

              goto LABEL_47;
            }

            v38 = recordCopy;
            v106 = MEMORY[0x277CBC560];
            v39 = v37;
            v107 = objc_opt_class();
            v40 = NSStringFromClass(v107);
            objc_msgSend_errorWithDomain_code_format_(v106, v108, v184, 1, @"Can't handle fieldValue %@", v40);
            v109 = LABEL_35:;
            v112 = objc_msgSend_assetRereferenceInfo(v17, v110, v111);
            objc_msgSend_setError_(v112, v113, v109);
          }

          goto LABEL_40;
        }

        v24 = objc_msgSend_assetRereferenceInfo(v17, v22, v23);
        v27 = objc_msgSend_error(v24, v25, v26);

        if (v27)
        {
          goto LABEL_48;
        }

        v30 = objc_msgSend_assetRereferenceInfo(v17, v28, v29);
        objc_msgSend_setError_(v30, v31, errorCopy);
LABEL_47:

LABEL_48:
        v145 = objc_msgSend_assetRereferenceInfo(v17, v28, v29);
        v148 = objc_msgSend_error(v145, v146, v147);

        if (v148)
        {
          v151 = objc_msgSend_assetRereferenceInfo(v17, v149, v150);
          v154 = objc_msgSend_destinationFieldName(v151, v152, v153);

          if (v154)
          {
            v157 = objc_msgSend_rereferencedAssetArrayByFieldname(v191, v155, v156);

            if (!v157)
            {
              v160 = objc_opt_new();
              objc_msgSend_setRereferencedAssetArrayByFieldname_(v191, v161, v160);
            }

            v162 = objc_msgSend_rereferencedAssetArrayByFieldname(v191, v158, v159);
            v164 = objc_msgSend_objectForKeyedSubscript_(v162, v163, v154);

            if (!v164)
            {
              v164 = objc_opt_new();
              v168 = objc_msgSend_rereferencedAssetArrayByFieldname(v191, v166, v167);
              objc_msgSend_setObject_forKeyedSubscript_(v168, v169, v164, v154);
            }

            objc_msgSend_addObject_(v164, v165, v17);
          }
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v170, &v196, v201, 16);
    }

    while (v14);
  }
}

- (void)packageArray:(id)array didFetchRecord:(id)record error:(id)error
{
  v117 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  recordCopy = record;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = arrayCopy;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v16 = objc_msgSend_recordID(recordCopy, v14, v15);
      *buf = 138412546;
      v114 = errorCopy;
      v115 = 2112;
      v116 = v16;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Encountered error %@ when fetching record with recordID %@ for package cloning", buf, 0x16u);
    }
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v11 = arrayCopy;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v10, &v107, v112, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v108;
      v90 = *MEMORY[0x277CBC120];
      v91 = *v108;
      v93 = recordCopy;
      v94 = arrayCopy;
      selfCopy = self;
      do
      {
        v22 = 0;
        v23 = v11;
        v95 = v20;
        do
        {
          if (*v108 != v21)
          {
            objc_enumerationMutation(v23);
          }

          v24 = *(*(&v107 + 1) + 8 * v22);
          v25 = objc_msgSend_packageReference(v24, v18, v19, errorCopy);
          v102 = objc_msgSend_fieldName(v25, v26, v27);
          v29 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v28, v102);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v97 = v29;
            v98 = v22;
            v32 = v29;
            v33 = MEMORY[0x277CBEB18];
            v36 = objc_msgSend_assets(v32, v34, v35);
            v39 = objc_msgSend_count(v36, v37, v38);
            v101 = objc_msgSend_arrayWithCapacity_(v33, v40, v39);

            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v96 = v32;
            obj = objc_msgSend_assets(v32, v41, v42);
            v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v103, v111, 16);
            v45 = v24;
            if (v44)
            {
              v46 = v44;
              v47 = 0;
              v100 = *v104;
              do
              {
                v48 = 0;
                v49 = v47;
                do
                {
                  if (*v104 != v100)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v50 = *(*(&v103 + 1) + 8 * v48);
                  v51 = objc_alloc(MEMORY[0x277CBC1B0]);
                  v54 = objc_msgSend_recordID(v25, v52, v53);
                  v57 = objc_msgSend_databaseScope(v25, v55, v56);
                  v60 = objc_msgSend_signature(v50, v58, v59);
                  v62 = objc_msgSend_initWithExistingRecordID_databaseScope_fieldName_fileSignature_(v51, v61, v54, v57, v102, v60);

                  objc_msgSend_setIsPackageMember_(v62, v63, 1);
                  v64 = objc_alloc(MEMORY[0x277CBC190]);
                  v66 = objc_msgSend_initWithAssetReference_(v64, v65, v62);
                  v69 = objc_msgSend_reReferenceItemID(v50, v67, v68);
                  objc_msgSend_setReReferenceItemID_(v66, v70, v69);
                  v47 = v49 + 1;
                  objc_msgSend_setArrayIndex_(v66, v71, v49);
                  v74 = objc_msgSend_boundaryKey(v45, v72, v73);
                  objc_msgSend_setBoundaryKey_(v66, v75, v74);

                  objc_msgSend_addObject_(v101, v76, v66);
                  ++v48;
                  v49 = v47;
                }

                while (v46 != v48);
                v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v77, &v103, v111, 16);
              }

              while (v46);
            }

            v78 = v45;
            v79 = v101;
            objc_msgSend_setAssets_(v78, v80, v101);
            v81 = v93;
            v23 = v94;
            v21 = v91;
            selfCopy2 = selfCopy;
            v20 = v95;
            v83 = v96;
            v29 = v97;
            v22 = v98;
          }

          else
          {
            v81 = recordCopy;
            selfCopy2 = self;
            objc_msgSend_handlersByAssetNeedingRecordFetch(self, v30, v31);
            v85 = v84 = v23;
            v83 = objc_msgSend_objectForKey_(v85, v86, v24);

            v23 = v84;
            v79 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v87, v90, 3011, 0, @"One or more referenced asset do not exist");
            objc_msgSend_setError_(v83, v88, v79);
          }

          ++v22;
          self = selfCopy2;
          recordCopy = v81;
        }

        while (v22 != v20);
        v11 = v23;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v18, &v107, v112, 16);
      }

      while (v20);
    }
  }
}

- (void)_didCompleteRecordFetchOperation:(id)operation assetArrayByRecordID:(id)d
{
  v97 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  v10 = objc_msgSend_error(operationCopy, v8, v9);

  if (!v10)
  {
    v77 = operationCopy;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v13 = objc_msgSend_keyEnumerator(dCopy, v11, v12);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v82, v96, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v83;
      v78 = *MEMORY[0x277CBC120];
      v79 = v13;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v83 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = objc_msgSend_objectForKeyedSubscript_(dCopy, v16, *(*(&v82 + 1) + 8 * i));
          if (objc_msgSend_count(v20, v21, v22))
          {
            v25 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v23, v24);
            v28 = objc_msgSend_firstObject(v20, v26, v27);
            v30 = objc_msgSend_objectForKey_(v25, v29, v28);

            v33 = objc_msgSend_error(v30, v31, v32);

            if (!v33)
            {
              v36 = dCopy;
              selfCopy = self;
              v38 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v34, v35);
              v41 = objc_msgSend_rereferencedAssetArrayByFieldname(v30, v39, v40);
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v80[2] = sub_22520286C;
              v80[3] = &unk_27854A048;
              v42 = v38;
              v81 = v42;
              objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v41, v43, v80);

              if (objc_msgSend_count(v42, v44, v45))
              {
                objc_msgSend_setState_(v30, v46, 12);
                v47 = MEMORY[0x277CBC560];
                v94 = @"FailedAssetsByFieldName";
                v95 = v42;
                v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, &v95, &v94, 1);
                v51 = objc_msgSend_errorWithDomain_code_userInfo_format_(v47, v50, v78, 3011, v49, @"One or more referenced asset do not exist");
                objc_msgSend_setError_(v30, v52, v51);
              }

              self = selfCopy;
              dCopy = v36;
              v13 = v79;
            }
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v82, v96, 16);
      }

      while (v17);
    }

    operationCopy = v77;
  }

  v53 = objc_msgSend_error(operationCopy, v11, v12);

  v54 = MEMORY[0x277CBC880];
  v55 = MEMORY[0x277CBC830];
  if (v53)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *v55;
    if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
    {
      v59 = v56;
      v62 = objc_msgSend_error(operationCopy, v60, v61);
      *buf = 138412290;
      v87 = v62;
      _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Error fetching records: %@", buf, 0xCu);
    }

    v63 = objc_msgSend_error(self, v57, v58);

    if (!v63)
    {
      v66 = objc_msgSend_error(operationCopy, v64, v65);
      objc_msgSend_setError_(self, v67, v66);
    }
  }

  if (*v54 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v68 = *v55;
  if (os_log_type_enabled(*v55, OS_LOG_TYPE_DEBUG))
  {
    v71 = v68;
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v76 = objc_msgSend_ckShortDescription(self, v74, v75);
    *buf = 134218754;
    v87 = operationCopy;
    v88 = 2114;
    v89 = v73;
    v90 = 2048;
    selfCopy2 = self;
    v92 = 2114;
    v93 = v76;
    _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "Fetch records operation %p completed for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(self, v69, v70);
  kdebug_trace();
}

- (void)_batchFetchAssetRecordsForRereferencing
{
  v138 = *MEMORY[0x277D85DE8];
  v110 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v5 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v3, v4);
  v8 = objc_msgSend_keyEnumerator(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v131, v137, 16);
  if (v10)
  {
    v11 = *v132;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v132 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v131 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          if ((objc_msgSend_isReference(v15, v16, v17) & 1) == 0)
          {
            v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKDModifyRecordsOperation.m", 1507, @"Expected isReference %@", v15);
          }

          v20 = [CKDModifyRecordsOperationReReferenceBatchKey alloc];
          v22 = objc_msgSend_initWithAsset_(v20, v21, v15);
          v26 = objc_msgSend_objectForKeyedSubscript_(v110, v23, v22);
          if (!v26)
          {
            v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
            objc_msgSend_setObject_forKeyedSubscript_(v110, v27, v26, v22);
          }

          objc_msgSend_addObject_(v26, v24, v15);
          v30 = objc_msgSend_assetRereferenceInfo(v15, v28, v29);
          objc_msgSend_clearRecordFetchProperties(v30, v31, v32);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v131, v137, 16);
    }

    while (v10);
  }

  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = sub_225074060;
  v129 = sub_2250735BC;
  v130 = self->_cloneContextsBySignature;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = objc_msgSend_allKeys(v110, v35, v36);
  v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v121, v136, 16);
  if (v106)
  {
    v105 = *v122;
    do
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v122 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v121 + 1) + 8 * j);
        v41 = objc_msgSend_set(MEMORY[0x277CBEB58], v38, v39);
        v44 = objc_msgSend_set(MEMORY[0x277CBEB58], v42, v43);
        v46 = objc_msgSend_objectForKeyedSubscript_(v110, v45, v40);
        v107 = v40;
        v47 = objc_opt_new();
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v111 = v46;
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v48, &v117, v135, 16);
        if (v51)
        {
          v52 = *v118;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v118 != v52)
              {
                objc_enumerationMutation(v111);
              }

              v54 = *(*(&v117 + 1) + 8 * k);
              v55 = objc_msgSend_assetReference(v54, v49, v50);
              v58 = objc_msgSend_recordID(v55, v56, v57);

              v61 = objc_msgSend_objectForKeyedSubscript_(v47, v59, v58);
              if (!v61)
              {
                v61 = objc_opt_new();
                objc_msgSend_setObject_forKeyedSubscript_(v47, v62, v61, v58);
              }

              objc_msgSend_addObject_(v61, v60, v54);
              objc_msgSend_addObject_(v44, v63, v58);
              v66 = objc_msgSend_assetReference(v54, v64, v65);
              v69 = objc_msgSend_fieldName(v66, v67, v68);
              objc_msgSend_addObject_(v41, v70, v69);
            }

            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v49, &v117, v135, 16);
          }

          while (v51);
        }

        v71 = objc_opt_new();
        v74 = objc_msgSend_allObjects(v44, v72, v73);
        objc_msgSend_setRecordIDs_(v71, v75, v74);

        v78 = objc_msgSend_allObjects(v41, v76, v77);
        objc_msgSend_setDesiredKeys_(v71, v79, v78);

        v82 = objc_msgSend_container(self, v80, v81);
        v85 = objc_msgSend_options(v82, v83, v84);
        v88 = objc_msgSend_mmcsEncryptionSupport(v85, v86, v87);
        objc_msgSend_setShouldFetchAssetContent_(v71, v89, (v88 >> 1) & 1);

        objc_msgSend_setShouldFetchAssetContent_(v71, v90, 1);
        objc_msgSend_setFetchingAssetsForRereference_(v71, v91, 1);
        v94 = objc_msgSend_databaseScope(v107, v92, v93);
        if (objc_msgSend_isClone(v107, v95, v96))
        {
          if (!v126[5])
          {
            v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v99 = v126[5];
            v126[5] = v98;

            objc_storeStrong(&self->_cloneContextsBySignature, v126[5]);
          }

          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = sub_2252030D0;
          v116[3] = &unk_27854A070;
          v116[4] = &v125;
          objc_msgSend_setCloneContextReturnBlock_(v71, v97, v116);
        }

        v100 = objc_opt_class();
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = sub_225203280;
        v112[3] = &unk_27854A098;
        v112[4] = self;
        v114 = v94;
        v115 = a2;
        v101 = v47;
        v113 = v101;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v102, v100, v71, v112);
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v121, v136, 16);
    }

    while (v106);
  }

  _Block_object_dispose(&v125, 8);
}

- (void)_fetchPackageRecordsForRereferencing
{
  v136 = *MEMORY[0x277D85DE8];
  v106 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v105 = objc_msgSend_handlersByAssetNeedingRecordFetch(self, v3, v4);
  objc_opt_class();
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = objc_msgSend_keyEnumerator(v105, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v129, v135, 16);
  if (v8)
  {
    v9 = *v130;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v130 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v129 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v15 = objc_msgSend_objectForKey_(v105, v14, v13);
          v16 = [CKDModifyRecordsOperationReReferenceBatchKey alloc];
          v19 = objc_msgSend_record(v15, v17, v18);
          v22 = objc_msgSend_recordID(v19, v20, v21);
          v25 = objc_msgSend_zoneID(v22, v23, v24);
          v27 = objc_msgSend_initWithPackageReference_destinationRecordZoneID_(v16, v26, v13, v25);

          v31 = objc_msgSend_objectForKeyedSubscript_(v106, v28, v27);
          if (!v31)
          {
            v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
            objc_msgSend_setObject_forKeyedSubscript_(v106, v32, v31, v27);
          }

          objc_msgSend_addObject_(v31, v29, v13);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v129, v135, 16);
    }

    while (v8);
  }

  v33 = MEMORY[0x277CBEB98];
  v36 = objc_msgSend_allKeys(v106, v34, v35);
  v38 = objc_msgSend_setWithArray_(v33, v37, v36);

  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = sub_225074060;
  v127 = sub_2250735BC;
  v96 = 496;
  v128 = self->_cloneContextsBySignature;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v98 = v38;
  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v39, &v119, v134, 16);
  if (v101)
  {
    v100 = *v120;
    v97 = v114;
    do
    {
      for (j = 0; j != v101; ++j)
      {
        if (*v120 != v100)
        {
          objc_enumerationMutation(v98);
        }

        v42 = *(*(&v119 + 1) + 8 * j);
        v43 = objc_msgSend_set(MEMORY[0x277CBEB58], v40, v41, v96, v97);
        v46 = objc_msgSend_set(MEMORY[0x277CBEB58], v44, v45);
        v48 = objc_msgSend_objectForKeyedSubscript_(v106, v47, v42);
        v103 = v42;
        v49 = objc_opt_new();
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        obja = v48;
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v50, &v115, v133, 16);
        if (v53)
        {
          v54 = *v116;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v116 != v54)
              {
                objc_enumerationMutation(obja);
              }

              v56 = *(*(&v115 + 1) + 8 * k);
              v57 = objc_msgSend_packageReference(v56, v51, v52);
              v60 = objc_msgSend_recordID(v57, v58, v59);

              v64 = objc_msgSend_objectForKeyedSubscript_(v49, v61, v60);
              if (!v64)
              {
                v64 = objc_msgSend_array(MEMORY[0x277CBEB18], v62, v63);
                objc_msgSend_setObject_forKeyedSubscript_(v49, v65, v64, v60);
              }

              objc_msgSend_addObject_(v64, v62, v56);
              objc_msgSend_addObject_(v46, v66, v60);
              v69 = objc_msgSend_packageReference(v56, v67, v68);
              v72 = objc_msgSend_fieldName(v69, v70, v71);
              objc_msgSend_addObject_(v43, v73, v72);
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v51, &v115, v133, 16);
          }

          while (v53);
        }

        v74 = objc_opt_new();
        v77 = objc_msgSend_allObjects(v46, v75, v76);
        objc_msgSend_setRecordIDs_(v74, v78, v77);

        v81 = objc_msgSend_allObjects(v43, v79, v80);
        objc_msgSend_setDesiredKeys_(v74, v82, v81);

        objc_msgSend_setShouldFetchAssetContent_(v74, v83, 1);
        objc_msgSend_setFetchingAssetsForRereference_(v74, v84, 1);
        v87 = objc_msgSend_databaseScope(v103, v85, v86);
        if (objc_msgSend_isClone(v103, v88, v89))
        {
          if (!v124[5])
          {
            v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v92 = v124[5];
            v124[5] = v91;

            objc_storeStrong((&self->super.super.super.super.isa + v96), v124[5]);
          }

          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v114[0] = sub_225203E90;
          v114[1] = &unk_27854A070;
          v114[2] = &v123;
          objc_msgSend_setCloneContextReturnBlock_(v74, v90, v113);
        }

        v93 = objc_opt_class();
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = sub_225204040;
        v109[3] = &unk_27854A098;
        v109[4] = self;
        v111 = v87;
        v112 = a2;
        v94 = v49;
        v110 = v94;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v95, v93, v74, v109);
      }

      v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v40, &v119, v134, 16);
    }

    while (v101);
  }

  _Block_object_dispose(&v123, 8);
}

- (void)_fetchRecordsForRereferencing
{
  v5 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, v2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225204584;
  v13[3] = &unk_27854A0C0;
  v14 = v5;
  v15 = a2;
  v13[4] = self;
  v6 = v5;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v7, 3, v13);
  objc_msgSend_setHandlersByAssetNeedingRecordFetch_(self, v8, v6);
  objc_msgSend__fetchPackageRecordsForRereferencing(self, v9, v10);
  objc_msgSend__batchFetchAssetRecordsForRereferencing(self, v11, v12);
}

- (void)_prepareForUpload
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__prepareAssetsForUpload(self, a2, v2);
  objc_msgSend_setHandlersByAsset_(self, v5, v4);

  v8 = objc_msgSend_handlersByAsset(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_container(self, v12, v13);
    v17 = objc_msgSend_options(v14, v15, v16);
    v20 = objc_msgSend_mmcsEncryptionSupport(v17, v18, v19);

    if (v20 != 1)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v23 = objc_msgSend_handlersByAsset(self, v21, v22, 0);
      v26 = objc_msgSend_keyEnumerator(v23, v24, v25);

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v63, v67, 16);
      if (v28)
      {
        v29 = v28;
        v30 = *v64;
        while (2)
        {
          v31 = 0;
          do
          {
            if (*v64 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v63 + 1) + 8 * v31);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
              v36 = objc_msgSend_container(self, v34, v35);
              v39 = objc_msgSend_options(v36, v37, v38);
              if (objc_msgSend_mmcsEncryptionSupport(v39, v40, v41) == 2 || (objc_msgSend_useMMCSEncryptionV2(v33, v42, v43) & 1) != 0)
              {
                v44 = objc_msgSend_boundaryKey(v33, v42, v43);

                if (!v44)
                {
                  goto LABEL_23;
                }
              }

              else
              {
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v32;
              v49 = objc_msgSend_container(self, v47, v48);
              v52 = objc_msgSend_options(v49, v50, v51);
              if (objc_msgSend_mmcsEncryptionSupport(v52, v53, v54) == 2 || (objc_msgSend_useMMCSEncryptionV2(v46, v55, v56) & 1) != 0)
              {
                v57 = objc_msgSend_boundaryKey(v46, v55, v56);

                if (!v57)
                {
LABEL_23:

                  v60 = objc_msgSend_cachedGlobalPerUserBoundaryKeyData(self, v58, v59);

                  if (!v60)
                  {
                    objc_msgSend__fetchGlobalPerUserBoundaryKey(self, v61, v62);
                  }

                  return;
                }
              }

              else
              {
              }
            }

            ++v31;
          }

          while (v29 != v31);
          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v45, &v63, v67, 16);
          if (v29)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

- (id)_prepareAssetsForUpload
{
  v4 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225204AF8;
  v8[3] = &unk_278549FA8;
  v5 = v4;
  v9 = v5;
  objc_msgSend__enumerateHandlersInState_withBlock_(self, v6, 4, v8);

  return v5;
}

- (void)_fetchGlobalPerUserBoundaryKey
{
  v24 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_msgSend_operationID(self, v4, v5);
    *buf = 138543362;
    v23 = v18;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Fetching user boundary key for operation %{public}@", buf, 0xCu);
  }

  v8 = objc_msgSend_stateTransitionGroup(self, v6, v7);
  dispatch_group_enter(v8);

  objc_msgSend_noteOperationWillWaitOnPCS(self, v9, v10);
  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_pcsManager(v13, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225204EB4;
  v19[3] = &unk_27854A0E8;
  objc_copyWeak(&v20, &location);
  v19[4] = self;
  objc_msgSend_globalPerUserBoundaryKeyDataWithCompletionHandler_(v16, v17, v19);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_uploadAssets
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_handlersByAsset(self, a2, v2);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_msgSend_keyEnumerator(v5, v8, v9);
    v13 = objc_msgSend_allObjects(v10, v11, v12);

    v14 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = MEMORY[0x277CBC830];
    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v61 = v16;
      v64 = objc_msgSend_operationID(self, v62, v63);
      *buf = 138543618;
      v69 = v64;
      v70 = 2112;
      v71 = v13;
      _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Uploading assets for operation %{public}@: %@", buf, 0x16u);
    }

    v19 = objc_msgSend_container(self, v17, v18);
    v22 = objc_msgSend_options(v19, v20, v21);
    v25 = objc_msgSend_mmcsEncryptionSupport(v22, v23, v24);

    if ((v25 & 2) != 0)
    {
      v27 = objc_msgSend__setBoundaryKeyOnAssetsToUpload_(self, v26, v13);

      if (!objc_msgSend_count(v27, v33, v34))
      {
        if (*v14 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v56 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          v57 = v56;
          v60 = objc_msgSend_operationID(self, v58, v59);
          *buf = 138543362;
          v69 = v60;
          _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "No assets to upload after setting boundary keys for operation %{public}@", buf, 0xCu);
        }

        goto LABEL_15;
      }

      v13 = v27;
    }

    else
    {
      v27 = v13;
    }

    v35 = objc_opt_new();
    objc_msgSend_setAssetsToUpload_(v35, v36, v13);
    v39 = objc_msgSend_assetUUIDToExpectedProperties(self, v37, v38);
    objc_msgSend_setAssetUUIDToExpectedProperties_(v35, v40, v39);

    v43 = objc_msgSend_packageUUIDToExpectedProperties(self, v41, v42);
    objc_msgSend_setPackageUUIDToExpectedProperties_(v35, v44, v43);

    v47 = objc_msgSend_originatingFromDaemon(self, v45, v46);
    objc_msgSend_setTemporary_(v35, v48, v47);
    shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v49, v50);
    objc_msgSend_setShouldCloneFileInAssetCache_(v35, v52, shouldCloneFileInAssetCache);
    objc_msgSend_setCloneContextsBySignature_(v35, v53, self->_cloneContextsBySignature);
    v54 = objc_opt_class();
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_225205588;
    v65[3] = &unk_278549720;
    v65[4] = self;
    v67 = a2;
    v66 = v5;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v55, v54, v35, v65);

LABEL_15:
    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v29 = v28;
    v32 = objc_msgSend_operationID(self, v30, v31);
    *buf = 138543362;
    v69 = v32;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "No assets to upload for operation %{public}@", buf, 0xCu);
  }

LABEL_16:
}

- (id)_setBoundaryKeyOnAssetsToUpload:(id)upload
{
  v97 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(uploadCopy, v4, &v86, v96, 16);
  if (!v5)
  {
    v83 = 0;
    v84 = 0;
    v81 = uploadCopy;
    goto LABEL_42;
  }

  v6 = v5;
  v83 = 0;
  v84 = 0;
  v7 = *v87;
  v8 = 0x277CBC000uLL;
  v81 = uploadCopy;
  v82 = *MEMORY[0x277CBBF50];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v87 != v7)
      {
        objc_enumerationMutation(uploadCopy);
      }

      v10 = *(*(&v86 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
        v12 = v7;
        v13 = v8;
        v14 = uploadCopy;
        v15 = v10;
        v18 = objc_msgSend_container(self, v16, v17);
        v21 = objc_msgSend_options(v18, v19, v20);
        v24 = objc_msgSend_mmcsEncryptionSupport(v21, v22, v23);

        if ((v24 & 1) == 0)
        {
          v29 = objc_msgSend_boundaryKey(v15, v25, v26);
          goto LABEL_10;
        }

        v30 = objc_msgSend_useMMCSEncryptionV2(v15, v25, v26);
        v33 = objc_msgSend_boundaryKey(v15, v31, v32);
        v29 = v33;
        if (v30)
        {
LABEL_10:
          if (v29)
          {
            v34 = 0;
            ++HIDWORD(v84);
LABEL_21:

            uploadCopy = v14;
            v8 = v13;
            v7 = v12;
            v6 = v11;
            goto LABEL_22;
          }

          v29 = objc_msgSend_cachedGlobalPerUserBoundaryKeyData(self, v27, v28);
          if (v29)
          {
            objc_msgSend_setBoundaryKey_(v15, v27, v29);
            v34 = 0;
            LODWORD(v84) = v84 + 1;
            goto LABEL_21;
          }

          v35 = @"Expected non-nil cached boundary key";
        }

        else
        {
          v35 = @"Boundary key not supported for MMCSv1 asset upload";
          if (!v33)
          {
            v34 = 0;
            goto LABEL_21;
          }
        }

        v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, v82, 12, v35);
        if (v34)
        {
          v38 = v83;
          if (!v83)
          {
            v39 = objc_msgSend_mutableCopy(v14, v36, v37);

            v38 = v39;
            v81 = v39;
          }

          v83 = v38;
          objc_msgSend_removeObject_(v38, v36, v15);
          v41 = objc_msgSend_objectForKey_(self->_handlersByAsset, v40, v15);
          objc_msgSend_setError_(v41, v42, v34);
          objc_msgSend_setState_(v41, v43, 12);
        }

        goto LABEL_21;
      }

LABEL_22:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v45 = v10;
      v48 = objc_msgSend_container(self, v46, v47);
      v51 = objc_msgSend_options(v48, v49, v50);
      v54 = objc_msgSend_mmcsEncryptionSupport(v51, v52, v53);

      if (v54)
      {
        v60 = objc_msgSend_useMMCSEncryptionV2(v45, v55, v56);
        v63 = objc_msgSend_boundaryKey(v45, v61, v62);
        v59 = v63;
        if (!v60)
        {
          v66 = @"Boundary key not supported for MMCSv1 package upload";
          if (v63)
          {
            goto LABEL_33;
          }

          v64 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        v59 = objc_msgSend_boundaryKey(v45, v55, v56);
      }

      if (v59)
      {
        v64 = 0;
        ++HIDWORD(v84);
      }

      else
      {
        v59 = objc_msgSend_cachedGlobalPerUserBoundaryKeyData(self, v57, v58);
        if (!v59)
        {
          v66 = @"Expected non-nil cached boundary key";
LABEL_33:
          v64 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, v82, 12, v66);
          if (v64)
          {
            v69 = v83;
            if (!v83)
            {
              v70 = objc_msgSend_mutableCopy(uploadCopy, v67, v68);

              v69 = v70;
              v81 = v70;
            }

            v83 = v69;
            objc_msgSend_removeObject_(v69, v67, v45);
            v72 = objc_msgSend_objectForKey_(self->_handlersByAsset, v71, v45);
            objc_msgSend_setError_(v72, v73, v64);
            objc_msgSend_setState_(v72, v74, 12);
          }

          goto LABEL_37;
        }

        v65 = objc_msgSend_setBoundaryKey_(v45, v57, v59);
        v64 = 0;
        LODWORD(v84) = v84 + 1;
      }

LABEL_37:
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(uploadCopy, v44, &v86, v96, 16);
  }

  while (v6);
LABEL_42:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v75 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v77 = v75;
    v80 = objc_msgSend_count(uploadCopy, v78, v79);
    *buf = 134218496;
    v91 = v80;
    v92 = 1024;
    v93 = v84;
    v94 = 1024;
    v95 = HIDWORD(v84);
    _os_log_debug_impl(&dword_22506F000, v77, OS_LOG_TYPE_DEBUG, "Of %lu potential v2 assets, globalPerUser %d, custom %d", buf, 0x18u);
  }

  return v81;
}

- (void)_markRecordHandlersAsUploaded
{
  v23 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = v4;
    v14 = objc_msgSend_operationID(self, v12, v13);
    v17 = objc_msgSend_modifyHandlersByZoneID(self, v15, v16);
    *buf = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v17;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Skipping saving records for operation %{public}@ after uploading assets: %@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225206ECC;
  v18[3] = &unk_27854A188;
  v18[4] = self;
  v18[5] = a2;
  v5 = _Block_copy(v18);
  if (objc_msgSend_shouldOnlySaveAssetContent(self, v6, v7))
  {
    objc_msgSend__enumerateHandlersInState_withBlock_(self, v8, 5, v5);
  }

  if ((objc_msgSend_shouldModifyRecordsInDatabase(self, v8, v9) & 1) == 0)
  {
    objc_msgSend__enumerateHandlersInState_withBlock_(self, v10, 6, v5);
  }
}

- (BOOL)_prepareRecordsForSave
{
  selfCopy = self;
  v89 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldOnlySaveAssetContent(self, a2, v2))
  {
    v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v58, a2, selfCopy, @"CKDModifyRecordsOperation.m", 2059, @"We shouldn't get into this state if shouldOnlySaveAssetContent is true");
  }

  haveOutstandingHandlers = objc_msgSend_haveOutstandingHandlers(selfCopy, v5, v6);
  if (haveOutstandingHandlers)
  {
    v60 = haveOutstandingHandlers;
    v61 = a2;
    v67 = objc_opt_new();
    v8 = dispatch_group_create();
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = objc_msgSend_modifyHandlersByZoneID(selfCopy, v9, v10);
    v14 = objc_msgSend_allKeys(v11, v12, v13);

    obj = v14;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v77, v88, 16);
    if (v65)
    {
      v63 = *v78;
      v64 = selfCopy;
      do
      {
        v18 = 0;
        do
        {
          if (*v78 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v77 + 1) + 8 * v18);
          v20 = objc_msgSend_atomic(selfCopy, v16, v17);
          v23 = objc_msgSend_container(selfCopy, v21, v22);
          objc_msgSend_clientSDKVersion(v23, v24, v25);
          v66 = v18;
          if (CKLinkCheck48d9728e8c354416a38f82379cbb35e3())
          {
          }

          else
          {
            isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v19, v26, v27);

            v20 &= isDefaultRecordZoneID ^ 1;
          }

          v31 = objc_msgSend_modifyHandlersByZoneID(selfCopy, v28, v29);
          v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, v19);

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v34 = v33;
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v73, v87, 16);
          if (v36)
          {
            v39 = v36;
            v40 = *v74;
            do
            {
              v41 = 0;
              do
              {
                if (*v74 != v40)
                {
                  objc_enumerationMutation(v34);
                }

                v42 = *(*(&v73 + 1) + 8 * v41);
                if (objc_msgSend_state(v42, v37, v38) == 5)
                {
                  dispatch_group_enter(v8);
                  v71[0] = MEMORY[0x277D85DD0];
                  v71[1] = 3221225472;
                  v71[2] = sub_225207438;
                  v71[3] = &unk_278545A00;
                  v72 = v8;
                  objc_msgSend_prepareForSaveWithCompletionHandler_(v42, v43, v71);
                }

                else if (v20)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v44 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                  {
                    v46 = v44;
                    v49 = objc_msgSend_state(v42, v47, v48);
                    *buf = 138412802;
                    v82 = v19;
                    v83 = 2112;
                    v84 = v42;
                    v85 = 2048;
                    v86 = v49;
                    _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Will skip zone %@ because handler isn't ready:\n%@. Handler state %lu", buf, 0x20u);
                  }

                  objc_msgSend_addObject_(v67, v45, v19);
                }

                ++v41;
              }

              while (v39 != v41);
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v73, v87, 16);
            }

            while (v39);
          }

          v18 = v66 + 1;
          selfCopy = v64;
        }

        while (v66 + 1 != v65);
        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v77, v88, 16);
      }

      while (v65);
    }

    v52 = objc_msgSend_stateTransitionGroup(selfCopy, v50, v51);
    dispatch_group_enter(v52);

    v55 = objc_msgSend_modifyRecordsQueue(selfCopy, v53, v54);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225207440;
    block[3] = &unk_278545E20;
    block[4] = selfCopy;
    v69 = v67;
    v70 = v61;
    v56 = v67;
    dispatch_group_notify(v8, v55, block);

    LOBYTE(haveOutstandingHandlers) = v60;
  }

  return haveOutstandingHandlers;
}

- (CKDProtocolTranslator)translator
{
  translator = self->_translator;
  if (!translator)
  {
    v4 = [CKDProtocolTranslator alloc];
    v7 = objc_msgSend_container(self, v5, v6);
    v10 = objc_msgSend_databaseScope(self, v8, v9);
    v12 = objc_msgSend_initWithContainer_databaseScope_(v4, v11, v7, v10);
    v13 = self->_translator;
    self->_translator = v12;

    translator = self->_translator;
  }

  return translator;
}

- (void)_handleDecryptionFailure:(id)failure forRecordID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  dCopy = d;
  v8 = MEMORY[0x277CBC880];
  v9 = MEMORY[0x277CBC878];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v34 = dCopy;
    v35 = 2112;
    v36 = failureCopy;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Failed to decrypt record with ID %@: %@.", buf, 0x16u);
  }

  if (objc_msgSend_code(failureCopy, v12, v13) == 5004)
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v9);
    }

    v15 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v34 = dCopy;
      v35 = 2112;
      v36 = failureCopy;
      _os_log_fault_impl(&dword_22506F000, v15, OS_LOG_TYPE_FAULT, "Failed to decrypt record with ID %@: %@", buf, 0x16u);
    }
  }

  v16 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5004, failureCopy, @"Couldn't decrypt data on record %@", dCopy);
  v19 = objc_msgSend_handlersByRecordID(self, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, dCopy);

  objc_msgSend_setError_(v21, v22, v16);
  v25 = objc_msgSend_retryPCSFailures(self, v23, v24);
  v26 = *v9;
  if (v25)
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v27 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = dCopy;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Marking record %@ for another retry after fetching PCS data", buf, 0xCu);
    }

    objc_msgSend_clearProtectionDataForRecord(v21, v28, v29);
    objc_msgSend_setState_(v21, v30, 13);
  }

  else
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v31 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = dCopy;
      _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Failing save of record %@ because we couldn't decrypt it", buf, 0xCu);
    }

    objc_msgSend_setState_(v21, v32, 12);
  }
}

- (void)_verifyRecordEncryption
{
  v124 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_useEncryption(self, a2, v2))
  {
    v6 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v4, v5);
    shouldDecryptRecordsBeforeSave = objc_msgSend_shouldDecryptRecordsBeforeSave(v6, v7, v8);

    if (shouldDecryptRecordsBeforeSave)
    {
      v104 = objc_opt_new();
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v12 = objc_msgSend_recordsToSave(self, v10, v11);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v115, v123, 16);
      if (v14)
      {
        v18 = v14;
        v19 = *v116;
        *&v17 = 138412290;
        v103 = v17;
        do
        {
          v20 = 0;
          do
          {
            if (*v116 != v19)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v115 + 1) + 8 * v20);
            if (objc_msgSend_hasPropertiesRequiringEncryption(v21, v15, v16, v103))
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v22 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v41 = v22;
                v44 = objc_msgSend_recordID(v21, v42, v43);
                *buf = v103;
                v122 = v44;
                _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Verifying encrypted data on record %@ before uploading it", buf, 0xCu);
              }

              v25 = objc_msgSend_translator(self, v23, v24);
              v28 = objc_msgSend_savePolicy(self, v26, v27) == 2;
              v30 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v25, v29, v21, v28, 0, 0);

              v33 = objc_msgSend_translator(self, v31, v32);
              v114 = 0;
              v35 = objc_msgSend_recordFromPRecord_error_(v33, v34, v30, &v114);
              v36 = v114;

              if (v36 || !v35)
              {
                v39 = objc_msgSend_recordID(v21, v37, v38);
                objc_msgSend__handleDecryptionFailure_forRecordID_(self, v40, v36, v39);
              }

              else
              {
                objc_msgSend_addObject_(v104, v37, v35);
              }
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v115, v123, 16);
        }

        while (v18);
      }

      v45 = v104;
      if (objc_msgSend_count(v104, v46, v47))
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v48 = v104;
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v110, v120, 16);
        if (v50)
        {
          v53 = v50;
          v54 = *v111;
          v55 = *MEMORY[0x277CBC020];
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v111 != v54)
              {
                objc_enumerationMutation(v48);
              }

              v57 = *(*(&v110 + 1) + 8 * i);
              v58 = objc_msgSend_recordID(v57, v51, v52);
              objc_msgSend_setPCSData_forFetchedRecordID_(self, v59, 0, v58);

              v62 = objc_msgSend_recordID(v57, v60, v61);
              v65 = objc_msgSend_zoneID(v62, v63, v64);
              objc_msgSend_setPCSData_forFetchedZoneID_(self, v66, 0, v65);

              v69 = objc_msgSend_share(v57, v67, v68);
              v72 = objc_msgSend_recordID(v69, v70, v71);
              objc_msgSend_setPCSData_forFetchedShareID_(self, v73, 0, v72);

              v74 = objc_alloc(MEMORY[0x277CBC5D0]);
              v77 = objc_msgSend_recordID(v57, v75, v76);
              v80 = objc_msgSend_zoneID(v77, v78, v79);
              v82 = objc_msgSend_initWithRecordName_zoneID_(v74, v81, v55, v80);

              objc_msgSend_setPCSData_forFetchedShareID_(self, v83, 0, v82);
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v110, v120, 16);
          }

          while (v53);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v84 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v99 = v84;
          v102 = objc_msgSend_count(v48, v100, v101);
          *buf = 134217984;
          v122 = v102;
          _os_log_debug_impl(&dword_22506F000, v99, OS_LOG_TYPE_DEBUG, "Sending %ld records to the record decrypt operation before uploading them to the server", buf, 0xCu);
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v85 = v48;
        v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v106, v119, 16);
        if (v87)
        {
          v90 = v87;
          v91 = *v107;
          do
          {
            for (j = 0; j != v90; ++j)
            {
              if (*v107 != v91)
              {
                objc_enumerationMutation(v85);
              }

              v93 = *(*(&v106 + 1) + 8 * j);
              v94 = objc_msgSend_stateTransitionGroup(self, v88, v89);
              dispatch_group_enter(v94);

              v97 = objc_msgSend_recordDecryptOperation(self, v95, v96);
              v105[0] = MEMORY[0x277D85DD0];
              v105[1] = 3221225472;
              v105[2] = sub_225208388;
              v105[3] = &unk_27854A1B0;
              v105[4] = self;
              objc_msgSend_decryptRecord_withCompletion_(v97, v98, v93, v105);
            }

            v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v106, v119, 16);
          }

          while (v90);
        }

        v45 = v104;
      }
    }
  }
}

- (void)_handleRecordSaved:(id)saved handler:(id)handler etag:(id)etag dateStatistics:(id)statistics expirationDate:(id)date responseCode:(id)code keysAssociatedWithETag:(id)tag recordForOplockFailure:(id)self0 serverRecord:(id)self1
{
  v56 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  handlerCopy = handler;
  etagCopy = etag;
  statisticsCopy = statistics;
  dateCopy = date;
  codeCopy = code;
  tagCopy = tag;
  failureCopy = failure;
  recordCopy = record;
  if (objc_msgSend_hasPropertiesRequiringEncryption(recordCopy, v26, v27))
  {
    v41 = codeCopy;
    v42 = savedCopy;
    v30 = objc_msgSend_stateTransitionGroup(self, v28, v29);
    dispatch_group_enter(v30);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = handlerCopy;
    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v36 = v32;
      v39 = objc_msgSend_recordID(recordCopy, v37, v38);
      *buf = 138412290;
      v55 = v39;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Decrypting server record %@ returned from save", buf, 0xCu);
    }

    v40 = objc_msgSend_recordDecryptOperation(self, v33, v34);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_225208804;
    v43[3] = &unk_27854A1D8;
    v44 = recordCopy;
    handlerCopy = v31;
    v45 = v31;
    selfCopy = self;
    savedCopy = v42;
    v47 = v42;
    v48 = etagCopy;
    v49 = statisticsCopy;
    v50 = dateCopy;
    codeCopy = v41;
    v51 = v41;
    v52 = tagCopy;
    v53 = failureCopy;
    objc_msgSend_decryptRecord_withCompletion_(v40, v35, v44, v43);
  }

  else
  {
    objc_msgSend__reallyHandleRecordSaved_handler_etag_dateStatistics_expirationDate_responseCode_keysAssociatedWithETag_recordForOplockFailure_decryptedServerRecord_(self, v28, savedCopy, handlerCopy, etagCopy, statisticsCopy, dateCopy, codeCopy, tagCopy, failureCopy, recordCopy);
  }
}

- (void)_reallyHandleRecordSaved:(id)saved handler:(id)handler etag:(id)etag dateStatistics:(id)statistics expirationDate:(id)date responseCode:(id)code keysAssociatedWithETag:(id)tag recordForOplockFailure:(id)self0 decryptedServerRecord:(id)self1
{
  v450 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  handlerCopy = handler;
  etagCopy = etag;
  statisticsCopy = statistics;
  dateCopy = date;
  codeCopy = code;
  tagCopy = tag;
  failureCopy = failure;
  recordCopy = record;
  val = self;
  v423 = objc_msgSend_container(self, v18, v19);
  if (savedCopy)
  {
    v22 = objc_msgSend_handlersByRecordID(self, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, savedCopy);
    v425 = objc_msgSend_record(v24, v25, v26);
  }

  else
  {
    v425 = 0;
  }

  objc_opt_class();
  v27 = recordCopy;
  if (objc_opt_isKindOfClass())
  {
    v30 = objc_msgSend_entitlements(v423, v28, v29);
    if (objc_msgSend_hasOutOfProcessUIEntitlement(v30, v31, v32))
    {
      v27 = recordCopy;
      objc_msgSend_setSerializePersonalInfo_(recordCopy, v33, 1);
    }

    else
    {
      v35 = objc_msgSend_entitlements(v423, v33, v34);
      hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v35, v36, v37);
      v27 = recordCopy;
      objc_msgSend_setSerializePersonalInfo_(recordCopy, v39, hasParticipantPIIEntitlement);
    }

    shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v423, v40, v41);
    objc_msgSend_setSerializeOwnerInfo_(v27, v43, shouldSerializeOwnerInfo);
  }

  objc_msgSend_setServerRecord_(handlerCopy, v28, v27);
  v46 = objc_msgSend_code(codeCopy, v44, v45);
  if (savedCopy && v46 == 1)
  {
    if (v425)
    {
      if (objc_msgSend_canSkipRecordSaveForMergeables(v425, v47, v48) && objc_msgSend_state(handlerCopy, v49, v50) == 11)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v447 = savedCopy;
          _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Mergeable record already failed with an atomic failure %@", buf, 0xCu);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v76 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v447 = savedCopy;
          _os_log_impl(&dword_22506F000, v76, OS_LOG_TYPE_INFO, "Record %@ was successfully saved to the server", buf, 0xCu);
        }

        if (objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, v77, v78))
        {
          objc_msgSend_setState_(handlerCopy, v79, 8);
        }

        else
        {
          objc_msgSend_setState_(handlerCopy, v79, 7);
        }

        objc_msgSend_setKnownToServer_(v425, v80, 1);
        if (etagCopy)
        {
          objc_msgSend_setEtag_(v425, v81, etagCopy);
        }

        v83 = objc_msgSend_creation(statisticsCopy, v81, v82);
        hasTime = objc_msgSend_hasTime(v83, v84, v85);

        if (hasTime)
        {
          v89 = MEMORY[0x277CBEAA8];
          v90 = objc_msgSend_creation(statisticsCopy, v87, v88);
          objc_msgSend_time(v90, v91, v92);
          v95 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v89, v93, v94);

          if (v95)
          {
            objc_msgSend_setCreationDate_(v425, v87, v95);
          }
        }

        v96 = objc_msgSend_modification(statisticsCopy, v87, v88);
        v99 = objc_msgSend_hasTime(v96, v97, v98);

        if (v99)
        {
          v102 = MEMORY[0x277CBEAA8];
          v103 = objc_msgSend_modification(statisticsCopy, v100, v101);
          objc_msgSend_time(v103, v104, v105);
          v108 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v102, v106, v107);

          if (v108)
          {
            objc_msgSend_setModificationDate_(v425, v100, v108);
          }
        }

        objc_msgSend_setExpirationDate_(v425, v100, dateCopy);
        objc_msgSend_setHasUpdatedExpirationTimeInterval_(v425, v109, 0);
        objc_msgSend_setUpdatedExpirationTimeInterval_(v425, v110, 0);
        objc_msgSend_savePCSDataToCache(handlerCopy, v111, v112);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v113 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v447 = savedCopy;
        _os_log_error_impl(&dword_22506F000, v113, OS_LOG_TYPE_ERROR, "Got a response for record with ID %@, but we didn't try to put that record.", buf, 0xCu);
      }

      objc_msgSend_setState_(handlerCopy, v114, 12);
      v115 = MEMORY[0x277CBC560];
      v116 = sub_2253962A4(codeCopy);
      v119 = objc_msgSend_request(self, v117, v118);
      v120 = sub_225395734(v119, codeCopy);
      v122 = objc_msgSend_errorWithDomain_code_userInfo_format_(v115, v121, *MEMORY[0x277CBC120], v116, v120, @"Got a response for record with ID %@, but we didn't try to put that record.", savedCopy);
      objc_msgSend_setError_(handlerCopy, v123, v122);
    }

    goto LABEL_132;
  }

  v52 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v53 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v447 = savedCopy;
    v448 = 2112;
    v449 = codeCopy;
    _os_log_impl(&dword_22506F000, v53, OS_LOG_TYPE_INFO, "Error when saving record %@ to the server: %@", buf, 0x16u);
  }

  v56 = objc_msgSend_error(codeCopy, v54, v55);
  v59 = objc_msgSend_clientError(v56, v57, v58);
  hasType = objc_msgSend_hasType(v59, v60, v61);

  if (!hasType)
  {
    goto LABEL_108;
  }

  v65 = objc_msgSend_error(codeCopy, v63, v64);
  v68 = objc_msgSend_clientError(v65, v66, v67);
  v71 = objc_msgSend_type(v68, v69, v70) == 52;

  if (v71)
  {
    if (*v52 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v74 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v447 = savedCopy;
      v75 = "Record PCS etag failed for record %@";
LABEL_54:
      _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, v75, buf, 0xCu);
LABEL_55:
      v417 = 0;
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v124 = objc_msgSend_error(codeCopy, v72, v73);
  v127 = objc_msgSend_clientError(v124, v125, v126);
  v130 = objc_msgSend_type(v127, v128, v129) == 53;

  if (!v130)
  {
    v198 = objc_msgSend_error(codeCopy, v131, v132);
    v201 = objc_msgSend_clientError(v198, v199, v200);
    v204 = objc_msgSend_type(v201, v202, v203) == 15;

    v207 = objc_msgSend_error(codeCopy, v205, v206);
    v210 = v207;
    if (v204)
    {
      v211 = objc_msgSend_errorDescription(v207, v208, v209);
      hasPrefix = objc_msgSend_hasPrefix_(v211, v212, @"Record PCS oplock failed");

      if (hasPrefix)
      {
        v216 = 1;
        v217 = @"Record";
      }

      else
      {
        v245 = objc_msgSend_error(codeCopy, v214, v215);
        v248 = objc_msgSend_errorDescription(v245, v246, v247);
        v250 = objc_msgSend_hasPrefix_(v248, v249, @"Zone PCS oplock failed");

        if (v250)
        {
          v216 = 1;
          v217 = @"Zone";
        }

        else
        {
          v296 = objc_msgSend_error(codeCopy, v251, v252);
          v299 = objc_msgSend_errorDescription(v296, v297, v298);
          v216 = objc_msgSend_hasPrefix_(v299, v300, @"Share Etag Oplock failure");

          if (v216)
          {
            v217 = @"Share";
          }

          else
          {
            v217 = @"Unknown";
          }
        }
      }

      if (*v52 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v301 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v447 = v217;
        v448 = 2112;
        v449 = savedCopy;
        _os_log_impl(&dword_22506F000, v301, OS_LOG_TYPE_INFO, "%{public}@ oplock failed for record %@", buf, 0x16u);
      }

      if (v216)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v218 = objc_msgSend_clientError(v207, v208, v209);
      v221 = objc_msgSend_type(v218, v219, v220) == 48;

      if (!v221)
      {
        v253 = objc_msgSend_error(codeCopy, v222, v223);
        v256 = objc_msgSend_clientError(v253, v254, v255);
        v259 = objc_msgSend_type(v256, v257, v258) == 62;

        if (!v259)
        {
          v401 = objc_msgSend_error(codeCopy, v260, v261);
          v404 = objc_msgSend_clientError(v401, v402, v403);
          v407 = objc_msgSend_type(v404, v405, v406) == 64;

          if (!v407)
          {
            goto LABEL_108;
          }

          if (*v52 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v408 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22506F000, v408, OS_LOG_TYPE_INFO, "Record PCS chain was invalid", buf, 2u);
          }
        }

        v262 = MEMORY[0x277CBC560];
        v263 = sub_2253962A4(codeCopy);
        v266 = objc_msgSend_recordID(v425, v264, v265);
        v269 = objc_msgSend_error(codeCopy, v267, v268);
        v272 = objc_msgSend_errorDescription(v269, v270, v271);
        v417 = objc_msgSend_errorWithDomain_code_userInfo_format_(v262, v273, *MEMORY[0x277CBC120], v263, 0, @"Error saving share %@ to server: %@", v266, v272);

LABEL_56:
        if (*v52 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        goto LABEL_59;
      }

      v224 = objc_msgSend_options(v423, v222, v223);
      if (((savedCopy != 0) & objc_msgSend_useAnonymousToServerShareParticipants(v224, v225, v226)) == 1)
      {
        v229 = objc_msgSend_databaseScope(self, v227, v228) == 3;

        if (v229)
        {
          if (*v52 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v232 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v413 = v232;
            v416 = objc_msgSend_zoneID(savedCopy, v414, v415);
            *buf = 138412290;
            v447 = v416;
            _os_log_debug_impl(&dword_22506F000, v413, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          v235 = objc_msgSend_stateTransitionGroup(self, v233, v234);
          dispatch_group_enter(v235);

          v238 = objc_msgSend_anonymousSharingManager(v423, v236, v237);
          v241 = objc_msgSend_zoneID(savedCopy, v239, v240);
          v445 = v241;
          v243 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v242, &v445, 1);
          v442[0] = MEMORY[0x277D85DD0];
          v442[1] = 3221225472;
          v442[2] = sub_22520A160;
          v442[3] = &unk_278549318;
          objc_copyWeak(&v443, buf);
          objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v238, v244, v243, self, v442);

          objc_destroyWeak(&v443);
          objc_destroyWeak(buf);
        }
      }

      else
      {
      }

      v274 = objc_msgSend_recordCache(v423, v230, v231);
      v277 = objc_msgSend_zoneID(savedCopy, v275, v276);
      objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v274, v278, v423, v277);

      if (objc_msgSend_databaseScope(self, v279, v280) != 1)
      {
        v281 = objc_msgSend_recordID(v425, v63, v64);
        v284 = objc_msgSend_zoneID(v281, v282, v283);
        objc_msgSend_setPCSData_forFetchedZoneID_(self, v285, 0, v284);

        v288 = objc_msgSend_pcsCache(v423, v286, v287);
        v291 = objc_msgSend_recordID(v425, v289, v290);
        v294 = objc_msgSend_zoneID(v291, v292, v293);
        objc_msgSend_removePCSDataForItemsInZoneWithID_(v288, v295, v294);
      }
    }

LABEL_108:
    v302 = objc_msgSend_error(codeCopy, v63, v64);
    if (objc_msgSend_hasExtensionError(v302, v303, v304))
    {
      v307 = objc_msgSend_error(codeCopy, v305, v306);
      v310 = objc_msgSend_extensionError(v307, v308, v309);
      hasTypeCode = objc_msgSend_hasTypeCode(v310, v311, v312);

      if (hasTypeCode)
      {
        v316 = MEMORY[0x277CBC560];
        v317 = objc_msgSend_request(self, v314, v315);
        v318 = sub_225395734(v317, codeCopy);
        v320 = objc_msgSend_errorWithDomain_code_userInfo_format_(v316, v319, *MEMORY[0x277CBC120], 6000, v318, @"Plugin-Specific Error");
        objc_msgSend_setError_(handlerCopy, v321, v320);

        objc_msgSend_setState_(handlerCopy, v322, 12);
        goto LABEL_132;
      }
    }

    else
    {
    }

    v323 = objc_msgSend_request(self, v314, v315);
    v324 = sub_225395734(v323, codeCopy);
    v327 = objc_msgSend_mutableCopy(v324, v325, v326);

    v330 = objc_msgSend_error(codeCopy, v328, v329);
    v333 = objc_msgSend_clientError(v330, v331, v332);
    v336 = objc_msgSend_moveOplockFailure(v333, v334, v335);
    hasMovedRecordDestinationIdentifier = objc_msgSend_hasMovedRecordDestinationIdentifier(v336, v337, v338);

    if (hasMovedRecordDestinationIdentifier)
    {
      v342 = objc_msgSend_translator(self, v340, v341);
      v345 = objc_msgSend_error(codeCopy, v343, v344);
      v348 = objc_msgSend_clientError(v345, v346, v347);
      v351 = objc_msgSend_moveOplockFailure(v348, v349, v350);
      v354 = objc_msgSend_movedRecordDestinationIdentifier(v351, v352, v353);
      v356 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v342, v355, v354, 0);

      if (v356)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v357, v356, *MEMORY[0x277CBC018]);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22520A274;
    aBlock[3] = &unk_2785470C0;
    v437 = handlerCopy;
    v358 = _Block_copy(aBlock);
    v361 = objc_msgSend_error(codeCopy, v359, v360);
    v364 = objc_msgSend_clientError(v361, v362, v363);
    hasOplockFailure = objc_msgSend_hasOplockFailure(v364, v365, v366);

    if (hasOplockFailure)
    {
      v368 = failureCopy;
      v369 = v425;
      v374 = objc_msgSend_copyWithOriginalValues(v369, v370, v371);
      if (v374)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v372, v374, *MEMORY[0x277CBBFD8]);
      }

      if (v368)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v372, v368, *MEMORY[0x277CBBFE8]);
        v377 = objc_msgSend_recordChangeTag(v368, v375, v376);
        objc_msgSend_setObject_forKeyedSubscript_(v327, v378, v377, *MEMORY[0x277CBBF78]);
      }

      if (v369)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v327, v372, v369, *MEMORY[0x277CBBFE0]);
        v381 = objc_msgSend_recordChangeTag(v369, v379, v380);
        objc_msgSend_setObject_forKeyedSubscript_(v327, v382, v381, *MEMORY[0x277CBBF40]);
      }

      if (objc_msgSend_hasPropertiesRequiringEncryption(v368, v372, v373))
      {
        v385 = objc_msgSend_stateTransitionGroup(val, v383, v384);
        dispatch_group_enter(v385);

        if (*v52 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v386 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v409 = v386;
          v412 = objc_msgSend_recordID(v368, v410, v411);
          *buf = 138412290;
          v447 = v412;
          _os_log_debug_impl(&dword_22506F000, v409, OS_LOG_TYPE_DEBUG, "Decrypting server record returned by oplock failure %@", buf, 0xCu);
        }

        v389 = objc_msgSend_recordDecryptOperation(val, v387, v388);
        v429[0] = MEMORY[0x277D85DD0];
        v429[1] = 3221225472;
        v429[2] = sub_22520A2E4;
        v429[3] = &unk_27854A200;
        v430 = v368;
        v431 = v327;
        v432 = codeCopy;
        v433 = savedCopy;
        v434 = val;
        v435 = v358;
        v390 = v368;
        objc_msgSend_decryptRecord_withCompletion_(v389, v391, v390, v429);

        goto LABEL_131;
      }
    }

    v392 = MEMORY[0x277CBC560];
    v393 = sub_2253962A4(codeCopy);
    v396 = objc_msgSend_error(codeCopy, v394, v395);
    v399 = objc_msgSend_errorDescription(v396, v397, v398);
    v369 = objc_msgSend_errorWithDomain_code_userInfo_format_(v392, v400, *MEMORY[0x277CBC120], v393, v327, @"Error saving record %@ to server: %@", savedCopy, v399);

    (*(v358 + 2))(v358, v369);
LABEL_131:

    goto LABEL_132;
  }

  if (*v52 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v74 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v447 = savedCopy;
    v75 = "Zone PCS etag failed for record %@";
    goto LABEL_54;
  }

LABEL_58:
  v417 = 0;
LABEL_59:
  v133 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v447 = savedCopy;
    _os_log_impl(&dword_22506F000, v133, OS_LOG_TYPE_INFO, "Handling error for record %@ as an oplock failure", buf, 0xCu);
  }

  if (objc_msgSend_retryPCSFailures(self, v134, v135))
  {
    objc_msgSend_clearProtectionDataForRecord(handlerCopy, v136, v137);
    v140 = objc_msgSend_recordID(v425, v138, v139);
    v143 = objc_msgSend_zoneID(v140, v141, v142);

    if (v143)
    {
      v440 = 0u;
      v441 = 0u;
      v439 = 0u;
      v438 = 0u;
      v146 = objc_msgSend_modifyHandlersByZoneID(self, v144, v145);
      v149 = objc_msgSend_recordID(v425, v147, v148);
      v152 = objc_msgSend_zoneID(v149, v150, v151);
      v154 = objc_msgSend_objectForKeyedSubscript_(v146, v153, v152);

      v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v155, &v438, v444, 16);
      if (v156)
      {
        v157 = *v439;
        do
        {
          v158 = 0;
          do
          {
            if (*v439 != v157)
            {
              objc_enumerationMutation(v154);
            }

            v159 = *(*(&v438 + 1) + 8 * v158);
            if (*v52 != -1)
            {
              dispatch_once(v52, *MEMORY[0x277CBC878]);
            }

            v160 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v185 = v160;
              v188 = objc_msgSend_record(v159, v186, v187);
              v191 = objc_msgSend_recordID(v188, v189, v190);
              *buf = 138412290;
              v447 = v191;
              _os_log_debug_impl(&dword_22506F000, v185, OS_LOG_TYPE_DEBUG, "Clearing zone PCS tag for record %@", buf, 0xCu);
            }

            v163 = objc_msgSend_record(v159, v161, v162);
            objc_msgSend_setZoneProtectionEtag_(v163, v164, 0);

            v167 = objc_msgSend_record(v159, v165, v166);
            objc_msgSend_setShareEtag_(v167, v168, 0);

            v171 = objc_msgSend_error(codeCopy, v169, v170);
            v174 = objc_msgSend_clientError(v171, v172, v173);
            v177 = objc_msgSend_type(v174, v175, v176) == 52;

            if (!v177)
            {
              v180 = objc_msgSend_record(v159, v178, v179);
              v183 = objc_msgSend_recordID(v180, v181, v182);
              objc_msgSend_setPCSData_forFetchedRecordID_(val, v184, 0, v183);
            }

            ++v158;
          }

          while (v156 != v158);
          v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v178, &v438, v444, 16);
        }

        while (v156);
      }
    }

    objc_msgSend_setState_(handlerCopy, v144, 13);
  }

  else
  {
    objc_msgSend_setState_(handlerCopy, v136, 12);
  }

  if (v417)
  {
    objc_msgSend_setError_(handlerCopy, v192, v417);
  }

  else
  {
    v193 = MEMORY[0x277CBC560];
    v194 = objc_msgSend_recordID(v425, v192, 0);
    v196 = objc_msgSend_errorWithDomain_code_userInfo_format_(v193, v195, *MEMORY[0x277CBC120], 2037, 0, @"Error saving record %@ to server: Protection data didn't match", v194);
    objc_msgSend_setError_(handlerCopy, v197, v196);
  }

LABEL_132:
}

- (void)_handleRecordDeleted:(id)deleted handler:(id)handler responseCode:(id)code
{
  v88[1] = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  handlerCopy = handler;
  codeCopy = code;
  v13 = objc_msgSend_code(codeCopy, v11, v12);
  v14 = MEMORY[0x277CBC878];
  v15 = *MEMORY[0x277CBC878];
  v16 = MEMORY[0x277CBC880];
  v17 = *MEMORY[0x277CBC880];
  v18 = MEMORY[0x277CBC830];
  if (v13 == 1)
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v19 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v85 = deletedCopy;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Record %@ was successfully deleted from the server", buf, 0xCu);
    }

    v22 = objc_msgSend_container(self, v20, v21);
    v25 = objc_msgSend_options(v22, v23, v24);
    if (objc_msgSend_useAnonymousToServerShareParticipants(v25, v26, v27) && objc_msgSend_databaseScope(self, v28, v29) == 3)
    {
      v32 = objc_msgSend_recordName(deletedCopy, v30, v31);
      isEqualToString = objc_msgSend_isEqualToString_(v32, v33, *MEMORY[0x277CBC020]);

      if (isEqualToString)
      {
        if (*v16 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v14);
        }

        v35 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v85 = deletedCopy;
          _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Possible anonymous share deleted. Removing share from anonymous share list: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v38 = objc_msgSend_stateTransitionGroup(self, v36, v37);
        dispatch_group_enter(v38);

        v41 = objc_msgSend_container(self, v39, v40);
        v44 = objc_msgSend_anonymousSharingManager(v41, v42, v43);
        v47 = objc_msgSend_zoneID(deletedCopy, v45, v46);
        v88[0] = v47;
        v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v88, 1);
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = sub_22520AAAC;
        v82[3] = &unk_278549318;
        objc_copyWeak(&v83, buf);
        objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v44, v50, v49, self, v82);

        objc_destroyWeak(&v83);
        objc_destroyWeak(buf);
      }
    }

    else
    {
    }

    objc_msgSend_setState_(handlerCopy, v34, 8);
    v65 = objc_msgSend_container(self, v70, v71);
    v74 = objc_msgSend_recordCache(v65, v72, v73);
    v77 = objc_msgSend_databaseScope(self, v75, v76);
    objc_msgSend_deleteRecordWithID_container_scope_(v74, v78, deletedCopy, v65, v77);

    objc_msgSend_setPCSData_forFetchedRecordID_(self, v79, 0, deletedCopy);
    objc_msgSend_setPCSData_forFetchedShareID_(self, v80, 0, deletedCopy);
  }

  else
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v51 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v85 = codeCopy;
      v86 = 2112;
      v87 = deletedCopy;
      _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Error %@ when deleting record %@ from the server", buf, 0x16u);
    }

    v52 = MEMORY[0x277CBC560];
    v53 = sub_2253962A4(codeCopy);
    v56 = objc_msgSend_request(self, v54, v55);
    v57 = sub_225395734(v56, codeCopy);
    v60 = objc_msgSend_error(codeCopy, v58, v59);
    v63 = objc_msgSend_errorDescription(v60, v61, v62);
    v65 = objc_msgSend_errorWithDomain_code_userInfo_format_(v52, v64, *MEMORY[0x277CBC120], v53, v57, @"Error deleting record %@: %@", deletedCopy, v63);

    objc_msgSend_setError_(handlerCopy, v66, v65);
    if (objc_msgSend_code(v65, v67, v68) == 2024)
    {
      objc_msgSend_setState_(handlerCopy, v69, 11);
    }

    else
    {
      objc_msgSend_setState_(handlerCopy, v69, 12);
    }
  }
}

- (void)_handleMergeableDeltaSavedForRecordID:(id)d key:(id)key result:(id)result
{
  v78 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  resultCopy = result;
  v13 = objc_msgSend_handlersByRecordID(self, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, dCopy);

  v20 = objc_msgSend_record(v15, v16, v17);
  if (v20)
  {
    if (objc_msgSend_code(resultCopy, v18, v19) != 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v68 = v20;
      v27 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v73 = keyCopy;
        v74 = 2112;
        v75 = dCopy;
        v76 = 2112;
        v77 = resultCopy;
        _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Error syncing mergeable delta for key %@ on record %@: %@", buf, 0x20u);
      }

      v28 = MEMORY[0x277CBC560];
      v29 = *MEMORY[0x277CBC120];
      v30 = sub_2253962A4(resultCopy);
      v33 = objc_msgSend_request(self, v31, v32);
      v34 = sub_225395734(v33, resultCopy);
      v69 = resultCopy;
      objc_msgSend_error(resultCopy, v35, v36);
      v38 = v37 = dCopy;
      v41 = objc_msgSend_errorDescription(v38, v39, v40);
      v70 = keyCopy;
      v71 = v37;
      v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v42, v29, v30, v34, @"Error saving mergeable delta for key '%@' on record %@: %@", keyCopy, v37, v41);

      if (objc_msgSend_code(v25, v43, v44) == 2024)
      {
        dCopy = v71;
        v20 = v68;
        resultCopy = v69;
        objc_msgSend_setState_(v15, v45, 11);
      }

      else
      {
        v47 = objc_msgSend_error(v15, v45, v46);
        v20 = v68;
        if (v47 && (v50 = v47, objc_msgSend_error(v15, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend_code(v51, v52, v53), v51, v50, v54 != 2024))
        {
          resultCopy = v69;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v65 = *MEMORY[0x277CBC830];
          keyCopy = v70;
          dCopy = v71;
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "Not overwriting existing error for modify records handler", buf, 2u);
          }

          objc_msgSend_setState_(v15, v66, 12);
        }

        else
        {
          objc_msgSend_setError_(v15, v48, v25);
          keyCopy = v70;
          dCopy = v71;
          resultCopy = v69;
          objc_msgSend_setState_(v15, v55, 12);
        }
      }

      goto LABEL_33;
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, keyCopy);
    if (v22)
    {
      v25 = v22;
      goto LABEL_19;
    }

    v56 = objc_msgSend_encryptedValues(v20, v23, v24);
    v25 = objc_msgSend_objectForKeyedSubscript_(v56, v57, keyCopy);

    if (v25)
    {
LABEL_19:
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v59 = *MEMORY[0x277CBC878];
      if (isKindOfClass)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v59);
        }

        v60 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v73 = keyCopy;
          v74 = 2112;
          v75 = dCopy;
          _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "Finished saving mergeable delta for key %@ on record %@", buf, 0x16u);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v59);
        }

        v61 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v62 = v61;
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          *buf = 138412546;
          v73 = keyCopy;
          v74 = 2112;
          v75 = v64;
          _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Value in record for key '%@' is not a mergeable record value: %@", buf, 0x16u);
        }
      }

LABEL_33:

      goto LABEL_34;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v67 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "No value on record after successful mergeable delta save", buf, 2u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v73 = keyCopy;
      v74 = 2112;
      v75 = dCopy;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "No record on modify handler for mergeable delta save for key %@ on record %@", buf, 0x16u);
    }
  }

LABEL_34:
}

- (void)_handleReplaceDeltasRequest:(id)request result:(id)result
{
  v72 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  v10 = objc_msgSend_handlersByRecordID(self, v8, v9);
  v13 = objc_msgSend_valueID(requestCopy, v11, v12);
  v16 = objc_msgSend_recordID(v13, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, v16);

  v23 = objc_msgSend_record(v18, v19, v20);
  if (v23)
  {
    if (objc_msgSend_code(resultCopy, v21, v22) == 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v24 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
        v28 = objc_msgSend_operationID(self, v26, v27);
        *buf = 138543618;
        v69 = v28;
        v70 = 2112;
        v71 = requestCopy;
        _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Modify operation %{public}@ successfully replaced deltas for request: %@", buf, 0x16u);
LABEL_11:
      }
    }

    else
    {
      v67 = requestCopy;
      v41 = sub_2253962A4(resultCopy);
      v44 = objc_msgSend_request(self, v42, v43);
      v45 = sub_225395734(v44, resultCopy);

      v46 = MEMORY[0x277CBC560];
      v47 = *MEMORY[0x277CBC120];
      v50 = objc_msgSend_error(resultCopy, v48, v49);
      v53 = objc_msgSend_errorDescription(v50, v51, v52);
      v54 = v47;
      v55 = v45;
      v57 = objc_msgSend_errorWithDomain_code_userInfo_format_(v46, v56, v54, v41, v45, @"Error replacing mergeable deltas: %@", v53);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v58 = *MEMORY[0x277CBC840];
      requestCopy = v67;
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        v63 = v58;
        v66 = objc_msgSend_operationID(self, v64, v65);
        *buf = 138543618;
        v69 = v66;
        v70 = 2112;
        v71 = v57;
        _os_log_error_impl(&dword_22506F000, v63, OS_LOG_TYPE_ERROR, "Modify operation %{public}@ failed to replace deltas with error: %@", buf, 0x16u);
      }

      if (objc_msgSend_code(v57, v59, v60) == 2024)
      {
        objc_msgSend_setState_(v18, v61, 11);
      }

      else
      {
        objc_msgSend_setError_(v18, v61, v57);
        objc_msgSend_setState_(v18, v62, 12);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v28 = v29;
      v25 = objc_msgSend_valueID(requestCopy, v30, v31);
      v34 = objc_msgSend_key(v25, v32, v33);
      v37 = objc_msgSend_valueID(requestCopy, v35, v36);
      v40 = objc_msgSend_recordID(v37, v38, v39);
      *buf = 138412546;
      v69 = v34;
      v70 = 2112;
      v71 = v40;
      _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "No record on modify handler for mergeable delta replacement for key %@ on record %@", buf, 0x16u);

      goto LABEL_11;
    }
  }
}

- (id)_createModifyRequestWithRecordsToSave:(id)save recordsToDelete:(id)delete recordsToDeleteToEtags:(id)etags recordIDsToDeleteToSigningPCSIdentity:(id)identity handlersByRecordID:(id)d sendMergeableDeltas:(BOOL)deltas
{
  deltasCopy = deltas;
  saveCopy = save;
  deleteCopy = delete;
  etagsCopy = etags;
  identityCopy = identity;
  dCopy = d;
  v20 = objc_msgSend_savePolicy(self, v18, v19);
  v57 = dCopy;
  if (v20 == 2)
  {
    v21 = 0;
    v22 = 1;
  }

  else if (v20 == 1)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v21 = 1;
  }

  objc_initWeak(location, self);
  v24 = objc_msgSend_requestedFieldsByRecordIDForRecords_(self, v23, saveCopy);
  v25 = [CKDModifyRecordsURLRequest alloc];
  v28 = objc_msgSend_clientChangeTokenData(self, v26, v27);
  v30 = objc_msgSend_initWithOperation_recordsToSave_recordIDsToDelete_recordIDsToDeleteToSigningPCSIdentity_oplock_sendAllFields_clientChangeTokenData_requestedFieldsByRecordId_(v25, v29, self, saveCopy, deleteCopy, identityCopy, v21, v22, v28, v24);

  v33 = objc_msgSend_atomic(self, v31, v32);
  objc_msgSend_setAtomic_(v30, v34, v33);
  v37 = objc_msgSend_markAsParticipantNeedsNewInvitationToken(self, v35, v36);
  objc_msgSend_setMarkAsParticipantNeedsNewInvitationToken_(v30, v38, v37);
  v41 = objc_msgSend_userPublicKeys(self, v39, v40);
  objc_msgSend_setUserPublicKeys_(v30, v42, v41);

  objc_msgSend_setSendMergeableDeltas_(v30, v43, deltasCopy);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_22520B91C;
  v63[3] = &unk_27854A228;
  objc_copyWeak(&v64, location);
  objc_msgSend_setRecordPostedBlock_(v30, v44, v63);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_22520BA7C;
  v61[3] = &unk_27854A250;
  objc_copyWeak(&v62, location);
  objc_msgSend_setMergeableDeltaSavedBlock_(v30, v45, v61);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_22520BB08;
  v59[3] = &unk_2785493F8;
  objc_copyWeak(&v60, location);
  objc_msgSend_setReplacedDeltasBlock_(v30, v46, v59);
  objc_msgSend_setRecordIDsToDeleteToEtags_(v30, v47, etagsCopy);
  v50 = objc_msgSend_conflictLosersToResolveByRecordID(self, v48, v49);
  objc_msgSend_setConflictLosersToResolveByRecordID_(v30, v51, v50);

  v54 = objc_msgSend_pluginFieldsForRecordDeletesByID(self, v52, v53);
  objc_msgSend_setPluginFieldsForRecordDeletesByID_(v30, v55, v54);

  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v64);

  objc_destroyWeak(location);

  return v30;
}

- (id)requestedFieldsByRecordIDForRecords:(id)records
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = records;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v24, v28, 16);
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_msgSend_allKeys(v11, v5, v6);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = sub_22520BD54;
        v23[3] = &unk_27854A278;
        v23[4] = v11;
        v14 = objc_msgSend_CKFilter_(v12, v13, v23);

        if (objc_msgSend_count(v14, v15, v16))
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v19 = objc_msgSend_recordID(v11, v17, v18);
          objc_msgSend_setObject_forKeyedSubscript_(v8, v20, v14, v19);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v24, v28, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reportRecordsInFlight
{
  v22 = objc_msgSend_recordsToSave(self, a2, v2);
  if (objc_msgSend_count(v22, v4, v5))
  {
    v8 = objc_msgSend_recordsInFlightBlock(self, v6, v7);

    if (v8)
    {
      objc_msgSend_setShouldReportRecordsInFlight_(self, v9, 0);
      v12 = objc_msgSend_recordsToSave(self, v10, v11);
      v14 = objc_msgSend_valueForKeyPath_(v12, v13, @"recordID");

      v17 = objc_msgSend_stateTransitionGroup(self, v15, v16);
      dispatch_group_enter(v17);

      v20 = objc_msgSend_callbackQueue(self, v18, v19);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22520BF5C;
      block[3] = &unk_278545898;
      block[4] = self;
      v24 = v14;
      v21 = v14;
      dispatch_async(v20, block);
    }
  }

  else
  {
  }
}

- (void)_continueRecordsModify
{
  v164 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldOnlySaveAssetContent(self, a2, v2))
  {
    v145 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v145, v146, a2, self, @"CKDModifyRecordsOperation.m", 2705, @"We shouldn't get into this state if shouldOnlySaveAssetContent is true");
  }

  if ((objc_msgSend_shouldModifyRecordsInDatabase(self, v4, v5) & 1) == 0)
  {
    v147 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v147, v148, a2, self, @"CKDModifyRecordsOperation.m", 2706, @"We shouldn't get into this state if shouldModifyRecordsInDatabase is false");
  }

  v8 = objc_msgSend_container(self, v6, v7);

  if (!v8)
  {
    v149 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v149, v150, a2, self, @"CKDModifyRecordsOperation.m", 2707, @"Expected non-nil container");
  }

  if (!objc_msgSend_haveOutstandingHandlers(self, v9, v10))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v70 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Not sending a modify request to the server", buf, 2u);
    }

    return;
  }

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_recordsToSave(self, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v154 = objc_msgSend_initWithCapacity_(v11, v18, v17);

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v21 = objc_msgSend_recordsToSave(self, v19, v20);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v157, v163, 16);
  if (!v25)
  {

    goto LABEL_46;
  }

  v26 = *v158;
  v27 = 1;
  do
  {
    v28 = 0;
    do
    {
      if (*v158 != v26)
      {
        objc_enumerationMutation(v21);
      }

      v29 = *(*(&v157 + 1) + 8 * v28);
      v30 = objc_msgSend_handlersByRecordID(self, v23, v24);
      v33 = objc_msgSend_recordID(v29, v31, v32);
      v35 = objc_msgSend_objectForKeyedSubscript_(v30, v34, v33);

      if (objc_msgSend_state(v35, v36, v37) == 6)
      {
        if (!objc_msgSend_canSkipRecordSaveForMergeables(v29, v38, v39))
        {
          goto LABEL_17;
        }

        if (objc_msgSend_containsMergeableValuesWithDeltasToSave(v29, v40, v41))
        {
          if (objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, v42, v43))
          {
LABEL_17:
            objc_msgSend_addObject_(v154, v40, v29);
            v46 = objc_msgSend_saveAttempts(v35, v44, v45);
            objc_msgSend_setSaveAttempts_(v35, v47, (v46 + 1));
            goto LABEL_23;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v51 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v61 = v51;
            v64 = objc_msgSend_recordID(v29, v62, v63);
            *buf = 138412290;
            v162[0] = v64;
            _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Skipping record upload for purely mergeable record: %@", buf, 0xCu);
          }

          objc_msgSend_setState_(v35, v52, 7);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v49 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v57 = v49;
            v60 = objc_msgSend_recordID(v29, v58, v59);
            *buf = 138412290;
            v162[0] = v60;
            _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "Skipping record save for purely mergeable record without any deltas to save: %@", buf, 0xCu);
          }

          objc_msgSend_setState_(v35, v50, 8);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v48 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v53 = v48;
          v56 = objc_msgSend_recordID(v35, v54, v55);
          *buf = 138412290;
          v162[0] = v56;
          _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Record %@ isn't ready, so we're going to skip the record upload phase.", buf, 0xCu);
        }

        v27 = 0;
      }

LABEL_23:

      ++v28;
    }

    while (v25 != v28);
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v157, v163, 16);
    v25 = v65;
  }

  while (v65);

  if ((v27 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v69 = "Some records failed to prepare for this save. Skipping save to the server and retrying if possible";
      goto LABEL_64;
    }

    goto LABEL_58;
  }

LABEL_46:
  if (!objc_msgSend_count(v154, v66, v67) && (objc_msgSend_recordIDsToDelete(self, v71, v72), v73 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend_count(v73, v74, v75) == 0, v73, v76))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v69 = "No records to save or delete. Skipping sending a request to the server.";
LABEL_64:
      _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, v69, buf, 2u);
    }
  }

  else
  {
    v77 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v78 = MEMORY[0x277CBC830];
    v79 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v131 = v79;
      v134 = objc_msgSend_count(v154, v132, v133);
      v137 = objc_msgSend_clientChangeTokenData(self, v135, v136);
      *buf = 67109378;
      LODWORD(v162[0]) = v134;
      WORD2(v162[0]) = 2112;
      *(v162 + 6) = v137;
      _os_log_debug_impl(&dword_22506F000, v131, OS_LOG_TYPE_DEBUG, "Saving %d records to the server with change token %@", buf, 0x12u);

      if (*v77 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }
    }

    v80 = *v78;
    if (os_log_type_enabled(*v78, OS_LOG_TYPE_DEBUG))
    {
      v138 = v80;
      v141 = objc_msgSend_recordIDsToDelete(self, v139, v140);
      v144 = objc_msgSend_count(v141, v142, v143);
      *buf = 67109120;
      LODWORD(v162[0]) = v144;
      _os_log_debug_impl(&dword_22506F000, v138, OS_LOG_TYPE_DEBUG, "Deleting %d records from the server.", buf, 8u);
    }

    v83 = objc_msgSend_recordIDsToDelete(self, v81, v82);
    v86 = objc_msgSend_recordIDsToDeleteToEtags(self, v84, v85);
    v89 = objc_msgSend_recordIDsToDeleteToSigningPCSIdentity(self, v87, v88);
    v92 = objc_msgSend_handlersByRecordID(self, v90, v91);
    v95 = objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, v93, v94);
    v97 = objc_msgSend__createModifyRequestWithRecordsToSave_recordsToDelete_recordsToDeleteToEtags_recordIDsToDeleteToSigningPCSIdentity_handlersByRecordID_sendMergeableDeltas_(self, v96, v154, v83, v86, v89, v92, v95);

    if (*MEMORY[0x277CBC810] == 1)
    {
      v100 = objc_msgSend_unitTestOverrides(self, v98, v99);
      v102 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"ModifyRecordsAlwaysUsesHTTPS");
      v103 = v102 == 0;

      if (!v103)
      {
        v106 = objc_msgSend_url(v97, v104, v105);
        v109 = objc_msgSend_absoluteString(v106, v107, v108);
        hasPrefix = objc_msgSend_hasPrefix_(v109, v110, @"https");

        if ((hasPrefix & 1) == 0)
        {
          v151 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v112, v113);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v151, v152, a2, self, @"CKDModifyRecordsOperation.m", 2750, @"CKDModifyRecordsOperation must use https in its request URL.");
        }
      }
    }

    objc_initWeak(buf, v97);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_22520CB64;
    v155[3] = &unk_2785483B8;
    v155[4] = self;
    objc_copyWeak(&v156, buf);
    objc_msgSend_setCompletionBlock_(v97, v114, v155);
    v117 = objc_msgSend_stateTransitionGroup(self, v115, v116);
    dispatch_group_enter(v117);

    objc_msgSend_setRequest_(self, v118, v97);
    v121 = objc_msgSend_requestOptions(v97, v119, v120);
    objc_msgSend_setStreamingAssetRequestOptions_(self, v122, v121);

    objc_msgSend_setRecordsToSave_(self, v123, 0);
    objc_msgSend_setRecordIDsToDelete_(self, v124, 0);
    objc_msgSend_setRecordIDsToDeleteToEtags_(self, v125, 0);
    objc_msgSend_setRecordIDsToDeleteToSigningPCSIdentity_(self, v126, 0);
    v129 = objc_msgSend_container(self, v127, v128);
    objc_msgSend_performRequest_(v129, v130, v97);

    objc_destroyWeak(&v156);
    objc_destroyWeak(buf);
  }

LABEL_58:
}

- (void)_uploadMergeableDeltas
{
  v48 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(self, a2, v2))
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
    v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_22520D000;
    v40[3] = &unk_27854A2A0;
    v14 = v7;
    v41 = v14;
    v15 = v13;
    v42 = v15;
    v16 = v10;
    v43 = v16;
    objc_msgSend__enumerateHandlersInState_withBlock_(self, v17, 7, v40);
    if (objc_msgSend_count(v14, v18, v19) || objc_msgSend_count(v16, v20, v21))
    {
      v22 = objc_msgSend_CKMap_(v14, v20, &unk_28385D6E0);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v33 = v23;
        v36 = objc_msgSend_operationID(self, v34, v35);
        *buf = 138543618;
        v45 = v36;
        v46 = 2112;
        v47 = v22;
        _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Uploading mergeable deltas for operation %{public}@: %@", buf, 0x16u);
      }

      v24 = objc_alloc_init(MEMORY[0x277CBC7B8]);
      objc_msgSend_setDeltas_(v24, v25, v14);
      objc_msgSend_setReplacementRequests_(v24, v26, v16);
      v27 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_22520D358;
      v37[3] = &unk_278548C48;
      v38 = v15;
      selfCopy = self;
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v28, v27, v24, v37);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v22 = v29;
      v32 = objc_msgSend_operationID(self, v30, v31);
      *buf = 138543362;
      v45 = v32;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "No mergeable deltas or replacements for operation %{public}@", buf, 0xCu);
    }

LABEL_14:
    return;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Not uploading mergeable deltas separately", buf, 2u);
  }
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  objc_msgSend__clearProtectionDataIfNotEntitled(self, v4, v5);
  v9 = objc_msgSend_haveOutstandingHandlers(self, v6, v7) ^ 1;

  objc_msgSend_makeStateTransition_(self, v8, v9);
}

- (void)_clearProtectionDataIfNotEntitled
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_entitlements(v33, v4, v5);
  if (objc_msgSend_hasProtectionDataEntitlement(v6, v7, v8))
  {
  }

  else
  {
    v11 = objc_msgSend_trustProtectionData(self, v9, v10);

    if ((v11 & 1) == 0)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = objc_msgSend_handlersByRecordID(self, v12, v13);
      v17 = objc_msgSend_allValues(v14, v15, v16);

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v34, v38, 16);
      if (v19)
      {
        v22 = v19;
        v23 = *v35;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v17);
            }

            v25 = objc_msgSend_record(*(*(&v34 + 1) + 8 * i), v20, v21);
            objc_msgSend_setProtectionData_(v25, v26, 0);
            objc_msgSend_setProtectionEtag_(v25, v27, 0);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v25;
              objc_msgSend_setInvitedProtectionData_(v28, v29, 0);
              objc_msgSend_setInvitedProtectionEtag_(v28, v30, 0);
              objc_msgSend_setPublicProtectionData_(v28, v31, 0);
              objc_msgSend_setPublicProtectionEtag_(v28, v32, 0);
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v34, v38, 16);
        }

        while (v22);
      }
    }
  }
}

- (void)finishWithError:(id)error
{
  v56 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_msgSend_finishDecryption(self, v5, v6);
  if (!errorCopy && (objc_msgSend_isCancelled(self, v7, v8) & 1) == 0)
  {
    v9 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = MEMORY[0x277CBC830];
    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v35 = v11;
      v38 = objc_msgSend_operationID(self, v36, v37);
      *buf = 138543362;
      v55 = v38;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Ensuring all handlers have completed for operation %{public}@", buf, 0xCu);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = objc_msgSend_modifyHandlersByZoneID(self, v12, v13);
    v17 = objc_msgSend_allValues(v14, v15, v16);

    obj = v17;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v48, v53, 16);
    if (v41)
    {
      v40 = *v49;
      do
      {
        v19 = 0;
        do
        {
          if (*v49 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v19;
          v20 = *(*(&v48 + 1) + 8 * v19);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v21 = v20;
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v44, v52, 16);
          if (v23)
          {
            v26 = v23;
            v27 = *v45;
            do
            {
              v28 = 0;
              do
              {
                if (*v45 != v27)
                {
                  objc_enumerationMutation(v21);
                }

                if (objc_msgSend_state(*(*(&v44 + 1) + 8 * v28), v24, v25) != 14)
                {
                  if (*v9 != -1)
                  {
                    dispatch_once(v9, *MEMORY[0x277CBC878]);
                  }

                  v29 = *v10;
                  if (os_log_type_enabled(*v10, OS_LOG_TYPE_FAULT))
                  {
                    v30 = v29;
                    v33 = objc_msgSend_operationID(self, v31, v32);
                    *buf = 138543362;
                    v55 = v33;
                    _os_log_fault_impl(&dword_22506F000, v30, OS_LOG_TYPE_FAULT, "Operation %{public}@ tried to finish without an error but it has outstanding handlers", buf, 0xCu);
                  }
                }

                ++v28;
              }

              while (v26 != v28);
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v44, v52, 16);
            }

            while (v26);
          }

          v19 = v42 + 1;
        }

        while (v42 + 1 != v41);
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v48, v53, 16);
      }

      while (v41);
    }

    errorCopy = 0;
  }

  v43.receiver = self;
  v43.super_class = CKDModifyRecordsOperation;
  [(CKDOperation *)&v43 finishWithError:errorCopy];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_modifyHandlersByZoneID(self, v8, v9);
  v13 = objc_msgSend_allKeys(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v30, v34, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addObject_(v7, v16, *(*(&v30 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v30, v34, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v7, v20, v21))
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22520E520;
    v28[3] = &unk_2785487F8;
    v29 = v7;
    objc_msgSend_updateCloudKitMetrics_(self, v23, v28);
  }

  objc_msgSend_setSaveProgressBlock_(self, v22, 0);
  objc_msgSend_setSaveCompletionBlock_(self, v24, 0);
  objc_msgSend_setDeleteCompletionBlock_(self, v25, 0);
  objc_msgSend_setUploadCompletionBlock_(self, v26, 0);
  v27.receiver = self;
  v27.super_class = CKDModifyRecordsOperation;
  [(CKDOperation *)&v27 _finishOnCallbackQueueWithError:errorCopy];
}

- (id)analyticsPayload
{
  v37.receiver = self;
  v37.super_class = CKDModifyRecordsOperation;
  analyticsPayload = [(CKDDatabaseOperation *)&v37 analyticsPayload];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_recordsToSave(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v12 = objc_msgSend_numberWithUnsignedInteger_(v4, v11, v10);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v13, v12, 0x28387E740);

  v14 = MEMORY[0x277CCABB0];
  v17 = objc_msgSend_recordIDsToDelete(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);
  v22 = objc_msgSend_numberWithUnsignedInteger_(v14, v21, v20);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v23, v22, 0x28387E760);

  v26 = objc_msgSend_savePolicy(self, v24, v25);
  v28 = @"SaveIfServerRecordUnchanged";
  if (v26 == 1)
  {
    v28 = @"SaveChangedKeys";
  }

  if (v26 == 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v27, @"SaveAllKeys", 0x28387E780);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v27, v28, 0x28387E780);
  }

  v31 = MEMORY[0x277CCABB0];
  v32 = objc_msgSend_atomic(self, v29, v30);
  v34 = objc_msgSend_numberWithBool_(v31, v33, v32);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v35, v34, 0x28387E7A0);

  return analyticsPayload;
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  v118 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  selfCopy = self;
  v111.receiver = self;
  v111.super_class = CKDModifyRecordsOperation;
  errorCopy = error;
  if ([(CKDOperation *)&v111 validateAgainstLiveContainer:containerCopy error:error])
  {
    v79 = objc_msgSend_operationInfo(self, v6, v7);
    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = sub_225074060;
    v109 = sub_2250735BC;
    v110 = 0;
    if (objc_msgSend_isLongLived(self, v8, v9))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22520EE0C;
      aBlock[3] = &unk_27854A318;
      v104 = &v105;
      aBlock[4] = self;
      v103 = containerCopy;
      v10 = _Block_copy(aBlock);
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v13 = objc_msgSend_recordsToSave(v79, v11, v12);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v98, v117, 16);
      if (v15)
      {
        v16 = *v99;
        do
        {
          v17 = 0;
          do
          {
            if (*v99 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v98 + 1) + 8 * v17);
            v116[0] = objc_opt_class();
            v116[1] = objc_opt_class();
            v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v116, 2);
            LODWORD(v18) = objc_msgSend_containsValueOfClasses_passingTest_(v18, v21, v20, v10);

            if (v18 && !v106[5])
            {
              v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, selfCopy, @"CKDModifyRecordsOperation.m", 3044, @"If you're gonna fail our value check, there better be a reason");
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v22, &v98, v117, 16);
        }

        while (v15);
      }

      v26 = v106[5];
      if (v26)
      {
        if (error)
        {
          *error = v26;
        }

        goto LABEL_33;
      }
    }

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_22520F22C;
    v95[3] = &unk_27854A340;
    v28 = containerCopy;
    v96 = v28;
    v97 = &v105;
    v29 = _Block_copy(v95);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v32 = objc_msgSend_recordsToSave(v79, v30, v31);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v91, v115, 16);
    if (v34)
    {
      v35 = *v92;
      do
      {
        v36 = 0;
        do
        {
          if (*v92 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v91 + 1) + 8 * v36);
          v114 = objc_opt_class();
          v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, &v114, 1);
          LODWORD(v37) = objc_msgSend_containsValueOfClasses_passingTest_(v37, v40, v39, v29);

          if (v37 && !v106[5])
          {
            v43 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v41, v42);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v44, a2, selfCopy, @"CKDModifyRecordsOperation.m", 3070, @"If you're gonna fail our value check, there better be a reason");
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v41, &v91, v115, 16);
      }

      while (v34);
    }

    v45 = v106[5];
    if (!v45)
    {

      objc_msgSend_clientSDKVersion(v28, v47, v48);
      if (CKLinkCheck168f06831e5b4d3ab6cc64d69a8cc447())
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v51 = objc_msgSend_recordsToSave(v79, v49, v50);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v87, v113, 16);
        obj = v51;
        if (v53)
        {
          v75 = *v88;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v88 != v75)
              {
                objc_enumerationMutation(obj);
              }

              v54 = *(*(&v87 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v56 = v54;
                v83 = 0u;
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v74 = v56;
                v59 = objc_msgSend_participants(v56, v57, v58);
                v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v83, v112, 16);
                if (v63)
                {
                  v64 = *v84;
                  while (2)
                  {
                    for (j = 0; j != v63; ++j)
                    {
                      if (*v84 != v64)
                      {
                        objc_enumerationMutation(v59);
                      }

                      if (objc_msgSend_usesOneTimeURL(*(*(&v83 + 1) + 8 * j), v61, v62))
                      {
                        v66 = MEMORY[0x277CBEC10];
                        if (*MEMORY[0x277CBC810] == 1)
                        {
                          v66 = objc_msgSend_unitTestOverrides(selfCopy, v61, v62);
                        }

                        v67 = objc_msgSend_container(selfCopy, v61, v62);
                        v70 = objc_msgSend_entitlements(v67, v68, v69);
                        v71 = CKCanUseOneTimeLinksWithEntitlements();
                        v72 = 0;

                        if ((v71 & 1) == 0)
                        {
                          if (errorCopy)
                          {
                            v73 = v72;
                            *errorCopy = v72;
                          }

                          goto LABEL_33;
                        }
                      }
                    }

                    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v83, v112, 16);
                    if (v63)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v87, v113, 16);
          }

          while (v53);
        }
      }

      v27 = 1;
      goto LABEL_34;
    }

    if (errorCopy)
    {
      *errorCopy = v45;
    }

LABEL_33:
    v27 = 0;
LABEL_34:
    _Block_object_dispose(&v105, 8);

    goto LABEL_35;
  }

  v27 = 0;
LABEL_35:

  return v27;
}

- (id)relevantZoneIDs
{
  if (self->_hasRecordsToSave || self->_hasRecordsToDelete)
  {
    v3 = objc_msgSend_modifyHandlersByZoneID(self, a2, v2);
    v6 = objc_msgSend_allKeys(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end