@interface CKDUploadAssetsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_didFetchUploadTokensForAssetTokenRequest:(id)request error:(id)error newError:(id *)newError;
- (BOOL)_fetchConfiguration;
- (BOOL)_fetchUploadTokens;
- (BOOL)_planPackageSectionItemsForMMCSItems:(id)items;
- (BOOL)_planSectionsForPackage:(id)package error:(id *)error;
- (BOOL)_prepareForUpload;
- (BOOL)_upload;
- (BOOL)makeStateTransition;
- (CKDUploadAssetsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)CKStatusReportLogGroups;
- (id)_prepareAssetForUpload:(id)upload;
- (id)_preparePackageForUpload:(id)upload;
- (id)_prepareReferenceAssetForUpload:(id)upload;
- (id)_prepareReferencePackageForUpload:(id)upload;
- (void)_collectMetricsFromCompletedItemGroup:(id)group;
- (void)_collectMetricsFromCompletedItemGroupSet:(id)set;
- (void)_collectMetricsFromMMCSOperationMetrics:(id)metrics;
- (void)_didMakeProgressForAsset:(id)asset progress:(double)progress;
- (void)_didMakeProgressForMMCSItem:(id)item;
- (void)_didMakeProgressForMMCSSectionItem:(id)item task:(id)task;
- (void)_didPrepareAsset:(id)asset;
- (void)_didPrepareAssetBatch:(id)batch error:(id)error;
- (void)_didUploadAsset:(id)asset error:(id)error;
- (void)_didUploadMMCSItem:(id)item error:(id)error;
- (void)_didUploadMMCSItems:(id)items error:(id)error;
- (void)_didUploadMMCSSectionItem:(id)item task:(id)task error:(id)error;
- (void)_didUploadMMCSSectionItems:(id)items task:(id)task error:(id)error;
- (void)_didUploadPackageWithTask:(id)task;
- (void)_failAllItemsInAssetBatch:(id)batch error:(id)error;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_registerMMCSItems;
- (void)_removePackageManifests;
- (void)_uploadPackageSection:(id)section task:(id)task completionBlock:(id)block;
- (void)_uploadPackageSectionsWithEnumerator:(id)enumerator task:(id)task completionBlock:(id)block;
- (void)_uploadPackageSectionsWithPendingTasks:(id)tasks uploadingTasks:(id)uploadingTasks completedTasks:(id)completedTasks;
- (void)_uploadPackageSectionsWithTask:(id)task completionBlock:(id)block;
- (void)cancel;
- (void)finishWithError:(id)error;
- (void)main;
@end

@implementation CKDUploadAssetsOperation

- (CKDUploadAssetsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  containerCopy = container;
  v62.receiver = self;
  v62.super_class = CKDUploadAssetsOperation;
  v8 = [(CKDDatabaseOperation *)&v62 initWithOperationInfo:infoCopy container:containerCopy];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = objc_msgSend_QOSClass(v8, v10, v11);
    v13 = dispatch_queue_attr_make_with_qos_class(v9, v12, 0);

    v14 = dispatch_queue_create("com.apple.cloudkit.upload", v13);
    queue = v8->_queue;
    v8->_queue = v14;

    v18 = objc_msgSend_assetsToUpload(infoCopy, v16, v17);
    v20 = objc_msgSend_sortedArrayUsingComparator_(v18, v19, &unk_28385D500);
    assetsToUpload = v8->_assetsToUpload;
    v8->_assetsToUpload = v20;

    v22 = objc_alloc_init(CKDCancelTokenGroup);
    cancelTokens = v8->_cancelTokens;
    v8->_cancelTokens = v22;

    v26 = objc_msgSend_containerID(containerCopy, v24, v25);
    if (objc_msgSend_specialContainerType(v26, v27, v28) == 5)
    {
      v31 = objc_msgSend_group(infoCopy, v29, v30);
      v34 = objc_msgSend_name(v31, v32, v33);
      isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @"Compute State Upload");

      if (isEqualToString)
      {
        v37 = [CKDAssetRequestPlanner alloc];
        v39 = objc_msgSend_initWithAssetTokenRequestSizeLimit_(v37, v38, 0xFFFFFFFFLL);
LABEL_7:
        assetRequestPlanner = v8->_assetRequestPlanner;
        v8->_assetRequestPlanner = v39;

        v43 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v41, v42);
        uploadTasksByPackages = v8->_uploadTasksByPackages;
        v8->_uploadTasksByPackages = v43;

        v47 = objc_msgSend_assetUUIDToExpectedProperties(infoCopy, v45, v46);
        assetUUIDToExpectedProperties = v8->_assetUUIDToExpectedProperties;
        v8->_assetUUIDToExpectedProperties = v47;

        v51 = objc_msgSend_packageUUIDToExpectedProperties(infoCopy, v49, v50);
        packageUUIDToExpectedProperties = v8->_packageUUIDToExpectedProperties;
        v8->_packageUUIDToExpectedProperties = v51;

        v8->_temporary = objc_msgSend_temporary(infoCopy, v53, v54);
        v8->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v55, v56);
        v59 = objc_msgSend_cloneContextsBySignature(infoCopy, v57, v58);
        cloneContextsBySignature = v8->_cloneContextsBySignature;
        v8->_cloneContextsBySignature = v59;

        goto LABEL_8;
      }
    }

    else
    {
    }

    v39 = objc_alloc_init(CKDAssetRequestPlanner);
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (id)CKStatusReportLogGroups
{
  v19.receiver = self;
  v19.super_class = CKDUploadAssetsOperation;
  cKStatusReportLogGroups = [(CKDOperation *)&v19 CKStatusReportLogGroups];
  v6 = objc_msgSend_assetRequestPlanner(self, v4, v5);
  v9 = objc_msgSend_assetRegisterAndPutBatches(v6, v7, v8);
  v11 = objc_msgSend_CKFlatMap_(v9, v10, &unk_28385D460);

  if (objc_msgSend_count(v11, v12, v13))
  {
    if (!cKStatusReportLogGroups)
    {
      cKStatusReportLogGroups = objc_opt_new();
    }

    v16 = objc_msgSend_mutableCopy(v11, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(cKStatusReportLogGroups, v17, v16, @"MMCS Items");
  }

  return cKStatusReportLogGroups;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_msgSend_removeAllCancelTokens(v4, v5, v6);

  v9 = objc_msgSend_state(self, v7, v8);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      objc_msgSend_setState_(self, v10, 2);

      return MEMORY[0x2821F9670](self, sel__fetchConfiguration, v29);
    }

    else
    {
      if (v9 != 2)
      {
        return 1;
      }

      objc_msgSend_hash(self, v10, v11);
      kdebug_trace();
      objc_msgSend_setState_(self, v17, 3);

      return objc_msgSend__prepareForUpload(self, v18, v19);
    }
  }

  else if (v9 == 3)
  {
    objc_msgSend_hash(self, v10, v11);
    kdebug_trace();
    objc_msgSend_hash(self, v21, v22);
    kdebug_trace();
    objc_msgSend_setState_(self, v23, 4);

    return MEMORY[0x2821F9670](self, sel__fetchUploadTokens, v24);
  }

  else
  {
    if (v9 != 4)
    {
      if (v9 == 5)
      {
        objc_msgSend_hash(self, v10, v11);
        kdebug_trace();
        objc_msgSend_setState_(self, v12, 0xFFFFFFFFLL);
        v15 = objc_msgSend_error(self, v13, v14);
        objc_msgSend_finishWithError_(self, v16, v15);
      }

      return 1;
    }

    objc_msgSend_hash(self, v10, v11);
    kdebug_trace();
    objc_msgSend_hash(self, v25, v26);
    kdebug_trace();
    objc_msgSend_setState_(self, v27, 5);

    return MEMORY[0x2821F9670](self, sel__upload, v28);
  }
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 4)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDUploadAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548F80[state - 2];
  }

  return v5;
}

- (void)_didPrepareAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDUploadAssetsOperation.m", 303, @"Expected non-nil asset for %@", self);
  }

  v8 = objc_msgSend_callbackQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251BAB4C;
  block[3] = &unk_278545898;
  block[4] = self;
  v13 = assetCopy;
  v9 = assetCopy;
  dispatch_async(v8, block);
}

- (void)_didMakeProgressForAsset:(id)asset progress:(double)progress
{
  assetCopy = asset;
  if (!assetCopy)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDUploadAssetsOperation.m", 311, @"Expected non-nil asset for %@", self);
  }

  v10 = objc_msgSend_callbackQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251BACDC;
  block[3] = &unk_278545E20;
  block[4] = self;
  v15 = assetCopy;
  progressCopy = progress;
  v11 = assetCopy;
  dispatch_async(v10, block);
}

- (void)_didUploadAsset:(id)asset error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  v11 = errorCopy;
  if (assetCopy)
  {
    if (errorCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDUploadAssetsOperation.m", 319, @"Expected non-nil asset for %@", self);

    if (v11)
    {
      goto LABEL_5;
    }
  }

  if ((objc_msgSend_uploaded(assetCopy, v9, v10) & 1) == 0)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDUploadAssetsOperation.m", 320, @"Expected asset %@ to be marked as uploaded for %@", assetCopy, self);
  }

LABEL_5:
  v12 = objc_msgSend_callbackQueue(self, v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251BAEE0;
  block[3] = &unk_278546990;
  block[4] = self;
  v20 = assetCopy;
  v21 = v11;
  v13 = v11;
  v14 = assetCopy;
  dispatch_async(v12, block);
}

- (BOOL)_planSectionsForPackage:(id)package error:(id *)error
{
  v227 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  selfCopy = self;
  v7 = objc_msgSend_container(self, v5, v6);
  v188 = objc_msgSend_MMCS(v7, v8, v9);

  MaxChunkCountForSection = objc_msgSend_getMaxChunkCountForSection(v188, v10, v11);
  if (!MaxChunkCountForSection)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1000, @"Invalid maxSectionChunkCount value: %lu", 0);
      *error = v40 = 0;
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_79;
  }

  v13 = [CKDMMCSPackageSignatureGenerator alloc];
  v16 = objc_msgSend_boundaryKey(packageCopy, v14, v15);
  v181 = objc_msgSend_initWithBoundaryKey_(v13, v17, v16);

  v18 = [CKDMMCSPackageSignatureGenerator alloc];
  v21 = objc_msgSend_boundaryKey(packageCopy, v19, v20);
  v23 = objc_msgSend_initWithBoundaryKey_(v18, v22, v21);

  v183 = objc_msgSend_itemEnumerator(packageCopy, v24, v25);
  v214 = 0;
  v215 = &v214;
  v216 = 0x3032000000;
  v217 = sub_225073FF0;
  v218 = sub_225073584;
  v219 = objc_msgSend_prepareForSectionPlanning(packageCopy, v26, v27);
  v180 = dispatch_semaphore_create(0);
  if (!v215[5])
  {
    v30 = 0;
    v186 = 0;
    v194 = 0;
    v182 = 0;
    v185 = *MEMORY[0x277CBC120];
    v31 = v23;
    while (1)
    {
      v201 = v31;
      context = objc_autoreleasePoolPush();
      isCancelled = objc_msgSend_isCancelled(selfCopy, v45, v46);
      if (isCancelled)
      {
        v49 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v47, v185, 1, @"Operation was cancelled");
        v195 = 0;
        v50 = v215[5];
        v215[5] = v49;
LABEL_69:

        goto LABEL_70;
      }

      v203 = objc_msgSend_nextObjectBatch(v183, v47, v48);

      if (v203)
      {
        break;
      }

      v30 = 0;
      v195 = 0;
LABEL_70:
      v31 = v201;
      objc_autoreleasePoolPop(context);
      v158 = v215[5];
      if (!v195)
      {
        if (!v158 && v182)
        {
          v161 = objc_msgSend_dataByFinishingSignature(v201, v28, v29);
          v164 = objc_msgSend_dataByFinishingVerificationKey(v201, v162, v163);
          v165 = objc_alloc(MEMORY[0x277CBC548]);
          v167 = objc_msgSend_initWithIndex_signature_verificationKey_(v165, v166, v186, v161, v164);
          v169 = objc_msgSend_addSection_(packageCopy, v168, v167);
          v170 = v215[5];
          v215[5] = v169;

          v173 = objc_msgSend_signature(v167, v171, v172);
          objc_msgSend_updateWithData_(v181, v174, v173);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v175 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v221 = v167;
            v222 = 2048;
            v223 = v182;
            v224 = 2048;
            v225 = v194;
            _os_log_debug_impl(&dword_22506F000, v175, OS_LOG_TYPE_DEBUG, "Added last section %@ with %lu items and %lu chunks", buf, 0x20u);
          }

          v31 = v201;
        }

        goto LABEL_4;
      }

      if (v158)
      {
        goto LABEL_4;
      }
    }

    v211[0] = MEMORY[0x277D85DD0];
    v211[1] = 3221225472;
    v211[2] = sub_2251BBE00;
    v211[3] = &unk_278548E00;
    v189 = packageCopy;
    v212 = v189;
    v213 = selfCopy;
    v187 = objc_msgSend_CKMap_(v203, v51, v211);
    v52 = [CKDMMCSItemGroupSet alloc];
    v184 = objc_msgSend_initWithItems_(v52, v53, v187);
    if (objc_msgSend_useMMCSEncryptionV2(v189, v54, v55))
    {
      v56 = 66;
    }

    else
    {
      v56 = 2;
    }

    v208[0] = MEMORY[0x277D85DD0];
    v208[1] = 3221225472;
    v208[2] = sub_2251BBF50;
    v208[3] = &unk_278548E28;
    v210 = &v214;
    v57 = v180;
    v209 = v57;
    v190 = objc_msgSend_registerItemGroupSet_operation_options_completionHandler_(v188, v58, v184, selfCopy, v56, v208);
    v61 = objc_msgSend_cancelTokens(selfCopy, v59, v60);
    objc_msgSend_addCancelToken_withOperation_(v61, v62, v190, selfCopy);

    dispatch_semaphore_wait(v57, 0xFFFFFFFFFFFFFFFFLL);
    v65 = objc_msgSend_cancelTokens(selfCopy, v63, v64);
    objc_msgSend_removeCancelToken_(v65, v66, v190);

    v67 = v215[5];
    v195 = v67 == 0;
    if (v67)
    {
LABEL_68:

      v50 = v212;
      v30 = v203;
      goto LABEL_69;
    }

    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    obj = v187;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v204, v226, 16);
    if (!v69)
    {
      goto LABEL_67;
    }

    v199 = *v205;
    v200 = 0;
LABEL_27:
    v70 = 0;
    v198 = v69;
    while (1)
    {
      if (*v205 != v199)
      {
        objc_enumerationMutation(obj);
      }

      v71 = *(*(&v204 + 1) + 8 * v70);
      v72 = objc_autoreleasePoolPush();
      v75 = objc_msgSend_error(v71, v73, v74);
      v76 = v215[5];
      v215[5] = v75;

      if (!v215[5])
      {
        break;
      }

      v79 = 0;
LABEL_64:
      objc_autoreleasePoolPop(v72);
      if (!v79)
      {
        goto LABEL_67;
      }

      if (v198 == ++v70)
      {
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v156, &v204, v226, 16);
        if (!v69)
        {
LABEL_67:

          goto LABEL_68;
        }

        goto LABEL_27;
      }
    }

    v80 = objc_msgSend_signature(v71, v77, v78);
    v83 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v81, v82);
    isEqualToData = objc_msgSend_isEqualToData_(v80, v84, v83);

    if ((isEqualToData & 1) != 0 || !objc_msgSend_chunkCount(v71, v86, v87) || !objc_msgSend_fileSize(v71, v86, v87))
    {
      v88 = MEMORY[0x277CBC6A8];
      v89 = objc_msgSend_signature(v71, v86, v87);
      LODWORD(v88) = objc_msgSend_isValidV2Signature_(v88, v90, v89);

      if (((v88 | isEqualToData) & 1) == 0)
      {
        v177 = 404;
        v178 = "isZeroFileSignature && Expected zeroSizeFileSignature";
LABEL_92:
        __assert_rtn("[CKDUploadAssetsOperation _planSectionsForPackage:error:]", "CKDUploadAssetsOperation.m", v177, v178);
      }

      if (objc_msgSend_chunkCount(v71, v91, v92))
      {
        v177 = 406;
        v178 = "MMCSItem.chunkCount == 0 && Expected MMCSItem.chunkCount == 0";
        goto LABEL_92;
      }

      if (objc_msgSend_fileSize(v71, v93, v94))
      {
        v177 = 407;
        v178 = "MMCSItem.fileSize == 0 && Expected MMCSItem.size == 0";
        goto LABEL_92;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v95 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v157 = objc_msgSend_itemID(v71, v96, v97);
        *buf = 134217984;
        v221 = v157;
        _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %llu", buf, 0xCu);
      }
    }

    if (v200 >= objc_msgSend_count(v203, v86, v87))
    {
      v177 = 411;
      v178 = "i < packageItems.count";
      goto LABEL_92;
    }

    v101 = objc_msgSend_objectAtIndexedSubscript_(v203, v98, v200);
    if (MaxChunkCountForSection < v194)
    {
      v102 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, v185, 1000, @"Invalid sectionChunkCount value: %lu", v194);
      v103 = v215[5];
      v215[5] = v102;

LABEL_49:
      v79 = 0;
LABEL_63:

      ++v200;
      goto LABEL_64;
    }

    if (MaxChunkCountForSection < objc_msgSend_chunkCount(v71, v99, v100) + v194)
    {
      v106 = objc_msgSend_dataByFinishingSignature(v201, v104, v105);
      v109 = objc_msgSend_dataByFinishingVerificationKey(v201, v107, v108);
      v110 = objc_alloc(MEMORY[0x277CBC548]);
      v112 = objc_msgSend_initWithIndex_signature_verificationKey_(v110, v111, v186, v106, v109);
      v114 = objc_msgSend_addSection_(v189, v113, v112);
      v115 = v215[5];
      v215[5] = v114;

      ++v186;
      if (v215[5])
      {

        goto LABEL_49;
      }

      v118 = objc_msgSend_signature(v112, v116, v117);
      objc_msgSend_updateWithData_(v181, v119, v118);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v120 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v221 = v112;
        v222 = 2048;
        v223 = v182;
        v224 = 2048;
        v225 = v194;
        _os_log_debug_impl(&dword_22506F000, v120, OS_LOG_TYPE_DEBUG, "Added section %@ with %lu items and %lu chunks", buf, 0x20u);
      }

      v121 = [CKDMMCSPackageSignatureGenerator alloc];
      v124 = objc_msgSend_boundaryKey(v189, v122, v123);
      v126 = objc_msgSend_initWithBoundaryKey_(v121, v125, v124);

      v182 = 0;
      v194 = 0;
      v201 = v126;
    }

    v127 = objc_msgSend_assetZoneKey(v71, v104, v105);
    v130 = objc_msgSend_useMMCSEncryptionV2(v127, v128, v129);
    v133 = objc_msgSend_BOOLValue(v130, v131, v132);

    if (v133)
    {
      v136 = objc_msgSend_paddedFileSize(v71, v134, v135);
    }

    else
    {
      v136 = 0;
    }

    v137 = objc_msgSend_chunkCount(v71, v134, v135);
    v140 = objc_msgSend_signature(v71, v138, v139);
    objc_msgSend_updateWithData_(v201, v141, v140);

    v144 = objc_msgSend_signature(v71, v142, v143);
    v147 = objc_msgSend_fileSize(v71, v145, v146);
    v150 = objc_msgSend_itemID(v71, v148, v149);
    v152 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v151, v186);
    v154 = objc_msgSend_updateItem_withSignature_size_paddedSize_itemID_sectionIndex_(v189, v153, v101, v144, v147, v136, v150, v152);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v194 += v137;
    ++v182;
    v155 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v221 = v71;
      v222 = 2048;
      v223 = v186;
      _os_log_debug_impl(&dword_22506F000, v155, OS_LOG_TYPE_DEBUG, "Added item %@ to section %lu", buf, 0x16u);
    }

    v79 = 1;
    goto LABEL_63;
  }

  v30 = 0;
  LOBYTE(isCancelled) = 0;
  v31 = v23;
LABEL_4:
  v32 = objc_msgSend_dataByFinishingSignature(v181, v28, v29);
  if (objc_msgSend_useMMCSEncryptionV2(packageCopy, v33, v34))
  {
    v37 = objc_msgSend_dataByFinishingVerificationKey(v181, v35, v36);
    v39 = objc_msgSend_setSignature_verificationKey_(packageCopy, v38, v32, v37);
  }

  else
  {
    v37 = 0;
    v39 = objc_msgSend_setSignature_verificationKey_(packageCopy, v35, v32, 0);
  }

  v41 = v39;
  v42 = v31;
  v43 = v215[5];
  v40 = v43 == 0;
  if (v43)
  {
    if ((isCancelled & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v44 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v176 = v215[5];
        *buf = 138412546;
        v221 = packageCopy;
        v222 = 2112;
        v223 = v176;
        _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Failed to create sections for package %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      *error = v215[5];
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v159 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v221 = packageCopy;
      _os_log_debug_impl(&dword_22506F000, v159, OS_LOG_TYPE_DEBUG, "Created sections for package %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v214, 8);
LABEL_79:

  return v40;
}

- (void)_didPrepareAssetBatch:(id)batch error:(id)error
{
  v198 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  errorCopy = error;
  v181 = errorCopy;
  v182 = batchCopy;
  selfCopy = self;
  if (errorCopy)
  {
    v12 = errorCopy;
    goto LABEL_30;
  }

  v12 = objc_msgSend_firstMMCSItemError(batchCopy, v8, v9);
  if (!v12)
  {
    v13 = objc_msgSend_packageUUIDToExpectedProperties(self, v10, v11);
    if (v13 && (v16 = v13, v17 = objc_msgSend_isPackageSectionBatch(batchCopy, v14, v15), v16, v17))
    {
      v18 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v14, v15);
      v21 = objc_msgSend_count(v18, v19, v20);

      if (v21)
      {
        v22 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v10, v11);
        v25 = objc_msgSend_firstObject(v22, v23, v24);
        v28 = objc_msgSend_package(v25, v26, v27);

        v31 = objc_msgSend_packageUUIDToExpectedProperties(self, v29, v30);
        v34 = objc_msgSend_UUID(v28, v32, v33);
        v36 = objc_msgSend_objectForKey_(v31, v35, v34);

        if (v36)
        {
          v39 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v37, v38);
          v42 = objc_msgSend_count(v39, v40, v41);
          v45 = objc_msgSend_count(v36, v43, v44);

          if (v42 != v45)
          {
            v113 = MEMORY[0x277CBC560];
            v114 = *MEMORY[0x277CBC120];
            v115 = objc_msgSend_count(v36, v46, v47);
            v57 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v116, v117);
            v120 = objc_msgSend_count(v57, v118, v119);
            v180 = v115;
            self = selfCopy;
            v12 = objc_msgSend_errorWithDomain_code_format_(v113, v121, v114, 3012, @"Number of expected file signatures did not match number of assets in package %@ (%lu versus %lu)", v28, v180, v120);
LABEL_28:

            goto LABEL_29;
          }

          v48 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v46, v47);
          v51 = objc_msgSend_count(v48, v49, v50);

          if (v51)
          {
            v54 = 0;
            while (1)
            {
              v55 = objc_msgSend_allMMCSAndSectionItems(batchCopy, v52, v53);
              v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v54);

              v59 = objc_msgSend_objectAtIndexedSubscript_(v36, v58, v54);
              v62 = objc_msgSend_fileSignature(v59, v60, v61);

              if (v62)
              {
                v65 = objc_msgSend_signature(v57, v63, v64);
                isEqualToData = objc_msgSend_isEqualToData_(v62, v66, v65);

                if ((isEqualToData & 1) == 0)
                {
                  break;
                }
              }

              ++v54;
              batchCopy = v182;
              v71 = objc_msgSend_allMMCSAndSectionItems(v182, v69, v70);
              v74 = objc_msgSend_count(v71, v72, v73);

              if (v54 >= v74)
              {
                v12 = 0;
                self = selfCopy;
                goto LABEL_29;
              }
            }

            v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v68, *MEMORY[0x277CBC120], 3012, @"Did not find expected file signature for item %@ in package %@", v57, v28);

            batchCopy = v182;
            self = selfCopy;
            goto LABEL_28;
          }
        }

        v12 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v75 = objc_msgSend_assetUUIDToExpectedProperties(self, v14, v15);
      if (v75)
      {
        v76 = v75;
        isPackageSectionBatch = objc_msgSend_isPackageSectionBatch(batchCopy, v10, v11);

        if ((isPackageSectionBatch & 1) == 0)
        {
          v78 = objc_msgSend_allMMCSItems(batchCopy, v10, v11);
          v81 = objc_msgSend_count(v78, v79, v80);

          if (v81)
          {
            v82 = 0;
            while (1)
            {
              v83 = objc_msgSend_allMMCSItems(batchCopy, v10, v11);
              v85 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, v82);

              v88 = objc_msgSend_asset(v85, v86, v87);
              if (v88)
              {
                v91 = v88;
                v92 = objc_msgSend_assetUUIDToExpectedProperties(self, v89, v90);
                v95 = objc_msgSend_UUID(v91, v93, v94);
                v97 = objc_msgSend_objectForKey_(v92, v96, v95);
                v100 = objc_msgSend_fileSignature(v97, v98, v99);

                if (v100)
                {
                  v103 = objc_msgSend_signature(v85, v101, v102);
                  v105 = objc_msgSend_isEqualToData_(v100, v104, v103);

                  if (!v105)
                  {
                    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v106, *MEMORY[0x277CBC120], 3012, @"Did not find expected file signature for asset %@", v91);

                    batchCopy = v182;
                    self = selfCopy;
                    goto LABEL_30;
                  }
                }

                batchCopy = v182;
                self = selfCopy;
              }

              ++v82;
              v109 = objc_msgSend_allMMCSItems(batchCopy, v107, v108);
              v112 = objc_msgSend_count(v109, v110, v111);

              v12 = 0;
              if (v82 >= v112)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }
    }

    v12 = 0;
  }

LABEL_30:
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v122 = objc_msgSend_allMMCSItems(batchCopy, v10, v11);
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, &v185, v197, 16);
  if (!v124)
  {
    goto LABEL_57;
  }

  v127 = v124;
  v128 = *v186;
  v184 = *MEMORY[0x277CBC120];
  do
  {
    v129 = 0;
    do
    {
      if (*v186 != v128)
      {
        objc_enumerationMutation(v122);
      }

      v130 = *(*(&v185 + 1) + 8 * v129);
      v131 = objc_msgSend_package(v130, v125, v126);
      v136 = objc_msgSend_asset(v130, v132, v133);
      if (v12)
      {
        if (v131)
        {
          v137 = objc_msgSend_uploadTasksByPackages(self, v134, v135);
          objc_msgSend_removeObjectForKey_(v137, v138, v131);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v139 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v153 = v139;
            v156 = objc_msgSend_operationID(self, v154, v155);
            *buf = 138413058;
            v190 = v130;
            v191 = 2112;
            v192 = v131;
            v193 = 2114;
            v194 = v156;
            v195 = 2112;
            v196 = v12;
            _os_log_error_impl(&dword_22506F000, v153, OS_LOG_TYPE_ERROR, "Failed to register MMCS item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);

            self = selfCopy;
          }

LABEL_41:
          objc_msgSend__didUploadAsset_error_(self, v140, v131, v12);
          goto LABEL_50;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v143 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v157 = v143;
          v160 = objc_msgSend_operationID(selfCopy, v158, v159);
          *buf = 138412802;
          v190 = v130;
          v191 = 2114;
          v192 = v160;
          v193 = 2112;
          v194 = v12;
          _os_log_error_impl(&dword_22506F000, v157, OS_LOG_TYPE_ERROR, "Failed to register MMCS item %@ for operation %{public}@: %@", buf, 0x20u);

          self = selfCopy;
        }

        objc_msgSend__didUploadAsset_error_(self, v144, v136, v12);
      }

      else
      {
        if (v131 && !objc_msgSend_fileSize(v130, v134, v135))
        {
          v145 = objc_msgSend_uploadTasksByPackages(self, v141, v142);
          objc_msgSend_removeObjectForKey_(v145, v146, v131);

          v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v147, v184, 1000, @"Invalid size for the manifest for package %@", v131);
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v148 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v149 = v148;
            v152 = objc_msgSend_operationID(selfCopy, v150, v151);
            *buf = 138413058;
            v190 = v130;
            v191 = 2112;
            v192 = v131;
            v193 = 2114;
            v194 = v152;
            v195 = 2112;
            v196 = v12;
            _os_log_error_impl(&dword_22506F000, v149, OS_LOG_TYPE_ERROR, "Invalid package manifest size for MMCS item %@, package %@ and operation %{public}@: %@", buf, 0x2Au);

            self = selfCopy;
          }

          goto LABEL_41;
        }

        v12 = 0;
      }

LABEL_50:

      ++v129;
    }

    while (v127 != v129);
    v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v125, &v185, v197, 16);
    v127 = v161;
  }

  while (v161);
LABEL_57:

  if (v12)
  {
    objc_msgSend_failBatch_(self->_assetRequestPlanner, v162, v182);
  }

  v164 = objc_msgSend_authPutRequest(v182, v162, v163);
  v167 = objc_msgSend_length(v164, v165, v166);
  v170 = objc_msgSend_assetTokenRequestSizeLimit(self->_assetRequestPlanner, v168, v169);

  if (v170 < v167)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v171 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v173 = v171;
      v176 = objc_msgSend_authPutRequest(v182, v174, v175);
      v179 = objc_msgSend_length(v176, v177, v178);
      *buf = 138412546;
      v190 = v182;
      v191 = 2048;
      v192 = v179;
      _os_log_error_impl(&dword_22506F000, v173, OS_LOG_TYPE_ERROR, "Ignoring preAuthPutResponse for batch %@ : too big at %lu bytes", buf, 0x16u);
    }

    objc_msgSend_setAuthPutRequest_(v182, v172, 0);
  }
}

- (BOOL)_fetchConfiguration
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_container(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251BC9E0;
  v10[3] = &unk_278548770;
  v10[4] = self;
  objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v7, v8, self, v10);

  return 1;
}

- (id)_prepareAssetForUpload:(id)upload
{
  v48 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  v7 = objc_msgSend_fileURL(uploadCopy, v5, v6);
  v12 = objc_msgSend_fileHandle(uploadCopy, v8, v9);
  if (!(v7 | v12) && (objc_msgSend_shouldReadAssetContentUsingClientProxy(uploadCopy, v10, v11) & 1) == 0)
  {
    v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1017, @"nil fileURL property");
    objc_msgSend__didUploadAsset_error_(self, v30, uploadCopy, v28);
    v29 = 0;
    goto LABEL_20;
  }

  v14 = [CKDMMCSItem alloc];
  v17 = objc_msgSend_temporary(self, v15, v16);
  v19 = objc_msgSend_initWithAsset_temporary_(v14, v18, uploadCopy, v17);
  v22 = objc_msgSend_UUID(uploadCopy, v20, v21);
  objc_msgSend_setTrackingUUID_(v19, v23, v22);

  v45 = 0;
  v25 = objc_msgSend_getFileSizeWithOperation_error_(v19, v24, self, &v45);
  v28 = v45;
  if (!v25)
  {
    objc_msgSend__didUploadAsset_error_(self, v26, uploadCopy, v28);
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  if (!objc_msgSend_unsignedLongLongValue(v25, v26, v27))
  {
    v31 = *MEMORY[0x277CBC878];
    if (v7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v31);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v35 = v32;
        v38 = objc_msgSend_path(v7, v36, v37);
        *buf = 138543362;
        v47 = v38;
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Skipped uploading empty asset file at %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v31);
      }

      v39 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v12;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Skipped uploading empty asset file with filehandle %@", buf, 0xCu);
      }
    }

    v40 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v33, v34);
    objc_msgSend_setSignature_(uploadCopy, v41, v40);

    objc_msgSend_setUploaded_(uploadCopy, v42, 1);
    objc_msgSend__didUploadAsset_error_(self, v43, uploadCopy, 0);
    goto LABEL_18;
  }

  v29 = v19;
LABEL_19:

LABEL_20:

  return v29;
}

- (id)_prepareReferenceAssetForUpload:(id)upload
{
  uploadCopy = upload;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_MMCS(v7, v8, v9);

  if (objc_msgSend_size(uploadCopy, v11, v12) || (objc_msgSend_signature(uploadCopy, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_zeroSizeFileSignature(CKDMMCS, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v15, v19, v18), v18, v15, !isEqualToData))
  {
    v24 = objc_msgSend_registeredMMCSItemForRereferencedAsset_(v10, v13, uploadCopy);
    v27 = v24;
    if (v24)
    {
      objc_msgSend_error(v24, v25, v26);
    }

    else
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1017, @"failed to create MMCS item for re-referenced asset");
    }
    v30 = ;
    if (v30)
    {
      objc_msgSend__didUploadAsset_error_(self, v28, uploadCopy, v30);
LABEL_18:

      goto LABEL_19;
    }

    v31 = objc_msgSend_databaseScope(self, v28, v29);
    objc_msgSend_setupForReReferenceWithAsset_destinationDatabaseScope_(v27, v32, uploadCopy, v31);
    v35 = objc_msgSend_assetZoneKey(v27, v33, v34);
    if (objc_msgSend_isCrossOwner(v35, v36, v37))
    {
      cloneContextsBySignature = self->_cloneContextsBySignature;
      v41 = objc_msgSend_signature(v27, v38, v39);
      v43 = objc_msgSend_objectForKey_(cloneContextsBySignature, v42, v41);

      if (!v43)
      {
        v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 1017, @"no clone context for asset clone");
        objc_msgSend__didUploadAsset_error_(self, v49, uploadCopy, v30);
        goto LABEL_17;
      }

      objc_msgSend_setCloneContext_(v35, v44, v43);
    }

    v45 = objc_msgSend_UUID(uploadCopy, v38, v39);
    objc_msgSend_setTrackingUUID_(v27, v46, v45);

    objc_msgSend_addMMCSItem_(self->_assetRequestPlanner, v47, v27);
    v30 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v50 = 0;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Skipped rereference of empty asset", v50, 2u);
  }

  objc_msgSend_setUploaded_(uploadCopy, v22, 1);
  objc_msgSend__didUploadAsset_error_(self, v23, uploadCopy, 0);
LABEL_19:

  return 0;
}

- (id)_preparePackageForUpload:(id)upload
{
  v162 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  v7 = objc_msgSend_container(self, v5, v6);
  v155 = 0;
  v9 = objc_msgSend__planSectionsForPackage_error_(self, v8, uploadCopy, &v155);
  v12 = v155;
  if ((v9 & 1) == 0)
  {
    objc_msgSend__didUploadAsset_error_(self, v10, uploadCopy, v12);
    v62 = 0;
    goto LABEL_42;
  }

  v13 = objc_msgSend_directoryContext(v7, v10, v11);
  v16 = objc_msgSend_temporaryDirectory(v13, v14, v15);
  v17 = CKCreateGUID();
  v19 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v16, v18, v17, 0);

  v20 = [CKDMMCSItem alloc];
  v22 = objc_msgSend_initWithPackage_temporary_(v20, v21, uploadCopy, 1);
  objc_msgSend_setManifestItem_(uploadCopy, v23, v22);
  v26 = objc_msgSend_UUID(uploadCopy, v24, v25);
  objc_msgSend_setTrackingUUID_(v22, v27, v26);

  objc_msgSend_setFileURL_(v22, v28, v19);
  objc_msgSend_setShouldReadRawEncryptedData_(v22, v29, 0);
  objc_msgSend_setIsPackageManifest_(v22, v30, 1);
  if (objc_msgSend_useEncryption(self, v31, v32))
  {
    v151 = v7;
    v152 = v19;
    v35 = objc_msgSend_packageUUIDToExpectedProperties(self, v33, v34);
    v38 = objc_msgSend_UUID(uploadCopy, v36, v37);
    v40 = objc_msgSend_objectForKeyedSubscript_(v35, v39, v38);
    v43 = objc_msgSend_count(v40, v41, v42);
    if (v43 == objc_msgSend_sectionCount(uploadCopy, v44, v45) + 1)
    {
      v147 = objc_msgSend_packageUUIDToExpectedProperties(self, v46, v47);
      objc_msgSend_UUID(uploadCopy, v48, v49);
      v50 = v149 = v35;
      v52 = objc_msgSend_objectForKeyedSubscript_(v147, v51, v50);
      objc_msgSend_firstObject(v52, v53, v54);
      v55 = v12;
      v57 = v56 = v22;
      v60 = objc_msgSend_assetKey(v57, v58, v59);

      v22 = v56;
      v12 = v55;

      v61 = v60;
      v35 = v149;
    }

    else
    {
      v61 = 0;
    }

    v68 = objc_msgSend_useMMCSEncryptionV2(uploadCopy, v66, v67);
    if (v61)
    {
      objc_msgSend_setAssetKey_(v22, v69, v61);
      v72 = 0;
    }

    else
    {
      v154 = 0;
      v74 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v69, v68, &v154);
      v72 = v154;
      objc_msgSend_setAssetKey_(v22, v75, v74);
    }

    v19 = v152;
    v76 = objc_msgSend_assetKey(v22, v70, v71);

    if (v76 && !v72)
    {
      v79 = objc_msgSend_packageUUIDToExpectedProperties(self, v77, v78);
      v82 = objc_msgSend_UUID(uploadCopy, v80, v81);
      v84 = objc_msgSend_objectForKeyedSubscript_(v79, v83, v82);
      v87 = objc_msgSend_count(v84, v85, v86);
      if (v87 == objc_msgSend_sectionCount(uploadCopy, v88, v89) + 1)
      {
        v146 = objc_msgSend_packageUUIDToExpectedProperties(self, v90, v91);
        objc_msgSend_UUID(uploadCopy, v92, v93);
        v94 = v150 = v22;
        objc_msgSend_objectForKeyedSubscript_(v146, v95, v94);
        v96 = v148 = v61;
        v99 = objc_msgSend_firstObject(v96, v97, v98);
        v102 = objc_msgSend_referenceSignature(v99, v100, v101);

        v61 = v148;
        v22 = v150;
      }

      else
      {
        v102 = 0;
      }

      if (v102)
      {
        objc_msgSend_setReferenceSignature_(v22, v103, v102);
      }

      else
      {
        v105 = objc_msgSend_assetKey(v22, v103, v104);
        v107 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v106, v105);
        objc_msgSend_setReferenceSignature_(v22, v108, v107);
      }

      v7 = v151;
      v19 = v152;

      goto LABEL_26;
    }

    objc_msgSend__didUploadAsset_error_(self, v77, uploadCopy, v12);

    v62 = 0;
    v7 = v151;
  }

  else
  {
    if (!objc_msgSend_useClearAssetEncryption(self, v33, v34))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v73 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v73, OS_LOG_TYPE_DEBUG, "skipping asset keys on manifest item because encryption is disabled", buf, 2u);
LABEL_26:
      if (*MEMORY[0x277CBC880] != -1)
      {
        v109 = v22;
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        goto LABEL_28;
      }

LABEL_27:
      v109 = v22;
LABEL_28:
      v110 = MEMORY[0x277CBC830];
      v111 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v134 = v111;
        v137 = objc_msgSend_operationID(self, v135, v136);
        *buf = 138412546;
        v157 = uploadCopy;
        v158 = 2114;
        v159 = v137;
        _os_log_debug_impl(&dword_22506F000, v134, OS_LOG_TYPE_DEBUG, "Creating manifest for package %@ and operation %{public}@", buf, 0x16u);
      }

      v114 = objc_msgSend_path(v19, v112, v113);
      v153 = v12;
      v116 = objc_msgSend_writePackage_toFile_error_(CKDPackageManifest, v115, uploadCopy, v114, &v153);
      v117 = v153;

      v118 = *MEMORY[0x277CBC878];
      if (v116)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v118);
        }

        v119 = *v110;
        if (os_log_type_enabled(*v110, OS_LOG_TYPE_DEBUG))
        {
          v138 = v119;
          v141 = objc_msgSend_operationID(self, v139, v140);
          *buf = 138412802;
          v157 = uploadCopy;
          v158 = 2114;
          v159 = v141;
          v160 = 2114;
          v161 = v19;
          _os_log_debug_impl(&dword_22506F000, v138, OS_LOG_TYPE_DEBUG, "Wrote the package manifest for package %@ and operation %{public}@: %{public}@", buf, 0x20u);
        }

        v120 = [CKDPackageUploadTask alloc];
        v123 = objc_msgSend_uploadProgressBlock(self, v121, v122);
        v125 = objc_msgSend_initWithPackage_trackProgress_(v120, v124, uploadCopy, v123 != 0);

        v22 = v109;
        objc_msgSend_setMMCSManifestItem_(v125, v126, v109);
        v129 = objc_msgSend_uploadTasksByPackages(self, v127, v128);
        objc_msgSend_setObject_forKey_(v129, v130, v125, uploadCopy);

        v62 = v109;
        v12 = v117;
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v118);
        }

        v131 = *v110;
        if (os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
        {
          v142 = v131;
          v145 = objc_msgSend_operationID(self, v143, v144);
          *buf = 138412802;
          v157 = uploadCopy;
          v158 = 2114;
          v159 = v145;
          v160 = 2112;
          v161 = v117;
          _os_log_error_impl(&dword_22506F000, v142, OS_LOG_TYPE_ERROR, "Failed to create the manifest for package %@ and operation %{public}@: %@", buf, 0x20u);
        }

        objc_msgSend__didUploadAsset_error_(self, v132, uploadCopy, v117);
        v62 = 0;
        v12 = v117;
        v22 = v109;
      }

      goto LABEL_41;
    }

    v64 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], 1000, @"clear asset key not supported for package manifests");

    objc_msgSend__didUploadAsset_error_(self, v65, uploadCopy, v64);
    v62 = 0;
    v12 = v64;
  }

LABEL_41:

LABEL_42:

  return v62;
}

- (id)_prepareReferencePackageForUpload:(id)upload
{
  v4 = objc_msgSend_assets(upload, a2, upload);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251BD8C8;
  v7[3] = &unk_278548E50;
  v7[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, v7);

  return 0;
}

- (BOOL)_planPackageSectionItemsForMMCSItems:(id)items
{
  v176 = *MEMORY[0x277D85DE8];
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  itemsCopy = items;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v5, &v167, v175, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v168;
    v11 = &OBJC_IVAR___CKDDeviceCapabilityUsageSQLEntry__IDString;
    v12 = MEMORY[0x277CBC830];
    *&v8 = 138412546;
    v149 = v8;
    selfCopy = self;
    v152 = itemsCopy;
    v150 = *v168;
    while (2)
    {
      v13 = 0;
      v151 = v9;
      do
      {
        if (*v168 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v14 = *(*(&v167 + 1) + 8 * v13);
        v160 = v11[145];
        objc_msgSend_addMMCSItem_(*(&self->super.super.super.super.isa + v160), v7, v14, v149);
        v17 = objc_msgSend_package(v14, v15, v16);
        v20 = v17;
        if (v17)
        {
          v153 = v13;
          v21 = objc_msgSend_sectionCount(v17, v18, v19);
          v22 = objc_alloc(MEMORY[0x277CBEB18]);
          v24 = objc_msgSend_initWithCapacity_(v22, v23, v21);
          v27 = v24;
          if (v21)
          {
            v28 = 0;
            v162 = v21 + 1;
            v157 = v21;
            v158 = v20;
            v154 = v24;
            while (1)
            {
              v166 = 0;
              v29 = objc_msgSend_sectionAtIndex_error_(v20, v25, v28, &v166);
              v30 = v166;
              if (v30)
              {
                break;
              }

              v31 = [CKDMMCSItem alloc];
              v33 = objc_msgSend_initWithPackage_(v31, v32, v20);
              v36 = objc_msgSend_UUID(v20, v34, v35);
              objc_msgSend_setTrackingUUID_(v33, v37, v36);

              v40 = objc_msgSend_signature(v29, v38, v39);
              objc_msgSend_setSignature_(v33, v41, v40);

              v165 = 0;
              v43 = objc_msgSend_size_(v29, v42, &v165);
              v44 = v165;
              objc_msgSend_setFileSize_(v33, v45, v43);
              if (v44)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                itemsCopy = v152;
                v140 = *v12;
                if (!os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                *buf = 138412290;
                v172 = v44;
                v141 = "Error fetching package size: %@";
LABEL_60:
                _os_log_error_impl(&dword_22506F000, v140, OS_LOG_TYPE_ERROR, v141, buf, 0xCu);
LABEL_71:

                goto LABEL_72;
              }

              if (objc_msgSend_useMMCSEncryptionV2(v20, v46, v47))
              {
                v164 = 0;
                v50 = objc_msgSend_paddedSize_(v29, v48, &v164);
                v44 = v164;
                objc_msgSend_setPaddedFileSize_(v33, v51, v50);
                if (v44)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  itemsCopy = v152;
                  v140 = *v12;
                  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v172 = v44;
                    v141 = "Error fetching package paddedSize: %@";
                    goto LABEL_60;
                  }

                  goto LABEL_71;
                }
              }

              else
              {
                v54 = objc_msgSend_fileSize(v33, v48, v49);
                objc_msgSend_setPaddedFileSize_(v33, v55, v54);
              }

              v56 = objc_msgSend_verificationKey(v29, v52, v53);
              objc_msgSend_setVerificationKey_(v33, v57, v56);

              objc_msgSend_addObject_(v27, v58, v33);
              if (objc_msgSend_useEncryption(self, v59, v60))
              {
                v161 = v29;
                v63 = objc_msgSend_packageUUIDToExpectedProperties(self, v61, v62);
                v66 = objc_msgSend_UUID(v20, v64, v65);
                v68 = objc_msgSend_objectForKeyedSubscript_(v63, v67, v66);
                if (objc_msgSend_count(v68, v69, v70) == v162)
                {
                  v155 = objc_msgSend_packageUUIDToExpectedProperties(self, v71, v72);
                  v75 = objc_msgSend_UUID(v20, v73, v74);
                  v77 = objc_msgSend_objectForKeyedSubscript_(v155, v76, v75);
                  v79 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, v28 + 1);
                  objc_msgSend_assetKey(v79, v80, v81);
                  v83 = v82 = v27;

                  v20 = v158;
                  v84 = v83;
                  v27 = v82;

                  self = selfCopy;
                }

                else
                {
                  v84 = 0;
                }

                v90 = objc_msgSend_useMMCSEncryptionV2(v20, v88, v89);
                if (v84)
                {
                  objc_msgSend_setAssetKey_(v33, v91, v84);
                  v94 = 0;
                }

                else
                {
                  v163 = 0;
                  v95 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v91, v90, &v163);
                  v94 = v163;
                  objc_msgSend_setAssetKey_(v33, v96, v95);
                }

                v97 = objc_msgSend_assetKey(v33, v92, v93);

                if (!v97 || v94)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  itemsCopy = v152;
                  v143 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                  {
                    v145 = v143;
                    v148 = objc_msgSend_trackingUUID(v33, v146, v147);
                    *buf = 138543618;
                    v172 = v148;
                    v173 = 2112;
                    v174 = v94;
                    _os_log_error_impl(&dword_22506F000, v145, OS_LOG_TYPE_ERROR, "error creating asset key for manifest item %{public}@: %@", buf, 0x16u);
                  }

                  v44 = 0;
                  v29 = v161;
                  goto LABEL_71;
                }

                v100 = objc_msgSend_packageUUIDToExpectedProperties(self, v98, v99);
                v103 = objc_msgSend_UUID(v20, v101, v102);
                objc_msgSend_objectForKeyedSubscript_(v100, v104, v103);
                v106 = v105 = self;
                if (objc_msgSend_count(v106, v107, v108) == v162)
                {
                  v111 = objc_msgSend_packageUUIDToExpectedProperties(v105, v109, v110);
                  v114 = objc_msgSend_UUID(v20, v112, v113);
                  objc_msgSend_objectForKeyedSubscript_(v111, v115, v114);
                  v116 = v156 = v84;
                  v118 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, v28 + 1);
                  v121 = objc_msgSend_referenceSignature(v118, v119, v120);

                  v27 = v154;
                  v84 = v156;

                  v20 = v158;
                }

                else
                {
                  v121 = 0;
                }

                if (v121)
                {
                  objc_msgSend_setReferenceSignature_(v33, v122, v121);
                }

                else
                {
                  v124 = objc_msgSend_assetKey(v33, v122, v123);
                  v126 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v125, v124);
                  objc_msgSend_setReferenceSignature_(v33, v127, v126);
                }

                v12 = MEMORY[0x277CBC830];
                self = selfCopy;
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v128 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
                {
                  v130 = v128;
                  v133 = objc_msgSend_referenceSignature(v33, v131, v132);
                  *buf = v149;
                  v172 = v133;
                  v173 = 2112;
                  v174 = v33;
                  _os_log_debug_impl(&dword_22506F000, v130, OS_LOG_TYPE_DEBUG, "created asset key with reference identifier %@ for mmcs section %@", buf, 0x16u);
                }

                v29 = v161;
                v21 = v157;
              }

              else
              {
                if (objc_msgSend_useClearAssetEncryption(self, v61, v62))
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  itemsCopy = v152;
                  v142 = *v12;
                  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_22506F000, v142, OS_LOG_TYPE_ERROR, "clear asset key not supported for package sections.", buf, 2u);
                  }

                  v44 = 0;
                  goto LABEL_71;
                }

                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v85 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "skipping asset keys on section item because encryption is disabled", buf, 2u);
                }
              }

              if (objc_msgSend_paddedFileSize(v33, v86, v87))
              {
                objc_msgSend_addMMCSSectionItem_(*(&self->super.super.super.super.isa + v160), v129, v33);
              }

              if (v21 == ++v28)
              {
                goto LABEL_43;
              }
            }

            v44 = v30;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            itemsCopy = v152;
            v139 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v172 = v44;
              _os_log_error_impl(&dword_22506F000, v139, OS_LOG_TYPE_ERROR, "Error fetching package section: %@", buf, 0xCu);
            }

LABEL_72:

            v138 = 0;
            goto LABEL_73;
          }

LABEL_43:
          v134 = objc_msgSend_uploadTasksByPackages(self, v25, v26);
          v136 = objc_msgSend_objectForKey_(v134, v135, v20);

          objc_msgSend_setMMCSSectionItems_(v136, v137, v27);
          v9 = v151;
          itemsCopy = v152;
          v10 = v150;
          v11 = &OBJC_IVAR___CKDDeviceCapabilityUsageSQLEntry__IDString;
          v13 = v153;
        }

        ++v13;
      }

      while (v13 != v9);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v7, &v167, v175, 16);
      v138 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v138 = 1;
  }

LABEL_73:

  return v138;
}

- (void)_registerMMCSItems
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v52 = objc_msgSend_MMCS(v4, v5, v6);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v59, v63, 16);
  if (v10)
  {
    v13 = v10;
    v53 = *v60;
    do
    {
      v14 = 0;
      do
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v59 + 1) + 8 * v14);
        v16 = objc_msgSend_allMMCSItems(v15, v11, v12);
        if (objc_msgSend_count(v16, v17, v18))
        {
          v21 = objc_msgSend_stateTransitionGroup(self, v19, v20);
          dispatch_group_enter(v21);

          v22 = [CKDMMCSItemGroupSet alloc];
          v24 = objc_msgSend_initWithItems_(v22, v23, v16);
          v27 = objc_msgSend_itemsGroups(v24, v25, v26);
          if (objc_msgSend_count(v27, v28, v29) != 1)
          {
            __assert_rtn("[CKDUploadAssetsOperation _registerMMCSItems]", "CKDUploadAssetsOperation.m", 791, "allItemGroups.count == 1");
          }

          if (objc_msgSend_isRereferenceAssetBatch(v15, v30, v31))
          {
            v34 = objc_msgSend_assetZone(v15, v32, v33);
            v37 = objc_msgSend_assetZoneKey(v34, v35, v36);
            v40 = objc_msgSend_cloneContext(v37, v38, v39);
            objc_msgSend_setCloneContext_(v24, v41, v40);

            v42 = 16;
          }

          else if (objc_msgSend_useMMCSEncryptionV2(v15, v32, v33))
          {
            v42 = 82;
          }

          else
          {
            v42 = 18;
          }

          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = sub_2251BE618;
          v54[3] = &unk_278548E78;
          v55 = v27;
          v56 = v15;
          selfCopy = self;
          v44 = v27;
          v46 = objc_msgSend_registerItemGroupSet_operation_options_completionHandler_(v52, v45, v24, self, v42, v54);
          v49 = objc_msgSend_cancelTokens(self, v47, v48);
          objc_msgSend_addCancelToken_withOperation_(v49, v50, v46, self);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v43 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Skipping empty upload batch", buf, 2u);
          }
        }

        ++v14;
      }

      while (v13 != v14);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v59, v63, 16);
    }

    while (v13);
  }
}

- (BOOL)_prepareForUpload
{
  v59 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isCancelled(self, a2, v2) & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_assetsToUpload(self, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v5, v12, v11);

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = objc_msgSend_assetsToUpload(self, v14, v15, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v50, v58, 16);
    if (v18)
    {
      v20 = v18;
      v21 = 0;
      v22 = *v51;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v50 + 1) + 8 * i);
          v25 = objc_msgSend__prepareForUploadWithOperation_(v24, v19, self);
          isReference = objc_msgSend_isReference(v24, v26, v27);
          if (v25)
          {
            objc_msgSend_addObject_(v13, v28, v25);
          }

          v21 |= isReference;
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v50, v58, 16);
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    if (objc_msgSend_count(v13, v30, v31) || (v21 & 1) != 0)
    {
      if (objc_msgSend__planPackageSectionItemsForMMCSItems_(self, v32, v13))
      {
        objc_msgSend_resetAssetTokenRequests(self->_assetRequestPlanner, v38, v39);
        objc_msgSend_planRegisterBatches(self->_assetRequestPlanner, v40, v41);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v42 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v46 = v42;
          v49 = objc_msgSend_operationID(self, v47, v48);
          *buf = 138412546;
          v55 = v13;
          v56 = 2114;
          v57 = v49;
          _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Registering MMCS items %@ for operation %{public}@", buf, 0x16u);
        }

        objc_msgSend__registerMMCSItems(self, v43, v44);
        v4 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v34 = v33;
        v37 = objc_msgSend_operationID(self, v35, v36);
        *buf = 138543362;
        v55 = v37;
        _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "No assets to upload for operation %{public}@", buf, 0xCu);
      }
    }

    v4 = 0;
LABEL_27:

    return v4;
  }

  return 0;
}

- (void)_failAllItemsInAssetBatch:(id)batch error:(id)error
{
  v56 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  errorCopy = error;
  if (!errorCopy)
  {
    __assert_rtn("[CKDUploadAssetsOperation _failAllItemsInAssetBatch:error:]", "CKDUploadAssetsOperation.m", 863, "error");
  }

  v10 = errorCopy;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = batchCopy;
  v11 = objc_msgSend_allRegularAndSectionAndRereferenceItems(batchCopy, v8, v9);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v43, v55, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v44;
    v42 = v11;
    do
    {
      v18 = 0;
      do
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v43 + 1) + 8 * v18);
        v20 = objc_msgSend_package(v19, v14, v15);
        v25 = objc_msgSend_asset(v19, v21, v22);
        if (v20)
        {
          v26 = objc_msgSend_uploadTasksByPackages(self, v23, v24);
          objc_msgSend_removeObjectForKey_(v26, v27, v20);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v28 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v32 = v28;
            v35 = objc_msgSend_operationID(self, v33, v34);
            *buf = 138413058;
            v48 = v19;
            v49 = 2112;
            v50 = v20;
            v51 = 2114;
            v52 = v35;
            v53 = 2112;
            v54 = v10;
            _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Failed MMCS item %@, package %@ and operation %{public}@: %@", buf, 0x2Au);

            v11 = v42;
          }

          objc_msgSend__didUploadAsset_error_(self, v29, v20, v10);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v30 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v36 = v30;
            v39 = objc_msgSend_operationID(self, v37, v38);
            *buf = 138412802;
            v48 = v19;
            v49 = 2114;
            v50 = v39;
            v51 = 2112;
            v52 = v10;
            _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed MMCS item %@ and operation %{public}@: %@", buf, 0x20u);

            v11 = v42;
          }

          objc_msgSend__didUploadAsset_error_(self, v31, v25, v10);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v43, v55, 16);
    }

    while (v16);
  }

  objc_msgSend_failBatch_(self->_assetRequestPlanner, v40, v41);
}

- (BOOL)_didFetchUploadTokensForAssetTokenRequest:(id)request error:(id)error newError:(id *)newError
{
  v52 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = objc_msgSend_assetBatches(request, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v46, v51, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v47;
    v37 = *MEMORY[0x277CBC120];
    v38 = *v47;
    v18 = 1;
    v39 = v11;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        if (errorCopy)
        {
          v21 = errorCopy;
LABEL_9:
          v24 = v21;
          objc_msgSend__failAllItemsInAssetBatch_error_(self, v22, v20, v21);
LABEL_10:
          if (newError)
          {
            v25 = v24;
            v18 = 0;
            *newError = v24;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_25;
        }

        v21 = objc_msgSend_firstMMCSItemError(*(*(&v46 + 1) + 8 * i), v14, v15);
        if (v21)
        {
          goto LABEL_9;
        }

        v41 = v18;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v26 = objc_msgSend_allRegularAndSectionAndRereferenceItems(v20, v22, v23);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v42, v50, 16);
        if (v28)
        {
          v31 = v28;
          v32 = *v43;
LABEL_15:
          v33 = 0;
          while (1)
          {
            if (*v43 != v32)
            {
              objc_enumerationMutation(v26);
            }

            v34 = objc_msgSend_authToken(*(*(&v42 + 1) + 8 * v33), v29, v30);

            if (!v34)
            {
              break;
            }

            if (v31 == ++v33)
            {
              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v42, v50, 16);
              if (v31)
              {
                goto LABEL_15;
              }

              goto LABEL_21;
            }
          }

          v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, v37, 1000, @"No authToken received for asset");

          if (!v24)
          {
            goto LABEL_24;
          }

          v11 = v39;
          self = selfCopy;
          v17 = v38;
          objc_msgSend__failAllItemsInAssetBatch_error_(selfCopy, v35, v20, v24);
          goto LABEL_10;
        }

LABEL_21:

        v24 = 0;
LABEL_24:
        v11 = v39;
        self = selfCopy;
        v17 = v38;
        v18 = v41;
LABEL_25:
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v46, v51, 16);
      if (!v16)
      {
        goto LABEL_29;
      }
    }
  }

  LOBYTE(v18) = 1;
LABEL_29:

  return v18 & 1;
}

- (BOOL)_fetchUploadTokens
{
  v169 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_atomic(self, a2, v2))
  {
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    obj = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v4, v5);
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v156, v168, 16);
    if (v7)
    {
      v10 = v7;
      v11 = 0;
      v12 = *v157;
      v13 = *MEMORY[0x277CBC120];
      v122 = *v157;
      do
      {
        v14 = 0;
        v124 = v10;
        do
        {
          if (*v157 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v129 = v14;
          v15 = *(*(&v156 + 1) + 8 * v14);
          if (objc_msgSend_isFailed(v15, v8, v9))
          {
            v16 = objc_msgSend_assetBatchesByZoneID(self->_assetRequestPlanner, v8, v9);
            v19 = objc_msgSend_assetZone(v15, v17, v18);
            v22 = objc_msgSend_assetZoneKey(v19, v20, v21);
            v25 = objc_msgSend_destinationZoneID(v22, v23, v24);
            v27 = objc_msgSend_objectForKeyedSubscript_(v16, v26, v25);

            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v28 = v27;
            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v152, v167, 16);
            if (v30)
            {
              v33 = v30;
              v34 = *v153;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v153 != v34)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v36 = *(*(&v152 + 1) + 8 * i);
                  if ((objc_msgSend_isFailed(v36, v31, v32) & 1) == 0)
                  {
                    if (!v11)
                    {
                      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, v13, 1000, @"Atomic zone yo something in the batch failed.");;
                    }

                    objc_msgSend__failAllItemsInAssetBatch_error_(self, v31, v36, v11);
                  }
                }

                v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v152, v167, 16);
              }

              while (v33);
            }

            v12 = v122;
            v10 = v124;
          }

          v14 = v129 + 1;
        }

        while (v129 + 1 != v10);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v156, v168, 16);
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  objc_msgSend_planAssetRequests(self->_assetRequestPlanner, v4, v5);
  hasSuccessfulAssetTokenRequests = objc_msgSend_hasSuccessfulAssetTokenRequests(self->_assetRequestPlanner, v37, v38);
  v42 = hasSuccessfulAssetTokenRequests;
  if (hasSuccessfulAssetTokenRequests)
  {
    v119 = hasSuccessfulAssetTokenRequests;
    v43 = objc_msgSend_uploadPreparationBlock(self, v40, v41);

    if (v43)
    {
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v120 = objc_msgSend_assetTokenRequests(self->_assetRequestPlanner, v44, v45);
      v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v46, &v148, v164, 16);
      if (v123)
      {
        v121 = *v149;
        do
        {
          v49 = 0;
          do
          {
            if (*v149 != v121)
            {
              objc_enumerationMutation(v120);
            }

            v125 = v49;
            v50 = *(*(&v148 + 1) + 8 * v49);
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            obja = objc_msgSend_successfulBatches(v50, v47, v48);
            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v51, &v144, v163, 16);
            if (v52)
            {
              v55 = v52;
              v130 = *v145;
              do
              {
                for (j = 0; j != v55; ++j)
                {
                  if (*v145 != v130)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v57 = *(*(&v144 + 1) + 8 * j);
                  v140 = 0u;
                  v141 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v58 = objc_msgSend_allMMCSItems(v57, v53, v54);
                  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v140, v162, 16);
                  if (v60)
                  {
                    v63 = v60;
                    v64 = *v141;
                    do
                    {
                      for (k = 0; k != v63; ++k)
                      {
                        if (*v141 != v64)
                        {
                          objc_enumerationMutation(v58);
                        }

                        v66 = *(*(&v140 + 1) + 8 * k);
                        v67 = objc_msgSend_error(v66, v61, v62);

                        if (v67)
                        {
                          v76 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v68, v69);
                          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v77, a2, self, @"CKDUploadAssetsOperation.m", 943, @"Expected nil error for %@", v66);
                        }

                        v70 = objc_msgSend_package(v66, v68, v69);
                        v73 = objc_msgSend_asset(v66, v71, v72);
                        v75 = v73;
                        if (v70)
                        {
                          objc_msgSend__didPrepareAsset_(self, v74, v70);
                        }

                        else
                        {
                          objc_msgSend__didPrepareAsset_(self, v74, v73);
                        }
                      }

                      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v140, v162, 16);
                    }

                    while (v63);
                  }

                  v138 = 0u;
                  v139 = 0u;
                  v136 = 0u;
                  v137 = 0u;
                  v80 = objc_msgSend_allRereferenceMMCSPackageItems(v57, v78, v79);
                  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v136, v161, 16);
                  if (v82)
                  {
                    v85 = v82;
                    v86 = *v137;
                    do
                    {
                      for (m = 0; m != v85; ++m)
                      {
                        if (*v137 != v86)
                        {
                          objc_enumerationMutation(v80);
                        }

                        v88 = *(*(&v136 + 1) + 8 * m);
                        v89 = objc_msgSend_error(v88, v83, v84);

                        if (v89)
                        {
                          v98 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v90, v91);
                          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v98, v99, a2, self, @"CKDUploadAssetsOperation.m", 949, @"Expected nil error for %@", v88);
                        }

                        v92 = objc_msgSend_package(v88, v90, v91);
                        v95 = objc_msgSend_asset(v88, v93, v94);
                        v97 = v95;
                        if (v92)
                        {
                          objc_msgSend__didPrepareAsset_(self, v96, v92);
                        }

                        else
                        {
                          objc_msgSend__didPrepareAsset_(self, v96, v95);
                        }
                      }

                      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v83, &v136, v161, 16);
                    }

                    while (v85);
                  }
                }

                v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v53, &v144, v163, 16);
              }

              while (v55);
            }

            v49 = v125 + 1;
          }

          while (v125 + 1 != v123);
          v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v47, &v148, v164, 16);
        }

        while (v123);
      }
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v100 = objc_msgSend_assetTokenRequests(self->_assetRequestPlanner, v44, v45);
    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v132, v160, 16);
    if (v102)
    {
      v105 = v102;
      v106 = *v133;
      do
      {
        for (n = 0; n != v105; ++n)
        {
          if (*v133 != v106)
          {
            objc_enumerationMutation(v100);
          }

          v108 = *(*(&v132 + 1) + 8 * n);
          if (objc_msgSend_hasSuccessfulBatches(v108, v103, v104))
          {
            v109 = objc_opt_new();
            objc_msgSend_setAssetTokenRequest_(v109, v110, v108);
            v111 = objc_opt_class();
            v131[0] = MEMORY[0x277D85DD0];
            v131[1] = 3221225472;
            v131[2] = sub_2251BF828;
            v131[3] = &unk_278548C48;
            v131[4] = self;
            v131[5] = v108;
            objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v112, v111, v109, v131);
          }
        }

        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v103, &v132, v160, 16);
      }

      while (v105);
    }

    return v119;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v113 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v115 = v113;
      v118 = objc_msgSend_operationID(self, v116, v117);
      *buf = 138543362;
      v166 = v118;
      _os_log_debug_impl(&dword_22506F000, v115, OS_LOG_TYPE_DEBUG, "No assets to upload for operation %{public}@", buf, 0xCu);
    }
  }

  return v42;
}

- (void)_didUploadMMCSSectionItem:(id)item task:(id)task error:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  taskCopy = task;
  errorCopy = error;
  v13 = objc_msgSend_package(taskCopy, v11, v12);
  v16 = objc_msgSend_error(itemCopy, v14, v15);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = errorCopy;
  }

  v19 = v18;

  if (v19)
  {
LABEL_15:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v40 = v38;
      v43 = objc_msgSend_operationID(self, v41, v42);
      *buf = 138413058;
      v49 = itemCopy;
      v50 = 2112;
      v51 = v13;
      v52 = 2114;
      v53 = v43;
      v54 = 2112;
      v55 = v19;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Failed to upload MMCS section item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    objc_msgSend_setError_(taskCopy, v39, v19);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = objc_msgSend_sectionItems(itemCopy, v20, v21, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v44, v56, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v45;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend_error(*(*(&v44 + 1) + 8 * i), v25, v26);
          if (v30)
          {
            v19 = v30;

            goto LABEL_15;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v44, v56, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v33 = objc_msgSend_progressTracker(taskCopy, v31, v32);
    objc_msgSend_updateProgressWithItem_progress_(v33, v34, itemCopy, 1.0);
    v36 = v35;

    objc_msgSend__didMakeProgressForAsset_progress_(self, v37, v13, v36);
  }
}

- (void)_didUploadMMCSSectionItems:(id)items task:(id)task error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  taskCopy = task;
  errorCopy = error;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v11, &v28, v38, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        if ((objc_msgSend_finished(v18, v13, v14) & 1) == 0)
        {
          objc_msgSend_setFinished_(v18, v13, 1);
          objc_msgSend__didUploadMMCSSectionItem_task_error_(self, v19, v18, taskCopy, errorCopy);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v13, &v28, v38, 16);
    }

    while (v15);
  }

  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v21 = v20;
      v24 = objc_msgSend_count(itemsCopy, v22, v23);
      v27 = objc_msgSend_operationID(self, v25, v26);
      *buf = 134218498;
      v33 = v24;
      v34 = 2114;
      v35 = v27;
      v36 = 2112;
      v37 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Failed to upload %lu MMCS section items for operation %{public}@: %@", buf, 0x20u);
    }
  }
}

- (void)_didMakeProgressForMMCSSectionItem:(id)item task:(id)task
{
  itemCopy = item;
  taskCopy = task;
  v9 = objc_msgSend_finished(itemCopy, v7, v8);
  v12 = objc_msgSend_error(itemCopy, v10, v11);
  v15 = v12;
  if (v9)
  {
    objc_msgSend__didUploadMMCSSectionItem_task_error_(self, v13, itemCopy, taskCopy, v12);
  }

  else if (!v12)
  {
    objc_msgSend_progress(itemCopy, v13, v14);
    if (v18 < 0.0)
    {
      goto LABEL_7;
    }

    v15 = objc_msgSend_package(taskCopy, v16, v17);
    v21 = objc_msgSend_progressTracker(taskCopy, v19, v20);
    objc_msgSend_progress(itemCopy, v22, v23);
    objc_msgSend_updateProgressWithItem_progress_(v21, v24, itemCopy);
    v26 = v25;

    objc_msgSend__didMakeProgressForAsset_progress_(self, v27, v15, v26);
  }

LABEL_7:
}

- (void)_uploadPackageSection:(id)section task:(id)task completionBlock:(id)block
{
  v143 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  taskCopy = task;
  blockCopy = block;
  v14 = objc_msgSend_container(self, v12, v13);
  v115 = objc_msgSend_MMCS(v14, v15, v16);

  v116 = objc_msgSend_package(taskCopy, v17, v18);
  v21 = objc_msgSend_MMCSSectionItems(taskCopy, v19, v20);
  v24 = objc_msgSend_sectionIndex(sectionCopy, v22, v23);
  if (!objc_msgSend_isCancelled(self, v25, v26))
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_2251C09EC;
    v131[3] = &unk_278548EC8;
    v32 = v116;
    v132 = v32;
    selfCopy = self;
    v114 = v30;
    v134 = v114;
    v113 = v31;
    v135 = v113;
    v34 = objc_msgSend_enumerateItemsInSection_withBlock_(v32, v33, v24, v131);
    if (objc_msgSend_count(v21, v35, v36) <= v24)
    {
      v44 = MEMORY[0x277CBC560];
      v45 = objc_msgSend_count(v21, v37, v38);
      v47 = objc_msgSend_errorWithDomain_code_format_(v44, v46, *MEMORY[0x277CBC120], 1000, @"Invalid section %@ at index %lu/%lu", sectionCopy, v24, v45);
      objc_msgSend_setError_(taskCopy, v48, v47);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v92 = v49;
        v95 = objc_msgSend_count(v21, v93, v94);
        *location = 134218498;
        *&location[4] = v24;
        v137 = 2048;
        v138 = v95;
        v139 = 2112;
        v140 = sectionCopy;
        _os_log_error_impl(&dword_22506F000, v92, OS_LOG_TYPE_ERROR, "Invalid section index %lu/%lu for section %@", location, 0x20u);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      goto LABEL_34;
    }

    v112 = objc_msgSend_objectAtIndex_(v21, v37, v24);
    v130 = 0;
    v40 = objc_msgSend_size_(sectionCopy, v39, &v130);
    v41 = v130;
    v111 = v41;
    if (v41)
    {
      objc_msgSend_setError_(taskCopy, v42, v41);
      if (!blockCopy)
      {
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }
    }

    else if (v40 == objc_msgSend_fileSize(v112, v42, v43) && (objc_msgSend_signature(sectionCopy, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_signature(v112, v53, v54), v55 = objc_claimAutoreleasedReturnValue(), group = objc_msgSend_isEqualToData_(v52, v56, v55), v55, v52, (group & 1) != 0))
    {
      v57 = CKCreateGUID();
      objc_msgSend_setPutPackageSectionIdentifier_(v112, v58, v57);

      objc_msgSend_setSectionItems_(v112, v59, v114);
      if ((objc_msgSend_useEncryption(self, v60, v61) & 1) != 0 || objc_msgSend_useClearAssetEncryption(self, v62, v63))
      {
        if (objc_msgSend_fileSize(v112, v62, v63))
        {
          v64 = objc_msgSend_referenceSignature(v112, v62, v63);
          v65 = v64 == 0;

          if (v65)
          {
            v66 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v62, v63);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v66, v67, a2, self, @"CKDUploadAssetsOperation.m", 1101, @"Expected non-nil reference signature for %@", v112);
          }
        }
      }

      if (objc_msgSend_fileSize(v112, v62, v63))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v70 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v103 = v70;
          v106 = objc_msgSend_operationID(self, v104, v105);
          *location = 138413058;
          *&location[4] = v112;
          v137 = 2048;
          v138 = v24;
          v139 = 2112;
          v140 = v32;
          v141 = 2114;
          v142 = v106;
          _os_log_debug_impl(&dword_22506F000, v103, OS_LOG_TYPE_DEBUG, "Uploading MMCS section item %@ at index %lu for package %@ and operation %{public}@", location, 0x2Au);
        }

        v71 = dispatch_group_create();
        dispatch_group_enter(v71);
        objc_initWeak(location, self);
        v74 = objc_msgSend_MMCSRequestOptions(taskCopy, v72, v73);
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = sub_2251C0B7C;
        v127[3] = &unk_278548EF0;
        objc_copyWeak(&v129, location);
        v128 = taskCopy;
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = sub_2251C0BDC;
        v121[3] = &unk_278548F18;
        v122 = v112;
        v123 = v113;
        selfCopy2 = self;
        v75 = v128;
        v125 = v75;
        groupa = v71;
        v126 = groupa;
        v77 = objc_msgSend_putSectionItem_operation_options_progress_completionHandler_(v115, v76, v122, self, v74, v127, v121);

        v80 = objc_msgSend_cancelTokens(v75, v78, v79);
        objc_msgSend_addCancelToken_withOperation_(v80, v81, v77, self);

        objc_msgSend_qualityOfService(self, v82, v83);
        v84 = CKGetGlobalQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251C0CC4;
        block[3] = &unk_278546C30;
        v118 = v75;
        v119 = v77;
        v120 = blockCopy;
        v85 = v77;
        dispatch_group_notify(groupa, v84, block);

        objc_destroyWeak(&v129);
        objc_destroyWeak(location);

        goto LABEL_33;
      }

      if (objc_msgSend_count(v114, v68, v69))
      {
        v107 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v96, v97);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v107, v108, a2, self, @"CKDUploadAssetsOperation.m", 1104, @"Expected 0 non-empty items in the empty section %@", v112);
      }

      objc_msgSend_setSectionItems_(v112, v96, v113);
      objc_msgSend__didUploadMMCSSectionItem_task_error_(self, v98, v112, taskCopy, 0);
      if (!blockCopy)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v86 = MEMORY[0x277CBC560];
      v87 = objc_msgSend_count(v21, v50, v51);
      v89 = objc_msgSend_errorWithDomain_code_format_(v86, v88, *MEMORY[0x277CBC120], 1000, @"Invalid section %@ at index %lu/%lu", sectionCopy, v24, v87);
      objc_msgSend_setError_(taskCopy, v90, v89);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v91 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v99 = v91;
        v102 = objc_msgSend_count(v21, v100, v101);
        *location = 134218754;
        *&location[4] = v24;
        v137 = 2048;
        v138 = v102;
        v139 = 2112;
        v140 = sectionCopy;
        v141 = 2112;
        v142 = v112;
        _os_log_error_impl(&dword_22506F000, v99, OS_LOG_TYPE_ERROR, "Invalid section at index %lu/%lu for section %@: %@", location, 0x2Au);
      }

      if (!blockCopy)
      {
        goto LABEL_33;
      }
    }

    blockCopy[2](blockCopy);
    goto LABEL_33;
  }

  v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
  objc_msgSend_setError_(taskCopy, v29, v28);

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_35:
}

- (void)_uploadPackageSectionsWithEnumerator:(id)enumerator task:(id)task completionBlock:(id)block
{
  enumeratorCopy = enumerator;
  taskCopy = task;
  blockCopy = block;
  v13 = objc_msgSend_error(taskCopy, v11, v12);

  if (v13 || (objc_msgSend_nextObject(enumeratorCopy, v14, v15), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v17 = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2251C0E68;
    v19[3] = &unk_2785488E0;
    v19[4] = self;
    v20 = enumeratorCopy;
    v21 = taskCopy;
    v22 = blockCopy;
    objc_msgSend__uploadPackageSection_task_completionBlock_(self, v18, v17, v21, v19);
  }
}

- (void)_uploadPackageSectionsWithTask:(id)task completionBlock:(id)block
{
  v86 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  blockCopy = block;
  v10 = objc_msgSend_package(taskCopy, v8, v9);
  v13 = objc_msgSend_MMCSSectionItems(taskCopy, v11, v12);
  v16 = objc_msgSend_sectionCount(v10, v14, v15);
  if (objc_msgSend_isCancelled(self, v17, v18))
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
    goto LABEL_16;
  }

  if (v16 == objc_msgSend_count(v13, v19, v20))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v63 = v23;
      v66 = objc_msgSend_operationID(self, v64, v65);
      *buf = 138412802;
      v79 = v13;
      v80 = 2112;
      v81 = v10;
      v82 = 2114;
      v83 = v66;
      _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Uploading MMCS section items %@ for package %@ and operation %{public}@", buf, 0x20u);
    }

    v73 = v13;
    v24 = objc_alloc(MEMORY[0x277CBEB18]);
    v27 = objc_msgSend_initWithCapacity_(v24, v25, v16);
    v28 = 0;
    if (!v16)
    {
LABEL_12:
      v33 = [CKDMMCSRequestOptions alloc];
      selfCopy = self;
      v35 = objc_msgSend_initWithOperation_(v33, v34, self);
      v38 = objc_msgSend_record(v10, v36, v37);
      v41 = objc_msgSend_recordID(v38, v39, v40);
      v44 = objc_msgSend_zoneID(v41, v42, v43);
      v47 = objc_msgSend_zoneName(v44, v45, v46);

      if (v47)
      {
        v77 = v47;
        v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, &v77, 1);
        objc_msgSend_setZoneNames_(v35, v50, v49);
      }

      objc_msgSend_setMMCSRequestOptions_(taskCopy, v48, v35);
      v53 = objc_msgSend_objectEnumerator(v27, v51, v52);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = sub_2251C1368;
      v74[3] = &unk_2785456A0;
      v75 = blockCopy;
      objc_msgSend__uploadPackageSectionsWithEnumerator_task_completionBlock_(selfCopy, v54, v53, taskCopy, v74);

      v13 = v73;
      goto LABEL_23;
    }

    v29 = 0;
    while (1)
    {
      v30 = v28;
      v76 = v28;
      v31 = objc_msgSend_sectionAtIndex_error_(v10, v26, v29, &v76);
      v28 = v76;

      if (!v31)
      {
        break;
      }

      objc_msgSend_addObject_(v27, v32, v31);

      if (v16 == ++v29)
      {
        goto LABEL_12;
      }
    }

    v60 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 1000, @"Can't find section at index %lu: %@", v29, v28);
    objc_msgSend_setError_(taskCopy, v61, v60);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = v73;
    v62 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v67 = v62;
      v70 = objc_msgSend_operationID(self, v68, v69);
      *buf = 134218754;
      v79 = v29;
      v80 = 2112;
      v81 = v10;
      v82 = 2114;
      v83 = v70;
      v84 = 2114;
      v85 = v28;
      _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "Can't find section at index %lu for package %@ and operation %{public}@: %{public}@", buf, 0x2Au);

      if (!blockCopy)
      {
        goto LABEL_23;
      }
    }

    else if (!blockCopy)
    {
LABEL_23:

      goto LABEL_24;
    }

    blockCopy[2](blockCopy);
    goto LABEL_23;
  }

  v55 = MEMORY[0x277CBC560];
  v56 = *MEMORY[0x277CBC120];
  v71 = objc_msgSend_count(v13, v21, v22);
  objc_msgSend_errorWithDomain_code_format_(v55, v57, v56, 1000, @"Invalid section count %lu/%lu", v16, v71);
  v58 = LABEL_16:;
  objc_msgSend_setError_(taskCopy, v59, v58);

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_24:
}

- (void)_uploadPackageSectionsWithPendingTasks:(id)tasks uploadingTasks:(id)uploadingTasks completedTasks:(id)completedTasks
{
  tasksCopy = tasks;
  uploadingTasksCopy = uploadingTasks;
  completedTasksCopy = completedTasks;
  if (!objc_msgSend_maxPackageUploadsPerBatch(self, v12, v13))
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDUploadAssetsOperation.m", 1191, @"Expected non-0 maxPackageUploadsPerBatch");
  }

  v16 = objc_msgSend_count(uploadingTasksCopy, v14, v15);
  if (v16 > objc_msgSend_maxPackageUploadsPerBatch(self, v17, v18))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDUploadAssetsOperation.m", 1192, @"Expected max uploading tasks: %@", uploadingTasksCopy);

    if (!completedTasksCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!completedTasksCopy)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_count(completedTasksCopy, v19, v20))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDUploadAssetsOperation.m", 1193, @"Expected completed tasks: %@", completedTasksCopy);
  }

LABEL_7:
  v21 = objc_msgSend_queue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251C157C;
  block[3] = &unk_2785463D0;
  v32 = uploadingTasksCopy;
  v33 = completedTasksCopy;
  selfCopy = self;
  v35 = tasksCopy;
  v22 = tasksCopy;
  v23 = completedTasksCopy;
  v24 = uploadingTasksCopy;
  dispatch_async(v21, block);
}

- (void)_didUploadMMCSItem:(id)item error:(id)error
{
  v77 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  errorCopy = error;
  v11 = objc_msgSend_error(itemCopy, v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = errorCopy;
  }

  v14 = v13;

  v17 = objc_msgSend_package(itemCopy, v15, v16);
  v22 = objc_msgSend_asset(itemCopy, v18, v19);
  if (v14)
  {
    v23 = *MEMORY[0x277CBC878];
    if (v17)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v24 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v59 = v24;
        v62 = objc_msgSend_operationID(self, v60, v61);
        *buf = 138413058;
        v70 = itemCopy;
        v71 = 2112;
        v72 = v17;
        v73 = 2114;
        v74 = v62;
        v75 = 2112;
        v76 = v14;
        _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "Failed to upload MMCS item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
      }

      v27 = objc_msgSend_uploadTasksByPackages(self, v25, v26);
      v29 = objc_msgSend_objectForKey_(v27, v28, v17);

      objc_msgSend_setError_(v29, v30, v14);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v44 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v63 = v44;
        v66 = objc_msgSend_operationID(self, v64, v65);
        *buf = 138412802;
        v70 = itemCopy;
        v71 = 2114;
        v72 = v66;
        v73 = 2112;
        v74 = v14;
        _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Failed to upload MMCS item %@ for operation %{public}@: %@", buf, 0x20u);
      }

      objc_msgSend__didUploadAsset_error_(self, v45, v22, v14);
    }
  }

  else
  {
    v31 = objc_msgSend_fileSize(itemCopy, v20, v21);
    if (v17)
    {
      if (!v31)
      {
        v67 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v32, v33);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v67, v68, a2, self, @"CKDUploadAssetsOperation.m", 1244, @"Expected non-0 size for the manifest for package %@", v17);
      }

      v34 = objc_msgSend_uploadTasksByPackages(self, v32, v33);
      v36 = objc_msgSend_objectForKey_(v34, v35, v17);

      v39 = objc_msgSend_progressTracker(v36, v37, v38);
      objc_msgSend_updateProgressWithItem_progress_(v39, v40, itemCopy, 1.0);
      v42 = v41;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v43, v17, v42);
    }

    else
    {
      if (v31)
      {
        v46 = objc_msgSend_uploadReceipt(itemCopy, v32, v33);
        objc_msgSend_setUploadReceipt_(v22, v47, v46);
        objc_msgSend_setUploaded_(v22, v48, v46 != 0);
      }

      else
      {
        objc_msgSend_setUploadReceipt_(v22, v32, 0);
      }

      objc_msgSend_uploadReceiptExpiration(itemCopy, v49, v50);
      objc_msgSend_setUploadReceiptExpiration_(v22, v51, v52);
      v55 = objc_msgSend_paddedFileSize(itemCopy, v53, v54);
      objc_msgSend_setPaddedFileSize_(v22, v56, v55);
      objc_msgSend__didMakeProgressForAsset_progress_(self, v57, v22, 1.0);
      objc_msgSend__didUploadAsset_error_(self, v58, v22, 0);
    }
  }
}

- (void)_collectMetricsFromMMCSOperationMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (objc_msgSend_count(metricsCopy, v5, v6))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2251C1DF4;
    v8[3] = &unk_2785487F8;
    v9 = metricsCopy;
    objc_msgSend_updateMMCSMetrics_(self, v7, v8);
  }
}

- (void)_collectMetricsFromCompletedItemGroup:(id)group
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_metrics(group, a2, group);
  v6 = v4;
  if (v4)
  {
    v9[0] = v4;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v9, 1);
    objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v8, v7);
  }
}

- (void)_collectMetricsFromCompletedItemGroupSet:(id)set
{
  v4 = objc_msgSend_itemsGroups(set, a2, set);
  v7 = objc_msgSend_CKCompactMap_(v4, v5, &unk_28385D4A0);

  objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v6, v7);
}

- (void)_didUploadMMCSItems:(id)items error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  errorCopy = error;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v8, &v25, v35, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if ((objc_msgSend_finished(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend_setFinished_(v15, v10, 1);
          objc_msgSend__didUploadMMCSItem_error_(self, v16, v15, errorCopy);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v10, &v25, v35, 16);
    }

    while (v12);
  }

  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      v21 = objc_msgSend_count(itemsCopy, v19, v20);
      v24 = objc_msgSend_operationID(self, v22, v23);
      *buf = 134218498;
      v30 = v21;
      v31 = 2114;
      v32 = v24;
      v33 = 2112;
      v34 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Failed to upload %lu MMCS items for operation %{public}@: %@", buf, 0x20u);
    }
  }
}

- (void)_didMakeProgressForMMCSItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_finished(itemCopy, v4, v5);
  v9 = objc_msgSend_error(itemCopy, v7, v8);
  v12 = v9;
  if (v6)
  {
    objc_msgSend__didUploadMMCSItem_error_(self, v10, itemCopy, v9);
  }

  else if (!v9)
  {
    objc_msgSend_progress(itemCopy, v10, v11);
    if (v15 < 0.0)
    {
      goto LABEL_10;
    }

    v12 = objc_msgSend_package(itemCopy, v13, v14);
    if (v12)
    {
      v18 = objc_msgSend_uploadTasksByPackages(self, v16, v17);
      v20 = objc_msgSend_objectForKey_(v18, v19, v12);

      v23 = objc_msgSend_progressTracker(v20, v21, v22);
      objc_msgSend_progress(itemCopy, v24, v25);
      objc_msgSend_updateProgressWithItem_progress_(v23, v26, itemCopy);
      v28 = v27;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v29, v12, v28);
    }

    else
    {
      v20 = objc_msgSend_asset(itemCopy, v16, v17);
      objc_msgSend_progress(itemCopy, v30, v31);
      objc_msgSend__didMakeProgressForAsset_progress_(self, v32, v20, v33);
    }
  }

LABEL_10:
}

- (void)_didUploadPackageWithTask:(id)task
{
  v163 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v7 = objc_msgSend_package(taskCopy, v5, v6);
  v10 = objc_msgSend_error(taskCopy, v8, v9);

  if (v10)
  {
    objc_msgSend_setUploaded_(v7, v11, 0);
    objc_msgSend_setAssets_(v7, v13, 0);
    v16 = objc_msgSend_error(taskCopy, v14, v15);
    objc_msgSend__didUploadAsset_error_(self, v17, v7, v16);

    goto LABEL_46;
  }

  v18 = objc_msgSend_MMCSSectionItems(taskCopy, v11, v12);
  v21 = objc_msgSend_MMCSManifestItem(taskCopy, v19, v20);
  v24 = objc_msgSend_record(v7, v22, v23);
  v27 = objc_msgSend_count(v18, v25, v26);
  v28 = objc_alloc(MEMORY[0x277CBEB18]);
  v156 = objc_msgSend_initWithCapacity_(v28, v29, v27 + 1);
  v30 = objc_alloc(MEMORY[0x277CBC190]);
  inited = objc_msgSend_initInternal(v30, v31, v32);
  objc_msgSend_setRecord_(inited, v34, v24);
  v35 = v7;
  v38 = objc_msgSend_recordKey(v7, v36, v37);
  objc_msgSend_setRecordKey_(inited, v39, v38);

  v42 = objc_msgSend_signature(v21, v40, v41);
  objc_msgSend_setSignature_(inited, v43, v42);

  v46 = objc_msgSend_fileSize(v21, v44, v45);
  objc_msgSend_setSize_(inited, v47, v46);
  v50 = objc_msgSend_paddedFileSize(v21, v48, v49);
  objc_msgSend_setPaddedFileSize_(inited, v51, v50);
  v54 = objc_msgSend_uploadReceipt(v21, v52, v53);
  objc_msgSend_setUploadReceipt_(inited, v55, v54);

  objc_msgSend_uploadReceiptExpiration(v21, v56, v57);
  objc_msgSend_setUploadReceiptExpiration_(inited, v58, v59);
  v62 = objc_msgSend_uploadReceipt(v21, v60, v61);
  objc_msgSend_setUploaded_(inited, v63, v62 != 0);

  v66 = objc_msgSend_useEncryption(self, v64, v65);
  v69 = MEMORY[0x277CBC878];
  v70 = MEMORY[0x277CBC880];
  v153 = v21;
  v154 = taskCopy;
  if (v66)
  {
    v71 = objc_msgSend_assetKey(v21, v67, v68);
    objc_msgSend_setAssetKey_(inited, v72, v71);

    v75 = objc_msgSend_assetKey(inited, v73, v74);
    v77 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v76, v75);
    objc_msgSend_setReferenceSignature_(inited, v78, v77);
  }

  else
  {
    v80 = objc_msgSend_useClearAssetEncryption(self, v67, v68);
    v81 = *v69;
    if (v80)
    {
      if (*v70 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v81);
      }

      v82 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v82, OS_LOG_TYPE_ERROR, "Clear Asset Key Not Supported For Package Manifests.", buf, 2u);
      }
    }

    else
    {
      if (*v70 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v81);
      }

      v83 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v83, OS_LOG_TYPE_DEBUG, "Skipping asset keys on manifest item because encryption is disabled", buf, 2u);
      }
    }
  }

  objc_msgSend_addObject_(v156, v79, inited);
  v152 = inited;
  v86 = objc_msgSend_uploaded(inited, v84, v85);
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = v18;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, &v157, v162, 16);
  if (v88)
  {
    v89 = v88;
    v90 = *v158;
    do
    {
      v91 = 0;
      do
      {
        if (*v158 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v92 = *(*(&v157 + 1) + 8 * v91);
        v93 = objc_alloc(MEMORY[0x277CBC190]);
        v96 = objc_msgSend_initInternal(v93, v94, v95);
        objc_msgSend_setRecord_(v96, v97, v24);
        v100 = objc_msgSend_recordKey(v35, v98, v99);
        objc_msgSend_setRecordKey_(v96, v101, v100);

        v104 = objc_msgSend_signature(v92, v102, v103);
        objc_msgSend_setSignature_(v96, v105, v104);

        v108 = objc_msgSend_fileSize(v92, v106, v107);
        objc_msgSend_setSize_(v96, v109, v108);
        v112 = objc_msgSend_paddedFileSize(v92, v110, v111);
        objc_msgSend_setPaddedFileSize_(v96, v113, v112);
        if (objc_msgSend_fileSize(v92, v114, v115))
        {
          v118 = objc_msgSend_uploadReceipt(v92, v116, v117);
          objc_msgSend_setUploadReceipt_(v96, v119, v118);
        }

        else
        {
          objc_msgSend_setUploadReceipt_(v96, v116, 0);
        }

        objc_msgSend_uploadReceiptExpiration(v92, v120, v121);
        objc_msgSend_setUploadReceiptExpiration_(v96, v122, v123);
        if (objc_msgSend_useEncryption(self, v124, v125))
        {
          v128 = objc_msgSend_assetKey(v92, v126, v127);
          objc_msgSend_setAssetKey_(v96, v129, v128);

          v132 = objc_msgSend_referenceSignature(v92, v130, v131);
          objc_msgSend_setReferenceSignature_(v96, v133, v132);
        }

        else
        {
          v136 = objc_msgSend_useClearAssetEncryption(self, v126, v127);
          v137 = *MEMORY[0x277CBC878];
          if (v136)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v137);
            }

            v138 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22506F000, v138, OS_LOG_TYPE_ERROR, "Clear Asset Key Not Supported For Package Section.", buf, 2u);
            }
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v137);
            }

            v139 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_22506F000, v139, OS_LOG_TYPE_DEBUG, "Skipping asset keys on section item because encryption is disabled", buf, 2u);
            }
          }
        }

        if (objc_msgSend_fileSize(v92, v134, v135))
        {
          v142 = objc_msgSend_uploadReceipt(v92, v140, v141);
          objc_msgSend_setUploaded_(v96, v143, v142 != 0);

          if (v86)
          {
            goto LABEL_35;
          }
        }

        else
        {
          objc_msgSend_setUploaded_(v96, v140, 1);
          if (v86)
          {
LABEL_35:
            v86 = objc_msgSend_uploaded(v96, v144, v145);
            goto LABEL_38;
          }
        }

        v86 = 0;
LABEL_38:
        if (objc_msgSend_fileSize(v92, v144, v145))
        {
          objc_msgSend_addObject_(v156, v146, v96);
        }

        ++v91;
      }

      while (v89 != v91);
      v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v147, &v157, v162, 16);
    }

    while (v89);
  }

  if (v86)
  {
    v149 = v156;
  }

  else
  {
    v149 = 0;
  }

  v7 = v35;
  objc_msgSend_setAssets_(v35, v148, v149);
  objc_msgSend_setUploaded_(v35, v150, v86);
  objc_msgSend__didUploadAsset_error_(self, v151, v35, 0);

  taskCopy = v154;
LABEL_46:
}

- (BOOL)_upload
{
  v286 = *MEMORY[0x277D85DE8];
  hasSuccessfulBatches = objc_msgSend_hasSuccessfulBatches(self->_assetRequestPlanner, a2, v2);
  if (hasSuccessfulBatches)
  {
    v6 = objc_msgSend_container(self, v4, v5);
    v224 = objc_msgSend_MMCS(v6, v7, v8);

    group = dispatch_group_create();
    dispatch_group_enter(group);
    v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
    dispatch_group_enter(v11);

    objc_msgSend_qualityOfService(self, v12, v13);
    v14 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251C3768;
    block[3] = &unk_278545A00;
    block[4] = self;
    dispatch_group_notify(group, v14, block);

    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    obj = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v15, v16);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v271, v285, 16);
    if (v20)
    {
      v237 = *v272;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v272 != v237)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v271 + 1) + 8 * i);
          if ((objc_msgSend_isFailed(v22, v18, v19, v224) & 1) == 0)
          {
            v269 = 0u;
            v270 = 0u;
            v267 = 0u;
            v268 = 0u;
            v23 = objc_msgSend_allMMCSAndSectionItems(v22, v18, v19);
            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v267, v284, 16);
            if (v27)
            {
              v28 = *v268;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v268 != v28)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v32 = objc_msgSend_package(*(*(&v267 + 1) + 8 * j), v25, v26);
                  if (v32)
                  {
                    v33 = objc_msgSend_uploadTasksByPackages(self, v30, v31);
                    v35 = objc_msgSend_objectForKey_(v33, v34, v32);

                    v38 = objc_msgSend_group(v35, v36, v37);
                    dispatch_group_enter(v38);
                  }
                }

                v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v267, v284, 16);
              }

              while (v27);
            }
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v271, v285, 16);
      }

      while (v20);
    }

    v41 = objc_msgSend_uploadTasksByPackages(self, v39, v40);
    v44 = objc_msgSend_count(v41, v42, v43);

    if (v44)
    {
      v47 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v45, v46);
      v49 = objc_msgSend_maxPackageUploadsPerBatchWithDefaultValue_(v47, v48, 6);

      if (v49 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v49;
      }

      if (v51 >= 0x64)
      {
        objc_msgSend_setMaxPackageUploadsPerBatch_(self, v50, 100, v224);
      }

      else
      {
        objc_msgSend_setMaxPackageUploadsPerBatch_(self, v50, v51, v224);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v220 = v52;
        v223 = objc_msgSend_maxPackageUploadsPerBatch(self, v221, v222);
        *location = 134218240;
        *&location[4] = v223;
        v282 = 2048;
        v283 = v49;
        _os_log_debug_impl(&dword_22506F000, v220, OS_LOG_TYPE_DEBUG, "maxPackageUploadsPerBatch:%lu (%lu)", location, 0x16u);
      }

      v53 = objc_alloc(MEMORY[0x277CBEB18]);
      v56 = objc_msgSend_uploadTasksByPackages(self, v54, v55);
      v59 = objc_msgSend_count(v56, v57, v58);
      v61 = objc_msgSend_initWithCapacity_(v53, v60, v59);

      v62 = objc_alloc(MEMORY[0x277CBEB18]);
      v65 = objc_msgSend_maxPackageUploadsPerBatch(self, v63, v64);
      obja = objc_msgSend_initWithCapacity_(v62, v66, v65);
      v69 = objc_msgSend_uploadTasksByPackages(self, v67, v68);
      v72 = objc_msgSend_objectEnumerator(v69, v70, v71);
      v75 = objc_msgSend_allObjects(v72, v73, v74);
      v77 = objc_msgSend_sortedArrayUsingComparator_(v75, v76, &unk_28385D500);

      v265 = 0u;
      v266 = 0u;
      v263 = 0u;
      v264 = 0u;
      v238 = v77;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v238, v78, &v263, v280, 16);
      if (v79)
      {
        v80 = *v264;
        do
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v264 != v80)
            {
              objc_enumerationMutation(v238);
            }

            v82 = *(*(&v263 + 1) + 8 * k);
            dispatch_group_enter(group);
            objc_msgSend_addObject_(v61, v83, v82);
            v86 = objc_msgSend_group(v82, v84, v85);
            dispatch_group_enter(v86);

            v89 = objc_msgSend_group(v82, v87, v88);
            v92 = objc_msgSend_queue(self, v90, v91);
            v261[0] = MEMORY[0x277D85DD0];
            v261[1] = 3221225472;
            v261[2] = sub_2251C37D0;
            v261[3] = &unk_278546990;
            v261[4] = self;
            v261[5] = v82;
            v262 = group;
            dispatch_group_notify(v89, v92, v261);
          }

          v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v238, v93, &v263, v280, 16);
        }

        while (v79);
      }

      objc_msgSend__uploadPackageSectionsWithPendingTasks_uploadingTasks_completedTasks_(self, v94, v61, obja, 0);
    }

    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v226 = objc_msgSend_assetRegisterAndPutBatches(self->_assetRequestPlanner, v45, v46, v224);
    v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v226, v95, &v257, v279, 16);
    if (v229)
    {
      v227 = *v258;
      do
      {
        for (m = 0; m != v229; ++m)
        {
          if (*v258 != v227)
          {
            objc_enumerationMutation(v226);
          }

          v231 = *(*(&v257 + 1) + 8 * m);
          v232 = objc_msgSend_allMMCSItems(v231, v96, v97);
          if (!objc_msgSend_count(v232, v98, v99))
          {
            goto LABEL_83;
          }

          isFailed = objc_msgSend_isFailed(v231, v100, v101);

          if (isFailed)
          {
            continue;
          }

          dispatch_group_enter(group);
          v103 = [CKDMMCSItemGroupSet alloc];
          v106 = objc_msgSend_allMMCSItems(v231, v104, v105);
          v232 = objc_msgSend_initWithItems_(v103, v107, v106);

          if (_os_feature_enabled_impl())
          {
            v110 = objc_msgSend_allMMCSItems(v231, v108, v109);
            v112 = objc_msgSend_CKFilter_(v110, v111, &unk_28385D4C0);

            if (objc_msgSend_count(v112, v113, v114))
            {
              objc_msgSend__didUploadMMCSItems_error_(self, v115, v112, 0);
              v255 = 0u;
              v256 = 0u;
              v253 = 0u;
              v254 = 0u;
              v117 = v112;
              v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v253, v278, 16);
              if (v121)
              {
                v122 = *v254;
                do
                {
                  for (n = 0; n != v121; ++n)
                  {
                    if (*v254 != v122)
                    {
                      objc_enumerationMutation(v117);
                    }

                    v126 = objc_msgSend_package(*(*(&v253 + 1) + 8 * n), v119, v120);
                    if (v126)
                    {
                      v127 = objc_msgSend_uploadTasksByPackages(self, v124, v125);
                      v129 = objc_msgSend_objectForKey_(v127, v128, v126);

                      v132 = objc_msgSend_group(v129, v130, v131);
                      dispatch_group_leave(v132);
                    }
                  }

                  v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v119, &v253, v278, 16);
                }

                while (v121);
              }
            }

            v133 = objc_msgSend_allMMCSItems(v231, v115, v116);
            v135 = objc_msgSend_CKFilter_(v133, v134, &unk_28385D4E0);

            if (!objc_msgSend_count(v135, v136, v137))
            {
              goto LABEL_82;
            }

            v138 = [CKDMMCSItemGroupSet alloc];
            v140 = objc_msgSend_initWithItems_(v138, v139, v135);

            v232 = v140;
          }

          v141 = objc_msgSend_assetZone(v231, v108, v109);
          v144 = objc_msgSend_assetZoneKey(v141, v142, v143);
          v147 = objc_msgSend_cloneContext(v144, v145, v146);
          objc_msgSend_setCloneContext_(v232, v148, v147);

          v151 = objc_msgSend_itemsGroups(v232, v149, v150);
          if (objc_msgSend_count(v151, v152, v153) != 1)
          {
            __assert_rtn("[CKDUploadAssetsOperation _upload]", "CKDUploadAssetsOperation.m", 1470, "putItemGroupSet.itemsGroups.count == 1");
          }

          v112 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v251 = 0u;
          v252 = 0u;
          v249 = 0u;
          v250 = 0u;
          v233 = objc_msgSend_itemsGroups(v232, v154, v155);
          v239 = objc_msgSend_countByEnumeratingWithState_objects_count_(v233, v156, &v249, v277, 16);
          if (v239)
          {
            objb = *v250;
            do
            {
              for (ii = 0; ii != v239; ii = ii + 1)
              {
                if (*v250 != objb)
                {
                  objc_enumerationMutation(v233);
                }

                v160 = *(*(&v249 + 1) + 8 * ii);
                v245 = 0u;
                v246 = 0u;
                v247 = 0u;
                v248 = 0u;
                v161 = objc_msgSend_items(v160, v157, v158);
                v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v162, &v245, v276, 16);
                if (v165)
                {
                  v166 = *v246;
                  do
                  {
                    for (jj = 0; jj != v165; ++jj)
                    {
                      if (*v246 != v166)
                      {
                        objc_enumerationMutation(v161);
                      }

                      v168 = objc_msgSend_recordID(*(*(&v245 + 1) + 8 * jj), v163, v164);
                      v171 = objc_msgSend_zoneID(v168, v169, v170);
                      v174 = objc_msgSend_zoneName(v171, v172, v173);

                      if (v174)
                      {
                        objc_msgSend_addObject_(v112, v175, v174);
                      }
                    }

                    v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v163, &v245, v276, 16);
                  }

                  while (v165);
                }
              }

              v239 = objc_msgSend_countByEnumeratingWithState_objects_count_(v233, v157, &v249, v277, 16);
            }

            while (v239);
          }

          v176 = [CKDMMCSRequestOptions alloc];
          v135 = objc_msgSend_initWithOperation_(v176, v177, self);
          v180 = objc_msgSend_allObjects(v112, v178, v179);
          objc_msgSend_setZoneNames_(v135, v181, v180);

          v184 = objc_msgSend_assetZone(v231, v182, v183);
          v187 = objc_msgSend_assetZoneKey(v184, v185, v186);

          v190 = objc_msgSend_useMMCSEncryptionV2(v187, v188, v189);
          v193 = objc_msgSend_BOOLValue(v190, v191, v192);

          v196 = objc_msgSend_cloneContext(v187, v194, v195);
          v197 = v196 != 0;

          if ((v197 & v193 & 1) == 0)
          {
            v200 = objc_msgSend_authPutResponse(v231, v198, v199);
            objc_msgSend_setAuthPutResponse_(v135, v201, v200);
          }

          if (v193)
          {
            objc_msgSend_setUseFORD_(v135, v198, 1);
          }

          v202 = objc_msgSend_authPutResponseHeaders(v231, v198, v199);
          objc_msgSend_setAuthPutResponseHeaders_(v135, v203, v202);

          shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v204, v205);
          objc_msgSend_setShouldCloneFileInAssetCache_(v135, v207, shouldCloneFileInAssetCache);
          objc_initWeak(location, self);
          v243[0] = MEMORY[0x277D85DD0];
          v243[1] = 3221225472;
          v243[2] = sub_2251C3880;
          v243[3] = &unk_278548F60;
          objc_copyWeak(&v244, location);
          v241[0] = MEMORY[0x277D85DD0];
          v241[1] = 3221225472;
          v241[2] = sub_2251C38DC;
          v241[3] = &unk_278548E78;
          v241[4] = self;
          v241[5] = v231;
          v242 = group;
          v209 = objc_msgSend_putItemGroupSet_operation_options_progress_completionHandler_(v225, v208, v232, self, v135, v243, v241);
          v212 = objc_msgSend_cancelTokens(self, v210, v211);
          objc_msgSend_addCancelToken_withOperation_(v212, v213, v209, self);

          objc_destroyWeak(&v244);
          objc_destroyWeak(location);

LABEL_82:
LABEL_83:
        }

        v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v226, v96, &v257, v279, 16);
      }

      while (v229);
    }

    dispatch_group_leave(group);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v214 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v216 = v214;
      v219 = objc_msgSend_operationID(self, v217, v218);
      *location = 138543362;
      *&location[4] = v219;
      _os_log_debug_impl(&dword_22506F000, v216, OS_LOG_TYPE_DEBUG, "No files or packages to upload for operation %{public}@", location, 0xCu);
    }
  }

  return hasSuccessfulBatches;
}

- (void)_removePackageManifests
{
  v56 = *MEMORY[0x277D85DE8];
  v44 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = objc_msgSend_assetsToUpload(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v47, v55, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v48;
    *&v9 = 138543618;
    v42 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v47 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          v18 = objc_msgSend_manifestItem(v15, v16, v17);
          v21 = v18;
          if (v18)
          {
            v22 = MEMORY[0x277CCABB0];
            v23 = objc_msgSend_itemID(v18, v19, v20);
            v25 = objc_msgSend_numberWithUnsignedLongLong_(v22, v24, v23);
            objc_msgSend_addObject_(v45, v26, v25);

            v30 = objc_msgSend_fileURL(v21, v27, v28);
            if (v30)
            {
              v46 = 0;
              v31 = objc_msgSend_removeItemAtURL_error_(v44, v29, v30, &v46);
              v32 = v46;
              v33 = *MEMORY[0x277CBC878];
              if (v31)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v33);
                }

                v34 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                {
                  v35 = v34;
                  v43 = objc_msgSend_path(v30, v36, v37);
                  *buf = 138543362;
                  v52 = v43;
                  _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Removed package manifest at %{public}@", buf, 0xCu);
                  goto LABEL_23;
                }
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v33);
                }

                v38 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  v35 = v38;
                  v43 = objc_msgSend_path(v30, v39, v40);
                  *buf = v42;
                  v52 = v43;
                  v53 = 2112;
                  v54 = v32;
                  _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Failed to remove package manifest at %{public}@: %@", buf, 0x16u);
LABEL_23:
                }
              }
            }

            else
            {
              v32 = 0;
            }

            objc_msgSend_setManifestItem_(v15, v29, 0, v42);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v47, v55, 16);
      v10 = v41;
    }

    while (v41);
  }
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CKDUploadAssetsOperation;
  [(CKDOperation *)&v8 cancel];
  v5 = objc_msgSend_cancelTokens(self, v3, v4);
  objc_msgSend_cancel(v5, v6, v7);
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  objc_msgSend__removePackageManifests(self, v5, v6);
  v9 = objc_msgSend_cancelTokens(self, v7, v8);
  objc_msgSend_removeAllCancelTokens(v9, v10, v11);

  v12.receiver = self;
  v12.super_class = CKDUploadAssetsOperation;
  [(CKDOperation *)&v12 finishWithError:errorCopy];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  objc_msgSend_setUploadPreparationBlock_(self, v7, 0);
  objc_msgSend_setUploadProgressBlock_(self, v8, 0);
  objc_msgSend_setUploadCompletionBlock_(self, v9, 0);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_MMCS(v12, v13, v14);
  objc_msgSend_performOperationCleanup(v15, v16, v17);

  v18.receiver = self;
  v18.super_class = CKDUploadAssetsOperation;
  [(CKDOperation *)&v18 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  v6 = objc_msgSend_container(self, v4, v5);
  v17 = 0;
  v8 = objc_msgSend_setupAssetTransfers_(v6, v7, &v17);
  v9 = v17;

  if (v8)
  {
    v12 = objc_msgSend_assetsToUpload(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14) == 0;

    objc_msgSend_makeStateTransition_(self, v16, v15);
  }

  else
  {
    objc_msgSend_finishWithError_(self, v10, v9);
  }
}

@end