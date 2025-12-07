@interface CKDDownloadAssetsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_download;
- (BOOL)_postProcess;
- (BOOL)_prepareForDownload;
- (BOOL)makeStateTransition;
- (BOOL)shouldDownloadAssetFromTranscoder:(id)transcoder;
- (CKDDownloadAssetsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)CKStatusReportLogGroups;
- (id)_tryToFillInTheDerivativeTemplateWithAsset:(id)asset;
- (id)activityCreate;
- (void)_collectMetricsFromCompletedItemGroup:(id)group;
- (void)_collectMetricsFromCompletedItemGroupSet:(id)set;
- (void)_collectMetricsFromMMCSOperationMetrics:(id)metrics;
- (void)_didCommandForAsset:(id)asset command:(id)command;
- (void)_didCommandForMMCSItem:(id)item command:(id)command;
- (void)_didDownloadAsset:(id)asset error:(id)error;
- (void)_didDownloadMMCSItem:(id)item inMemory:(BOOL)memory error:(id)error;
- (void)_didDownloadMMCSItems:(id)items inMemory:(BOOL)memory error:(id)error;
- (void)_didDownloadMMCSSectionItem:(id)item task:(id)task error:(id)error;
- (void)_didDownloadMMCSSectionItems:(id)items task:(id)task error:(id)error;
- (void)_didMakeProgressForAsset:(id)asset progress:(double)progress;
- (void)_didMakeProgressForMMCSItem:(id)item inMemory:(BOOL)memory;
- (void)_didMakeProgressForMMCSSectionItem:(id)item task:(id)task;
- (void)_didPrepareAsset:(id)asset;
- (void)_downloadMMCSItems:(id)items downloadTasksByPackages:(id)packages shouldFetchAssetContentInMemory:(BOOL)memory;
- (void)_downloadPackageSectionAtIndex:(int64_t)index task:(id)task completionBlock:(id)block;
- (void)_downloadPackageSectionsWithPendingTasks:(id)tasks downloadingTasks:(id)downloadingTasks completedTasks:(id)completedTasks;
- (void)_downloadPackageSectionsWithSectionEnumerator:(id)enumerator task:(id)task completionBlock:(id)block;
- (void)_downloadPackageSectionsWithTask:(id)task completionBlock:(id)block;
- (void)_downloadTranscodedAsset:(id)asset inMemory:(BOOL)memory;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_prepareAssetForDownload:(id)download;
- (void)_preparePackageForDataDownload:(id)download;
- (void)_preparePackageForDownload:(id)download;
- (void)_preparePackageForMetadataDownload:(id)download;
- (void)_removeUntrackedMMCSItems:(id)items;
- (void)cancel;
- (void)main;
@end

@implementation CKDDownloadAssetsOperation

- (CKDDownloadAssetsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v32.receiver = self;
  v32.super_class = CKDDownloadAssetsOperation;
  v7 = [(CKDDatabaseOperation *)&v32 initWithOperationInfo:infoCopy container:container];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = objc_msgSend_QOSClass(v7, v9, v10);
    v12 = dispatch_queue_attr_make_with_qos_class(v8, v11, 0);

    v13 = dispatch_queue_create("com.apple.cloudkit.download", v12);
    queue = v7->_queue;
    v7->_queue = v13;

    v15 = objc_alloc_init(CKDCancelTokenGroup);
    cancelTokens = v7->_cancelTokens;
    v7->_cancelTokens = v15;

    v19 = objc_msgSend_assetsToDownload(infoCopy, v17, v18);
    assetsToDownload = v7->_assetsToDownload;
    v7->_assetsToDownload = v19;

    v23 = objc_msgSend_assetsToDownloadInMemory(infoCopy, v21, v22);
    assetsToDownloadInMemory = v7->_assetsToDownloadInMemory;
    v7->_assetsToDownloadInMemory = v23;

    v27 = objc_msgSend_assetURLInfosToFillOut(infoCopy, v25, v26);
    assetURLInfosToFillOut = v7->_assetURLInfosToFillOut;
    v7->_assetURLInfosToFillOut = v27;

    v7->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v29, v30);
  }

  return v7;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/download-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)CKStatusReportLogGroups
{
  v17.receiver = self;
  v17.super_class = CKDDownloadAssetsOperation;
  cKStatusReportLogGroups = [(CKDOperation *)&v17 CKStatusReportLogGroups];
  if (os_unfair_lock_trylock(&self->_prepareLock))
  {
    if (!cKStatusReportLogGroups)
    {
      cKStatusReportLogGroups = objc_opt_new();
    }

    v6 = objc_msgSend_MMCSItemsToDownload(self, v4, v5);
    v8 = objc_msgSend_CKMap_(v6, v7, &unk_28385D360);
    objc_msgSend_setObject_forKeyedSubscript_(cKStatusReportLogGroups, v9, v8, @"MMCS Items");

    v12 = objc_msgSend_MMCSItemsToDownloadInMemory(self, v10, v11);
    v14 = objc_msgSend_CKMap_(v12, v13, &unk_28385D380);
    objc_msgSend_setObject_forKeyedSubscript_(cKStatusReportLogGroups, v15, v14, @"MMCS In Memory Items");

    os_unfair_lock_unlock(&self->_prepareLock);
  }

  return cKStatusReportLogGroups;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_msgSend_removeAllCancelTokens(v4, v5, v6);

  v9 = objc_msgSend_state(self, v7, v8);
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        objc_msgSend_hash(self, v10, v11);
        kdebug_trace();
        objc_msgSend_setState_(self, v16, 0xFFFFFFFFLL);
        v19 = objc_msgSend_error(self, v17, v18);
        objc_msgSend_finishWithError_(self, v20, v19);
      }

      return 1;
    }

    objc_msgSend_setState_(self, v10, 4);

    return MEMORY[0x2821F9670](self, sel__postProcess, v23);
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        objc_msgSend_hash(self, v10, v11);
        kdebug_trace();
        objc_msgSend_hash(self, v12, v13);
        kdebug_trace();
        objc_msgSend_setState_(self, v14, 3);

        return MEMORY[0x2821F9670](self, sel__download, v15);
      }

      return 1;
    }

    objc_msgSend_hash(self, v10, v11);
    kdebug_trace();
    objc_msgSend_setState_(self, v21, 2);

    return MEMORY[0x2821F9670](self, sel__prepareForDownload, v22);
  }
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDDownloadAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548B18[state - 2];
  }

  return v5;
}

- (void)_removeUntrackedMMCSItems:(id)items
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v4, &v21, v25, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_msgSend_fileURL(v11, v6, v7);
        if (v12)
        {
          v13 = v12;
          v14 = objc_msgSend_trackingUUID(v11, v6, v7);

          if (!v14)
          {
            v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
            v18 = objc_msgSend_fileURL(v11, v16, v17);
            objc_msgSend_removeItemAtURL_error_(v15, v19, v18, 0);

            objc_msgSend_setFileURL_(v11, v20, 0);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v6, &v21, v25, 16);
    }

    while (v8);
  }
}

- (void)_didPrepareAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDDownloadAssetsOperation.m", 271, @"Expected non-nil asset for %@", self);
  }

  v8 = objc_msgSend_callbackQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A707C;
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
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDDownloadAssetsOperation.m", 279, @"Expected non-nil asset for %@", self);
  }

  v10 = objc_msgSend_callbackQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A720C;
  block[3] = &unk_278545E20;
  block[4] = self;
  v15 = assetCopy;
  progressCopy = progress;
  v11 = assetCopy;
  dispatch_async(v10, block);
}

- (void)_didCommandForAsset:(id)asset command:(id)command
{
  assetCopy = asset;
  commandCopy = command;
  if (!assetCopy)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDDownloadAssetsOperation.m", 287, @"Expected non-nil asset for %@", self);
  }

  v11 = assetCopy;
  v14 = objc_msgSend_mutableCopy(commandCopy, v12, v13);
  v17 = objc_msgSend_recordKey(v11, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v18, v17, @"RecordKey");

  v19 = MEMORY[0x277CCABB0];
  v22 = objc_msgSend_arrayIndex(v11, v20, v21);
  v24 = objc_msgSend_numberWithInteger_(v19, v23, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v25, v24, @"ArrayIndex");

  v28 = objc_msgSend_callbackQueue(self, v26, v27);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A7444;
  block[3] = &unk_278546990;
  block[4] = self;
  v34 = v11;
  v35 = v14;
  v29 = v14;
  v30 = v11;
  dispatch_async(v28, block);
}

- (void)_didDownloadAsset:(id)asset error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  if (!assetCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDDownloadAssetsOperation.m", 298, @"Expected non-nil asset for %@", self);
  }

  v11 = objc_msgSend_callbackQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251A75F0;
  block[3] = &unk_278546990;
  block[4] = self;
  v17 = assetCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = assetCopy;
  dispatch_async(v11, block);
}

- (id)_tryToFillInTheDerivativeTemplateWithAsset:(id)asset
{
  v138 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v7 = objc_msgSend_deviceContext(self, v5, v6);
  v10 = objc_msgSend_accountDataSecurityObserver(v7, v8, v9);
  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_account(v13, v14, v15);
  v18 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v10, v17, v16, 1);

  if (v18)
  {
    v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 5013, @"Cannot fill in derivative template due to walrus enabled for asset %@", assetCopy);
    goto LABEL_55;
  }

  v22 = MEMORY[0x277CBC190];
  v23 = objc_msgSend_constructedAssetDownloadURLTemplate(assetCopy, v19, v20);
  v25 = objc_msgSend__canonicalizeTemplateURL_(v22, v24, v23);

  v27 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v26, v25, 0);
  v28 = MEMORY[0x277CCACA8];
  v31 = objc_msgSend_percentEncodedPath(v27, v29, v30);
  v34 = objc_msgSend_percentEncodedQuery(v27, v32, v33);
  v131 = objc_msgSend_stringWithFormat_(v28, v35, @"%@?%@", v31, v34);

  v38 = objc_msgSend_host(v25, v36, v37);
  v39 = MEMORY[0x277CBC190];
  v42 = objc_msgSend_constructedAssetDownloadURLTemplate(assetCopy, v40, v41);
  LOBYTE(v39) = objc_msgSend__templateURLRequiresAssetKey_(v39, v43, v42);

  v46 = MEMORY[0x277CBC830];
  if ((v39 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = v46;
    v63 = *v46;
    if (os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
    {
      v93 = v63;
      v96 = objc_msgSend_signature(assetCopy, v94, v95);
      *buf = 138412290;
      v137 = v96;
      _os_log_debug_impl(&dword_22506F000, v93, OS_LOG_TYPE_DEBUG, "Not filling in key for constructed asset URL template for asset %@ because it doesn't require a key", buf, 0xCu);

      v62 = v46;
    }

    v66 = 0;
    v67 = 0;
    goto LABEL_40;
  }

  if (!v38)
  {
    v68 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 1000, @"asset %@ has constructedAssetDownloadURLTemplate but cannot parse out host string", assetCopy);
    v67 = 0;
    v66 = 0;
    v62 = v46;
    if (v68)
    {
      goto LABEL_54;
    }

LABEL_40:
    v133 = v67;
    v98 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v64, v65);
    objc_msgSend_setObject_forKeyedSubscript_(v98, v99, &stru_28385ED00, @"f");
    if (v66)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v98, v100, v66, @"uk");
    }

    v102 = MEMORY[0x277CBC190];
    v103 = objc_msgSend_constructedAssetDownloadURLTemplate(assetCopy, v100, v101);
    v105 = objc_msgSend__expandTemplateURL_fieldValues_(v102, v104, v103, v98);

    if (v133)
    {
      v107 = objc_msgSend_stringByAppendingString_(v105, v106, v133);

      v105 = v107;
    }

    v108 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v106, v105);
    objc_msgSend_setConstructedAssetDownloadURL_(assetCopy, v109, v108);

    v112 = objc_msgSend_constructedAssetDownloadURL(assetCopy, v110, v111);

    if (v112)
    {
      v68 = 0;
    }

    else
    {
      v68 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v113, *MEMORY[0x277CBC120], 1, @"Couldn't create asset download URL from template");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v114 = *v62;
      if (!os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v124 = v114;
      v130 = objc_msgSend_constructedAssetDownloadURLTemplate(assetCopy, v125, v126);
      *buf = 138543362;
      v137 = v130;
      _os_log_error_impl(&dword_22506F000, v124, OS_LOG_TYPE_ERROR, "Couldn't create asset download URL from template %{public}@", buf, 0xCu);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

LABEL_51:
    v115 = *v62;
    if (os_log_type_enabled(*v62, OS_LOG_TYPE_INFO))
    {
      v116 = v115;
      objc_msgSend_constructedAssetDownloadURLTemplate(assetCopy, v117, v118);
      v119 = v27;
      v120 = v25;
      v122 = v121 = v38;
      *buf = 138543362;
      v137 = v122;
      _os_log_impl(&dword_22506F000, v116, OS_LOG_TYPE_INFO, "constructedAssetDownloadURL %{public}@", buf, 0xCu);

      v38 = v121;
      v25 = v120;
      v27 = v119;
    }

    v67 = v133;
    goto LABEL_54;
  }

  v47 = objc_msgSend_keyOrErrorForHostname(self, v44, v45);
  v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, v38);

  if (!v49)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v50, *MEMORY[0x277CBC120], 1000, @"no public cert result for host %@ asset %@", v38, assetCopy);
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = v49;
LABEL_29:
      v68 = v70;
      v67 = 0;
      v66 = 0;
      v62 = v46;
      goto LABEL_39;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v69, *MEMORY[0x277CBC120], 1000, @"unknown public cert result for host %@ asset %@", v38, assetCopy);
    v70 = LABEL_28:;
    goto LABEL_29;
  }

  v51 = v49;
  v129 = v51;
  if (objc_msgSend_useEncryption(self, v52, v53))
  {
    v56 = objc_msgSend_assetKey(assetCopy, v54, v55);

    if (v56)
    {
      v59 = objc_msgSend_assetKey(assetCopy, v57, v58);
      v62 = v46;
      goto LABEL_23;
    }

    v62 = v46;
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBC120], 1000, @"expected assetKey for asset %@", assetCopy);
  }

  else
  {
    if (!objc_msgSend_useClearAssetEncryption(self, v54, v55))
    {
      goto LABEL_59;
    }

    v62 = v46;
    v73 = objc_msgSend_clearAssetKey(assetCopy, v71, v72);

    if (v73)
    {
      v59 = objc_msgSend_clearAssetKey(assetCopy, v74, v75);
LABEL_23:
      v127 = v59;
      if (v59)
      {
        v128 = v38;
        v76 = MEMORY[0x277CCACA8];
        objc_msgSend_publicKey(v51, v60, v61);
        v78 = v77 = v51;
        v81 = objc_msgSend_CKBase64URLSafeString(v78, v79, v80);
        v83 = objc_msgSend_stringWithFormat_(v76, v82, @"&pk=%@", v81);

        v132 = v83;
        v85 = objc_msgSend_stringByAppendingString_(v131, v84, v83);

        v134 = 0;
        v135 = 0;
        v131 = v85;
        LODWORD(v78) = CKEncryptWithPublicKey(v77, v127, v85, &v135, &v134);
        v86 = v135;
        v87 = v134;
        v90 = v87;
        if (v78 && v86)
        {
          v66 = objc_msgSend_CKBase64URLSafeString(v86, v88, v89);
          v68 = 0;
        }

        else
        {
          v91 = v87;
          if (!v91)
          {
            v91 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v92, *MEMORY[0x277CBC120], 1, @"Couldn't wrap asset key: no error");
          }

          v68 = v91;
          v66 = 0;
        }

        v38 = v128;
        v67 = v132;
        goto LABEL_38;
      }

LABEL_59:
      __assert_rtn("[CKDDownloadAssetsOperation _tryToFillInTheDerivativeTemplateWithAsset:]", "CKDDownloadAssetsOperation.m", 349, "assetKey && assetKey expected");
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v74, *MEMORY[0x277CBC120], 1000, @"expected clearAssetKey for asset %@", assetCopy);
  }
  v97 = ;
  if (!v97)
  {
    goto LABEL_59;
  }

  v68 = v97;
  v67 = 0;
  v66 = 0;
LABEL_38:

LABEL_39:
  if (!v68)
  {
    goto LABEL_40;
  }

LABEL_54:
  v21 = v68;

LABEL_55:

  return v21;
}

- (void)_prepareAssetForDownload:(id)download
{
  v103 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  v8 = objc_msgSend_signature(downloadCopy, v6, v7);

  if (v8)
  {
    if (!objc_msgSend_paddedFileSize(downloadCopy, v9, v10) || (objc_msgSend_authToken(downloadCopy, v11, v12), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v13 = objc_msgSend_container(self, v11, v12);
      v8 = MEMORY[0x277CBC6A8];
      v16 = objc_msgSend_signature(downloadCopy, v14, v15);
      LODWORD(v8) = objc_msgSend_isValidV2Signature_(v8, v17, v16);

      v20 = objc_msgSend_options(v13, v18, v19);
      v23 = objc_msgSend_mmcsEncryptionSupport(v20, v21, v22);

      if (v8)
      {
        v26 = objc_msgSend_options(v13, v24, v25);
        v29 = objc_msgSend_mmcsEncryptionSupport(v26, v27, v28) & 2 | v23 & 1;

        if (v29)
        {
          goto LABEL_11;
        }
      }

      else if (v23)
      {
        goto LABEL_11;
      }

      if (objc_msgSend_size(downloadCopy, v24, v25) || (objc_msgSend_signature(downloadCopy, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_zeroSizeFileSignature(CKDMMCS, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v32, v36, v35), v35, v32, (isEqualToData & 1) == 0))
      {
        v39 = *MEMORY[0x277CBC120];
        if (v8)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, v39, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", downloadCopy, @"V2");
        }

        else
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, v39, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", downloadCopy, @"V1");
        }
        v38 = ;
LABEL_16:

        if (!v38)
        {
          goto LABEL_17;
        }

LABEL_21:
        objc_msgSend_shouldDownloadAssetFromTranscoder_(self, v40, downloadCopy);
        goto LABEL_22;
      }

LABEL_11:
      v38 = 0;
      goto LABEL_16;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1000, @"Missing download token for asset %@", downloadCopy);
  }

  else
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1000, @"Missing signature for asset %@", downloadCopy);
  }
  v38 = ;
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_17:
  v42 = objc_msgSend_constructedAssetDownloadURLTemplate(downloadCopy, v40, v41);

  if (v42)
  {
    v38 = objc_msgSend__tryToFillInTheDerivativeTemplateWithAsset_(self, v43, downloadCopy);
  }

  else
  {
    v38 = 0;
  }

  shouldDownloadAssetFromTranscoder = objc_msgSend_shouldDownloadAssetFromTranscoder_(self, v43, downloadCopy);
  v48 = shouldDownloadAssetFromTranscoder;
  if (v38 || (shouldDownloadAssetFromTranscoder & 1) != 0)
  {
    if (!v38)
    {
      goto LABEL_39;
    }

LABEL_22:
    v45 = 0;
    goto LABEL_23;
  }

  if (!objc_msgSend_paddedFileSize(downloadCopy, v44, v47))
  {
    v49 = objc_msgSend_constructedAssetDownloadURLTemplate(downloadCopy, v44, v47);

    if (!v49)
    {
      v50 = objc_msgSend_data(MEMORY[0x277CBEA90], v44, v47);
      v53 = objc_msgSend_container(self, v51, v52);
      v56 = objc_msgSend_MMCS(v53, v54, v55);

      v59 = objc_msgSend_assetCache(v56, v57, v58);
      v62 = objc_msgSend_signature(downloadCopy, v60, v61);
      v99 = v50;
      v100 = 0;
      v45 = objc_msgSend_trackDownloadedData_signature_error_(v59, v63, v50, v62, &v100);
      v38 = v100;

      if (!(v45 | v38))
      {
        v82 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v64, v65);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v82, v83, a2, self, @"CKDDownloadAssetsOperation.m", 442, @"Expected non-nil error for asset %@", downloadCopy);

        if (v48)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

      if (v45)
      {
        v66 = objc_msgSend_fileURL(v45, v64, v65);
        objc_msgSend_setFileURL_(downloadCopy, v67, v66);

        v70 = objc_msgSend_trackingUUID(v45, v68, v69);
        objc_msgSend_setUUID_(downloadCopy, v71, v70);

        objc_msgSend_setWasCached_(downloadCopy, v72, 1);
        if (!v38)
        {
          v74 = objc_msgSend_fileURL(downloadCopy, v44, v73);
          objc_msgSend_setDownloaded_(downloadCopy, v75, v74 != 0);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v76 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v102 = downloadCopy;
            _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "Returning asset from cache: %@", buf, 0xCu);
          }

          objc_msgSend__didPrepareAsset_(self, v77, downloadCopy);
          objc_msgSend__didMakeProgressForAsset_progress_(self, v78, downloadCopy, 1.0);
          objc_msgSend__didDownloadAsset_error_(self, v79, downloadCopy, 0);
          goto LABEL_24;
        }

LABEL_23:
        objc_msgSend__didDownloadAsset_error_(self, v44, downloadCopy, v38);

        goto LABEL_24;
      }

      if (v38)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_39:
  if (v48)
  {
LABEL_40:
    v80 = objc_msgSend_assetsToDownloadFromTranscoder(self, v44, v47);
    objc_msgSend_addObject_(v80, v81, downloadCopy);

    v45 = 0;
    goto LABEL_24;
  }

LABEL_44:
  v84 = [CKDMMCSItem alloc];
  v45 = objc_msgSend_initWithAsset_(v84, v85, downloadCopy);
  v88 = objc_msgSend_paddedFileSize(downloadCopy, v86, v87);
  objc_msgSend_setPaddedFileSize_(v45, v89, v88);
  if ((v8 & 1) == 0)
  {
    v92 = objc_msgSend_size(downloadCopy, v90, v91);
    objc_msgSend_setFileSize_(v45, v93, v92);
  }

  v94 = objc_msgSend_operationInfo(self, v90, v91);
  v97 = objc_msgSend_usesAssetDownloadStagingManager(v94, v95, v96);

  if (v97)
  {
    objc_msgSend_setUsesAssetDownloadStagingManager_(v45, v98, 1);
  }

  objc_msgSend_addObject_(self->_prepareMMCSItemsToDownload, v98, v45);
LABEL_24:
}

- (void)_preparePackageForDataDownload:(id)download
{
  v61 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_assets(downloadCopy, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);
  v13 = objc_msgSend_initWithCapacity_(v5, v12, v11);

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = objc_msgSend_assets(downloadCopy, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v56, v60, 16);
  v19 = 0x277CBC000uLL;
  v20 = MEMORY[0x277CBC120];
  if (v18)
  {
    selfCopy = self;
    v21 = 0;
    v22 = *v57;
    while (2)
    {
      v23 = 0;
      v24 = v21;
      v21 += v18;
      do
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v56 + 1) + 8 * v23);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = 0x277CBC000uLL;
          v20 = MEMORY[0x277CBC120];
          v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1000, @"Invalid package manifest for package %@", downloadCopy);
          self = selfCopy;
          goto LABEL_14;
        }

        if (v24)
        {
          objc_msgSend_addObject_(v13, v26, v25);
        }

        ++v24;
        ++v23;
      }

      while (v18 != v23);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v26, &v56, v60, 16);
      if (v18)
      {
        continue;
      }

      break;
    }

    v24 = v21;
    self = selfCopy;
    v19 = 0x277CBC000;
    v20 = MEMORY[0x277CBC120];
  }

  else
  {
    v24 = 0;
  }

LABEL_14:

  if (!v18 && !v24)
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(*(v19 + 1376), v27, *v20, 1000, @"No package manifest found for package %@", downloadCopy);
  }

  if (v18)
  {
    objc_msgSend__didDownloadAsset_error_(self, v27, downloadCopy, v18);
  }

  else
  {
    v29 = objc_msgSend_assets(downloadCopy, v27, v28);
    v32 = objc_msgSend_firstObject(v29, v30, v31);

    v33 = [CKDMMCSItem alloc];
    v35 = objc_msgSend_initWithAsset_(v33, v34, v32);
    v38 = objc_msgSend_size(v32, v36, v37);
    objc_msgSend_setFileSize_(v35, v39, v38);
    objc_msgSend_setPackage_(v35, v40, downloadCopy);
    objc_msgSend_setIsPackageManifest_(v35, v41, 1);
    objc_msgSend_addObject_(self->_prepareMMCSItemsToDownload, v42, v35);
    v43 = [CKPackageDownloadTask alloc];
    v46 = objc_msgSend_downloadProgressBlock(self, v44, v45);
    v48 = objc_msgSend_initWithPackage_trackProgress_(v43, v47, downloadCopy, v46 != 0);

    objc_msgSend_setManifestAsset_(v48, v49, v32);
    objc_msgSend_setSectionAssets_(v48, v50, v13);
    v53 = objc_msgSend_downloadTasksByPackages(self, v51, v52);
    objc_msgSend_setObject_forKey_(v53, v54, v48, downloadCopy);
  }
}

- (void)_preparePackageForMetadataDownload:(id)download
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_assets(download, a2, download, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend__prepareAssetForDownload_(self, v7, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (void)_preparePackageForDownload:(id)download
{
  downloadCopy = download;
  if (sub_2251A88B0(self, v4, v5))
  {
    objc_msgSend__preparePackageForMetadataDownload_(self, v6, downloadCopy);
  }

  else
  {
    objc_msgSend__preparePackageForDataDownload_(self, v6, downloadCopy);
  }
}

- (BOOL)_prepareForDownload
{
  v204 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v161 = v3;
    v164 = objc_msgSend_assetsToDownload(self, v162, v163);
    v167 = objc_msgSend_assetsToDownloadInMemory(self, v165, v166);
    v170 = objc_msgSend_assetURLInfosToFillOut(self, v168, v169);
    v173 = objc_msgSend_operationID(self, v171, v172);
    *buf = 138413058;
    v197 = v164;
    v198 = 2112;
    v199 = v167;
    v200 = 2112;
    v201 = v170;
    v202 = 2114;
    v203 = v173;
    _os_log_debug_impl(&dword_22506F000, v161, OS_LOG_TYPE_DEBUG, "Downloading assets %@, in-memory assets %@, and publish assets %@ for operation %{public}@", buf, 0x2Au);
  }

  os_unfair_lock_lock(&self->_prepareLock);
  v182 = objc_msgSend_container(self, v4, v5);
  v8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
  objc_msgSend_setDownloadTasksByPackages_(self, v9, v8);

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_assetsToDownload(self, v11, v12);
  v16 = objc_msgSend_count(v13, v14, v15);
  v18 = objc_msgSend_initWithCapacity_(v10, v17, v16);
  prepareMMCSItemsToDownload = self->_prepareMMCSItemsToDownload;
  self->_prepareMMCSItemsToDownload = v18;

  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v23 = objc_msgSend_assetsToDownloadInMemory(self, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);
  v28 = objc_msgSend_initWithCapacity_(v20, v27, v26);
  prepareMMCSItemsToDownloadInMemory = self->_prepareMMCSItemsToDownloadInMemory;
  self->_prepareMMCSItemsToDownloadInMemory = v28;

  v30 = objc_alloc(MEMORY[0x277CBEB18]);
  v33 = objc_msgSend_assetsToDownload(self, v31, v32);
  v36 = objc_msgSend_count(v33, v34, v35);
  v179 = objc_msgSend_initWithCapacity_(v30, v37, v36);

  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v41 = objc_msgSend_assetsToDownloadInMemory(self, v39, v40);
  v44 = objc_msgSend_count(v41, v42, v43);
  v180 = objc_msgSend_initWithCapacity_(v38, v45, v44);

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v48 = objc_msgSend_assetsToDownload(self, v46, v47);
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v188, v195, 16);
  if (v51)
  {
    v52 = *v189;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v189 != v52)
        {
          objc_enumerationMutation(v48);
        }

        v54 = *(*(&v188 + 1) + 8 * i);
        v55 = objc_msgSend__prepareForDownloadWithOperation_(v54, v50, self);
        objc_msgSend__didPrepareAsset_(self, v56, v54);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v188, v195, 16);
    }

    while (v51);
  }

  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v59 = objc_msgSend_assetsToDownloadInMemory(self, v57, v58);
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v184, v194, 16);
  if (v61)
  {
    v62 = *v185;
    v181 = *MEMORY[0x277CBC120];
    obj = v59;
    do
    {
      v63 = 0;
      do
      {
        if (*v185 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v184 + 1) + 8 * v63);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v95 = 0;
          goto LABEL_47;
        }

        v66 = v64;
        v69 = objc_msgSend_signature(v66, v67, v68);
        v70 = v69 == 0;

        if (v70)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v71, v181, 1000, @"Missing signature for asset %@", v66);
        }

        else if (objc_msgSend_paddedFileSize(v66, v71, v72) && (objc_msgSend_authToken(v66, v73, v74), v75 = objc_claimAutoreleasedReturnValue(), v76 = v75 == 0, v75, v76))
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v73, v181, 1000, @"Missing download token for asset %@", v66);
        }

        else
        {
          v77 = MEMORY[0x277CBC6A8];
          v78 = objc_msgSend_signature(v66, v73, v74);
          isValidV2Signature = objc_msgSend_isValidV2Signature_(v77, v79, v78);

          if (isValidV2Signature)
          {
            v83 = objc_msgSend_options(v182, v81, v82);
            v86 = objc_msgSend_mmcsEncryptionSupport(v83, v84, v85);

            v89 = objc_msgSend_options(v182, v87, v88);
            v92 = objc_msgSend_mmcsEncryptionSupport(v89, v90, v91);

            if ((v92 >> 1) & 1 | v86 & 1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v96 = objc_msgSend_options(v182, v81, v82);
            v99 = (objc_msgSend_mmcsEncryptionSupport(v96, v97, v98) & 1) == 0;

            if (!v99)
            {
              goto LABEL_34;
            }
          }

          if (!objc_msgSend_size(v66, v93, v94))
          {
            v101 = objc_msgSend_signature(v66, v93, v100);
            v104 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v102, v103);
            isEqualToData = objc_msgSend_isEqualToData_(v101, v105, v104);

            if (isEqualToData)
            {
LABEL_34:
              v108 = objc_msgSend_constructedAssetDownloadURLTemplate(v66, v93, v94);
              v109 = v108 == 0;

              if (v109)
              {
                v107 = 0;
              }

              else
              {
                v107 = objc_msgSend__tryToFillInTheDerivativeTemplateWithAsset_(self, v93, v66);
              }

              goto LABEL_37;
            }
          }

          if (isValidV2Signature)
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v93, v181, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", v66, @"V2");
          }

          else
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v93, v181, 1000, @"Inconsistent signature type for asset %@, Asset was %@, container does not support", v66, @"V1");
          }
        }
        v107 = ;
        if (!v107)
        {
          goto LABEL_34;
        }

LABEL_37:
        shouldDownloadAssetFromTranscoder = objc_msgSend_shouldDownloadAssetFromTranscoder_(self, v93, v66);
        if ((v107 != 0) | shouldDownloadAssetFromTranscoder & 1)
        {
          if (v107)
          {
            objc_msgSend__didDownloadAsset_error_(self, v110, v66, v107);
            v95 = 0;
LABEL_40:

            goto LABEL_48;
          }
        }

        else if (!objc_msgSend_paddedFileSize(v66, v110, v111))
        {
          v114 = objc_msgSend_constructedAssetDownloadURLTemplate(v66, v110, v113);
          v115 = v114 == 0;

          if (v115)
          {
            v95 = objc_alloc_init(CKDMMCSItem);
            if (!v95)
            {
              v137 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v124, v125);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v137, v138, a2, self, @"CKDDownloadAssetsOperation.m", 586, @"Expected non-nil asset");
            }

            objc_msgSend_setPaddedFileSize_(v95, v124, 0);
            objc_msgSend_setFileSize_(v95, v126, 0);
            objc_msgSend_setWasCached_(v66, v127, 1);
            objc_msgSend_setDownloaded_(v66, v128, 1);
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v129 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v197 = v66;
              _os_log_debug_impl(&dword_22506F000, v129, OS_LOG_TYPE_DEBUG, "Returning asset from cache: %@", buf, 0xCu);
            }

            objc_msgSend__didPrepareAsset_(self, v130, v66);
            v192[0] = @"Data";
            v131 = objc_opt_new();
            v192[1] = @"Offset";
            v193[0] = v131;
            v193[1] = &unk_2838C8418;
            v133 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v132, v193, v192, 2);
            objc_msgSend__didCommandForAsset_command_(self, v134, v66, v133);

            objc_msgSend__didMakeProgressForAsset_progress_(self, v135, v66, 1.0);
            objc_msgSend__didDownloadAsset_error_(self, v136, v66, 0);
            goto LABEL_40;
          }
        }

        if (shouldDownloadAssetFromTranscoder)
        {
          objc_msgSend_addObject_(v180, v110, v66);
          v95 = 0;
        }

        else
        {
          v116 = [CKDMMCSItem alloc];
          v95 = objc_msgSend_initWithAsset_(v116, v117, v66);
          v120 = objc_msgSend_size(v66, v118, v119);
          objc_msgSend_setFileSize_(v95, v121, v120);
          objc_msgSend_addObject_(self->_prepareMMCSItemsToDownloadInMemory, v122, v95);
        }

LABEL_47:
        objc_msgSend__didPrepareAsset_(self, v65, v64);
LABEL_48:

        ++v63;
      }

      while (v61 != v63);
      v59 = obj;
      v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v123, &v184, v194, 16);
      v61 = v139;
    }

    while (v139);
  }

  if (objc_msgSend_count(self->_prepareMMCSItemsToDownload, v140, v141) || objc_msgSend_count(self->_prepareMMCSItemsToDownloadInMemory, v142, v143))
  {
    goto LABEL_63;
  }

  v144 = objc_msgSend_assetURLInfosToFillOut(self, v142, v143);
  if (objc_msgSend_count(v144, v145, v146) || objc_msgSend_count(v179, v147, v148))
  {

LABEL_63:
    v151 = objc_msgSend_copy(self->_prepareMMCSItemsToDownload, v142, v143);
    objc_msgSend_setMMCSItemsToDownload_(self, v152, v151);

    v155 = objc_msgSend_copy(self->_prepareMMCSItemsToDownloadInMemory, v153, v154);
    objc_msgSend_setMMCSItemsToDownloadInMemory_(self, v156, v155);
    v157 = 1;
    goto LABEL_64;
  }

  v174 = objc_msgSend_count(v180, v149, v150) == 0;

  if (!v174)
  {
    goto LABEL_63;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v155 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
  {
    v177 = objc_msgSend_operationID(self, v175, v176);
    *buf = 138543362;
    v197 = v177;
    _os_log_debug_impl(&dword_22506F000, v155, OS_LOG_TYPE_DEBUG, "No assets to download for %{public}@", buf, 0xCu);
  }

  v157 = 0;
LABEL_64:

  v158 = self->_prepareMMCSItemsToDownload;
  self->_prepareMMCSItemsToDownload = 0;

  v159 = self->_prepareMMCSItemsToDownloadInMemory;
  self->_prepareMMCSItemsToDownloadInMemory = 0;

  os_unfair_lock_unlock(&self->_prepareLock);
  return v157;
}

- (void)_didDownloadMMCSItem:(id)item inMemory:(BOOL)memory error:(id)error
{
  v103[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  errorCopy = error;
  v12 = objc_msgSend_package(itemCopy, v10, v11);
  v15 = objc_msgSend_asset(itemCopy, v13, v14);
  v18 = objc_msgSend_error(itemCopy, v16, v17);
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = errorCopy;
  }

  v21 = v20;

  if (v21)
  {
    v103[0] = itemCopy;
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v103, 1);
    objc_msgSend__removeUntrackedMMCSItems_(self, v25, v24);

    if (v12)
    {
      v28 = objc_msgSend_downloadTasksByPackages(self, v26, v27);
      v30 = objc_msgSend_objectForKey_(v28, v29, v12);

      objc_msgSend_setError_(v30, v31, v21);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v83 = v32;
        v86 = objc_msgSend_operationID(self, v84, v85);
        *buf = 138413058;
        v96 = itemCopy;
        v97 = 2112;
        v98 = v12;
        v99 = 2114;
        v100 = v86;
        v101 = 2112;
        v102 = v21;
        _os_log_debug_impl(&dword_22506F000, v83, OS_LOG_TYPE_DEBUG, "Failed to download MMCS item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
      }

      objc_msgSend__didDownloadAsset_error_(self, v33, v12, v21);
      v36 = objc_msgSend_group(v30, v34, v35);
      dispatch_group_leave(v36);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v80 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v87 = v80;
        v90 = objc_msgSend_operationID(self, v88, v89);
        *buf = 138412802;
        v96 = itemCopy;
        v97 = 2114;
        v98 = v90;
        v99 = 2112;
        v100 = v21;
        _os_log_debug_impl(&dword_22506F000, v87, OS_LOG_TYPE_DEBUG, "Failed to download MMCS item %@ for operation %{public}@: %@", buf, 0x20u);
      }

      objc_msgSend__didDownloadAsset_error_(self, v81, v15, v21);
    }
  }

  else
  {
    if (!v15)
    {
      v91 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v91, v92, a2, self, @"CKDDownloadAssetsOperation.m", 643, @"Expected non-nil asset for item %@", itemCopy);
    }

    v37 = objc_msgSend_fileSize(itemCopy, v22, v23);
    objc_msgSend_setSize_(v15, v38, v37);
    v41 = objc_msgSend_paddedFileSize(itemCopy, v39, v40);
    objc_msgSend_setPaddedFileSize_(v15, v42, v41);
    v45 = objc_msgSend_verificationKey(itemCopy, v43, v44);
    objc_msgSend_setVerificationKey_(v15, v46, v45);

    if (sub_2251A88B0(self, v47, v48))
    {
      v51 = objc_msgSend_itemID(itemCopy, v49, v50);
      objc_msgSend_setReReferenceItemID_(v15, v52, v51);
    }

    if (!itemCopy)
    {
      v93 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v49, v50);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v93, v94, a2, self, @"CKDDownloadAssetsOperation.m", 668, @"Expected non-nil MMCS item");
    }

    v53 = objc_msgSend_trackingUUID(itemCopy, v49, v50);
    objc_msgSend_setUUID_(v15, v54, v53);

    if (objc_msgSend_downloadLooksOkay(itemCopy, v55, v56))
    {
      objc_msgSend_setDownloaded_(v15, v57, 1);
      v61 = objc_msgSend_fileURL(itemCopy, v59, v60);
      objc_msgSend_setFileURL_(v15, v62, v61);

      v65 = objc_msgSend_fileHandle(itemCopy, v63, v64);
      objc_msgSend_setFileHandle_(v15, v66, v65);
    }

    if (v12)
    {
      v67 = objc_msgSend_downloadTasksByPackages(self, v57, v58);
      v69 = objc_msgSend_objectForKey_(v67, v68, v12);

      v72 = objc_msgSend_progressTracker(v69, v70, v71);
      objc_msgSend_updateProgressWithItem_progress_(v72, v73, v15, 1.0);
      v75 = v74;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v76, v12, v75);
      v79 = objc_msgSend_group(v69, v77, v78);
      dispatch_group_leave(v79);
    }

    else
    {
      objc_msgSend__didMakeProgressForAsset_progress_(self, v57, v15, 1.0);
      objc_msgSend__didDownloadAsset_error_(self, v82, v15, 0);
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
    v8[2] = sub_2251A99AC;
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
  v7 = objc_msgSend_CKCompactMap_(v4, v5, &unk_28385D3A0);

  objc_msgSend__collectMetricsFromMMCSOperationMetrics_(self, v6, v7);
}

- (void)_didDownloadMMCSItems:(id)items inMemory:(BOOL)memory error:(id)error
{
  memoryCopy = memory;
  v38 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  errorCopy = error;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v10, &v27, v37, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        if ((objc_msgSend_finished(v17, v12, v13) & 1) == 0)
        {
          objc_msgSend_setFinished_(v17, v12, 1);
          objc_msgSend__didDownloadMMCSItem_inMemory_error_(self, v18, v17, memoryCopy, errorCopy);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v12, &v27, v37, 16);
    }

    while (v14);
  }

  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = v19;
      v23 = objc_msgSend_count(itemsCopy, v21, v22);
      v26 = objc_msgSend_operationID(self, v24, v25);
      *buf = 134218498;
      v32 = v23;
      v33 = 2114;
      v34 = v26;
      v35 = 2112;
      v36 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Failed to download %lu MMCS items for operation %{public}@: %@", buf, 0x20u);
    }
  }
}

- (void)_didMakeProgressForMMCSItem:(id)item inMemory:(BOOL)memory
{
  memoryCopy = memory;
  itemCopy = item;
  v8 = objc_msgSend_finished(itemCopy, v6, v7);
  v11 = objc_msgSend_error(itemCopy, v9, v10);
  v14 = v11;
  if (v8)
  {
    objc_msgSend__didDownloadMMCSItem_inMemory_error_(self, v12, itemCopy, memoryCopy, v11);
  }

  else if (!v11)
  {
    objc_msgSend_progress(itemCopy, v12, v13);
    if (v17 < 0.0)
    {
      goto LABEL_10;
    }

    v14 = objc_msgSend_package(itemCopy, v15, v16);
    v22 = objc_msgSend_asset(itemCopy, v18, v19);
    if (v14)
    {
      v23 = objc_msgSend_downloadTasksByPackages(self, v20, v21);
      v25 = objc_msgSend_objectForKey_(v23, v24, v14);

      v28 = objc_msgSend_progressTracker(v25, v26, v27);
      objc_msgSend_progress(itemCopy, v29, v30);
      objc_msgSend_updateProgressWithItem_progress_(v28, v31, v22);
      v33 = v32;

      objc_msgSend__didMakeProgressForAsset_progress_(self, v34, v14, v33);
    }

    else
    {
      objc_msgSend_progress(itemCopy, v20, v21);
      objc_msgSend__didMakeProgressForAsset_progress_(self, v35, v22);
    }
  }

LABEL_10:
}

- (void)_didCommandForMMCSItem:(id)item command:(id)command
{
  commandCopy = command;
  v10 = objc_msgSend_asset(item, v7, v8);
  objc_msgSend__didCommandForAsset_command_(self, v9, v10, commandCopy);
}

- (void)_didDownloadMMCSSectionItem:(id)item task:(id)task error:(id)error
{
  v144 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  taskCopy = task;
  errorCopy = error;
  v14 = objc_msgSend_mmcs(self, v12, v13);
  v17 = objc_msgSend_container(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_assetCache(v14, v18, v19);

    if (!v20)
    {
      v115 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
      v118 = objc_msgSend_container(self, v116, v117);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v115, v119, a2, self, @"CKDDownloadAssetsOperation.m", 747, @"Expected non-nil assetCache for %@", v118);
    }
  }

  v128 = objc_msgSend_package(taskCopy, v18, v19);
  v23 = objc_msgSend_error(itemCopy, v21, v22);
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = errorCopy;
  }

  v26 = v25;

  if (v26)
  {
LABEL_8:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v107 = v29;
      v110 = objc_msgSend_operationID(self, v108, v109);
      *buf = 138413058;
      v136 = itemCopy;
      v137 = 2112;
      v138 = v128;
      v139 = 2114;
      v140 = v110;
      v141 = 2112;
      v142 = v26;
      _os_log_debug_impl(&dword_22506F000, v107, OS_LOG_TYPE_DEBUG, "Failed to download MMCS section item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    objc_msgSend_setError_(taskCopy, v30, v26);
    v33 = objc_msgSend_sectionItems(itemCopy, v31, v32);
    objc_msgSend__removeUntrackedMMCSItems_(self, v34, v33);

    goto LABEL_48;
  }

  if (sub_2251A88B0(self, v27, v28))
  {
    goto LABEL_43;
  }

  v124 = a2;
  selfCopy = self;
  v120 = v14;
  v121 = errorCopy;
  v122 = taskCopy;
  v35 = objc_alloc(MEMORY[0x277CBEB18]);
  v37 = objc_msgSend_initWithCapacity_(v35, v36, 100);
  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v40 = objc_msgSend_initWithCapacity_(v38, v39, 100);
  v123 = itemCopy;
  v43 = objc_msgSend_sectionItems(itemCopy, v41, v42);
  v127 = objc_msgSend_objectEnumerator(v43, v44, v45);

  v48 = 0;
  v126 = v37;
  while (1)
  {
    while (1)
    {
      v49 = v48;
      v48 = objc_msgSend_nextObject(v127, v46, v47);

      if (!v48)
      {
LABEL_25:
        v26 = 0;
        goto LABEL_26;
      }

      v50 = objc_msgSend_error(v48, v46, v47);

      if (v50)
      {
        break;
      }

      v54 = objc_msgSend_fileURL(v48, v51, v52);
      if (!v54)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v55 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v136 = v48;
          _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Expected non-nil fileURL for %@", buf, 0xCu);
        }

        v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v56, v57);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, v124, selfCopy, @"CKDDownloadAssetsOperation.m", 771, @"Expected non-nil fileURL for %@", v48);
      }

      objc_msgSend_addObject_(v40, v53, v54);
      v60 = MEMORY[0x277CCABB0];
      v63 = objc_msgSend_packageIndex(v48, v61, v62);
      v65 = objc_msgSend_numberWithUnsignedLongLong_(v60, v64, v63);
      objc_msgSend_addObject_(v37, v66, v65);

      v69 = objc_msgSend_count(v37, v67, v68);
      if (v69 >= 0x64)
      {
        goto LABEL_25;
      }
    }

    v26 = objc_msgSend_error(v48, v51, v52);
LABEL_26:
    v70 = objc_msgSend_count(v37, v46, v47);
    if (v26 || !v70)
    {
      break;
    }

    v129 = v70;
    v130 = v48;
    v72 = objc_msgSend_updateItemsAtIndexes_fileURLs_(v128, v71, v37, v40);
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v73 = v37;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v131, v143, 16);
    v77 = MEMORY[0x277CBC880];
    if (v75)
    {
      v78 = v75;
      v79 = 0;
      v80 = *v132;
      do
      {
        v81 = 0;
        do
        {
          if (*v132 != v80)
          {
            objc_enumerationMutation(v73);
          }

          v82 = *(*(&v131 + 1) + 8 * v81);
          v83 = objc_msgSend_objectAtIndex_(v40, v76, v79);
          if (*v77 != -1)
          {
            dispatch_once(v77, *MEMORY[0x277CBC878]);
          }

          v84 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v85 = v84;
            v88 = objc_msgSend_unsignedIntegerValue(v82, v86, v87);
            v91 = objc_msgSend_path(v83, v89, v90);
            *buf = 134218242;
            v136 = v88;
            v137 = 2114;
            v138 = v91;
            _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Updated package item with index:%lu and path:%{public}@", buf, 0x16u);

            v77 = MEMORY[0x277CBC880];
          }

          ++v81;
          ++v79;
        }

        while (v78 != v81);
        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v131, v143, 16);
      }

      while (v78);
    }

    objc_msgSend_removeAllObjects(v40, v92, v93);
    objc_msgSend_removeAllObjects(v73, v94, v95);

    v48 = 0;
    v26 = 0;
    v37 = v126;
    if (v129 <= 0x63)
    {
      goto LABEL_42;
    }
  }

LABEL_42:
  taskCopy = v122;
  itemCopy = v123;
  v14 = v120;
  errorCopy = v121;
  self = selfCopy;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_43:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v96 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v111 = v96;
    v114 = objc_msgSend_operationID(self, v112, v113);
    *buf = 138413058;
    v136 = itemCopy;
    v137 = 2112;
    v138 = v128;
    v139 = 2114;
    v140 = v114;
    v141 = 2112;
    v142 = 0;
    _os_log_debug_impl(&dword_22506F000, v111, OS_LOG_TYPE_DEBUG, "Downloaded MMCS section item %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
  }

  v26 = objc_msgSend_asset(itemCopy, v97, v98);
  objc_msgSend_setDownloaded_(v26, v99, 1);
  v102 = objc_msgSend_progressTracker(taskCopy, v100, v101);
  objc_msgSend_updateProgressWithItem_progress_(v102, v103, v26, 1.0);
  v105 = v104;

  objc_msgSend__didMakeProgressForAsset_progress_(self, v106, v128, v105);
LABEL_48:
}

- (void)_didDownloadMMCSSectionItems:(id)items task:(id)task error:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  taskCopy = task;
  errorCopy = error;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v11, &v25, v33, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if ((objc_msgSend_finished(v18, v13, v14) & 1) == 0)
        {
          objc_msgSend_setFinished_(v18, v13, 1);
          objc_msgSend__didDownloadMMCSSectionItem_task_error_(self, v19, v18, taskCopy, errorCopy);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v13, &v25, v33, 16);
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
      *buf = 134218242;
      v30 = v24;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Failed to download %lu MMCS section items: %@", buf, 0x16u);
    }
  }
}

- (void)_didMakeProgressForMMCSSectionItem:(id)item task:(id)task
{
  itemCopy = item;
  taskCopy = task;
  if (objc_msgSend_finished(itemCopy, v7, v8))
  {
    v11 = objc_msgSend_error(itemCopy, v9, v10);
    objc_msgSend__didDownloadMMCSSectionItem_task_error_(self, v12, itemCopy, taskCopy, v11);
LABEL_6:

    goto LABEL_7;
  }

  objc_msgSend_progress(itemCopy, v9, v10);
  v14 = v13;
  v17 = objc_msgSend_error(itemCopy, v15, v16);

  if (!v17 && v14 >= 0.0)
  {
    v11 = objc_msgSend_package(itemCopy, v18, v19);
    v22 = objc_msgSend_progressTracker(taskCopy, v20, v21);
    v25 = objc_msgSend_asset(itemCopy, v23, v24);
    objc_msgSend_updateProgressWithItem_progress_(v22, v26, v25, v14);
    v28 = v27;

    objc_msgSend__didMakeProgressForAsset_progress_(self, v29, v11, v28);
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_downloadPackageSectionAtIndex:(int64_t)index task:(id)task completionBlock:(id)block
{
  v176 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  blockCopy = block;
  if (index < 0)
  {
    v113 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v113, v114, a2, self, @"CKDDownloadAssetsOperation.m", 840, @"Expected a valid sectionIndex: %ld", index);
  }

  if (!objc_msgSend_isCancelled(self, v10, v11))
  {
    v124 = objc_msgSend_mmcs(self, v13, v14);
    v19 = objc_msgSend_package(taskCopy, v17, v18);
    v125 = objc_msgSend_downloadItemIndices(v19, v20, v21);
    v161 = 0;
    v162 = &v161;
    v163 = 0x3032000000;
    v164 = sub_225073FD0;
    v165 = sub_225073574;
    v166 = 0;
    v160 = 0;
    v23 = objc_msgSend_sectionAtIndex_error_(v19, v22, index, &v160);
    objc_storeStrong(&v166, v160);
    if (!v23)
    {
      v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1000, @"Couldn't find section at index %ld for package %@, error: %@", index, v19, v162[5]);
      objc_msgSend_setError_(taskCopy, v33, v32);

      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      goto LABEL_24;
    }

    v154 = 0;
    v155 = &v154;
    v156 = 0x3032000000;
    v157 = sub_225073FD0;
    v158 = sub_225073574;
    v159 = objc_opt_new();
    v148 = 0;
    v149 = &v148;
    v150 = 0x3032000000;
    v151 = sub_225073FD0;
    v152 = sub_225073574;
    v153 = objc_opt_new();
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = sub_2251AB4EC;
    v142[3] = &unk_278548840;
    v25 = v19;
    v143 = v25;
    v145 = &v161;
    v26 = v23;
    v144 = v26;
    v146 = &v154;
    v147 = &v148;
    objc_msgSend_enumerateIndexesUsingBlock_(v125, v27, v142);
    v29 = (v162 + 5);
    if (v162[5])
    {
      v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 1000, @"Error creating download package items: %@", v162[5]);
      objc_msgSend_setError_(taskCopy, v31, v30);

      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      goto LABEL_23;
    }

    obj = 0;
    v121 = objc_msgSend_size_(v26, v28, &obj);
    objc_storeStrong(v29, obj);
    if (v162[5])
    {
      v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 1000, @"Error determining section size: %@", v162[5]);
      objc_msgSend_setError_(taskCopy, v37, v36);

      if (blockCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (v121)
    {
      v119 = objc_msgSend_sectionIndex(v26, v34, v35);
      if (v119 == -1 || (objc_msgSend_assets(v25, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend_count(v40, v41, v42) > (v119 + 1), v40, !v43))
      {
        v52 = MEMORY[0x277CBC560];
        v53 = objc_msgSend_assets(v25, v38, v39);
        v56 = objc_msgSend_count(v53, v54, v55);
        v58 = objc_msgSend_errorWithDomain_code_format_(v52, v57, *MEMORY[0x277CBC120], 1000, @"Invalid section index %llu(%lu) for package %@", v119, v56, v25);
        objc_msgSend_setError_(taskCopy, v59, v58);

        if (blockCopy)
        {
LABEL_20:
          blockCopy[2](blockCopy);
        }

LABEL_21:
        v60 = 0;
LABEL_22:

LABEL_23:
        _Block_object_dispose(&v148, 8);

        _Block_object_dispose(&v154, 8);
LABEL_24:

        _Block_object_dispose(&v161, 8);
        goto LABEL_25;
      }

      v44 = objc_msgSend_assets(v25, v38, v39);
      v46 = objc_msgSend_objectAtIndex_(v44, v45, v119 + 1);

      v47 = [CKDMMCSItem alloc];
      v49 = objc_msgSend_initWithAsset_(v47, v48, v46);
      objc_msgSend_setPackage_(v49, v50, v25);
      v120 = v49;
    }

    else
    {
      v61 = [CKDMMCSItem alloc];
      v120 = objc_msgSend_initWithPackage_(v61, v62, v25);
    }

    objc_msgSend_setSectionItems_(v120, v51, v155[5]);
    objc_msgSend_setFileSize_(v120, v63, v121);
    objc_msgSend_setPaddedFileSize_(v120, v64, v121);
    if (objc_msgSend_fileSize(v120, v65, v66) && objc_msgSend_count(v155[5], v67, v68))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v69 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        v111 = v155[5];
        v112 = objc_msgSend_operationID(self, v70, v71);
        *location = 138413314;
        *&location[4] = v120;
        v168 = 2048;
        indexCopy = index;
        v170 = 2112;
        v171 = v111;
        v172 = 2112;
        v173 = v25;
        v174 = 2114;
        v175 = v112;
        _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Downloading MMCS section item %@ at index %lu with MMCS items %@ for package %@ and operation %{public}@", location, 0x34u);
      }

      v122 = objc_alloc(MEMORY[0x277CCACA8]);
      v74 = objc_msgSend_recordKey(v25, v72, v73);
      v77 = objc_msgSend_record(v25, v75, v76);
      v80 = objc_msgSend_recordID(v77, v78, v79);
      v83 = objc_msgSend_recordName(v80, v81, v82);
      v123 = objc_msgSend_initWithFormat_(v122, v84, @"down|%@|%@|section:%lu", v74, v83, index);

      v85 = [CKDProgressTracker alloc];
      v87 = objc_msgSend_initWithTrackingID_(v85, v86, v123);
      objc_msgSend_startTrackingItems_(v87, v88, v155[5]);
      v89 = dispatch_group_create();
      dispatch_group_enter(v89);
      objc_initWeak(location, self);
      v118 = objc_msgSend_MMCSRequestOptions(taskCopy, v90, v91);
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = sub_2251AB7B4;
      v136[3] = &unk_278548868;
      v117 = v87;
      v137 = v117;
      v138 = v120;
      objc_copyWeak(&v140, location);
      v139 = taskCopy;
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = sub_2251AB860;
      v130[3] = &unk_2785488B8;
      v130[4] = self;
      v135 = &v148;
      v131 = v124;
      v132 = v138;
      v92 = v139;
      v133 = v92;
      v93 = v89;
      v134 = v93;
      v120 = v132;
      v95 = objc_msgSend_getSectionItem_operation_options_progress_completionHandler_(v131, v94, v132, self, v118, v136, v130);

      v98 = objc_msgSend_cancelTokens(v92, v96, v97);
      objc_msgSend_addCancelToken_withOperation_(v98, v99, v95, self);

      objc_msgSend_qualityOfService(self, v100, v101);
      v102 = CKGetGlobalQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251ABA9C;
      block[3] = &unk_278546C30;
      v127 = v92;
      v128 = v95;
      v129 = blockCopy;
      v103 = v95;
      dispatch_group_notify(v93, v102, block);

      objc_destroyWeak(&v140);
      objc_destroyWeak(location);
    }

    else
    {
      if (objc_msgSend_count(v155[5], v67, v68))
      {
        v115 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v104, v105);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v115, v116, a2, self, @"CKDDownloadAssetsOperation.m", 927, @"Expected 0 non-empty items in the empty section %@", v120);
      }

      v106 = objc_msgSend_assetCache(v124, v104, v105);
      v108 = objc_msgSend_trackCachedButNotRegisteredMMCSItems_error_(v106, v107, v149[5], 0);

      objc_msgSend_setSectionItems_(v120, v109, v149[5]);
      objc_msgSend__didDownloadMMCSSectionItem_task_error_(self, v110, v120, taskCopy, 0);
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
        v60 = v120;
        goto LABEL_22;
      }
    }

    v60 = v120;
    goto LABEL_22;
  }

  v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
  objc_msgSend_setError_(taskCopy, v16, v15);

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_25:
}

- (void)_downloadPackageSectionsWithSectionEnumerator:(id)enumerator task:(id)task completionBlock:(id)block
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
    v19 = v16;
    v20 = objc_msgSend_integerValue(v16, v17, v18);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2251ABC50;
    v22[3] = &unk_2785488E0;
    v22[4] = self;
    v23 = enumeratorCopy;
    v24 = taskCopy;
    v25 = blockCopy;
    objc_msgSend__downloadPackageSectionAtIndex_task_completionBlock_(self, v21, v20, v24, v22);
  }
}

- (void)_downloadPackageSectionsWithTask:(id)task completionBlock:(id)block
{
  v113 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  blockCopy = block;
  if (objc_msgSend_isCancelled(self, v8, v9))
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 1, @"Operation was cancelled");
    objc_msgSend_setError_(taskCopy, v13, v12);

    if (!blockCopy)
    {
      goto LABEL_33;
    }

    goto LABEL_6;
  }

  v14 = objc_msgSend_error(taskCopy, v10, v11);

  if (v14)
  {
    if (blockCopy)
    {
LABEL_6:
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v98 = 0;
    v99 = &v98;
    v100 = 0x3032000000;
    v101 = sub_225073FD0;
    v102 = sub_225073574;
    v103 = 0;
    v17 = objc_msgSend_package(taskCopy, v15, v16);
    v20 = objc_msgSend_manifestAsset(taskCopy, v18, v19);
    v23 = objc_msgSend_fileURL(v20, v21, v22);
    v26 = objc_msgSend_path(v23, v24, v25);

    if (v26)
    {
      v28 = (v99 + 5);
      obj = v99[5];
      v29 = objc_msgSend_readContentsOfFile_intoPackage_error_(CKDPackageManifest, v27, v26, v17, &obj);
      objc_storeStrong(v28, obj);
      if (v29)
      {
        v32 = objc_msgSend_itemCount(v17, v30, v31);
        v84 = objc_msgSend_sectionCount(v17, v33, v34);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v35 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v106 = v32;
          v107 = 2048;
          v108 = v84;
          v109 = 2112;
          v110 = v17;
          v111 = 2114;
          v112 = v26;
          _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Read the package manifest with %lu items and %lu sections for package %@ at %{public}@", buf, 0x2Au);
        }

        v85 = objc_msgSend_downloadItemIndices(v17, v36, v37);
        v38 = v99[5];
        v99[5] = 0;

        v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = sub_2251AC3E4;
        v93[3] = &unk_278548908;
        v40 = v17;
        v94 = v40;
        v96 = &v98;
        v41 = v39;
        v95 = v41;
        objc_msgSend_enumerateIndexesUsingBlock_(v85, v42, v93);
        v44 = v99[5];
        if (v44)
        {
          objc_msgSend_setError_(taskCopy, v43, v44);
          if (blockCopy)
          {
            blockCopy[2](blockCopy);
          }
        }

        else
        {
          v80 = objc_msgSend_CKMap_(v41, v43, &unk_28385D3C0);
          v55 = [CKDMMCSRequestOptions alloc];
          v83 = objc_msgSend_initWithOperation_(v55, v56, self);
          v59 = objc_msgSend_record(v40, v57, v58);
          v62 = objc_msgSend_recordID(v59, v60, v61);
          v65 = objc_msgSend_zoneID(v62, v63, v64);
          v82 = objc_msgSend_zoneName(v65, v66, v67);

          if (v82)
          {
            v104 = v82;
            v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, &v104, 1);
            objc_msgSend_setZoneNames_(v83, v70, v69);
          }

          objc_msgSend_setMMCSRequestOptions_(taskCopy, v68, v83, v80);
          objc_msgSend_setSectionIndices_(taskCopy, v71, v41);
          v74 = objc_msgSend_objectEnumerator(v81, v72, v73);
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = sub_2251AC4AC;
          v86[3] = &unk_278548950;
          v87 = taskCopy;
          v92 = v84;
          v88 = v40;
          v89 = v41;
          selfCopy = self;
          v91 = blockCopy;
          objc_msgSend__downloadPackageSectionsWithSectionEnumerator_task_completionBlock_(self, v75, v74, v87, v86);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v78 = objc_msgSend_operationID(self, v52, v53);
          v79 = v99[5];
          *buf = 138413058;
          v106 = v26;
          v107 = 2112;
          v108 = v17;
          v109 = 2114;
          v110 = v78;
          v111 = 2112;
          v112 = v79;
          _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "Failed to read the manifest file at %@ for package %@ and operation %{public}@: %@", buf, 0x2Au);
        }

        objc_msgSend_setError_(taskCopy, v54, v99[5]);
        if (blockCopy)
        {
          blockCopy[2](blockCopy);
        }
      }
    }

    else
    {
      v45 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1017, @"Missing path for the package manifest");
      v46 = v99[5];
      v99[5] = v45;

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v47 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v76 = objc_msgSend_operationID(self, v48, v49);
        v77 = v99[5];
        *buf = 138412802;
        v106 = v17;
        v107 = 2114;
        v108 = v76;
        v109 = 2112;
        v110 = v77;
        _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Missing path for package manifest for package %@ and operation %{public}@: %@", buf, 0x20u);
      }

      objc_msgSend_setError_(taskCopy, v50, v99[5]);
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }
    }

    _Block_object_dispose(&v98, 8);
  }

LABEL_33:
}

- (void)_downloadPackageSectionsWithPendingTasks:(id)tasks downloadingTasks:(id)downloadingTasks completedTasks:(id)completedTasks
{
  tasksCopy = tasks;
  downloadingTasksCopy = downloadingTasks;
  completedTasksCopy = completedTasks;
  if (!objc_msgSend_maxPackageDownloadsPerBatch(self, v12, v13))
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDDownloadAssetsOperation.m", 1082, @"Expected non-0 maxPackageDownloadsPerBatch");
  }

  v16 = objc_msgSend_count(downloadingTasksCopy, v14, v15);
  if (v16 > objc_msgSend_maxPackageDownloadsPerBatch(self, v17, v18))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDDownloadAssetsOperation.m", 1083, @"Expected max downloading tasks: %@", downloadingTasksCopy);

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
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDDownloadAssetsOperation.m", 1084, @"Expected completed tasks: %@", completedTasksCopy);
  }

LABEL_7:
  v21 = objc_msgSend_queue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251AC840;
  block[3] = &unk_2785463D0;
  v32 = downloadingTasksCopy;
  v33 = completedTasksCopy;
  selfCopy = self;
  v35 = tasksCopy;
  v22 = tasksCopy;
  v23 = completedTasksCopy;
  v24 = downloadingTasksCopy;
  dispatch_async(v21, block);
}

- (BOOL)_download
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_MMCSItemsToDownload(self, a2, v2);
  v7 = objc_msgSend_MMCSItemsToDownloadInMemory(self, v5, v6);
  if (objc_msgSend_count(v4, v8, v9) || objc_msgSend_count(v7, v10, v11))
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_assetsToDownloadFromTranscoder(self, v10, v11);
  if (objc_msgSend_count(v12, v13, v14))
  {
    goto LABEL_6;
  }

  v17 = objc_msgSend_assetsToDownloadFromTranscoderInMemory(self, v15, v16);
  if (objc_msgSend_count(v17, v18, v19))
  {

LABEL_6:
LABEL_7:
    if (objc_msgSend_count(v4, v10, v11))
    {
      v24 = objc_msgSend_downloadTasksByPackages(self, v22, v23);
      objc_msgSend__downloadMMCSItems_downloadTasksByPackages_shouldFetchAssetContentInMemory_(self, v25, v4, v24, 0);
    }

    if (objc_msgSend_count(v7, v22, v23))
    {
      objc_msgSend__downloadMMCSItems_downloadTasksByPackages_shouldFetchAssetContentInMemory_(self, v26, v7, 0, 1);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = objc_msgSend_assetsToDownloadFromTranscoder(self, v26, v27);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v59, v64, 16);
    if (v30)
    {
      v32 = v30;
      v33 = *v60;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v60 != v33)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend__downloadTranscodedAsset_inMemory_(self, v31, *(*(&v59 + 1) + 8 * i), 0);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v59, v64, 16);
      }

      while (v32);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = objc_msgSend_assetsToDownloadFromTranscoderInMemory(self, v35, v36, 0);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v55, v63, 16);
    if (v39)
    {
      v41 = v39;
      v42 = *v56;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v56 != v42)
          {
            objc_enumerationMutation(v37);
          }

          objc_msgSend__downloadTranscodedAsset_inMemory_(self, v40, *(*(&v55 + 1) + 8 * j), 1);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v55, v63, 16);
      }

      while (v41);
    }

    v44 = 1;
    goto LABEL_26;
  }

  v46 = objc_msgSend_assetURLInfosToFillOut(self, v20, v21);
  v49 = objc_msgSend_count(v46, v47, v48);

  if (v49)
  {
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v50 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v51 = v50;
    v54 = objc_msgSend_operationID(self, v52, v53);
    *buf = 138543362;
    v66 = v54;
    _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "No files or packages to download for %{public}@", buf, 0xCu);
  }

  v44 = 0;
LABEL_26:

  return v44;
}

- (void)_downloadMMCSItems:(id)items downloadTasksByPackages:(id)packages shouldFetchAssetContentInMemory:(BOOL)memory
{
  memoryCopy = memory;
  v177 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  packagesCopy = packages;
  val = self;
  v133 = objc_msgSend_mmcs(self, v8, v9);
  group = dispatch_group_create();
  v12 = objc_msgSend_stateTransitionGroup(self, v10, v11);
  dispatch_group_enter(v12);

  dispatch_group_enter(group);
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = itemsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v167, v176, 16);
  if (v16)
  {
    v17 = *v168;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v168 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = objc_msgSend_package(*(*(&v167 + 1) + 8 * i), v14, v15);
        if (v21)
        {
          v22 = objc_msgSend_downloadTasksByPackages(val, v19, v20);
          v24 = objc_msgSend_objectForKey_(v22, v23, v21);

          v27 = objc_msgSend_group(v24, v25, v26);
          dispatch_group_enter(v27);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v167, v176, 16);
    }

    while (v16);
  }

  v30 = objc_msgSend_downloadTasksByPackages(val, v28, v29);
  v33 = objc_msgSend_count(v30, v31, v32);

  if (v33)
  {
    v36 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v34, v35);
    v38 = objc_msgSend_maxPackageDownloadsPerBatchWithDefaultValue_(v36, v37, 6);

    if (v38 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v38;
    }

    if (v40 >= 0x64)
    {
      objc_msgSend_setMaxPackageDownloadsPerBatch_(val, v39, 100);
    }

    else
    {
      objc_msgSend_setMaxPackageDownloadsPerBatch_(val, v39, v40);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v128 = v41;
      v131 = objc_msgSend_maxPackageDownloadsPerBatch(val, v129, v130);
      *location = 134218240;
      *&location[4] = v131;
      v174 = 2048;
      v175 = v38;
      _os_log_debug_impl(&dword_22506F000, v128, OS_LOG_TYPE_DEBUG, "maxPackageDownloadsPerBatch:%lu (%lu)", location, 0x16u);
    }

    v42 = objc_alloc(MEMORY[0x277CBEB18]);
    v45 = objc_msgSend_downloadTasksByPackages(val, v43, v44);
    v48 = objc_msgSend_count(v45, v46, v47);
    v50 = objc_msgSend_initWithCapacity_(v42, v49, v48);

    v51 = objc_alloc(MEMORY[0x277CBEB18]);
    v54 = objc_msgSend_maxPackageDownloadsPerBatch(val, v52, v53);
    v56 = objc_msgSend_initWithCapacity_(v51, v55, v54);
    v57 = objc_autoreleasePoolPush();
    v60 = objc_msgSend_downloadTasksByPackages(val, v58, v59);
    v63 = objc_msgSend_objectEnumerator(v60, v61, v62);

    v66 = objc_msgSend_nextObject(v63, v64, v65);
    while (v66)
    {
      dispatch_group_enter(group);
      v69 = objc_msgSend_group(v66, v67, v68);
      v72 = objc_msgSend_queue(val, v70, v71);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251AD88C;
      block[3] = &unk_278548978;
      v162 = v66;
      v163 = val;
      v164 = group;
      v165 = v50;
      v166 = v56;
      v73 = v66;
      dispatch_group_notify(v69, v72, block);

      v66 = objc_msgSend_nextObject(v63, v74, v75);
    }

    objc_autoreleasePoolPop(v57);
  }

  v76 = [CKDMMCSItemGroupSet alloc];
  v135 = objc_msgSend_initWithItems_(v76, v77, obj);
  v78 = [CKDMMCSRequestOptions alloc];
  v136 = objc_msgSend_initWithOperation_(v78, v79, val);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(val, v80, v81);
  objc_msgSend_setShouldCloneFileInAssetCache_(v136, v83, shouldCloneFileInAssetCache);
  v84 = objc_opt_new();
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v138 = objc_msgSend_itemsGroups(v135, v85, v86);
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v87, &v157, v172, 16);
  if (v90)
  {
    v139 = *v158;
    do
    {
      for (j = 0; j != v90; ++j)
      {
        if (*v158 != v139)
        {
          objc_enumerationMutation(v138);
        }

        v92 = *(*(&v157 + 1) + 8 * j);
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v93 = objc_msgSend_items(v92, v88, v89);
        v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v153, v171, 16);
        if (v97)
        {
          v98 = *v154;
          do
          {
            for (k = 0; k != v97; ++k)
            {
              if (*v154 != v98)
              {
                objc_enumerationMutation(v93);
              }

              v100 = objc_msgSend_recordID(*(*(&v153 + 1) + 8 * k), v95, v96);
              v103 = objc_msgSend_zoneID(v100, v101, v102);
              v106 = objc_msgSend_zoneName(v103, v104, v105);

              if (v106)
              {
                objc_msgSend_addObject_(v84, v107, v106);
              }
            }

            v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v95, &v153, v171, 16);
          }

          while (v97);
        }
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v88, &v157, v172, 16);
    }

    while (v90);
  }

  v110 = objc_msgSend_allObjects(v84, v108, v109);
  objc_msgSend_setZoneNames_(v136, v111, v110);

  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(val, v112, v113), v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v114, v115, @"DownloadAssetsFakeMMCSError"), v116 = objc_claimAutoreleasedReturnValue(), v114, v116))
  {
    objc_msgSend__didDownloadMMCSItems_inMemory_error_(val, v117, obj, memoryCopy, v116);
    dispatch_group_leave(group);

    v120 = 0;
  }

  else
  {
    objc_initWeak(location, val);
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = sub_2251ADC68;
    v150[3] = &unk_2785489A0;
    objc_copyWeak(&v151, location);
    v152 = memoryCopy;
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = sub_2251ADCC8;
    v148[3] = &unk_2785489C8;
    objc_copyWeak(&v149, location);
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = sub_2251ADD58;
    v144[3] = &unk_2785489F0;
    v144[4] = val;
    v145 = obj;
    v147 = memoryCopy;
    v146 = group;
    v120 = objc_msgSend_getItemGroupSet_operation_shouldFetchAssetContentInMemory_options_progress_command_completionHandler_(v133, v121, v135, val, memoryCopy, v136, v150, v148, v144);
    v124 = objc_msgSend_cancelTokens(val, v122, v123);
    objc_msgSend_addCancelToken_withOperation_(v124, v125, v120, val);

    objc_destroyWeak(&v149);
    objc_destroyWeak(&v151);
    objc_destroyWeak(location);
  }

  objc_msgSend_qualityOfService(val, v118, v119);
  v126 = CKGetGlobalQueue();
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = sub_2251ADFAC;
  v142[3] = &unk_278545898;
  v142[4] = val;
  v143 = v120;
  v127 = v120;
  dispatch_group_notify(group, v126, v142);
}

- (BOOL)_postProcess
{
  v52 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_assetURLInfosToFillOut(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v47, v51, 16);
  if (v5)
  {
    v8 = v5;
    v45 = *v48;
    v43 = *MEMORY[0x277CBC120];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = objc_msgSend_asset(v10, v6, v7);
        v14 = objc_msgSend_recordPCS(v10, v12, v13);
        v17 = objc_msgSend_recordKey(v11, v15, v16);
        v20 = objc_msgSend_container(self, v18, v19);
        v23 = objc_msgSend_pcsManager(v20, v21, v22);
        v26 = objc_msgSend_useEncryption(self, v24, v25);
        v29 = objc_msgSend_useClearAssetEncryption(self, v27, v28);
        v46 = 0;
        LOBYTE(v42) = 0;
        LOBYTE(v26) = objc_msgSend_fillInDownloadURLsForAssetWithFieldName_fileName_recordPCS_pcsManager_useEncryption_useClearAssetEncryption_alwaysAllowKeyExport_outError_(v11, v30, v17, 0, v14, v23, v26, v29, v42, &v46);
        v31 = v46;

        if ((v26 & 1) == 0 && !v31)
        {
          v34 = MEMORY[0x277CBC560];
          v35 = objc_msgSend_asset(v10, v32, v33);
          v31 = objc_msgSend_errorWithDomain_code_format_(v34, v36, v43, 1000, @"Failed to fill out download URL for asset %@", v35);
        }

        v37 = objc_msgSend_urlFilledOutBlock(self, v32, v33);

        if (v37)
        {
          v40 = objc_msgSend_urlFilledOutBlock(self, v38, v39);
          (v40)[2](v40, v10, v31);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v47, v51, 16);
    }

    while (v8);
  }

  return 1;
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CKDDownloadAssetsOperation;
  [(CKDOperation *)&v8 cancel];
  v5 = objc_msgSend_cancelTokens(self, v3, v4);
  objc_msgSend_cancel(v5, v6, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  objc_msgSend_setDownloadPreparationBlock_(self, v7, 0);
  objc_msgSend_setDownloadProgressBlock_(self, v8, 0);
  objc_msgSend_setDownloadCommandBlock_(self, v9, 0);
  objc_msgSend_setDownloadCompletionBlock_(self, v10, 0);
  objc_msgSend_setUrlFilledOutBlock_(self, v11, 0);
  v14 = objc_msgSend_mmcs(self, v12, v13);
  objc_msgSend_performOperationCleanup(v14, v15, v16);

  v17.receiver = self;
  v17.super_class = CKDDownloadAssetsOperation;
  [(CKDOperation *)&v17 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  v6 = objc_msgSend_mmcs(self, v4, v5);

  v9 = 0;
  if (!v6)
  {
    v10 = objc_msgSend_container(self, v7, v8);
    v35 = 0;
    v12 = objc_msgSend_setupAssetTransfers_(v10, v11, &v35);
    v9 = v35;

    if ((v12 & 1) == 0)
    {
      objc_msgSend_finishWithError_(self, v13, v9);
      goto LABEL_12;
    }

    v15 = objc_msgSend_container(self, v13, v14);
    v18 = objc_msgSend_MMCS(v15, v16, v17);
    objc_msgSend_setMmcs_(self, v19, v18);
  }

  v20 = objc_msgSend_assetsToDownload(self, v7, v8);
  if (objc_msgSend_count(v20, v21, v22))
  {
    v25 = 0;
  }

  else
  {
    v26 = objc_msgSend_assetsToDownloadInMemory(self, v23, v24);
    if (objc_msgSend_count(v26, v27, v28))
    {
      v25 = 0;
    }

    else
    {
      v31 = objc_msgSend_assetURLInfosToFillOut(self, v29, v30);
      v25 = objc_msgSend_count(v31, v32, v33) == 0;
    }
  }

  objc_msgSend_makeStateTransition_(self, v34, v25);
LABEL_12:
}

- (BOOL)shouldDownloadAssetFromTranscoder:(id)transcoder
{
  transcoderCopy = transcoder;
  if (_os_feature_enabled_impl())
  {
    v7 = objc_msgSend_constructedAssetDownloadParameters(transcoderCopy, v5, v6);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(self, v5, v6);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"DownloadAssetsFromTranscodingService");
    v8 |= objc_msgSend_BOOLValue(v11, v12, v13);
  }

  return v8;
}

- (void)_downloadTranscodedAsset:(id)asset inMemory:(BOOL)memory
{
  memoryCopy = memory;
  location[3] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = assetCopy;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Downloading transcoded asset %@", location, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = objc_alloc(MEMORY[0x277CBC200]);
  v12 = objc_msgSend_record(assetCopy, v10, v11);
  v14 = objc_msgSend_initWithRecord_(v9, v13, v12);
  objc_msgSend_setRecord_(v8, v15, v14);

  v78 = objc_msgSend_constructedAssetDownloadParameters(assetCopy, v16, v17);
  v20 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v21 = objc_msgSend_unitTestOverrides(self, v18, v19);
    v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"FakeConstructedAssetDownloadParameters");

    if (v23)
    {
      v24 = v23;

      v78 = v24;
    }
  }

  objc_msgSend_setConstructedAssetDownloadParameters_(v8, v18, v78);
  v27 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v25, v26);
  v30 = objc_msgSend_transcoderServiceName(v27, v28, v29);

  if (*v20 == 1 && !v30)
  {
    v33 = objc_msgSend_unitTestOverrides(self, v31, v32);
    v30 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"TranscoderServiceName");
  }

  if (!v30)
  {
    v30 = @"ProtectedTranscodingService";
  }

  v35 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v31, v32);
  v38 = objc_msgSend_transcoderFunctionName(v35, v36, v37);

  if (*v20 == 1 && !v38)
  {
    v41 = objc_msgSend_unitTestOverrides(self, v39, v40);
    v38 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"TranscoderFunctionName");
  }

  if (!v38)
  {
    v38 = @"transcode";
  }

  v43 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v39, v40);
  v46 = objc_msgSend_transcoderPermittedRemoteMeasurement(v43, v44, v45);

  if (*v20 == 1 && !v46)
  {
    v49 = objc_msgSend_unitTestOverrides(self, v47, v48);
    v46 = objc_msgSend_objectForKeyedSubscript_(v49, v50, @"TranscoderPermittedRemoteMeasurement");
  }

  if (!v46)
  {
    if (qword_280D54FA0 != -1)
    {
      dispatch_once(&qword_280D54FA0, &unk_28385D3E0);
    }

    v46 = qword_280D54F98;
  }

  v51 = objc_opt_new();
  v54 = objc_msgSend_databaseScope(self, v52, v53);
  objc_msgSend_setDatabaseScope_(v51, v55, v54);
  objc_msgSend_setServiceName_(v51, v56, v30);
  objc_msgSend_setFunctionName_(v51, v57, v38);
  objc_msgSend_setPermittedRemoteMeasurement_(v51, v58, v46);
  objc_msgSend_setDataProtectionType_(v51, v59, 1);
  objc_msgSend_setShouldFetchAssetContentInMemory_(v51, v60, memoryCopy);
  objc_msgSend_setShouldSendRecordPCSKeys_(v51, v61, 1);
  v64 = objc_msgSend_record(v8, v62, v63);
  v67 = objc_msgSend_localSerialization(v64, v65, v66);
  v83 = v67;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, &v83, 1);
  objc_msgSend_setRequestLocalSerializations_(v51, v70, v69);

  objc_initWeak(location, self);
  v73 = objc_msgSend_stateTransitionGroup(self, v71, v72);
  dispatch_group_enter(v73);

  v74 = objc_opt_class();
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_2251AEB4C;
  v79[3] = &unk_278548AF8;
  objc_copyWeak(&v82, location);
  v75 = assetCopy;
  v80 = v75;
  v76 = v8;
  v81 = v76;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v77, v74, v51, v79);

  objc_destroyWeak(&v82);
  objc_destroyWeak(location);
}

@end