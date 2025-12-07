@interface CKDRecordDownloadTask
- (CKDRecordDownloadTask)initWithRecord:(id)record trackProgress:(BOOL)progress assetsToDownload:(id)download assetsToDownloadInMemory:(id)memory assetURLInfosToFillOut:(id)out;
- (void)didCompleteTaskWithError:(id)error;
- (void)didDownloadAsset:(id)asset error:(id)error;
- (void)didFillOutURLInfo:(id)info error:(id)error;
@end

@implementation CKDRecordDownloadTask

- (CKDRecordDownloadTask)initWithRecord:(id)record trackProgress:(BOOL)progress assetsToDownload:(id)download assetsToDownloadInMemory:(id)memory assetURLInfosToFillOut:(id)out
{
  progressCopy = progress;
  v71 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  downloadCopy = download;
  memoryCopy = memory;
  outCopy = out;
  v67.receiver = self;
  v67.super_class = CKDRecordDownloadTask;
  v17 = [(CKDRecordDownloadTask *)&v67 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_record, record);
    objc_storeStrong(&v18->_assetsToDownload, download);
    objc_storeStrong(&v18->_assetsToDownloadInMemory, memory);
    objc_storeStrong(&v18->_assetURLInfosToFillOut, out);
    v19 = dispatch_group_create();
    group = v18->_group;
    v18->_group = v19;

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_msgSend_recordID(recordCopy, v22, v23);
    v27 = objc_msgSend_recordName(v24, v25, v26);
    v29 = objc_msgSend_initWithFormat_(v21, v28, @"down|%@", v27);

    if (progressCopy)
    {
      v30 = [CKDProgressTracker alloc];
      v32 = objc_msgSend_initWithTrackingID_(v30, v31, v29);
    }

    else
    {
      v32 = 0;
    }

    progressTracker = v18->_progressTracker;
    v18->_progressTracker = v32;

    objc_msgSend_setLastItemPercentage_(v18->_progressTracker, v34, v35, 0.01);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = downloadCopy;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v63, v70, 16);
    if (v38)
    {
      v39 = v38;
      v40 = *v64;
      while (1)
      {
        if (*v64 != v40)
        {
          objc_enumerationMutation(v36);
        }

        dispatch_group_enter(v18->_group);
        if (!--v39)
        {
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, &v63, v70, 16);
          if (!v39)
          {
            break;
          }
        }
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v42 = memoryCopy;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v59, v69, 16);
    if (v44)
    {
      v45 = v44;
      v46 = *v60;
      while (1)
      {
        if (*v60 != v46)
        {
          objc_enumerationMutation(v42);
        }

        dispatch_group_enter(v18->_group);
        if (!--v45)
        {
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v47, &v59, v69, 16);
          if (!v45)
          {
            break;
          }
        }
      }
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v48 = outCopy;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v55, v68, 16);
    if (v50)
    {
      v51 = v50;
      v52 = *v56;
      while (1)
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(v48);
        }

        dispatch_group_enter(v18->_group);
        if (!--v51)
        {
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v53, &v55, v68, 16);
          if (!v51)
          {
            break;
          }
        }
      }
    }
  }

  return v18;
}

- (void)didDownloadAsset:(id)asset error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_assetsToDownload(selfCopy, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, assetCopy);

  if (v12)
  {
    v15 = objc_msgSend_group(selfCopy, v13, v14);
    dispatch_group_leave(v15);

    v18 = objc_msgSend_assetsToDownload(selfCopy, v16, v17);
    objc_msgSend_removeObject_(v18, v19, assetCopy);
  }

  v20 = objc_msgSend_assetsToDownloadInMemory(selfCopy, v13, v14);
  v22 = objc_msgSend_containsObject_(v20, v21, assetCopy);

  if (v22)
  {
    v25 = objc_msgSend_group(selfCopy, v23, v24);
    dispatch_group_leave(v25);

    v28 = objc_msgSend_assetsToDownloadInMemory(selfCopy, v26, v27);
    objc_msgSend_removeObject_(v28, v29, assetCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)didFillOutURLInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_assetURLInfosToFillOut(selfCopy, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, infoCopy);

  if (v12)
  {
    v15 = objc_msgSend_group(selfCopy, v13, v14);
    dispatch_group_leave(v15);

    v18 = objc_msgSend_assetURLInfosToFillOut(selfCopy, v16, v17);
    objc_msgSend_removeObject_(v18, v19, infoCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)didCompleteTaskWithError:(id)error
{
  v65 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_msgSend_setError_(self, v5, errorCopy);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = objc_msgSend_assetsToDownload(selfCopy, v7, v8);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v58, v64, 16);
  if (v13)
  {
    v14 = *v59;
    while (1)
    {
      if (*v59 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v15 = objc_msgSend_group(selfCopy, v11, v12);
      dispatch_group_leave(v15);

      if (!--v13)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v58, v64, 16);
        if (!v13)
        {
          break;
        }
      }
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = objc_msgSend_assetsToDownloadInMemory(selfCopy, v16, v17);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v54, v63, 16);
  if (v22)
  {
    v23 = *v55;
    while (1)
    {
      if (*v55 != v23)
      {
        objc_enumerationMutation(v18);
      }

      v24 = objc_msgSend_group(selfCopy, v20, v21);
      dispatch_group_leave(v24);

      if (!--v22)
      {
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v54, v63, 16);
        if (!v22)
        {
          break;
        }
      }
    }
  }

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v27 = objc_msgSend_assetURLInfosToFillOut(selfCopy, v25, v26, 0, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v50, v62, 16);
  if (v31)
  {
    v32 = *v51;
    while (1)
    {
      if (*v51 != v32)
      {
        objc_enumerationMutation(v27);
      }

      v33 = objc_msgSend_group(selfCopy, v29, v30);
      dispatch_group_leave(v33);

      if (!--v31)
      {
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v50, v62, 16);
        if (!v31)
        {
          break;
        }
      }
    }
  }

  v36 = objc_msgSend_assetsToDownload(selfCopy, v34, v35);
  objc_msgSend_removeAllObjects(v36, v37, v38);

  v41 = objc_msgSend_assetsToDownloadInMemory(selfCopy, v39, v40);
  objc_msgSend_removeAllObjects(v41, v42, v43);

  v46 = objc_msgSend_assetURLInfosToFillOut(selfCopy, v44, v45);
  objc_msgSend_removeAllObjects(v46, v47, v48);

  objc_msgSend_setProgressTracker_(selfCopy, v49, 0);
  objc_sync_exit(selfCopy);
}

@end