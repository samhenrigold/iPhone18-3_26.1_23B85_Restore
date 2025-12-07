@interface CKDFetchRecordZoneChangesURLRequest
- (BOOL)requestGETPreAuth;
- (CKDFetchRecordZoneChangesURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d;
- (NSDictionary)resultsByRecordZoneID;
- (NSDictionary)zoneErrorsByZoneID;
- (id)_handleRecordChanges:(id)changes deltaChanges:(id)deltaChanges zoneAttributesChange:(id)change forZoneID:(id)d;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)noteUsageForDeletedRecordID:(id)d at:(id)at;
- (void)noteUsageForRecordID:(id)d at:(id)at;
- (void)requestDidComplete;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchRecordZoneChangesURLRequest

- (CKDFetchRecordZoneChangesURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = CKDFetchRecordZoneChangesURLRequest;
  v12 = [(CKDURLRequest *)&v26 initWithOperation:operation];
  if (v12)
  {
    v13 = objc_msgSend_copy(dsCopy, v10, v11);
    recordZoneIDs = v12->_recordZoneIDs;
    v12->_recordZoneIDs = v13;

    objc_storeStrong(&v12->_configurationsByRecordZoneID, d);
    v15 = objc_opt_new();
    zoneIDsByRequestOperationUUID = v12->_zoneIDsByRequestOperationUUID;
    v12->_zoneIDsByRequestOperationUUID = v15;

    v12->_shouldFetchAssetContent = 1;
    v17 = objc_opt_new();
    requestResultsByRecordZoneID = v12->_requestResultsByRecordZoneID;
    v12->_requestResultsByRecordZoneID = v17;

    v19 = objc_opt_new();
    nodeErrorsByZoneID = v12->_nodeErrorsByZoneID;
    v12->_nodeErrorsByZoneID = v19;

    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
    recordResponses = v12->_recordResponses;
    v12->_recordResponses = v23;
  }

  return v12;
}

- (NSDictionary)zoneErrorsByZoneID
{
  v3 = objc_msgSend_nodeErrorsByZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (NSDictionary)resultsByRecordZoneID
{
  v3 = objc_msgSend_requestResultsByRecordZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v37 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = objc_msgSend_recordZoneIDs(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v32, v36, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v15 = objc_msgSend_configurationsByRecordZoneID(self, v9, v10, builderCopy);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14);
        v20 = objc_msgSend_previousServerChangeToken(v17, v18, v19);
        v23 = objc_msgSend_data(v20, v21, v22);

        if (!v23)
        {
          v23 = objc_msgSend_data(MEMORY[0x277CBEA90], v24, v25);
        }

        v26 = objc_msgSend_sqliteRepresentation(v14, v24, v25);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v23, v26);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v32, v36, 16);
    }

    while (v11);
  }

  v31.receiver = self;
  v31.super_class = CKDFetchRecordZoneChangesURLRequest;
  [(CKDURLRequest *)&v31 fillOutEquivalencyPropertiesBuilder:builderCopy];
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v28, v4, @"zid->token");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  objc_msgSend_setFetchRecordZoneIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchRecordZoneChangesURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
}

- (id)requestOperationClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

- (BOOL)requestGETPreAuth
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  if (objc_msgSend_usePreauth(v4, v5, v6))
  {
    shouldFetchAssetContent = self->_shouldFetchAssetContent;
  }

  else
  {
    shouldFetchAssetContent = 0;
  }

  return shouldFetchAssetContent;
}

- (id)generateRequestOperations
{
  v250 = *MEMORY[0x277D85DE8];
  v223 = objc_opt_new();
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  obj = objc_msgSend_recordZoneIDs(self, v3, v4);
  v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v242, v249, 16);
  if (v224)
  {
    v8 = 0;
    v222 = *v243;
    do
    {
      v9 = 0;
      do
      {
        v227 = v8;
        if (*v243 != v222)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v242 + 1) + 8 * v9);
        v11 = objc_msgSend_configurationsByRecordZoneID(self, v6, v7);
        v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v10);

        v16 = objc_msgSend_operationType(self, v14, v15);
        v18 = objc_msgSend_operationRequestWithType_(self, v17, v16);
        if (objc_msgSend_requiresCKAnonymousUserIDs(self, v19, v20))
        {
          v23 = objc_msgSend_anonymousCKUserID(v10, v21, v22);

          if (!v23)
          {
            v216 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v216, v217, a2, self, @"CKDFetchRecordZoneChangesURLRequest.m", 122, @"An anonymousCKUserID is required to fetch record zone changes in %@ in the shared database when using anonymous to server share participants", v10);
          }

          v26 = objc_msgSend_anonymousCKUserID(v10, v24, v25);
          v29 = objc_msgSend_CKDPIdentifier_User(v26, v27, v28);
          v32 = objc_msgSend_request(v18, v30, v31);
          objc_msgSend_setAnonymousCKUserID_(v32, v33, v29);
        }

        v34 = objc_opt_new();
        objc_msgSend_setRecordRetrieveChangesRequest_(v18, v35, v34);

        v38 = objc_msgSend_previousServerChangeToken(v13, v36, v37);
        v41 = objc_msgSend_data(v38, v39, v40);
        v44 = objc_msgSend_recordRetrieveChangesRequest(v18, v42, v43);
        objc_msgSend_setSyncContinuationToken_(v44, v45, v41);

        v48 = objc_msgSend_translator(self, v46, v47);
        v50 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v48, v49, v10);
        v53 = objc_msgSend_recordRetrieveChangesRequest(v18, v51, v52);
        objc_msgSend_setZoneIdentifier_(v53, v54, v50);

        v57 = objc_msgSend_changeTypes(self, v55, v56);
        if (v57 == 1)
        {
          v60 = 2;
        }

        else
        {
          v60 = 1;
        }

        if (v57 == 2)
        {
          v61 = 3;
        }

        else
        {
          v61 = v60;
        }

        v62 = objc_msgSend_recordRetrieveChangesRequest(v18, v58, v59);
        objc_msgSend_setRequestedChangeTypes_(v62, v63, v61);

        if (objc_msgSend_resultsLimit(v13, v64, v65))
        {
          v70 = objc_msgSend_resultsLimit(v13, v66, v67);
          if (HIDWORD(v70))
          {
            v212 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v68, v69);
            v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v213, "uint32_t CKDownsizeOrDie(NSUInteger)");
            objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v212, v215, v214, @"CloudKit-Prefix.pch", 34, @"That number was ridiculous");
          }

          v71 = objc_msgSend_recordRetrieveChangesRequest(v18, v68, v69);
          objc_msgSend_setMaxChanges_(v71, v72, v70);
        }

        NewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(v13, v66, v67);
        v76 = objc_msgSend_recordRetrieveChangesRequest(v18, v74, v75);
        objc_msgSend_setNewestFirst_(v76, v77, NewestChangesFirst);

        if (v13 && (objc_msgSend_fetchChangesMadeByThisDevice(v13, v78, v79) & 1) == 0)
        {
          v80 = objc_msgSend_recordRetrieveChangesRequest(v18, v78, v79);
          objc_msgSend_setIgnoreCallingDeviceChanges_(v80, v81, 1);
        }

        v228 = v10;
        if (objc_msgSend_fetchChangesForMergeableValues(self, v78, v79))
        {
          v84 = objc_msgSend_recordRetrieveChangesRequest(v18, v82, v83);
          objc_msgSend_setIncludeMergeableDeltas_(v84, v85, 1);
        }

        v86 = objc_msgSend_desiredKeys(v13, v82, v83);

        v229 = v13;
        if (v86)
        {
          v89 = objc_opt_new();
          v92 = objc_msgSend_recordRetrieveChangesRequest(v18, v90, v91);
          objc_msgSend_setRequestedFields_(v92, v93, v89);

          v240 = 0u;
          v241 = 0u;
          v238 = 0u;
          v239 = 0u;
          v96 = objc_msgSend_desiredKeys(v13, v94, v95);
          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v238, v248, 16);
          if (v98)
          {
            v99 = v98;
            v100 = *v239;
            do
            {
              for (i = 0; i != v99; ++i)
              {
                if (*v239 != v100)
                {
                  objc_enumerationMutation(v96);
                }

                v102 = *(*(&v238 + 1) + 8 * i);
                v103 = objc_opt_new();
                objc_msgSend_setName_(v103, v104, v102);
                v107 = objc_msgSend_recordRetrieveChangesRequest(v18, v105, v106);
                v110 = objc_msgSend_requestedFields(v107, v108, v109);
                objc_msgSend_addFields_(v110, v111, v103);
              }

              v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v112, &v238, v248, 16);
            }

            while (v99);
          }

          v13 = v229;
        }

        v113 = objc_msgSend_desiredAssetKeys(self, v87, v88);
        v116 = objc_msgSend_count(v113, v114, v115);

        if (v116)
        {
          v119 = objc_opt_new();
          v122 = objc_msgSend_recordRetrieveChangesRequest(v18, v120, v121);
          objc_msgSend_setAssetsToDownload_(v122, v123, v119);

          v124 = objc_opt_new();
          v127 = objc_msgSend_recordRetrieveChangesRequest(v18, v125, v126);
          v130 = objc_msgSend_assetsToDownload(v127, v128, v129);
          objc_msgSend_setAssetFields_(v130, v131, v124);

          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v134 = objc_msgSend_desiredAssetKeys(self, v132, v133);
          v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, &v234, v247, 16);
          if (v136)
          {
            v137 = v136;
            v225 = v9;
            v138 = *v235;
            do
            {
              for (j = 0; j != v137; ++j)
              {
                if (*v235 != v138)
                {
                  objc_enumerationMutation(v134);
                }

                v140 = *(*(&v234 + 1) + 8 * j);
                v141 = objc_opt_new();
                objc_msgSend_setName_(v141, v142, v140);
                v145 = objc_msgSend_recordRetrieveChangesRequest(v18, v143, v144);
                v148 = objc_msgSend_assetsToDownload(v145, v146, v147);
                v151 = objc_msgSend_assetFields(v148, v149, v150);
                objc_msgSend_addFields_(v151, v152, v141);
              }

              v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v153, &v234, v247, 16);
            }

            while (v137);
            v9 = v225;
            v13 = v229;
          }
        }

        else
        {
          if (!objc_msgSend_shouldFetchAssetContent(self, v117, v118))
          {
            goto LABEL_46;
          }

          v156 = objc_opt_new();
          v159 = objc_msgSend_recordRetrieveChangesRequest(v18, v157, v158);
          objc_msgSend_setAssetsToDownload_(v159, v160, v156);

          AssetContent = objc_msgSend_shouldFetchAssetContent(self, v161, v162);
          v134 = objc_msgSend_recordRetrieveChangesRequest(v18, v164, v165);
          v168 = objc_msgSend_assetsToDownload(v134, v166, v167);
          objc_msgSend_setAllAssets_(v168, v169, AssetContent);
        }

LABEL_46:
        if ((v227 & 1) == 0)
        {
          v226 = v9;
          v170 = objc_msgSend_header(v18, v154, v155);

          if (!v170)
          {
            v173 = objc_opt_new();
            objc_msgSend_setHeader_(v18, v174, v173);
          }

          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v175 = objc_msgSend_supplementalChangeTokenByZoneID(self, v171, v172);
          v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v176, &v230, v246, 16);
          if (v177)
          {
            v180 = v177;
            v181 = *v231;
            do
            {
              for (k = 0; k != v180; ++k)
              {
                if (*v231 != v181)
                {
                  objc_enumerationMutation(v175);
                }

                v183 = *(*(&v230 + 1) + 8 * k);
                v184 = objc_msgSend_supplementalChangeTokenByZoneID(self, v178, v179);
                v186 = objc_msgSend_objectForKeyedSubscript_(v184, v185, v183);

                v187 = objc_opt_new();
                v190 = objc_msgSend_translator(self, v188, v189);
                v192 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v190, v191, v183);
                objc_msgSend_setZoneIdentifier_(v187, v193, v192);

                v196 = objc_msgSend_data(v186, v194, v195);
                objc_msgSend_setSyncContinuationToken_(v187, v197, v196);

                v200 = objc_msgSend_header(v18, v198, v199);
                objc_msgSend_addSupplementalZoneInfos_(v200, v201, v187);
              }

              v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v178, &v230, v246, 16);
            }

            while (v180);
          }

          v9 = v226;
          v13 = v229;
        }

        objc_msgSend_addObject_(v223, v154, v18);
        v204 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v202, v203);
        v207 = objc_msgSend_request(v18, v205, v206);
        v210 = objc_msgSend_operationUUID(v207, v208, v209);
        objc_msgSend_setObject_forKeyedSubscript_(v204, v211, v228, v210);

        ++v9;
        v8 = 1;
      }

      while (v9 != v224);
      v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v242, v249, 16);
      v8 = 1;
      v224 = v218;
    }

    while (v218);
  }

  return v223;
}

- (void)noteUsageForDeletedRecordID:(id)d at:(id)at
{
  dCopy = d;
  atCopy = at;
  if (objc_msgSend_databaseScope(self, v7, v8) == 3)
  {
    v11 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v9, v10);
    v14 = objc_msgSend_container(self, v12, v13);
    v17 = objc_msgSend_operation(self, v15, v16);
    objc_msgSend_noteShareUsageForDeletedRecordID_at_container_operation_(v11, v18, dCopy, atCopy, v14, v17);
  }
}

- (void)noteUsageForRecordID:(id)d at:(id)at
{
  dCopy = d;
  atCopy = at;
  if (objc_msgSend_databaseScope(self, v7, v8) == 3)
  {
    v11 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v9, v10);
    v14 = objc_msgSend_container(self, v12, v13);
    v17 = objc_msgSend_operation(self, v15, v16);
    objc_msgSend_noteShareUsageForRecordID_at_container_operation_(v11, v18, dCopy, atCopy, v14, v17);
  }
}

- (id)_handleRecordChanges:(id)changes deltaChanges:(id)deltaChanges zoneAttributesChange:(id)change forZoneID:(id)d
{
  v349 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  deltaChangesCopy = deltaChanges;
  changeCopy = change;
  dCopy = d;
  v296 = changeCopy;
  if (!changeCopy)
  {
    goto LABEL_20;
  }

  if (objc_msgSend_hasRecordZone(changeCopy, v12, v13))
  {
    v14 = objc_autoreleasePoolPush();
    v17 = objc_msgSend_translator(self, v15, v16);
    v20 = objc_msgSend_recordZone(changeCopy, v18, v19);
    v340 = 0;
    v341 = 0;
    v22 = objc_msgSend_recordZoneFromPRecordZone_error_requiredFeaturesValidationFailureType_(v17, v21, v20, &v341, &v340);
    changeCopy = v341;
    v23 = v340;

    if (v23)
    {
      v26 = objc_msgSend_operation(self, v24, v25);
      v338[0] = MEMORY[0x277D85DD0];
      v338[1] = 3221225472;
      v338[2] = sub_2253CD50C;
      v338[3] = &unk_2785487F8;
      v339 = v23;
      objc_msgSend_updateCloudKitMetrics_(v26, v27, v338);
    }

    v28 = *MEMORY[0x277CBC878];
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v285 = v29;
        v288 = objc_msgSend_zoneID(v22, v286, v287);
        *buf = 138543362;
        v346 = v288;
        _os_log_debug_impl(&dword_22506F000, v285, OS_LOG_TYPE_DEBUG, "Received zone attributes change for zone %{public}@", buf, 0xCu);
      }

      v32 = objc_msgSend_zoneAttributesChangedBlock(self, v30, v31);

      if (!v32)
      {
        goto LABEL_19;
      }

      v35 = objc_msgSend_zoneAttributesChangedBlock(self, v33, v34);
      (v35)[2](v35, v22);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v36 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v289 = v36;
        v292 = objc_msgSend_requestUUID(self, v290, v291);
        v295 = objc_msgSend_recordZone(v296, v293, v294);
        *buf = 138543618;
        v346 = v292;
        v347 = 2112;
        v348 = v295;
        _os_log_error_impl(&dword_22506F000, v289, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to parse record zone for record zone attributes change: %@", buf, 0x16u);
      }

      objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBBF50], 1005, changeCopy, @"Failed to parse record zone attributes change");
      changeCopy = v35 = changeCopy;
    }

LABEL_19:
    objc_autoreleasePoolPop(v14);
    goto LABEL_20;
  }

  changeCopy = 0;
LABEL_20:
  v299 = objc_opt_new();
  v304 = objc_msgSend_now(MEMORY[0x277CBEAA8], v38, v39);
  v334 = 0u;
  v335 = 0u;
  v336 = 0u;
  v337 = 0u;
  v40 = changesCopy;
  selfCopy = self;
  v305 = v40;
  v317 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v334, v344, 16);
  if (!v317)
  {
    goto LABEL_56;
  }

  v315 = *v335;
  v309 = *MEMORY[0x277CBBF50];
  do
  {
    v42 = 0;
    do
    {
      if (*v335 != v315)
      {
        objc_enumerationMutation(v40);
      }

      v43 = *(*(&v334 + 1) + 8 * v42);
      v44 = objc_autoreleasePoolPush();
      if (objc_msgSend_type(v43, v45, v46) != 3)
      {
        v313 = v44;
        if (objc_msgSend_hasRecord(v43, v47, v48))
        {
          v79 = objc_msgSend_translator(self, v77, v78);
          v82 = objc_msgSend_record(v43, v80, v81);
          v85 = objc_msgSend_anonymousCKUserID(dCopy, v83, v84);
          v332 = changeCopy;
          v70 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v79, v86, v82, v85, &v332);
          v87 = v332;

          if (v70)
          {
            objc_msgSend_updateShareIDCacheWithRecord_(self, v88, v70);
            v91 = objc_msgSend_recordID(v70, v89, v90);
            objc_msgSend_noteUsageForRecordID_at_(self, v92, v91, v304);

            changeCopy = v87;
            v44 = v313;
            goto LABEL_34;
          }

          changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v88, v309, 2006, v87, @"Invalid data received from server");

          if (!objc_msgSend_hasRecordIdentifier(v43, v114, v115))
          {
            v61 = 0;
            v62 = changeCopy;
            v44 = v313;
            goto LABEL_49;
          }

          v311 = 0;
LABEL_36:
          v95 = objc_msgSend_translator(self, v93, v94);
          v98 = objc_msgSend_recordIdentifier(v43, v96, v97);
          objc_msgSend_anonymousCKUserID(dCopy, v99, v100);
          v102 = v101 = self;
          v331 = changeCopy;
          v61 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v95, v103, v98, v102, &v331);
          v62 = v331;

          if (v61)
          {
            objc_msgSend_noteUsageForRecordID_at_(v101, v104, v61, v304);
            self = v101;
            v40 = v305;
            v44 = v313;
            if ((v311 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_40;
          }

          objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v104, v309, 2006, v62, @"Invalid data received from server");
          v62 = v111 = v62;
          self = v101;
          v40 = v305;
          v44 = v313;
        }

        else
        {
          v70 = 0;
LABEL_34:
          if (objc_msgSend_hasRecordIdentifier(v43, v77, v78))
          {
            v311 = 1;
            goto LABEL_36;
          }

          v61 = 0;
          v62 = changeCopy;
LABEL_40:
          v105 = objc_msgSend_recordsChangedBlock(self, v93, v94);

          if (!v105)
          {
            goto LABEL_49;
          }

          v106 = [CKDRecordResponse alloc];
          v109 = objc_msgSend_etag(v43, v107, v108);
          v111 = objc_msgSend_initWithRecordID_record_etag_(v106, v110, v61, v70, v109);

          self = selfCopy;
          objc_msgSend_addObject_(selfCopy->_recordResponses, v112, v111);
          if (v61)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v299, v113, v111, v61);
          }
        }

        goto LABEL_49;
      }

      v49 = objc_msgSend_recordIdentifier(v43, v47, v48);

      if (!v49)
      {
        goto LABEL_51;
      }

      v52 = v44;
      v53 = objc_msgSend_translator(self, v50, v51);
      v56 = objc_msgSend_recordIdentifier(v43, v54, v55);
      v59 = objc_msgSend_anonymousCKUserID(dCopy, v57, v58);
      v333 = changeCopy;
      v61 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v53, v60, v56, v59, &v333);
      v62 = v333;

      if (v61)
      {
        objc_msgSend_noteUsageForDeletedRecordID_at_(self, v63, v61, v304);
        objc_msgSend_updateShareIDCacheWithDeletedRecordID_(self, v64, v61);
        v67 = objc_msgSend_recordDeletedBlock(self, v65, v66);

        if (!v67)
        {
          v44 = v52;
          v40 = v305;
          goto LABEL_50;
        }

        v70 = objc_msgSend_recordDeletedBlock(self, v68, v69);
        v73 = objc_msgSend_recordType(v43, v71, v72);
        v76 = objc_msgSend_name(v73, v74, v75);
        (v70)[2](v70, v61, v76);
      }

      else
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, v309, 2006, @"Invalid data received from server");
        v62 = v70 = v62;
      }

      v44 = v52;
      v40 = v305;
LABEL_49:

LABEL_50:
      changeCopy = v62;
LABEL_51:
      objc_autoreleasePoolPop(v44);
      ++v42;
    }

    while (v317 != v42);
    v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v116, &v334, v344, 16);
    v317 = v117;
  }

  while (v117);
LABEL_56:

  v120 = objc_msgSend_recordsChangedBlock(self, v118, v119);

  if (v120)
  {
    v330 = 0u;
    v328 = 0u;
    v329 = 0u;
    v327 = 0u;
    obj = deltaChangesCopy;
    v310 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v121, &v327, v343, 16);
    if (!v310)
    {
      goto LABEL_144;
    }

    v308 = *v328;
    v306 = *MEMORY[0x277CBBF50];
    while (1)
    {
      v124 = 0;
      do
      {
        if (*v328 != v308)
        {
          objc_enumerationMutation(obj);
        }

        v125 = *(*(&v327 + 1) + 8 * v124);
        v126 = objc_msgSend_deltas(v125, v122, v123);
        v129 = objc_msgSend_firstObject(v126, v127, v128);

        if (objc_msgSend_hasEncryptedData(v129, v130, v131))
        {
          hasEncryptedAsset = 1;
        }

        else
        {
          hasEncryptedAsset = objc_msgSend_hasEncryptedAsset(v129, v132, v133);
        }

        v316 = objc_autoreleasePoolPush();
        v137 = objc_msgSend_translator(self, v135, v136);
        v140 = objc_msgSend_recordIdentifier(v125, v138, v139);
        v143 = objc_msgSend_anonymousCKUserID(dCopy, v141, v142);
        v326 = changeCopy;
        v145 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v137, v144, v140, v143, &v326);
        v146 = v326;

        v318 = v145;
        if (v145)
        {
          v149 = objc_msgSend_recordType(v125, v147, v148);
          v152 = objc_msgSend_name(v149, v150, v151);

          if (v152)
          {
            v155 = objc_msgSend_fieldIdentifier(v125, v153, v154);
            v158 = objc_msgSend_name(v155, v156, v157);

            self = selfCopy;
            v307 = v158;
            if (v158)
            {
              v161 = objc_msgSend_identifier(v125, v159, v160);
              v164 = objc_msgSend_value(v161, v162, v163);
              v167 = objc_msgSend_name(v164, v165, v166);

              v301 = v167;
              if (v167)
              {
                v168 = objc_alloc(MEMORY[0x277CBC478]);
                v314 = objc_msgSend_initWithName_recordID_key_encrypted_(v168, v169, v167, v318, v307, hasEncryptedAsset);
                v300 = v129;
                if (v314)
                {
                  v298 = v152;
                  v170 = objc_alloc(MEMORY[0x277CBEB18]);
                  v173 = objc_msgSend_deltas(v125, v171, v172);
                  v176 = objc_msgSend_count(v173, v174, v175);
                  v178 = objc_msgSend_initWithCapacity_(v170, v177, v176);

                  v179 = objc_alloc(MEMORY[0x277CBEB18]);
                  v182 = objc_msgSend_deltas(v125, v180, v181);
                  v185 = objc_msgSend_count(v182, v183, v184);
                  v312 = objc_msgSend_initWithCapacity_(v179, v186, v185);

                  v324 = 0u;
                  v325 = 0u;
                  v322 = 0u;
                  v323 = 0u;
                  v303 = objc_msgSend_deltas(v125, v187, v188);
                  v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v189, &v322, v342, 16);
                  if (v190)
                  {
                    v193 = v190;
                    v194 = *v323;
                    self = selfCopy;
LABEL_72:
                    v195 = 0;
                    while (1)
                    {
                      if (*v323 != v194)
                      {
                        objc_enumerationMutation(v303);
                      }

                      v196 = *(*(&v322 + 1) + 8 * v195);
                      v199 = (objc_msgSend_hasEncryptedData(v196, v191, v192) & 1) != 0 ? 1 : objc_msgSend_hasEncryptedAsset(v196, v197, v198);
                      if (v199 != hasEncryptedAsset)
                      {
                        break;
                      }

                      v200 = objc_msgSend_translator(self, v197, v198);
                      v321 = v146;
                      v202 = objc_msgSend_mergeableDeltaFromPDelta_valueID_error_(v200, v201, v196, v314, &v321);
                      v203 = v321;

                      v204 = *MEMORY[0x277CBC880];
                      if (v202)
                      {
                        v205 = v203 == 0;
                      }

                      else
                      {
                        v205 = 0;
                      }

                      if (!v205)
                      {
                        if (v204 != -1)
                        {
                          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                        }

                        self = selfCopy;
                        v218 = v316;
                        v152 = v298;
                        v229 = *MEMORY[0x277CBC860];
                        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                        {
                          v279 = v229;
                          v282 = objc_msgSend_requestUUID(selfCopy, v280, v281);
                          *buf = 138543618;
                          v346 = v282;
                          v347 = 2112;
                          v348 = v203;
                          _os_log_error_impl(&dword_22506F000, v279, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to load delta when fetching changes: %@", buf, 0x16u);

                          self = selfCopy;
                        }

                        v146 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v230, v306, 2006, v203, @"Failed to parse mergeable delta");

                        goto LABEL_123;
                      }

                      if (v204 != -1)
                      {
                        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                      }

                      self = selfCopy;
                      v206 = *MEMORY[0x277CBC860];
                      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
                      {
                        v212 = v206;
                        v215 = objc_msgSend_requestUUID(selfCopy, v213, v214);
                        *buf = 138543618;
                        v346 = v215;
                        v347 = 2112;
                        v348 = v202;
                        _os_log_debug_impl(&dword_22506F000, v212, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received mergeable delta: %@", buf, 0x16u);

                        self = selfCopy;
                      }

                      objc_msgSend_addObject_(v178, v207, v202);
                      v210 = objc_msgSend_metadata(v202, v208, v209);
                      objc_msgSend_addObject_(v312, v211, v210);

                      v146 = 0;
                      if (v193 == ++v195)
                      {
                        v193 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v191, &v322, v342, 16);
                        v146 = 0;
                        if (v193)
                        {
                          goto LABEL_72;
                        }

                        v218 = v316;
                        v152 = v298;
                        goto LABEL_125;
                      }
                    }

                    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v197, v306, 2006, @"Expected encrypted=%d on all mergeable deltas for %@", hasEncryptedAsset, v314);
                    v146 = v202 = v146;
                    v218 = v316;
                    v152 = v298;
LABEL_123:

                    goto LABEL_124;
                  }

                  self = selfCopy;
                  v218 = v316;
LABEL_124:

                  if (!v146)
                  {
LABEL_125:
                    if (objc_msgSend_count(v178, v216, v217))
                    {
                      v234 = objc_msgSend_objectForKeyedSubscript_(v299, v231, v318);
                      if (!v234)
                      {
                        v235 = objc_alloc(MEMORY[0x277CBC5A0]);
                        v237 = objc_msgSend_initWithRecordType_recordID_(v235, v236, v152, v318);
                        objc_msgSend_setIsMergeableValueDeltaRecord_(v237, v238, 1);
                        v239 = [CKDRecordResponse alloc];
                        v234 = objc_msgSend_initWithRecordID_record_etag_(v239, v240, v318, v237, 0);
                        objc_msgSend_addObject_(self->_recordResponses, v241, v234);
                        objc_msgSend_setObject_forKeyedSubscript_(v299, v242, v234, v318);
                      }

                      v243 = objc_msgSend_record(v234, v232, v233);
                      v246 = v243;
                      if (hasEncryptedAsset)
                      {
                        v247 = objc_msgSend_encryptedValues(v243, v244, v245);
                        v249 = objc_msgSend_objectForKeyedSubscript_(v247, v248, v307);

                        self = selfCopy;
                        if (!v249)
                        {
                          goto LABEL_132;
                        }
                      }

                      else
                      {
                        v249 = objc_msgSend_objectForKeyedSubscript_(v243, v244, v307);
                        if (!v249)
                        {
LABEL_132:
                          v249 = objc_alloc_init(MEMORY[0x277CBC470]);
                          objc_msgSend_setValueID_(v249, v259, v314);
                          objc_msgSend_setIsValueIDKnownToServer_(v249, v260, 1);
                          if (hasEncryptedAsset)
                          {
                            v263 = objc_msgSend_encryptedValues(v246, v261, v262);
                            objc_msgSend_setObject_forKeyedSubscript_(v263, v264, v249, v307);
                          }

                          else
                          {
                            objc_msgSend_setObject_forKeyedSubscript_(v246, v261, v249, v307);
                          }
                        }
                      }

                      objc_msgSend_addUnmergedDeltas_(v249, v250, v178);
                      objc_msgSend_addServerDeltaMetadatas_(v249, v273, v312);
                      objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(v249, v274, v178);
                    }

                    v146 = 0;
                  }
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v227 = *MEMORY[0x277CBC860];
                  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                  {
                    v275 = v227;
                    v278 = objc_msgSend_requestUUID(selfCopy, v276, v277);
                    *buf = 138543618;
                    v346 = v278;
                    v347 = 2112;
                    v348 = v146;
                    _os_log_error_impl(&dword_22506F000, v275, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get value ID for mergeable delta change: %@", buf, 0x16u);
                  }

                  objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v228, v306, 2006, v146, @"Failed to parse mergeable value ID");
                  v146 = v178 = v146;
                  v218 = v316;
                }

                changeCopy = v146;

                v146 = v314;
                v129 = v300;
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v225 = *MEMORY[0x277CBC860];
                if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                {
                  v269 = v225;
                  v272 = objc_msgSend_requestUUID(selfCopy, v270, v271);
                  *buf = 138543618;
                  v346 = v272;
                  v347 = 2112;
                  v348 = v125;
                  _os_log_error_impl(&dword_22506F000, v269, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get location name from mergeable delta change %@", buf, 0x16u);
                }

                changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v226, v306, 2006, v146, @"Failed to get mergeable ID from mergeable delta");
                v218 = v316;
              }

              v146 = v301;
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v223 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v265 = v223;
                v268 = objc_msgSend_requestUUID(selfCopy, v266, v267);
                *buf = 138543618;
                v346 = v268;
                v347 = 2112;
                v348 = v125;
                _os_log_error_impl(&dword_22506F000, v265, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get record field key for %@", buf, 0x16u);
              }

              changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v224, v306, 2006, v146, @"Failed to get record field key");
              v218 = v316;
            }

            v146 = v307;
          }

          else
          {
            self = selfCopy;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v221 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v255 = v221;
              v258 = objc_msgSend_requestUUID(selfCopy, v256, v257);
              *buf = 138543618;
              v346 = v258;
              v347 = 2112;
              v348 = v125;
              _os_log_error_impl(&dword_22506F000, v255, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get record type for mergeable delta change %@", buf, 0x16u);
            }

            changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v222, v306, 2006, v146, @"Failed to parse record type");
            v218 = v316;
          }

          v146 = v152;
          goto LABEL_142;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        self = selfCopy;
        v219 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v251 = v219;
          v254 = objc_msgSend_requestUUID(selfCopy, v252, v253);
          *buf = 138543618;
          v346 = v254;
          v347 = 2112;
          v348 = v125;
          _os_log_error_impl(&dword_22506F000, v251, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get record ID for mergeable delta change %@", buf, 0x16u);
        }

        changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v220, v306, 2006, v146, @"Failed to parse record ID");
        v218 = v316;
LABEL_142:

        objc_autoreleasePoolPop(v218);
        ++v124;
      }

      while (v124 != v310);
      v310 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v122, &v327, v343, 16);
      if (!v310)
      {
LABEL_144:

        v40 = v305;
        break;
      }
    }
  }

  v283 = changeCopy;

  return changeCopy;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v143 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (!objc_msgSend_hasRecordRetrieveChangesResponse(objectCopy, v6, v7))
  {
    v46 = 0;
    goto LABEL_26;
  }

  v10 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v8, v9);
  v13 = objc_msgSend_response(objectCopy, v11, v12);
  v16 = objc_msgSend_operationUUID(v13, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, v16);

  if (!v18)
  {
    v119 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    v122 = objc_msgSend_response(objectCopy, v120, v121);
    v125 = objc_msgSend_operationUUID(v122, v123, v124);
    v128 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v126, v127);
    v131 = objc_msgSend_allKeys(v128, v129, v130);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v119, v132, a2, self, @"CKDFetchRecordZoneChangesURLRequest.m", 388, @"Got a response for an unknown zone with request operation %@ %@", v125, v131);
  }

  v21 = objc_msgSend_recordsChangedBlock(self, v19, v20);
  selfCopy = self;
  if (v21 || (objc_msgSend_recordDeletedBlock(self, v22, v23), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_7:
    v28 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v26, v27);
    v31 = objc_msgSend_changedRecords(v28, v29, v30);
    v34 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v32, v33);
    v37 = objc_msgSend_changedDeltas(v34, v35, v36);
    v38 = objectCopy;
    v41 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v39, v40);
    v44 = objc_msgSend_zoneAttributesChange(v41, v42, v43);
    v46 = objc_msgSend__handleRecordChanges_deltaChanges_zoneAttributesChange_forZoneID_(self, v45, v31, v37, v44, v18);

    if (v46)
    {
      v47 = v46;
    }

    objectCopy = v38;
    goto LABEL_10;
  }

  v118 = objc_msgSend_zoneAttributesChangedBlock(self, v24, v25);

  if (v118)
  {
    goto LABEL_7;
  }

  v46 = 0;
LABEL_10:
  v48 = objc_opt_new();
  v51 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v49, v50);
  v54 = objc_msgSend_syncContinuationToken(v51, v52, v53);
  objc_msgSend_setResultServerChangeTokenData_(v48, v55, v54);

  v58 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v56, v57);
  v61 = objc_msgSend_clientChangeToken(v58, v59, v60);
  objc_msgSend_setResultClientChangeTokenData_(v48, v62, v61);

  v65 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v63, v64);
  v68 = objc_msgSend_pendingArchivedRecords(v65, v66, v67);
  objc_msgSend_setHasPendingArchivedRecords_(v48, v69, v68);

  v72 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v70, v71);
  v75 = objc_msgSend_syncObligationsCount(v72, v73, v74);

  v135 = v18;
  if (v75)
  {
    v133 = v48;
    v78 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v134 = objectCopy;
    v81 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v79, v80);
    v84 = objc_msgSend_syncObligations(v81, v82, v83);

    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v138, v142, 16);
    if (v86)
    {
      v89 = v86;
      v90 = *v139;
      do
      {
        v91 = 0;
        v92 = v46;
        do
        {
          if (*v139 != v90)
          {
            objc_enumerationMutation(v84);
          }

          v93 = *(*(&v138 + 1) + 8 * v91);
          v94 = objc_msgSend_translator(selfCopy, v87, v88);
          v97 = objc_msgSend_zoneIdentifier(v93, v95, v96);
          v137 = v92;
          v99 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(v94, v98, v97, &v137);
          v46 = v137;

          objc_msgSend_addObject_(v78, v100, v99);
          ++v91;
          v92 = v46;
        }

        while (v89 != v91);
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v87, &v138, v142, 16);
      }

      while (v89);
    }

    v48 = v133;
    objc_msgSend_setSyncObligationZoneIDs_(v133, v101, v78);

    objectCopy = v134;
  }

  v102 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v76, v77);
  hasStatus = objc_msgSend_hasStatus(v102, v103, v104);

  if (hasStatus)
  {
    v108 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v106, v107);
    v111 = objc_msgSend_status(v108, v109, v110);

    if (v111 - 1 >= 3)
    {
      v112 = -1;
    }

    else
    {
      v112 = v111;
    }
  }

  else
  {
    v112 = -1;
  }

  objc_msgSend_setStatus_(v48, v106, v112);
  v115 = objc_msgSend_requestResultsByRecordZoneID(selfCopy, v113, v114);
  objc_msgSend_setObject_forKeyedSubscript_(v115, v116, v48, v135);

LABEL_26:

  return v46;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v67 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_result(failureCopy, v16, v17);
  if (objc_msgSend_code(v18, v19, v20) != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v51 = v21;
      v54 = objc_msgSend_error(v18, v52, v53);
      v57 = objc_msgSend_errorDescription(v54, v55, v56);
      *buf = 138543618;
      v64 = v15;
      v65 = 2114;
      v66 = v57;
      _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Error fetching changes in zone %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CBC560];
    v23 = *MEMORY[0x277CBC120];
    v24 = sub_2253962A4(v18);
    v25 = sub_225395734(self, v18);
    v28 = objc_msgSend_error(v18, v26, v27);
    v31 = objc_msgSend_errorDescription(v28, v29, v30);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_format_(v22, v32, v23, v24, v25, @"Error fetching changes in zone %@: %@", v15, v31);

    if (v15)
    {
      v36 = objc_msgSend_nodeErrorsByZoneID(self, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v33, v15);
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v38 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v34, v35);
      v36 = objc_msgSend_allValues(v38, v39, v40);

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, &v58, v62, 16);
      if (v42)
      {
        v45 = v42;
        v46 = *v59;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v59 != v46)
            {
              objc_enumerationMutation(v36);
            }

            v48 = *(*(&v58 + 1) + 8 * i);
            v49 = objc_msgSend_nodeErrorsByZoneID(self, v43, v44);
            objc_msgSend_setObject_forKeyedSubscript_(v49, v50, v33, v48);
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v43, &v58, v62, 16);
        }

        while (v45);
        v15 = 0;
      }
    }
  }
}

- (void)requestDidComplete
{
  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_recordsChangedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_recordsChangedBlock(self, v7, v8);
    (v9)[2](v9, self->_recordResponses);
  }

  objc_autoreleasePoolPop(v3);
}

@end