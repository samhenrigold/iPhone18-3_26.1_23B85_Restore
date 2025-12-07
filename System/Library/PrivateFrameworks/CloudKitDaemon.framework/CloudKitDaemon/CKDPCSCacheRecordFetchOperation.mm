@interface CKDPCSCacheRecordFetchOperation
- (BOOL)_createAdditionalPCS;
- (BOOL)_decryptPCS;
- (BOOL)_decryptRecordPCSInPrivateDatabase;
- (BOOL)_decryptRecordPCSInSharedDatabase;
- (BOOL)_fetchDependentPCS;
- (BOOL)_fetchDependentPCSInSharedDatabase;
- (BOOL)_fetchPCSDataFromDatabase;
- (BOOL)_fetchPCSDataFromServer;
- (BOOL)_fetchPCSForPrivateZone;
- (BOOL)_savePCSDataToCache;
- (BOOL)hasAllPCSData;
- (BOOL)needsChainPCSCreation;
- (void)_handlePCSDataFetched:(id)fetched withError:(id)error;
@end

@implementation CKDPCSCacheRecordFetchOperation

- (BOOL)needsChainPCSCreation
{
  if ((objc_msgSend_fetchOptions(self, a2, v2) & 4) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_recordPCSData(self, v4, v5);
  v10 = objc_msgSend_chainPCSData(v7, v8, v9);
  v6 = v10 == 0;

  return v6;
}

- (BOOL)hasAllPCSData
{
  if (objc_msgSend_serverRecordHasNoProtectionData(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_recordPCSData(self, v4, v5);
  v6 = objc_msgSend_pcs(v7, v8, v9) != 0;

  return v6;
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
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Record PCS fetch operation %{public}@ received PCS data (%{public}@/%{public}@)%{public}@%@", v41, 0x34u);
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
      v34 = objc_msgSend_recordPCSData(selfCopy, v32, v33);
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
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Record PCS fetch operation %{public}@ already has PCS data %@. Ignoring the fetch callback with %@/%@", v41, 0x2Au);
    }
  }

  else
  {
    if (fetchedCopy)
    {
      objc_msgSend_setRecordPCSData_(selfCopy, v16, fetchedCopy);
      objc_msgSend_setDidFetchData_(selfCopy, v20, 1);
    }

    objc_msgSend_setFetchError_(selfCopy, v16, errorCopy, *v41, *&v41[8]);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_fetchPCSDataFromDatabase
{
  v18 = *MEMORY[0x277D85DE8];
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
    v14 = objc_msgSend_recordID(self, v12, v13);
    *buf = 138412290;
    v17 = v14;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Fetching PCS data for record %@ from the database", buf, 0xCu);
  }

  v8 = objc_msgSend_cache(self, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225279CC8;
  v15[3] = &unk_27854B830;
  v15[4] = self;
  objc_msgSend_getSQLCache_(v8, v9, v15);

  return 1;
}

- (BOOL)_fetchPCSDataFromServer
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_fetchAggregator(v7, v8, v9);
  v13 = objc_msgSend_recordID(self, v11, v12);
  v16 = objc_msgSend_parentOperation(self, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22527A2D8;
  v19[3] = &unk_278548AA8;
  v19[4] = self;
  objc_msgSend_requestFetchOfRecordWithID_forOperation_withCompletionHandler_(v10, v17, v13, v16, v19);

  return 1;
}

- (BOOL)_createAdditionalPCS
{
  v44 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_needsChainPCSCreation(self, a2, v2))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v35 = v4;
      v38 = objc_msgSend_recordID(self, v36, v37);
      *buf = 138412290;
      v43 = v38;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "PCS data from server for %@ has no PCS chaining blob. Creating it and saving the record to the server", buf, 0xCu);
    }

    v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v7);

    v10 = objc_msgSend_recordPCSData(self, v8, v9);
    v13 = objc_msgSend_recordType(v10, v11, v12);
    v16 = v13;
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = objc_msgSend_serverRecordType(self, v14, v15);
    }

    v18 = v17;

    v19 = objc_alloc(MEMORY[0x277CBC5A0]);
    v22 = objc_msgSend_recordID(self, v20, v21);
    v24 = objc_msgSend_initWithRecordType_recordID_(v19, v23, v18, v22);

    objc_msgSend_setWantsChainPCS_(v24, v25, 1);
    v26 = objc_opt_new();
    objc_msgSend_setSavePolicy_(v26, v27, 1);
    v41 = v24;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, &v41, 1);
    objc_msgSend_setRecordsToSave_(v26, v30, v29);

    v31 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_22527A72C;
    v39[3] = &unk_278548C48;
    v39[4] = self;
    v40 = v24;
    v32 = v24;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v33, v31, v26, v39);
  }

  return 1;
}

- (BOOL)_fetchPCSForPrivateZone
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(self, a2, v2);
  v7 = objc_msgSend_pcs(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_recordPCSData(self, v8, v9);
    v13 = objc_msgSend_zoneID(v10, v11, v12);

    v14 = MEMORY[0x277CBC880];
    v15 = MEMORY[0x277CBC858];
    if (!v13)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
      {
        v19 = v16;
        v22 = objc_msgSend_recordID(self, v20, v21);
        *buf = 138412290;
        v51 = v22;
        _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Warn: We don't have a zone ID in our PCS data for record %@. Using the record's zone ID instead", buf, 0xCu);
      }

      v23 = objc_msgSend_recordID(self, v17, v18);
      v13 = objc_msgSend_zoneID(v23, v24, v25);
    }

    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      v44 = v26;
      v47 = objc_msgSend_recordID(self, v45, v46);
      *buf = 138412546;
      v51 = v13;
      v52 = 2112;
      v53 = v47;
      _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Fetching PCS for zone %@ in order to decrypt record %@", buf, 0x16u);
    }

    v29 = objc_msgSend_stateTransitionGroup(self, v27, v28);
    dispatch_group_enter(v29);

    objc_initWeak(buf, self);
    Options = objc_msgSend_fetchOptions(self, v30, v31);
    v35 = objc_msgSend_recordPCSData(self, v33, v34);
    v38 = objc_msgSend_zoneishPublicKeyID(v35, v36, v37);

    v41 = objc_msgSend_cache(self, v39, v40);
    if (v38)
    {
      Options |= 8uLL;
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22527AF44;
    v48[3] = &unk_27854B8E0;
    objc_copyWeak(&v49, buf);
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v41, v42, v13, self, Options, v48);

    objc_destroyWeak(&v49);
    objc_destroyWeak(buf);
  }

  return 1;
}

- (BOOL)_fetchDependentPCSInSharedDatabase
{
  v151 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v5 = objc_msgSend_recordPCSData(self, v3, v4);
  if (!objc_msgSend_pcs(v5, v6, v7))
  {

    goto LABEL_6;
  }

  if ((objc_msgSend_fetchOptions(self, v8, v9) & 0x10) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  v12 = objc_msgSend_recordPCSData(self, v10, v11);
  v15 = objc_msgSend_signingPCS(v12, v13, v14) == 0;

  if (v15)
  {
LABEL_6:
    v5 = dispatch_group_create();
    v18 = objc_msgSend_stateTransitionGroup(self, v16, v17);
    dispatch_group_enter(v18);

    v144[0] = 0;
    v144[1] = v144;
    v144[2] = 0x2020000000;
    v145 = 0;
    v21 = objc_msgSend_recordPCSData(self, v19, v20);
    v24 = objc_msgSend_shareID(v21, v22, v23);

    v27 = objc_msgSend_recordPCSData(self, v25, v26);
    v30 = objc_msgSend_parentID(v27, v28, v29);

    v33 = MEMORY[0x277CBC880];
    v34 = MEMORY[0x277CBC858];
    if (v24)
    {
      v35 = objc_msgSend_container(self, v31, v32);
      v38 = objc_msgSend_containerID(v35, v36, v37);
      v41 = objc_msgSend_specialContainerType(v38, v39, v40) == 21;

      if (v41 || v30 == 0)
      {
        goto LABEL_15;
      }
    }

    else if (!v30)
    {
LABEL_20:
      v70 = objc_msgSend_recordPCSData(self, v31, v32);
      v73 = objc_msgSend_parentID(v70, v71, v72);
      v74 = v73 == 0;

      if (!v74)
      {
        v24 = 0;
LABEL_22:
        v75 = objc_msgSend_recordPCSData(self, v68, v69);
        v78 = objc_msgSend_zoneID(v75, v76, v77);

        if (v78)
        {
          goto LABEL_28;
        }

        if (*v33 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v79 = *v34;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v82 = objc_msgSend_recordID(self, v80, v81);
          *buf = 138412290;
          v148 = v82;
          _os_log_impl(&dword_22506F000, v79, OS_LOG_TYPE_INFO, "Warn: We don't have a zone ID in our PCS data for record %@. Using the record's zone ID instead", buf, 0xCu);
        }

        v85 = objc_msgSend_recordID(self, v83, v84);
        v78 = objc_msgSend_zoneID(v85, v86, v87);

        if (v78)
        {
LABEL_28:
          if (*v33 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v90 = *v34;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            v116 = objc_msgSend_recordID(self, v91, v92);
            *buf = 138412546;
            v148 = v78;
            v149 = 2112;
            v150 = v116;
            _os_log_debug_impl(&dword_22506F000, v90, OS_LOG_TYPE_DEBUG, "Fetching PCS for zone %@ in order to decrypt record %@", buf, 0x16u);
          }

          dispatch_group_enter(v5);
          Options = objc_msgSend_fetchOptions(self, v93, v94);
          v98 = objc_msgSend_recordPCSData(self, v96, v97);
          v101 = objc_msgSend_zoneishPublicKeyID(v98, v99, v100);

          v104 = objc_msgSend_cache(self, v102, v103);
          if (v101)
          {
            Options |= 8uLL;
          }

          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = sub_22527BCE0;
          v131[3] = &unk_278549C68;
          objc_copyWeak(&v135, &location);
          v131[4] = self;
          v78 = v78;
          v132 = v78;
          v134 = v144;
          v133 = v5;
          objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v104, v105, v78, self, Options, v131);

          objc_destroyWeak(&v135);
        }

        v106 = objc_msgSend_callbackQueue(self, v88, v89);
        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = sub_22527BF94;
        v126[3] = &unk_27854B958;
        objc_copyWeak(&v130, &location);
        v128 = v78;
        v129 = v144;
        v127 = v24;
        v107 = v78;
        v108 = v24;
        dispatch_group_notify(v5, v106, v126);

        objc_destroyWeak(&v130);
        _Block_object_dispose(v144, 8);
        goto LABEL_36;
      }

      if (*v33 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v110 = *v34;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        v125 = objc_msgSend_recordID(self, v111, v112);
        *buf = 138412290;
        v148 = v125;
        _os_log_debug_impl(&dword_22506F000, v110, OS_LOG_TYPE_DEBUG, "Assuming %@ is a share since we have no share or parent ID set", buf, 0xCu);
      }

      v115 = objc_msgSend_recordID(self, v113, v114);

      v24 = v115;
      if (!v115)
      {
        goto LABEL_22;
      }

LABEL_15:
      if (*v33 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v58 = *v34;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v117 = objc_msgSend_recordID(self, v59, v60);
        *buf = 138412546;
        v148 = v24;
        v149 = 2112;
        v150 = v117;
        _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Fetching PCS for share %@ in order to decrypt record %@", buf, 0x16u);
      }

      dispatch_group_enter(v5);
      v63 = objc_msgSend_cache(self, v61, v62);
      v66 = objc_msgSend_fetchOptions(self, v64, v65);
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = sub_22527BBD4;
      v136[3] = &unk_27854B930;
      objc_copyWeak(&v139, &location);
      v138 = v144;
      v137 = v5;
      objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v63, v67, v24, self, v66, v136);

      objc_destroyWeak(&v139);
      goto LABEL_22;
    }

    if (*v33 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *v34;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v118 = objc_msgSend_recordPCSData(self, v43, v44);
      v121 = objc_msgSend_parentID(v118, v119, v120);
      v124 = objc_msgSend_recordID(self, v122, v123);
      *buf = 138412546;
      v148 = v121;
      v149 = 2112;
      v150 = v124;
      _os_log_debug_impl(&dword_22506F000, v42, OS_LOG_TYPE_DEBUG, "Fetching parent PCS from record %@ for child record %@", buf, 0x16u);
    }

    v47 = objc_msgSend_fetchOptions(self, v45, v46);
    dispatch_group_enter(v5);
    v50 = objc_msgSend_cache(self, v48, v49);
    v53 = objc_msgSend_recordPCSData(self, v51, v52);
    v56 = objc_msgSend_parentID(v53, v54, v55);
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = sub_22527BAC8;
    v140[3] = &unk_27854B908;
    objc_copyWeak(&v143, &location);
    v142 = v144;
    v141 = v5;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v50, v57, v56, self, v47 | 4, v140);

    objc_destroyWeak(&v143);
    if (v24)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_37:
  objc_destroyWeak(&location);
  return 1;
}

- (BOOL)_fetchDependentPCS
{
  v5 = objc_msgSend_recordPCSData(self, a2, v2);

  if (!v5)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    v14 = objc_msgSend_recordID(self, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v15, a2, self, @"CKDPCSCacheRecordFetchOperation.m", 356, @"We should have PCS data for record %@ by this point", v14);
  }

  if (objc_msgSend_databaseScope(self, v6, v7) == 2)
  {

    return MEMORY[0x2821F9670](self, sel__fetchPCSForPrivateZone, v9);
  }

  else if (objc_msgSend_databaseScope(self, v8, v9) == 3)
  {

    return MEMORY[0x2821F9670](self, sel__fetchDependentPCSInSharedDatabase, v10);
  }

  else
  {
    return 1;
  }
}

- (BOOL)_decryptRecordPCSInPrivateDatabase
{
  v4 = objc_msgSend_recordPCSData(self, a2, v2);
  v7 = objc_msgSend_zonePCSData(v4, v5, v6);
  v10 = objc_msgSend_pcs(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_recordPCSData(self, v11, v12);
    v16 = objc_msgSend_zoneishPublicKeyID(v13, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_recordPCSData(self, v17, v18);
      v22 = objc_msgSend_zonePCSData(v19, v20, v21);
      v25 = objc_msgSend_zoneishPCS(v22, v23, v24);

      if (v25)
      {
        v28 = objc_msgSend_recordPCSData(self, v26, v27);
        v31 = objc_msgSend_zonePCSData(v28, v29, v30);
        v34 = objc_msgSend_zoneishPCS(v31, v32, v33);

        CFRetain(v34);
        if (v34)
        {
          v35 = 0;
          goto LABEL_14;
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v46 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "Record has a zoneish public key set, but we didn't fetch a zoneish PCS on this zone. We'll try decrypting the record PCS anyway, but this might fail.", buf, 2u);
        }
      }
    }

    v47 = objc_msgSend_container(self, v17, v18);
    v50 = objc_msgSend_pcsManager(v47, v48, v49);
    v53 = objc_msgSend_recordPCSData(self, v51, v52);
    v56 = objc_msgSend_pcsData(v53, v54, v55);
    v59 = objc_msgSend_recordPCSData(self, v57, v58);
    v62 = objc_msgSend_zonePCSData(v59, v60, v61);
    v65 = objc_msgSend_pcs(v62, v63, v64);
    v77 = 0;
    v34 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v50, v66, v56, 1, v65, &v77);
    v35 = v77;

    if (!v34)
    {
      v69 = MEMORY[0x277CBC560];
      v70 = *MEMORY[0x277CBC120];
      v71 = objc_msgSend_recordID(self, v17, v18);
      v73 = objc_msgSend_errorWithDomain_code_error_format_(v69, v72, v70, 5004, v35, @"Failed to decrypt PCS data for record %@", v71);
      objc_msgSend_setFetchError_(self, v74, v73);

      objc_msgSend_setShouldRetry_(self, v75, 1);
      v45 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v67 = objc_msgSend_recordPCSData(self, v17, v18);
    objc_msgSend_setPcs_(v67, v68, v34);

    CFRelease(v34);
    v45 = 1;
LABEL_16:

    return v45;
  }

  v36 = objc_msgSend_fetchError(self, v11, v12);

  if (!v36)
  {
    v39 = MEMORY[0x277CBC560];
    v40 = *MEMORY[0x277CBC120];
    v41 = objc_msgSend_recordID(self, v37, v38);
    v43 = objc_msgSend_errorWithDomain_code_format_(v39, v42, v40, 5004, @"We couldn't get zone PCS data for record %@", v41);
    objc_msgSend_setFetchError_(self, v44, v43);
  }

  return 0;
}

- (BOOL)_decryptRecordPCSInSharedDatabase
{
  v161 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_recordPCSData(self, a2, v2);
  v8 = objc_msgSend_parentPCSData(v5, v6, v7);
  v11 = objc_msgSend_chainPCSData(v8, v9, v10);
  v14 = objc_msgSend_pcs(v11, v12, v13);

  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v121 = v17;
      v124 = objc_msgSend_recordID(self, v122, v123);
      v127 = objc_msgSend_recordPCSData(self, v125, v126);
      v130 = objc_msgSend_parentID(v127, v128, v129);
      *buf = 138412546;
      v158 = v124;
      v159 = 2112;
      v160 = v130;
      _os_log_debug_impl(&dword_22506F000, v121, OS_LOG_TYPE_DEBUG, "Attempting a decrypt of record %@ via its parent PCS (record %@)", buf, 0x16u);
    }

    v20 = objc_msgSend_recordPCSData(self, v18, v19);
    v23 = objc_msgSend_parentPCSData(v20, v21, v22);
    v26 = objc_msgSend_chainPCSData(v23, v24, v25);
    v29 = objc_msgSend_pcs(v26, v27, v28);

LABEL_7:
    goto LABEL_8;
  }

  v34 = objc_msgSend_recordPCSData(self, v15, v16);
  v37 = objc_msgSend_zonePCSData(v34, v35, v36);
  v40 = objc_msgSend_pcs(v37, v38, v39);

  if (!v40)
  {
    v88 = objc_msgSend_recordPCSData(self, v41, v42);
    v91 = objc_msgSend_sharePCSData(v88, v89, v90);
    v94 = objc_msgSend_pcs(v91, v92, v93);

    if (!v94)
    {
      goto LABEL_27;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v95 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      v144 = objc_msgSend_recordID(self, v96, v97);
      v147 = objc_msgSend_recordPCSData(self, v145, v146);
      v152 = objc_msgSend_shareID(v147, v148, v149);
      v153 = v152;
      if (!v152)
      {
        v3 = objc_msgSend_recordPCSData(self, v150, v151);
        v153 = objc_msgSend_sharePCSData(v3, v154, v155);
      }

      *buf = 138412546;
      v158 = v144;
      v159 = 2112;
      v160 = v153;
      _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Attempting a decrypt of record %@ via its share PCS (record %@)", buf, 0x16u);
      if (!v152)
      {
      }
    }

    v20 = objc_msgSend_recordPCSData(self, v98, v99);
    v23 = objc_msgSend_sharePCSData(v20, v100, v101);
    v29 = objc_msgSend_pcs(v23, v102, v103);
    goto LABEL_7;
  }

  v43 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v44 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v131 = v44;
    v134 = objc_msgSend_recordID(self, v132, v133);
    v137 = objc_msgSend_recordPCSData(self, v135, v136);
    v140 = objc_msgSend_zonePCSData(v137, v138, v139);
    v143 = objc_msgSend_zoneID(v140, v141, v142);
    *buf = 138412546;
    v158 = v134;
    v159 = 2112;
    v160 = v143;
    _os_log_debug_impl(&dword_22506F000, v131, OS_LOG_TYPE_DEBUG, "Attempting a decrypt of record %@ via its shared zone PCS (zone %@)", buf, 0x16u);
  }

  v47 = objc_msgSend_recordPCSData(self, v45, v46);
  v50 = objc_msgSend_zonePCSData(v47, v48, v49);
  v29 = objc_msgSend_pcs(v50, v51, v52);

  v55 = objc_msgSend_recordPCSData(self, v53, v54);
  v58 = objc_msgSend_zoneishPublicKeyID(v55, v56, v57);

  if (v58)
  {
    v59 = objc_msgSend_recordPCSData(self, v30, v31);
    v62 = objc_msgSend_zonePCSData(v59, v60, v61);
    v65 = objc_msgSend_zoneishPCS(v62, v63, v64);

    if (v65)
    {
      v68 = objc_msgSend_recordPCSData(self, v66, v67);
      v71 = objc_msgSend_zonePCSData(v68, v69, v70);
      v32 = objc_msgSend_zoneishPCS(v71, v72, v73);

      CFRetain(v32);
      if (v29)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (*v43 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v120 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v120, OS_LOG_TYPE_ERROR, "Record has a zoneish public key set, but we didn't fetch a zoneish PCS on this zone. We'll try decrypting the record PCS anyway, but this might fail.", buf, 2u);
    }
  }

LABEL_8:
  v32 = 0;
  if (v29)
  {
LABEL_9:
    if (v32)
    {
      v33 = 0;
LABEL_21:
      v85 = objc_msgSend_recordPCSData(self, v30, v31);
      objc_msgSend_setPcs_(v85, v86, v32);

      CFRelease(v32);
      v87 = 1;
LABEL_32:

      return v87;
    }

    v74 = objc_msgSend_container(self, v30, v31);
    v77 = objc_msgSend_pcsManager(v74, v75, v76);
    v80 = objc_msgSend_recordPCSData(self, v78, v79);
    v83 = objc_msgSend_pcsData(v80, v81, v82);
    v156 = 0;
    v32 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v77, v84, v83, 1, v29, &v156);
    v33 = v156;

    if (v32)
    {
      goto LABEL_21;
    }

    v112 = MEMORY[0x277CBC560];
    v113 = *MEMORY[0x277CBC120];
    v114 = objc_msgSend_recordID(self, v30, v31);
    v116 = objc_msgSend_errorWithDomain_code_error_format_(v112, v115, v113, 5004, v33, @"Failed to decrypt PCS data for record %@", v114);
    objc_msgSend_setFetchError_(self, v117, v116);

    objc_msgSend_setShouldRetry_(self, v118, 1);
LABEL_31:
    v87 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v104 = objc_msgSend_fetchError(self, v30, v31);

  if (!v104)
  {
    v107 = MEMORY[0x277CBC560];
    v108 = *MEMORY[0x277CBC120];
    v33 = objc_msgSend_recordID(self, v105, v106);
    v110 = objc_msgSend_errorWithDomain_code_format_(v107, v109, v108, 5004, @"We couldn't get any dependent PCS data to decrypt shared record %@", v33);
    objc_msgSend_setFetchError_(self, v111, v110);

    goto LABEL_31;
  }

  return 0;
}

- (BOOL)_decryptPCS
{
  v237 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(self, a2, v2);
  v7 = objc_msgSend_pcsData(v4, v5, v6);
  if (v7)
  {
  }

  else
  {
    v12 = objc_msgSend_recordPCSData(self, v8, v9);
    v15 = objc_msgSend_zoneishPublicKeyID(v12, v13, v14);

    if (!v15)
    {
      v54 = objc_msgSend_fetchError(self, v10, v11);

      if (!v54)
      {
        v57 = MEMORY[0x277CBC560];
        v58 = objc_msgSend_recordID(self, v55, v56);
        v60 = objc_msgSend_errorWithDomain_code_format_(v57, v59, *MEMORY[0x277CBC120], 5004, @"We don't have record PCS data for record %@", v58);
        objc_msgSend_setFetchError_(self, v61, v60);
      }

      LOBYTE(shouldRetry) = 0;
      return shouldRetry;
    }
  }

  if (objc_msgSend_databaseScope(self, v10, v11) == 2)
  {
    v18 = objc_msgSend__decryptRecordPCSInPrivateDatabase(self, v16, v17);
LABEL_8:
    v21 = v18;
    goto LABEL_10;
  }

  if (objc_msgSend_databaseScope(self, v16, v17) == 3)
  {
    v18 = objc_msgSend__decryptRecordPCSInSharedDatabase(self, v19, v20);
    goto LABEL_8;
  }

  v21 = 1;
LABEL_10:
  if ((objc_msgSend_fetchOptions(self, v19, v20) & 4) != 0)
  {
    v24 = objc_msgSend_recordPCSData(self, v22, v23);
    v27 = objc_msgSend_chainPCSData(v24, v25, v26);

    if (v27)
    {
      v30 = objc_msgSend_container(self, v28, v29);
      v33 = objc_msgSend_pcsManager(v30, v31, v32);
      v36 = objc_msgSend_recordPCSData(self, v34, v35);
      v38 = objc_msgSend_decryptChainPCSForRecordPCS_(v33, v37, v36);

      if (v38 || (objc_msgSend_recordPCSData(self, v39, v40), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend_chainPCSData(v63, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_pcs(v66, v67, v68), v66, v63, !v69))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v41 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v208 = v41;
          v211 = objc_msgSend_recordID(self, v209, v210);
          *buf = 138412546;
          v234 = v211;
          v235 = 2112;
          v236 = v38;
          _os_log_debug_impl(&dword_22506F000, v208, OS_LOG_TYPE_DEBUG, "Error decrypting chain PCS on record %@: %@", buf, 0x16u);
        }

        v44 = MEMORY[0x277CBC560];
        v45 = objc_msgSend_recordID(self, v42, v43);
        v47 = objc_msgSend_errorWithDomain_code_error_format_(v44, v46, *MEMORY[0x277CBC120], 5004, v38, @"Couldn't decrypt chain PCS on record %@", v45);
        objc_msgSend_setFetchError_(self, v48, v47);
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v70 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v216 = v70;
          v219 = objc_msgSend_recordID(self, v217, v218);
          *buf = 138412290;
          v234 = v219;
          _os_log_debug_impl(&dword_22506F000, v216, OS_LOG_TYPE_DEBUG, "Successfully decrypted chain PCS data on record %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v50 = v49;
        v53 = objc_msgSend_recordID(self, v51, v52);
        *buf = 138412290;
        v234 = v53;
        _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Didn't get any chain PCS data on record %@, but the client requested it. This might be ok since the client might want to create it", buf, 0xCu);
      }
    }
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v71 = objc_msgSend_unitTestOverrides(self, v22, v23);
    v73 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"ReturnWrappedEPSKForRecordPCS");
    v74 = v73 == 0;

    if (!v74)
    {
      v75 = objc_msgSend_recordPCSData(self, v22, v23);
      v78 = objc_msgSend_encryptedPublicSharingKey(v75, v76, v77);
      objc_msgSend_setData_(v78, v79, 0);
    }
  }

  v80 = objc_msgSend_recordPCSData(self, v22, v23);
  v85 = objc_msgSend_encryptedPublicSharingKey(v80, v81, v82);
  if (!v85)
  {
    goto LABEL_50;
  }

  v86 = objc_msgSend_recordPCSData(self, v83, v84);
  v89 = objc_msgSend_encryptedPublicSharingKey(v86, v87, v88);
  v92 = objc_msgSend_data(v89, v90, v91);
  if (v92)
  {

LABEL_49:
LABEL_50:

    goto LABEL_51;
  }

  v95 = objc_msgSend_recordPCSData(self, v93, v94);
  v98 = objc_msgSend_pcs(v95, v96, v97) == 0;

  if (!v98)
  {
    v101 = [CKDWrappingContext alloc];
    v104 = objc_msgSend_recordID(self, v102, v103);
    v80 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v101, v105, v104, *MEMORY[0x277CBC900], 0, 0, 0);

    v108 = objc_msgSend_container(self, v106, v107);
    v111 = objc_msgSend_pcsManager(v108, v109, v110);
    v114 = objc_msgSend_recordPCSData(self, v112, v113);
    v117 = objc_msgSend_encryptedPublicSharingKey(v114, v115, v116);
    v120 = objc_msgSend_recordPCSData(self, v118, v119);
    v123 = objc_msgSend_pcs(v120, v121, v122);
    v85 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v111, v124, v117, v123, v80);

    if (v85 || (objc_msgSend_recordPCSData(self, v125, v126), v135 = objc_claimAutoreleasedReturnValue(), objc_msgSend_encryptedPublicSharingKey(v135, v136, v137), v138 = objc_claimAutoreleasedReturnValue(), objc_msgSend_data(v138, v139, v140), v141 = objc_claimAutoreleasedReturnValue(), v142 = v141 == 0, v141, v138, v135, v142))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v127 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v212 = v127;
        v215 = objc_msgSend_recordID(self, v213, v214);
        *buf = 138412546;
        v234 = v215;
        v235 = 2112;
        v236 = v85;
        _os_log_debug_impl(&dword_22506F000, v212, OS_LOG_TYPE_DEBUG, "Error decrypting public sharing key on record %@: %@", buf, 0x16u);
      }

      v130 = MEMORY[0x277CBC560];
      v131 = objc_msgSend_recordID(self, v128, v129);
      v133 = objc_msgSend_errorWithDomain_code_error_format_(v130, v132, *MEMORY[0x277CBC120], 5004, v85, @"Couldn't decrypt public sharing key on record %@", v131);
      objc_msgSend_setFetchError_(self, v134, v133);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v143 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v220 = v143;
        v223 = objc_msgSend_recordID(self, v221, v222);
        *buf = 138412290;
        v234 = v223;
        _os_log_debug_impl(&dword_22506F000, v220, OS_LOG_TYPE_DEBUG, "Successfully decrypted public sharing key on record %@", buf, 0xCu);
      }
    }

    goto LABEL_49;
  }

LABEL_51:
  if (v21)
  {
LABEL_61:
    LOBYTE(shouldRetry) = 1;
    return shouldRetry;
  }

  if ((objc_msgSend_wasFetchedFromCache(self, v99, v100) & 1) != 0 || (shouldRetry = objc_msgSend_shouldRetry(self, v144, v145)) != 0)
  {
    objc_initWeak(buf, self);
    v148 = objc_msgSend_stateTransitionGroup(self, v146, v147);
    dispatch_group_enter(v148);

    v151 = objc_msgSend_cache(self, v149, v150);
    v154 = objc_msgSend_recordID(self, v152, v153);
    v157 = objc_msgSend_databaseScope(self, v155, v156);
    v231[0] = MEMORY[0x277D85DD0];
    v231[1] = 3221225472;
    v231[2] = sub_22527DAAC;
    v231[3] = &unk_278549318;
    objc_copyWeak(&v232, buf);
    objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v151, v158, 0, v154, v157, v231);

    v161 = objc_msgSend_recordPCSData(self, v159, v160);
    v164 = objc_msgSend_zoneID(v161, v162, v163);

    if (!v164)
    {
      v167 = objc_msgSend_recordID(self, v165, v166);
      v164 = objc_msgSend_zoneID(v167, v168, v169);
    }

    v170 = objc_msgSend_stateTransitionGroup(self, v165, v166);
    dispatch_group_enter(v170);

    v173 = objc_msgSend_cache(self, v171, v172);
    v176 = objc_msgSend_databaseScope(self, v174, v175);
    v229[0] = MEMORY[0x277D85DD0];
    v229[1] = 3221225472;
    v229[2] = sub_22527DB04;
    v229[3] = &unk_278549318;
    objc_copyWeak(&v230, buf);
    objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v173, v177, 0, v164, v176, v229);

    v180 = objc_msgSend_recordPCSData(self, v178, v179);
    v183 = objc_msgSend_shareID(v180, v181, v182);

    if (v183)
    {
      v186 = objc_msgSend_stateTransitionGroup(self, v184, v185);
      dispatch_group_enter(v186);

      v189 = objc_msgSend_cache(self, v187, v188);
      v192 = objc_msgSend_databaseScope(self, v190, v191);
      v227[0] = MEMORY[0x277D85DD0];
      v227[1] = 3221225472;
      v227[2] = sub_22527DB5C;
      v227[3] = &unk_278549318;
      objc_copyWeak(&v228, buf);
      objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v189, v193, 0, v183, v192, v227);

      objc_destroyWeak(&v228);
    }

    v194 = objc_msgSend_recordPCSData(self, v184, v185);
    v197 = objc_msgSend_parentID(v194, v195, v196);

    if (v197)
    {
      v200 = objc_msgSend_stateTransitionGroup(self, v198, v199);
      dispatch_group_enter(v200);

      v203 = objc_msgSend_cache(self, v201, v202);
      v206 = objc_msgSend_databaseScope(self, v204, v205);
      v225[0] = MEMORY[0x277D85DD0];
      v225[1] = 3221225472;
      v225[2] = sub_22527DBB4;
      v225[3] = &unk_278549318;
      objc_copyWeak(&v226, buf);
      objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v203, v207, 0, v197, v206, v225);

      objc_destroyWeak(&v226);
    }

    objc_destroyWeak(&v230);
    objc_destroyWeak(&v232);
    objc_destroyWeak(buf);
    goto LABEL_61;
  }

  return shouldRetry;
}

- (BOOL)_savePCSDataToCache
{
  objc_initWeak(&location, self);
  if (objc_msgSend_wasFetchedFromCache(self, v3, v4))
  {
    v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v7);

    v10 = objc_msgSend_cache(self, v8, v9);
    v13 = objc_msgSend_recordPCSData(self, v11, v12);
    v16 = objc_msgSend_recordID(self, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22527DE80;
    v34[3] = &unk_278549318;
    v20 = &v35;
    objc_copyWeak(&v35, &location);
    objc_msgSend_updateMemoryCacheWithRecordPCSData_forRecordWithID_databaseScope_withCompletionHandler_(v10, v21, v13, v16, v19, v34);
  }

  else
  {
    v22 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v22);

    v10 = objc_msgSend_cache(self, v23, v24);
    v13 = objc_msgSend_recordPCSData(self, v25, v26);
    v16 = objc_msgSend_recordID(self, v27, v28);
    v31 = objc_msgSend_databaseScope(self, v29, v30);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22527DE28;
    v36[3] = &unk_278549318;
    v20 = &v37;
    objc_copyWeak(&v37, &location);
    objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v10, v32, v13, v16, v31, v36);
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  return 1;
}

@end