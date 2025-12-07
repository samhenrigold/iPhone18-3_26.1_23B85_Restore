@interface CKDMMCSItemGroupContext
+ (MMCSItemReaderWriter)getMMCSItemReaderForItemID:(unint64_t)d MMCS:(id)s itemGroupContext:(id)context downloadChunkContext:(id)chunkContext error:(id *)error;
- (BOOL)_setupGetMMCSItemsWithError:(id *)error;
- (BOOL)_setupMMCSItemsWithError:(id *)error;
- (BOOL)_setupPutMMCSItemsWithError:(id *)error;
- (BOOL)_setupRegisterMMCSItemsWithError:(id *)error;
- (BOOL)shouldFetchAssetContentInMemory;
- (BOOL)shouldFetchAssetContentUsingAssetDownloadStagingManager;
- (BOOL)shouldFetchAssetContentWithReaderWriter;
- (BOOL)willOpenItemReaderWriter:(id)writer error:(id *)error;
- (CKDMMCSItemGroupContext)initWithMMCS:(id)s itemGroup:(id)group operation:(id)operation progress:(id)progress command:(id)command start:(id)start groupCompletion:(id)completion;
- (id)findTrackedMMCSItemByItemID:(unint64_t)d;
- (id)getCKDMMCSItemReaderByPathForMMCSItem:(id)item error:(id *)error;
- (void)_cleanupMMCSItems;
- (void)_cleanupMMCSRegisterItems;
- (void)_startTrackingMMCSItems:(id)items;
- (void)_stopTrackingMMCSItems:(id)items;
- (void)cancel;
- (void)didCompleteRequestWithError:(id)error;
- (void)didGetItemID:(unint64_t)d signature:(id)signature path:(id)path error:(id)error results:(id)results;
- (void)didGetMetricsForRequest:(id)request;
- (void)didOpenItemReaderWriter:(id)writer result:(BOOL)result error:(id)error;
- (void)didPutItemID:(unint64_t)d signature:(id)signature results:(id)results;
- (void)didPutSectionWithSignature:(id)signature results:(id)results;
- (void)handleCommand:(id)command forItem:(id)item;
- (void)start;
- (void)updateProgressForItemID:(unint64_t)d state:(int)state progress:(double)progress error:(id)error;
- (void)updateProgressForItemID:(unint64_t)d state:(int)state progress:(double)progress results:(id)results;
- (void)updateProgressForPackageSectionState:(int)state progress:(double)progress results:(id)results;
@end

@implementation CKDMMCSItemGroupContext

- (CKDMMCSItemGroupContext)initWithMMCS:(id)s itemGroup:(id)group operation:(id)operation progress:(id)progress command:(id)command start:(id)start groupCompletion:(id)completion
{
  sCopy = s;
  groupCopy = group;
  operationCopy = operation;
  progressCopy = progress;
  commandCopy = command;
  startCopy = start;
  completionCopy = completion;
  v47.receiver = self;
  v47.super_class = CKDMMCSItemGroupContext;
  v21 = [(CKDMMCSItemGroupContext *)&v47 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_MMCS, s);
    objc_storeStrong(&v22->_itemGroup, group);
    if (objc_msgSend_conformsToProtocol_(operationCopy, v23, &unk_283936550, groupCopy, sCopy))
    {
      objc_storeStrong(&v22->_conformingOperation, operation);
    }

    v24 = [CKDConcreteMMCSOperation alloc];
    v26 = objc_msgSend_initWithOperation_(v24, v25, operationCopy);
    operation = v22->_operation;
    v22->_operation = v26;

    v28 = _Block_copy(progressCopy);
    progressBlock = v22->_progressBlock;
    v22->_progressBlock = v28;

    v30 = _Block_copy(startCopy);
    startBlock = v22->_startBlock;
    v22->_startBlock = v30;

    v32 = _Block_copy(completionCopy);
    completionBlock = v22->_completionBlock;
    v22->_completionBlock = v32;

    v34 = _Block_copy(commandCopy);
    commandBlock = v22->_commandBlock;
    v22->_commandBlock = v34;

    v38 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v36, v37);
    MMCSItemsByItemID = v22->_MMCSItemsByItemID;
    v22->_MMCSItemsByItemID = v38;

    v40 = objc_alloc(MEMORY[0x277CBC6C0]);
    v42 = objc_msgSend_initWithLog_(v40, v41, *MEMORY[0x277CBC848]);
    signpost = v22->_signpost;
    v22->_signpost = v42;
  }

  return v22;
}

- (void)cancel
{
  v8 = objc_msgSend_MMCS(self, a2, v2);
  v6 = objc_msgSend_MMCSEngineContext(v8, v4, v5);
  objc_msgSend_cancelRequestWithContext_(v6, v7, self);
}

- (void)start
{
  v5 = objc_msgSend_signpost(self, a2, v2);

  if (v5)
  {
    v8 = objc_msgSend_signpost(self, v6, v7);
    v11 = objc_msgSend_log(v8, v9, v10);

    v14 = objc_msgSend_signpost(self, v12, v13);
    v17 = objc_msgSend_identifier(v14, v15, v16);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CKDMMCSItemGroupContext", "", buf, 2u);
    }
  }

  objc_msgSend_hash(self, v6, v7);
  kdebug_trace();
  v20 = objc_msgSend_MMCS(self, v18, v19);
  v23 = objc_msgSend_MMCSEngineContext(v20, v21, v22);

  if (!v23)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDMMCSItemGroupContext.m", 78, @"Expected non-nil MMCS engine context");
  }

  v26 = objc_msgSend_MMCS(self, v24, v25);
  v29 = objc_msgSend_MMCSEngineContext(v26, v27, v28);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_225137C28;
  v33[3] = &unk_278545A00;
  v33[4] = self;
  objc_msgSend_MMCSSerializeAsyncRecursive_(v29, v30, v33);
}

- (BOOL)shouldFetchAssetContentInMemory
{
  if (objc_msgSend_mmcsOperationType(self, a2, v2) != 2)
  {
    return 0;
  }

  v6 = objc_msgSend_operationInfo(self, v4, v5);
  v9 = objc_msgSend_destination(v6, v7, v8) == 1;

  return v9;
}

- (BOOL)shouldFetchAssetContentUsingAssetDownloadStagingManager
{
  if (objc_msgSend_mmcsOperationType(self, a2, v2) != 2)
  {
    return 0;
  }

  v6 = objc_msgSend_operationInfo(self, v4, v5);
  v9 = objc_msgSend_destination(v6, v7, v8) == 2;

  return v9;
}

- (BOOL)shouldFetchAssetContentWithReaderWriter
{
  if (objc_msgSend_mmcsOperationType(self, a2, v2) != 2)
  {
    return 0;
  }

  v6 = objc_msgSend_operationInfo(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_destination(v6, v7, v8) != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_startTrackingMMCSItems:(id)items
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v8 = objc_msgSend_MMCSItemsByItemID(self, v6, v7);
  objc_sync_enter(v8);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = itemsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if (!objc_msgSend_itemID(v16, v11, v12))
        {
          v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDMMCSItemGroupContext.m", 127, @"Expected non-nil itemID for %@", v16);
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = objc_msgSend_itemID(v16, v17, v18);
        v22 = objc_msgSend_numberWithUnsignedLongLong_(v19, v21, v20);
        objc_msgSend_setObject_forKey_(v8, v23, v16, v22);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v30, v34, 16);
    }

    while (v13);
  }

  objc_sync_exit(v8);
  v28 = objc_msgSend_MMCS(self, v26, v27);
  objc_msgSend_startTrackingItemIDsForMMCSItems_(v28, v29, v9);
}

- (void)_stopTrackingMMCSItems:(id)items
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v7 = objc_msgSend_MMCS(self, v5, v6);
  objc_msgSend_stopTrackingItemIDsForMMCSItems_(v7, v8, itemsCopy);

  v11 = objc_msgSend_MMCSItemsByItemID(self, v9, v10);
  objc_sync_enter(v11);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = itemsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v38, 16);
  if (v16)
  {
    v18 = MEMORY[0x277CBC880];
    v19 = *v33;
    v20 = MEMORY[0x277CBC830];
    *&v17 = 138412290;
    v31 = v17;
    do
    {
      v21 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v32 + 1) + 8 * v21);
        if (objc_msgSend_itemID(v22, v14, v15, v31, v32))
        {
          v25 = MEMORY[0x277CCABB0];
          v26 = objc_msgSend_itemID(v22, v23, v24);
          v28 = objc_msgSend_numberWithUnsignedLongLong_(v25, v27, v26);
          objc_msgSend_removeObjectForKey_(v11, v29, v28);
        }

        else
        {
          if (*v18 != -1)
          {
            dispatch_once(v18, *MEMORY[0x277CBC878]);
          }

          v30 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v37 = v22;
            _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "ignoring item with zero itemID in _stopTrackingMMCSItems %@", buf, 0xCu);
          }
        }

        ++v21;
      }

      while (v16 != v21);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v32, v38, 16);
    }

    while (v16);
  }

  objc_sync_exit(v11);
}

- (id)findTrackedMMCSItemByItemID:(unint64_t)d
{
  v4 = objc_msgSend_MMCSItemsByItemID(self, a2, d);
  objc_sync_enter(v4);
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, d);
  v8 = objc_msgSend_objectForKey_(v4, v7, v6);

  objc_sync_exit(v4);

  return v8;
}

- (BOOL)_setupRegisterMMCSItemsWithError:(id *)error
{
  selfCopy = self;
  v315 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_MMCS(self, a2, error);
  if (!v8)
  {
    v285 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v285, v286, a2, selfCopy, @"CKDMMCSItemGroupContext.m", 159, @"Expected non-nil MMCS engine wrapper for %@", selfCopy);
  }

  v9 = objc_msgSend_assetCache(v8, v6, v7);

  if (!v9)
  {
    v287 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v287, v288, a2, selfCopy, @"CKDMMCSItemGroupContext.m", 160, @"Expected non-nil asset cache for %@", v8);
  }

  v12 = objc_msgSend_itemGroup(selfCopy, v10, v11);
  v15 = objc_msgSend_items(v12, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  v291 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = objc_msgSend_initWithCapacity_(v19, v20, v18);
  v22 = objc_alloc(MEMORY[0x277CBEB18]);
  v24 = objc_msgSend_initWithCapacity_(v22, v23, v18);
  if (objc_msgSend_mmcsOperationType(selfCopy, v25, v26) != 5 && objc_msgSend_mmcsOperationType(selfCopy, v27, v28) != 6)
  {
    __assert_rtn("[CKDMMCSItemGroupContext _setupRegisterMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 169, "isRegister && isRegister");
  }

  errorCopy = error;
  v295 = v24;
  v290 = v8;
  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  v29 = objc_msgSend_itemGroup(selfCopy, v27, v28);
  v32 = objc_msgSend_items(v29, v30, v31);

  obj = v32;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v305, v314, 16);
  v293 = selfCopy;
  v296 = v21;
  if (v34)
  {
    v37 = v34;
    v38 = 0;
    v39 = *v306;
    v292 = *v306;
    while (1)
    {
      v40 = 0;
      do
      {
        if (*v306 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v305 + 1) + 8 * v40);
        if (objc_msgSend_itemID(v41, v35, v36))
        {
          objc_msgSend_addObject_(v21, v42, v41);
          goto LABEL_69;
        }

        v44 = objc_msgSend_sectionItems(v41, v42, v43);
        v47 = objc_msgSend_count(v44, v45, v46);

        if (v47)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v50 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v311 = v41;
            _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "setting up a package section? %@", buf, 0xCu);
          }
        }

        objc_msgSend_clearFileSize(v41, v48, v49);
        objc_msgSend_setSignature_(v41, v51, 0);
        v52 = objc_autoreleasePoolPush();
        v304 = v38;
        v54 = objc_msgSend_getCKDMMCSItemReaderByPathForMMCSItem_error_(selfCopy, v53, v41, &v304);
        v55 = v304;

        if (v54)
        {
          v303 = v55;
          v57 = objc_msgSend_openWithError_(v54, v56, &v303);
          v38 = v303;

          if (v57)
          {
            v302 = v38;
            v59 = objc_msgSend_getFileMetadataWithError_(v54, v58, &v302);
            v60 = v302;

            if (v59)
            {
              v63 = objc_msgSend_deviceID(v59, v61, v62);
              objc_msgSend_setDeviceID_(v41, v64, v63);

              v67 = objc_msgSend_fileID(v59, v65, v66);
              objc_msgSend_setFileID_(v41, v68, v67);

              v71 = objc_msgSend_generationID(v59, v69, v70);
              objc_msgSend_setGenerationID_(v41, v72, v71);

              v75 = objc_msgSend_modTimeInSeconds(v59, v73, v74);
              objc_msgSend_setModTimeInSeconds_(v41, v76, v75);

              v79 = objc_msgSend_fileSize(v59, v77, v78);
              v82 = objc_msgSend_unsignedLongLongValue(v79, v80, v81);
              objc_msgSend_setFileSize_(v41, v83, v82);
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v88 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v311 = v41;
                v312 = 2112;
                v313 = v60;
                _os_log_error_impl(&dword_22506F000, v88, OS_LOG_TYPE_ERROR, "Unable to get info for %@: %@", buf, 0x16u);
              }

              v79 = v60;
              v60 = 0;
            }

            v301 = v60;
            v90 = objc_msgSend_closeWithError_(v54, v89, &v301);
            v38 = v301;

            if (v90)
            {
              v39 = v292;
              selfCopy = v293;
              v21 = v296;
              goto LABEL_46;
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            selfCopy = v293;
            v91 = *MEMORY[0x277CBC830];
            v21 = v296;
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v311 = v41;
              v312 = 2112;
              v313 = v38;
              _os_log_error_impl(&dword_22506F000, v91, OS_LOG_TYPE_ERROR, "Unable to close for %@: %@", buf, 0x16u);
            }

            v39 = v292;
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v39 = v292;
            v87 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v311 = v41;
              v312 = 2112;
              v313 = v38;
              _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Unable to open for %@: %@", buf, 0x16u);
            }

            v59 = 0;
          }

          v38 = 0;
LABEL_46:

          objc_autoreleasePoolPop(v52);
          if (v59)
          {
            v92 = objc_msgSend_deviceID(v59, v85, v86);
            objc_msgSend_setDeviceID_(v41, v93, v92);

            v96 = objc_msgSend_fileID(v59, v94, v95);
            objc_msgSend_setFileID_(v41, v97, v96);

            v100 = objc_msgSend_generationID(v59, v98, v99);
            objc_msgSend_setGenerationID_(v41, v101, v100);

            v104 = objc_msgSend_modTimeInSeconds(v59, v102, v103);
            objc_msgSend_setModTimeInSeconds_(v41, v105, v104);

            v108 = objc_msgSend_fileSize(v59, v106, v107);
            v111 = objc_msgSend_unsignedLongLongValue(v108, v109, v110);
            objc_msgSend_setFileSize_(v41, v112, v111);
          }

          goto LABEL_48;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v84 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v311 = v41;
          v312 = 2112;
          v313 = v55;
          _os_log_error_impl(&dword_22506F000, v84, OS_LOG_TYPE_ERROR, "Unable to open reader for %@: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v52);
        v38 = 0;
        v59 = 0;
LABEL_48:
        if (!objc_msgSend_shouldReadAssetContentUsingClientProxy(v41, v85, v86))
        {
          v121 = [CKDAssetHandle alloc];
          v123 = objc_msgSend_initWithItemID_UUID_path_(v121, v122, 0, 0, 0);
          if ((objc_msgSend_shouldReadRawEncryptedData(v41, v124, v125) & 1) == 0)
          {
            v128 = objc_msgSend_deviceID(v41, v126, v127);
            if (!objc_msgSend_unsignedLongLongValue(v128, v129, v130))
            {

              goto LABEL_55;
            }

            v133 = objc_msgSend_fileID(v41, v131, v132);
            v136 = objc_msgSend_unsignedLongLongValue(v133, v134, v135);

            if (!v136)
            {
LABEL_55:
              v139 = objc_msgSend_fileURL(v41, v137, v138);
              v142 = objc_msgSend_path(v139, v140, v141);
              objc_msgSend_setPath_(v123, v143, v142);
            }

            v144 = objc_msgSend_MMCS(v293, v137, v138);
            v147 = objc_msgSend_assetCache(v144, v145, v146);
            v150 = objc_msgSend_deviceID(v41, v148, v149);
            v152 = objc_msgSend_volumeIndexForDeviceID_(v147, v151, v150);
            objc_msgSend_setVolumeIndex_(v123, v153, v152);

            v156 = objc_msgSend_fileID(v41, v154, v155);
            objc_msgSend_setFileID_(v123, v157, v156);

            v160 = objc_msgSend_generationID(v41, v158, v159);
            objc_msgSend_setGenerationID_(v123, v161, v160);

            v164 = objc_msgSend_signature(v41, v162, v163);
            objc_msgSend_setFileSignature_(v123, v165, v164);

            v166 = MEMORY[0x277CBEAA8];
            v169 = objc_msgSend_modTimeInSeconds(v41, v167, v168);
            objc_msgSend_doubleValue(v169, v170, v171);
            v174 = objc_msgSend_dateWithTimeIntervalSince1970_(v166, v172, v173);
            objc_msgSend_setModTime_(v123, v175, v174);

            v39 = v292;
          }

          v176 = MEMORY[0x277CCABB0];
          v177 = objc_msgSend_fileSize(v41, v126, v127);
          v179 = objc_msgSend_numberWithUnsignedLongLong_(v176, v178, v177);
          objc_msgSend_setFileSize_(v123, v180, v179);

          v183 = objc_msgSend_fileSignature(v123, v181, v182);

          if (v183)
          {
            v186 = objc_msgSend_fileSignature(v123, v184, v185);
            v189 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v187, v188);
            isEqualToData = objc_msgSend_isEqualToData_(v186, v190, v189);

            if ((isEqualToData & 1) != 0 || (objc_msgSend_fileSize(v123, v184, v185), v192 = objc_claimAutoreleasedReturnValue(), v195 = objc_msgSend_unsignedLongLongValue(v192, v193, v194), v192, !v195))
            {
              v196 = MEMORY[0x277CBC6A8];
              v197 = objc_msgSend_fileSignature(v123, v184, v185);
              LODWORD(v196) = objc_msgSend_isValidV2Signature_(v196, v198, v197);

              if (((v196 | isEqualToData) & 1) == 0)
              {
                __assert_rtn("[CKDMMCSItemGroupContext _setupRegisterMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 266, "isZeroFileSignature && Expected zeroSizeFileSignature");
              }

              if ((isEqualToData & 1) == 0)
              {
                __assert_rtn("[CKDMMCSItemGroupContext _setupRegisterMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 268, "isZeroFileSignature && Expected zeroSizeFileSignature");
              }

              v201 = objc_msgSend_fileSize(v123, v199, v200);
              if (objc_msgSend_unsignedLongLongValue(v201, v202, v203))
              {
                __assert_rtn("[CKDMMCSItemGroupContext _setupRegisterMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 269, "assetHandle.fileSize.unsignedLongLongValue == 0 && assetHandle.fileSize.unsignedLongLongValue == 0");
              }

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v204 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v311 = v41;
                _os_log_debug_impl(&dword_22506F000, v204, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %@", buf, 0xCu);
              }
            }
          }

          v205 = objc_msgSend_boundaryKey(v41, v184, v185);
          objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v123, v206, v205);

          objc_msgSend_addObject_(v295, v207, v123);
          objc_msgSend_addObject_(v291, v208, v41);

          selfCopy = v293;
          v21 = v296;
          goto LABEL_68;
        }

        v115 = objc_msgSend_MMCSEngineContext(v290, v113, v114);
        AvailableItemID = objc_msgSend_nextAvailableItemID(v115, v116, v117);
        objc_msgSend_setItemID_(v41, v119, AvailableItemID);

        objc_msgSend_addObject_(v21, v120, v41);
LABEL_68:

LABEL_69:
        ++v40;
      }

      while (v37 != v40);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v305, v314, 16);
      if (!v37)
      {
        goto LABEL_73;
      }
    }
  }

  v38 = 0;
LABEL_73:

  v209 = v295;
  if (objc_msgSend_count(v295, v210, v211) && (objc_msgSend_assetCache(v290, v212, v213), v214 = objc_claimAutoreleasedReturnValue(), v217 = objc_msgSend_mmcsOperationType(selfCopy, v215, v216), started = objc_msgSend_startTrackingRegisterOrPutAssetHandles_operationType_error_(v214, v218, v295, v217, errorCopy), v214, !started))
  {
    v283 = 0;
  }

  else
  {
    v299 = 0u;
    v300 = 0u;
    v297 = 0u;
    v298 = 0u;
    v220 = v291;
    v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v221, &v297, v309, 16);
    if (v222)
    {
      v224 = v222;
      v225 = 0;
      v226 = *v298;
      do
      {
        for (i = 0; i != v224; ++i)
        {
          if (*v298 != v226)
          {
            objc_enumerationMutation(v220);
          }

          v228 = *(*(&v297 + 1) + 8 * i);
          v229 = objc_msgSend_objectAtIndexedSubscript_(v209, v223, v225);
          v232 = objc_msgSend_itemID(v229, v230, v231);
          v235 = objc_msgSend_unsignedLongLongValue(v232, v233, v234);
          objc_msgSend_setItemID_(v228, v236, v235);

          v241 = objc_msgSend_status(v229, v237, v238);
          if (v241)
          {
            v242 = objc_msgSend_status(v229, v239, v240);
            v245 = objc_msgSend_unsignedIntegerValue(v242, v243, v244) == 2;
            objc_msgSend_setIsAlreadyRegistered_(v228, v246, v245);
          }

          else
          {
            objc_msgSend_setIsAlreadyRegistered_(v228, v239, 0);
          }

          if (objc_msgSend_isAlreadyRegistered(v228, v247, v248))
          {
            v251 = objc_msgSend_fileSize(v229, v249, v250);
            v254 = objc_msgSend_unsignedLongLongValue(v251, v252, v253);
            objc_msgSend_setFileSize_(v228, v255, v254);

            v258 = objc_msgSend_fileSignature(v229, v256, v257);
            objc_msgSend_setSignature_(v228, v259, v258);

            v262 = objc_msgSend_chunkCount(v229, v260, v261);
            v265 = objc_msgSend_unsignedIntValue(v262, v263, v264);
            objc_msgSend_setChunkCount_(v228, v266, v265);

            v269 = objc_msgSend_signature(v228, v267, v268);
            v272 = objc_msgSend_asset(v228, v270, v271);
            objc_msgSend_setSignature_(v272, v273, v269);

            v276 = objc_msgSend_fileSize(v228, v274, v275);
            v279 = objc_msgSend_asset(v228, v277, v278);
            objc_msgSend_setSize_(v279, v280, v276);
          }

          else
          {
            objc_msgSend_setIsReaderReadFrom_(v228, v249, 0);
          }

          v209 = v295;
          objc_msgSend_addObject_(v296, v281, v228);

          ++v225;
        }

        v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v223, &v297, v309, 16);
      }

      while (v224);
    }

    v21 = v296;
    objc_msgSend__startTrackingMMCSItems_(v293, v282, v296);
    v283 = 1;
  }

  return v283;
}

- (BOOL)_setupPutMMCSItemsWithError:(id *)error
{
  v243 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_MMCS(self, a2, error);
  if (!v8)
  {
    v221 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v221, v222, a2, self, @"CKDMMCSItemGroupContext.m", 310, @"Expected non-nil MMCS engine wrapper for %@", self);
  }

  v9 = objc_msgSend_assetCache(v8, v6, v7);

  if (!v9)
  {
    v223 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v223, v224, a2, self, @"CKDMMCSItemGroupContext.m", 311, @"Expected non-nil asset cache for %@", v8);
  }

  v12 = objc_msgSend_itemGroup(self, v10, v11);
  v15 = objc_msgSend_items(v12, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  v229 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = objc_msgSend_initWithCapacity_(v19, v20, v18);
  v22 = objc_alloc(MEMORY[0x277CBEB18]);
  v24 = objc_msgSend_initWithCapacity_(v22, v23, v18);
  if (objc_msgSend_mmcsOperationType(self, v25, v26) == 2 || objc_msgSend_mmcsOperationType(self, v27, v28) == 4)
  {
    __assert_rtn("[CKDMMCSItemGroupContext _setupPutMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 320, "!isGet && isGet");
  }

  errorCopy = error;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  selfCopy = self;
  v31 = objc_msgSend_itemGroup(self, v29, v30);
  v34 = objc_msgSend_items(v31, v32, v33);

  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v235, v242, 16);
  v226 = v8;
  v230 = v24;
  if (v36)
  {
    v39 = v36;
    v40 = *v236;
    v228 = v34;
    do
    {
      v41 = 0;
      do
      {
        if (*v236 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = *(*(&v235 + 1) + 8 * v41);
        if (objc_msgSend_itemID(v42, v37, v38))
        {
          goto LABEL_20;
        }

        v45 = objc_msgSend_sectionItems(v42, v43, v44);
        v48 = objc_msgSend_count(v45, v46, v47);

        if (v48)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v51 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v241 = v42;
            _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "setting up a package section? %@", buf, 0xCu);
          }
        }

        if (objc_msgSend_shouldReadAssetContentUsingClientProxy(v42, v49, v50))
        {
          v54 = objc_msgSend_MMCSEngineContext(v8, v52, v53);
          AvailableItemID = objc_msgSend_nextAvailableItemID(v54, v55, v56);
          objc_msgSend_setItemID_(v42, v58, AvailableItemID);

LABEL_20:
          objc_msgSend_addObject_(v21, v43, v42);
          goto LABEL_21;
        }

        v59 = [CKDAssetHandle alloc];
        v61 = objc_msgSend_initWithItemID_UUID_path_(v59, v60, 0, 0, 0);
        if ((objc_msgSend_shouldReadRawEncryptedData(v42, v62, v63) & 1) == 0)
        {
          v66 = objc_msgSend_deviceID(v42, v64, v65);
          if (objc_msgSend_unsignedLongLongValue(v66, v67, v68))
          {
            v71 = objc_msgSend_fileID(v42, v69, v70);
            v74 = objc_msgSend_unsignedLongLongValue(v71, v72, v73);

            if (!v74)
            {
LABEL_28:
              v77 = objc_msgSend_fileURL(v42, v75, v76);
              v80 = objc_msgSend_path(v77, v78, v79);
              objc_msgSend_setPath_(v61, v81, v80);
            }

            v82 = objc_msgSend_MMCS(selfCopy, v75, v76);
            v85 = objc_msgSend_assetCache(v82, v83, v84);
            v88 = objc_msgSend_deviceID(v42, v86, v87);
            v90 = objc_msgSend_volumeIndexForDeviceID_(v85, v89, v88);
            objc_msgSend_setVolumeIndex_(v61, v91, v90);

            v94 = objc_msgSend_fileID(v42, v92, v93);
            objc_msgSend_setFileID_(v61, v95, v94);

            v98 = objc_msgSend_generationID(v42, v96, v97);
            objc_msgSend_setGenerationID_(v61, v99, v98);

            v102 = objc_msgSend_signature(v42, v100, v101);
            objc_msgSend_setFileSignature_(v61, v103, v102);

            v104 = MEMORY[0x277CBEAA8];
            v107 = objc_msgSend_modTimeInSeconds(v42, v105, v106);
            objc_msgSend_doubleValue(v107, v108, v109);
            v112 = objc_msgSend_dateWithTimeIntervalSince1970_(v104, v110, v111);
            objc_msgSend_setModTime_(v61, v113, v112);

            v8 = v226;
            goto LABEL_30;
          }

          goto LABEL_28;
        }

LABEL_30:
        v114 = MEMORY[0x277CCABB0];
        v115 = objc_msgSend_fileSize(v42, v64, v65);
        v117 = objc_msgSend_numberWithUnsignedLongLong_(v114, v116, v115);
        objc_msgSend_setFileSize_(v61, v118, v117);

        v121 = objc_msgSend_fileSignature(v61, v119, v120);

        if (v121)
        {
          v124 = objc_msgSend_fileSignature(v61, v122, v123);
          v127 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v125, v126);
          isEqualToData = objc_msgSend_isEqualToData_(v124, v128, v127);

          if ((isEqualToData & 1) != 0 || (objc_msgSend_fileSize(v61, v122, v123), v130 = objc_claimAutoreleasedReturnValue(), v133 = objc_msgSend_unsignedLongLongValue(v130, v131, v132), v130, !v133))
          {
            v134 = MEMORY[0x277CBC6A8];
            v135 = objc_msgSend_fileSignature(v61, v122, v123);
            LODWORD(v134) = objc_msgSend_isValidV2Signature_(v134, v136, v135);

            if (((v134 | isEqualToData) & 1) == 0)
            {
              __assert_rtn("[CKDMMCSItemGroupContext _setupPutMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 358, "isZeroFileSignature && Expected zeroSizeFileSignature");
            }

            v139 = objc_msgSend_fileSize(v61, v137, v138);
            if (objc_msgSend_unsignedLongLongValue(v139, v140, v141))
            {
              __assert_rtn("[CKDMMCSItemGroupContext _setupPutMMCSItemsWithError:]", "CKDMMCSItemGroupContext.m", 360, "assetHandle.fileSize.unsignedLongLongValue == 0 && assetHandle.fileSize.unsignedLongLongValue == 0");
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v142 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v241 = v42;
              _os_log_debug_impl(&dword_22506F000, v142, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %@", buf, 0xCu);
            }
          }
        }

        v143 = objc_msgSend_boundaryKey(v42, v122, v123);
        objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v61, v144, v143);

        v24 = v230;
        objc_msgSend_addObject_(v230, v145, v61);
        objc_msgSend_addObject_(v229, v146, v42);

        v34 = v228;
LABEL_21:
        ++v41;
      }

      while (v39 != v41);
      v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v235, v242, 16);
      v39 = v147;
    }

    while (v147);
  }

  if (!objc_msgSend_count(v24, v148, v149) || (objc_msgSend_assetCache(v8, v150, v151), v152 = objc_claimAutoreleasedReturnValue(), v155 = objc_msgSend_mmcsOperationType(selfCopy, v153, v154), started = objc_msgSend_startTrackingRegisterOrPutAssetHandles_operationType_error_(v152, v156, v24, v155, errorCopy), v152, started))
  {
    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    v158 = v229;
    v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v231, v239, 16);
    if (v160)
    {
      v162 = v160;
      v163 = 0;
      v164 = *v232;
      do
      {
        for (i = 0; i != v162; ++i)
        {
          if (*v232 != v164)
          {
            objc_enumerationMutation(v158);
          }

          v166 = *(*(&v231 + 1) + 8 * i);
          v167 = objc_msgSend_objectAtIndexedSubscript_(v230, v161, v163);
          v170 = objc_msgSend_itemID(v167, v168, v169);
          v173 = objc_msgSend_unsignedLongLongValue(v170, v171, v172);
          objc_msgSend_setItemID_(v166, v174, v173);

          v179 = objc_msgSend_status(v167, v175, v176);
          if (v179)
          {
            v180 = objc_msgSend_status(v167, v177, v178);
            v183 = objc_msgSend_unsignedIntegerValue(v180, v181, v182) == 2;
            objc_msgSend_setIsAlreadyRegistered_(v166, v184, v183);
          }

          else
          {
            objc_msgSend_setIsAlreadyRegistered_(v166, v177, 0);
          }

          if (objc_msgSend_isAlreadyRegistered(v166, v185, v186))
          {
            v189 = objc_msgSend_fileSize(v167, v187, v188);
            v192 = objc_msgSend_unsignedLongLongValue(v189, v190, v191);
            objc_msgSend_setFileSize_(v166, v193, v192);

            v196 = objc_msgSend_fileSignature(v167, v194, v195);
            objc_msgSend_setSignature_(v166, v197, v196);

            v200 = objc_msgSend_chunkCount(v167, v198, v199);
            v203 = objc_msgSend_unsignedIntValue(v200, v201, v202);
            objc_msgSend_setChunkCount_(v166, v204, v203);

            v207 = objc_msgSend_signature(v166, v205, v206);
            v210 = objc_msgSend_asset(v166, v208, v209);
            objc_msgSend_setSignature_(v210, v211, v207);

            v214 = objc_msgSend_fileSize(v166, v212, v213);
            v217 = objc_msgSend_asset(v166, v215, v216);
            objc_msgSend_setSize_(v217, v218, v214);
          }

          objc_msgSend_addObject_(v21, v187, v166);

          ++v163;
        }

        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v161, &v231, v239, 16);
      }

      while (v162);
    }

    objc_msgSend__startTrackingMMCSItems_(selfCopy, v219, v21);
    LOBYTE(started) = 1;
    v8 = v226;
    v24 = v230;
  }

  return started;
}

- (BOOL)_setupGetMMCSItemsWithError:(id *)error
{
  v260 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_MMCS(self, a2, error);
  v9 = objc_msgSend_itemGroup(self, v7, v8);
  v12 = objc_msgSend_items(v9, v10, v11);
  v15 = objc_msgSend_count(v12, v13, v14);

  if (objc_msgSend_shouldFetchAssetContentInMemory(self, v16, v17))
  {
    v20 = objc_msgSend_itemGroup(self, v18, v19);
    v23 = objc_msgSend_items(v20, v21, v22);
    v26 = objc_msgSend_copy(v23, v24, v25);

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v29 = objc_msgSend_itemGroup(self, v27, v28);
    v32 = objc_msgSend_items(v29, v30, v31);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v251, v259, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v252;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v252 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = *(*(&v251 + 1) + 8 * i);
          if (!objc_msgSend_itemID(v40, v35, v36))
          {
            v41 = objc_msgSend_MMCSEngineContext(v6, v35, v36);
            AvailableItemID = objc_msgSend_nextAvailableItemID(v41, v42, v43);
            objc_msgSend_setItemID_(v40, v45, AvailableItemID);
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v251, v259, 16);
      }

      while (v37);
    }

    v46 = v26;
    objc_msgSend__startTrackingMMCSItems_(self, v47, v26);
    LOBYTE(AssetHandles_operationType_error) = 1;
    goto LABEL_57;
  }

  if (!v6)
  {
    v233 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v233, v234, a2, self, @"CKDMMCSItemGroupContext.m", 410, @"Expected non-nil MMCS engine wrapper for %@", self);
  }

  errorCopy = error;
  v49 = objc_msgSend_assetCache(v6, v18, v19);

  if (!v49)
  {
    v235 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v50, v51);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v235, v236, a2, self, @"CKDMMCSItemGroupContext.m", 411, @"Expected non-nil asset cache for %@", v6);
  }

  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  v54 = objc_msgSend_initWithCapacity_(v52, v53, v15);
  v55 = objc_alloc(MEMORY[0x277CBEB18]);
  v57 = objc_msgSend_initWithCapacity_(v55, v56, v15);
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  selfCopy = self;
  v60 = objc_msgSend_itemGroup(self, v58, v59);
  v63 = objc_msgSend_items(v60, v61, v62);

  obj = v63;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v247, v258, 16);
  v238 = v46;
  v239 = v6;
  v242 = v57;
  if (v65)
  {
    v68 = v65;
    v69 = *v248;
    do
    {
      v70 = 0;
      do
      {
        if (*v248 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v71 = *(*(&v247 + 1) + 8 * v70);
        if (objc_msgSend_itemID(v71, v66, v67))
        {
          goto LABEL_24;
        }

        v74 = objc_msgSend_constructedAssetDownloadURL(v71, v72, v73);

        if (v74)
        {
          v77 = objc_msgSend_MMCSEngineContext(v6, v75, v76);
          v80 = objc_msgSend_nextAvailableItemID(v77, v78, v79);
          objc_msgSend_setItemID_(v71, v81, v80);

          v84 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v82, v83);
          v87 = objc_msgSend_UUIDString(v84, v85, v86);
          objc_msgSend_setTrackingUUID_(v71, v88, v87);

LABEL_24:
          objc_msgSend_addObject_(v54, v72, v71);
          goto LABEL_25;
        }

        v89 = objc_msgSend_sectionItems(v71, v75, v76);
        v92 = objc_msgSend_count(v89, v90, v91);

        if (v92)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v93 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v257 = v71;
            _os_log_error_impl(&dword_22506F000, v93, OS_LOG_TYPE_ERROR, "setting up a package section? %@", buf, 0xCu);
          }
        }

        v94 = [CKDAssetHandle alloc];
        v96 = objc_msgSend_initWithItemID_UUID_path_(v94, v95, 0, 0, 0);
        if ((objc_msgSend_shouldReadRawEncryptedData(v71, v97, v98) & 1) == 0)
        {
          v101 = objc_msgSend_deviceID(v71, v99, v100);
          if (objc_msgSend_unsignedLongLongValue(v101, v102, v103))
          {
            v106 = objc_msgSend_fileID(v71, v104, v105);
            v109 = objc_msgSend_unsignedLongLongValue(v106, v107, v108);

            if (!v109)
            {
LABEL_37:
              v112 = objc_msgSend_fileURL(v71, v110, v111);
              v115 = objc_msgSend_path(v112, v113, v114);
              objc_msgSend_setPath_(v96, v116, v115);
            }

            v117 = objc_msgSend_MMCS(selfCopy, v110, v111);
            v120 = objc_msgSend_assetCache(v117, v118, v119);
            v123 = objc_msgSend_deviceID(v71, v121, v122);
            v125 = objc_msgSend_volumeIndexForDeviceID_(v120, v124, v123);
            objc_msgSend_setVolumeIndex_(v96, v126, v125);

            v129 = objc_msgSend_fileID(v71, v127, v128);
            objc_msgSend_setFileID_(v96, v130, v129);

            v133 = objc_msgSend_generationID(v71, v131, v132);
            objc_msgSend_setGenerationID_(v96, v134, v133);

            v137 = objc_msgSend_signature(v71, v135, v136);
            objc_msgSend_setFileSignature_(v96, v138, v137);

            v139 = MEMORY[0x277CBEAA8];
            v142 = objc_msgSend_modTimeInSeconds(v71, v140, v141);
            objc_msgSend_doubleValue(v142, v143, v144);
            v147 = objc_msgSend_dateWithTimeIntervalSince1970_(v139, v145, v146);
            objc_msgSend_setModTime_(v96, v148, v147);

            v46 = v238;
            v6 = v239;
            goto LABEL_39;
          }

          goto LABEL_37;
        }

LABEL_39:
        v149 = objc_msgSend_boundaryKey(v71, v99, v100);
        objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v96, v150, v149);

        v57 = v242;
        objc_msgSend_addObject_(v242, v151, v96);
        objc_msgSend_addObject_(v46, v152, v71);

LABEL_25:
        ++v70;
      }

      while (v68 != v70);
      v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v247, v258, 16);
      v68 = v153;
    }

    while (v153);
  }

  if (!objc_msgSend_count(v57, v154, v155) || (objc_msgSend_assetCache(v6, v156, v157), v158 = objc_claimAutoreleasedReturnValue(), v161 = objc_msgSend_mmcsOperationType(selfCopy, v159, v160), AssetHandles_operationType_error = objc_msgSend_startTrackingGetAssetHandles_operationType_error_(v158, v162, v242, v161, errorCopy), v158, v57 = v242, AssetHandles_operationType_error))
  {
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v163 = v46;
    v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v164, &v243, v255, 16);
    if (v165)
    {
      v167 = v165;
      v168 = 0;
      v169 = *v244;
      do
      {
        for (j = 0; j != v167; ++j)
        {
          if (*v244 != v169)
          {
            objc_enumerationMutation(v163);
          }

          v171 = *(*(&v243 + 1) + 8 * j);
          v172 = objc_msgSend_objectAtIndexedSubscript_(v57, v166, v168);
          v175 = objc_msgSend_UUID(v172, v173, v174);
          v178 = objc_msgSend_UUIDString(v175, v176, v177);
          objc_msgSend_setTrackingUUID_(v171, v179, v178);

          v182 = objc_msgSend_itemID(v172, v180, v181);
          v185 = objc_msgSend_unsignedLongLongValue(v182, v183, v184);
          objc_msgSend_setItemID_(v171, v186, v185);

          v191 = objc_msgSend_status(v172, v187, v188);
          if (v191)
          {
            v192 = objc_msgSend_status(v172, v189, v190);
            v195 = objc_msgSend_unsignedIntegerValue(v192, v193, v194) == 2;
            objc_msgSend_setIsAlreadyRegistered_(v171, v196, v195);
          }

          else
          {
            objc_msgSend_setIsAlreadyRegistered_(v171, v189, 0);
          }

          if (objc_msgSend_isAlreadyRegistered(v171, v197, v198))
          {
            v201 = objc_msgSend_fileSize(v172, v199, v200);
            v204 = objc_msgSend_unsignedLongLongValue(v201, v202, v203);
            objc_msgSend_setFileSize_(v171, v205, v204);

            v208 = objc_msgSend_fileSignature(v172, v206, v207);
            objc_msgSend_setSignature_(v171, v209, v208);

            v212 = objc_msgSend_chunkCount(v172, v210, v211);
            v215 = objc_msgSend_unsignedIntValue(v212, v213, v214);
            objc_msgSend_setChunkCount_(v171, v216, v215);

            v219 = objc_msgSend_signature(v171, v217, v218);
            v222 = objc_msgSend_asset(v171, v220, v221);
            objc_msgSend_setSignature_(v222, v223, v219);

            v226 = objc_msgSend_fileSize(v171, v224, v225);
            v229 = objc_msgSend_asset(v171, v227, v228);
            objc_msgSend_setSize_(v229, v230, v226);
          }

          objc_msgSend_addObject_(v54, v199, v171);

          ++v168;
          v57 = v242;
        }

        v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v166, &v243, v255, 16);
      }

      while (v167);
    }

    objc_msgSend__startTrackingMMCSItems_(selfCopy, v231, v54);
    LOBYTE(AssetHandles_operationType_error) = 1;
    v46 = v238;
    v6 = v239;
  }

LABEL_57:
  return AssetHandles_operationType_error;
}

- (BOOL)_setupMMCSItemsWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_MMCS(self, a2, error);
  if (!v7)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKDMMCSItemGroupContext.m", 477, @"Expected non-nil MMCS engine wrapper for %@", self);
  }

  v8 = objc_msgSend_assetCache(v7, v5, v6);

  if (!v8)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDMMCSItemGroupContext.m", 478, @"Expected non-nil asset cache for %@", v7);
  }

  v11 = objc_msgSend_mmcsOperationType(self, v9, v10);
  if (v11 <= 6)
  {
    if (((1 << v11) & 0xA) != 0)
    {
      v25 = 0;
      MMCSItemsWithError = objc_msgSend__setupPutMMCSItemsWithError_(self, v12, &v25);
      v14 = v25;
      goto LABEL_12;
    }

    if (((1 << v11) & 0x14) != 0)
    {
      v24 = 0;
      MMCSItemsWithError = objc_msgSend__setupGetMMCSItemsWithError_(self, v12, &v24);
      v14 = v24;
      goto LABEL_12;
    }

    if (((1 << v11) & 0x60) != 0)
    {
      v26 = 0;
      MMCSItemsWithError = objc_msgSend__setupRegisterMMCSItemsWithError_(self, v12, &v26);
      v14 = v26;
LABEL_12:

      goto LABEL_13;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    *buf = 134217984;
    v28 = objc_msgSend_mmcsOperationType(self, v18, v19);
    _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Invalid mmcs operation type %ld", buf, 0xCu);
  }

  MMCSItemsWithError = 1;
LABEL_13:

  return MMCSItemsWithError;
}

- (void)_cleanupMMCSRegisterItems
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_itemGroup(self, a2, v2, 0);
  v6 = objc_msgSend_items(v3, v4, v5);

  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v13, v17, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_setIsAlreadyRegistered_(*(*(&v13 + 1) + 8 * v12++), v9, 0);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)_cleanupMMCSItems
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_MMCS(self, a2, v2);
  if (!v7)
  {
    v73 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v73, v74, a2, self, @"CKDMMCSItemGroupContext.m", 511, @"Expected non-nil MMCS engine wrapper for %@", self);
  }

  v8 = objc_msgSend_assetCache(v7, v5, v6);

  if (!v8)
  {
    v75 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v75, v76, a2, self, @"CKDMMCSItemGroupContext.m", 512, @"Expected non-nil asset cache for %@", v7);
  }

  v11 = objc_msgSend_mmcsOperationType(self, v9, v10);
  if (v11 > 6)
  {
    goto LABEL_29;
  }

  if (((1 << v11) & 0xA) == 0)
  {
    if (((1 << v11) & 0x14) != 0)
    {
      if (!objc_msgSend_shouldFetchAssetContentInMemory(self, v12, v13))
      {
        goto LABEL_32;
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v16 = objc_msgSend_itemGroup(self, v14, v15);
      v19 = objc_msgSend_items(v16, v17, v18);

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v78, v89, 16);
      if (v21)
      {
        v24 = v21;
        v25 = *v79;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v79 != v25)
            {
              objc_enumerationMutation(v19);
            }

            v27 = *(*(&v78 + 1) + 8 * i);
            v28 = objc_msgSend_MMCSEngineContext(v7, v22, v23);
            v31 = objc_msgSend_itemID(v27, v29, v30);
            objc_msgSend_stopTrackingItemID_(v28, v32, v31);
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v78, v89, 16);
        }

        while (v24);
      }

      goto LABEL_18;
    }

    if (((1 << v11) & 0x60) != 0)
    {
      objc_msgSend__cleanupMMCSRegisterItems(self, v12, v13);
      goto LABEL_32;
    }

LABEL_29:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v19 = v65;
    *buf = 134217984;
    v88 = objc_msgSend_mmcsOperationType(self, v71, v72);
    _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Invalid mmcs operation type %ld", buf, 0xCu);
LABEL_18:

    goto LABEL_32;
  }

  v33 = objc_msgSend_assetCache(v7, v12, v13);
  v36 = objc_msgSend_itemGroup(self, v34, v35);
  v39 = objc_msgSend_items(v36, v37, v38);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v40, v41);
  v86 = 0;
  objc_msgSend_updateAssetHandlesForPutMMCSItems_cloneItems_error_(v33, v43, v39, shouldCloneFileInAssetCache, &v86);
  v77 = v86;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v46 = objc_msgSend_itemGroup(self, v44, v45);
  v49 = objc_msgSend_items(v46, v47, v48);

  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v82, v91, 16);
  if (v51)
  {
    v54 = v51;
    v55 = *v83;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v83 != v55)
        {
          objc_enumerationMutation(v49);
        }

        v57 = *(*(&v82 + 1) + 8 * j);
        if (objc_msgSend_shouldReadAssetContentUsingClientProxy(v57, v52, v53))
        {
          v58 = MEMORY[0x277CCABB0];
          v59 = objc_msgSend_itemID(v57, v52, v53);
          v61 = objc_msgSend_numberWithUnsignedLongLong_(v58, v60, v59);
          v90 = v61;
          v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, &v90, 1);
          objc_msgSend_unregisterItemIDs_(v7, v64, v63);
        }
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v82, v91, 16);
    }

    while (v54);
  }

LABEL_32:
  v66 = objc_msgSend_itemGroup(self, v14, v15);
  v69 = objc_msgSend_items(v66, v67, v68);
  objc_msgSend__stopTrackingMMCSItems_(self, v70, v69);
}

- (void)didCompleteRequestWithError:(id)error
{
  v63 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  v9 = objc_msgSend_itemGroup(self, v7, v8);
  v12 = objc_msgSend_complete(v9, v10, v11);

  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "The group is already complete: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = objc_msgSend_itemGroup(self, v13, v14);
    objc_msgSend_setComplete_(v16, v17, 1);

    if (errorCopy)
    {
      v20 = objc_msgSend_itemGroup(self, v18, v19);
      objc_msgSend_setError_(v20, v21, errorCopy);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v23 = v22;
        v26 = objc_msgSend_itemGroup(self, v24, v25);
        *buf = 138412546;
        selfCopy = v26;
        v61 = 2112;
        v62 = errorCopy;
        _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Completed MMCS item group %@ with error: %@", buf, 0x16u);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v48 = v27;
        v51 = objc_msgSend_itemGroup(self, v49, v50);
        *buf = 138412290;
        selfCopy = v51;
        _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Completed MMCS item group %@", buf, 0xCu);
      }
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v31 = objc_msgSend_progressBlock(selfCopy2, v29, v30);
    objc_msgSend_setProgressBlock_(selfCopy2, v32, 0);
    objc_sync_exit(selfCopy2);

    if (errorCopy)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v35 = objc_msgSend_itemGroup(selfCopy2, v33, v34);
      v38 = objc_msgSend_items(v35, v36, v37);

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v54, v58, 16);
      if (v42)
      {
        v43 = *v55;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v55 != v43)
            {
              objc_enumerationMutation(v38);
            }

            v45 = *(*(&v54 + 1) + 8 * i);
            if ((objc_msgSend_finished(v45, v40, v41) & 1) == 0)
            {
              objc_msgSend_setError_(v45, v40, errorCopy);
              objc_msgSend_setFinished_(v45, v46, 1);
              if (v31)
              {
                (v31)[2](v31, v45);
              }
            }
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v54, v58, 16);
        }

        while (v42);
      }
    }

    objc_msgSend__cleanupMMCSItems(selfCopy2, v33, v34);
    v47 = CKGetGlobalQueue();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_22513B060;
    v52[3] = &unk_278545898;
    v52[4] = selfCopy2;
    v53 = errorCopy;
    dispatch_async(v47, v52);
  }
}

- (void)updateProgressForItemID:(unint64_t)d state:(int)state progress:(double)progress results:(id)results
{
  v47 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v13 = objc_msgSend_findTrackedMMCSItemByItemID_(self, v11, d);
  if (v13)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v12, *MEMORY[0x277D25640]);
    v16 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v15, *MEMORY[0x277D25420]);
    v20 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v17, *MEMORY[0x277D25480]);
    if (v16)
    {
      v21 = objc_msgSend_unsignedIntValue(v16, v18, v19);
      objc_msgSend_setChunkCount_(v13, v22, v21);
    }

    v23 = MEMORY[0x277CBC880];
    if (v20)
    {
      if (objc_msgSend_unsignedLongLongValue(v20, v18, v19))
      {
        v26 = objc_msgSend_unsignedLongLongValue(v20, v24, v25);
        objc_msgSend_setFileSize_(v13, v27, v26);
      }

      if (v16)
      {
        v28 = objc_msgSend_unsignedIntValue(v16, v24, v25) == 0;
        if (v28 != (objc_msgSend_unsignedLongLongValue(v20, v29, v30) == 0))
        {
          if (*v23 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v31 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            if (!v14)
            {
LABEL_26:
              v35 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v41 = 134218496;
                dCopy3 = d;
                v43 = 1024;
                *v44 = state;
                *&v44[4] = 2048;
                *&v44[6] = progress;
                _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Progress of MMCS item %llu: s:%d p:%0.4f", &v41, 0x1Cu);
              }

              if (progress >= 0.0)
              {
                objc_msgSend_setProgress_(v13, v36, v37, progress);
                v40 = objc_msgSend_progressBlock(self, v38, v39);
                (v40)[2](v40, v13);
              }

LABEL_30:

              goto LABEL_31;
            }

            goto LABEL_22;
          }

          v41 = 138543618;
          dCopy3 = v16;
          v43 = 2114;
          *v44 = v20;
          _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Chunk count %{public}@ and file size %{public}@ inconsistent", &v41, 0x16u);
        }
      }
    }

    v33 = *MEMORY[0x277CBC878];
    if (!v14)
    {
      if (*v23 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v33);
      }

      goto LABEL_26;
    }

    if (*v23 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v33);
    }

LABEL_22:
    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v41 = 134218754;
      dCopy3 = d;
      v43 = 1024;
      *v44 = state;
      *&v44[4] = 2048;
      *&v44[6] = progress;
      v45 = 2112;
      v46 = v14;
      _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Progress of MMCS item %llu: s:%d p:%0.4f error:%@", &v41, 0x26u);
    }

    goto LABEL_30;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v32 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v41 = 134217984;
    dCopy3 = d;
    _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Can't find MMCS item for itemID %llu", &v41, 0xCu);
  }

LABEL_31:
}

- (void)updateProgressForPackageSectionState:(int)state progress:(double)progress results:(id)results
{
  v39 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v11 = objc_msgSend_MMCSPackageSectionItem(self, v9, v10);
  if (!v11)
  {
    __assert_rtn("[CKDMMCSItemGroupContext updateProgressForPackageSectionState:progress:results:]", "CKDMMCSItemGroupContext.m", 628, "item && nil self.MMCSPackageSectionItem");
  }

  v13 = v11;
  v14 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v12, *MEMORY[0x277D25640]);
  v15 = *MEMORY[0x277CBC878];
  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v20 = objc_msgSend_putPackageSectionIdentifier(v13, v18, v19);
      v31 = 138544130;
      v32 = v20;
      v33 = 1024;
      stateCopy2 = state;
      v35 = 2048;
      progressCopy2 = progress;
      v37 = 2112;
      v38 = v14;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Progress of MMCS package section %{public}@: s:%d p:%0.2f error:%@", &v31, 0x26u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = v21;
      v30 = objc_msgSend_putPackageSectionIdentifier(v13, v28, v29);
      v31 = 138543874;
      v32 = v30;
      v33 = 1024;
      stateCopy2 = state;
      v35 = 2048;
      progressCopy2 = progress;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Progress of MMCS package section %{public}@: s:%d p:%0.2f", &v31, 0x1Cu);
    }

    if (progress >= 0.0)
    {
      objc_msgSend_setProgress_(v13, v22, v23, progress);
      v26 = objc_msgSend_progressBlock(self, v24, v25);
      (v26)[2](v26, v13);
    }
  }
}

- (void)updateProgressForItemID:(unint64_t)d state:(int)state progress:(double)progress error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v12 = objc_msgSend_findTrackedMMCSItemByItemID_(self, v11, d);
  if (v12)
  {
    v13 = *MEMORY[0x277CBC878];
    if (errorCopy)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v25 = 134218754;
        dCopy3 = d;
        v27 = 1024;
        stateCopy2 = state;
        v29 = 2048;
        progressCopy2 = progress;
        v31 = 2112;
        v32 = errorCopy;
        v15 = "Progress of MMCS item %llu: s:%d p:%0.4f error:%@";
        v16 = v14;
        v17 = 38;
LABEL_11:
        _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, v15, &v25, v17);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v25 = 134218496;
        dCopy3 = d;
        v27 = 1024;
        stateCopy2 = state;
        v29 = 2048;
        progressCopy2 = progress;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Progress of MMCS item %llu: s:%d p:%0.4f", &v25, 0x1Cu);
      }

      if (progress >= 0.0)
      {
        objc_msgSend_setProgress_(v12, v20, v21, progress);
        v24 = objc_msgSend_progressBlock(self, v22, v23);
        (v24)[2](v24, v12);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v25 = 134217984;
      dCopy3 = d;
      v15 = "Can't find MMCS item for itemID %llu";
      v16 = v18;
      v17 = 12;
      goto LABEL_11;
    }
  }
}

- (void)handleCommand:(id)command forItem:(id)item
{
  commandCopy = command;
  itemCopy = item;
  v9 = objc_msgSend_commandBlock(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_commandBlock(self, v10, v11);
    (v12)[2](v12, itemCopy, commandCopy);
  }
}

- (void)didGetItemID:(unint64_t)d signature:(id)signature path:(id)path error:(id)error results:(id)results
{
  v277 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  pathCopy = path;
  errorCopy = error;
  resultsCopy = results;
  v16 = objc_autoreleasePoolPush();
  v19 = objc_msgSend_operation(self, v17, v18);
  v22 = objc_msgSend_findTrackedMMCSItemByItemID_(self, v20, d);
  if (v22)
  {
    v23 = pathCopy;
    v261 = v16;
    v262 = signatureCopy;
    v24 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v21, *MEMORY[0x277D25480]);
    v26 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v25, *MEMORY[0x277D254D8]);
    v28 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v27, *MEMORY[0x277D25668]);
    v259 = resultsCopy;
    v30 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v29, *MEMORY[0x277D25420]);
    v263 = v19;
    v33 = objc_msgSend_operationInfo(v19, v31, v32);
    v36 = objc_msgSend_fetchingAssetsForRereference(v33, v34, v35);

    v264 = v24;
    v260 = errorCopy;
    if (errorCopy)
    {
      v39 = objc_msgSend_mmcsOperationType(self, v37, v38);
      v41 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v40, errorCopy, @"Fetching asset failed", v39);
LABEL_14:
      v53 = v41;
      v44 = v26;
LABEL_15:
      v47 = v28;
      objc_msgSend_setError_(v22, v42, v53);

      pathCopy = v23;
      v52 = v30;
LABEL_16:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      resultsCopy = v259;
      errorCopy = v260;
      v54 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v134 = v54;
        v137 = objc_msgSend_error(v22, v135, v136);
        *buf = 138412546;
        dCopy = v22;
        v275 = 2112;
        v276 = v137;
        _os_log_error_impl(&dword_22506F000, v134, OS_LOG_TYPE_ERROR, "Error completing MMCS item %@ : %@", buf, 0x16u);
      }

      objc_msgSend_setDownloadLooksOkay_(v22, v55, 0);
      v58 = objc_msgSend_error(v22, v56, v57);

      if (!v58)
      {
        v61 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v59, *MEMORY[0x277CBC120], 1000, 0, @"Unknown error completing item %@", v22);
        objc_msgSend_setError_(v22, v62, v61);
      }

      v63 = objc_msgSend_fileURL(v22, v59, v60);

      if (v63)
      {
        v66 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v64, v65);
        v69 = objc_msgSend_fileURL(v22, v67, v68);
        objc_msgSend_removeItemAtURL_error_(v66, v70, v69, 0);

        objc_msgSend_setFileURL_(v22, v71, 0);
      }

      objc_msgSend_setFileHandle_(v22, v64, 0);
      objc_msgSend_setDeviceID_(v22, v72, 0);
      objc_msgSend_setFileID_(v22, v73, 0);
      objc_msgSend_setGenerationID_(v22, v74, 0);
      objc_msgSend_setModTimeInSeconds_(v22, v75, 0);
      objc_msgSend_setFileSize_(v22, v76, 0);
LABEL_25:
      objc_msgSend_setProgress_(v22, v77, v78, 1.0);
      objc_msgSend_setFinished_(v22, v79, 1);
      objc_msgSend_setWriter_(v22, v80, 0);
      if ((objc_msgSend_shouldFetchAssetContentInMemory(self, v81, v82) & 1) == 0)
      {
        v85 = objc_msgSend_constructedAssetDownloadURL(v22, v83, v84);

        if (!v85)
        {
          v86 = objc_msgSend_assetCache(self->_MMCS, v83, v84);
          v272 = v22;
          v88 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v87, &v272, 1);
          shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v89, v90);
          objc_msgSend_updateAssetHandlesForGetMMCSItems_cloneItems_error_(v86, v92, v88, shouldCloneFileInAssetCache, 0);
        }
      }

      v93 = objc_msgSend_progressBlock(self, v83, v84);
      (v93)[2](v93, v22);

      v16 = v261;
      signatureCopy = v262;
      v19 = v263;
      goto LABEL_29;
    }

    if (!((v24 != 0) | v36 & 1))
    {
      v41 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 1000, 0, @"fileSize not set.");
      goto LABEL_14;
    }

    v44 = v26;
    if (!v26)
    {
      v53 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 1000, 0, @"paddedFileSize not set.");
      goto LABEL_15;
    }

    v47 = v28;
    if (objc_msgSend_shouldFetchAssetContentInMemory(self, v37, v38))
    {
      v48 = objc_msgSend_writer(v22, v45, v46);
      isContiguous = objc_msgSend_isContiguous(v48, v49, v50);

      pathCopy = v23;
      v52 = v30;
      if (isContiguous)
      {
        objc_msgSend_setDownloadLooksOkay_(v22, v45, 1);
      }

      goto LABEL_66;
    }

    pathCopy = v23;
    if (v23)
    {
      v94 = 0;
    }

    else
    {
      v94 = v36;
    }

    v52 = v30;
    if (v94)
    {
LABEL_66:
      v198 = objc_msgSend_unsignedLongLongValue(v264, v45, v46);
      objc_msgSend_setFileSize_(v22, v199, v198);
      v202 = objc_msgSend_unsignedLongLongValue(v44, v200, v201);
      objc_msgSend_setPaddedFileSize_(v22, v203, v202);
      objc_msgSend_setVerificationKey_(v22, v204, v47);
      if (v52 && objc_msgSend_unsignedIntValue(v52, v205, v206))
      {
        v209 = objc_msgSend_unsignedIntValue(v52, v207, v208);
        objc_msgSend_setChunkCount_(v22, v210, v209);
      }

      resultsCopy = v259;
      errorCopy = 0;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v211 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        dCopy = v22;
        _os_log_debug_impl(&dword_22506F000, v211, OS_LOG_TYPE_DEBUG, "Finished getting MMCS item %@", buf, 0xCu);
      }

      goto LABEL_25;
    }

    if (objc_msgSend_shouldFetchAssetContentUsingAssetDownloadStagingManager(self, v45, v46))
    {
      v97 = objc_alloc(MEMORY[0x277CBC1A0]);
      v98 = MEMORY[0x277CCABB0];
      v101 = objc_msgSend_itemID(v22, v99, v100);
      v103 = objc_msgSend_numberWithUnsignedLongLong_(v98, v102, v101);
      v106 = objc_msgSend_trackingUUID(v22, v104, v105);
      v109 = objc_msgSend_signature(v22, v107, v108);
      v253 = objc_msgSend_initWithItemID_trackingUUID_signature_(v97, v110, v103, v106, v109);

      v271 = 0;
      v112 = objc_msgSend_openWithOperation_error_(v22, v111, v263, &v271);
      v115 = v271;
      v251 = v112;
      if (v112 && (objc_msgSend_fileHandle(v112, v113, v114), v116 = objc_claimAutoreleasedReturnValue(), v116, v116) && !v115)
      {
        v118 = objc_msgSend_container(v263, v113, v117);
        v121 = objc_msgSend_fileHandle(v112, v119, v120);
        v270 = 0;
        v123 = objc_msgSend_getFileMetadataWithContainer_fileHandle_error_(v22, v122, v118, v121, &v270);
        v124 = v270;

        v257 = v123;
        if (v123 && !v124)
        {
          v268 = 0;
          v269 = 0;
          v267 = 0;
          v126 = objc_msgSend_finishWithAssetDownloadStagingInfo_fileURL_fileHandle_error_(v263, v125, v253, &v269, &v268, &v267);
          v127 = v269;
          v249 = v268;
          v128 = v267;
          if (v128)
          {
            v130 = 0;
          }

          else
          {
            v130 = v126;
          }

          if (!v127)
          {
            v130 = 0;
          }

          v52 = v30;
          v247 = v130;
          v248 = v128;
          if (v130)
          {
            objc_msgSend_setFileURL_(v22, v129, v127);
            v131 = v249;
            objc_msgSend_setFileHandle_(v22, v132, v249);
            v133 = 0;
          }

          else
          {
            v224 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v129, *MEMORY[0x277CBC120], 1000, v128, @"Failed to finish downloaded file.");
            objc_msgSend_setError_(v22, v225, v224);

            v133 = 4;
            v131 = v249;
          }

          v250 = 0;
          v164 = 0;
          v186 = v248;
          if ((v247 & 1) == 0)
          {
LABEL_65:

            if (v133)
            {
              goto LABEL_16;
            }

            goto LABEL_66;
          }

LABEL_52:
          v173 = objc_msgSend_fileURL(v22, v171, v172);
          v176 = objc_msgSend_asset(v22, v174, v175);
          objc_msgSend_setFileURL_(v176, v177, v173);

          v180 = objc_msgSend_fileURL(v22, v178, v179);

          if (v180)
          {
            if (!v257)
            {
              v186 = v250;
              v196 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v181, *MEMORY[0x277CBC120], 1000, v250, @"Getting file metadata for downloaded asset failed");
              objc_msgSend_setError_(v22, v197, v196);

              v257 = 0;
              goto LABEL_64;
            }

            v183 = objc_msgSend_constructedAssetDownloadURL(v22, v181, v182);

            if (v183)
            {
LABEL_55:
              objc_msgSend_setDownloadLooksOkay_(v22, v184, 1);
              v133 = 0;
              v186 = v250;
              goto LABEL_65;
            }

            v255 = objc_msgSend_unsignedLongLongValue(v264, v184, v185);
            v214 = objc_msgSend_fileSize(v257, v212, v213);
            v217 = objc_msgSend_unsignedLongLongValue(v214, v215, v216);

            if (v255 != v217)
            {
              v256 = MEMORY[0x277CBC560];
              v226 = *MEMORY[0x277CBC120];
              v194 = objc_msgSend_fileSize(v257, v218, v219);
              v186 = v250;
              v228 = objc_msgSend_errorWithDomain_code_error_format_(v256, v227, v226, 1000, v250, @"File size mismatch for item %@ : %@ != %@", v22, v264, v194);
              objc_msgSend_setError_(v22, v229, v228);

              goto LABEL_61;
            }

            v220 = objc_msgSend_unsignedLongLongValue(v264, v218, v219);
            if (v220 <= objc_msgSend_unsignedLongLongValue(v44, v221, v222))
            {
              v230 = objc_msgSend_deviceID(v257, v181, v223);
              objc_msgSend_setDeviceID_(v22, v231, v230);

              v234 = objc_msgSend_fileID(v257, v232, v233);
              objc_msgSend_setFileID_(v22, v235, v234);

              v238 = objc_msgSend_generationID(v257, v236, v237);
              objc_msgSend_setGenerationID_(v22, v239, v238);

              v242 = objc_msgSend_modTimeInSeconds(v257, v240, v241);
              objc_msgSend_setModTimeInSeconds_(v22, v243, v242);

              goto LABEL_55;
            }

            v191 = MEMORY[0x277CBC560];
            v192 = *MEMORY[0x277CBC120];
            v245 = v264;
            v246 = v44;
            v193 = @"File size mismatch for item %@ : %@ > %@";
            v244 = v22;
          }

          else
          {
            v191 = MEMORY[0x277CBC560];
            v192 = *MEMORY[0x277CBC120];
            v193 = @"Failed to set destination fileURL";
          }

          v186 = v250;
          v194 = objc_msgSend_errorWithDomain_code_error_format_(v191, v181, v192, 1000, v250, v193, v244, v245, v246);
          objc_msgSend_setError_(v22, v195, v194);
LABEL_61:

          goto LABEL_64;
        }

        v186 = v124;
        v188 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v125, *MEMORY[0x277CBC120], 1000, v124, @"Failed to get metadata for downloaded file.");
      }

      else
      {
        v186 = v115;
        v188 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v113, *MEMORY[0x277CBC120], 1000, v115, @"Failed to open downloaded file.");
        v257 = 0;
      }

      v52 = v30;
      objc_msgSend_setError_(v22, v187, v188);

      v164 = 0;
    }

    else
    {
      v138 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v95, v96);
      v141 = objc_msgSend_trackingUUID(v22, v139, v140);
      if (!v141)
      {
        __assert_rtn("[CKDMMCSItemGroupContext didGetItemID:signature:path:error:results:]", "CKDMMCSItemGroupContext.m", 723, "item.trackingUUID && item.trackingUUID");
      }

      v254 = v138;

      v144 = objc_msgSend_signature(v22, v142, v143);
      if (!v144)
      {
        __assert_rtn("[CKDMMCSItemGroupContext didGetItemID:signature:path:error:results:]", "CKDMMCSItemGroupContext.m", 724, "item.signature && item.signature");
      }

      v258 = objc_alloc(MEMORY[0x277CCACA8]);
      v147 = objc_msgSend_trackingUUID(v22, v145, v146);
      v150 = objc_msgSend_signature(v22, v148, v149);
      v151 = CKStringWithData();
      v153 = objc_msgSend_initWithFormat_(v258, v152, @"%@.%@", v147, v151);

      v156 = objc_msgSend_MMCS(self, v154, v155);
      v159 = objc_msgSend_assetCache(v156, v157, v158);
      v162 = objc_msgSend_fileDownloadPath(v159, v160, v161);
      v252 = v153;
      v164 = objc_msgSend_stringByAppendingPathComponent_(v162, v163, v153);

      v266 = 0;
      LODWORD(v162) = objc_msgSend_moveItemAtPath_toPath_error_(v254, v165, pathCopy, v164, &v266);
      v167 = v266;
      if (v162)
      {
        v168 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v166, v164, 0);
        objc_msgSend_setFileURL_(v22, v169, v168);

        v265 = 0;
        v257 = objc_msgSend_getFileMetadataAtPath_error_(MEMORY[0x277CBC190], v170, v164, &v265);
        v250 = v265;

        goto LABEL_52;
      }

      v189 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v166, *MEMORY[0x277CBC120], 1000, v167, @"Moving downloaded asset failed");
      objc_msgSend_setError_(v22, v190, v189);

      v257 = 0;
      v186 = 0;
    }

LABEL_64:
    v133 = 4;
    goto LABEL_65;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v43 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Can't find MMCS item for itemID %llu", buf, 0xCu);
  }

LABEL_29:

  objc_autoreleasePoolPop(v16);
}

- (void)didPutItemID:(unint64_t)d signature:(id)signature results:(id)results
{
  v65 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v10 = objc_msgSend_findTrackedMMCSItemByItemID_(self, v8, d);
  if (v10)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v9, *MEMORY[0x277D25640]);
    v13 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v12, *MEMORY[0x277D254E0]);
    v15 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v14, *MEMORY[0x277D254E8]);
    v17 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v16, *MEMORY[0x277D25420]);
    v21 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v18, *MEMORY[0x277D25480]);
    if (v17 && objc_msgSend_unsignedIntValue(v17, v19, v20))
    {
      v22 = objc_msgSend_unsignedIntValue(v17, v19, v20);
      objc_msgSend_setChunkCount_(v10, v23, v22);
    }

    if (v21 && objc_msgSend_unsignedLongLongValue(v21, v19, v20))
    {
      v25 = objc_msgSend_unsignedLongLongValue(v21, v19, v24);
      objc_msgSend_setFileSize_(v10, v26, v25);
    }

    if (v11)
    {
      v60 = v17;
      v27 = v13;
      v28 = v15;
      objc_msgSend_setFinished_(v10, v19, 1);
      v31 = objc_msgSend_fileURL(v10, v29, v30);
      v34 = objc_msgSend_path(v31, v32, v33);
      v37 = objc_msgSend_mmcsOperationType(self, v35, v36);
      v39 = objc_msgSend__errorWithMMCSError_path_description_operationType_(CKDMMCS, v38, v11, v34, @"Saving asset failed", v37);
      objc_msgSend_setError_(v10, v40, v39);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = v28;
      v41 = *MEMORY[0x277CBC830];
      v13 = v27;
      v17 = v60;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        dCopy = v10;
        _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Error putting MMCS item %@", buf, 0xCu);
      }
    }

    else
    {
      objc_msgSend_setFinished_(v10, v19, 1);
      if (v13)
      {
        objc_msgSend_setProgress_(v10, v45, v46, 1.0);
        objc_msgSend_setUploadReceipt_(v10, v47, v13);
        objc_msgSend_doubleValue(v15, v48, v49);
        objc_msgSend_setUploadReceiptExpiration_(v10, v50, v51);
        objc_msgSend_setError_(v10, v52, 0);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v53 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_24;
        }

        v54 = v53;
        v57 = objc_msgSend_asset(v10, v55, v56);
        *buf = 138412546;
        dCopy = v10;
        v63 = 2112;
        v64 = v57;
        _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Finished putting MMCS item %@ and asset %@", buf, 0x16u);
      }

      else
      {
        v54 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v45, *MEMORY[0x277CBBF50], 1, @"Expected either an error or a putReceipt on the completion of the upload");
        objc_msgSend_setError_(v10, v58, v54);
      }
    }

LABEL_24:
    v59 = objc_msgSend_progressBlock(self, v42, v43);
    (v59)[2](v59, v10);

    goto LABEL_25;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v44 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Can't find MMCS item for itemID %llu", buf, 0xCu);
  }

LABEL_25:
}

- (void)didPutSectionWithSignature:(id)signature results:(id)results
{
  v43 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  resultsCopy = results;
  v10 = objc_msgSend_MMCSPackageSectionItem(self, v8, v9);
  if (!v10)
  {
    __assert_rtn("[CKDMMCSItemGroupContext didPutSectionWithSignature:results:]", "CKDMMCSItemGroupContext.m", 846, "item && nil self.MMCSPackageSectionItem");
  }

  v12 = v10;
  v13 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v11, *MEMORY[0x277D25640]);
  v15 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v14, *MEMORY[0x277D254E0]);
  v17 = objc_msgSend_objectForKeyedSubscript_(resultsCopy, v16, *MEMORY[0x277D254E8]);
  objc_msgSend_setFinished_(v12, v18, 1);
  if (v13)
  {
    v21 = objc_msgSend_fileURL(v12, v19, v20);
    v24 = objc_msgSend_path(v21, v22, v23);
    v27 = objc_msgSend_mmcsOperationType(self, v25, v26);
    v29 = objc_msgSend__errorWithMMCSError_path_description_operationType_(CKDMMCS, v28, v13, v24, @"Saving asset failed", v27);
    objc_msgSend_setError_(v12, v30, v29);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v42 = 138412290;
      *&v42[4] = v12;
      v34 = "Error putting MMCS item %@";
LABEL_12:
      _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, v34, v42, 0xCu);
    }
  }

  else
  {
    objc_msgSend_setProgress_(v12, v19, v20, 1.0);
    objc_msgSend_setUploadReceipt_(v12, v35, v15);
    objc_msgSend_doubleValue(v17, v36, v37);
    objc_msgSend_setUploadReceiptExpiration_(v12, v38, v39);
    objc_msgSend_setError_(v12, v40, 0);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v42 = 138412290;
      *&v42[4] = v12;
      v34 = "Finished putting MMCS item %@";
      goto LABEL_12;
    }
  }

  v41 = objc_msgSend_progressBlock(self, v32, v33, *v42, *&v42[8]);
  (v41)[2](v41, v12);
}

- (void)didGetMetricsForRequest:(id)request
{
  requestCopy = request;
  v8 = objc_msgSend_itemGroup(self, v5, v6);
  objc_msgSend_setMetrics_(v8, v7, requestCopy);
}

+ (MMCSItemReaderWriter)getMMCSItemReaderForItemID:(unint64_t)d MMCS:(id)s itemGroupContext:(id)context downloadChunkContext:(id)chunkContext error:(id *)error
{
  v186[1] = *MEMORY[0x277D85DE8];
  sCopy = s;
  contextCopy = context;
  chunkContextCopy = chunkContext;
  if (!sCopy)
  {
    v160 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v160, v161, a2, self, @"CKDMMCSItemGroupContext.m", 1015, @"Expected non-nil MMCS for %@", self);
  }

  v20 = objc_msgSend_assetCache(sCopy, v15, v16);
  if (!v20)
  {
    v162 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v162, v163, a2, self, @"CKDMMCSItemGroupContext.m", 1017, @"Expected non-nil asset cache for %@", sCopy);
  }

  v21 = objc_msgSend_conformingOperation(contextCopy, v18, v19);
  v23 = v21;
  if (!v21 || (objc_msgSend_itemGroupContext_willGetMMCSItemReaderForItemID_(v21, v22, contextCopy, d) & 1) != 0)
  {
    v24 = objc_msgSend_findTrackedMMCSItemByItemID_(contextCopy, v22, d);
    if (v24)
    {
      v27 = v24;
      if (objc_msgSend_shouldFetchAssetContentInMemory(contextCopy, v25, v26))
      {
        v30 = [CKDMMCSItemCommandWriter alloc];
        *&buf = 3;
        v32 = objc_msgSend_initWithMMCSItem_MMCSRequest_(v30, v31, v27, contextCopy);
        *(&buf + 1) = v32;
        v170 = @"not an itemTypeHint";
        v172 = 0;
        v173 = 0;
        v171 = @"not an itemDescription";
        v174 = sub_22513DC9C;
        v175 = sub_22513DE6C;
        v176 = sub_22513E1F0;
        v178 = 0;
        v179 = 0;
        v177 = sub_22513E29C;
        v180 = sub_22513E318;
        v181 = sub_22513E3F4;
        v182 = 0;
        v34 = MMCSItemReaderWriterCreate();
        if (v34)
        {
          objc_msgSend_setWriter_(v27, v33, v32);
        }

        else if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 3001, 0, @"nil reader");
        }

        goto LABEL_45;
      }

      v165 = chunkContextCopy;
      errorCopy2 = error;
LABEL_31:
      v95 = objc_msgSend_fileURL(v27, v28, v29);
      v98 = objc_msgSend_path(v95, v96, v97);

      v101 = objc_msgSend_CKSanitizedPath(v98, v99, v100);
      v106 = objc_msgSend_itemTypeHint(v27, v102, v103);
      v164 = contextCopy;
      v167 = v101;
      if (v106)
      {
        objc_msgSend_itemTypeHint(v27, v104, v105);
      }

      else
      {
        objc_msgSend_pathExtension(v98, v104, v105);
      }
      v107 = ;

      if (v27 && objc_msgSend_itemID(v27, v108, v109) && (objc_msgSend_trackingUUID(v27, v108, v109), v110 = objc_claimAutoreleasedReturnValue(), v110, v110))
      {
        if (objc_msgSend_shouldReadRawEncryptedData(v27, v108, v109))
        {
          v113 = [CKDMMCSEncryptedItemReader alloc];
          v115 = objc_msgSend_initWithMMCSItem_MMCSRequest_(v113, v114, v27, contextCopy);
        }

        else if (objc_msgSend_shouldReadAssetContentUsingClientProxy(v27, v111, v112))
        {
          v132 = [CKDMMCSClientProxyItemReader alloc];
          v115 = objc_msgSend_initWithMMCSItem_MMCSRequest_(v132, v133, v27, contextCopy);
        }

        else
        {
          v151 = [CKDMMCSItemReaderWriter alloc];
          v115 = objc_msgSend_initWithMMCSItem_MMCSRequest_downloadChunkContext_(v151, v152, v27, contextCopy, v165);
        }

        v153 = v115;
        v154 = v20;
        if (!v23 || (objc_msgSend_itemGroupContext_didGetItemReader_itemID_(v23, v116, contextCopy, v115, d), v155 = objc_claimAutoreleasedReturnValue(), v153, (v153 = v155) != 0))
        {
          *&buf = 5;
          v157 = v153;
          *(&buf + 1) = v157;
          v170 = v107;
          v172 = 0;
          v173 = 0;
          v171 = v167;
          v174 = sub_22513DC9C;
          v175 = sub_22513DE6C;
          v176 = sub_22513E1F0;
          v178 = 0;
          v179 = 0;
          v177 = sub_22513E29C;
          v180 = sub_22513E318;
          v181 = sub_22513E3F4;
          v182 = 0;
          v183 = 0;
          v184 = 0;
          v185 = sub_22513E4A0;
          v158 = MMCSItemReaderWriterCreate();
          v34 = v158;
          if (errorCopy2 && !v158)
          {
            *errorCopy2 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v159, *MEMORY[0x277CBC120], 3001, v167, @"nil reader");
          }

          v32 = 0;
          v20 = v154;
          v128 = v167;
          goto LABEL_44;
        }

        if (errorCopy2)
        {
          objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v156, *MEMORY[0x277CBC120], 3001, 0, @"delegate said no");
          v32 = 0;
          *errorCopy2 = v34 = 0;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v20 = v154;
        v128 = v167;
      }

      else
      {
        v117 = v23;
        v118 = v98;
        v119 = v107;
        v120 = v20;
        v121 = MEMORY[0x277CBC560];
        v122 = *MEMORY[0x277CBC120];
        v123 = objc_msgSend_itemID(v27, v108, v109);
        v126 = objc_msgSend_trackingUUID(v27, v124, v125);
        v127 = v121;
        v128 = v167;
        v32 = objc_msgSend_errorWithDomain_code_path_format_(v127, v129, v122, 3001, v167, @"Invalid arguments, MMCSItem:%@, itemID:%llu, UUID:%@", v27, v123, v126);

        if (errorCopy2)
        {
          v130 = v32;
          v34 = 0;
          *errorCopy2 = v32;
        }

        else
        {
          v34 = 0;
        }

        v20 = v120;
        v107 = v119;
        v98 = v118;
        v23 = v117;
      }

      contextCopy = v164;
LABEL_44:

      chunkContextCopy = v165;
      goto LABEL_45;
    }

    v32 = objc_msgSend_findAssetHandleForItemID_error_(v20, v25, d, error);
    if (v32)
    {
      v165 = chunkContextCopy;
      errorCopy2 = error;
      v35 = [CKDMMCSItem alloc];
      v38 = objc_msgSend_path(v32, v36, v37);
      v27 = objc_msgSend_init_(v35, v39, v38 == 0);

      v42 = objc_msgSend_itemID(v32, v40, v41);
      v45 = objc_msgSend_unsignedLongLongValue(v42, v43, v44);
      objc_msgSend_setItemID_(v27, v46, v45);

      v49 = objc_msgSend_UUID(v32, v47, v48);
      v52 = objc_msgSend_UUIDString(v49, v50, v51);
      objc_msgSend_setTrackingUUID_(v27, v53, v52);

      v57 = objc_msgSend_path(v32, v54, v55);
      if (v57)
      {
        v58 = objc_alloc(MEMORY[0x277CBEBC0]);
        v61 = objc_msgSend_path(v32, v59, v60);
        isDirectory = objc_msgSend_initFileURLWithPath_isDirectory_(v58, v62, v61, 0);
        objc_msgSend_setFileURL_(v27, v64, isDirectory);
      }

      else
      {
        objc_msgSend_setFileURL_(v27, v56, 0);
      }

      v73 = objc_msgSend_assetCache(sCopy, v71, v72);
      v76 = objc_msgSend_volumeIndex(v32, v74, v75);
      v78 = objc_msgSend_deviceIDForVolumeIndex_(v73, v77, v76);
      objc_msgSend_setDeviceID_(v27, v79, v78);

      v82 = objc_msgSend_fileID(v32, v80, v81);
      objc_msgSend_setFileID_(v27, v83, v82);

      v86 = objc_msgSend_generationID(v32, v84, v85);
      objc_msgSend_setGenerationID_(v27, v87, v86);

      v90 = objc_msgSend_fileURL(v27, v88, v89);
      if (v90 || (objc_msgSend_deviceID(v27, v91, v92), (v90 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_30:
        goto LABEL_31;
      }

      v134 = objc_msgSend_volumeIndex(v32, v93, v94);

      if (!v134)
      {
        goto LABEL_30;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v135 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v32;
        _os_log_debug_impl(&dword_22506F000, v135, OS_LOG_TYPE_DEBUG, "Cannot find deviceID for asset handle. Deleting %@", &buf, 0xCu);
      }

      v138 = MEMORY[0x277CBEB70];
      v139 = objc_msgSend_itemID(v32, v136, v137);
      v67 = objc_msgSend_orderedSetWithObject_(v138, v140, v139);

      objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(v20, v141, v67, 0);
      v168 = MEMORY[0x277CBC560];
      v142 = *MEMORY[0x277CBC120];
      v145 = objc_msgSend_itemID(v27, v143, v144);
      v148 = objc_msgSend_volumeIndex(v32, v146, v147);
      v69 = objc_msgSend_errorWithDomain_code_format_(v168, v149, v142, 3002, @"Unable to open file for MMCSItem:%@ itemID:%llu on unmounted volume with volumeIndex=%@", v27, v145, v148);

      if (errorCopy2)
      {
        v150 = v69;
        *errorCopy2 = v69;
      }

      chunkContextCopy = v165;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v65 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = d;
        _os_log_error_impl(&dword_22506F000, v65, OS_LOG_TYPE_ERROR, "Unregistering item without an asset handle for itemID=%llu", &buf, 0xCu);
      }

      v67 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v66, d);
      v186[0] = v67;
      v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, v186, 1);
      objc_msgSend_unregisterItemIDs_(sCopy, v70, v69);
      v27 = 0;
    }

    v34 = 0;
LABEL_45:

    goto LABEL_46;
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 3001, 0, @"delegate said no");
    *error = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_46:

  return v34;
}

- (id)getCKDMMCSItemReaderByPathForMMCSItem:(id)item error:(id *)error
{
  itemCopy = item;
  v11 = objc_msgSend_MMCS(self, v7, v8);
  if (!v11)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDMMCSItemGroupContext.m", 1161, @"Expected non-nil MMCS for %@", self);
  }

  v14 = objc_msgSend_assetCache(v11, v9, v10);
  if (!v14)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDMMCSItemGroupContext.m", 1163, @"Expected non-nil asset cache for %@", v11);
  }

  if (objc_msgSend_shouldReadRawEncryptedData(itemCopy, v12, v13))
  {
    v17 = CKDMMCSEncryptedItemReader;
LABEL_9:
    v18 = [v17 alloc];
    v20 = objc_msgSend_initWithMMCSItem_MMCSRequest_(v18, v19, itemCopy, self);
    goto LABEL_11;
  }

  if (objc_msgSend_shouldReadAssetContentUsingClientProxy(itemCopy, v15, v16))
  {
    v17 = CKDMMCSClientProxyItemReader;
    goto LABEL_9;
  }

  v21 = [CKDMMCSItemReaderWriter alloc];
  v20 = objc_msgSend_initWithMMCSItem_MMCSRequest_downloadChunkContext_(v21, v22, itemCopy, self, 0);
LABEL_11:
  v23 = v20;

  return v23;
}

- (BOOL)willOpenItemReaderWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v9 = objc_msgSend_conformingOperation(self, v7, v8);
  v11 = v9;
  if (v9)
  {
    v12 = objc_msgSend_itemGroupContext_willOpenItemReaderWriter_error_(v9, v10, self, writerCopy, error);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)didOpenItemReaderWriter:(id)writer result:(BOOL)result error:(id)error
{
  resultCopy = result;
  writerCopy = writer;
  errorCopy = error;
  v11 = objc_msgSend_conformingOperation(self, v9, v10);
  v13 = v11;
  if (v11)
  {
    objc_msgSend_itemGroupContext_didOpenItemReaderWriter_result_error_(v11, v12, self, writerCopy, resultCopy, errorCopy);
  }
}

@end