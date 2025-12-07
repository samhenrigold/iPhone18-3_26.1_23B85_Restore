@interface NTKCParmesanPhotosEditor
- (BOOL)_assetExistsInEditor:(id)editor;
- (BOOL)_ensureUserOverrideSessionIsLoadedForPhotoAtIndex:(int64_t)index;
- (BOOL)addAssetsFromAssetList:(id)list;
- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count;
- (BOOL)addAssetsFromUIImagePicker:(id)picker;
- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)index;
- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index;
- (NSArray)imageIdentifiers;
- (NTKCParmesanPhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device;
- (id)_fetchAssetsForNewPhotos:(id)photos;
- (id)_makeLayoutForEditedAsset:(id)asset userOverride:(id)override;
- (id)replaceAssetAtIndex:(int64_t)index withAsset:(id)asset;
- (void)_copyOrTranscodeAssetWithIds:(id)ids to:(id)to shouldPurgeOriginalData:(BOOL)data progress:(id)progress completion:(id)completion;
- (void)_generateOverrideLayersForEditedAsset:(id)asset dstDir:(id)dir;
- (void)_readResourceDirectoryPhotosFrom:(id)from;
- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory;
- (void)deletePhotoAtIndex:(int64_t)index;
- (void)finalizeWithProgress:(id)progress completion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)purgeResourcesForPreviewAtIndex:(int64_t)index;
- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)setImageOrder:(id)order;
- (void)thumbnailInfoForPhotoAtIndex:(int64_t)index completion:(id)completion;
@end

@implementation NTKCParmesanPhotosEditor

- (NTKCParmesanPhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device
{
  v20.receiver = self;
  v20.super_class = NTKCParmesanPhotosEditor;
  v4 = [(NTKCompanionResourceDirectoryEditor *)&v20 initWithResourceDirectory:directory forDevice:device];
  if (v4)
  {
    v5 = objc_opt_new();
    assets = v4->_assets;
    v4->_assets = v5;

    v7 = objc_opt_new();
    orderList = v4->_orderList;
    v4->_orderList = v7;

    v9 = objc_opt_new();
    scaledImageCache = v4->_scaledImageCache;
    v4->_scaledImageCache = v9;

    userOverrideSession = v4->_userOverrideSession;
    v4->_userOverrideSession = 0;

    v4->_userOverrideSessionIndex = -1;
    v4->_galleryPreviewIsValid = 0;
    v14 = objc_msgSend_resourceDirectory(v4, v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_resourceDirectory(v4, v15, v16);
      objc_msgSend__readResourceDirectoryPhotosFrom_(v4, v18, v17);
    }

    objc_msgSend_setState_(v4, v15, 1);
  }

  return v4;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = objc_opt_class();
    v8 = v31;
    _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for %@", buf, 0xCu);
  }

  v11 = objc_msgSend_state(self, v9, v10);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF21DFC;
  aBlock[3] = &unk_278BA6E88;
  v29 = v11;
  aBlock[4] = self;
  v12 = completionCopy;
  v28 = v12;
  v13 = _Block_copy(aBlock);
  if (objc_msgSend_state(self, v14, v15) && objc_msgSend_state(self, v16, v17) < 3)
  {
    if (objc_msgSend_state(self, v18, v19) == 1)
    {
      v22 = objc_msgSend_resourceDirectory(self, v20, v21);
    }

    else
    {
      if (!self->_galleryPreviewIsValid)
      {
        objc_msgSend_setState_(self, v20, 3);
        v24 = dispatch_get_global_queue(2, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23BF21F8C;
        block[3] = &unk_278BA6EF8;
        block[4] = self;
        v26 = v13;
        dispatch_async(v24, block);

        goto LABEL_12;
      }

      v22 = objc_msgSend_galleryPreviewResourceDirectory(self, v20, v21);
    }

    v23 = v22;
    (*(v13 + 2))(v13, 1, v22);
  }

  else
  {
    (*(v13 + 2))(v13, 0, 0);
  }

LABEL_12:
}

- (void)finalizeWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "finalizeWithProgress:completion: finalizing NTKParmesanPhotosEditor", buf, 2u);
  }

  if (objc_msgSend_state(self, v11, v12) && objc_msgSend_state(self, v13, v14) < 3)
  {
    if (objc_msgSend_state(self, v15, v16) == 1)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_23BF22460;
      v27[3] = &unk_278BA6EF8;
      v27[4] = self;
      v28 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v27);
      v17 = v28;
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_23BF224BC;
      aBlock[3] = &unk_278BA6F20;
      aBlock[4] = self;
      v26 = completionCopy;
      v18 = _Block_copy(aBlock);
      objc_msgSend_setState_(self, v19, 4);
      v20 = dispatch_get_global_queue(2, 0);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_23BF2260C;
      v22[3] = &unk_278BA6FC0;
      v22[4] = self;
      v23 = v18;
      v24 = progressCopy;
      v21 = v18;
      dispatch_async(v20, v22);

      v17 = v26;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF2244C;
    block[3] = &unk_278BA6B68;
    v30 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v17 = v30;
  }
}

- (NSArray)imageIdentifiers
{
  v3 = objc_msgSend_copy(self->_orderList, a2, v2);

  return v3;
}

- (BOOL)addAssetsFromUIImagePicker:(id)picker
{
  selfCopy = self;
  v4 = objc_msgSend__fetchAssetsForNewPhotos_(self, a2, picker);
  v5 = NTKMaxParmesanPhotos();
  LOBYTE(selfCopy) = objc_msgSend_addAssetsFromAssetList_maxPhotosCount_(selfCopy, v6, v4, v5);

  return selfCopy;
}

- (BOOL)addAssetsFromAssetList:(id)list
{
  listCopy = list;
  v5 = NTKMaxParmesanPhotos();
  LOBYTE(self) = objc_msgSend_addAssetsFromAssetList_maxPhotosCount_(self, v6, listCopy, v5);

  return self;
}

- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count
{
  v97 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (!objc_msgSend_state(self, v7, v8) || objc_msgSend_state(self, v9, v10) > 2 || (v13 = objc_msgSend_photosCount(self, v11, v12), objc_msgSend_count(listCopy, v14, v15) + v13 > count))
  {
    v18 = 0;
    goto LABEL_5;
  }

  v86 = objc_msgSend_firstObject(self->_orderList, v16, v17);
  v87 = listCopy;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = listCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v90, v96, 16);
  if (!v21)
  {
    goto LABEL_28;
  }

  v24 = v21;
  v89 = *v91;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v91 != v89)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v90 + 1) + 8 * i);
      v27 = objc_msgSend__key(v26, v22, v23);
      v28 = [_NTKEditedParmesanAsset alloc];
      v30 = objc_msgSend_initWithParmesanAsset_phAsset_(v28, v29, 0, v26);
      v32 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v31, v27);
      v35 = v32;
      if (v32)
      {
        if (objc_msgSend_isInResourceDirectory(v32, v33, v34))
        {
          v38 = objc_msgSend_asset(v35, v36, v37);
          v41 = objc_msgSend_modificationDate(v38, v39, v40);
          v44 = objc_msgSend_ntk_modificationDate(v26, v42, v43);
          objc_msgSend_timeIntervalSince1970(v41, v45, v46);
          v48 = v47;
          objc_msgSend_timeIntervalSince1970(v44, v49, v50);
          v52 = vabdd_f64(v48, v51);

          v55 = objc_msgSend_logObject(NTKParmesanFaceBundle, v53, v54);
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          if (v52 > 2.0)
          {
            if (v56)
            {
              v59 = objc_msgSend_asset(v35, v57, v58);
              v62 = objc_msgSend_localIdentifier(v59, v60, v61);
              *buf = 138412290;
              v95 = v62;
              _os_log_impl(&dword_23BF0C000, v55, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: replacing existing asset %@ because it was modified", buf, 0xCu);
            }

            objc_msgSend_setObject_forKeyedSubscript_(self->_assets, v63, v30, v27);
            goto LABEL_26;
          }

          if (v56)
          {
            v75 = objc_msgSend_asset(v35, v57, v58);
            v78 = objc_msgSend_localIdentifier(v75, v81, v82);
            *buf = 138412290;
            v95 = v78;
            v79 = v55;
            v80 = "addAssetsFromAssetList: not adding existing asset %@";
LABEL_24:
            _os_log_impl(&dword_23BF0C000, v79, OS_LOG_TYPE_DEFAULT, v80, buf, 0xCu);
          }
        }

        else
        {
          v55 = objc_msgSend_logObject(NTKParmesanFaceBundle, v36, v37);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v75 = objc_msgSend_asset(v30, v73, v74);
            v78 = objc_msgSend_localIdentifier(v75, v76, v77);
            *buf = 138412290;
            v95 = v78;
            v79 = v55;
            v80 = "addAssetsFromAssetList: not adding new asset again %@";
            goto LABEL_24;
          }
        }

        goto LABEL_26;
      }

      v64 = objc_msgSend_logObject(NTKParmesanFaceBundle, v33, v34);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v67 = objc_msgSend_phAsset(v30, v65, v66);
        v70 = objc_msgSend_localIdentifier(v67, v68, v69);
        *buf = 138412290;
        v95 = v70;
        _os_log_impl(&dword_23BF0C000, v64, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: adding new asset %@", buf, 0xCu);
      }

      objc_msgSend_setObject_forKeyedSubscript_(self->_assets, v71, v30, v27);
      objc_msgSend_addObject_(self->_orderList, v72, v27);
LABEL_26:
    }

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v90, v96, 16);
  }

  while (v24);
LABEL_28:

  if (self->_galleryPreviewIsValid)
  {
    v85 = objc_msgSend_firstObject(self->_orderList, v83, v84);
    self->_galleryPreviewIsValid = NTKEqualStrings();
  }

  objc_msgSend_setState_(self, v83, 2);

  v18 = 1;
  listCopy = v87;
LABEL_5:

  return v18;
}

- (void)deletePhotoAtIndex:(int64_t)index
{
  v43 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_state(self, a2, index))
  {
    return;
  }

  v7 = objc_msgSend_state(self, v5, v6);
  if (index < 0 || v7 > 2 || objc_msgSend_count(self->_orderList, v8, v9) <= index)
  {
    return;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v10, index);
  objc_msgSend_removeObject_(self->_orderList, v12, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v13, v11);
  if (objc_msgSend_isInResourceDirectory(v14, v15, v16))
  {
    v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_asset(v14, v20, v21);
      v25 = objc_msgSend_localIdentifier(v22, v23, v24);
      *v42 = 138412546;
      *&v42[4] = v25;
      *&v42[12] = 2048;
      *&v42[14] = index;
      v26 = "deletePhotoAtIndex: deleting existing photo %@ at index %ld";
LABEL_10:
      _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_DEFAULT, v26, v42, 0x16u);
    }
  }

  else
  {
    scaledImageCache = self->_scaledImageCache;
    v28 = objc_msgSend_asset(v14, v17, v18);
    v31 = objc_msgSend_localIdentifier(v28, v29, v30);
    objc_msgSend_removeObjectForKey_(scaledImageCache, v32, v31);

    v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v33, v34);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_asset(v14, v35, v36);
      v25 = objc_msgSend_localIdentifier(v22, v37, v38);
      *v42 = 138412546;
      *&v42[4] = v25;
      *&v42[12] = 2048;
      *&v42[14] = index;
      v26 = "deletePhotoAtIndex: deleting new asset id %@ at index %ld";
      goto LABEL_10;
    }
  }

  objc_msgSend_removeObjectForKey_(self->_assets, v39, v11);
  if (self->_userOverrideSessionIndex == index)
  {
    self->_userOverrideSessionIndex = -1;
    userOverrideSession = self->_userOverrideSession;
    self->_userOverrideSession = 0;
  }

  if (self->_galleryPreviewIsValid)
  {
    self->_galleryPreviewIsValid = index != 0;
  }

  objc_msgSend_setState_(self, v40, 2, *v42, *&v42[8]);
}

- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v30 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, index))
  {
    v9 = objc_msgSend_state(self, v7, v8);
    if ((index & 0x8000000000000000) == 0 && v9 <= 2)
    {
      v12 = objc_msgSend_count(self->_orderList, v10, v11);
      if ((toIndex & 0x8000000000000000) == 0 && v12 > index && objc_msgSend_count(self->_orderList, v13, v14) > toIndex)
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v15, index);
        v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 134218240;
          indexCopy = index;
          v28 = 2048;
          toIndexCopy = toIndex;
          _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_DEFAULT, "movePhotoAtIndex: moving photo from index %ld to index %ld", &v26, 0x16u);
        }

        objc_msgSend_removeObjectAtIndex_(self->_orderList, v20, index);
        objc_msgSend_insertObject_atIndex_(self->_orderList, v21, v16, toIndex);
        if (self->_userOverrideSessionIndex == index)
        {
          self->_userOverrideSessionIndex = toIndex;
        }

        if (self->_galleryPreviewIsValid)
        {
          if (index)
          {
            v23 = toIndex == 0;
          }

          else
          {
            v23 = 1;
          }

          v25 = !v23 || index == toIndex;
          self->_galleryPreviewIsValid = v25;
        }

        objc_msgSend_setState_(self, v22, 2);
      }
    }
  }
}

- (BOOL)_assetExistsInEditor:(id)editor
{
  v4 = objc_msgSend__key(editor, a2, editor);
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v5, v4);
  LOBYTE(self) = v6 != 0;

  return self;
}

- (id)replaceAssetAtIndex:(int64_t)index withAsset:(id)asset
{
  v28[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (!objc_msgSend_state(self, v7, v8) || objc_msgSend_state(self, v9, v10) >= 3)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"com.apple.parmesan.editor", 1, 0);
    v18 = LABEL_13:;
    goto LABEL_14;
  }

  if (index < 0 || objc_msgSend_count(self->_orderList, v9, v11) <= index)
  {
    v16 = objc_msgSend_logObject(NTKParmesanFaceBundle, v9, v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF77AC(index, v16);
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, @"com.apple.parmesan.editor", 2, 0);
    goto LABEL_13;
  }

  if (objc_msgSend__assetExistsInEditor_(self, v9, assetCopy))
  {
    v14 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_23BF0C000, v14, OS_LOG_TYPE_DEFAULT, "Cannot replace an asset with an existing asset, ignoring…", v27, 2u);
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"com.apple.parmesan.editor", 3, 0);
    goto LABEL_13;
  }

  objc_msgSend_deletePhotoAtIndex_(self, v12, index);
  v28[0] = assetCopy;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v28, 1);
  objc_msgSend_addAssetsFromAssetList_(self, v22, v21);

  v25 = objc_msgSend_photosCount(self, v23, v24);
  objc_msgSend_movePhotoAtIndex_toIndex_(self, v26, v25 - 1, index);
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)setImageOrder:(id)order
{
  orderCopy = order;
  if (objc_msgSend_state(self, v4, v5) && objc_msgSend_state(self, v6, v7) <= 2)
  {
    v10 = objc_msgSend_firstObject(self->_orderList, v8, v9);
    v13 = objc_msgSend_firstObject(orderCopy, v11, v12);
    v15 = v13;
    v16 = (v10 | v13) == 0;
    if (v10)
    {
      v17 = v13 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      isEqualToString = 0;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v10, v14, v13);
    }

    if (self->_galleryPreviewIsValid)
    {
      self->_galleryPreviewIsValid = (v16 | isEqualToString) & 1;
    }

    if ((objc_msgSend_isEqualToArray_(self->_orderList, v14, orderCopy) & 1) == 0)
    {
      v21 = objc_msgSend_mutableCopy(orderCopy, v19, v20);
      orderList = self->_orderList;
      self->_orderList = v21;

      objc_msgSend_setState_(self, v23, 2);
    }
  }
}

- (void)thumbnailInfoForPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF239B8;
  aBlock[3] = &unk_278BA7010;
  v7 = completionCopy;
  v72 = v7;
  v10 = _Block_copy(aBlock);
  if (index < 0 || objc_msgSend_count(self->_orderList, v8, v9) <= index)
  {
    (*(v10 + 2))(v10, 0, 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v11, index);
    v14 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v13, v12);
    v15 = MEMORY[0x277CCABB0];
    EditedUserOverride = objc_msgSend_lastEditedUserOverride(v14, v16, v17);
    v20 = objc_msgSend_numberWithInteger_(v15, v19, EditedUserOverride);
    v23 = objc_msgSend_userOverrides(v14, v21, v22);
    v25 = objc_msgSend_objectForKey_(v23, v24, v20);

    if (v25)
    {
      v28 = objc_opt_class();
      v31 = objc_msgSend_phAsset(v14, v29, v30);
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = sub_23BF23B5C;
      v68[3] = &unk_278BA7058;
      v69 = v25;
      v70 = v10;
      objc_msgSend__imageDataForAsset_completion_(v28, v32, v31, v68);

      v33 = v69;
    }

    else
    {
      v34 = objc_msgSend_asset(v14, v26, v27);
      v37 = v34;
      if (v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = objc_msgSend_originalAsset(v14, v35, v36);
      }

      v33 = v38;

      v41 = objc_msgSend_preferredLayout(v33, v39, v40);
      v44 = objc_msgSend_timeLayout(v41, v42, v43);

      if (v33)
      {
        v47 = objc_msgSend_preferredLayoutImageURL(v33, v45, v46);
        v48 = NTKPhotosImageForURL();

        sub_23BF23AD8(v49, v48);
        (*(v10 + 2))(v10, v48, v44);
      }

      else
      {
        v61 = v44;
        v62 = v12;
        scaledImageCache = self->_scaledImageCache;
        v51 = objc_msgSend_asset(v14, v45, v46);
        v54 = objc_msgSend_localIdentifier(v51, v52, v53);
        v48 = objc_msgSend_objectForKey_(scaledImageCache, v55, v54);

        if (v48)
        {
          sub_23BF23AD8(v56, v48);
          v44 = v61;
          (*(v10 + 2))(v10, v48, v61);
        }

        else
        {
          v59 = objc_msgSend_phAsset(v14, v57, v58);
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = sub_23BF23C28;
          v63[3] = &unk_278BA7080;
          v63[4] = self;
          v64 = v14;
          v66 = v10;
          v44 = v61;
          v65 = v61;
          v67 = &unk_284EBA608;
          objc_msgSend__imageForAsset_forSize_completion_(NTKCParmesanPhotosEditor, v60, v59, v63, *MEMORY[0x277D3B3C0], *(MEMORY[0x277D3B3C0] + 8));
        }

        v12 = v62;
      }
    }
  }
}

- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)index
{
  if (index < 0 || objc_msgSend_count(self->_orderList, a2, index) <= index)
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v5, index);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v7, v6);
  v11 = objc_msgSend_phAsset(v8, v9, v10);
  v12 = v11 != 0;

  return v12;
}

- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF23E48;
  block[3] = &unk_278BA70A8;
  v10 = completionCopy;
  indexCopy = index;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF2424C;
  block[3] = &unk_278BA70A8;
  v10 = completionCopy;
  indexCopy = index;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index
{
  v3 = 1.0;
  if (index < 0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 1.0;
    if (objc_msgSend_count(self->_orderList, a2, index) > index)
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v6, index);
      v10 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v9, v8);
      v13 = objc_msgSend_phAsset(v10, v11, v12);

      v15 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v14, v8);
      v18 = objc_msgSend_subsampleFactor(v15, v16, v17);

      if (v13)
      {
        v21 = objc_msgSend_pixelWidth(v13, v19, v20);
        v24 = objc_msgSend_pixelHeight(v13, v22, v23);
        if (*MEMORY[0x277D3B3C0] * v18 / v21 <= 1.0)
        {
          v7 = *MEMORY[0x277D3B3C0] * v18 / v21;
        }

        else
        {
          v7 = 1.0;
        }

        if (*(MEMORY[0x277D3B3C0] + 8) * v18 / v24 <= 1.0)
        {
          v3 = *(MEMORY[0x277D3B3C0] + 8) * v18 / v24;
        }

        else
        {
          v3 = 1.0;
        }
      }
    }
  }

  v25 = v7;
  v26 = v3;
  result.height = v26;
  result.width = v25;
  return result;
}

- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index
{
  v103 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v102.a) = 134217984;
    *(&v102.a + 4) = index;
    _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "savePreview:%ld", &v102, 0xCu);
  }

  if (!objc_msgSend_state(self, v10, v11))
  {
    goto LABEL_19;
  }

  v14 = objc_msgSend_state(self, v12, v13);
  v17 = 0;
  if (index < 0 || v14 > 2)
  {
    goto LABEL_20;
  }

  if (objc_msgSend_count(self->_orderList, v15, v16) <= index || !objc_msgSend_canChangeOriginalCropOfPhotoAtIndex_(self, v18, index))
  {
LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF78C8();
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v22, index);
  v25 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v24, v23);
  v28 = objc_msgSend_crop(previewCopy, v26, v27);
  objc_msgSend_cgRect(v28, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v41 = objc_msgSend_subsampleFactor(v25, v39, v40);
  v44 = objc_msgSend_subsampleFactor(v25, v42, v43);
  CGAffineTransformMakeScale(&v102, v41, v44);
  v104.origin.x = v32;
  v104.origin.y = v34;
  v104.size.width = v36;
  v104.size.height = v38;
  v105 = CGRectApplyAffineTransform(v104, &v102);
  x = v105.origin.x;
  y = v105.origin.y;
  width = v105.size.width;
  height = v105.size.height;

  v51 = objc_msgSend_phAsset(v25, v49, v50);
  v54 = objc_msgSend_pixelWidth(v51, v52, v53);
  v57 = objc_msgSend_phAsset(v25, v55, v56);
  v60 = objc_msgSend_pixelHeight(v57, v58, v59);

  v63 = v54 - width;
  if (x < v54 - width)
  {
    v63 = x;
  }

  v64 = fmax(v63, 0.0);
  v65 = v60 - height;
  if (y < v60 - height)
  {
    v65 = y;
  }

  v66 = fmax(v65, 0.0);
  v67 = objc_msgSend_currentOverride(self->_userOverrideSession, v61, v62);
  v70 = objc_msgSend_timeLayout(v67, v68, v69);
  v73 = objc_msgSend_timeLayout(previewCopy, v71, v72);

  objc_msgSend_crop(v67, v74, v75);
  if (CLKRectEqualsRect())
  {
    v77 = v70 == v73;
  }

  else
  {
    v77 = 0;
  }

  if (v77)
  {
    v98 = 1;
  }

  else
  {
    v78 = objc_alloc_init(NTKParmesanLayoutUserOverride);
    objc_msgSend_setCrop_(v78, v79, v80, v64, v66, width, height);
    v83 = objc_msgSend_timeLayout(previewCopy, v81, v82);
    objc_msgSend_setTimeLayout_(v78, v84, v83);

    v87 = objc_msgSend_useDepthEffect(previewCopy, v85, v86);
    objc_msgSend_setUseDepthEffect_(v78, v88, v87);
    objc_msgSend_addUserOverride_(v25, v89, v78);
    scaledImageCache = self->_scaledImageCache;
    v93 = objc_msgSend_asset(v25, v91, v92);
    v96 = objc_msgSend_localIdentifier(v93, v94, v95);
    objc_msgSend_removeObjectForKey_(scaledImageCache, v97, v96);

    v98 = v78 == 0;
  }

  objc_msgSend_purgeResourcesForPreviewAtIndex_(self, v76, index);
  if (self->_galleryPreviewIsValid)
  {
    if (index)
    {
      v101 = 1;
    }

    else
    {
      v101 = v98;
    }

    self->_galleryPreviewIsValid = v101;
  }

  objc_msgSend_setState_(self, v100, 2);

  v17 = 1;
LABEL_20:

  return v17;
}

- (void)purgeResourcesForPreviewAtIndex:(int64_t)index
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, index);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, "purgeResourcesForPreviewAtIndex: %ld", &v7, 0xCu);
  }

  if (self->_userOverrideSessionIndex == index)
  {
    self->_userOverrideSessionIndex = -1;
    userOverrideSession = self->_userOverrideSession;
    self->_userOverrideSession = 0;
  }
}

- (void)_readResourceDirectoryPhotosFrom:(id)from
{
  v82 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v66 = objc_opt_new();
  v64 = fromCopy;
  objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v5, fromCopy);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v78 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v75, v81, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v76;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v76 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v75 + 1) + 8 * i);
        v14 = objc_msgSend__key(v13, v8, v9);
        v15 = [_NTKEditedParmesanAsset alloc];
        v17 = objc_msgSend_initWithParmesanAsset_phAsset_(v15, v16, v13, 0);
        v20 = objc_msgSend_localIdentifier(v13, v18, v19);

        if (v20)
        {
          v23 = objc_msgSend_localIdentifier(v13, v21, v22);
          objc_msgSend_addObject_(v66, v24, v23);
        }

        objc_msgSend_setObject_forKeyedSubscript_(self->_assets, v21, v17, v14);
        objc_msgSend_addObject_(self->_orderList, v25, v14);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v75, v81, 16);
    }

    while (v10);
  }

  v26 = NTKPHAssetsForLocalIdentifiers();
  v27 = objc_alloc(MEMORY[0x277CBEB38]);
  v30 = objc_msgSend_count(v26, v28, v29);
  v32 = objc_msgSend_initWithCapacity_(v27, v31, v30);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v33 = v26;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v71, v80, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v72;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v71 + 1) + 8 * j);
        v42 = objc_msgSend_localIdentifier(v41, v36, v37);
        objc_msgSend_setObject_forKeyedSubscript_(v32, v43, v41, v42);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v71, v80, 16);
    }

    while (v38);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v46 = objc_msgSend_allValues(self->_assets, v44, v45);
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v67, v79, 16);
  if (v48)
  {
    v51 = v48;
    v52 = *v68;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(v46);
        }

        v54 = *(*(&v67 + 1) + 8 * k);
        v55 = objc_msgSend_asset(v54, v49, v50);
        v58 = objc_msgSend_localIdentifier(v55, v56, v57);

        if (v58)
        {
          v60 = objc_msgSend_objectForKeyedSubscript_(v32, v59, v58);
          objc_msgSend_setPhAsset_(v54, v61, v60);
          v62 = sub_23BF20A44(v60);
          objc_msgSend_setSubsampleFactor_(v54, v63, v62);
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v67, v79, 16);
    }

    while (v51);
  }
}

- (id)_fetchAssetsForNewPhotos:(id)photos
{
  v36 = *MEMORY[0x277D85DE8];
  photosCopy = photos;
  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = photosCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v31, v35, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    v11 = *MEMORY[0x277D76A88];
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_objectForKeyedSubscript_(*(*(&v31 + 1) + 8 * v12), v8, v11, v31);
        v16 = v13;
        if (v13)
        {
          v17 = objc_msgSend_localIdentifier(v13, v14, v15);
          objc_msgSend_addObject_(v4, v18, v17);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v31, v35, 16);
    }

    while (v9);
  }

  v19 = NTKPHAssetsForLocalIdentifiers();
  v22 = objc_msgSend_count(v19, v20, v21);
  if (v22 != objc_msgSend_count(v4, v23, v24))
  {
    v27 = objc_msgSend_logObject(NTKParmesanFaceBundle, v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF793C(v19, v4, v27);
    }
  }

  if (objc_msgSend_count(v19, v25, v26, v31))
  {
    v28 = v19;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

- (void)_copyOrTranscodeAssetWithIds:(id)ids to:(id)to shouldPurgeOriginalData:(BOOL)data progress:(id)progress completion:(id)completion
{
  idsCopy = ids;
  toCopy = to;
  progressCopy = progress;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_23BF20830;
  v33 = sub_23BF20840;
  v34 = objc_opt_new();
  v18 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF79DC();
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23BF254E4;
  v23[3] = &unk_278BA70D0;
  v23[4] = self;
  v19 = toCopy;
  v24 = v19;
  v20 = idsCopy;
  v25 = v20;
  v21 = progressCopy;
  dataCopy = data;
  v26 = v21;
  v27 = &v29;
  objc_msgSend_enumerateObjectsUsingBlock_(v20, v22, v23);
  v21[2](v21, 1.0);
  completionCopy[2](completionCopy, v30[5]);

  _Block_object_dispose(&v29, 8);
}

- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory
{
  v39 = *MEMORY[0x277D85DE8];
  listCopy = list;
  directoryCopy = directory;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = listCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v34, v38, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = objc_msgSend_decodeFromDictionary_inResourceDirectory_(NTKParmesanAsset, v11, *(*(&v34 + 1) + 8 * v14), directoryCopy);
        v18 = objc_msgSend__key(v15, v16, v17);
        v20 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v19, v18);
        v23 = objc_msgSend_phAsset(v20, v21, v22);

        v24 = [_NTKEditedParmesanAsset alloc];
        v26 = objc_msgSend_initWithParmesanAsset_phAsset_(v24, v25, v15, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v27, v26, v18);
        objc_msgSend_addObject_(v8, v28, v18);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v34, v38, 16);
    }

    while (v12);
  }

  orderList = self->_orderList;
  self->_orderList = v8;
  v30 = v8;

  assets = self->_assets;
  self->_assets = v7;
}

- (BOOL)_ensureUserOverrideSessionIsLoadedForPhotoAtIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  if (objc_msgSend_count(self->_orderList, a2, index) > index)
  {
    if (self->_userOverrideSession && self->_userOverrideSessionIndex == index)
    {
      return 1;
    }

    v7 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v5, index);
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v8, v7);
    v12 = objc_msgSend_phAsset(v9, v10, v11);

    if (v12)
    {
      v13 = [_NTKUserOverrideSession alloc];
      v15 = objc_msgSend_initWithEditedAsset_(v13, v14, v9);
      userOverrideSession = self->_userOverrideSession;
      self->_userOverrideSession = v15;

      self->_userOverrideSessionIndex = index;
      return self->_userOverrideSession != 0;
    }
  }

  return 0;
}

- (void)_generateOverrideLayersForEditedAsset:(id)asset dstDir:(id)dir
{
  v87 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dirCopy = dir;
  v8 = objc_msgSend_userOverrides(assetCopy, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_phAsset(assetCopy, v12, v13);
    v79 = objc_msgSend_ntk_getFullSizePHAssetData(v14, v15, v16);
    sub_23BF2AF68(v79);
    v19 = objc_msgSend_fullSizeMaskData(assetCopy, v17, v18);

    if (v19)
    {
      v22 = objc_msgSend_fullSizeMaskData(assetCopy, v20, v21);
      image = sub_23BF2B03C(v22);
    }

    else
    {
      image = 0;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v75 = assetCopy;
    v23 = objc_msgSend_userOverrides(assetCopy, v20, v21);
    v26 = objc_msgSend_allValues(v23, v24, v25);

    obj = v26;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v81, v86, 16);
    if (v28)
    {
      v31 = v28;
      v77 = *v82;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v82 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v81 + 1) + 8 * i);
          v34 = objc_msgSend_logObject(NTKParmesanFaceBundle, v29, v30);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v37 = objc_msgSend_localIdentifier(v14, v35, v36);
            LODWORD(buf.a) = 136315906;
            *(&buf.a + 4) = "[NTKCParmesanPhotosEditor _generateOverrideLayersForEditedAsset:dstDir:]";
            WORD2(buf.b) = 2112;
            *(&buf.b + 6) = v33;
            HIWORD(buf.c) = 2112;
            *&buf.d = v37;
            LOWORD(buf.tx) = 2112;
            *(&buf.tx + 2) = dirCopy;
            _os_log_impl(&dword_23BF0C000, v34, OS_LOG_TYPE_DEFAULT, "%s: Generating user override layout for %@, asset %@, dstDir %@", &buf, 0x2Au);
          }

          objc_msgSend_crop(v33, v38, v39);
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v50 = 1.0 / objc_msgSend_pixelWidth(v14, v48, v49);
          v53 = objc_msgSend_pixelHeight(v14, v51, v52);
          CGAffineTransformMakeScale(&buf, v50, 1.0 / v53);
          v88.origin.x = v41;
          v88.origin.y = v43;
          v88.size.width = v45;
          v88.size.height = v47;
          CGRectApplyAffineTransform(v88, &buf);
          objc_msgSend_useDepthEffect(v33, v54, v55);
          v58 = objc_msgSend_timeLayout(v33, v56, v57);
          objc_msgSend_pfcTimePosition(v58, v59, v60);
          v63 = objc_msgSend_timeLayout(v33, v61, v62);
          objc_msgSend_normalizedTimeRectWithoutComplications(v63, v64, v65);
          v67 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v66, dirCopy);
          v68 = MEMORY[0x277CD97A8];
          v71 = objc_msgSend_localIdentifier(v14, v69, v70);
          v73 = objc_msgSend_uuidFromLocalIdentifier_(v68, v72, v71);
          v74 = PFLGenerateWatchLayout();
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v81, v86, 16);
      }

      while (v31);
    }

    CGImageRelease(image);
    assetCopy = v75;
  }
}

- (id)_makeLayoutForEditedAsset:(id)asset userOverride:(id)override
{
  overrideCopy = override;
  v6 = MEMORY[0x277CD97A8];
  v9 = objc_msgSend_phAsset(asset, v7, v8);
  v12 = objc_msgSend_localIdentifier(v9, v10, v11);
  v14 = objc_msgSend_uuidFromLocalIdentifier_(v6, v13, v12);

  v15 = MEMORY[0x277CCACA8];
  v18 = objc_msgSend_timeLayout(overrideCopy, v16, v17);
  v21 = objc_msgSend_pfcTimePosition(v18, v19, v20);
  v22 = sub_23BF2672C(v21);
  v24 = objc_msgSend_stringWithFormat_(v15, v23, @"base_%s_%@.heic", v22, v14);

  if (objc_msgSend_useDepthEffect(overrideCopy, v25, v26))
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = objc_msgSend_timeLayout(overrideCopy, v27, v28);
    v33 = objc_msgSend_pfcTimePosition(v30, v31, v32);
    v34 = sub_23BF2672C(v33);
    v36 = objc_msgSend_stringWithFormat_(v29, v35, @"mask_%s_%@.png", v34, v14);

    v37 = [NTKParmesanAssetMask alloc];
    v39 = objc_msgSend_initWithImageName_style_(v37, v38, v36, 0);
  }

  else
  {
    v39 = 0;
  }

  v40 = [NTKParmesanCrop alloc];
  objc_msgSend_crop(overrideCopy, v41, v42);
  v45 = objc_msgSend_initWithRect_(v40, v43, v44);
  v46 = [NTKParmesanAssetLayout alloc];
  v49 = objc_msgSend_timeLayout(overrideCopy, v47, v48);
  v51 = objc_msgSend_initWithOriginalCrop_baseImageName_mask_timeLayout_colorAnalysis_imageAOTBrightness_userEdited_(v46, v50, v45, v24, v39, v49, 0, 1, 0.0);

  return v51;
}

@end