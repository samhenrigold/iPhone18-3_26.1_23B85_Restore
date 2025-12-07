@interface CKDPCSCacheZoneFetchOperation
- (BOOL)_checkAndUpdateZonePCSIfNeeded;
- (BOOL)_createAdditionalPCS;
- (BOOL)_decryptPCS;
- (BOOL)_fetchDependentPCS;
- (BOOL)_fetchPCSDataFromDatabase;
- (BOOL)_fetchPCSDataFromServer;
- (BOOL)_savePCSDataToCache;
- (BOOL)_saveUpdatedPCSToServer;
- (BOOL)hasAllPCSData;
- (BOOL)needsZoneishPCS;
- (void)_decryptZonePCSInSharedDatabase;
- (void)_decryptZonePCSUsingServiceIdentities;
- (void)_fetchDepedentPCSInSharedDatabase;
- (void)_handleDecryptedZonePCSData:(id)data withError:(id)error;
- (void)_handlePCSDataFetched:(id)fetched withError:(id)error;
- (void)_saveNewPCSOnZone:(id)zone completion:(id)completion;
- (void)_saveZoneToServer:(id)server completion:(id)completion;
- (void)_saveZoneToServer:(id)server withPCS:(_OpaquePCSShareProtection *)s zoneishPCS:(_OpaquePCSShareProtection *)cS previousEtag:(id)etag completion:(id)completion;
- (void)_willRetryFetch;
@end

@implementation CKDPCSCacheZoneFetchOperation

- (BOOL)needsZoneishPCS
{
  if ((objc_msgSend_fetchOptions(self, a2, v2) & 8) == 0 || objc_msgSend_databaseScope(self, v4, v5) != 2)
  {
    return 0;
  }

  v8 = objc_msgSend_zonePCSData(self, v6, v7);
  v11 = objc_msgSend_zoneishPCSData(v8, v9, v10);
  v12 = v11 == 0;

  return v12;
}

- (BOOL)_savePCSDataToCache
{
  objc_initWeak(&location, self);
  if (objc_msgSend_wasFetchedFromCache(self, v3, v4))
  {
    v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v7);

    v10 = objc_msgSend_cache(self, v8, v9);
    v13 = objc_msgSend_zonePCSData(self, v11, v12);
    v16 = objc_msgSend_zoneID(self, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2250A1778;
    v34[3] = &unk_278549318;
    v20 = &v35;
    objc_copyWeak(&v35, &location);
    objc_msgSend_updateMemoryCacheWithZonePCSData_forZoneWithID_databaseScope_withCompletionHandler_(v10, v21, v13, v16, v19, v34);
  }

  else
  {
    v22 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v22);

    v10 = objc_msgSend_cache(self, v23, v24);
    v13 = objc_msgSend_zonePCSData(self, v25, v26);
    v16 = objc_msgSend_zoneID(self, v27, v28);
    v31 = objc_msgSend_databaseScope(self, v29, v30);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2252826B8;
    v36[3] = &unk_278549318;
    v20 = &v37;
    objc_copyWeak(&v37, &location);
    objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v10, v32, v13, v16, v31, v36);
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  return 1;
}

- (BOOL)hasAllPCSData
{
  v4 = objc_msgSend_zonePCSData(self, a2, v2);
  if (objc_msgSend_pcs(v4, v5, v6) && (objc_msgSend_needsZoneishPCS(self, v7, v8) & 1) == 0)
  {
    v11 = objc_msgSend_rolledPCSForZone(self, v9, v10) ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)_checkAndUpdateZonePCSIfNeeded
{
  v242 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_fetchError(self, a2, v2);

  if (v5)
  {
    return 0;
  }

  v9 = objc_msgSend_container(self, v6, v7);
  v12 = objc_msgSend_options(v9, v10, v11);
  if ((objc_msgSend_useAnonymousToServerShareParticipants(v12, v13, v14) & 1) == 0)
  {

    goto LABEL_7;
  }

  v17 = objc_msgSend_zoneID(self, v15, v16);
  v20 = objc_msgSend_zoneName(v17, v18, v19);
  isEqualToString = objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x277CBC068]);

  if ((isEqualToString & 1) == 0)
  {
LABEL_7:
    v25 = objc_msgSend_container(self, v23, v24);
    v28 = objc_msgSend_zonePCSData(self, v26, v27);
    v31 = objc_msgSend_pcs(v28, v29, v30);

    v34 = objc_msgSend_zonePCSData(self, v32, v33);
    v37 = objc_msgSend_zoneishPCS(v34, v35, v36);

    if (!v31)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v69 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v69, OS_LOG_TYPE_ERROR, "Missing zonePCS when checking for zone key roll requirements, returning", buf, 2u);
      }

      v8 = 0;
      goto LABEL_105;
    }

    v40 = objc_msgSend_pcsManager(v25, v38, v39);
    isZoneishZone_bypassAllowlistedContainers = objc_msgSend_zonePCSNeedsKeyRolled_isZoneishZone_bypassAllowlistedContainers_(v40, v41, v31, v37 != 0, 0);

    v44 = MEMORY[0x277CBC810];
    if (*MEMORY[0x277CBC810] == 1)
    {
      v45 = objc_msgSend_unitTestOverrides(self, v42, v43);
      v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"ForceKeyRollWhenFetchedFromCache");
      v50 = objc_msgSend_BOOLValue(v47, v48, v49);

      if (v50)
      {
        isZoneishZone_bypassAllowlistedContainers = 1;
        _PCSFPSetShouldRoll();
      }
    }

    v51 = objc_msgSend_container(self, v42, v43);
    v54 = objc_msgSend_containerID(v51, v52, v53);
    if (objc_msgSend_specialContainerType(v54, v55, v56) != 25)
    {
      v227 = a2;
      v230 = v25;

      v67 = 0;
      v68 = 0;
LABEL_21:
      v229 = v37;
      v70 = v37 != 0;
      v71 = isZoneishZone_bypassAllowlistedContainers | v67;
      v228 = v70 & (isZoneishZone_bypassAllowlistedContainers | v67);
      if (((isZoneishZone_bypassAllowlistedContainers | v228) & 1) != 0 || v67)
      {
        v226 = v67;
        v72 = objc_msgSend_container(self, v65, v66);
        v75 = objc_msgSend_pcsManager(v72, v73, v74);
        v77 = objc_msgSend_sizeOfPCS_(v75, v76, v31);
        v78 = v71;
        v79 = v31;
        v80 = v68;
        v81 = v77;
        v84 = objc_msgSend_container(self, v82, v83);
        v87 = objc_msgSend_pcsManager(v84, v85, v86);
        v89 = objc_msgSend_sizeOfPCS_(v87, v88, v229);

        v92 = objc_msgSend_container(self, v90, v91);
        v95 = objc_msgSend_pcsManager(v92, v93, v94);
        v96 = v89 + v81;
        v68 = v80;
        v31 = v79;
        v71 = v78;
        v44 = MEMORY[0x277CBC810];
        LODWORD(v87) = objc_msgSend_isPCSSizeTooBigForKeyRoll_(v95, v97, v96);

        v67 = v226;
        if (v87)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v98 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22506F000, v98, OS_LOG_TYPE_INFO, "Skipping zone identity key rolling because the combined PCS size is too big.", buf, 2u);
          }

          objc_msgSend_updateCloudKitMetrics_(self, v99, &unk_28385D9A0);
          v8 = 0;
          v100 = 0;
LABEL_101:
          v25 = v230;
          if (!v68)
          {
            goto LABEL_103;
          }

          goto LABEL_102;
        }
      }

      if (isZoneishZone_bypassAllowlistedContainers)
      {
        v101 = MEMORY[0x277CBC880];
        v102 = v67;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v103 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          v106 = v103;
          v109 = objc_msgSend_zoneID(self, v107, v108);
          *buf = 138412290;
          v239 = v109;
          _os_log_impl(&dword_22506F000, v106, OS_LOG_TYPE_INFO, "Updating identity on zone PCS for zone %@", buf, 0xCu);
        }

        if (*v44 == 1)
        {
          v110 = objc_msgSend_unitTestOverrides(self, v104, v105);
          v112 = objc_msgSend_objectForKeyedSubscript_(v110, v111, @"testUpdatingZonePCSAfterIdentityRoll");

          v113 = v112 ? 3 : 0;
        }

        else
        {
          v113 = 0;
        }

        v124 = objc_msgSend_pcsManager(v230, v104, v105);
        v100 = objc_msgSend_updateIdentityAndRollKeyForZonePCS_usingServiceIdentityWithType_forOperation_(v124, v125, v31, v113, self);

        v67 = v102;
        if (v100)
        {
          if (*v101 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v126 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v127 = v126;
            v130 = objc_msgSend_zoneID(self, v128, v129);
            *buf = 138412546;
            v239 = v130;
            v240 = 2112;
            v241 = v100;
            _os_log_error_impl(&dword_22506F000, v127, OS_LOG_TYPE_ERROR, "Couldn't update identity on zone PCS for zone %@: %@", buf, 0x16u);
          }

          goto LABEL_100;
        }
      }

      v25 = v230;
      if (v67)
      {
        v131 = MEMORY[0x277CBC880];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v132 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v135 = v132;
          v138 = objc_msgSend_zoneID(self, v136, v137);
          *buf = 138412290;
          v239 = v138;
          _os_log_impl(&dword_22506F000, v135, OS_LOG_TYPE_INFO, "Reminders zone %@ needs to be rolled for the Reminders identity", buf, 0xCu);
        }

        v139 = objc_msgSend_pcsManager(v230, v133, v134);
        v100 = objc_msgSend_updateIdentityAndRollKeyForZonePCS_usingServiceIdentityWithType_forOperation_(v139, v140, v68, 4, self);

        v31 = v68;
        if (v100)
        {
          if (*v131 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v141 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v142 = v141;
            v145 = objc_msgSend_zoneID(self, v143, v144);
            *buf = 138412546;
            v239 = v145;
            v240 = 2112;
            v241 = v100;
            _os_log_error_impl(&dword_22506F000, v142, OS_LOG_TYPE_ERROR, "Couldn't roll Reminders identity on zone PCS for zone %@: %@", buf, 0x16u);
          }

          goto LABEL_70;
        }
      }

      if (v228)
      {
        v146 = MEMORY[0x277CBC880];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v147 = MEMORY[0x277CBC858];
        v148 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v190 = v148;
          v193 = objc_msgSend_zoneID(self, v191, v192);
          *buf = 138412290;
          v239 = v193;
          _os_log_debug_impl(&dword_22506F000, v190, OS_LOG_TYPE_DEBUG, "Updating zoneish PCS on zone %@", buf, 0xCu);
        }

        v151 = objc_msgSend_pcsManager(v230, v149, v150);
        v100 = objc_msgSend_rollMasterKeyForRecordPCS_isZoneishRecord_bypassAllowlistedContainers_forOperation_(v151, v152, v229, 1, 0, self);

        if (v100)
        {
          if (*v146 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v155 = *v147;
          if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v239 = v100;
            _os_log_error_impl(&dword_22506F000, v155, OS_LOG_TYPE_ERROR, "Couldn't roll master key for zoneish PCS: %@", buf, 0xCu);
          }

LABEL_70:
          v8 = 0;
          if (!v68)
          {
            goto LABEL_103;
          }

          goto LABEL_102;
        }

        v167 = objc_msgSend_pcsManager(v230, v153, v154);
        v235 = 0;
        v169 = objc_msgSend_dataFromRecordPCS_error_(v167, v168, v229, &v235);
        v100 = v235;

        if (v100 || !v169)
        {
          if (*v146 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v187 = *v147;
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v239 = v100;
            _os_log_error_impl(&dword_22506F000, v187, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
          }

          goto LABEL_99;
        }

        v232 = v71;
        v172 = objc_msgSend_pcsManager(v230, v170, v171);
        v234 = 0;
        v174 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v172, v173, v169, 1, v31, &v234);
        v100 = v234;

        if (v100 || !v174)
        {
          if (*v146 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v188 = *v147;
          if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v239 = v100;
            _os_log_error_impl(&dword_22506F000, v188, OS_LOG_TYPE_ERROR, "Couldn't decode zoneishPCS data: %@", buf, 0xCu);
            if (!v174)
            {
              goto LABEL_99;
            }
          }

          else if (!v174)
          {
LABEL_99:

LABEL_100:
            v8 = 0;
            goto LABEL_101;
          }

LABEL_98:
          CFRelease(v174);
          goto LABEL_99;
        }

        v177 = objc_msgSend_pcsManager(v230, v175, v176);
        v100 = objc_msgSend_updateZoneIdentityForRecordPCS_usingZonePCS_isZoneishRecord_bypassAllowlistedContainers_(v177, v178, v174, v31, 1, 0);

        if (v100)
        {
          if (*v146 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v181 = *v147;
          if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
          {
            v182 = v181;
            v185 = objc_msgSend_zoneID(self, v183, v184);
            *buf = 138412546;
            v239 = v185;
            v240 = 2112;
            v241 = v100;
            _os_log_error_impl(&dword_22506F000, v182, OS_LOG_TYPE_ERROR, "Couldn't update identity on zoneish PCS for zone %@: %@", buf, 0x16u);
          }

          goto LABEL_98;
        }

        v194 = objc_msgSend_zonePCSData(self, v179, v180);
        objc_msgSend_setZoneishPCS_(v194, v195, v174);

        CFRelease(v174);
        v198 = objc_msgSend_zonePCSData(self, v196, v197);
        v201 = objc_msgSend_zoneishPCS(v198, v199, v200);

        v204 = objc_msgSend_pcsManager(v230, v202, v203);
        v233 = 0;
        v206 = objc_msgSend_dataFromRecordPCS_error_(v204, v205, v201, &v233);
        v100 = v233;

        if (v100 || !v206)
        {
          if (*v146 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v223 = *v147;
          if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v239 = v100;
            _os_log_error_impl(&dword_22506F000, v223, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
          }

          v169 = v206;
          goto LABEL_99;
        }

        v209 = objc_msgSend_zonePCSData(self, v207, v208);
        objc_msgSend_setZoneishPCSData_(v209, v210, v206);

        v25 = v230;
        v44 = MEMORY[0x277CBC810];
        v71 = v232;
      }

      if (v71)
      {
        if (*v44 == 1)
        {
          v211 = objc_msgSend_unitTestOverrides(self, v65, v66);
          v213 = objc_msgSend_objectForKeyedSubscript_(v211, v212, @"ShouldNotKeyRollWhenFetchedFromCache");

          if (v213)
          {
            v224 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v65, v214);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v224, v225, v227, self, @"CKDPCSCacheZoneFetchOperation.m", 622, @"Did not expect a key roll");
          }
        }

        v8 = 1;
        objc_msgSend_setRolledPCSForZone_(self, v65, 1);
        v217 = objc_msgSend_zonePCSData(self, v215, v216);
        objc_msgSend_setPcs_(v217, v218, v31);
      }

      else
      {
        v8 = 0;
      }

      v100 = 0;
      if (!v68)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    v59 = objc_msgSend_container(self, v57, v58);
    v62 = objc_msgSend_pcsManager(v59, v60, v61);
    isSinglyWrappedRemindersZone = objc_msgSend_isSinglyWrappedRemindersZone_(v62, v63, v31);

    if (isSinglyWrappedRemindersZone)
    {
      v227 = a2;
      v230 = v25;
      v67 = 0;
      v68 = 0;
LABEL_14:
      v44 = MEMORY[0x277CBC810];
      goto LABEL_21;
    }

    v114 = objc_msgSend_container(self, v65, v66);
    v117 = objc_msgSend_pcsManager(v114, v115, v116);
    v237 = 0;
    v119 = objc_msgSend_dataFromZonePCS_error_(v117, v118, v31, &v237);
    v100 = v237;

    if (v100)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v122 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v239 = v100;
        _os_log_impl(&dword_22506F000, v122, OS_LOG_TYPE_INFO, "Warn: Couldn't export protection data for decrypting with Reminders identity: %@", buf, 0xCu);
      }

      v123 = 0;
    }

    else
    {
      v156 = objc_msgSend_container(self, v120, v121);
      v159 = objc_msgSend_pcsManager(v156, v157, v158);
      v236 = 0;
      v161 = objc_msgSend_createSharePCSFromData_ofType_withService_error_(v159, v160, v119, 3, 4, &v236);
      v100 = v236;

      v123 = v161;
      if (v161 && !v100)
      {
        v227 = a2;
        v230 = v25;
        v164 = objc_msgSend_pcsManager(v25, v162, v163);
        v166 = objc_msgSend_zonePCSNeedsKeyRolled_isZoneishZone_bypassAllowlistedContainers_(v164, v165, v161, v37 != 0, 0);

        v67 = v166;
        v68 = v161;
        goto LABEL_14;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v186 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v219 = v186;
        v222 = objc_msgSend_zoneID(self, v220, v221);
        *buf = 138412546;
        v239 = v222;
        v240 = 2112;
        v241 = v100;
        _os_log_error_impl(&dword_22506F000, v219, OS_LOG_TYPE_ERROR, "Couldn't decrypt zone %@ with Reminders identity: %@", buf, 0x16u);
      }
    }

    v8 = 0;
    v68 = v123;
    if (!v123)
    {
LABEL_103:
      if (v100)
      {
        objc_msgSend_setFetchError_(self, v65, v100);
      }

LABEL_105:

      return v8;
    }

LABEL_102:
    CFRelease(v68);
    goto LABEL_103;
  }

  return 0;
}

- (BOOL)_fetchPCSDataFromDatabase
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v11 = v5;
    v14 = objc_msgSend_zoneID(self, v12, v13);
    objc_msgSend_databaseScope(self, v15, v16);
    v17 = CKDatabaseScopeString();
    *buf = 138412546;
    v20 = v14;
    v21 = 2112;
    v22 = v17;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Fetching PCS data for zone %@ from the database with scope %@", buf, 0x16u);
  }

  v8 = objc_msgSend_cache(self, v6, v7);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2250A261C;
  v18[3] = &unk_27854B830;
  v18[4] = self;
  objc_msgSend_getSQLCache_(v8, v9, v18);

  return 1;
}

- (BOOL)_createAdditionalPCS
{
  if (objc_msgSend_needsZoneishPCS(self, a2, v2))
  {
    objc_msgSend_setShouldCreateZoneishPCS_(self, v4, 1);
  }

  return 1;
}

- (BOOL)_fetchDependentPCS
{
  v5 = objc_msgSend_zonePCSData(self, a2, v2);

  if (!v5)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    v14 = objc_msgSend_zoneID(self, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v15, a2, self, @"CKDPCSCacheZoneFetchOperation.m", 118, @"We should have PCS data for zone %@ by this point", v14);
  }

  if (objc_msgSend_databaseScope(self, v6, v7) == 3)
  {
    objc_msgSend__fetchDepedentPCSInSharedDatabase(self, v8, v9);
  }

  return 1;
}

- (BOOL)_decryptPCS
{
  v4 = objc_msgSend_zonePCSData(self, a2, v2);
  v7 = objc_msgSend_pcsData(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_zonePCSData(self, v8, v9);
    v13 = objc_msgSend_pcs(v10, v11, v12);

    if (!v13)
    {
      if (objc_msgSend_databaseScope(self, v14, v15) == 3)
      {
        objc_msgSend__decryptZonePCSInSharedDatabase(self, v16, v17);
      }

      else
      {
        objc_msgSend__decryptZonePCSUsingServiceIdentities(self, v16, v17);
      }
    }
  }

  else
  {
    v18 = objc_msgSend_fetchError(self, v8, v9);

    if (!v18)
    {
      v21 = MEMORY[0x277CBC560];
      v22 = *MEMORY[0x277CBC120];
      v23 = objc_msgSend_zoneID(self, v19, v20);
      v25 = objc_msgSend_errorWithDomain_code_format_(v21, v24, v22, 5004, @"We don't have zone PCS data for zone %@", v23);
      objc_msgSend_setFetchError_(self, v26, v25);
    }
  }

  return v7 != 0;
}

- (void)_decryptZonePCSUsingServiceIdentities
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  objc_msgSend_noteOperationWillWaitOnPCS(self, v5, v6);
  v9 = objc_msgSend_container(self, v7, v8);
  v12 = objc_msgSend_pcsManager(v9, v10, v11);
  v15 = objc_msgSend_zonePCSData(self, v13, v14);
  v18 = objc_msgSend_pcsData(v15, v16, v17);
  v21 = objc_msgSend_zonePCSData(self, v19, v20);
  v24 = objc_msgSend_zonePCSModificationDate(v21, v22, v23);
  v27 = objc_msgSend_topmostParentOperation(self, v25, v26);
  v30 = objc_msgSend_operationID(v27, v28, v29);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2250A2838;
  v32[3] = &unk_27854B9D0;
  v32[4] = self;
  objc_msgSend_createZonePCSFromData_usingServiceIdentityWithType_zonePCSModificationDate_requestorOperationID_completionHandler_(v12, v31, v18, 0, v24, v30, v32);
}

- (void)_willRetryFetch
{
  self->_shouldCreateZoneishPCS = 0;
  self->_rolledPCSForZone = 0;
  v2.receiver = self;
  v2.super_class = CKDPCSCacheZoneFetchOperation;
  [(CKDPCSCacheFetchOperation *)&v2 _willRetryFetch];
}

- (void)_handlePCSDataFetched:(id)fetched withError:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  fetchedCopy = fetched;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_msgSend_operationID(selfCopy, v12, v13);
    v24 = objc_msgSend_pcsKeyID(fetchedCopy, v22, v23);
    v27 = objc_msgSend_zoneishPublicKeyID(fetchedCopy, v25, v26);
    v28 = v27;
    v29 = @" and error ";
    *v41 = 138544386;
    v30 = &stru_28385ED00;
    *&v41[4] = v21;
    *&v41[12] = 2114;
    if (errorCopy)
    {
      v30 = errorCopy;
    }

    else
    {
      v29 = &stru_28385ED00;
    }

    *&v41[14] = v24;
    v42 = 2114;
    v43 = v27;
    v44 = 2114;
    v45 = v29;
    v46 = 2112;
    v47 = v30;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Zone PCS fetch operation %{public}@ received PCS data (%{public}@/%{public}@)%{public}@%@", v41, 0x34u);
  }

  if (objc_msgSend_didFetchData(selfCopy, v14, v15))
  {
    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v10;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v31 = objc_msgSend_operationID(selfCopy, v18, v19);
      v34 = objc_msgSend_zonePCSData(selfCopy, v32, v33);
      v37 = objc_msgSend_pcsKeyID(v34, v35, v36);
      v40 = objc_msgSend_pcsKeyID(fetchedCopy, v38, v39);
      *v41 = 138544130;
      *&v41[4] = v31;
      *&v41[12] = 2112;
      *&v41[14] = v37;
      v42 = 2112;
      v43 = v40;
      v44 = 2112;
      v45 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Zone PCS fetch operation %{public}@ already has PCS data %@. Ignoring the fetch callback with %@/%@", v41, 0x2Au);
    }
  }

  else
  {
    if (fetchedCopy)
    {
      objc_msgSend_setZonePCSData_(selfCopy, v16, fetchedCopy);
      objc_msgSend_setDidFetchData_(selfCopy, v20, 1);
    }

    objc_msgSend_setFetchError_(selfCopy, v16, errorCopy, *v41, *&v41[8]);
  }

  objc_sync_exit(selfCopy);
}

- (void)_fetchDepedentPCSInSharedDatabase
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zonePCSData(self, a2, v2);
  v7 = objc_msgSend_shareID(v4, v5, v6);

  if (v7)
  {
    objc_initWeak(location, self);
    v10 = objc_msgSend_zonePCSData(self, v8, v9);
    if (objc_msgSend_pcs(v10, v11, v12))
    {
      if ((objc_msgSend_fetchOptions(self, v13, v14) & 0x10) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }

      v17 = objc_msgSend_zonePCSData(self, v15, v16);
      v20 = objc_msgSend_sharePCSData(v17, v18, v19);
      v23 = objc_msgSend_myParticipantPCS(v20, v21, v22) == 0;

      if (!v23)
      {
LABEL_13:
        objc_destroyWeak(location);
        return;
      }
    }

    else
    {
    }

    v31 = objc_msgSend_stateTransitionGroup(self, v24, v25);
    dispatch_group_enter(v31);

    v32 = objc_alloc(MEMORY[0x277CBC5D0]);
    v35 = objc_msgSend_zoneID(self, v33, v34);
    v37 = objc_msgSend_initWithRecordName_zoneID_(v32, v36, *MEMORY[0x277CBC020], v35);

    v40 = objc_msgSend_cache(self, v38, v39);
    Options = objc_msgSend_fetchOptions(self, v41, v42);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22527F980;
    v45[3] = &unk_27854B9F8;
    objc_copyWeak(&v47, location);
    v10 = v37;
    v46 = v10;
    objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v40, v44, v10, self, Options, v45);

    objc_destroyWeak(&v47);
    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v27 = v26;
    v30 = objc_msgSend_zoneID(self, v28, v29);
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v30;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Not fetching zone-wide share PCS for zone %@ in the shared database since it has no shareID", location, 0xCu);
  }
}

- (void)_saveZoneToServer:(id)server completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_225074120;
  v23[4] = sub_22507361C;
  v24 = 0;
  v8 = objc_opt_new();
  v25[0] = serverCopy;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v25, 1);
  objc_msgSend_setRecordZonesToSave_(v8, v11, v10);

  objc_msgSend_setAllowDefaultZoneSave_(v8, v12, 1);
  objc_msgSend_setMaxZoneSaveAttempts_(v8, v13, 1);
  objc_msgSend_setDontFetchFromServer_(v8, v14, 1);
  v15 = objc_opt_class();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22527FD38;
  v19[3] = &unk_27854BA70;
  v22 = v23;
  v16 = serverCopy;
  v20 = v16;
  v17 = completionCopy;
  v21 = v17;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v18, v15, v8, v19);

  _Block_object_dispose(v23, 8);
}

- (void)_saveZoneToServer:(id)server withPCS:(_OpaquePCSShareProtection *)s zoneishPCS:(_OpaquePCSShareProtection *)cS previousEtag:(id)etag completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  etagCopy = etag;
  completionCopy = completion;
  v17 = objc_msgSend_container(self, v15, v16);
  v20 = objc_msgSend_pcsManager(v17, v18, v19);
  v46 = 0;
  v22 = objc_msgSend_dataFromZonePCS_error_(v20, v21, s, &v46);
  v23 = v46;

  if (!v23 && v22)
  {
    v44 = etagCopy;
    if (cS)
    {
      v26 = objc_msgSend_container(self, v24, v25);
      v29 = objc_msgSend_pcsManager(v26, v27, v28);
      v45 = 0;
      v31 = objc_msgSend_dataFromRecordPCS_error_(v29, v30, cS, &v45);
      v23 = v45;

      if (v23 || !v31)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        etagCopy = v44;
        v32 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = v23;
          _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS: %@", buf, 0xCu);
          if (v23)
          {
            goto LABEL_11;
          }
        }

        else if (v23)
        {
LABEL_11:
          completionCopy[2](completionCopy, v23);
LABEL_20:

          goto LABEL_21;
        }

        v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 5005, @"Couldn't serialize zoneish PCS");
        goto LABEL_11;
      }
    }

    else
    {
      v31 = 0;
    }

    objc_msgSend_setProtectionData_(serverCopy, v24, v22);
    v37 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v36, v22);
    objc_msgSend_setProtectionEtag_(serverCopy, v38, v37);

    objc_msgSend_setZoneishProtectionData_(serverCopy, v39, v31);
    etagCopy = v44;
    objc_msgSend_setPreviousProtectionEtag_(serverCopy, v40, v44);
    objc_msgSend_setZonePCS_(serverCopy, v41, s);
    objc_msgSend_setZoneishPCS_(serverCopy, v42, cS);
    objc_msgSend__saveZoneToServer_completion_(self, v43, serverCopy, completionCopy);
    v23 = 0;
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v48 = v23;
    _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS: %@", buf, 0xCu);
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v23)
  {
LABEL_16:
    v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 5005, @"Couldn't serialize zone PCS");
  }

LABEL_17:
  completionCopy[2](completionCopy, v23);
LABEL_21:
}

- (void)_saveNewPCSOnZone:(id)zone completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  completionCopy = completion;
  v11 = objc_msgSend_zoneID(zoneCopy, v9, v10);
  if ((objc_msgSend_isDefaultRecordZoneID(v11, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_zoneID(zoneCopy, v14, v15);
    isSystemRecordZoneID = objc_msgSend_isSystemRecordZoneID(v16, v17, v18);

    if (isSystemRecordZoneID)
    {
      goto LABEL_5;
    }

    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
    v24 = objc_msgSend_zoneID(zoneCopy, v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v25, a2, self, @"CKDPCSCacheZoneFetchOperation.m", 231, @"We shouldn't be trying to save a new PCS on anything other than the default zone or system zone: %@", v24);
  }

LABEL_5:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v27 = v26;
    v30 = objc_msgSend_zoneID(zoneCopy, v28, v29);
    *buf = 138412290;
    v48 = v30;
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Saving new PCS on zone %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v33 = objc_msgSend_container(self, v31, v32);
  v36 = objc_msgSend_pcsManager(v33, v34, v35);
  v39 = objc_msgSend_operationID(self, v37, v38);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_225280960;
  v43[3] = &unk_27854BAC0;
  objc_copyWeak(&v46, buf);
  v40 = completionCopy;
  v45 = v40;
  v41 = zoneCopy;
  v44 = v41;
  objc_msgSend_createZonePCSWithRequestorOperationID_createV2PCS_completionHandler_(v36, v42, v39, 1, v43);

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);
}

- (BOOL)_fetchPCSDataFromServer
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_fetchAggregator(v7, v8, v9);
  v13 = objc_msgSend_zoneID(self, v11, v12);
  v16 = objc_msgSend_parentOperation(self, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22528123C;
  v19[3] = &unk_27854AF30;
  v19[4] = self;
  objc_msgSend_requestFetchOfZoneWithID_forOperation_withCompletionHandler_(v10, v17, v13, v16, v19);

  return 1;
}

- (void)_decryptZonePCSInSharedDatabase
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zonePCSData(self, a2, v2);
  v7 = objc_msgSend_shareID(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_zonePCSData(self, v8, v9);
    v13 = objc_msgSend_sharePCSData(v10, v11, v12);
    v16 = objc_msgSend_pcs(v13, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_container(self, v17, v18);
      v22 = objc_msgSend_pcsManager(v19, v20, v21);
      v25 = objc_msgSend_zonePCSData(self, v23, v24);
      v28 = objc_msgSend_pcsData(v25, v26, v27);
      v31 = objc_msgSend_zonePCSData(self, v29, v30);
      v34 = objc_msgSend_sharePCSData(v31, v32, v33);
      v37 = objc_msgSend_pcs(v34, v35, v36);
      v62 = 0;
      v39 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v22, v38, v28, 3, v37, &v62);
      v40 = v62;

      if (!v39 || v40)
      {
        v42 = 0;
        v60 = 0;
        if (!v39)
        {
LABEL_16:
          objc_msgSend__handleDecryptedZonePCSData_withError_(self, v41, v60, v40);

          return;
        }
      }

      else
      {
        v42 = objc_alloc_init(CKDZonePCSData);
        objc_msgSend_setPcs_(v42, v43, v39);
      }

      CFRelease(v39);
      v60 = v42;
      goto LABEL_16;
    }

    v49 = objc_msgSend_fetchError(self, v17, v18);

    if (!v49)
    {
      v52 = MEMORY[0x277CBC560];
      v53 = *MEMORY[0x277CBC120];
      v61 = objc_msgSend_dependentPCSFetchError(self, v50, v51);
      v56 = objc_msgSend_zoneID(self, v54, v55);
      v58 = objc_msgSend_errorWithDomain_code_error_format_(v52, v57, v53, 5004, v61, @"We don't have share PCS to decrypt zone PCS data for zone %@", v56);
      objc_msgSend_setFetchError_(self, v59, v58);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v45 = v44;
      v48 = objc_msgSend_zoneID(self, v46, v47);
      *buf = 138412290;
      v64 = v48;
      _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Zone %@ in the shared database has no shareID, skipping decryption", buf, 0xCu);
    }
  }
}

- (void)_handleDecryptedZonePCSData:(id)data withError:(id)error
{
  v122 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v9 = objc_msgSend_pcs(data, v7, v8);
  v12 = errorCopy;
  v13 = MEMORY[0x277CBC858];
  v14 = MEMORY[0x277CBC880];
  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *v13;
    if (!os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      v16 = 0;
      v17 = v12;
LABEL_33:
      v71 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v98 = v71;
        v101 = objc_msgSend_zoneID(self, v99, v100);
        *buf = 138412546;
        v119 = v101;
        v120 = 2112;
        v121 = v17;
        _os_log_error_impl(&dword_22506F000, v98, OS_LOG_TYPE_ERROR, "Error decrypting PCS for zone %@: %@", buf, 0x16u);
      }

      objc_msgSend_setFetchError_(self, v72, v17);
      goto LABEL_36;
    }

    *buf = 138412290;
    v119 = v12;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Warn: Error with PCS data for zone: %@", buf, 0xCu);
    v16 = 0;
    v17 = v12;
LABEL_31:
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    goto LABEL_33;
  }

  v18 = objc_msgSend_zonePCSData(self, v10, v11);
  objc_msgSend_setPcs_(v18, v19, v9);

  if (!objc_msgSend_shouldCreateZoneishPCS(self, v20, v21))
  {
    v16 = 0;
    goto LABEL_17;
  }

  v24 = objc_msgSend_zonePCSData(self, v22, v23);
  v27 = objc_msgSend_pcs(v24, v25, v26);

  if (!v27)
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v103 = v58;
      v106 = objc_msgSend_zoneID(self, v104, v105);
      *buf = 138412290;
      v119 = v106;
      _os_log_error_impl(&dword_22506F000, v103, OS_LOG_TYPE_ERROR, "We need to create a zoneish PCS but we don't have the zone PCS for zone %@", buf, 0xCu);
    }

    v61 = MEMORY[0x277CBC560];
    v62 = *MEMORY[0x277CBC120];
    v63 = objc_msgSend_zoneID(self, v59, v60);
    v17 = objc_msgSend_errorWithDomain_code_format_(v61, v64, v62, 5004, @"Couldn't decrypt zone PCS for zone in order to create a zoneish PCS for zone %@", v63);
    v16 = 0;
LABEL_30:

    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v30 = objc_msgSend_container(self, v28, v29);
  v33 = objc_msgSend_pcsManager(v30, v31, v32);
  v36 = objc_msgSend_zonePCSData(self, v34, v35);
  v39 = objc_msgSend_pcs(v36, v37, v38);
  v117 = 0;
  v16 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v33, v40, v39, 0, 0, &v117);
  v41 = v117;

  v42 = *MEMORY[0x277CBC878];
  v43 = *v14;
  if (v41 || !v16)
  {
    if (v43 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v42);
    }

    v65 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v107 = v65;
      v110 = objc_msgSend_zoneID(self, v108, v109);
      *buf = 138412290;
      v119 = v110;
      _os_log_error_impl(&dword_22506F000, v107, OS_LOG_TYPE_ERROR, "We need to create a zoneish PCS but we don't have the zone PCS for zone %@", buf, 0xCu);
    }

    v68 = MEMORY[0x277CBC560];
    v69 = *MEMORY[0x277CBC120];
    v63 = objc_msgSend_zoneID(self, v66, v67);
    v17 = objc_msgSend_errorWithDomain_code_format_(v68, v70, v69, 5004, @"Couldn't create a zoneish PCS for zone %@", v63);

    goto LABEL_30;
  }

  if (v43 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v42);
  }

  v44 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    v111 = v44;
    v114 = objc_msgSend_zoneID(self, v112, v113);
    *buf = 138412546;
    v119 = v114;
    v120 = 2112;
    v121 = v16;
    _os_log_debug_impl(&dword_22506F000, v111, OS_LOG_TYPE_DEBUG, "Created a new zoneish PCS for zone %@: %@", buf, 0x16u);
  }

  v47 = objc_msgSend_zonePCSData(self, v45, v46);
  objc_msgSend_setZoneishPCS_(v47, v48, v16);

LABEL_17:
  v17 = objc_msgSend_zonePCSData(self, v22, v23);
  if (!objc_msgSend_pcs(v17, v49, v50))
  {
    goto LABEL_36;
  }

  v53 = objc_msgSend_zonePCSData(self, v51, v52);
  if (objc_msgSend_zoneishPCS(v53, v54, v55))
  {

    goto LABEL_36;
  }

  v73 = objc_msgSend_zonePCSData(self, v56, v57);
  v76 = objc_msgSend_zoneishPCSData(v73, v74, v75);

  if (v76)
  {
    v115 = objc_msgSend_container(self, v77, v78);
    v81 = objc_msgSend_pcsManager(v115, v79, v80);
    v84 = objc_msgSend_zonePCSData(self, v82, v83);
    v87 = objc_msgSend_zoneishPCSData(v84, v85, v86);
    v90 = objc_msgSend_zonePCSData(self, v88, v89);
    v93 = objc_msgSend_pcs(v90, v91, v92);
    v116 = 0;
    v16 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v81, v94, v87, 1, v93, &v116);
    v17 = v116;

    if (v17)
    {
      if (*v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v97 = *v13;
      if (!os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      v119 = v17;
      _os_log_impl(&dword_22506F000, v97, OS_LOG_TYPE_INFO, "Warn: Error with zoneish PCS data for zone: %@", buf, 0xCu);
      goto LABEL_31;
    }

    v17 = objc_msgSend_zonePCSData(self, v95, v96);
    objc_msgSend_setZoneishPCS_(v17, v102, v16);
LABEL_36:
  }

LABEL_37:
  if (v16)
  {
    CFRelease(v16);
  }
}

- (BOOL)_saveUpdatedPCSToServer
{
  v51 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_shouldCreateZoneishPCS(self, a2, v2) & 1) != 0 || objc_msgSend_rolledPCSForZone(self, v4, v5))
  {
    v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
    dispatch_group_enter(v6);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v34 = v7;
      v37 = objc_msgSend_zoneID(self, v35, v36);
      if (objc_msgSend_shouldCreateZoneishPCS(self, v38, v39))
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      *location = 138543874;
      if (objc_msgSend_rolledPCSForZone(self, v40, v41))
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      *&location[4] = v37;
      v47 = 2114;
      v48 = v42;
      v49 = 2114;
      v50 = v43;
      _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Saving the new Zone PCS to the server for zone %{public}@ due to shouldCreateZoneishPCS: %{public}@, rolledPCSForZone: %{public}@", location, 0x20u);
    }

    v8 = objc_alloc(MEMORY[0x277CBC5E8]);
    v11 = objc_msgSend_zoneID(self, v9, v10);
    v13 = objc_msgSend_initWithZoneID_(v8, v12, v11);

    objc_initWeak(location, self);
    v16 = objc_msgSend_zonePCSData(self, v14, v15);
    v19 = objc_msgSend_pcs(v16, v17, v18);
    v22 = objc_msgSend_zonePCSData(self, v20, v21);
    v25 = objc_msgSend_zoneishPCS(v22, v23, v24);
    v28 = objc_msgSend_zonePCSData(self, v26, v27);
    v31 = objc_msgSend_etag(v28, v29, v30);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2252824CC;
    v44[3] = &unk_278549250;
    objc_copyWeak(&v45, location);
    v44[4] = self;
    objc_msgSend__saveZoneToServer_withPCS_zoneishPCS_previousEtag_completion_(self, v32, v13, v19, v25, v31, v44);

    objc_destroyWeak(&v45);
    objc_destroyWeak(location);
  }

  return 1;
}

@end