@interface _NTKEditedParmesanAsset
- (BOOL)addOriginalAssetAndMaskData;
- (BOOL)isInResourceDirectory;
- (CGRect)currentCrop;
- (_NTKEditedParmesanAsset)initWithParmesanAsset:(id)asset phAsset:(id)phAsset;
- (void)addUserOverride:(id)override;
- (void)purgeOriginalAssetAndMaskData;
@end

@implementation _NTKEditedParmesanAsset

- (_NTKEditedParmesanAsset)initWithParmesanAsset:(id)asset phAsset:(id)phAsset
{
  assetCopy = asset;
  phAssetCopy = phAsset;
  v20.receiver = self;
  v20.super_class = _NTKEditedParmesanAsset;
  v9 = [(_NTKEditedParmesanAsset *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_phAsset, phAsset);
    phAsset = v10->_phAsset;
    if (phAsset)
    {
      v14 = sub_23BF20A44(phAsset);
    }

    else
    {
      v14 = 1;
    }

    v10->_subsampleFactor = v14;
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
    userOverrides = v10->_userOverrides;
    v10->_userOverrides = v15;

    fullSizeMaskData = v10->_fullSizeMaskData;
    v10->_lastEditedUserOverride = 1;
    v10->_fullSizeMaskData = 0;

    originalAsset = v10->_originalAsset;
    v10->_originalAsset = 0;
  }

  return v10;
}

- (BOOL)isInResourceDirectory
{
  v3 = objc_msgSend_asset(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (void)addUserOverride:(id)override
{
  overrideCopy = override;
  v7 = objc_msgSend_timeLayout(overrideCopy, v5, v6);
  v10 = objc_msgSend_scale(v7, v8, v9);

  userOverrides = self->_userOverrides;
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, v10);
  objc_msgSend_setObject_forKeyedSubscript_(userOverrides, v14, overrideCopy, v13);

  self->_lastEditedUserOverride = v10;
}

- (CGRect)currentCrop
{
  if (objc_msgSend_count(self->_userOverrides, a2, v2))
  {
    userOverrides = self->_userOverrides;
    v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v4, self->_lastEditedUserOverride);
    v9 = objc_msgSend_objectForKeyedSubscript_(userOverrides, v8, v7);
    objc_msgSend_crop(v9, v10, v11);
  }

  else
  {
    asset = self->_asset;
    if (!asset)
    {
      v21 = *MEMORY[0x277CBF398];
      v22 = *(MEMORY[0x277CBF398] + 8);
      v23 = *(MEMORY[0x277CBF398] + 16);
      v24 = *(MEMORY[0x277CBF398] + 24);
      goto LABEL_6;
    }

    v7 = objc_msgSend_preferredLayout(asset, v4, v5);
    v9 = objc_msgSend_originalCrop(v7, v17, v18);
    objc_msgSend_cgRect(v9, v19, v20);
  }

  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;

LABEL_6:
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)addOriginalAssetAndMaskData
{
  v43[1] = *MEMORY[0x277D85DE8];
  p_originalAsset = &self->_originalAsset;
  if (self->_originalAsset)
  {
    return 1;
  }

  v5 = dispatch_semaphore_create(0);
  v8 = objc_msgSend_phAsset(self, v6, v7);
  v11 = objc_msgSend_localIdentifier(v8, v9, v10);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_23BF20EEC;
  v41[3] = &unk_278BA6E10;
  v41[4] = self;
  v12 = v5;
  v42 = v12;
  objc_msgSend_fullSizeMaskDataForAssetIdentifier_completion_(NTKParmesanPhotoProcessor, v13, v11, v41);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = NTKNewUniqueTeporaryResourceDirectory();
  v17 = objc_msgSend_phAsset(self, v15, v16);
  v20 = objc_msgSend_localIdentifier(v17, v18, v19);
  v43[0] = v20;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v43, 1);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_23BF20F48;
  v38 = &unk_278BA6E38;
  selfCopy = self;
  v23 = v12;
  v40 = v23;
  objc_msgSend_processAssetsWithIdentifiers_dstDir_completion_(NTKParmesanPhotoProcessor, v24, v22, v14, &v35);

  dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_originalAsset)
  {
    v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26, v35, v36, v37, v38, selfCopy);
    objc_msgSend_removeItemAtPath_error_(v27, v28, v14, 0);

    v31 = objc_msgSend_logObject(NTKParmesanFaceBundle, v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7430(self, v31, v32);
    }
  }

  v33 = objc_msgSend_logObject(NTKParmesanFaceBundle, v25, v26, v35, v36, v37, v38, selfCopy);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF74C0(p_originalAsset, self, v33);
  }

  v3 = *p_originalAsset != 0;
  return v3;
}

- (void)purgeOriginalAssetAndMaskData
{
  v24 = *MEMORY[0x277D85DE8];
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    v5 = objc_msgSend_resourceDirectory(originalAsset, a2, v2);
    v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[_NTKEditedParmesanAsset purgeOriginalAssetAndMaskData]";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "%s: removing temp directory at %@", buf, 0x16u);
    }

    if (v5)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
      v19 = 0;
      objc_msgSend_removeItemAtURL_error_(v11, v12, v5, &v19);
      v13 = v19;

      if (v13)
      {
        v16 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_23BFF7550();
        }
      }
    }

    v17 = self->_originalAsset;
    self->_originalAsset = 0;

    fullSizeMaskData = self->_fullSizeMaskData;
    self->_fullSizeMaskData = 0;
  }
}

@end