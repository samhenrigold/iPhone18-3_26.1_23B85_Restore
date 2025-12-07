@interface CKDRepairAssetsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDRepairAssetsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)assetOrPackageForMetadata:(id)metadata inRecord:(id)record;
- (id)repairContainer;
- (void)_fetchAssetMetadata;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_updateMissingAssetServerStatus;
- (void)_uploadAssetsModify;
- (void)main;
@end

@implementation CKDRepairAssetsOperation

- (CKDRepairAssetsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v121.receiver = self;
  v121.super_class = CKDRepairAssetsOperation;
  v9 = [(CKDDatabaseOperation *)&v121 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
    v16 = objc_msgSend_assets(infoCopy, v14, v15);
    v19 = objc_msgSend_count(v16, v17, v18);

    if (v19)
    {
      v22 = 0;
      do
      {
        v23 = objc_msgSend_assetMetadata(infoCopy, v20, v21);
        v25 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, v22);
        v28 = objc_msgSend_assets(infoCopy, v26, v27);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v22);
        v33 = objc_msgSend_UUID(v30, v31, v32);
        objc_msgSend_setObject_forKeyedSubscript_(v13, v34, v25, v33);

        v37 = objc_msgSend_assets(infoCopy, v35, v36);
        v39 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, v22);
        v42 = objc_msgSend_assets(infoCopy, v40, v41);
        v44 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, v22);
        v47 = objc_msgSend_UUID(v44, v45, v46);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v48, v39, v47);

        ++v22;
        v51 = objc_msgSend_assets(infoCopy, v49, v50);
        v54 = objc_msgSend_count(v51, v52, v53);
      }

      while (v22 < v54);
    }

    v55 = objc_msgSend_packages(infoCopy, v20, v21);
    v58 = objc_msgSend_count(v55, v56, v57);

    if (v58)
    {
      v61 = 0;
      do
      {
        v62 = objc_msgSend_packageMetadata(infoCopy, v59, v60);
        v64 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, v61);
        v67 = objc_msgSend_packages(infoCopy, v65, v66);
        v69 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, v61);
        v72 = objc_msgSend_UUID(v69, v70, v71);
        objc_msgSend_setObject_forKeyedSubscript_(v13, v73, v64, v72);

        v76 = objc_msgSend_packages(infoCopy, v74, v75);
        v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, v61);
        v81 = objc_msgSend_packages(infoCopy, v79, v80);
        v83 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, v61);
        v86 = objc_msgSend_UUID(v83, v84, v85);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v87, v78, v86);

        ++v61;
        v90 = objc_msgSend_packages(infoCopy, v88, v89);
        v93 = objc_msgSend_count(v90, v91, v92);
      }

      while (v61 < v93);
    }

    assetOrPackageUUIDToMetadata = v9->_assetOrPackageUUIDToMetadata;
    v9->_assetOrPackageUUIDToMetadata = v13;
    v95 = v13;

    UUIDToAssetOrPackage = v9->_UUIDToAssetOrPackage;
    v9->_UUIDToAssetOrPackage = v10;
    v97 = v10;

    v100 = objc_msgSend_unavailableAssets(infoCopy, v98, v99);
    v103 = objc_msgSend_unavailablePackages(infoCopy, v101, v102);
    v105 = objc_msgSend_arrayByAddingObjectsFromArray_(v100, v104, v103);

    unavailableAssetsAndPackages = v9->_unavailableAssetsAndPackages;
    v9->_unavailableAssetsAndPackages = v105;
    v107 = v105;

    v110 = objc_msgSend_uploadRequestConfiguration(infoCopy, v108, v109);
    uploadRequestConfiguration = v9->_uploadRequestConfiguration;
    v9->_uploadRequestConfiguration = v110;

    v114 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v112, v113);
    assetOrPackageUUIDToOriginalRecord = v9->_assetOrPackageUUIDToOriginalRecord;
    v9->_assetOrPackageUUIDToOriginalRecord = v114;

    v118 = objc_msgSend_set(MEMORY[0x277CBEB58], v116, v117);
    uploadedAssetOrPackageUUIDs = v9->_uploadedAssetOrPackageUUIDs;
    v9->_uploadedAssetOrPackageUUIDs = v118;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/repair-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

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
      objc_msgSend__updateMissingAssetServerStatus(self, v14, v15);
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
    objc_msgSend__fetchAssetMetadata(self, v12, v13);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend__uploadAssetsModify(self, v6, v7);
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
    v7.super_class = &OBJC_METACLASS___CKDRepairAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548DC0[state - 2];
  }

  return v5;
}

- (void)_fetchAssetMetadata
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_225073FE0;
  v43 = sub_22507357C;
  v44 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v4, v5);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v35, v45, 16);
  if (v10)
  {
    v11 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v14 = v40[5];
        v15 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v8, v9);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v13);
        v20 = objc_msgSend_recordID(v17, v18, v19);
        objc_msgSend_setObject_forKeyedSubscript_(v14, v21, v13, v20);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v35, v45, 16);
    }

    while (v10);
  }

  v22 = objc_opt_new();
  v25 = objc_msgSend_allKeys(v40[5], v23, v24);
  objc_msgSend_setRecordIDs_(v22, v26, v25);

  objc_msgSend_setShouldFetchAssetContent_(v22, v27, 0);
  v30 = objc_msgSend_stateTransitionGroup(self, v28, v29);
  dispatch_group_enter(v30);

  v31 = objc_opt_class();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_2251B66F8;
  v34[3] = &unk_278548D28;
  v34[4] = self;
  v34[5] = &v39;
  v34[6] = a2;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v32, v31, v22, v34);

  _Block_object_dispose(&v39, 8);
}

- (void)_uploadAssetsModify
{
  v128 = a2;
  v154 = *MEMORY[0x277D85DE8];
  v129 = objc_opt_new();
  v135 = objc_opt_new();
  v130 = objc_opt_new();
  v138 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v7 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v5, v6);
  v10 = objc_msgSend_keyEnumerator(v7, v8, v9);

  obj = v10;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v147, v153, 16);
  if (v12)
  {
    v15 = v12;
    v16 = MEMORY[0x277CBC880];
    v17 = *v148;
    v18 = MEMORY[0x277CBC838];
    v136 = *v148;
    selfCopy = self;
    do
    {
      v19 = 0;
      v139 = v15;
      do
      {
        if (*v148 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v147 + 1) + 8 * v19);
        v21 = objc_msgSend_UUIDToAssetOrPackage(self, v13, v14, v128);
        v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v20);

        v26 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v24, v25);
        v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v20);

        v31 = objc_msgSend_assetOrPackageUUIDToOriginalRecord(self, v29, v30);
        v142 = v20;
        v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, v20);

        v143 = v33;
        if (v33)
        {
          v35 = objc_msgSend_assetOrPackageForMetadata_inRecord_(self, v34, v28, v33);
          if (v35)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = MEMORY[0x277CBC1C0];
              v37 = v28;
              v38 = v35;
              v39 = v23;
              v40 = [v36 alloc];
              v43 = objc_msgSend_fileSignature(v37, v41, v42);
              objc_msgSend_referenceSignature(v37, v44, v45);
              v47 = v46 = v35;

              v50 = objc_msgSend_assetKey(v38, v48, v49);

              v52 = objc_msgSend_initWithFileSignature_referenceSignature_assetKey_(v40, v51, v43, v47, v50);
              v35 = v46;
              self = selfCopy;

              v15 = v139;
              v55 = objc_msgSend_UUID(v39, v53, v54);
              objc_msgSend_setObject_forKeyedSubscript_(v135, v56, v52, v55);

              objc_msgSend_setRecordID_(v39, v57, 0);
              v58 = objc_alloc(MEMORY[0x277CBC5A0]);
              v59 = objc_alloc(MEMORY[0x277CBC5D0]);
              v61 = objc_msgSend_initWithRecordName_(v59, v60, v142);
              v63 = objc_msgSend_initWithRecordType_recordID_(v58, v62, @"asset", v61);

              v16 = MEMORY[0x277CBC880];
              objc_msgSend_setObject_forKeyedSubscript_(v63, v64, v39, @"payload");

              v17 = v136;
              objc_msgSend_addObject_(v138, v65, v63);

              v18 = MEMORY[0x277CBC838];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v133 = v23;
                v134 = v19;
                v131 = v23;
                v132 = v35;
                v68 = v35;
                v141 = v28;
                v69 = v28;
                v70 = objc_opt_new();
                v73 = objc_msgSend_assets(v68, v71, v72);
                v76 = objc_msgSend_count(v73, v74, v75);

                v79 = 0x277CBC000uLL;
                if (v76)
                {
                  v80 = 0;
                  v144 = v69;
                  do
                  {
                    v81 = objc_alloc(*(v79 + 448));
                    v145 = objc_msgSend_fileSignatures(v69, v82, v83);
                    v85 = objc_msgSend_objectAtIndexedSubscript_(v145, v84, v80);
                    v88 = objc_msgSend_referenceSignatures(v69, v86, v87);
                    v90 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, v80);
                    objc_msgSend_assets(v68, v91, v92);
                    v94 = v93 = v70;
                    v96 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, v80);
                    v99 = objc_msgSend_assetKey(v96, v97, v98);
                    v101 = objc_msgSend_initWithFileSignature_referenceSignature_assetKey_(v81, v100, v85, v90, v99);

                    v70 = v93;
                    v69 = v144;

                    objc_msgSend_addObject_(v93, v102, v101);
                    ++v80;
                    v105 = objc_msgSend_assets(v68, v103, v104);
                    v108 = objc_msgSend_count(v105, v106, v107);

                    v79 = 0x277CBC000;
                  }

                  while (v80 < v108);
                }

                v109 = objc_msgSend_UUID(v131, v77, v78);
                objc_msgSend_setObject_forKey_(v130, v110, v70, v109);

                v111 = objc_alloc(MEMORY[0x277CBC5A0]);
                v112 = objc_alloc(MEMORY[0x277CBC5D0]);
                v114 = objc_msgSend_initWithRecordName_(v112, v113, v142);
                v116 = objc_msgSend_initWithRecordType_recordID_(v111, v115, @"package", v114);

                objc_msgSend_setObject_forKeyedSubscript_(v116, v117, v131, @"payload");
                objc_msgSend_addObject_(v138, v118, v116);

                v17 = v136;
                self = selfCopy;
                v16 = MEMORY[0x277CBC880];
                v18 = MEMORY[0x277CBC838];
                v15 = v139;
                v23 = v133;
                v19 = v134;
                v28 = v141;
                v35 = v132;
              }
            }
          }

          else
          {
            if (*v16 != -1)
            {
              dispatch_once(v16, *MEMORY[0x277CBC878]);
            }

            v67 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v152 = v23;
              _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "Could not find original asset or package for asset or package %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (*v16 != -1)
          {
            dispatch_once(v16, *MEMORY[0x277CBC878]);
          }

          v66 = *v18;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v152 = v23;
            _os_log_error_impl(&dword_22506F000, v66, OS_LOG_TYPE_ERROR, "Could not find original record for asset or package %@", buf, 0xCu);
          }
        }

        ++v19;
      }

      while (v19 != v15);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v147, v153, 16);
    }

    while (v15);
  }

  objc_msgSend_setAssetUUIDToExpectedProperties_(v129, v119, v135);
  objc_msgSend_setPackageUUIDToExpectedProperties_(v129, v120, v130);
  objc_msgSend_setShouldOnlySaveAssetContent_(v129, v121, 1);
  objc_msgSend_setRecordsToSave_(v129, v122, v138);

  v125 = objc_msgSend_stateTransitionGroup(self, v123, v124);
  dispatch_group_enter(v125);

  v126 = objc_opt_class();
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = sub_2251B75DC;
  v146[3] = &unk_278548DA0;
  v146[4] = self;
  v146[5] = v128;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v127, v126, v129, v146);
}

- (void)_updateMissingAssetServerStatus
{
  v216 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v184 = objc_opt_new();
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v7 = objc_msgSend_uploadedAssetOrPackageUUIDs(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v198, v215, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v199;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v199 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v198 + 1) + 8 * i);
        v16 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v10, v11);
        v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v15);

        v21 = objc_msgSend_repairZoneRecordID(v18, v19, v20);
        objc_msgSend_addObject_(v3, v22, v21);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v198, v215, 16);
    }

    while (v12);
  }

  v182 = v3;

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v25 = objc_msgSend_assetOrPackageUUIDToUploadError(self, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v194, v214, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v195;
    do
    {
      v32 = 0;
      do
      {
        if (*v195 != v31)
        {
          objc_enumerationMutation(v25);
        }

        v33 = *(*(&v194 + 1) + 8 * v32);
        v34 = objc_msgSend_assetOrPackageUUIDToUploadError(self, v28, v29);
        v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, v33);

        if (objc_msgSend_repairErrorShouldBeMarkedAsBroken_(MEMORY[0x277CBC1B8], v37, v36))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v39 = *MEMORY[0x277CBC838];
          if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_INFO))
          {
            v42 = v39;
            v45 = objc_msgSend_code(v36, v43, v44);
            *buf = 134217984;
            v206 = v45;
            _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Received error code %ld for repair, so treating as not available", buf, 0xCu);
          }

          v46 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v40, v41);
          v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, v33);

          v51 = objc_msgSend_repairZoneRecordID(v48, v49, v50);
          objc_msgSend_addObject_(v4, v52, v51);
        }

        else
        {
          objc_msgSend_addObject_(v184, v38, v36);
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v194, v214, 16);
    }

    while (v30);
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v55 = objc_msgSend_unavailableAssetsAndPackages(self, v53, v54);
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v190, v213, 16);
  v60 = v182;
  if (v57)
  {
    v61 = v57;
    v62 = *v191;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v191 != v62)
        {
          objc_enumerationMutation(v55);
        }

        v64 = objc_msgSend_repairZoneRecordID(*(*(&v190 + 1) + 8 * j), v58, v59);
        objc_msgSend_addObject_(v4, v65, v64);
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v190, v213, 16);
    }

    while (v61);
  }

  v68 = objc_msgSend_count(v182, v66, v67);
  if (objc_msgSend_count(v4, v69, v70) + v68 == 1)
  {
    v73 = objc_msgSend_count(v4, v71, v72);
    v74 = objc_opt_new();
    if (objc_msgSend_count(v4, v75, v76))
    {
      objc_msgSend_anyObject(v4, v77, v78);
    }

    else
    {
      objc_msgSend_anyObject(v182, v77, v78);
    }
    v79 = ;
    objc_msgSend_setRepairRecordID_(v74, v80, v79);

    objc_msgSend_setRecovered_(v74, v81, v73 == 0);
    if (v73)
    {
      goto LABEL_59;
    }

    v84 = objc_msgSend_assetOrPackageUUIDToMetadata(self, v82, v83);
    v87 = objc_msgSend_allKeys(v84, v85, v86);
    v90 = objc_msgSend_firstObject(v87, v88, v89);

    v93 = objc_msgSend_UUIDToAssetOrPackage(self, v91, v92);
    v95 = objc_msgSend_objectForKeyedSubscript_(v93, v94, v90);

    objc_opt_class();
    LOBYTE(v93) = objc_opt_isKindOfClass();
    objc_msgSend_setRecovered_(v74, v96, 1);
    v98 = v95;
    if (v93)
    {
      v181 = v90;
      v99 = objc_opt_new();
      v100 = objc_opt_new();
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v180 = v98;
      obj = objc_msgSend_assets(v98, v101, v102);
      v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, &v186, v202, 16);
      if (v104)
      {
        v107 = v104;
        v108 = *v187;
        do
        {
          for (k = 0; k != v107; ++k)
          {
            if (*v187 != v108)
            {
              objc_enumerationMutation(obj);
            }

            v110 = *(*(&v186 + 1) + 8 * k);
            v111 = MEMORY[0x277CCABB0];
            v112 = objc_msgSend_size(v110, v105, v106);
            v114 = objc_msgSend_numberWithUnsignedLongLong_(v111, v113, v112);
            objc_msgSend_addObject_(v99, v115, v114);

            v118 = objc_msgSend_uploadReceipt(v110, v116, v117);
            objc_msgSend_addObject_(v100, v119, v118);
          }

          v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v105, &v186, v202, 16);
        }

        while (v107);
      }

      objc_msgSend_setIsPackage_(v74, v120, 1);
      objc_msgSend_setAssetSizes_(v74, v121, v99);
      v60 = v182;
      v98 = v180;
      v90 = v181;
    }

    else
    {
      objc_msgSend_setIsPackage_(v74, v97, 0);
      v146 = MEMORY[0x277CCABB0];
      v149 = objc_msgSend_size(v98, v147, v148);
      v151 = objc_msgSend_numberWithUnsignedLongLong_(v146, v150, v149);
      v204 = v151;
      v153 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v152, &v204, 1);
      objc_msgSend_setAssetSizes_(v74, v154, v153);

      v157 = objc_msgSend_uploadReceipt(v98, v155, v156);

      if (!v157)
      {
LABEL_58:

LABEL_59:
        v161 = objc_msgSend_stateTransitionGroup(self, v82, v83);
        dispatch_group_enter(v161);

        v162 = objc_opt_class();
        v165 = objc_msgSend_repairContainer(self, v163, v164);
        v185[0] = MEMORY[0x277D85DD0];
        v185[1] = 3221225472;
        v185[2] = sub_2251B8C04;
        v185[3] = &unk_278548B60;
        v185[4] = self;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(self, v166, v162, v74, 0, v165, v185);

        goto LABEL_60;
      }

      v99 = objc_msgSend_uploadReceipt(v98, v158, v159);
      v203 = v99;
      v100 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v160, &v203, 1);
    }

    objc_msgSend_setAssetPutReceipts_(v74, v122, v100);

    goto LABEL_58;
  }

  v123 = objc_msgSend_count(v182, v71, v72);
  if (v123 + objc_msgSend_count(v4, v124, v125) || !objc_msgSend_count(v184, v126, v127))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v135 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v167 = v135;
      v170 = objc_msgSend_count(v182, v168, v169);
      v173 = objc_msgSend_count(v4, v171, v172);
      *buf = 134217984;
      v206 = v173 + v170;
      _os_log_error_impl(&dword_22506F000, v167, OS_LOG_TYPE_ERROR, "Wrong amount of repair records to update: %ld", buf, 0xCu);
    }

    v138 = MEMORY[0x277CBC560];
    v139 = *MEMORY[0x277CBBF50];
    v140 = objc_msgSend_count(v182, v136, v137);
    v143 = objc_msgSend_count(v4, v141, v142);
    v74 = objc_msgSend_errorWithDomain_code_format_(v138, v144, v139, 1001, @"Wrong amount of repair records to update: %ld", v143 + v140);
    objc_msgSend_setError_(self, v145, v74);
  }

  else
  {
    v74 = objc_msgSend_anyObject(v184, v128, v129);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v130 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v174 = v130;
      v175 = objc_opt_class();
      v176 = NSStringFromClass(v175);
      v179 = objc_msgSend_ckShortDescription(self, v177, v178);
      *buf = 138544130;
      v206 = v176;
      v207 = 2048;
      selfCopy = self;
      v209 = 2114;
      v210 = v179;
      v211 = 2112;
      v212 = v74;
      _os_log_error_impl(&dword_22506F000, v174, OS_LOG_TYPE_ERROR, "Repair records operation <%{public}@: %p; %{public}@> finished with error %@", buf, 0x2Au);
    }

    v133 = objc_msgSend_anyObject(v184, v131, v132);
    objc_msgSend_setError_(self, v134, v133);
  }

LABEL_60:
}

- (id)repairContainer
{
  v5 = objc_msgSend_uploadRequestConfiguration(self, a2, v2);
  v8 = objc_msgSend_containerIdentifier(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_uploadRequestConfiguration(self, v9, v10);
    v15 = objc_msgSend_applicationBundleIdentifierOverride(v12, v13, v14);

    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDRepairAssetsOperation.m", 441, @"Upload request configuration passed to cloudd should have resolved fields");

LABEL_4:
  v20 = objc_msgSend_uploadRequestConfiguration(self, v16, v17);
  v68 = objc_msgSend_containerIdentifier(v20, v21, v22);

  v25 = objc_msgSend_container(self, v23, v24);
  v26 = objc_alloc(MEMORY[0x277CBC220]);
  v29 = objc_msgSend_containerID(v25, v27, v28);
  v32 = objc_msgSend_environment(v29, v30, v31);
  v67 = objc_msgSend_initWithContainerIdentifier_environment_(v26, v33, v68, v32);

  v36 = objc_msgSend_uploadRequestConfiguration(self, v34, v35);
  v39 = objc_msgSend_applicationBundleIdentifierOverride(v36, v37, v38);

  v40 = [CKDApplicationID alloc];
  v43 = objc_msgSend_applicationBundleID(v25, v41, v42);
  v45 = objc_msgSend_initWithApplicationBundleIdentifier_applicationBundleIdentifierOverrideForContainerAccess_applicationBundleIdentifierOverrideForNetworkAttribution_applicationBundleIdentifierOverrideForPushTopicGeneration_applicationBundleIdentifierOverrideForTCC_(v40, v44, v43, v39, v39, v39, v39);

  v46 = [CKDAppContainerTuple alloc];
  v48 = objc_msgSend_initWithApplicationID_containerID_personaID_(v46, v47, v45, v67, 0);
  v51 = objc_msgSend_processScopedClientProxy(v25, v49, v50);
  v54 = objc_msgSend_logicalDeviceScopedClientProxy(v25, v52, v53);
  v57 = objc_msgSend_entitlements(v25, v55, v56);
  v60 = objc_msgSend_options(v25, v58, v59);
  v63 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v61, v62);
  v65 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v64, v48, v51, v54, v57, v60, v63);

  return v65;
}

- (id)assetOrPackageForMetadata:(id)metadata inRecord:(id)record
{
  metadataCopy = metadata;
  recordCopy = record;
  v9 = objc_msgSend_fieldName(metadataCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v10, v9);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_msgSend_listIndex(metadataCopy, v12, v13);
    if (v14 < 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v11;
        goto LABEL_15;
      }
    }

    else
    {
      v15 = v14;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v15 < objc_msgSend_count(v11, v16, v17))
      {
        v19 = objc_msgSend_objectAtIndex_(v11, v18, v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = 0;
          goto LABEL_11;
        }

        v20 = v19;
LABEL_10:
        v24 = v20;
LABEL_11:

        goto LABEL_15;
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_msgSend_fieldName(metadataCopy, v21, v22);
        v20 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v23, v19);
        goto LABEL_10;
      }
    }
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (void)main
{
  v4 = objc_msgSend_UUIDToAssetOrPackage(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);
  v10 = objc_msgSend_unavailableAssetsAndPackages(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12) + v7;

  if (v13 >= 2)
  {
    v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 1001, @"Updating multiple records currently not supported");
    objc_msgSend_setError_(self, v16, v15);
  }

  objc_msgSend_makeStateTransition_(self, v14, v13 != 1);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setAssetOrPackageRepairedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDRepairAssetsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

@end