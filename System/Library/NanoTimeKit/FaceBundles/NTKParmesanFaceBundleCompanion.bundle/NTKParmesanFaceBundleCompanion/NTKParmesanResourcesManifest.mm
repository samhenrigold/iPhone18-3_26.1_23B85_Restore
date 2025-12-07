@interface NTKParmesanResourcesManifest
- (BOOL)_resourceIsValidMediaAsset:(id)asset ofType:(id)type;
- (BOOL)validateImageListItem:(id)item withError:(id *)error;
@end

@implementation NTKParmesanResourcesManifest

- (BOOL)validateImageListItem:(id)item withError:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_resourceDirectoryURL(self, v9, v10);
    v14 = objc_msgSend_lastPathComponent(v11, v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v15, @"localIdentifier");
    *buf = 138412546;
    v79 = v14;
    v80 = 2112;
    v81 = v16;
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: validating image list item: %@", buf, 0x16u);
  }

  v18 = objc_msgSend_decodeFromDictionary_(NTKParmesanAsset, v17, itemCopy);
  v21 = v18;
  if (!v18)
  {
    v37 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8860(self, itemCopy, v37);
    }

LABEL_22:

    v71 = 0;
    goto LABEL_23;
  }

  v22 = objc_msgSend_layouts(v18, v19, v20);
  v25 = objc_msgSend_allValues(v22, v23, v24);
  v28 = objc_msgSend_count(v25, v26, v27);

  if (v28)
  {
    v77 = itemCopy;
    v31 = 0;
    while (1)
    {
      v32 = objc_msgSend_layouts(v21, v29, v30);
      v35 = objc_msgSend_allValues(v32, v33, v34);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, v31);

      v40 = objc_msgSend_baseImageName(v37, v38, v39);
      if (v40)
      {
        v43 = v40;
        v44 = objc_msgSend_baseImageName(v37, v41, v42);
        IsValidMediaAsset_ofType = objc_msgSend__resourceIsValidMediaAsset_ofType_(self, v45, v44, &unk_284ED4230);

        if ((IsValidMediaAsset_ofType & 1) == 0)
        {
          break;
        }
      }

      v47 = objc_msgSend_mask(v37, v41, v42);
      v50 = objc_msgSend_imageName(v47, v48, v49);
      if (v50)
      {
        v53 = v50;
        v54 = objc_msgSend_mask(v37, v51, v52);
        v57 = objc_msgSend_imageName(v54, v55, v56);
        v59 = objc_msgSend__resourceIsValidMediaAsset_ofType_(self, v58, v57, &unk_284ED4248);

        if ((v59 & 1) == 0)
        {
          v73 = objc_msgSend_logObject(NTKParmesanFaceBundle, v60, v61);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF87B8(self, v73, v75);
          }

          goto LABEL_21;
        }
      }

      else
      {
      }

      ++v31;
      v64 = objc_msgSend_layouts(v21, v62, v63);
      v67 = objc_msgSend_allValues(v64, v65, v66);
      v70 = objc_msgSend_count(v67, v68, v69);

      if (v31 >= v70)
      {
        v71 = 1;
        itemCopy = v77;
        goto LABEL_23;
      }
    }

    v73 = objc_msgSend_logObject(NTKParmesanFaceBundle, v41, v42);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8710(self, v73, v72);
    }

LABEL_21:
    itemCopy = v77;

    goto LABEL_22;
  }

  v71 = 1;
LABEL_23:

  return v71;
}

- (BOOL)_resourceIsValidMediaAsset:(id)asset ofType:(id)type
{
  assetCopy = asset;
  if (objc_msgSend_resourceWithName_isValidMediaAssetOfType_withMinFileSize_maxFileSize_(self, v7, assetCopy, type, 1000, 4000000))
  {
    IsValidImage = objc_msgSend_resourceWithNameIsValidImage_(self, v8, assetCopy);
  }

  else
  {
    IsValidImage = 0;
  }

  return IsValidImage;
}

@end