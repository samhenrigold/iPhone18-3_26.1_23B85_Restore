@interface _NTKUserOverrideSession
- (_NTKUserOverrideSession)initWithEditedAsset:(id)asset;
- (id)previewModelForDevice:(id)device subsampleFactor:(double)factor;
@end

@implementation _NTKUserOverrideSession

- (_NTKUserOverrideSession)initWithEditedAsset:(id)asset
{
  v124 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v122.receiver = self;
  v122.super_class = _NTKUserOverrideSession;
  v7 = [(_NTKUserOverrideSession *)&v122 init];
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = objc_msgSend_phAsset(assetCopy, v5, v6);
  v11 = objc_msgSend_ntk_getFullSizePHAssetData(v8, v9, v10);

  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = sub_23BF2AF68(v11);
  if (!objc_msgSend_addOriginalAssetAndMaskData(assetCopy, v13, v14))
  {
    goto LABEL_37;
  }

  v15 = NTKCGImagePropertyOrientationToUIImageOrientation();
  v16 = MEMORY[0x277D2BFA8];
  v19 = objc_msgSend_subsampleFactor(assetCopy, v17, v18);
  v21 = objc_msgSend__subsampledImageWithData_orientation_subsampleFactor_(v16, v20, v11, v15, v19);
  photoImage = v7->_photoImage;
  v7->_photoImage = v21;

  v25 = objc_msgSend_fullSizeMaskData(assetCopy, v23, v24);

  if (v25 && (objc_msgSend_fullSizeMaskData(assetCopy, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v29 = sub_23BF2B03C(v28), v28, v29))
  {
    v30 = objc_alloc(MEMORY[0x277D3B3D0]);
    v31 = 1;
    v33 = objc_msgSend_initWithMaskImage_orientation_(v30, v32, v29, 1);
    v34 = [_NTKParmesanPreviewValidatorImplementation alloc];
    v36 = objc_msgSend_initWithPFLCValidator_(v34, v35, v33);
    previewValidator = v7->_previewValidator;
    v7->_previewValidator = v36;

    v40 = objc_msgSend_CGImage(v7->_photoImage, v38, v39);
    v41 = sub_23BF2AD4C(v40, v12, v29, 1);
    v43 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D755B8], v42, v41, 0, 1.0);
    photoImageMasked = v7->_photoImageMasked;
    v7->_photoImageMasked = v43;

    CGImageRelease(v41);
    CGImageRelease(v29);
  }

  else
  {
    v31 = 0;
  }

  v45 = objc_msgSend_userOverrides(assetCopy, v26, v27);
  v48 = objc_msgSend_count(v45, v46, v47);

  if (v48)
  {
    LOBYTE(v51) = 1;
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v52 = objc_msgSend_asset(assetCopy, v49, v50, 0);
    v55 = objc_msgSend_layouts(v52, v53, v54);
    v58 = objc_msgSend_allValues(v55, v56, v57);

    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v118, v123, 16);
    if (v51)
    {
      v62 = *v119;
      while (2)
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v119 != v62)
          {
            objc_enumerationMutation(v58);
          }

          if (objc_msgSend_userEdited(*(*(&v118 + 1) + 8 * i), v60, v61))
          {
            LOBYTE(v51) = 1;
            goto LABEL_20;
          }
        }

        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v60, &v118, v123, 16);
        if (v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  v7->_canRevert = v51;
  v64 = objc_msgSend_userOverrides(assetCopy, v49, v50);
  v67 = objc_msgSend_count(v64, v65, v66);

  if (!v67)
  {
    v83 = objc_msgSend_asset(assetCopy, v68, v69);
    v82 = objc_msgSend_preferredLayout(v83, v84, v85);

    if (v82 || (objc_msgSend_originalAsset(assetCopy, v86, v87), v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend_preferredLayout(v88, v89, v90), v82 = objc_claimAutoreleasedReturnValue(), v88, v82))
    {
      v93 = objc_alloc_init(NTKParmesanLayoutUserOverride);
      p_currentOverride = &v7->_currentOverride;
      currentOverride = v7->_currentOverride;
      v7->_currentOverride = v93;

      v98 = objc_msgSend_originalCrop(v82, v96, v97);
      objc_msgSend_cgRect(v98, v99, v100);
      objc_msgSend_setCrop_(v7->_currentOverride, v101, v102);

      v105 = objc_msgSend_timeLayout(v82, v103, v104);
      objc_msgSend_setTimeLayout_(v7->_currentOverride, v106, v105);

      v110 = objc_msgSend_mask(v82, v107, v108);
      if (v110)
      {
        objc_msgSend_setUseDepthEffect_(*p_currentOverride, v109, v31);
      }

      else
      {
        objc_msgSend_setUseDepthEffect_(*p_currentOverride, v109, 0);
      }

      v113 = objc_msgSend_logObject(NTKParmesanFaceBundle, v111, v112);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
      {
        sub_23BFF7650(assetCopy, &v7->_currentOverride, v113);
      }

      goto LABEL_32;
    }

    v115 = objc_msgSend_logObject(NTKParmesanFaceBundle, v91, v92);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF771C(assetCopy, v115, v116);
    }

LABEL_37:
    v114 = 0;
    goto LABEL_38;
  }

  v70 = objc_msgSend_userOverrides(assetCopy, v68, v69);
  v71 = MEMORY[0x277CCABB0];
  EditedUserOverride = objc_msgSend_lastEditedUserOverride(assetCopy, v72, v73);
  v76 = objc_msgSend_numberWithInteger_(v71, v75, EditedUserOverride);
  v78 = objc_msgSend_objectForKeyedSubscript_(v70, v77, v76);
  v79 = v7->_currentOverride;
  v7->_currentOverride = v78;

  v82 = objc_msgSend_logObject(NTKParmesanFaceBundle, v80, v81);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF75D4();
  }

LABEL_32:

LABEL_33:
  v114 = v7;
LABEL_38:

  return v114;
}

- (id)previewModelForDevice:(id)device subsampleFactor:(double)factor
{
  v6 = objc_msgSend_currentOverride(self, a2, device);
  objc_msgSend_crop(v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGAffineTransformMakeScale(&v53, 1.0 / factor, 1.0 / factor);
  v55.origin.x = v10;
  v55.origin.y = v12;
  v55.size.width = v14;
  v55.size.height = v16;
  v56 = CGRectApplyAffineTransform(v55, &v53);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;

  v21 = [NTKParmesanCropPreviewModel alloc];
  v24 = objc_msgSend_photoImage(self, v22, v23);
  v27 = objc_msgSend_photoImageMasked(self, v25, v26);
  v30 = objc_msgSend_previewValidator(self, v28, v29);
  v31 = [NTKParmesanCrop alloc];
  v34 = objc_msgSend_initWithRect_(v31, v32, v33, x, y, width, height);
  v37 = objc_msgSend_currentOverride(self, v35, v36);
  v40 = objc_msgSend_timeLayout(v37, v38, v39);
  v43 = objc_msgSend_currentOverride(self, v41, v42);
  v46 = objc_msgSend_useDepthEffect(v43, v44, v45);
  canRevert = objc_msgSend_canRevert(self, v47, v48);
  v50 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v21, v49, v24, v27, v30, v34, v40, v46, canRevert);

  return v50;
}

@end