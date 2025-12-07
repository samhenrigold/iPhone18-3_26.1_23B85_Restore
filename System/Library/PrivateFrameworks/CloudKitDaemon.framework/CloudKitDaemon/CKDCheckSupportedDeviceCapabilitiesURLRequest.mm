@interface CKDCheckSupportedDeviceCapabilitiesURLRequest
- (CKDCheckSupportedDeviceCapabilitiesURLRequest)initWithOperation:(id)operation continuations:(id)continuations zoneIDs:(id)ds desiredCapabilitySets:(id)sets options:(id)options;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)reportClientValidationError:(id)error forZoneID:(id)d capabilitySet:(id)set failureType:(id)type;
- (void)reportContinuationToken:(id)token forZoneID:(id)d capabilitySet:(id)set;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDCheckSupportedDeviceCapabilitiesURLRequest

- (CKDCheckSupportedDeviceCapabilitiesURLRequest)initWithOperation:(id)operation continuations:(id)continuations zoneIDs:(id)ds desiredCapabilitySets:(id)sets options:(id)options
{
  continuationsCopy = continuations;
  dsCopy = ds;
  setsCopy = sets;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = CKDCheckSupportedDeviceCapabilitiesURLRequest;
  v17 = [(CKDURLRequest *)&v24 initWithOperation:operation];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_continuations, continuations);
    objc_storeStrong(&v18->_zoneIDs, ds);
    objc_storeStrong(&v18->_desiredCapabilitySets, sets);
    v19 = objc_opt_new();
    zoneIDByRequestID = v18->_zoneIDByRequestID;
    v18->_zoneIDByRequestID = v19;

    v21 = objc_opt_new();
    capabililitySetsByRequestID = v18->_capabililitySetsByRequestID;
    v18->_capabililitySetsByRequestID = v21;

    objc_storeStrong(&v18->_options, options);
  }

  return v18;
}

- (id)requestOperationClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

- (id)generateRequestOperations
{
  v248 = *MEMORY[0x277D85DE8];
  v226 = objc_opt_new();
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  obj = objc_msgSend_continuations(self, v3, v4);
  v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v237, v247, 16);
  if (v227)
  {
    v224 = *v238;
    do
    {
      v6 = 0;
      do
      {
        if (*v238 != v224)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v237 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v11 = objc_msgSend_continuationToken(v7, v9, v10);
        objc_msgSend_setContinuation_(v8, v12, v11);

        v15 = objc_msgSend_translator(self, v13, v14);
        v18 = objc_msgSend_zoneID(v7, v16, v17);
        v20 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v15, v19, v18);
        objc_msgSend_setZoneIdentifier_(v8, v21, v20);

        v24 = objc_msgSend_translator(self, v22, v23);
        v27 = objc_msgSend_capabilitySet(v7, v25, v26);
        v30 = objc_msgSend_container(self, v28, v29);
        v33 = objc_msgSend_deviceID(v30, v31, v32);
        v35 = objc_msgSend_pDeviceCapabilitiesFromDeviceCapabilitySet_withDeviceID_(v24, v34, v27, v33);

        v38 = objc_msgSend_zoneLevelCapabilities(v35, v36, v37);
        objc_msgSend_setZoneLevelCapabilities_(v8, v39, v38);

        v42 = objc_msgSend_recordLevelCapabilities(v35, v40, v41);
        objc_msgSend_setRecordLevelCapabilities_(v8, v43, v42);

        v44 = v35;
        v47 = objc_msgSend_fieldLevelCapabilities(v35, v45, v46);
        objc_msgSend_setFieldLevelCapabilities_(v8, v48, v47);

        v51 = objc_msgSend_options(self, v49, v50);
        LODWORD(v33) = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v51, v52, v53);

        if (v33)
        {
          v56 = objc_msgSend_options(self, v54, v55);
          v59 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v56, v57, v58);
          objc_msgSend_setExcludeDevicesWithoutCapabilityCheckingSupport_(v8, v60, v59);
        }

        v61 = objc_msgSend_options(self, v54, v55);
        v64 = objc_msgSend_excludeZoneAccessBefore(v61, v62, v63);

        if (v64)
        {
          v67 = objc_msgSend_translator(self, v65, v66);
          v70 = objc_msgSend_options(self, v68, v69);
          v73 = objc_msgSend_excludeZoneAccessBefore(v70, v71, v72);
          v75 = objc_msgSend_pDateFromDate_(v67, v74, v73);
          objc_msgSend_setExcludeZoneAccessBefore_(v8, v76, v75);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v77 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
        {
          v112 = v77;
          v115 = objc_msgSend_requestUUID(self, v113, v114);
          *buf = 138543618;
          v244 = v115;
          v245 = 2112;
          v246 = v8;
          _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "req: %{public}@, Sending continuation device capabilities check: %@", buf, 0x16u);
        }

        v80 = objc_msgSend_operationType(self, v78, v79);
        v82 = objc_msgSend_operationRequestWithType_(self, v81, v80);
        objc_msgSend_setAdopterCapabilitiesCheckRequest_(v82, v83, v8);
        v86 = objc_msgSend_zoneID(v7, v84, v85);
        v89 = objc_msgSend_zoneIDByRequestID(self, v87, v88);
        v92 = objc_msgSend_request(v82, v90, v91);
        v95 = objc_msgSend_operationUUID(v92, v93, v94);
        objc_msgSend_setObject_forKeyedSubscript_(v89, v96, v86, v95);

        v99 = objc_msgSend_capabilitySet(v7, v97, v98);
        v102 = objc_msgSend_capabililitySetsByRequestID(self, v100, v101);
        v105 = objc_msgSend_request(v82, v103, v104);
        v108 = objc_msgSend_operationUUID(v105, v106, v107);
        objc_msgSend_setObject_forKeyedSubscript_(v102, v109, v99, v108);

        objc_msgSend_addObject_(v226, v110, v82);
        ++v6;
      }

      while (v227 != v6);
      v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v111, &v237, v247, 16);
    }

    while (v227);
  }

  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v218 = objc_msgSend_zoneIDs(self, v116, v117);
  v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v218, v118, &v233, v242, 16);
  if (v220)
  {
    v219 = *v234;
    do
    {
      v121 = 0;
      do
      {
        if (*v234 != v219)
        {
          objc_enumerationMutation(v218);
        }

        v221 = v121;
        v122 = *(*(&v233 + 1) + 8 * v121);
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        obja = objc_msgSend_desiredCapabilitySets(self, v119, v120);
        v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v123, &v229, v241, 16);
        if (v228)
        {
          v225 = *v230;
          do
          {
            v124 = 0;
            do
            {
              if (*v230 != v225)
              {
                objc_enumerationMutation(obja);
              }

              v125 = *(*(&v229 + 1) + 8 * v124);
              v126 = objc_opt_new();
              v129 = objc_msgSend_translator(self, v127, v128);
              v131 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v129, v130, v122);
              objc_msgSend_setZoneIdentifier_(v126, v132, v131);

              v135 = objc_msgSend_translator(self, v133, v134);
              v138 = objc_msgSend_container(self, v136, v137);
              v141 = objc_msgSend_deviceID(v138, v139, v140);
              v143 = objc_msgSend_pDeviceCapabilitiesFromDeviceCapabilitySet_withDeviceID_(v135, v142, v125, v141);

              v146 = objc_msgSend_zoneLevelCapabilities(v143, v144, v145);
              objc_msgSend_setZoneLevelCapabilities_(v126, v147, v146);

              v150 = objc_msgSend_recordLevelCapabilities(v143, v148, v149);
              objc_msgSend_setRecordLevelCapabilities_(v126, v151, v150);

              v154 = objc_msgSend_fieldLevelCapabilities(v143, v152, v153);
              objc_msgSend_setFieldLevelCapabilities_(v126, v155, v154);

              v158 = objc_msgSend_options(self, v156, v157);
              LODWORD(v138) = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v158, v159, v160);

              if (v138)
              {
                v163 = objc_msgSend_options(self, v161, v162);
                v166 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v163, v164, v165);
                objc_msgSend_setExcludeDevicesWithoutCapabilityCheckingSupport_(v126, v167, v166);
              }

              v168 = objc_msgSend_options(self, v161, v162);
              v171 = objc_msgSend_excludeZoneAccessBefore(v168, v169, v170);

              if (v171)
              {
                v174 = objc_msgSend_translator(self, v172, v173);
                v177 = objc_msgSend_options(self, v175, v176);
                v180 = objc_msgSend_excludeZoneAccessBefore(v177, v178, v179);
                v182 = objc_msgSend_pDateFromDate_(v174, v181, v180);
                objc_msgSend_setExcludeZoneAccessBefore_(v126, v183, v182);
              }

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v184 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
              {
                v213 = v184;
                v216 = objc_msgSend_requestUUID(self, v214, v215);
                *buf = 138543618;
                v244 = v216;
                v245 = 2112;
                v246 = v126;
                _os_log_debug_impl(&dword_22506F000, v213, OS_LOG_TYPE_DEBUG, "req: %{public}@, Sending device capabilities check: %@", buf, 0x16u);
              }

              v187 = objc_msgSend_operationType(self, v185, v186);
              v189 = objc_msgSend_operationRequestWithType_(self, v188, v187);
              objc_msgSend_setAdopterCapabilitiesCheckRequest_(v189, v190, v126);
              v193 = objc_msgSend_zoneIDByRequestID(self, v191, v192);
              v196 = objc_msgSend_request(v189, v194, v195);
              v199 = objc_msgSend_operationUUID(v196, v197, v198);
              objc_msgSend_setObject_forKeyedSubscript_(v193, v200, v122, v199);

              v203 = objc_msgSend_capabililitySetsByRequestID(self, v201, v202);
              v206 = objc_msgSend_request(v189, v204, v205);
              v209 = objc_msgSend_operationUUID(v206, v207, v208);
              objc_msgSend_setObject_forKeyedSubscript_(v203, v210, v125, v209);

              objc_msgSend_addObject_(v226, v211, v189);
              ++v124;
            }

            while (v228 != v124);
            v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v212, &v229, v241, 16);
          }

          while (v228);
        }

        v121 = v221 + 1;
      }

      while (v221 + 1 != v220);
      v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v218, v119, &v233, v242, 16);
    }

    while (v220);
  }

  return v226;
}

- (void)reportClientValidationError:(id)error forZoneID:(id)d capabilitySet:(id)set failureType:(id)type
{
  errorCopy = error;
  dCopy = d;
  setCopy = set;
  typeCopy = type;
  v16 = objc_msgSend_errorFromClientValidationBlock(self, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_errorFromClientValidationBlock(self, v17, v18);
    (v19)[2](v19, errorCopy, dCopy, setCopy);
  }

  if (typeCopy)
  {
    v20 = objc_msgSend_operation(self, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2253DF7FC;
    v22[3] = &unk_2785487F8;
    v23 = typeCopy;
    objc_msgSend_updateCloudKitMetrics_(v20, v21, v22);
  }
}

- (void)reportContinuationToken:(id)token forZoneID:(id)d capabilitySet:(id)set
{
  v29 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dCopy = d;
  tokenCopy = token;
  v11 = [CKDCheckSupportedDeviceCapabilitiesContinuationParams alloc];
  v13 = objc_msgSend_initWithContinuationToken_zoneID_capabilitySet_(v11, v12, tokenCopy, dCopy, setCopy);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v17 = v14;
    v20 = objc_msgSend_requestUUID(self, v18, v19);
    v25 = 138543618;
    v26 = v20;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "req: %{public}@, Received continuation token from device capability check: %@", &v25, 0x16u);
  }

  v21 = objc_msgSend_continuationResponseBlock(self, v15, v16);

  if (v21)
  {
    v24 = objc_msgSend_continuationResponseBlock(self, v22, v23);
    (v24)[2](v24, v13);
  }
}

- (id)requestDidParseProtobufObject:(id)object
{
  v729 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_zoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_capabililitySetsByRequestID(self, v16, v17);
  v21 = objc_msgSend_response(objectCopy, v19, v20);
  v24 = objc_msgSend_operationUUID(v21, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);

  v27 = MEMORY[0x277CBC878];
  v28 = *MEMORY[0x277CBC878];
  v29 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v28);
  }

  v30 = MEMORY[0x277CBC860];
  v31 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v90 = objc_msgSend_requestUUID(self, v32, v33);
    *buf = 138543874;
    v716 = v90;
    v717 = 2112;
    v718 = objectCopy;
    v719 = 2112;
    v720 = v15;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received device capabilities check response: %@ for zoneID: %@", buf, 0x20u);
  }

  v36 = objc_msgSend_result(objectCopy, v34, v35);
  hasError = objc_msgSend_hasError(v36, v37, v38);

  if (!hasError)
  {
    v48 = objc_opt_new();
    v707 = v48;
    if (!objc_msgSend_hasAdopterCapabilitiesCheckResponse(objectCopy, v49, v50))
    {
      v45 = 0;
      v703 = 0;
      v66 = 0;
LABEL_14:
      v67 = *v27;
      if (*v29 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v67);
      }

      v68 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v121 = objc_msgSend_requestUUID(self, v69, v70);
        v124 = objc_msgSend_result(objectCopy, v122, v123);
        *buf = 138543874;
        v716 = v121;
        v717 = 2112;
        v718 = v124;
        v719 = 2112;
        v720 = v15;
        _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "req: %{public}@, Incomplete device capability check response from the server: %@, zoneID: %@", buf, 0x20u);
      }

      v71 = MEMORY[0x277CBC560];
      v72 = *MEMORY[0x277CBBF50];
      v75 = objc_msgSend_requestUUID(self, v73, v74);
      v64 = objc_msgSend_errorWithDomain_code_format_(v71, v76, v72, 161, @"Incomplete device capability check response for request %@", v75);

      objc_msgSend_reportClientValidationError_forZoneID_capabilitySet_failureType_(self, v77, v64, v15, v26, v66);
      goto LABEL_47;
    }

    v53 = objc_msgSend_adopterCapabilitiesCheckResponse(objectCopy, v51, v52);
    if (objc_msgSend_hasContinuation(v53, v54, v55))
    {
      v58 = objc_msgSend_continuation(v53, v56, v57);
      v61 = objc_msgSend_length(v58, v59, v60);

      if (v61)
      {
        v62 = objc_msgSend_continuation(v53, v56, v57);

        if (v62)
        {
          objc_msgSend_reportContinuationToken_forZoneID_capabilitySet_(self, v63, v62, v15, v26);

          v64 = 0;
          v65 = 0;
          v45 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v45 = 0;
        v703 = 0;
        v66 = 0;
LABEL_211:
        v29 = MEMORY[0x277CBC880];
        goto LABEL_14;
      }
    }

    v702 = v53;
    if (!objc_msgSend_hasIsSupported(v53, v56, v57))
    {
      goto LABEL_44;
    }

    if (objc_msgSend_isSupported(v53, v78, v79))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v82 = *v30;
      v83 = 1;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_INFO))
      {
        v84 = v82;
        v87 = objc_msgSend_requestUUID(self, v85, v86);
        *buf = 138543618;
        v716 = v87;
        v717 = 2112;
        v718 = v15;
        _os_log_impl(&dword_22506F000, v84, OS_LOG_TYPE_INFO, "req: %{public}@, Server returned isSupported:YES for the device capability check. zoneID: %@", buf, 0x16u);
      }

      v66 = 0;
      v64 = 0;
      v703 = 0;
      v88 = 0;
      v693 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      LOBYTE(v89) = 1;
      goto LABEL_45;
    }

    if (!objc_msgSend_hasSignedSupportedAdopterCapabilities(v53, v80, v81) || (hasSignedZoneUsage = objc_msgSend_hasSignedZoneUsage(v53, v91, v92), v96 = v53, v97 = MEMORY[0x277CBC880], (hasSignedZoneUsage & 1) == 0) && !objc_msgSend_hasSignedShareUsage(v96, v94, v95))
    {
LABEL_44:
      v66 = 0;
      v64 = 0;
      v703 = 0;
      v88 = 0;
      v693 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      v83 = 0;
      LOBYTE(v89) = 0;
      goto LABEL_45;
    }

    if (objc_msgSend_hasSignedZoneUsage(v96, v94, v95) && objc_msgSend_hasSignedShareUsage(v96, v98, v99))
    {
      v100 = *v27;
      if (*v97 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v100);
      }

      v101 = *v30;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v104 = objc_msgSend_requestUUID(self, v102, v103);
        *buf = 138543618;
        v716 = v104;
        v717 = 2112;
        v718 = v15;
        _os_log_impl(&dword_22506F000, v101, OS_LOG_TYPE_INFO, "req: %{public}@, Warn: Unexpected - server returned isSupported:NO with both zone and share usage! zoneID: %@", buf, 0x16u);
      }

      v96 = v702;
    }

    if (!objc_msgSend_hasSignedZoneUsage(v96, v98, v99))
    {
      v691 = 0;
      v688 = 0;
      v689 = 0;
      v66 = 0;
      v64 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      v125 = @"share participant";
      goto LABEL_53;
    }

    v107 = objc_msgSend_signedZoneUsage(v96, v105, v106);
    v692 = v107;
    if (objc_msgSend_hasVersion(v107, v108, v109) && objc_msgSend_version(v107, v110, v111) >= 2)
    {
      if (*v97 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v112 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v506 = v112;
        v509 = objc_msgSend_requestUUID(self, v507, v508);
        v512 = objc_msgSend_version(v692, v510, v511);
        *buf = 138543874;
        v716 = v509;
        v717 = 2048;
        v718 = v512;
        v719 = 2112;
        v720 = v15;
        _os_log_error_impl(&dword_22506F000, v506, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Zone usage blob version %ld is not supported. zoneID: %@", buf, 0x20u);
      }

      v115 = MEMORY[0x277CBC560];
      v116 = *MEMORY[0x277CBBF50];
      v690 = objc_msgSend_requestUUID(self, v113, v114);
      v64 = objc_msgSend_errorWithDomain_code_format_(v115, v117, v116, 160, @"Unsupported zone usage version in device capability check response for request %@", v690);
      v691 = 0;
      v688 = 0;
      v689 = 0;
      v703 = 0;
      v88 = 0;
      v693 = 0;
      canValidateWithKT = 0;
      v45 = 0;
      LOBYTE(v89) = 0;
      v83 = 10;
      v66 = @"unsupportedSignedVersionedBlobVersion";
      goto LABEL_203;
    }

    if (objc_msgSend_hasSignature(v107, v110, v111) && (v141 = v107, objc_msgSend_signature(v107, v139, v140), v142 = objc_claimAutoreleasedReturnValue(), v145 = objc_msgSend_length(v142, v143, v144), v142, v145))
    {
      v146 = objc_msgSend_container(self, v139, v140);
      v149 = objc_msgSend_pcsManager(v146, v147, v148);
      v152 = objc_msgSend_signature(v141, v150, v151);
      v155 = objc_msgSend_serializedObject(v141, v153, v154);
      v714 = 0;
      v157 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v149, v156, v152, v155, &v714);
      v89 = v714;

      if (!v157 || v89)
      {
        v690 = v89;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v413 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v544 = v413;
          v547 = objc_msgSend_requestUUID(self, v545, v546);
          *buf = 138543874;
          v716 = v547;
          v717 = 2112;
          v718 = v89;
          v719 = 2112;
          v720 = v15;
          _os_log_error_impl(&dword_22506F000, v544, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Zone usage signature validation failed: %@ zoneID: %@", buf, 0x20u);
        }

        v416 = MEMORY[0x277CBC560];
        v417 = *MEMORY[0x277CBBF50];
        v418 = objc_msgSend_requestUUID(self, v414, v415);
        v64 = objc_msgSend_errorWithDomain_code_error_format_(v416, v419, v417, 161, v89, @"Failed to validate zone usage signature in device capability check response for request %@", v418);

        v691 = 0;
        v688 = 0;
        v689 = 0;
        v703 = 0;
        v88 = 0;
        v693 = 0;
        canValidateWithKT = 0;
        v45 = 0;
        LOBYTE(v89) = 0;
        v83 = 10;
        v66 = @"invalidZoneUsageSignature";
        goto LABEL_203;
      }

      canValidateWithKT = objc_msgSend_canValidateWithKT(v692, v158, v159);
      v162 = objc_msgSend_container(self, v160, v161);
      v165 = objc_msgSend_pcsManager(v162, v163, v164);
      v168 = objc_msgSend_signature(v692, v166, v167);
      v713 = 0;
      v170 = objc_msgSend_publicKeyFromSignature_error_(v165, v169, v168, &v713);
      v171 = v713;

      v27 = MEMORY[0x277CBC878];
      v30 = MEMORY[0x277CBC860];
      if (v171)
      {
        v172 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v172);
        }

        v173 = *v30;
        if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
        {
          v570 = objc_msgSend_requestUUID(self, v174, v175);
          *buf = 138543618;
          v716 = v570;
          v717 = 2112;
          v718 = v171;
          _os_log_error_impl(&dword_22506F000, v173, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to extract public key from the signature: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v176 = objc_msgSend_options(self, v139, v140);
      v179 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v176, v177, v178);

      if (v179)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v27);
        }

        v180 = *v30;
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          v502 = v180;
          v505 = objc_msgSend_requestUUID(self, v503, v504);
          *buf = 138543362;
          v716 = v505;
          _os_log_error_impl(&dword_22506F000, v502, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server. Server returned isSupported:NO for a device without capability checking support, when devices without capability checking support should have been excluded.", buf, 0xCu);
        }

        v183 = MEMORY[0x277CBC560];
        v184 = *MEMORY[0x277CBBF50];
        v690 = objc_msgSend_requestUUID(self, v181, v182);
        v64 = objc_msgSend_errorWithDomain_code_format_(v183, v185, v184, 161, @"Device without capability checking support should have been excluded, but was returned by server in request: %@", v690);
        v691 = 0;
        v688 = 0;
        v689 = 0;
        v703 = 0;
        v88 = 0;
        v693 = 0;
        canValidateWithKT = 0;
        v45 = 0;
        LOBYTE(v89) = 0;
        v83 = 10;
        v66 = @"serverDetectedDeviceNotExcluded";
        goto LABEL_203;
      }

      v170 = 0;
      canValidateWithKT = 0;
    }

    v277 = [CKDPZoneUsage alloc];
    v280 = objc_msgSend_serializedObject(v692, v278, v279);
    v282 = objc_msgSend_initWithData_(v277, v281, v280);

    v690 = v282;
    v691 = v170;
    if (objc_msgSend_hasVersion(v282, v283, v284) && objc_msgSend_version(v282, v285, v286) >= 2)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v287 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v548 = v287;
        v551 = objc_msgSend_requestUUID(self, v549, v550);
        v554 = objc_msgSend_version(v690, v552, v553);
        *buf = 138543874;
        v716 = v551;
        v717 = 2048;
        v718 = v554;
        v719 = 2112;
        v720 = v15;
        _os_log_error_impl(&dword_22506F000, v548, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Zone usage version %ld is not supported. zoneID: %@", buf, 0x20u);
      }

      v290 = MEMORY[0x277CBC560];
      v291 = *MEMORY[0x277CBBF50];
      v292 = objc_msgSend_requestUUID(self, v288, v289);
      v64 = objc_msgSend_errorWithDomain_code_format_(v290, v293, v291, 160, @"Unsupported zone usage version in device capability check response for request %@", v292);
      v66 = @"unsupportedZoneUsageVersion";
LABEL_136:

      v688 = 0;
      v689 = 0;
      v703 = 0;
      v88 = 0;
      v693 = 0;
      v45 = 0;
      LOBYTE(v89) = 0;
      v83 = 10;
LABEL_203:

      goto LABEL_204;
    }

    v294 = MEMORY[0x277CBC880];
    if (!v282 || !objc_msgSend_hasZoneIdentifier(v282, v285, v286) || !objc_msgSend_hasUserIdentifier(v282, v295, v296) || !objc_msgSend_hasDeviceIdentifier(v282, v297, v298) || (objc_msgSend_hasTime(v282, v299, v300) & 1) == 0)
    {
      if (*v294 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v27);
      }

      v337 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v498 = v337;
        v501 = objc_msgSend_requestUUID(self, v499, v500);
        *buf = 138543874;
        v716 = v501;
        v717 = 2112;
        v718 = v690;
        v719 = 2112;
        v720 = v15;
        _os_log_error_impl(&dword_22506F000, v498, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid zone usage content: %@, zoneID: %@", buf, 0x20u);
      }

      v340 = MEMORY[0x277CBC560];
      v341 = *MEMORY[0x277CBBF50];
      v292 = objc_msgSend_requestUUID(self, v338, v339);
      v64 = objc_msgSend_errorWithDomain_code_format_(v340, v342, v341, 161, @"Invalid zone usage content in device capability check response for request %@", v292);
      v66 = @"incompleteZoneUsage";
      goto LABEL_136;
    }

    objc_msgSend_translator(self, v301, v302);
    v304 = v303 = v282;
    v307 = objc_msgSend_time(v303, v305, v306);
    v689 = objc_msgSend_dateFromPDate_(v304, v308, v307);

    v311 = objc_msgSend_deviceIdentifier(v303, v309, v310);
    v688 = objc_msgSend_name(v311, v312, v313);

    v316 = objc_msgSend_userIdentifier(v303, v314, v315);
    v45 = objc_msgSend_name(v316, v317, v318);

    v321 = objc_msgSend_translator(self, v319, v320);
    v324 = objc_msgSend_zoneIdentifier(v303, v322, v323);
    v712 = 0;
    v326 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(v321, v325, v324, &v712);
    v698 = v712;

    v706 = v326;
    if (objc_msgSend_isEqual_(v326, v327, v15))
    {
      v330 = objc_msgSend_translator(self, v328, v329);
      v333 = objc_msgSend_containerScopedUserID(v330, v331, v332);
      isEqual = objc_msgSend_isEqual_(v45, v334, v333);

      if (isEqual)
      {
        v66 = 0;
        v64 = 0;
        v83 = 0;
        LODWORD(v89) = 1;
        v336 = v698;
LABEL_231:

        if (!v89)
        {
          v703 = 0;
          v88 = 0;
          v693 = 0;
          goto LABEL_204;
        }

        v125 = @"owner";
        v27 = MEMORY[0x277CBC878];
LABEL_53:
        if (!objc_msgSend_hasSignedShareUsage(v702, v105, v106))
        {
          v686 = v125;
          v703 = 0;
LABEL_79:
          v186 = objc_msgSend_options(self, v126, v127);
          v189 = objc_msgSend_excludeZoneAccessBefore(v186, v187, v188);

          v692 = v189;
          if (v189)
          {
            objc_msgSend_timeIntervalSinceDate_(v689, v190, v189);
            if (v192 < 0.0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *v27);
              }

              v193 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v513 = v193;
                v516 = objc_msgSend_requestUUID(self, v514, v515);
                *buf = 138544130;
                v716 = v516;
                v717 = 2112;
                v718 = v689;
                v719 = 2112;
                v720 = v189;
                v721 = 2112;
                v722 = v15;
                _os_log_error_impl(&dword_22506F000, v513, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server: Zone/share usage blob date is too old: %@ (vs. %@), zoneID: %@", buf, 0x2Au);
              }

              v196 = MEMORY[0x277CBC560];
              v197 = *MEMORY[0x277CBBF50];
              v690 = objc_msgSend_requestUUID(self, v194, v195);
              v685 = objc_msgSend_errorWithDomain_code_format_(v196, v198, v197, 161, @"Invalid zone/share usage date (%@) in device capability check response for request %@", v689, v690);
              v88 = 0;
              v693 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v66 = @"usageTooOld";
              goto LABEL_201;
            }
          }

          v232 = objc_msgSend_signedSupportedAdopterCapabilities(v702, v190, v191);
          v690 = v232;
          if (objc_msgSend_hasVersion(v232, v233, v234) && objc_msgSend_version(v232, v235, v236) >= 2)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *v27);
            }

            v237 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v563 = v237;
              v566 = objc_msgSend_requestUUID(self, v564, v565);
              v569 = objc_msgSend_version(v232, v567, v568);
              *buf = 138543874;
              v716 = v566;
              v717 = 2048;
              v718 = v569;
              v719 = 2112;
              v720 = v15;
              _os_log_error_impl(&dword_22506F000, v563, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Device capabilities blob version %ld is not supported. zoneID: %@", buf, 0x20u);
            }

            v240 = MEMORY[0x277CBC560];
            v241 = *MEMORY[0x277CBBF50];
            v683 = objc_msgSend_requestUUID(self, v238, v239);
            v685 = objc_msgSend_errorWithDomain_code_format_(v240, v242, v241, 160, @"Unsupported device capabilities version in device capability check response for request %@", v683);
            v88 = 0;
            v693 = 0;
            LOBYTE(v89) = 0;
            v83 = 10;
            v66 = @"unsupportedSignedVersionedBlobVersion";
            goto LABEL_200;
          }

          if (objc_msgSend_hasSignature(v232, v235, v236) && (objc_msgSend_signature(v232, v243, v244), v245 = objc_claimAutoreleasedReturnValue(), v696 = objc_msgSend_length(v245, v246, v247), v245, v696))
          {
            v697 = objc_msgSend_container(self, v243, v244);
            v674 = objc_msgSend_pcsManager(v697, v248, v249);
            v672 = objc_msgSend_signature(v232, v250, v251);
            objc_msgSend_serializedObject(v232, v252, v253);
            v254 = v708[1] = 0;
            v678 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v674, v255, v672);
            v683 = 0;

            if (!v678 || v683)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *v27);
              }

              v480 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v592 = v480;
                v595 = objc_msgSend_requestUUID(self, v593, v594);
                *buf = 138543874;
                v716 = v595;
                v717 = 2112;
                v718 = v683;
                v719 = 2112;
                v720 = v15;
                _os_log_error_impl(&dword_22506F000, v592, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Device capabilities signature validation failed: %@, zoneID: %@", buf, 0x20u);
              }

              v483 = MEMORY[0x277CBC560];
              v484 = *MEMORY[0x277CBBF50];
              v485 = objc_msgSend_requestUUID(self, v481, v482);
              v685 = objc_msgSend_errorWithDomain_code_error_format_(v483, v486, v484, 161, v683, @"Failed to validate device capabilities signature in device capability check response for request %@", v485);

              v88 = 0;
              v693 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v64 = v485;
              v66 = @"invalidDeviceCapabilitySignature";
              goto LABEL_200;
            }

            v693 = objc_msgSend_canValidateWithKT(v232, v256, v257);
            v679 = objc_msgSend_container(self, v258, v259);
            v262 = objc_msgSend_pcsManager(v679, v260, v261);
            v265 = objc_msgSend_signature(v232, v263, v264);
            v708[0] = 0;
            v683 = objc_msgSend_publicKeyFromSignature_error_(v262, v266, v265, v708);
            v675 = v708[0];
          }

          else
          {
            v360 = objc_msgSend_options(self, v243, v244);
            v363 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v360, v361, v362);

            if (v363)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *v27);
              }

              v364 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v559 = v364;
                v562 = objc_msgSend_requestUUID(self, v560, v561);
                *buf = 138543362;
                v716 = v562;
                _os_log_error_impl(&dword_22506F000, v559, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server. Server returned isSupported:NO for a device without capability checking support, when devices without capability checking support should have been excluded.", buf, 0xCu);
              }

              v367 = MEMORY[0x277CBC560];
              v368 = *MEMORY[0x277CBBF50];
              v683 = objc_msgSend_requestUUID(self, v365, v366);
              v685 = objc_msgSend_errorWithDomain_code_format_(v367, v369, v368, 161, @"Device without capability checking support should have been excluded, but was returned by server in request: %@", v683);
              v88 = 0;
              v693 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v66 = @"serverDetectedDeviceNotExcluded";
              goto LABEL_200;
            }

            v683 = 0;
            v693 = 0;
          }

          v420 = [CKDPSupportedCapabilities alloc];
          v423 = objc_msgSend_serializedObject(v690, v421, v422);
          v425 = objc_msgSend_initWithData_(v420, v424, v423);

          v681 = v425;
          if (!v425 || !objc_msgSend_hasUserIdentifier(v425, v426, v427) || !objc_msgSend_hasDeviceIdentifier(v425, v428, v429) || (objc_msgSend_hasTime(v425, v430, v431) & 1) == 0)
          {
            v462 = *v27;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v462);
            }

            v463 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v463, OS_LOG_TYPE_ERROR))
            {
              v543 = objc_msgSend_requestUUID(self, v464, v465);
              *buf = 138543874;
              v716 = v543;
              v717 = 2112;
              v718 = v425;
              v719 = 2112;
              v720 = v15;
              _os_log_error_impl(&dword_22506F000, v463, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid device capabilities content: %@, zoneID: %@", buf, 0x20u);
            }

            v466 = MEMORY[0x277CBC560];
            v467 = *MEMORY[0x277CBBF50];
            v677 = objc_msgSend_requestUUID(self, v468, v469);
            v471 = objc_msgSend_errorWithDomain_code_format_(v466, v470, v467, 161, @"Invalid device capabilities content in device capability check response for request %@", v677);
            v88 = 0;
            LOBYTE(v89) = 0;
            v472 = v64;
            v83 = 10;
            v66 = @"incompleteDeviceCapabilities";
            v64 = v471;
            goto LABEL_187;
          }

          v434 = objc_msgSend_userIdentifier(v425, v432, v433);
          v677 = objc_msgSend_name(v434, v435, v436);

          v439 = objc_msgSend_deviceIdentifier(v425, v437, v438);
          v673 = objc_msgSend_name(v439, v440, v441);

          if (!objc_msgSend_isEqual_(v677, v442, v45) || (objc_msgSend_isEqual_(v673, v443, v688) & 1) == 0)
          {
            v521 = *v27;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v521);
            }

            v522 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v522, OS_LOG_TYPE_ERROR))
            {
              v639 = objc_msgSend_requestUUID(self, v523, v524);
              *buf = 138544642;
              v716 = v639;
              v717 = 2112;
              v718 = v677;
              v719 = 2112;
              v720 = v45;
              v721 = 2112;
              v722 = v673;
              v723 = 2112;
              v724 = v688;
              v725 = 2112;
              v726 = v15;
              _os_log_error_impl(&dword_22506F000, v522, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Device capabilities have different userID and/or deviceID than the zone/share usage. userID: %@ vs. %@, deviceID: %@ vs. %@, zoneID: %@", buf, 0x3Eu);
            }

            v525 = MEMORY[0x277CBC560];
            v526 = *MEMORY[0x277CBBF50];
            v671 = objc_msgSend_requestUUID(self, v527, v528);
            v530 = objc_msgSend_errorWithDomain_code_format_(v525, v529, v526, 161, @"Inconsistent device capabilities and usage in device capability check response for request %@", v671);
            v88 = 0;
            LOBYTE(v89) = 0;
            v531 = v64;
            v83 = 10;
            v66 = @"incorrectCapabilities";
            v64 = v530;
            goto LABEL_256;
          }

          v446 = objc_msgSend_translator(self, v444, v445);
          v448 = objc_msgSend_deviceCapabilitySetFromPDeviceCapabilitySet_(v446, v447, v425);

          v670 = v448;
          if (objc_msgSend_isCapabilitySet_subsetOf_(MEMORY[0x277CBC2B0], v449, v26, v448))
          {
            v452 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v452);
            }

            v453 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v453, OS_LOG_TYPE_ERROR))
            {
              v668 = objc_msgSend_requestUUID(self, v454, v455);
              *buf = 138544130;
              v716 = v668;
              v717 = 2112;
              v718 = v26;
              v719 = 2112;
              v720 = v448;
              v721 = 2112;
              v722 = v15;
              _os_log_error_impl(&dword_22506F000, v453, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Server returned isSupported:NO, but the returned device capabilities do support the requested capabilities. requested: %@, returned: %@, zoneID: %@", buf, 0x2Au);
            }

            v89 = MEMORY[0x277CBC560];
            v456 = *MEMORY[0x277CBBF50];
            v459 = objc_msgSend_requestUUID(self, v457, v458);
            v461 = objc_msgSend_errorWithDomain_code_format_(v89, v460, v456, 161, @"Incorrect device capability check response for request %@", v459);

            v671 = 0;
            v88 = 0;
            LOBYTE(v89) = 0;
            v83 = 10;
            v64 = v461;
            v66 = @"capabilitiesSupported";
          }

          else
          {
            v617 = objc_msgSend_translator(self, v450, v451);
            v620 = objc_msgSend_time(v681, v618, v619);
            v622 = objc_msgSend_dateFromPDate_(v617, v621, v620);

            v671 = v622;
            objc_msgSend_timeIntervalSinceNow(v622, v623, v624);
            if (v627 >= -16070400.0 && (objc_msgSend_timeIntervalSinceNow(v689, v625, v626), v628 >= -16070400.0))
            {
              v641 = *MEMORY[0x277CBC878];
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v641);
              }

              v642 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(v642, OS_LOG_TYPE_INFO))
              {
                v645 = objc_msgSend_requestUUID(self, v643, v644);
                *buf = 138544898;
                v716 = v645;
                v717 = 2112;
                v718 = v15;
                v719 = 2112;
                v720 = v686;
                v721 = 2112;
                v722 = v45;
                v723 = 2112;
                v724 = v688;
                v725 = 2112;
                v726 = v689;
                v727 = 2112;
                v728 = v670;
                _os_log_impl(&dword_22506F000, v642, OS_LOG_TYPE_INFO, "req: %{public}@, Server returned isSupported:NO for the device capability check. zoneID: %@, %@ userID: %@, deviceID: %@, accessed: %@, supported capabilities: %@", buf, 0x48u);
              }

              if (v683 && objc_msgSend_isEqualToData_(v691, v646, v683))
              {
                if (v691 && objc_msgSend_length(v691, v646, v647))
                {
                  objc_msgSend_addObject_(v707, v648, v691);
                }
              }

              else
              {
                if (canValidateWithKT != v693)
                {
                  v649 = v691;
                  if (canValidateWithKT)
                  {
                    v649 = v683;
                  }

                  v650 = v649;
                  v653 = v650;
                  if (v650 && objc_msgSend_length(v650, v651, v652))
                  {
                    objc_msgSend_addObject_(v707, v654, v653);
                  }

                  v88 = 0;
                  v83 = 0;
                  LOBYTE(v89) = 1;
                  goto LABEL_255;
                }

                if (v691 && objc_msgSend_length(v691, v646, v647))
                {
                  objc_msgSend_addObject_(v707, v646, v691);
                }

                if (v683 && objc_msgSend_length(v683, v646, v647))
                {
                  objc_msgSend_addObject_(v707, v666, v683);
                }
              }

              v83 = 0;
              LOBYTE(v89) = 1;
              v88 = canValidateWithKT;
            }

            else
            {
              v629 = *MEMORY[0x277CBC878];
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v629);
              }

              v630 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(v630, OS_LOG_TYPE_ERROR))
              {
                v669 = objc_msgSend_requestUUID(self, v631, v632);
                *buf = 138544130;
                v716 = v669;
                v717 = 2112;
                v718 = v622;
                v719 = 2112;
                v720 = v689;
                v721 = 2112;
                v722 = v15;
                _os_log_error_impl(&dword_22506F000, v630, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Server returned device capabilities and/or zone/share usage that is too far in the past: %@ and %@, zoneID: %@", buf, 0x2Au);
              }

              v89 = MEMORY[0x277CBC560];
              v633 = *MEMORY[0x277CBBF50];
              v636 = objc_msgSend_requestUUID(self, v634, v635);
              v638 = objc_msgSend_errorWithDomain_code_format_(v89, v637, v633, 161, @"Obsolete device capability check response for request %@", v636);

              v88 = 0;
              LOBYTE(v89) = 0;
              v83 = 10;
              v64 = v638;
              v66 = @"capabilitiesTooOld";
            }
          }

LABEL_255:
          v531 = v670;
LABEL_256:

          v472 = v673;
LABEL_187:
          v685 = v64;

          v64 = v681;
LABEL_200:

          v64 = v683;
LABEL_201:

          goto LABEL_202;
        }

        v128 = objc_msgSend_signedShareUsage(v702, v126, v127);
        v692 = v128;
        if (objc_msgSend_hasVersion(v128, v129, v130) && objc_msgSend_version(v128, v131, v132) >= 2)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v27);
          }

          v133 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            v536 = v133;
            v539 = objc_msgSend_requestUUID(self, v537, v538);
            v542 = objc_msgSend_version(v692, v540, v541);
            *buf = 138543874;
            v716 = v539;
            v717 = 2048;
            v718 = v542;
            v719 = 2112;
            v720 = v15;
            _os_log_error_impl(&dword_22506F000, v536, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Share usage blob version %ld is not supported. zoneID: %@", buf, 0x20u);
          }

          v136 = MEMORY[0x277CBC560];
          v137 = *MEMORY[0x277CBBF50];
          v690 = objc_msgSend_requestUUID(self, v134, v135);
          v685 = objc_msgSend_errorWithDomain_code_format_(v136, v138, v137, 160, @"Unsupported share usage version in device capability check response for request %@", v690);
          v66 = @"unsupportedSignedVersionedBlobVersion";
LABEL_193:

          goto LABEL_194;
        }

        if (objc_msgSend_hasSignature(v128, v131, v132) && (objc_msgSend_signature(v128, v199, v200), v201 = objc_claimAutoreleasedReturnValue(), v204 = objc_msgSend_length(v201, v202, v203), v201, v204))
        {
          v687 = v125;
          v704 = objc_msgSend_container(self, v199, v200);
          v682 = objc_msgSend_pcsManager(v704, v205, v206);
          v209 = objc_msgSend_signature(v692, v207, v208);
          v212 = objc_msgSend_serializedObject(v692, v210, v211);
          v711 = 0;
          v694 = objc_msgSend_validateFullPublicKeySignature_forSignedData_error_(v682, v213, v209, v212, &v711);
          v214 = v711;

          if (!v694 || v214)
          {
            v690 = v214;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v473 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v571 = v473;
              v574 = objc_msgSend_requestUUID(self, v572, v573);
              *buf = 138543874;
              v716 = v574;
              v717 = 2112;
              v718 = v214;
              v719 = 2112;
              v720 = v15;
              _os_log_error_impl(&dword_22506F000, v571, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Share usage signature validation failed: %@ zoneID: %@", buf, 0x20u);
            }

            v476 = MEMORY[0x277CBC560];
            v477 = *MEMORY[0x277CBBF50];
            v478 = objc_msgSend_requestUUID(self, v474, v475);
            v685 = objc_msgSend_errorWithDomain_code_error_format_(v476, v479, v477, 161, v214, @"Failed to validate share usage signature in device capability check response for request %@", v478);

            v66 = @"invalidShareUsageSignature";
            v64 = v478;
            goto LABEL_193;
          }

          canValidateWithKT = objc_msgSend_canValidateWithKT(v692, v215, v216);
          v695 = objc_msgSend_container(self, v217, v218);
          v221 = objc_msgSend_pcsManager(v695, v219, v220);
          v224 = objc_msgSend_signature(v692, v222, v223);
          v710 = 0;
          v705 = objc_msgSend_publicKeyFromSignature_error_(v221, v225, v224, &v710);
          v226 = v710;

          v227 = v226;
          v125 = v687;
          if (v227)
          {
            v228 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v228);
            }

            v229 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
            {
              objc_msgSend_requestUUID(self, v230, v231);
              v596 = v700 = v227;
              *buf = 138543618;
              v716 = v596;
              v717 = 2112;
              v718 = v700;
              _os_log_error_impl(&dword_22506F000, v229, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to extract public key from the signature: %@", buf, 0x16u);

              v227 = v700;
            }
          }

          v691 = v705;
        }

        else
        {
          v267 = objc_msgSend_options(self, v199, v200);
          v270 = objc_msgSend_excludeDevicesWithoutCapabilityCheckingSupport(v267, v268, v269);

          if (v270)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v271 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v532 = v271;
              v535 = objc_msgSend_requestUUID(self, v533, v534);
              *buf = 138543362;
              v716 = v535;
              _os_log_error_impl(&dword_22506F000, v532, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server. Server returned isSupported:NO for a device without capability checking support, when devices without capability checking support should have been excluded.", buf, 0xCu);
            }

            v274 = MEMORY[0x277CBC560];
            v275 = *MEMORY[0x277CBBF50];
            v690 = objc_msgSend_requestUUID(self, v272, v273);
            v685 = objc_msgSend_errorWithDomain_code_format_(v274, v276, v275, 161, @"Device without capability checking support should have been excluded, but was returned by server in request: %@", v690);
            v66 = @"serverDetectedDeviceNotExcluded";
            goto LABEL_193;
          }
        }

        v343 = [CKDPShareUsage alloc];
        v346 = objc_msgSend_serializedObject(v692, v344, v345);
        v348 = objc_msgSend_initWithData_(v343, v347, v346);

        v690 = v348;
        if (objc_msgSend_hasVersion(v348, v349, v350) && objc_msgSend_version(v348, v351, v352) >= 2)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v353 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            v575 = v353;
            v578 = objc_msgSend_requestUUID(self, v576, v577);
            v581 = objc_msgSend_version(v690, v579, v580);
            *buf = 138543874;
            v716 = v578;
            v717 = 2048;
            v718 = v581;
            v719 = 2112;
            v720 = v15;
            _os_log_error_impl(&dword_22506F000, v575, OS_LOG_TYPE_ERROR, "req: %{public}@, Unsupported device capability check response from the server: Share usage version %ld is not supported. zoneID: %@", buf, 0x20u);
          }

          v356 = MEMORY[0x277CBC560];
          v357 = *MEMORY[0x277CBBF50];
          v358 = objc_msgSend_requestUUID(self, v354, v355);
          v685 = objc_msgSend_errorWithDomain_code_format_(v356, v359, v357, 160, @"Unsupported share usage version in device capability check response for request %@", v358);
          v66 = @"unsupportedShareUsageVersion";
LABEL_163:

LABEL_194:
          v703 = 0;
          v88 = 0;
          v693 = 0;
          LOBYTE(v89) = 0;
          v83 = 10;
LABEL_202:
          v64 = v685;
          goto LABEL_203;
        }

        if (!v348 || !objc_msgSend_hasShareIdentifier(v348, v351, v352) || !objc_msgSend_hasUserIdentifier(v348, v370, v371) || !objc_msgSend_hasDeviceIdentifier(v348, v372, v373) || (objc_msgSend_hasTime(v348, v374, v375) & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v407 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
          {
            v517 = v407;
            v520 = objc_msgSend_requestUUID(self, v518, v519);
            *buf = 138543874;
            v716 = v520;
            v717 = 2112;
            v718 = v690;
            v719 = 2112;
            v720 = v15;
            _os_log_error_impl(&dword_22506F000, v517, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid share usage content: %@, zoneID: %@", buf, 0x20u);
          }

          v410 = MEMORY[0x277CBC560];
          v411 = *MEMORY[0x277CBBF50];
          v358 = objc_msgSend_requestUUID(self, v408, v409);
          v685 = objc_msgSend_errorWithDomain_code_format_(v410, v412, v411, 161, @"Invalid share usage content in device capability check response for request %@", v358);
          v66 = @"incompleteShareUsage";
          goto LABEL_163;
        }

        v686 = v125;
        objc_msgSend_translator(self, v376, v377);
        v379 = v378 = v348;
        v382 = objc_msgSend_time(v378, v380, v381);
        v684 = objc_msgSend_dateFromPDate_(v379, v383, v382);

        v386 = objc_msgSend_deviceIdentifier(v378, v384, v385);
        v680 = objc_msgSend_name(v386, v387, v388);

        v391 = objc_msgSend_userIdentifier(v378, v389, v390);
        v676 = objc_msgSend_name(v391, v392, v393);

        v396 = objc_msgSend_translator(self, v394, v395);
        v399 = objc_msgSend_shareIdentifier(v378, v397, v398);
        v709 = 0;
        v401 = objc_msgSend_recordIDFromPShareIdentifier_error_(v396, v400, v399, &v709);
        v699 = v709;

        v703 = v401;
        if (v401)
        {
          v404 = objc_msgSend_zoneID(v401, v402, v403);
          if (objc_msgSend_isEqual_(v404, v405, v15))
          {
            v83 = 0;
            v406 = 1;
LABEL_245:

            if (v406)
            {
              v688 = v680;
              v689 = v684;
              v45 = v676;
              v27 = MEMORY[0x277CBC878];
              goto LABEL_79;
            }

            v88 = 0;
            v693 = 0;
            LOBYTE(v89) = 0;
            v688 = v680;
            v689 = v684;
            v45 = v676;
LABEL_204:

            if (v83)
            {

              v83 = 0;
              if (v64)
              {
                goto LABEL_46;
              }

              goto LABEL_206;
            }

LABEL_45:

            if (v64)
            {
LABEL_46:
              objc_msgSend_reportClientValidationError_forZoneID_capabilitySet_failureType_(self, v118, v64, v15, v26, v66);
LABEL_47:
              v65 = v703;
              v48 = v707;
              goto LABEL_48;
            }

LABEL_206:
            if (v89)
            {
              v487 = objc_msgSend_supportedDeviceCapabilitiesCheckedForZoneBlock(self, v118, v119);

              if (v487)
              {
                v488 = [CKDDeviceCapabilityCheckResult alloc];
                v48 = v707;
                if (v83)
                {
                  inited = objc_msgSend_initSupported(v488, v489, v490);
                  v65 = v703;
                }

                else
                {
                  v65 = v703;
                  inited = objc_msgSend_initNotSupportedWithUserID_publicKeys_canValidateWithKT_shareID_usageIsManateeSigned_capabilitiesIsManateeSigned_(v488, v489, v45, v707, v88, v703, canValidateWithKT, v693);
                }

                v494 = objc_msgSend_supportedDeviceCapabilitiesCheckedForZoneBlock(self, v491, v492);
                v497 = objc_msgSend_result(objectCopy, v495, v496);
                (v494)[2](v494, v15, v26, inited, v497);

                v64 = 0;
                goto LABEL_48;
              }

              v64 = 0;
              goto LABEL_47;
            }

            v27 = MEMORY[0x277CBC878];
            goto LABEL_211;
          }

          v607 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v607);
          }

          v608 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(v608, OS_LOG_TYPE_ERROR))
          {
            v667 = objc_msgSend_requestUUID(self, v609, v610);
            *buf = 138543874;
            v716 = v667;
            v717 = 2112;
            v718 = v404;
            v719 = 2112;
            v720 = v15;
            _os_log_error_impl(&dword_22506F000, v608, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Share usage is for a different zone: %@ (expected %@)", buf, 0x20u);
          }

          v611 = MEMORY[0x277CBC560];
          v612 = *MEMORY[0x277CBBF50];
          v615 = objc_msgSend_requestUUID(self, v613, v614);
          v606 = objc_msgSend_errorWithDomain_code_error_format_(v611, v616, v612, 161, v699, @"Invalid share usage zone ID in device capability check response for request %@", v615);

          v66 = @"incorrectZone";
          v64 = v615;
        }

        else
        {
          v597 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v597);
          }

          v598 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(v598, OS_LOG_TYPE_ERROR))
          {
            v662 = objc_msgSend_requestUUID(self, v599, v600);
            v665 = objc_msgSend_shareIdentifier(v690, v663, v664);
            *buf = 138543618;
            v716 = v662;
            v717 = 2112;
            v718 = v665;
            _os_log_error_impl(&dword_22506F000, v598, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Invalid shareID: %@", buf, 0x16u);
          }

          v601 = MEMORY[0x277CBC560];
          v602 = *MEMORY[0x277CBBF50];
          v404 = objc_msgSend_requestUUID(self, v603, v604);
          v606 = objc_msgSend_errorWithDomain_code_error_format_(v601, v605, v602, 161, v699, @"Invalid share ID in device capability check response for request %@", v404);
          v66 = @"invalidShareID";
        }

        v406 = 0;
        v83 = 10;
        v64 = v606;
        goto LABEL_245;
      }

      v582 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v582);
      }

      v556 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(v556, OS_LOG_TYPE_ERROR))
      {
        v655 = objc_msgSend_requestUUID(self, v583, v584);
        v658 = objc_msgSend_translator(self, v656, v657);
        v661 = objc_msgSend_containerScopedUserID(v658, v659, v660);
        *buf = 138544130;
        v716 = v655;
        v717 = 2112;
        v718 = v45;
        v719 = 2112;
        v720 = v661;
        v721 = 2112;
        v722 = v15;
        _os_log_error_impl(&dword_22506F000, v556, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Zone usage is for a different user: %@ (expected %@), zoneID: %@", buf, 0x2Au);
      }

      v66 = @"incorrectUserID";
      v89 = @"Invalid zone usage user ID in device capability check response for request %@";
    }

    else
    {
      v555 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v555);
      }

      v556 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(v556, OS_LOG_TYPE_ERROR))
      {
        v640 = objc_msgSend_requestUUID(self, v557, v558);
        *buf = 138543874;
        v716 = v640;
        v717 = 2112;
        v718 = v326;
        v719 = 2112;
        v720 = v15;
        _os_log_error_impl(&dword_22506F000, v556, OS_LOG_TYPE_ERROR, "req: %{public}@, Invalid device capability check response from the server! Zone usage is for a different zone: %@ (expected %@)", buf, 0x20u);
      }

      v66 = @"incorrectZone";
      v89 = @"Invalid zone usage zone ID in device capability check response for request %@";
    }

    v585 = MEMORY[0x277CBC560];
    v586 = *MEMORY[0x277CBBF50];
    v589 = objc_msgSend_requestUUID(self, v587, v588);
    v590 = v586;
    v336 = v698;
    v64 = objc_msgSend_errorWithDomain_code_error_format_(v585, v591, v590, 161, v698, v89, v589);

    LODWORD(v89) = 0;
    v83 = 10;
    goto LABEL_231;
  }

  v42 = objc_msgSend_errorFromServerBlock(self, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_errorFromServerBlock(self, v43, v44);
    v48 = objc_msgSend_result(objectCopy, v46, v47);
    (v45->data)(v45, v15, v26, v48);
LABEL_49:
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v53 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_zoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_capabililitySetsByRequestID(self, v16, v17);
  v21 = objc_msgSend_response(failureCopy, v19, v20);
  v24 = objc_msgSend_operationUUID(v21, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
  {
    v37 = v27;
    v40 = objc_msgSend_requestUUID(self, v38, v39);
    v43 = objc_msgSend_response(failureCopy, v41, v42);
    v46 = objc_msgSend_operationUUID(v43, v44, v45);
    v47 = 138543874;
    v48 = v40;
    v49 = 2112;
    v50 = v46;
    v51 = 2112;
    v52 = failureCopy;
    _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "req: %{public}@, Parse failure in device capabilities check response, operationUUID: %@, responseObject: %@", &v47, 0x20u);
  }

  v30 = objc_msgSend_errorFromServerBlock(self, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_errorFromServerBlock(self, v31, v32);
    v36 = objc_msgSend_result(failureCopy, v34, v35);
    (v33)[2](v33, v15, v26, v36);
  }
}

@end