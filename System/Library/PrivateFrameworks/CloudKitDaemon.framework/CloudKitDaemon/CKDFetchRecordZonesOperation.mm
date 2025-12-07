@interface CKDFetchRecordZonesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_locked_checkAndUpdateZonePCSIfNeededForZone:(id)zone error:(id *)error;
- (BOOL)makeStateTransition;
- (CKDFetchRecordZonesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_cachePCSOnRecordZone:(id)zone;
- (void)_continueHandlingFetchedRecordZone:(id)zone zoneID:(id)d;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleAnonymousZoneDataObjects:(id)objects responsecode:(id)responsecode;
- (void)_handleRecordZoneFetch:(id)fetch zoneID:(id)d responseCode:(id)code error:(id)error;
- (void)_handleRecordZoneSaved:(id)saved error:(id)error;
- (void)_locked_callbackForRecordZone:(id)zone zoneID:(id)d error:(id)error;
- (void)_sendErrorForFailedZones;
- (void)fetchZonesFromServer:(id)server;
- (void)main;
- (void)saveZonesWithUpdatedZonePCS;
@end

@implementation CKDFetchRecordZonesOperation

- (CKDFetchRecordZonesOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = CKDFetchRecordZonesOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordZoneIDs(infoCopy, v7, v8);
    recordZoneIDs = v9->_recordZoneIDs;
    v9->_recordZoneIDs = v10;

    v9->_isFetchAllRecordZonesOperation = objc_msgSend_isFetchAllRecordZonesOperation(infoCopy, v12, v13);
    v9->_ignorePCSFailures = objc_msgSend_ignorePCSFailures(infoCopy, v14, v15);
    v16 = objc_opt_new();
    zonesToSaveForPCSUpdateByZoneID = v9->_zonesToSaveForPCSUpdateByZoneID;
    v9->_zonesToSaveForPCSUpdateByZoneID = v16;

    v18 = objc_opt_new();
    zoneIDsNeedingPCSUpdateRetry = v9->_zoneIDsNeedingPCSUpdateRetry;
    v9->_zoneIDsNeedingPCSUpdateRetry = v18;

    v20 = objc_opt_new();
    pcsUpdateErrorsByZoneID = v9->_pcsUpdateErrorsByZoneID;
    v9->_pcsUpdateErrorsByZoneID = v20;

    v22 = objc_opt_new();
    zoneIDsNeedingDugongKeyRoll = v9->_zoneIDsNeedingDugongKeyRoll;
    v9->_zoneIDsNeedingDugongKeyRoll = v22;
  }

  return v9;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      if (objc_msgSend_shouldRetry(self, v5, v6))
      {
        v13 = objc_msgSend_numZoneSaveAttempts(self, v11, v12);
        v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
        if (v13 >= objc_msgSend_PCSRetryCount(v16, v17, v18))
        {
        }

        else
        {
          v21 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v19, v20);
          v24 = objc_msgSend_count(v21, v22, v23);

          if (v24)
          {
            objc_msgSend_setShouldRetry_(self, v11, 0);
            v27 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v25, v26);
            objc_msgSend_removeAllObjects(v27, v28, v29);

            v32 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v30, v31);
            v35 = objc_msgSend_copy(v32, v33, v34);
            objc_msgSend_setRecordZoneIDs_(self, v36, v35);

            v39 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v37, v38);
            objc_msgSend_removeAllObjects(v39, v40, v41);

LABEL_4:
            objc_msgSend_setState_(self, v5, 2);
            objc_msgSend_fetchZonesFromServer(self, v7, v8);
            return 1;
          }
        }
      }

      objc_msgSend__sendErrorForFailedZones(self, v11, v12);
      objc_msgSend_setState_(self, v42, 0xFFFFFFFFLL);
      v45 = objc_msgSend_error(self, v43, v44);
      objc_msgSend_finishWithError_(self, v46, v45);

      return 1;
    case 2:
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend_saveZonesWithUpdatedZonePCS(self, v9, v10);
      return 1;
    case 1:
      goto LABEL_4;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetching Zones";
  }

  else if (state == 3)
  {
    v5 = @"Updating Zone PCS";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchRecordZonesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-record-zones", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_sendErrorForFailedZones
{
  v63 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v52, v62, 16);
  if (v6)
  {
    v9 = v6;
    v10 = 0;
    v11 = *v53;
    v46 = *MEMORY[0x277CBC120];
    obj = v4;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        v14 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v7, v8);
        v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v13);

        v19 = objc_msgSend_pcsUpdateErrorsByZoneID(self, v17, v18);
        v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v13);

        if (!v21)
        {
          v21 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v22, v46, 2037, 0, @"Error saving record zone %@ to server: Protection data didn't match", v13);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v23 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v26 = v23;
          v29 = objc_msgSend_numZoneSaveAttempts(self, v27, v28);
          *buf = 138412802;
          v57 = v13;
          v58 = 2048;
          v59 = v29;
          v60 = 2112;
          v61 = v21;
          _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Failed to save zone %@ to the server %ld times with error %@", buf, 0x20u);
        }

        if (objc_msgSend_code(v21, v24, v25) == 2053)
        {
          v10 |= objc_msgSend_numZoneSaveAttempts(self, v30, v31) > 1;
        }

        v32 = objc_msgSend_callbackQueue(self, v30, v31);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2252471EC;
        block[3] = &unk_2785463D0;
        block[4] = self;
        v49 = v16;
        v50 = v13;
        v51 = v21;
        v33 = v21;
        v34 = v16;
        dispatch_async(v32, block);

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v52, v62, 16);
    }

    while (v9);

    if (v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        v36 = v35;
        v39 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v37, v38);
        v42 = objc_msgSend_count(v39, v40, v41);
        v45 = objc_msgSend_operationID(self, v43, v44);
        *buf = 134218242;
        v57 = v42;
        v58 = 2114;
        v59 = v45;
        _os_log_fault_impl(&dword_22506F000, v36, OS_LOG_TYPE_FAULT, "Failed to save %lu zones for operation %{public}@ despite user key sync.", buf, 0x16u);
      }
    }
  }

  else
  {
  }
}

- (void)_locked_callbackForRecordZone:(id)zone zoneID:(id)d error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  dCopy = d;
  errorCopy = error;
  v13 = objc_msgSend_callbackQueue(self, v11, v12);
  dispatch_assert_queue_V2(v13);

  v16 = objc_msgSend_zoneID(zoneCopy, v14, v15);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = dCopy;
  }

  v19 = v18;

  if (v19)
  {
    v22 = objc_msgSend_zoneIDsNeedingDugongKeyRoll(self, v20, v21);
    v24 = objc_msgSend_containsObject_(v22, v23, v19);

    if (v24)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v25 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v32 = v25;
        v35 = objc_msgSend_operationID(self, v33, v34);
        v36 = 138543618;
        v37 = v35;
        v38 = 2114;
        v39 = 0x28387E400;
        _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", &v36, 0x16u);
      }

      v27 = objc_msgSend_dugongKeyRollAnalyticsPayloadWithError_(self, v26, errorCopy);
      AnalyticsSendEvent();
    }
  }

  v28 = objc_msgSend_recordZoneFetchedProgressBlock(self, v20, v21);

  if (v28)
  {
    v31 = objc_msgSend_recordZoneFetchedProgressBlock(self, v29, v30);
    (v31)[2](v31, zoneCopy, v19, errorCopy);
  }
}

- (BOOL)_locked_checkAndUpdateZonePCSIfNeededForZone:(id)zone error:(id *)error
{
  v477 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v10 = objc_msgSend_callbackQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  if (objc_msgSend_databaseScope(self, v11, v12) != 2)
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_container(self, v13, v14);
  v18 = objc_msgSend_options(v15, v16, v17);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v18, v19, v20))
  {
    v23 = objc_msgSend_zoneID(zoneCopy, v21, v22);
    v26 = objc_msgSend_zoneName(v23, v24, v25);
    isEqualToString = objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x277CBC068]);

    if (isEqualToString)
    {
LABEL_4:
      v31 = 0;
      goto LABEL_148;
    }
  }

  else
  {
  }

  errorCopy = error;
  v440 = a2;
  v33 = objc_msgSend_container(self, v29, v30);
  v36 = objc_msgSend_pcsManager(v33, v34, v35);
  v39 = objc_msgSend_zonePCS(zoneCopy, v37, v38);
  v450 = objc_msgSend_zoneishPCS(zoneCopy, v40, v41);
  v44 = objc_msgSend_deviceContext(v33, v42, v43);
  v49 = objc_msgSend_testDeviceReference(v44, v45, v46);
  if (v49)
  {
    v50 = objc_msgSend_zoneID(zoneCopy, v47, v48);
    v53 = objc_msgSend_zoneName(v50, v51, v52);
    v443 = objc_msgSend_isEqualToString_(v53, v54, @"UpdateBreakerZone");
  }

  else
  {
    v443 = 0;
  }

  v451 = v33;
  if (*MEMORY[0x277CBC810] != 1)
  {
    v441 = 0;
    v445 = 0;
    v448 = 0;
    v62 = v39;
    v444 = errorCopy;
    v69 = v450;
    goto LABEL_15;
  }

  v57 = objc_msgSend_unitTestOverrides(self, v55, v56);
  v59 = objc_msgSend_objectForKeyedSubscript_(v57, v58, @"ZonePCSIdentityRollPartialFailure");

  v62 = v39;
  if (v59)
  {
    v63 = PCSFPCreatePrivateKey();
    v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v64, *MEMORY[0x277CBC120], 5018, @"Partially failing zone identity update because unit tests");
    v66 = v36;
    if (v63)
    {
      CFRelease(v63);
    }

    v31 = 0;
    v67 = 0;
    v68 = errorCopy;
    goto LABEL_144;
  }

  v136 = objc_msgSend_unitTestOverrides(self, v60, v61);
  v138 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"RollZoneishMasterKeyOnFetch");

  v141 = v138 != 0;
  if (v138)
  {
    _PCSFPSetShouldRoll();
  }

  v447 = v36;
  v142 = objc_msgSend_unitTestOverrides(self, v139, v140);
  v144 = objc_msgSend_objectForKeyedSubscript_(v142, v143, @"RollZoneAndZoneishPCSForShareDelete");

  v145 = v144 != 0;
  v149 = objc_msgSend_checkAndClearUnitTestOverrides_(self, v146, @"ForceShouldRollOnceForZonePCSOnDecrypt");
  v68 = errorCopy;
  if (v149)
  {
    _PCSFPSetShouldRoll();
  }

  v150 = objc_msgSend_unitTestOverrides(self, v147, v148);
  v152 = objc_msgSend_objectForKeyedSubscript_(v150, v151, @"ForceShouldRollAlwaysForZonePCSOnDecrypt");

  if (v152)
  {
    v149 = 1;
    _PCSFPSetShouldRoll();
  }

  v155 = objc_msgSend_unitTestOverrides(self, v153, v154);
  v157 = objc_msgSend_objectForKeyedSubscript_(v155, v156, @"ForceZoneResaveButNoKeysRolled");

  if (!v157)
  {
    v224 = objc_msgSend_unitTestOverrides(self, v158, v159);
    v226 = objc_msgSend_objectForKeyedSubscript_(v224, v225, @"RollZoneIdentityOnFetch");

    if (v226)
    {
      selfCopy = self;
      v228 = objc_msgSend_pcsManager(v451, v55, v56);
      v231 = objc_msgSend_protectionData(zoneCopy, v229, v230);
      v467 = 0;
      v233 = objc_msgSend_createSharePCSFromData_ofType_withService_error_(v228, v232, v231, 3, 3, &v467);
      v65 = v467;

      objc_msgSend_setZonePCS_(zoneCopy, v234, v233);
      if (v233)
      {
        CFRelease(v233);
      }

      if (v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = v451;
        v66 = v447;
        v237 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v237, OS_LOG_TYPE_ERROR, "Couldn't create zone PCS from data: %@", buf, 0xCu);
        }

        v31 = 0;
        goto LABEL_108;
      }

      v441 = v145;
      v448 = v141;
      v69 = v450;
      v444 = errorCopy;
      v445 = 1;
      self = selfCopy;
      v62 = objc_msgSend_zonePCS(zoneCopy, v235, v236);
    }

    else
    {
      v441 = v145;
      v445 = v149;
      v448 = v141;
      v69 = v450;
      v444 = errorCopy;
    }

    v36 = v447;
LABEL_15:
    v70 = objc_msgSend_zonePCSKeysToRemove(zoneCopy, v55, v56);
    v73 = objc_msgSend_protectionEtag(zoneCopy, v71, v72);
    v74 = v62;
    v76 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v36, v75, v70, v62, v73, self);
    v77 = zoneCopy;
    v78 = v76;

    v81 = objc_msgSend_zoneishPCSKeysToRemove(v77, v79, v80);
    v82 = v77;
    v85 = objc_msgSend_zoneishProtectionData(v77, v83, v84);
    v87 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v86, v85);
    v88 = v36;
    v90 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v36, v89, v81, v69, v87, self);

    v438 = v78;
    v439 = v90;
    if (v78 | v90)
    {
      v466[0] = MEMORY[0x277D85DD0];
      v466[1] = 3221225472;
      v466[2] = sub_2252495DC;
      v466[3] = &unk_27854AC90;
      v466[4] = v78;
      v466[5] = v90;
      objc_msgSend_updateCloudKitMetrics_(self, v91, v466);
    }

    v93 = objc_msgSend_pcsManager(v451, v91, v92);
    v446 = v88;
    if (objc_msgSend_canRollShareKeys(v93, v94, v95))
    {
      zoneCopy = v82;
      v98 = objc_msgSend_invitedKeysToRemove(v82, v96, v97);
      v101 = objc_msgSend_count(v98, v99, v100);
      v102 = v441;
      if (v101)
      {
        v102 = 1;
      }

      v442 = v102;

      v103 = v74;
    }

    else
    {
      v442 = 0;
      v103 = v74;
      zoneCopy = v82;
    }

    v106 = objc_msgSend_pcsManager(v451, v104, v105);
    isZoneishZone_bypassAllowlistedContainers = objc_msgSend_zonePCSNeedsKeyRolled_isZoneishZone_bypassAllowlistedContainers_(v106, v107, v103, v450 != 0, 0);

    v111 = objc_msgSend_pcsManager(v451, v109, v110);
    isSinglyWrappedRemindersZone = objc_msgSend_isSinglyWrappedRemindersZone_(v111, v112, v103);

    v116 = objc_msgSend_containerID(self, v114, v115);
    v119 = objc_msgSend_specialContainerType(v116, v117, v118);

    v122 = 0;
    v123 = 0;
    if (v119 == 25 && (isSinglyWrappedRemindersZone & 1) == 0)
    {
      v124 = objc_msgSend_container(self, v120, v121);
      v127 = objc_msgSend_pcsManager(v124, v125, v126);
      v128 = v103;
      v129 = v127;
      v465 = 0;
      v131 = objc_msgSend_dataFromZonePCS_error_(v127, v130, v128, &v465);
      selfCopy2 = self;
      v65 = v465;

      if (v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = v451;
        v66 = v446;
        v135 = *MEMORY[0x277CBC830];
        v68 = v444;
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_impl(&dword_22506F000, v135, OS_LOG_TYPE_INFO, "Warn: Couldn't export protection data for decrypting with Reminders identity: %@", buf, 0xCu);
        }

        v122 = 0;
LABEL_113:

        v67 = 0;
LABEL_114:
        v31 = 0;
        goto LABEL_142;
      }

      v431 = selfCopy2;
      v179 = objc_msgSend_container(selfCopy2, v133, v134);
      v182 = objc_msgSend_pcsManager(v179, v180, v181);
      v464 = 0;
      v122 = objc_msgSend_createSharePCSFromData_ofType_withService_error_(v182, v183, v131, 3, 4, &v464);
      v65 = v464;

      if (!v122 || v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v33 = v451;
        v66 = v446;
        v280 = *MEMORY[0x277CBC858];
        v68 = v444;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v394 = v280;
          v397 = objc_msgSend_zoneID(zoneCopy, v395, v396);
          *buf = 138412546;
          v471 = v397;
          v472 = 2112;
          v473 = v65;
          _os_log_error_impl(&dword_22506F000, v394, OS_LOG_TYPE_ERROR, "Couldn't decrypt zone %@ with Reminders identity: %@", buf, 0x16u);
        }

        goto LABEL_113;
      }

      v186 = objc_msgSend_pcsManager(v451, v184, v185);
      v123 = objc_msgSend_zonePCSNeedsKeyRolled_isZoneishZone_bypassAllowlistedContainers_(v186, v187, v122, v450 != 0, 0);

      self = v431;
      v103 = v74;
    }

    v434 = isSinglyWrappedRemindersZone;
    v188 = isZoneishZone_bypassAllowlistedContainers | v445 | v442;
    v33 = v451;
    v189 = v450 != 0;
    if (!((v450 == 0) | v188 & 1))
    {
      v189 = v448 | v123;
    }

    v436 = isZoneishZone_bypassAllowlistedContainers | v445 | v442;
    v437 = v189;
    if (((v188 | v123) & 1) != 0 || v189)
    {
      objc_msgSend_pcsManager(v451, v120, v121);
      v190 = v122;
      v192 = v191 = v123;
      v194 = objc_msgSend_sizeOfPCS_(v192, v193, v103);
      v197 = objc_msgSend_pcsManager(v451, v195, v196);
      v199 = objc_msgSend_sizeOfPCS_(v197, v198, v450);

      v202 = objc_msgSend_pcsManager(v451, v200, v201);
      v203 = v199 + v194;
      v103 = v74;
      LODWORD(v194) = objc_msgSend_isPCSSizeTooBigForKeyRoll_(v202, v204, v203);

      v123 = v191;
      v122 = v190;
      if (v194)
      {
        v66 = v446;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v444;
        v205 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          v207 = v205;
          v210 = objc_msgSend_zoneID(zoneCopy, v208, v209);
          *buf = 138412290;
          v471 = v210;
          _os_log_impl(&dword_22506F000, v207, OS_LOG_TYPE_INFO, "Skipping PCS key roll for zone %@ because the combined PCS size is too big", buf, 0xCu);
        }

        objc_msgSend_updateCloudKitMetrics_(self, v206, &unk_28385D7C0);
        v67 = 0;
        v31 = 0;
        v65 = 0;
        goto LABEL_142;
      }
    }

    v211 = v436;
    v66 = v446;
    v435 = v122;
    HIDWORD(v428) = v123;
    if (v436)
    {
      LODWORD(v428) = v436;
      v212 = *MEMORY[0x277CBC878];
      v213 = MEMORY[0x277CBC880];
      v68 = v444;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v212);
      }

      v214 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
      {
        v217 = objc_msgSend_zoneID(zoneCopy, v215, v216);
        *buf = 138412290;
        v471 = v217;
        _os_log_impl(&dword_22506F000, v214, OS_LOG_TYPE_INFO, "Updating identity on zone PCS for zone %@", buf, 0xCu);
      }

      if (*MEMORY[0x277CBC810] == 1)
      {
        v220 = objc_msgSend_unitTestOverrides(self, v218, v219);
        v222 = objc_msgSend_objectForKeyedSubscript_(v220, v221, @"testUpdatingZonePCSAfterIdentityRoll");

        if (v222)
        {
          v223 = 3;
        }

        else
        {
          v223 = 0;
        }
      }

      else
      {
        v223 = 0;
      }

      if (v442)
      {
        objc_msgSend_setDidAttemptDugongKeyRoll_(self, v218, 1);
        selfCopy3 = self;
        v240 = objc_msgSend_zoneIDsNeedingDugongKeyRoll(self, v238, v239);
        v243 = objc_msgSend_zoneID(zoneCopy, v241, v242);
        objc_msgSend_addObject_(v240, v244, v243);

        v462 = 0u;
        v463 = 0u;
        v460 = 0u;
        v461 = 0u;
        v449 = zoneCopy;
        v247 = objc_msgSend_invitedKeysToRemove(zoneCopy, v245, v246);
        v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v248, &v460, v476, 16);
        if (v249)
        {
          v252 = v249;
          v253 = *v461;
          do
          {
            v254 = 0;
            do
            {
              if (*v461 != v253)
              {
                objc_enumerationMutation(v247);
              }

              v255 = *(*(&v460 + 1) + 8 * v254);
              v256 = objc_msgSend_pcsManager(v33, v250, v251, v428);
              v258 = objc_msgSend_removePublicKeyID_fromPCS_(v256, v257, v255, v103);

              if (v258)
              {
                v259 = *MEMORY[0x277CBC878];
                if (*v213 != -1)
                {
                  dispatch_once(v213, v259);
                }

                v260 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
                {
                  v263 = objc_msgSend_zoneID(v449, v261, v262);
                  *buf = 138543874;
                  v471 = v255;
                  v472 = 2112;
                  v473 = v263;
                  v474 = 2112;
                  v475 = v258;
                  _os_log_error_impl(&dword_22506F000, v260, OS_LOG_TYPE_ERROR, "Failed to remove server provided invited key %{public}@ from zone %@: %@", buf, 0x20u);

                  v33 = v451;
                }
              }

              ++v254;
              v103 = v74;
            }

            while (v252 != v254);
            v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v250, &v460, v476, 16);
          }

          while (v252);
        }

        v266 = objc_msgSend_pcsManager(v33, v264, v265);
        v459 = 0;
        v67 = objc_msgSend_rollIdentityForSharePCS_ofType_removeAllExistingPrivateKeys_error_(v266, v267, v103, 3, 0, &v459);
        v65 = v459;

        if (v65)
        {
          v68 = v444;
          v66 = v446;
          if (*v213 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          zoneCopy = v449;
          v269 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v270 = v269;
            objc_msgSend_zoneID(v449, v271, v272);
            v274 = v273 = v67;
            *buf = 138412546;
            v471 = v274;
            v472 = 2112;
            v473 = v65;
            _os_log_error_impl(&dword_22506F000, v270, OS_LOG_TYPE_ERROR, "Failed to roll identity for zone PCS for zone %@: %@", buf, 0x16u);

            v67 = v273;
          }

LABEL_140:
          v31 = 0;
LABEL_141:
          v122 = v435;
          goto LABEL_142;
        }

        self = selfCopy3;
        objc_msgSend_updateCloudKitMetrics_(selfCopy3, v268, &unk_28385D7E0);
        v66 = v446;
        zoneCopy = v449;
        v68 = v444;
      }

      else
      {
        v275 = objc_msgSend_pcsManager(v451, v218, v219);
        objc_msgSend_updateIdentityAndRollKeyForZonePCS_usingServiceIdentityWithType_forOperation_(v275, v276, v103, v223, self);
        v65 = v277 = self;

        if (v65)
        {
          if (*v213 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v278 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v398 = v278;
            v401 = objc_msgSend_zoneID(zoneCopy, v399, v400);
            *buf = 138412546;
            v471 = v401;
            v472 = 2112;
            v473 = v65;
            _os_log_error_impl(&dword_22506F000, v398, OS_LOG_TYPE_ERROR, "Couldn't update identity on zone PCS for zone %@: %@", buf, 0x16u);
          }

          v67 = 0;
          goto LABEL_140;
        }

        v67 = 0;
        self = v277;
      }

      v211 = v428;
      v123 = HIDWORD(v428);
    }

    else
    {
      v67 = 0;
      v68 = v444;
    }

    v452 = v67;
    if (v123)
    {
      v281 = *MEMORY[0x277CBC878];
      v282 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v281);
      }

      v283 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
      {
        v286 = objc_msgSend_zoneID(zoneCopy, v284, v285);
        *buf = 138412290;
        v471 = v286;
        _os_log_impl(&dword_22506F000, v283, OS_LOG_TYPE_INFO, "Reminders zone %@ needs to be rolled for the Reminders identity", buf, 0xCu);
      }

      v289 = objc_msgSend_pcsManager(v33, v287, v288);
      objc_msgSend_updateIdentityAndRollKeyForZonePCS_usingServiceIdentityWithType_forOperation_(v289, v290, v435, 4, self);
      v65 = v291 = self;

      if (v65)
      {
        if (*v282 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v122 = v435;
        v67 = v452;
        v292 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v293 = v292;
          v296 = objc_msgSend_zoneID(zoneCopy, v294, v295);
          *buf = 138412546;
          v471 = v296;
          v472 = 2112;
          v473 = v65;
          _os_log_error_impl(&dword_22506F000, v293, OS_LOG_TYPE_ERROR, "Couldn't roll Reminders identity on zone PCS for zone %@: %@", buf, 0x16u);

          v67 = v452;
        }

        goto LABEL_114;
      }

      v211 = 1;
      self = v291;
      v103 = v435;
      v67 = v452;
    }

    v297 = v103;
    v298 = v66;
    v299 = v68;
    if (v437)
    {
      v300 = *MEMORY[0x277CBC878];
      v301 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v300);
      }

      v302 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v302, OS_LOG_TYPE_DEBUG))
      {
        v393 = objc_msgSend_zoneID(zoneCopy, v303, v304);
        *buf = 138412290;
        v471 = v393;
        _os_log_debug_impl(&dword_22506F000, v302, OS_LOG_TYPE_DEBUG, "Updating zoneish PCS on zone %@", buf, 0xCu);
      }

      v307 = objc_msgSend_pcsManager(v33, v305, v306);
      objc_msgSend_rollMasterKeyForRecordPCS_isZoneishRecord_bypassAllowlistedContainers_forOperation_(v307, v308, v450, 1, v442, self);
      v65 = v309 = self;

      if (v65)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v67 = v452;
        v312 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v312, OS_LOG_TYPE_ERROR, "Couldn't roll master key for zoneish PCS: %@", buf, 0xCu);
        }

        goto LABEL_140;
      }

      selfCopy4 = v309;
      v343 = objc_msgSend_pcsManager(v33, v310, v311);
      v458 = 0;
      v345 = objc_msgSend_dataFromRecordPCS_error_(v343, v344, v450, &v458);
      v65 = v458;

      if (v65 || !v345)
      {
        v67 = v452;
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v356 = v345;
        v386 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v386, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
        }

        v122 = v435;
        goto LABEL_241;
      }

      v348 = objc_msgSend_pcsManager(v33, v346, v347);
      v457 = 0;
      v350 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v348, v349, v345, 1, v297, &v457);
      v65 = v457;

      if (v65 || !v350)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v356 = v345;
        v392 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v392, OS_LOG_TYPE_ERROR, "Couldn't decode zoneishPCS data: %@", buf, 0xCu);
        }

        v122 = v435;
        if (v350)
        {
          CFRelease(v350);
        }

        goto LABEL_240;
      }

      v353 = objc_msgSend_pcsManager(v33, v351, v352);
      v65 = objc_msgSend_updateZoneIdentityForRecordPCS_usingZonePCS_isZoneishRecord_bypassAllowlistedContainers_(v353, v354, v350, v297, 1, v442);

      if (v65)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v356 = v345;
        v357 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v422 = v357;
          v425 = objc_msgSend_zoneID(zoneCopy, v423, v424);
          *buf = 138412546;
          v471 = v425;
          v472 = 2112;
          v473 = v65;
          _os_log_error_impl(&dword_22506F000, v422, OS_LOG_TYPE_ERROR, "Couldn't update identity on zoneish PCS for zone %@: %@", buf, 0x16u);
        }

        CFRelease(v350);
        goto LABEL_239;
      }

      objc_msgSend_setZoneishPCS_(zoneCopy, v355, v350);
      CFRelease(v350);
      v404 = objc_msgSend_zoneishPCS(zoneCopy, v402, v403);
      v407 = objc_msgSend_pcsManager(v33, v405, v406);
      v456 = 0;
      v450 = v404;
      v409 = objc_msgSend_dataFromRecordPCS_error_(v407, v408, v404, &v456);
      v65 = v456;

      if (v65 || !v409)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v420 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v420, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
        }

        goto LABEL_238;
      }

      objc_msgSend_setZoneishProtectionData_(zoneCopy, v410, v409);
      v413 = objc_msgSend_pcsManager(v33, v411, v412);
      v65 = objc_msgSend_removePrivateKeysForKeyIDs_fromPCS_(v413, v414, v452, v297);

      if (v65)
      {
        if (*v301 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v68 = v299;
        v415 = *MEMORY[0x277CBC858];
        v66 = v298;
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v416 = v415;
          v419 = objc_msgSend_zoneID(zoneCopy, v417, v418);
          *buf = 138412546;
          v471 = v419;
          v472 = 2112;
          v473 = v65;
          _os_log_error_impl(&dword_22506F000, v416, OS_LOG_TYPE_ERROR, "Couldn't clean up old private keys from PCS for zone %@: %@", buf, 0x16u);
        }

LABEL_238:
        v356 = v409;
LABEL_239:
        v122 = v435;
LABEL_240:
        v67 = v452;
LABEL_241:

        goto LABEL_114;
      }

      LODWORD(v428) = 1;
      v67 = v452;
    }

    else
    {
      LODWORD(v428) = v211;
      selfCopy4 = self;
    }

    v315 = objc_msgSend_pcsManager(v33, v120, v121, v428);
    v317 = objc_msgSend_zonePCSNeedsUpdate_(v315, v316, v297) | v443;

    if (v317)
    {
      v320 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v320);
      }

      v321 = MEMORY[0x277CBC858];
      v322 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v322, OS_LOG_TYPE_INFO))
      {
        v325 = objc_msgSend_zoneID(zoneCopy, v323, v324);
        *buf = 138412290;
        v471 = v325;
        _os_log_impl(&dword_22506F000, v322, OS_LOG_TYPE_INFO, "Updating service identity in zone PCS for zone %@", buf, 0xCu);

        v67 = v452;
      }

      v328 = objc_msgSend_pcsManager(v33, v326, v327);
      v65 = objc_msgSend_updateServiceIdentityOnZonePCS_(v328, v329, v297);

      if (v65)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v122 = v435;
        v330 = *v321;
        if (os_log_type_enabled(*v321, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v330, OS_LOG_TYPE_ERROR, "Couldn't add our updated service identity to zone PCS: %@", buf, 0xCu);
        }

        v31 = 0;
        v68 = v299;
        v66 = v298;
        goto LABEL_142;
      }
    }

    if (v434)
    {
      v331 = *MEMORY[0x277CBC878];
      v332 = MEMORY[0x277CBC880];
      v68 = v299;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v331);
      }

      v66 = v298;

      v333 = MEMORY[0x277CBC858];
      v334 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v334, OS_LOG_TYPE_INFO))
      {
        v337 = objc_msgSend_zoneID(zoneCopy, v335, v336);
        *buf = 138412290;
        v471 = v337;
        _os_log_impl(&dword_22506F000, v334, OS_LOG_TYPE_INFO, "Adding Reminders specific identity for Reminders zone %@", buf, 0xCu);

        v67 = v452;
      }

      v340 = objc_msgSend_pcsManager(v33, v338, v339);
      v65 = objc_msgSend_addIdentityForService_toPCS_(v340, v341, 4, v297);

      if (v65)
      {
        if (*v332 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v342 = *v333;
        v122 = v435;
        if (os_log_type_enabled(*v333, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v471 = v65;
          _os_log_error_impl(&dword_22506F000, v342, OS_LOG_TYPE_ERROR, "Couldn't add Reminders specific identity for Reminders zone PCS: %@", buf, 0xCu);
        }

        goto LABEL_114;
      }
    }

    else
    {
      v68 = v299;
      v66 = v298;
      if (!v438 && ((v437 | v436 | v430 | v317) & 1) == 0 && !v439)
      {
        v31 = 0;
        v65 = 0;
        goto LABEL_141;
      }
    }

    if (v429 & *MEMORY[0x277CBC810])
    {
      v358 = objc_msgSend_unitTestOverrides(selfCopy4, v318, v319);
      v360 = objc_msgSend_objectForKeyedSubscript_(v358, v359, @"ShouldNotKeyRoll");

      if (v360)
      {
        v426 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v318, v319);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v426, v427, v440, selfCopy4, @"CKDFetchRecordZonesOperation.m", 472, @"Did not expect a key roll");
      }
    }

    v361 = v297;
    if (v439)
    {
      v455 = 0;
      v362 = objc_msgSend_dataFromRecordPCS_error_(v66, v318, v450, &v455);
      v65 = v455;
      if (v65 || !v362)
      {
        v388 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v388);
        }

        v122 = v435;

        v389 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(v389, OS_LOG_TYPE_ERROR))
        {
          v421 = objc_msgSend_zoneID(zoneCopy, v390, v391);
          *buf = 138412546;
          v471 = v421;
          v472 = 2112;
          v473 = v65;
          _os_log_error_impl(&dword_22506F000, v389, OS_LOG_TYPE_ERROR, "Failed to serialize zoneish PCS for zone ID: %@: %@", buf, 0x16u);
        }

        v31 = 1;
        v67 = v452;
        goto LABEL_142;
      }

      objc_msgSend_setZoneishProtectionData_(zoneCopy, v363, v362);
    }

    v364 = objc_msgSend_pcsManager(v33, v318, v319);
    v454 = 0;
    v366 = objc_msgSend_dataFromZonePCS_error_(v364, v365, v297, &v454);
    v65 = v454;

    if (v65 || !v366)
    {
      v387 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v387);
      }

      v122 = v435;

      v382 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v382, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v471 = v65;
        _os_log_error_impl(&dword_22506F000, v382, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_msgSend_setProtectionData_(zoneCopy, v367, v366);
      v370 = objc_msgSend_protectionEtag(zoneCopy, v368, v369);
      objc_msgSend_setPreviousProtectionEtag_(zoneCopy, v371, v370);

      v374 = objc_msgSend_pcsManager(v33, v372, v373);
      v453 = 0;
      v376 = objc_msgSend_etagFromZonePCS_error_(v374, v375, v361, &v453);
      v65 = v453;
      objc_msgSend_setProtectionEtag_(zoneCopy, v377, v376);

      if (v443 && !objc_msgSend_numZoneSaveAttempts(selfCopy4, v378, v379))
      {
        objc_msgSend_setPreviousProtectionEtag_(zoneCopy, v380, @"NO_ETAG_FOR_YOU");
      }

      v122 = v435;
      v67 = v452;
      if (!v65)
      {
        goto LABEL_215;
      }

      v381 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v381);
      }

      v382 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v382, OS_LOG_TYPE_ERROR))
      {
        v385 = objc_msgSend_zoneID(zoneCopy, v383, v384);
        *buf = 138412546;
        v471 = v385;
        v472 = 2112;
        v473 = v65;
        _os_log_error_impl(&dword_22506F000, v382, OS_LOG_TYPE_ERROR, "Couldn't create a PCS etag for zone %@: %@", buf, 0x16u);
      }
    }

    v67 = v452;
LABEL_215:

    v31 = 1;
LABEL_142:
    if (v122)
    {
      CFRelease(v122);
    }

    goto LABEL_144;
  }

  v33 = v451;
  v160 = objc_msgSend_pcsManager(v451, v158, v159);
  v469 = 0;
  v162 = objc_msgSend_dataFromZonePCS_error_(v160, v161, v62, &v469);
  v65 = v469;

  if (v65 || !v162)
  {
    v66 = v447;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v279 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v471 = v65;
      _os_log_error_impl(&dword_22506F000, v279, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS for tests: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_msgSend_setProtectionData_(zoneCopy, v163, v162);
    v166 = objc_msgSend_protectionEtag(zoneCopy, v164, v165);
    objc_msgSend_setPreviousProtectionEtag_(zoneCopy, v167, v166);

    v170 = objc_msgSend_pcsManager(v451, v168, v169);
    v468 = 0;
    v172 = objc_msgSend_etagFromZonePCS_error_(v170, v171, v62, &v468);
    v65 = v468;
    objc_msgSend_setProtectionEtag_(zoneCopy, v173, v172);

    v66 = v447;
    if (!v65)
    {
      v31 = 1;
      goto LABEL_107;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v174 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v175 = v174;
      v178 = objc_msgSend_zoneID(zoneCopy, v176, v177);
      *buf = 138412546;
      v471 = v178;
      v472 = 2112;
      v473 = v65;
      _os_log_error_impl(&dword_22506F000, v175, OS_LOG_TYPE_ERROR, "Couldn't create a PCS etag for zone for tests %@: %@", buf, 0x16u);
    }
  }

  v31 = 0;
LABEL_107:

LABEL_108:
  v67 = 0;
LABEL_144:
  if (v68 && v65)
  {
    v313 = v65;
    *v68 = v65;
  }

LABEL_148:
  return v31;
}

- (void)_handleRecordZoneSaved:(id)saved error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = @" with error ";
    v21 = &stru_28385ED00;
    *buf = 138412802;
    v33 = savedCopy;
    if (errorCopy)
    {
      v21 = errorCopy;
    }

    else
    {
      v20 = &stru_28385ED00;
    }

    v34 = 2114;
    v35 = v20;
    v36 = 2112;
    v37 = v21;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Saved updated zone %@%{public}@%@", buf, 0x20u);
    if (!errorCopy)
    {
      goto LABEL_12;
    }
  }

  else if (!errorCopy)
  {
    goto LABEL_12;
  }

  if (objc_msgSend_code(errorCopy, v9, v10) == 2037 || objc_msgSend_code(errorCopy, v9, v11) == 2053)
  {
    objc_msgSend_setShouldRetry_(self, v9, 1);
    v14 = objc_msgSend_zoneIDsNeedingPCSUpdateRetry(self, v12, v13);
    objc_msgSend_addObject_(v14, v15, savedCopy);

    v18 = objc_msgSend_pcsUpdateErrorsByZoneID(self, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, errorCopy, savedCopy);
    goto LABEL_16;
  }

LABEL_12:
  v22 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v9, v10);
  v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, savedCopy);

  if (!errorCopy && v24)
  {
    objc_msgSend__cachePCSOnRecordZone_(self, v25, v24);
  }

  v27 = objc_msgSend_callbackQueue(self, v25, v26);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_225249954;
  v28[3] = &unk_2785463D0;
  v28[4] = self;
  v29 = v24;
  v30 = savedCopy;
  v31 = errorCopy;
  v18 = v24;
  dispatch_async(v27, v28);

LABEL_16:
}

- (void)saveZonesWithUpdatedZonePCS
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_numZoneSaveAttempts(self, v8, v9);
    objc_msgSend_setNumZoneSaveAttempts_(self, v11, v10 + 1);
    v14 = objc_msgSend_stateTransitionGroup(self, v12, v13);
    dispatch_group_enter(v14);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = v15;
      v31 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v29, v30);
      v34 = objc_msgSend_allKeys(v31, v32, v33);
      *buf = 138412290;
      v37 = v34;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Saving the following zones with updated zone PCS to the server:\n%@", buf, 0xCu);
    }

    v16 = objc_opt_new();
    v19 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(self, v17, v18);
    v22 = objc_msgSend_allValues(v19, v20, v21);
    objc_msgSend_setRecordZonesToSave_(v16, v23, v22);

    objc_msgSend_setAllowDefaultZoneSave_(v16, v24, 1);
    objc_msgSend_setMaxZoneSaveAttempts_(v16, v25, 1);
    v26 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_225249B80;
    v35[3] = &unk_278548B60;
    v35[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v27, v26, v16, v35);
  }
}

- (void)_handleAnonymousZoneDataObjects:(id)objects responsecode:(id)responsecode
{
  v54 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  responsecodeCopy = responsecode;
  v8 = objc_msgSend_container(self, v6, v7);
  v11 = objc_msgSend_options(v8, v9, v10);
  v14 = objc_msgSend_useAnonymousToServerShareParticipants(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_stateTransitionGroup(self, v15, v16);
    dispatch_group_enter(v17);

    objc_initWeak(&location, self);
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = objc_msgSend_count(objectsCopy, v18, v19);
    *buf = 0;
    v46 = buf;
    v47 = 0x3032000000;
    v48 = sub_2250740D0;
    v49 = sub_2250735F4;
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = objectsCopy;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v41, v53, 16);
    if (v23)
    {
      v24 = *v42;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v41 + 1) + 8 * i);
          v27 = objc_msgSend_container(self, v21, v22);
          v30 = objc_msgSend_anonymousSharingManager(v27, v28, v29);
          v33 = objc_msgSend_encryptedTupleData(v26, v31, v32);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = sub_22524A1B8;
          v39[3] = &unk_27854AF58;
          v39[5] = buf;
          v39[6] = v51;
          objc_copyWeak(&v40, &location);
          v39[4] = self;
          objc_msgSend_decryptShareTuple_withCompletionBlock_(v30, v34, v33, v39);

          objc_destroyWeak(&v40);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v41, v53, 16);
      }

      while (v23);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v51, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "useAnonymousToServerShareParticipants is not enabled", buf, 2u);
    }
  }
}

- (void)_handleRecordZoneFetch:(id)fetch zoneID:(id)d responseCode:(id)code error:(id)error
{
  v96 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  dCopy = d;
  codeCopy = code;
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v81 = v14;
    *location = 138412802;
    *&location[4] = fetchCopy;
    v92 = 2112;
    v93 = dCopy;
    v94 = 2048;
    v95 = objc_msgSend_code(codeCopy, v82, v83);
    _os_log_debug_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEBUG, "Fetched record zone %@ (id %@) with response code %ld", location, 0x20u);
  }

  v17 = objc_msgSend_code(codeCopy, v15, v16);
  if (errorCopy || v17 != 1)
  {
    if (!errorCopy)
    {
      v29 = MEMORY[0x277CBC560];
      v30 = sub_2253962A4(codeCopy);
      v33 = objc_msgSend_request(self, v31, v32);
      v34 = sub_225395734(v33, codeCopy);
      v37 = objc_msgSend_error(codeCopy, v35, v36);
      v40 = objc_msgSend_errorDescription(v37, v38, v39);
      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(v29, v41, *MEMORY[0x277CBC120], v30, v34, @"Error fetching record zone %@ from server: %@", dCopy, v40);
    }

    if (objc_msgSend_CKIsNotFoundError(errorCopy, v18, v19))
    {
      v42 = objc_msgSend_container(self, v20, v21);
      v45 = objc_msgSend_options(v42, v43, v44);
      if (objc_msgSend_useAnonymousToServerShareParticipants(v45, v46, v47))
      {
        v50 = objc_msgSend_databaseScope(self, v48, v49) == 3;

        if (v50)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v53 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *location = 138412290;
            *&location[4] = dCopy;
            _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", location, 0xCu);
          }

          objc_initWeak(location, self);
          v56 = objc_msgSend_stateTransitionGroup(self, v54, v55);
          dispatch_group_enter(v56);

          v59 = objc_msgSend_container(self, v57, v58);
          v62 = objc_msgSend_anonymousSharingManager(v59, v60, v61);
          v90 = dCopy;
          v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, &v90, 1);
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = sub_22524A7F0;
          v88[3] = &unk_278549318;
          objc_copyWeak(&v89, location);
          objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v62, v65, v64, self, v88);

          objc_destroyWeak(&v89);
          objc_destroyWeak(location);
        }
      }

      else
      {
      }

      v66 = objc_msgSend_container(self, v51, v52);
      v69 = objc_msgSend_recordCache(v66, v67, v68);
      objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v69, v70, v66, dCopy);

      objc_msgSend_setPCSData_forFetchedZoneID_(self, v71, 0, dCopy);
      v74 = objc_msgSend_container(self, v72, v73);
      v77 = objc_msgSend_pcsCache(v74, v75, v76);
      objc_msgSend_removePCSDataForItemsInZoneWithID_(v77, v78, dCopy);
    }

    goto LABEL_23;
  }

  errorCopy = objc_msgSend_protectionData(fetchCopy, v18, v19);
  if (!errorCopy)
  {
LABEL_23:
    v79 = objc_msgSend_callbackQueue(self, v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22524A904;
    block[3] = &unk_2785463D0;
    block[4] = self;
    v85 = fetchCopy;
    v86 = dCopy;
    v87 = errorCopy;
    v80 = errorCopy;
    dispatch_async(v79, block);

    goto LABEL_24;
  }

  v22 = objc_msgSend_container(self, v20, v21);
  v25 = objc_msgSend_options(v22, v23, v24);
  v28 = objc_msgSend_bypassPCSEncryption(v25, v26, v27);

  if (v28)
  {
    errorCopy = 0;
    goto LABEL_23;
  }

  objc_msgSend__continueHandlingFetchedRecordZone_zoneID_(self, v20, fetchCopy, dCopy);
LABEL_24:
}

- (void)_continueHandlingFetchedRecordZone:(id)zone zoneID:(id)d
{
  zoneCopy = zone;
  dCopy = d;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v101 = 1;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = sub_2250740D0;
  v98[4] = sub_2250735F4;
  v99 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x3032000000;
  v96[3] = sub_2250740D0;
  v96[4] = sub_2250735F4;
  v97 = 0;
  v8 = dispatch_group_create();
  v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
  dispatch_group_enter(v11);

  v14 = objc_msgSend_container(self, v12, v13);
  v17 = objc_msgSend_entitlements(v14, v15, v16);
  hasZoneProtectionDataEntitlement = objc_msgSend_hasZoneProtectionDataEntitlement(v17, v18, v19);
  objc_msgSend_setSerializeProtectionData_(zoneCopy, v21, hasZoneProtectionDataEntitlement);

  if (objc_msgSend_databaseScope(self, v22, v23) == 2)
  {
    dispatch_group_enter(v8);
    objc_msgSend_noteOperationWillWaitOnPCS(self, v26, v27);
    v32 = objc_msgSend_zonePCSModificationDate(zoneCopy, v28, v29);
    if (*MEMORY[0x277CBC810] == 1)
    {
      v33 = objc_msgSend_unitTestOverrides(self, v30, v31);
      v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"OverrideZonePCSModificationDate");

      if (v35)
      {
        v38 = objc_msgSend_unitTestOverrides(self, v36, v37);
        v40 = objc_msgSend_objectForKeyedSubscript_(v38, v39, @"OverrideZonePCSModificationDate");

        v32 = v40;
      }
    }

    v78 = dCopy;
    objc_initWeak(&location, self);
    v43 = objc_msgSend_topmostParentOperation(self, v41, v42);
    v46 = objc_msgSend_operationID(v43, v44, v45);

    v49 = objc_msgSend_container(self, v47, v48);
    v52 = objc_msgSend_pcsManager(v49, v50, v51);
    v55 = objc_msgSend_protectionData(zoneCopy, v53, v54);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_22524AE40;
    v88[3] = &unk_27854AF80;
    objc_copyWeak(&v94, &location);
    v92 = v98;
    v56 = zoneCopy;
    v89 = v56;
    selfCopy = self;
    v93 = v96;
    v57 = v8;
    v91 = v57;
    objc_msgSend_createZonePCSFromData_usingServiceIdentityWithType_zonePCSModificationDate_requestorOperationID_completionHandler_(v52, v58, v55, 0, v32, v46, v88);

    v61 = objc_msgSend_containerID(self, v59, v60);
    v64 = objc_msgSend_specialContainerType(v61, v62, v63);

    if (v64 == 25)
    {
      dispatch_group_enter(v57);
      v67 = objc_msgSend_container(self, v65, v66);
      v70 = objc_msgSend_pcsManager(v67, v68, v69);
      v73 = objc_msgSend_protectionData(v56, v71, v72);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = sub_22524B08C;
      v85[3] = &unk_27854AFA8;
      v86 = v56;
      v87 = v57;
      objc_msgSend_createZonePCSFromData_usingServiceIdentityWithType_zonePCSModificationDate_requestorOperationID_completionHandler_(v70, v74, v73, 4, v32, v46, v85);
    }

    objc_destroyWeak(&v94);
    objc_destroyWeak(&location);

    dCopy = v78;
  }

  v75 = objc_msgSend_callbackQueue(self, v24, v25);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22524B1C8;
  block[3] = &unk_27854AFD0;
  block[4] = self;
  v80 = zoneCopy;
  v83 = v98;
  v84 = v100;
  v81 = dCopy;
  v82 = v96;
  v76 = dCopy;
  v77 = zoneCopy;
  dispatch_group_notify(v8, v75, block);

  _Block_object_dispose(v96, 8);
  _Block_object_dispose(v98, 8);

  _Block_object_dispose(v100, 8);
}

- (void)_cachePCSOnRecordZone:(id)zone
{
  zoneCopy = zone;
  v18 = objc_msgSend_dataWithZone_(CKDZonePCSData, v5, zoneCopy);
  v8 = objc_msgSend_zonePCS(zoneCopy, v6, v7);
  objc_msgSend_setPcs_(v18, v9, v8);
  v12 = objc_msgSend_zoneishPCS(zoneCopy, v10, v11);
  objc_msgSend_setZoneishPCS_(v18, v13, v12);
  v16 = objc_msgSend_zoneID(zoneCopy, v14, v15);

  objc_msgSend_setPCSData_forFetchedZoneID_(self, v17, v18, v16);
}

- (void)fetchZonesFromServer:(id)server
{
  v68 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  if (objc_msgSend_count(serverCopy, v8, v9))
  {
    v12 = serverCopy;

    v7 = v12;
  }

  if (objc_msgSend_count(v7, v10, v11) || objc_msgSend_isFetchAllRecordZonesOperation(self, v13, v14))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v44 = v15;
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v49 = objc_msgSend_ckShortDescription(self, v47, v48);
      *location = 138543874;
      *&location[4] = v46;
      v64 = 2048;
      selfCopy = self;
      v66 = 2114;
      v67 = v49;
      _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Fetch record zones operation <%{public}@: %p; %{public}@> is starting", location, 0x20u);
    }

    v18 = objc_msgSend_stateTransitionGroup(self, v16, v17);
    dispatch_group_enter(v18);

    v19 = [CKDFetchRecordZonesURLRequest alloc];
    v21 = objc_msgSend_initWithOperation_recordZoneIDs_(v19, v20, self, v7);
    PCSInfo = objc_msgSend_onlyFetchPCSInfo(self, v22, v23);
    objc_msgSend_setOnlyFetchPCSInfo_(v21, v25, PCSInfo);
    objc_initWeak(location, self);
    objc_initWeak(&from, v21);
    v28 = objc_msgSend_container(self, v26, v27);
    v31 = objc_msgSend_options(v28, v29, v30);
    v34 = objc_msgSend_useAnonymousToServerShareParticipants(v31, v32, v33);

    if (v34)
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = sub_22524BA58;
      v60[3] = &unk_27854AFF8;
      objc_copyWeak(&v61, location);
      objc_msgSend_setAnonymousRecordZoneTuplesFetchedBlock_(v21, v35, v60);
      objc_destroyWeak(&v61);
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_22524BBC4;
    v58[3] = &unk_27854B020;
    objc_copyWeak(&v59, location);
    objc_msgSend_setRecordZoneFetchedBlock_(v21, v36, v58);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_22524BC6C;
    v56[3] = &unk_27854AB78;
    objc_copyWeak(&v57, location);
    objc_msgSend_setErrorFetchingAllRecordZonesBlock_(v21, v37, v56);
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = sub_22524BF3C;
    v53 = &unk_278548748;
    objc_copyWeak(&v54, location);
    objc_copyWeak(&v55, &from);
    objc_msgSend_setCompletionBlock_(v21, v38, &v50);
    objc_msgSend_setRequest_(self, v39, v21, v50, v51, v52, v53);
    v42 = objc_msgSend_container(self, v40, v41);
    objc_msgSend_performRequest_(v42, v43, v21);

    objc_destroyWeak(&v55);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v59);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
}

- (void)main
{
  v4 = objc_msgSend_recordZoneIDs(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_isFetchAllRecordZonesOperation(self, v7, v8) ^ 1;
  }

  objc_msgSend_makeStateTransition_(self, v10, v9);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v4 = MEMORY[0x277CBEB98];
  errorCopy = error;
  v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22524C338;
    v16[3] = &unk_2785487F8;
    v17 = v10;
    objc_msgSend_updateCloudKitMetrics_(self, v14, v16);
  }

  objc_msgSend_setRecordZoneFetchedProgressBlock_(self, v13, 0);
  v15.receiver = self;
  v15.super_class = CKDFetchRecordZonesOperation;
  [(CKDOperation *)&v15 _finishOnCallbackQueueWithError:errorCopy];
}

@end