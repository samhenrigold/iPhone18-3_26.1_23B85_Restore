@interface CKDModifyRecordsURLRequest
- (CKDModifyRecordsURLRequest)initWithOperation:(id)operation recordsToSave:(id)save recordIDsToDelete:(id)delete recordIDsToDeleteToSigningPCSIdentity:(id)identity oplock:(BOOL)oplock sendAllFields:(BOOL)fields clientChangeTokenData:(id)data requestedFieldsByRecordId:(id)self0;
- (id)generateMergeableDeltaSaveOperationsForRecord:(id)record error:(id *)error;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)zones;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)returnVerificationKeyAndSignatureForRequestOperation:(id)operation dataToBeSigned:(id)signed error:(id *)error;
- (id)zoneIDsToLock;
- (int)isolationLevel;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidComplete;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDModifyRecordsURLRequest

- (CKDModifyRecordsURLRequest)initWithOperation:(id)operation recordsToSave:(id)save recordIDsToDelete:(id)delete recordIDsToDeleteToSigningPCSIdentity:(id)identity oplock:(BOOL)oplock sendAllFields:(BOOL)fields clientChangeTokenData:(id)data requestedFieldsByRecordId:(id)self0
{
  saveCopy = save;
  deleteCopy = delete;
  identityCopy = identity;
  dataCopy = data;
  idCopy = id;
  v36.receiver = self;
  v36.super_class = CKDModifyRecordsURLRequest;
  v18 = [(CKDURLRequest *)&v36 initWithOperation:operation];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_records, save);
    objc_storeStrong(&v19->_recordIDsToDelete, delete);
    objc_storeStrong(&v19->_recordIDsToDeleteToSigningPCSIdentity, identity);
    v19->_oplock = oplock;
    v19->_sendAllFields = fields;
    objc_storeStrong(&v19->_clientChangeTokenData, data);
    objc_storeStrong(&v19->_requestedFieldsByRecordID, id);
    v20 = objc_opt_new();
    recordIDByRequestID = v19->_recordIDByRequestID;
    v19->_recordIDByRequestID = v20;

    v22 = objc_opt_new();
    recordByRequestID = v19->_recordByRequestID;
    v19->_recordByRequestID = v22;

    v24 = objc_opt_new();
    mergeableFieldKeyByRequestID = v19->_mergeableFieldKeyByRequestID;
    v19->_mergeableFieldKeyByRequestID = v24;

    v26 = objc_opt_new();
    replacementRequestsByRequestID = v19->_replacementRequestsByRequestID;
    v19->_replacementRequestsByRequestID = v26;

    v19->_containsMergeableValues = objc_msgSend_CKContains_(v19->_records, v28, &unk_28385E520);
    v29 = objc_opt_new();
    skippedRecordsWithPurelyMergeableChanges = v19->_skippedRecordsWithPurelyMergeableChanges;
    v19->_skippedRecordsWithPurelyMergeableChanges = v29;
  }

  return v19;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v25.receiver = self;
  v25.super_class = CKDModifyRecordsURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v25 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_records(self, v6, v7, v25.receiver, v25.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"modifyIDs");
  v15 = MEMORY[0x277CBEB98];
  v18 = objc_msgSend_recordIDsToDelete(self, v16, v17);
  v21 = objc_msgSend_ckEquivalencyProperties(v18, v19, v20);
  v23 = objc_msgSend_setWithArray_(v15, v22, v21);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v24, v23, @"deleteIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_records(self, v5, v6);
  v9 = objc_msgSend_CKCompactMap_(v7, v8, &unk_28385E540);

  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v10, v9);
  v13 = objc_msgSend_recordIDsToDelete(self, v11, v12);
  objc_msgSend_setDeleteRecordIDs_(propertiesCopy, v14, v13);

  v15.receiver = self;
  v15.super_class = CKDModifyRecordsURLRequest;
  [(CKDURLRequest *)&v15 fillOutRequestProperties:propertiesCopy];
}

- (id)recordIDsUsedInZones:(id)zones
{
  v35 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v7 = objc_msgSend_recordIDsToDelete(self, v5, v6);
  v9 = objc_msgSend_recordIDs_filteredByZones_(self, v8, v7, zonesCopy);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = objc_msgSend_records(self, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v34, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = objc_msgSend_recordID(v20, v15, v16);
        v24 = objc_msgSend_zoneID(v21, v22, v23);
        v26 = objc_msgSend_containsObject_(zonesCopy, v25, v24);

        if (v26)
        {
          v27 = objc_msgSend_recordID(v20, v15, v16);
          objc_msgSend_addObject_(v9, v28, v27);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v30, v34, 16);
    }

    while (v17);
  }

  return v9;
}

- (id)zoneIDsToLock
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = objc_msgSend_records(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v39, v44, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_recordID(*(*(&v39 + 1) + 8 * i), v9, v10);
        v17 = objc_msgSend_zoneID(v14, v15, v16);

        if (v17)
        {
          objc_msgSend_addObject_(v3, v18, v17);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v39, v44, 16);
    }

    while (v11);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = objc_msgSend_recordIDsToDelete(self, v19, v20, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v35, v43, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v36;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v30 = objc_msgSend_zoneID(*(*(&v35 + 1) + 8 * j), v24, v25);
        if (v30)
        {
          objc_msgSend_addObject_(v3, v29, v30);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v35, v43, 16);
    }

    while (v26);
  }

  v33 = objc_msgSend_allObjects(v3, v31, v32);

  return v33;
}

- (id)requestOperationClasses
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_records(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v12 = objc_opt_class();
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_recordIDsToDelete(self, v10, v11);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17)
  {
    v20 = objc_opt_class();
    objc_msgSend_addObject_(v3, v21, v20);
  }

  if (objc_msgSend_containsMergeableValues(self, v18, v19))
  {
    v22 = objc_opt_class();
    objc_msgSend_addObject_(v3, v23, v22);
  }

  return v3;
}

- (int)isolationLevel
{
  if (objc_msgSend_atomic(self, a2, v2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)generateRequestOperations
{
  v567 = *MEMORY[0x277D85DE8];
  v511 = objc_opt_new();
  v551 = 0u;
  v552 = 0u;
  v553 = 0u;
  v554 = 0u;
  obj = objc_msgSend_records(self, v3, v4);
  v521 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v551, v566, 16);
  v8 = 0;
  if (v521)
  {
    v519 = *v552;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v552 != v519)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v551 + 1) + 8 * v9);
      if (objc_msgSend_canSkipRecordSaveForMergeables(v10, v6, v7))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v12 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
        {
          v318 = v12;
          objc_msgSend_requestUUID(self, v319, v320);
          v322 = v321 = v9;
          v325 = objc_msgSend_recordID(v10, v323, v324);
          *buf = 138543618;
          v561 = v322;
          v562 = 2112;
          v563 = v325;
          _os_log_debug_impl(&dword_22506F000, v318, OS_LOG_TYPE_DEBUG, "req: %{public}@, Skipping record save due to purely mergeable changes in %@", buf, 0x16u);

          v9 = v321;
        }

        v15 = objc_msgSend_skippedRecordsWithPurelyMergeableChanges(self, v13, v14);
        objc_msgSend_addObject_(v15, v16, v10);
        goto LABEL_82;
      }

      v525 = v8;
      v15 = objc_msgSend_operationRequestWithType_(self, v11, 210);
      if (objc_msgSend_requiresCKAnonymousUserIDs(self, v17, v18))
      {
        v21 = v9;
        v22 = objc_msgSend_recordID(v10, v19, v20);
        v25 = objc_msgSend_zoneID(v22, v23, v24);
        v28 = objc_msgSend_anonymousCKUserID(v25, v26, v27);

        if (!v28)
        {
          v467 = objc_opt_new();
          v468 = MEMORY[0x277CCACA8];
          v471 = objc_msgSend_recordID(v10, v469, v470);
          v473 = objc_msgSend_stringWithFormat_(v468, v472, @"An anonymousCKUserID is required to modify record %@ in the shared database when using anonymous to server share participants", v471);

          objc_msgSend_setObject_forKeyedSubscript_(v467, v474, v473, *MEMORY[0x277CCA450]);
          v477 = objc_msgSend_operation(self, v475, v476);
          v480 = objc_msgSend_topmostParentOperation(v477, v478, v479);
          v483 = objc_msgSend_operationID(v480, v481, v482);

          if (v483)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v467, v484, v483, *MEMORY[0x277CBBF60]);
          }

          v485 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v484, *MEMORY[0x277CBC120], 5015, v467);
          objc_msgSend_finishWithError_(self, v486, v485);

          v487 = obj;
LABEL_132:

          v506 = 0;
          goto LABEL_133;
        }

        v31 = objc_msgSend_recordID(v10, v29, v30);
        v34 = objc_msgSend_zoneID(v31, v32, v33);
        v37 = objc_msgSend_anonymousCKUserID(v34, v35, v36);
        v40 = objc_msgSend_CKDPIdentifier_User(v37, v38, v39);
        v43 = objc_msgSend_request(v15, v41, v42);
        objc_msgSend_setAnonymousCKUserID_(v43, v44, v40);

        v9 = v21;
      }

      v45 = objc_opt_new();
      objc_msgSend_setRecordSaveRequest_(v15, v46, v45);

      v49 = objc_msgSend_recordSaveRequest(v15, v47, v48);
      objc_msgSend_setMerge_(v49, v50, 1);

      v53 = objc_msgSend_oplock(self, v51, v52);
      v56 = objc_msgSend_sendAllFields(self, v54, v55);
      objc_opt_class();
      v517 = v9;
      if (objc_opt_isKindOfClass() & 1) != 0 && ((v53 ^ 1 | v56))
      {
        v59 = objc_msgSend_container(self, v57, v58);
        objc_msgSend_clientSDKVersion(v59, v60, v61);
        v62 = CKLinkCheckc809671068f5f334951d6b3e996f193c();

        v63 = *MEMORY[0x277CBC878];
        if (v62)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v63);
          }

          v64 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v326 = v64;
            v329 = objc_msgSend_recordID(v10, v327, v328);
            *buf = 138412290;
            v561 = v329;
            _os_log_debug_impl(&dword_22506F000, v326, OS_LOG_TYPE_DEBUG, "Enforcing savePolicy isServerRecordUnchanged for CKShare record %@", buf, 0xCu);
          }

          LOBYTE(v56) = 0;
          LODWORD(v53) = 1;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v63);
          }

          v65 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v330 = v65;
            v333 = objc_msgSend_recordID(v10, v331, v332);
            v335 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v334, v53);
            v337 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v336, v56 & 1);
            *buf = 138412802;
            v561 = v333;
            v562 = 2112;
            v563 = v335;
            v564 = 2112;
            v565 = v337;
            _os_log_debug_impl(&dword_22506F000, v330, OS_LOG_TYPE_DEBUG, "Warning: Unsupported savePolicy used when saving CKShare record %@, opLock: %@, sendAllFields: %@", buf, 0x20u);
          }
        }
      }

      v66 = objc_msgSend_translator(self, v57, v58);
      v550 = 0;
      v68 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v66, v67, v10, v56 & 1, &v550, 0);
      v523 = v550;
      v71 = objc_msgSend_recordSaveRequest(v15, v69, v70);
      objc_msgSend_setRecord_(v71, v72, v68);

      if (v53)
      {
        v75 = objc_msgSend_etag(v10, v73, v74);
        v78 = objc_msgSend_recordSaveRequest(v15, v76, v77);
        objc_msgSend_setEtag_(v78, v79, v75);

        LODWORD(v78) = objc_msgSend_isKnownToServer(v10, v80, v81);
        v84 = objc_msgSend_recordSaveRequest(v15, v82, v83);
        v86 = v84;
        if (v78)
        {
          objc_msgSend_setSaveSemantics_(v84, v85, 1);
        }

        else
        {
          objc_msgSend_setSaveSemantics_(v84, v85, 2);
        }
      }

      else
      {
        v86 = objc_msgSend_recordSaveRequest(v15, v73, v74);
        objc_msgSend_setSaveSemantics_(v86, v87, 3);
      }

      v90 = objc_msgSend_recordSaveRequest(v15, v88, v89);
      v93 = objc_msgSend_saveSemantics(v90, v91, v92);

      if (v93 != 2)
      {
        v96 = v10;
        v548 = 0u;
        v549 = 0u;
        v546 = 0u;
        v547 = 0u;
        v97 = v523;
        v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v546, v559, 16);
        if (v99)
        {
          v102 = v99;
          v103 = *v547;
          do
          {
            for (i = 0; i != v102; ++i)
            {
              if (*v547 != v103)
              {
                objc_enumerationMutation(v97);
              }

              v105 = *(*(&v546 + 1) + 8 * i);
              v106 = objc_msgSend_recordSaveRequest(v15, v100, v101);
              objc_msgSend_addFieldsToDeleteIfExistOnMerge_(v106, v107, v105);
            }

            v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v100, &v546, v559, 16);
          }

          while (v102);
        }

        v10 = v96;
      }

      v108 = objc_msgSend_conflictLoserEtags(v10, v94, v95);

      if (v108)
      {
        v111 = objc_opt_new();
        v114 = objc_msgSend_recordSaveRequest(v15, v112, v113);
        objc_msgSend_setConflictLoserUpdate_(v114, v115, v111);

        v118 = objc_msgSend_conflictLoserEtags(v10, v116, v117);
        v121 = objc_msgSend_mutableCopy(v118, v119, v120);
        v124 = objc_msgSend_recordSaveRequest(v15, v122, v123);
        v127 = objc_msgSend_conflictLoserUpdate(v124, v125, v126);
        objc_msgSend_setConflictLoserEtags_(v127, v128, v121);
      }

      v129 = objc_msgSend_conflictLosersToResolveByRecordID(self, v109, v110);
      v132 = objc_msgSend_recordID(v10, v130, v131);
      v134 = objc_msgSend_objectForKeyedSubscript_(v129, v133, v132);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v134, v135, v136))
      {
        v137 = objc_msgSend_mutableCopy(v134, v135, v136);
        v140 = objc_msgSend_recordSaveRequest(v15, v138, v139);
        objc_msgSend_setConflictLosersToResolves_(v140, v141, v137);
      }

      if ((v525 & 1) == 0)
      {
        v142 = objc_msgSend_header(v15, v135, v136);

        if (!v142)
        {
          v145 = objc_opt_new();
          objc_msgSend_setHeader_(v15, v146, v145);
        }

        v147 = objc_msgSend_clientChangeTokenData(self, v143, v144);
        v150 = objc_msgSend_header(v15, v148, v149);
        objc_msgSend_setClientChangeToken_(v150, v151, v147);
      }

      v152 = objc_msgSend_requestedFieldsByRecordID(self, v135, v136);
      v155 = objc_msgSend_recordID(v10, v153, v154);
      v157 = objc_msgSend_objectForKeyedSubscript_(v152, v156, v155);

      if (v157)
      {
        v515 = v134;
        v526 = v10;
        v160 = objc_opt_new();
        v542 = 0u;
        v543 = 0u;
        v544 = 0u;
        v545 = 0u;
        v513 = v157;
        v161 = v157;
        v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v162, &v542, v558, 16);
        if (v163)
        {
          v164 = v163;
          v165 = *v543;
          do
          {
            for (j = 0; j != v164; ++j)
            {
              if (*v543 != v165)
              {
                objc_enumerationMutation(v161);
              }

              v167 = *(*(&v542 + 1) + 8 * j);
              v168 = objc_opt_new();
              objc_msgSend_setName_(v168, v169, v167);
              objc_msgSend_addFields_(v160, v170, v168);
            }

            v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v171, &v542, v558, 16);
          }

          while (v164);
        }

        v174 = objc_msgSend_recordSaveRequest(v15, v172, v173);
        objc_msgSend_setRequestedFields_(v174, v175, v160);

        v10 = v526;
        v157 = v513;
        v134 = v515;
      }

      v176 = objc_msgSend_recordSaveRequest(v15, v158, v159);
      v179 = objc_msgSend_record(v176, v177, v178);

      if (v179)
      {
        break;
      }

      v220 = objc_opt_new();
      objc_msgSend_setCode_(v220, v221, 3);
      v222 = objc_opt_new();
      objc_msgSend_setError_(v220, v223, v222);

      v224 = objc_opt_new();
      v227 = objc_msgSend_error(v220, v225, v226);
      objc_msgSend_setClientError_(v227, v228, v224);

      v231 = objc_msgSend_error(v220, v229, v230);
      v234 = objc_msgSend_clientError(v231, v232, v233);
      objc_msgSend_setType_(v234, v235, 7);

      v238 = objc_msgSend_error(v220, v236, v237);
      objc_msgSend_setErrorKey_(v238, v239, @"Invalid values in record");

      v242 = objc_msgSend_error(v220, v240, v241);
      objc_msgSend_setErrorDescription_(v242, v243, @"The record could not be encoded because it has invalid values");

      v246 = objc_msgSend_recordPostedBlock(self, v244, v245);

      if (v246)
      {
        v249 = objc_msgSend_recordPostedBlock(self, v247, v248);
        v252 = objc_msgSend_recordID(v10, v250, v251);
        (v249)[2](v249, v252, 0, 0, 0, v220, 0, 0, 0);
LABEL_80:
      }

      v9 = v517;

      v8 = 1;
LABEL_82:

      if (++v9 == v521)
      {
        v521 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v551, v566, 16);
        if (v521)
        {
          goto LABEL_3;
        }

        goto LABEL_84;
      }
    }

    v182 = objc_msgSend_previousProtectionEtag(v10, v180, v181);
    v185 = objc_msgSend_recordSaveRequest(v15, v183, v184);
    objc_msgSend_setRecordProtectionInfoTag_(v185, v186, v182);

    if (objc_msgSend_databaseScope(self, v187, v188) == 2 || objc_msgSend_databaseScope(self, v189, v190) == 3)
    {
      v191 = objc_msgSend_zoneProtectionEtag(v10, v189, v190);
      v194 = objc_msgSend_recordSaveRequest(v15, v192, v193);
      objc_msgSend_setZoneProtectionInfoTag_(v194, v195, v191);

      if (objc_msgSend_hasUpdatedShare(v10, v196, v197))
      {
        v198 = objc_msgSend_shareEtag(v10, v189, v190);
        v201 = objc_msgSend_recordSaveRequest(v15, v199, v200);
        objc_msgSend_setShareEtag_(v201, v202, v198);

        v203 = objc_opt_new();
        v206 = objc_msgSend_recordSaveRequest(v15, v204, v205);
        objc_msgSend_setShareIDUpdate_(v206, v207, v203);

        v212 = objc_msgSend_share(v10, v208, v209);
        if (v212)
        {
          v213 = objc_msgSend_translator(self, v210, v211);
          v509 = objc_msgSend_share(v10, v214, v215);
          objc_msgSend_recordID(v509, v216, v217);
          v508 = v510 = v213;
          v219 = objc_msgSend_pShareIdentifierFromRecordID_(v213, v218, v508);
          v507 = v219;
        }

        else
        {
          v219 = 0;
        }

        v253 = objc_msgSend_recordSaveRequest(v15, v210, v211);
        v256 = objc_msgSend_shareIDUpdate(v253, v254, v255);
        objc_msgSend_setShareId_(v256, v257, v219);

        if (v212)
        {
        }
      }
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      v258 = objc_msgSend_unitTestOverrides(self, v189, v190);
      v260 = objc_msgSend_objectForKeyedSubscript_(v258, v259, @"NoRecordProtectionInfoOnSaves");

      if (v260)
      {
        v263 = objc_msgSend_recordSaveRequest(v15, v261, v262);
        v266 = objc_msgSend_record(v263, v264, v265);
        objc_msgSend_setProtectionInfo_(v266, v267, 0);
      }

      v268 = objc_msgSend_pcsKeysToRemove(v10, v261, v262);
      if (v268)
      {
        v270 = v268;
        if (objc_msgSend_applyPCSKeysToRemoveForTesting(v10, v189, v269))
        {

LABEL_78:
          v277 = objc_msgSend_protectionEtag(v10, v189, v273);
          v280 = objc_msgSend_pcsKeysToRemove(v10, v278, v279);
          objc_msgSend_setEtag_(v280, v281, v277);

          v527 = objc_msgSend_translator(self, v282, v283);
          v286 = objc_msgSend_pcsKeysToRemove(v10, v284, v285);
          v288 = objc_msgSend_pProtectionInfoKeysToRemoveFromPCSKeysToRemove_(v527, v287, v286);
          v291 = objc_msgSend_recordSaveRequest(v15, v289, v290);
          objc_msgSend_record(v291, v292, v293);
          v294 = v134;
          v296 = v295 = v157;
          objc_msgSend_setProtectionInfoKeysToRemove_(v296, v297, v288);

          v157 = v295;
          v134 = v294;

          goto LABEL_79;
        }

        v274 = objc_msgSend_unitTestOverrides(self, v271, v272);
        v276 = objc_msgSend_objectForKeyedSubscript_(v274, v275, @"ApplyPCSKeysToRemoveForTesting");

        if (v276)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_79:
    objc_msgSend_addObject_(v511, v189, v15);
    v300 = objc_msgSend_recordByRequestID(self, v298, v299);
    v303 = objc_msgSend_request(v15, v301, v302);
    v306 = objc_msgSend_operationUUID(v303, v304, v305);
    objc_msgSend_setObject_forKeyedSubscript_(v300, v307, v10, v306);

    v220 = objc_msgSend_recordID(v10, v308, v309);
    v249 = objc_msgSend_recordIDByRequestID(self, v310, v311);
    v252 = objc_msgSend_request(v15, v312, v313);
    v316 = objc_msgSend_operationUUID(v252, v314, v315);
    objc_msgSend_setObject_forKeyedSubscript_(v249, v317, v220, v316);

    goto LABEL_80;
  }

LABEL_84:

  if (objc_msgSend_sendMergeableDeltas(self, v338, v339))
  {
    v540 = 0u;
    v541 = 0u;
    v538 = 0u;
    v539 = 0u;
    v342 = objc_msgSend_records(self, v340, v341);
    v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v343, &v538, v557, 16);
    if (v344)
    {
      v346 = v344;
      v347 = *v539;
      do
      {
        v348 = v8;
        for (k = 0; k != v346; ++k)
        {
          if (*v539 != v347)
          {
            objc_enumerationMutation(v342);
          }

          v350 = *(*(&v538 + 1) + 8 * k);
          v537 = 0;
          v351 = objc_msgSend_generateMergeableDeltaSaveOperationsForRecord_error_(self, v345, v350, &v537);
          v352 = v537;
          if (v351)
          {
            v354 = v352 == 0;
          }

          else
          {
            v354 = 0;
          }

          if (!v354)
          {
            v505 = v352;
            objc_msgSend_finishWithError_(self, v353, v352);

            v506 = MEMORY[0x277CBEBF8];
            goto LABEL_133;
          }

          objc_msgSend_addObjectsFromArray_(v511, v353, v351);
        }

        v346 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v345, &v538, v557, 16);
        v8 = v348;
      }

      while (v346);
    }
  }

  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v516 = objc_msgSend_recordIDsToDelete(self, v340, v341);
  v520 = objc_msgSend_countByEnumeratingWithState_objects_count_(v516, v355, &v533, v556, 16);
  if (v520)
  {
    v518 = *v534;
    v514 = *MEMORY[0x277CBC020];
    while (2)
    {
      v357 = 0;
      do
      {
        if (*v534 != v518)
        {
          objc_enumerationMutation(v516);
        }

        v358 = *(*(&v533 + 1) + 8 * v357);
        v359 = objc_msgSend_operationRequestWithType_(self, v356, 214);
        if (objc_msgSend_requiresCKAnonymousUserIDs(self, v360, v361))
        {
          v364 = objc_msgSend_zoneID(v358, v362, v363);
          v367 = objc_msgSend_anonymousCKUserID(v364, v365, v366);

          if (!v367)
          {
            v488 = objc_opt_new();
            v490 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v489, @"An anonymousCKUserID is required to delete record %@ in the shared database when using anonymous to server share participants", v358);
            objc_msgSend_setObject_forKeyedSubscript_(v488, v491, v490, *MEMORY[0x277CCA450]);
            v494 = objc_msgSend_operation(self, v492, v493);
            v497 = objc_msgSend_topmostParentOperation(v494, v495, v496);
            v500 = objc_msgSend_operationID(v497, v498, v499);

            if (v500)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v488, v501, v500, *MEMORY[0x277CBBF60]);
            }

            v502 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v501, *MEMORY[0x277CBC120], 5015, v488);
            objc_msgSend_finishWithError_(self, v503, v502);

            v487 = v516;
            goto LABEL_132;
          }

          v370 = objc_msgSend_zoneID(v358, v368, v369);
          v373 = objc_msgSend_anonymousCKUserID(v370, v371, v372);
          v376 = objc_msgSend_CKDPIdentifier_User(v373, v374, v375);
          v379 = objc_msgSend_request(v359, v377, v378);
          objc_msgSend_setAnonymousCKUserID_(v379, v380, v376);
        }

        v524 = v357;
        v528 = v8;
        v381 = objc_opt_new();
        objc_msgSend_setRecordDeleteRequest_(v359, v382, v381);

        v385 = objc_msgSend_translator(self, v383, v384);
        v387 = objc_msgSend_pRecordIdentifierFromRecordID_(v385, v386, v358);
        v390 = objc_msgSend_recordDeleteRequest(v359, v388, v389);
        objc_msgSend_setRecordIdentifier_(v390, v391, v387);

        v394 = objc_msgSend_pluginFieldsForRecordDeletesByID(self, v392, v393);
        v522 = v358;
        v396 = objc_msgSend_objectForKeyedSubscript_(v394, v395, v358);

        v531 = 0u;
        v532 = 0u;
        v529 = 0u;
        v530 = 0u;
        v397 = v396;
        v399 = objc_msgSend_countByEnumeratingWithState_objects_count_(v397, v398, &v529, v555, 16);
        if (v399)
        {
          v402 = v399;
          v403 = *v530;
          do
          {
            for (m = 0; m != v402; ++m)
            {
              if (*v530 != v403)
              {
                objc_enumerationMutation(v397);
              }

              v405 = *(*(&v529 + 1) + 8 * m);
              v406 = objc_msgSend_recordDeleteRequest(v359, v400, v401);
              v409 = objc_msgSend_translator(self, v407, v408);
              v411 = objc_msgSend_objectForKeyedSubscript_(v397, v410, v405);
              v413 = objc_msgSend_pFieldWithKey_value_(v409, v412, v405, v411);
              objc_msgSend_addPluginFields_(v406, v414, v413);
            }

            v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(v397, v400, &v529, v555, 16);
          }

          while (v402);
        }

        if (objc_msgSend_oplock(self, v415, v416))
        {
          v419 = objc_msgSend_recordIDsToDeleteToEtags(self, v417, v418);
          v421 = objc_msgSend_objectForKeyedSubscript_(v419, v420, v522);

          if (v421)
          {
            v422 = objc_msgSend_recordIDsToDeleteToEtags(self, v417, v418);
            v424 = objc_msgSend_objectForKeyedSubscript_(v422, v423, v522);
            v427 = objc_msgSend_recordDeleteRequest(v359, v425, v426);
            objc_msgSend_setEtag_(v427, v428, v424);
          }
        }

        if ((v528 & 1) == 0)
        {
          v429 = objc_msgSend_header(v359, v417, v418);

          if (!v429)
          {
            v432 = objc_opt_new();
            objc_msgSend_setHeader_(v359, v433, v432);
          }

          v434 = objc_msgSend_clientChangeTokenData(self, v430, v431);
          v437 = objc_msgSend_header(v359, v435, v436);
          objc_msgSend_setClientChangeToken_(v437, v438, v434);
        }

        if (objc_msgSend_markAsParticipantNeedsNewInvitationToken(self, v417, v418))
        {
          v441 = objc_msgSend_recordName(v522, v439, v440);
          isEqualToString = objc_msgSend_isEqualToString_(v441, v442, v514);

          if (isEqualToString)
          {
            v445 = objc_msgSend_recordDeleteRequest(v359, v439, v444);
            objc_msgSend_setParticipantKeyLost_(v445, v446, 1);

            v449 = objc_msgSend_userPublicKeys(self, v447, v448);
            v452 = objc_msgSend_mutableCopy(v449, v450, v451);
            v455 = objc_msgSend_recordDeleteRequest(v359, v453, v454);
            objc_msgSend_setPublicKeys_(v455, v456, v452);
          }
        }

        objc_msgSend_addObject_(v511, v439, v359);
        v459 = objc_msgSend_recordIDByRequestID(self, v457, v458);
        v462 = objc_msgSend_request(v359, v460, v461);
        v465 = objc_msgSend_operationUUID(v462, v463, v464);
        objc_msgSend_setObject_forKeyedSubscript_(v459, v466, v522, v465);

        v357 = v524 + 1;
        LOBYTE(v8) = 1;
      }

      while (v524 + 1 != v520);
      v520 = objc_msgSend_countByEnumeratingWithState_objects_count_(v516, v356, &v533, v556, 16);
      if (v520)
      {
        continue;
      }

      break;
    }
  }

  v506 = v511;
LABEL_133:

  return v506;
}

- (id)generateMergeableDeltaSaveOperationsForRecord:(id)record error:(id *)error
{
  v214 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v186 = objc_opt_new();
  v6 = objc_opt_new();
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v190 = recordCopy;
  v9 = objc_msgSend_allKeys(recordCopy, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v205, v213, 16);
  selfCopy = self;
  if (v11)
  {
    v14 = v11;
    v15 = *v206;
    v174 = *MEMORY[0x277CBC120];
    v16 = 0x277CBC000uLL;
    *&v13 = 138412290;
    v172 = v13;
    v175 = *v206;
    v176 = v9;
    do
    {
      v17 = 0;
      v177 = v14;
      do
      {
        if (*v206 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v205 + 1) + 8 * v17);
        v19 = objc_msgSend_objectForKeyedSubscript_(v190, v12, v18, v172);
        v22 = v19;
        if (v19)
        {
          v23 = v19;
        }

        else
        {
          v24 = objc_msgSend_encryptedValues(v190, v20, v21);
          objc_msgSend_objectForKeyedSubscript_(v24, v25, v18);
          v26 = v16;
          v27 = v15;
          v28 = v9;
          v30 = v29 = v18;

          v23 = v30;
          v18 = v29;
          v9 = v28;
          v15 = v27;
          v16 = v26;
          v14 = v177;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_39;
        }

        v178 = v23;
        v179 = v17;
        v31 = v23;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        obj = objc_msgSend_deltasToSave(v31, v32, v33);
        v192 = v31;
        v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v201, v212, 16);
        if (!v189)
        {
          v36 = 0;
          goto LABEL_31;
        }

        v187 = v18;
        v36 = 0;
        v188 = *v202;
        while (2)
        {
          v37 = 0;
          v38 = v36;
          do
          {
            if (*v202 != v188)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v201 + 1) + 8 * v37);
            v40 = objc_msgSend_operationRequestWithType_(self, v35, 311);
            v41 = objc_opt_new();
            v44 = objc_msgSend_translator(self, v42, v43);
            v47 = objc_msgSend_valueID(v31, v45, v46);
            v49 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v44, v48, v47);
            objc_msgSend_setIdentifier_(v41, v50, v49);

            self = selfCopy;
            v194 = v41;
            objc_msgSend_setMergeableDeltaSaveRequest_(v40, v51, v41);
            v54 = objc_msgSend_translator(selfCopy, v52, v53);
            v200 = v38;
            v56 = objc_msgSend_pMergeableDeltaFromDelta_error_(v54, v55, v39, &v200);
            v193 = v200;

            if (*MEMORY[0x277CBC810] == 1)
            {
              v59 = objc_msgSend_unitTestOverrides(selfCopy, v57, v58);
              v61 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"FakeErrorDuringMergeableProtoGenerationDeltasToSave");

              if (v61)
              {

                v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v128, v174, 1000, @"This is a fake error");

                goto LABEL_26;
              }

              v64 = objc_msgSend_unitTestOverrides(selfCopy, v62, v63);
              v66 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"FakeInvalidMergeableValueID");

              if (v66)
              {
                v182 = objc_msgSend_translator(selfCopy, v57, v67);
                v180 = objc_alloc(MEMORY[0x277CBC478]);
                v184 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v68, v69);
                v181 = objc_msgSend_UUIDString(v184, v70, v71);
                v183 = objc_msgSend_valueID(v192, v72, v73);
                v76 = objc_msgSend_recordID(v183, v74, v75);
                v79 = objc_msgSend_valueID(v192, v77, v78);
                v82 = objc_msgSend_key(v79, v80, v81);
                v85 = objc_msgSend_valueID(v192, v83, v84);
                isEncrypted = objc_msgSend_isEncrypted(v85, v86, v87);
                v90 = objc_msgSend_initWithName_recordID_key_encrypted_(v180, v89, v181, v76, v82, isEncrypted);
                v92 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v182, v91, v90);
                objc_msgSend_setIdentifier_(v194, v93, v92);

                self = selfCopy;
              }
            }

            if (!v56)
            {
              v36 = v193;
LABEL_26:
              v31 = v192;
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v129 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
              {
                *buf = v172;
                v211 = v36;
                _os_log_fault_impl(&dword_22506F000, v129, OS_LOG_TYPE_FAULT, "Failed to get data from delta for delta save request with error: %@", buf, 0xCu);
              }

              goto LABEL_31;
            }

            objc_msgSend_setDelta_(v194, v57, v56);
            objc_msgSend_addObject_(v186, v94, v40);
            v97 = objc_msgSend_recordByRequestID(self, v95, v96);
            v100 = objc_msgSend_request(v40, v98, v99);
            v103 = objc_msgSend_operationUUID(v100, v101, v102);
            objc_msgSend_setObject_forKeyedSubscript_(v97, v104, v190, v103);

            v107 = objc_msgSend_recordID(v190, v105, v106);
            v110 = objc_msgSend_recordIDByRequestID(self, v108, v109);
            v113 = objc_msgSend_request(v40, v111, v112);
            v116 = objc_msgSend_operationUUID(v113, v114, v115);
            objc_msgSend_setObject_forKeyedSubscript_(v110, v117, v107, v116);

            v120 = objc_msgSend_mergeableFieldKeyByRequestID(self, v118, v119);
            v123 = objc_msgSend_request(v40, v121, v122);
            v126 = objc_msgSend_operationUUID(v123, v124, v125);
            objc_msgSend_setObject_forKeyedSubscript_(v120, v127, v187, v126);

            ++v37;
            v31 = v192;
            v36 = v193;
            v38 = v193;
          }

          while (v189 != v37);
          v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v201, v212, 16);
          if (v189)
          {
            continue;
          }

          break;
        }

LABEL_31:

        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v132 = objc_msgSend_pendingReplacementRequests(v31, v130, v131);
        v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, &v196, v209, 16);
        v16 = 0x277CBC000;
        v17 = v179;
        if (v134)
        {
          v136 = v134;
          v137 = *v197;
          do
          {
            for (i = 0; i != v136; ++i)
            {
              if (*v197 != v137)
              {
                objc_enumerationMutation(v132);
              }

              objc_msgSend_addObject_(v6, v135, *(*(&v196 + 1) + 8 * i));
            }

            v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v135, &v196, v209, 16);
          }

          while (v136);
        }

        v139 = v192;
        v15 = v175;
        v9 = v176;
        v14 = v177;
        v23 = v178;
        if (v36)
        {

          goto LABEL_56;
        }

LABEL_39:

        ++v17;
      }

      while (v17 != v14);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v205, v213, 16);
    }

    while (v14);
  }

  v195 = 0;
  v9 = objc_msgSend_requestOperationsForRequest_replaceDeltasRequests_ignoreMissingDeltas_error_(CKDReplaceMergeableDeltasURLRequest, v140, self, v6, 1, &v195);
  v36 = v195;
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v141, v142), v143 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v143, v144, @"FakeErrorDuringMergeableProtoGenerationReplacementDeltas"), v145 = objc_claimAutoreleasedReturnValue(), v145, v143, v145))
  {

    v147 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v146, *MEMORY[0x277CBC120], 1000, @"This is a fake error");

    v9 = 0;
    v36 = v147;
  }

  else if (v9)
  {
    errorCopy3 = error;
    if (!v36)
    {
      objc_msgSend_addObjectsFromArray_(v186, v141, v9);
      if (objc_msgSend_count(v9, v149, v150))
      {
        v152 = 0;
        do
        {
          v153 = objc_msgSend_objectAtIndexedSubscript_(v9, v151, v152);
          v155 = objc_msgSend_objectAtIndexedSubscript_(v6, v154, v152);
          v158 = objc_msgSend_replacementRequestsByRequestID(self, v156, v157);
          objc_msgSend_request(v153, v159, v160);
          v162 = v161 = v9;
          v165 = objc_msgSend_operationUUID(v162, v163, v164);
          objc_msgSend_setObject_forKeyedSubscript_(v158, v166, v155, v165);

          self = selfCopy;
          v9 = v161;

          ++v152;
        }

        while (v152 < objc_msgSend_count(v161, v167, v168));
        v36 = 0;
        errorCopy3 = error;
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_57;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v169 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v211 = v36;
    _os_log_fault_impl(&dword_22506F000, v169, OS_LOG_TYPE_FAULT, "Error generating replacement requests when modifying records: %@", buf, 0xCu);
  }

  v139 = v186;
LABEL_56:
  errorCopy3 = error;

  v186 = 0;
LABEL_57:

  if (errorCopy3)
  {
    v170 = v36;
    *errorCopy3 = v36;
  }

  return v186;
}

- (id)returnVerificationKeyAndSignatureForRequestOperation:(id)operation dataToBeSigned:(id)signed error:(id *)error
{
  v102 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  signedCopy = signed;
  if ((objc_msgSend_requiresCKAnonymousUserIDs(self, v10, v11) & 1) == 0)
  {
    v88 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v88, v89, a2, self, @"CKDModifyRecordsURLRequest.m", 444, @"Signature is only required for anonymous to server requests");
  }

  v14 = objc_msgSend_recordIDByRequestID(self, v12, v13);
  v17 = objc_msgSend_request(operationCopy, v15, v16);
  v20 = objc_msgSend_operationUUID(v17, v18, v19);
  v22 = objc_msgSend_objectForKeyedSubscript_(v14, v21, v20);

  v25 = objc_msgSend_recordByRequestID(self, v23, v24);
  v28 = objc_msgSend_request(operationCopy, v26, v27);
  v31 = objc_msgSend_operationUUID(v28, v29, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v25, v32, v31);

  v36 = objc_msgSend_hasRecordDeleteRequest(operationCopy, v34, v35);
  v39 = MEMORY[0x277CBC880];
  v40 = MEMORY[0x277CBC830];
  if (!v36)
  {
    if (!objc_msgSend_hasRecordSaveRequest(operationCopy, v37, v38))
    {
      v65 = 0;
LABEL_12:
      if (*v39 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v74 = *v40;
      if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v97 = v22;
        _os_log_error_impl(&dword_22506F000, v74, OS_LOG_TYPE_ERROR, "Missing required identity when creating a signature for record %@", buf, 0xCu);
        if (v65)
        {
LABEL_17:
          v71 = 0;
          v64 = 0;
          if (!error)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else if (v65)
      {
        goto LABEL_17;
      }

      v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v75, *MEMORY[0x277CBC120], 2006, @"Missing required identity for generating anonymous to server signature");
      goto LABEL_17;
    }

    v91 = v22;
    errorCopy2 = error;
    v54 = objc_msgSend_signingPCSIdentity(v33, v72, v73);
    CFRetain(v54);
    v55 = 0;
    if (v54)
    {
      goto LABEL_5;
    }

LABEL_10:
    v65 = v55;
    v22 = v91;
    error = errorCopy2;
    v39 = MEMORY[0x277CBC880];
    goto LABEL_12;
  }

  errorCopy2 = error;
  v41 = objc_msgSend_container(self, v37, v38);
  objc_msgSend_pcsManager(v41, v42, v43);
  v44 = v40;
  v46 = v45 = v22;
  objc_msgSend_recordIDsToDeleteToSigningPCSIdentity(self, v47, v48);
  v50 = v49 = v33;
  v91 = v45;
  v52 = objc_msgSend_objectForKeyedSubscript_(v50, v51, v45);
  v95 = 0;
  v54 = objc_msgSend_createSharingIdentityFromData_error_(v46, v53, v52, &v95);
  v55 = v95;

  v40 = v44;
  v33 = v49;

  if (!v54)
  {
    goto LABEL_10;
  }

LABEL_5:
  v58 = v40;
  v59 = objc_msgSend_container(self, v56, v57, v33);
  v62 = objc_msgSend_pcsManager(v59, v60, v61);
  v94 = v55;
  v64 = objc_msgSend_createSignatureWithIdentity_dataToBeSigned_forScope_error_(v62, v63, v54, signedCopy, 6, &v94);
  v65 = v94;

  if (!objc_msgSend_length(v64, v66, v67) || v65)
  {
    v40 = v58;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = v90;
    v22 = v91;
    v79 = *v58;
    error = errorCopy2;
    if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v97 = v54;
      v98 = 2112;
      v99 = v65;
      _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, "Couldn't generate a request signature with signing identity %{public}@ because we got an error from PCS: %@", buf, 0x16u);
    }

    v71 = 0;
  }

  else
  {
    v68 = objc_alloc(MEMORY[0x277CBC7A0]);
    v69 = PCSIdentityCopyExportedPublicKey();
    v71 = objc_msgSend_initWithObject1_object2_(v68, v70, v69, v64);

    v22 = v91;
    error = errorCopy2;
    v33 = v90;
    v40 = v58;
  }

  CFRelease(v54);
  v39 = MEMORY[0x277CBC880];
  if (error)
  {
LABEL_18:
    v76 = v65;
    *error = v65;
  }

LABEL_19:
  if (*v39 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v77 = *v40;
  if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
  {
    v80 = v33;
    v81 = v77;
    v84 = objc_msgSend_v1(v71, v82, v83);
    v87 = objc_msgSend_v2(v71, v85, v86);
    *buf = 138412802;
    v97 = v84;
    v98 = 2112;
    v99 = v87;
    v100 = 2112;
    v101 = signedCopy;
    _os_log_debug_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEBUG, "Signature generated. key: %@, signature: %@, data: %@", buf, 0x20u);

    v33 = v80;
  }

  return v71;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v216 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_msgSend_recordIDByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(objectCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!objc_msgSend_hasRecordSaveResponse(objectCopy, v17, v18))
  {
    if (objc_msgSend_hasRecordDeleteResponse(objectCopy, v19, v20))
    {
      objc_msgSend_updateShareIDCacheWithDeletedRecordID_(self, v57, v16);
    }

    else
    {
      if (objc_msgSend_hasMergeableDeltaSaveResponse(objectCopy, v57, v58))
      {
        v70 = objc_msgSend_mergeableFieldKeyByRequestID(self, v68, v69);
        v73 = objc_msgSend_response(objectCopy, v71, v72);
        v76 = objc_msgSend_operationUUID(v73, v74, v75);
        v78 = objc_msgSend_objectForKeyedSubscript_(v70, v77, v76);

        v81 = objc_msgSend_mergeableDeltaSavedBlock(self, v79, v80);

        if (v81)
        {
          v84 = objc_msgSend_mergeableDeltaSavedBlock(self, v82, v83);
          v87 = objc_msgSend_result(objectCopy, v85, v86);
          (v84)[2](v84, v16, v78, v87);
        }

        goto LABEL_46;
      }

      if (objc_msgSend_hasMergeableDeltaReplaceResponse(objectCopy, v68, v69))
      {
        v177 = objc_msgSend_replacementRequestsByRequestID(self, v59, v60);
        v180 = objc_msgSend_response(objectCopy, v178, v179);
        v183 = objc_msgSend_operationUUID(v180, v181, v182);
        v185 = objc_msgSend_objectForKeyedSubscript_(v177, v184, v183);

        if (!v185)
        {
          v200 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v186, v187);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v200, v201, a2, self, @"CKDModifyRecordsURLRequest.m", 547, @"Expected non-nil replacement request for response %@", objectCopy);
        }

        v188 = objc_msgSend_replacedDeltasBlock(self, v186, v187);

        if (v188)
        {
          v191 = objc_msgSend_replacedDeltasBlock(self, v189, v190);
          v194 = objc_msgSend_result(objectCopy, v192, v193);
          (v191)[2](v191, v185, v194);
        }

        goto LABEL_46;
      }
    }

    v61 = objc_msgSend_recordPostedBlock(self, v59, v60);

    if (v61)
    {
      v64 = objc_msgSend_recordPostedBlock(self, v62, v63);
      v67 = objc_msgSend_result(objectCopy, v65, v66);
      (v64)[2](v64, v16, 0, 0, 0, v67, 0, 0, 0);
    }

LABEL_46:
    v176 = 0;
    goto LABEL_47;
  }

  v21 = objc_msgSend_recordByRequestID(self, v19, v20);
  v24 = objc_msgSend_response(objectCopy, v22, v23);
  v27 = objc_msgSend_operationUUID(v24, v25, v26);
  v208 = objc_msgSend_objectForKeyedSubscript_(v21, v28, v27);

  v31 = objc_msgSend_result(objectCopy, v29, v30);
  v34 = objc_msgSend_error(v31, v32, v33);
  v37 = objc_msgSend_clientError(v34, v35, v36);
  v40 = objc_msgSend_oplockFailure(v37, v38, v39);
  v43 = objc_msgSend_recordForOplockFailure(v40, v41, v42);

  v207 = v43;
  if (v43)
  {
    v46 = objc_msgSend_translator(self, v44, v45);
    v49 = objc_msgSend_zoneID(v16, v47, v48);
    v52 = objc_msgSend_anonymousCKUserID(v49, v50, v51);
    v211 = 0;
    v54 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v46, v53, v207, v52, &v211);
    v55 = v211;

    v206 = v55;
    if (v54 || !v55)
    {
      v205 = v54;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v213 = v55;
        _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "Invalid data from server in response to modifyRecords request: %@", buf, 0xCu);
      }

      v205 = 0;
    }
  }

  else
  {
    v205 = 0;
    v206 = 0;
  }

  v88 = objc_msgSend_translator(self, v44, v45);
  v91 = objc_msgSend_sendAllFields(self, v89, v90);
  v210 = 0;
  v93 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v88, v92, v208, v91, 0, &v210);
  v204 = v210;

  v96 = objc_msgSend_translator(self, v94, v95);
  v99 = objc_msgSend_recordSaveResponse(objectCopy, v97, v98);
  v102 = objc_msgSend_serverFields(v99, v100, v101);
  v105 = objc_msgSend_zoneID(v16, v103, v104);
  v108 = objc_msgSend_anonymousCKUserID(v105, v106, v107);
  v209 = 0;
  v110 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v96, v109, v102, v108, &v209);
  v111 = v209;

  v113 = MEMORY[0x277CBC860];
  if (v111)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v114 = v110;
    v115 = *v113;
    if (os_log_type_enabled(*v113, OS_LOG_TYPE_DEBUG))
    {
      v118 = v115;
      v121 = objc_msgSend_requestUUID(self, v119, v120);
      *buf = 138543618;
      v213 = v121;
      v214 = 2112;
      v215 = v111;
      _os_log_debug_impl(&dword_22506F000, v118, OS_LOG_TYPE_DEBUG, "req: %{public}@, Error parsing server record returned for save: %@", buf, 0x16u);
    }
  }

  else
  {
    objc_msgSend_updateShareIDCacheWithRecord_(self, v112, v110);
    v114 = v110;
  }

  v122 = objc_msgSend_fakeResponseOperationResultByItemID(self, v116, v117);

  if (v122)
  {
    v125 = objc_msgSend_fakeResponseOperationResultByItemID(self, v123, v124);
    v127 = objc_msgSend_objectForKeyedSubscript_(v125, v126, v16);

    if (v127)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v128 = *v113;
      if (os_log_type_enabled(*v113, OS_LOG_TYPE_ERROR))
      {
        v196 = v128;
        v199 = objc_msgSend_requestUUID(self, v197, v198);
        *buf = 138543618;
        v213 = v199;
        v214 = 2114;
        v215 = v16;
        _os_log_error_impl(&dword_22506F000, v196, OS_LOG_TYPE_ERROR, "req: %{public}@, Inlining fake response operation result for item id %{public}@", buf, 0x16u);
      }

      objc_msgSend_setResult_(objectCopy, v129, v127);
    }
  }

  v130 = objc_msgSend_container(self, v123, v124);
  v133 = objc_msgSend_entitlements(v130, v131, v132);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v133, v134, v135);
  objc_msgSend_setSerializeProtectionData_(v114, v137, hasProtectionDataEntitlement);

  v140 = objc_msgSend_recordSaveResponse(objectCopy, v138, v139);
  LODWORD(v133) = objc_msgSend_hasExpirationTime(v140, v141, v142);

  if (v133)
  {
    v145 = objc_msgSend_recordSaveResponse(objectCopy, v143, v144);
    v148 = objc_msgSend_expirationTime(v145, v146, v147);
    objc_msgSend_time(v148, v149, v150);
    v152 = v151;

    v155 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v153, v154, v152);
  }

  else
  {
    v155 = 0;
  }

  v156 = objc_msgSend_recordPostedBlock(self, v143, v144);

  v159 = v204;
  if (v156)
  {
    v160 = objc_msgSend_recordPostedBlock(self, v157, v158);
    v202 = objc_msgSend_recordSaveResponse(objectCopy, v161, v162);
    v165 = objc_msgSend_etag(v202, v163, v164);
    objc_msgSend_recordSaveResponse(objectCopy, v166, v167);
    v203 = v111;
    v169 = v168 = v114;
    v172 = objc_msgSend_timeStatistics(v169, v170, v171);
    v175 = objc_msgSend_result(objectCopy, v173, v174);
    (v160)[2](v160, v16, v165, v172, v155, v175, v204, v205, v168);

    v114 = v168;
    v111 = v203;

    v159 = v204;
  }

  v176 = v206;
LABEL_47:

  return v176;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v90 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_recordIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_mergeableFieldKeyByRequestID(self, v16, v17);
  v21 = objc_msgSend_response(failureCopy, v19, v20);
  v24 = objc_msgSend_operationUUID(v21, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);

  v29 = objc_msgSend_replacementRequestsByRequestID(self, v27, v28);
  v32 = objc_msgSend_response(failureCopy, v30, v31);
  v35 = objc_msgSend_operationUUID(v32, v33, v34);
  v37 = objc_msgSend_objectForKeyedSubscript_(v29, v36, v35);

  if (v26)
  {
    v40 = objc_msgSend_mergeableDeltaSavedBlock(self, v38, v39);

    if (v40)
    {
      v43 = objc_msgSend_mergeableDeltaSavedBlock(self, v41, v42);
      v46 = objc_msgSend_result(failureCopy, v44, v45);
      (v43)[2](v43, v15, v26, v46);
LABEL_7:
    }
  }

  else if (v37)
  {
    v47 = objc_msgSend_replacedDeltasBlock(self, v38, v39);

    if (v47)
    {
      v43 = objc_msgSend_replacedDeltasBlock(self, v48, v49);
      v46 = objc_msgSend_result(failureCopy, v50, v51);
      (v43[2])(v43, v37, v46);
      goto LABEL_7;
    }
  }

  else
  {
    v52 = objc_msgSend_result(failureCopy, v38, v39);
    v55 = objc_msgSend_error(v52, v53, v54);
    v58 = objc_msgSend_clientError(v55, v56, v57);
    v61 = objc_msgSend_oplockFailure(v58, v59, v60);
    v64 = objc_msgSend_recordForOplockFailure(v61, v62, v63);

    v65 = v64;
    if (v64)
    {
      v68 = objc_msgSend_translator(self, v66, v67);
      v71 = objc_msgSend_zoneID(v15, v69, v70);
      v74 = objc_msgSend_anonymousCKUserID(v71, v72, v73);
      v86 = v65;
      v87 = 0;
      v76 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v68, v75, v65, v74, &v87);
      v77 = v87;

      if (!v76 && v77)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v78 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v89 = v77;
          _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "Invalid data from server in response to modifyRecords request: %@", buf, 0xCu);
        }
      }

      v65 = v86;
    }

    else
    {
      v76 = 0;
    }

    v79 = objc_msgSend_recordPostedBlock(self, v66, v67);

    if (v79)
    {
      v82 = objc_msgSend_recordPostedBlock(self, v80, v81);
      v85 = objc_msgSend_result(failureCopy, v83, v84);
      (v82)[2](v82, v15, 0, 0, 0, v85, 0, v76, 0);
    }
  }
}

- (void)requestDidComplete
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = objc_msgSend_skippedRecordsWithPurelyMergeableChanges(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v46, v54, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = objc_msgSend_translator(self, v6, v7);
        v15 = objc_msgSend_sendAllFields(self, v13, v14);
        v45 = 0;
        v17 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v12, v16, v11, v15, 0, &v45);
        v18 = v45;

        v21 = objc_msgSend_recordPostedBlock(self, v19, v20);

        if (v21)
        {
          v22 = objc_opt_new();
          objc_msgSend_setCode_(v22, v23, 1);
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v24 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
          {
            v37 = v24;
            v40 = objc_msgSend_requestUUID(self, v38, v39);
            v43 = objc_msgSend_recordID(v11, v41, v42);
            *buf = 138543618;
            v51 = v40;
            v52 = 2112;
            v53 = v43;
            _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "req: %{public}@, Will call record save block for skipped record %@", buf, 0x16u);
          }

          v27 = objc_msgSend_recordPostedBlock(self, v25, v26);
          v30 = objc_msgSend_recordID(v11, v28, v29);
          v33 = objc_msgSend_etag(v11, v31, v32);
          v36 = objc_msgSend_expirationDate(v11, v34, v35);
          (v27)[2](v27, v30, v33, 0, v36, v22, v18, 0, 0);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v46, v54, 16);
    }

    while (v8);
  }
}

@end