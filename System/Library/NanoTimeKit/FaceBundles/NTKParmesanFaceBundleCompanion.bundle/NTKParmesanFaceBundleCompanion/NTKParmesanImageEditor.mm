@interface NTKParmesanImageEditor
- (BOOL)_writeItems:(id)items toResourceDirectory:(id)directory;
- (BOOL)addImages:(id)images;
- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index;
- (CGRect)_defaultCropForImage:(id)image;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index;
- (NSArray)imageIdentifiers;
- (id)_cropPreviewModelFromItem:(id)item;
- (id)_defaultLayoutFromImage:(id)image;
- (id)_encodeAndCopyImageItems:(id)items toResourceDirectory:(id)directory;
- (id)_itemForIdentifier:(id)identifier;
- (id)_itemWithDefaultLayoutFromImage:(id)image;
- (id)_saveImage:(id)image withIdentifier:(id)identifier toDirectory:(id)directory;
- (id)initForDevice:(id)device;
- (void)deletePhotoAtIndex:(int64_t)index;
- (void)finalizeWithProgress:(id)progress completion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)setImageOrder:(id)order;
- (void)thumbnailInfoForPhotoAtIndex:(int64_t)index completion:(id)completion;
@end

@implementation NTKParmesanImageEditor

- (id)initForDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = NTKParmesanImageEditor;
  v3 = [(NTKCompanionResourceDirectoryEditor *)&v8 initWithResourceDirectory:0 forDevice:device];
  if (v3)
  {
    v4 = objc_opt_new();
    items = v3->_items;
    v3->_items = v4;

    objc_msgSend_setState_(v3, v6, 1);
  }

  return v3;
}

- (NSArray)imageIdentifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_count(self->_items, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_items;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_identifier(*(*(&v20 + 1) + 8 * i), v12, v13, v20);
        objc_msgSend_addObject_(v8, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v14);
  }

  return v8;
}

- (id)_itemForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_items;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_msgSend_identifier(v12, v7, v8, v17);
        isEqualToString = objc_msgSend_isEqualToString_(v13, v14, identifierCopy);

        if (isEqualToString)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)addImages:(id)images
{
  v25 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  objc_msgSend_setState_(self, v5, 2);
  v8 = objc_opt_new();
  if (self->_previewIsValid)
  {
    self->_previewIsValid = objc_msgSend_count(self->_items, v6, v7) != 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = imagesCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = objc_msgSend__itemWithDefaultLayoutFromImage_(self, v12, *(*(&v20 + 1) + 8 * v15), v20);
        objc_msgSend_addObject_(v8, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v13);
  }

  objc_msgSend_addObjectsFromArray_(self->_items, v18, v8);
  return 1;
}

- (void)deletePhotoAtIndex:(int64_t)index
{
  objc_msgSend_removeObjectAtIndex_(self->_items, a2, index);
  if (self->_previewIsValid)
  {
    self->_previewIsValid = index != 0;
  }

  objc_msgSend_setState_(self, v5, 2);
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index
{
  v3 = objc_msgSend_objectAtIndexedSubscript_(self->_items, a2, index);
  v6 = objc_msgSend_image(v3, v4, v5);

  objc_msgSend_size(v6, v7, v8);
  v10 = v9;
  objc_msgSend_size(v6, v11, v12);
  v14 = *(MEMORY[0x277D3B3C0] + 8) / v13;
  if (*MEMORY[0x277D3B3C0] / v10 <= 1.0)
  {
    v15 = *MEMORY[0x277D3B3C0] / v10;
  }

  else
  {
    v15 = 1.0;
  }

  if (v14 <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v15;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v12 = objc_msgSend_objectAtIndexedSubscript_(self->_items, a2, index);
  objc_msgSend_removeObjectAtIndex_(self->_items, v7, index);
  objc_msgSend_insertObject_atIndex_(self->_items, v8, v12, toIndex - (toIndex > index));
  if (self->_previewIsValid)
  {
    if (index)
    {
      v10 = toIndex == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    self->_previewIsValid = v11;
  }

  objc_msgSend_setState_(self, v9, 2);
}

- (void)setImageOrder:(id)order
{
  orderCopy = order;
  if (objc_msgSend_state(self, v5, v6) && objc_msgSend_state(self, v7, v8) <= 2)
  {
    v11 = objc_msgSend_count(self->_items, v9, v10);
    if (v11 == objc_msgSend_count(orderCopy, v12, v13))
    {
      v16 = objc_msgSend_firstObject(self->_items, v14, v15);
      v19 = objc_msgSend_identifier(v16, v17, v18);

      v22 = objc_msgSend_firstObject(orderCopy, v20, v21);
      v24 = v22;
      v25 = (v19 | v22) == 0;
      if (v19)
      {
        v26 = v22 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        isEqualToString = 0;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(v19, v23, v22);
      }

      if (self->_previewIsValid)
      {
        self->_previewIsValid = (v25 | isEqualToString) & 1;
      }

      v28 = objc_opt_new();
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_23BF17C1C;
      v34[3] = &unk_278BA6AC8;
      v34[4] = self;
      v36 = &v37;
      v29 = v28;
      v35 = v29;
      objc_msgSend_enumerateObjectsUsingBlock_(orderCopy, v30, v34);
      if (*(v38 + 24) == 1)
      {
        objc_msgSend_setState_(self, v31, 2);
      }

      items = self->_items;
      self->_items = v29;
      v33 = v29;

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF6D64(orderCopy, &self->_items, v19);
      }
    }
  }
}

- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion
{
  items = self->_items;
  completionCopy = completion;
  v11 = objc_msgSend_objectAtIndexedSubscript_(items, v8, index);
  v10 = objc_msgSend__cropPreviewModelFromItem_(self, v9, v11);
  completionCopy[2](completionCopy, v10, 0);
}

- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion
{
  items = self->_items;
  completionCopy = completion;
  v18 = objc_msgSend_objectAtIndexedSubscript_(items, v8, index);
  v11 = objc_msgSend_image(v18, v9, v10);
  v13 = objc_msgSend__defaultLayoutFromImage_(self, v12, v11);

  objc_msgSend_setLayout_(v18, v14, v13);
  objc_msgSend_setCanRevert_(v18, v15, 0);
  v17 = objc_msgSend__cropPreviewModelFromItem_(self, v16, v18);
  completionCopy[2](completionCopy, v17, 0);
}

- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index
{
  v108 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "savePreview:%ld", buf, 0xCu);
  }

  if (objc_msgSend_state(self, v10, v11) && objc_msgSend_state(self, v12, v13) <= 2)
  {
    v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF6E88(previewCopy, v17);
    }

    v19 = objc_msgSend_objectAtIndexedSubscript_(self->_items, v18, index);
    v22 = objc_msgSend_image(v19, v20, v21);
    objc_msgSend__defaultCropForImage_(self, v23, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v34 = objc_msgSend_default(NTKParmesanTimeLayout, v32, v33);
    v37 = objc_msgSend_crop(previewCopy, v35, v36);
    objc_msgSend_cgRect(v37, v38, v39);
    v111.origin.x = v25;
    v111.origin.y = v27;
    v111.size.width = v29;
    v111.size.height = v31;
    if (CGRectEqualToRect(v109, v111))
    {
      v42 = objc_msgSend_timeLayout(previewCopy, v40, v41);
      isEqual = objc_msgSend_isEqual_(v42, v43, v34);

      if (isEqual)
      {
LABEL_13:
        v47 = objc_msgSend_layout(v19, v45, v46);
        v50 = objc_msgSend_timeLayout(v47, v48, v49);
        v53 = objc_msgSend_timeLayout(previewCopy, v51, v52);
        if (objc_msgSend_isEqual_(v50, v54, v53))
        {
          objc_msgSend_layout(v19, v55, v56);
          v57 = v105 = v34;
          objc_msgSend_crop(v57, v58, v59);
          v61 = v60;
          v63 = v62;
          v65 = v64;
          v67 = v66;
          v70 = objc_msgSend_crop(previewCopy, v68, v69);
          objc_msgSend_cgRect(v70, v71, v72);
          v112.origin.x = v73;
          v112.origin.y = v74;
          v112.size.width = v75;
          v112.size.height = v76;
          v110.origin.x = v61;
          v110.origin.y = v63;
          v110.size.width = v65;
          v110.size.height = v67;
          v77 = CGRectEqualToRect(v110, v112);

          v34 = v105;
          if (v77)
          {
LABEL_20:

            v16 = 1;
            goto LABEL_21;
          }
        }

        else
        {
        }

        if (self->_previewIsValid)
        {
          self->_previewIsValid = index != 0;
        }

        objc_msgSend_setState_(self, v78, 2);
        v81 = objc_msgSend_crop(previewCopy, v79, v80);
        objc_msgSend_cgRect(v81, v82, v83);
        v85 = v84;
        v87 = v86;
        v89 = v88;
        v91 = v90;
        v94 = objc_msgSend_layout(v19, v92, v93);
        objc_msgSend_setCrop_(v94, v95, v96, v85, v87, v89, v91);

        v99 = objc_msgSend_timeLayout(previewCopy, v97, v98);
        v102 = objc_msgSend_layout(v19, v100, v101);
        objc_msgSend_setTimeLayout_(v102, v103, v99);

        goto LABEL_20;
      }
    }

    else
    {
    }

    objc_msgSend_setCanRevert_(v19, v45, 1);
    goto LABEL_13;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (void)thumbnailInfoForPhotoAtIndex:(int64_t)index completion:(id)completion
{
  items = self->_items;
  completionCopy = completion;
  v22 = objc_msgSend_objectAtIndexedSubscript_(items, v7, index);
  v10 = objc_msgSend_image(v22, v8, v9);
  v13 = objc_msgSend_layout(v22, v11, v12);
  v16 = objc_msgSend_timeLayout(v13, v14, v15);
  v19 = objc_msgSend_layout(v22, v17, v18);
  objc_msgSend_crop(v19, v20, v21);
  completionCopy[2](completionCopy, v10, v16);
}

- (id)_itemWithDefaultLayoutFromImage:(id)image
{
  imageCopy = image;
  v5 = [NTKParmesanImageEditorItem alloc];
  v7 = objc_msgSend__defaultLayoutFromImage_(self, v6, imageCopy);
  v9 = objc_msgSend_initWithImage_layout_(v5, v8, imageCopy, v7);

  return v9;
}

- (id)_defaultLayoutFromImage:(id)image
{
  objc_msgSend__defaultCropForImage_(self, a2, image);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_new();
  objc_msgSend_setCrop_(v11, v12, v13, v4, v6, v8, v10);
  v16 = objc_msgSend_default(NTKParmesanTimeLayout, v14, v15);
  objc_msgSend_setTimeLayout_(v11, v17, v16);

  objc_msgSend_setUseDepthEffect_(v11, v18, 0);

  return v11;
}

- (CGRect)_defaultCropForImage:(id)image
{
  v3 = *MEMORY[0x277D3B3C0] / *(MEMORY[0x277D3B3C0] + 8);
  imageCopy = image;
  objc_msgSend_size(imageCopy, v5, v6);
  v8 = v7;
  objc_msgSend_size(imageCopy, v9, v10);
  v12 = v11;

  if (v3 * v12 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v3 * v12;
  }

  v14 = fmax((v8 - v13) * 0.5, 0.0);
  v15 = v8 / v3;
  if (v8 / v3 >= v12)
  {
    v15 = v12;
  }

  v16 = fmax((v12 - v15) * 0.5, 0.0);
  result.size.height = v15;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (id)_cropPreviewModelFromItem:(id)item
{
  itemCopy = item;
  v4 = [NTKParmesanCrop alloc];
  v7 = objc_msgSend_layout(itemCopy, v5, v6);
  objc_msgSend_crop(v7, v8, v9);
  v12 = objc_msgSend_initWithRect_(v4, v10, v11);

  v13 = [NTKParmesanCropPreviewModel alloc];
  v16 = objc_msgSend_image(itemCopy, v14, v15);
  v19 = objc_msgSend_layout(itemCopy, v17, v18);
  v22 = objc_msgSend_timeLayout(v19, v20, v21);
  canRevert = objc_msgSend_canRevert(itemCopy, v23, v24);

  v29 = canRevert;
  v27 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v13, v26, v16, 0, 0, v12, v22, 0, v29);

  return v27;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_count(self->_items, v8, v9);
    *buf = 136315394;
    *&buf[4] = "[NTKParmesanImageEditor generateGalleryPreviewResourceDirectoryWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_INFO, "%s, items %lu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = sub_23BF188B0;
  v35 = sub_23BF188C0;
  v36 = 0;
  v13 = objc_msgSend_state(self, v11, v12);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF188C8;
  aBlock[3] = &unk_278BA6B18;
  v31 = buf;
  v32 = v13;
  aBlock[4] = self;
  v14 = completionCopy;
  v30 = v14;
  v15 = _Block_copy(aBlock);
  if (objc_msgSend_state(self, v16, v17) >= 2 && objc_msgSend_state(self, v18, v19) <= 2)
  {
    if (!self->_previewIsValid)
    {
      objc_msgSend_setState_(self, v20, 3);
      v25 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BF18A74;
      block[3] = &unk_278BA6B40;
      v28 = buf;
      block[4] = self;
      v27 = v15;
      dispatch_async(v25, block);

      goto LABEL_7;
    }

    v23 = objc_msgSend_galleryPreviewResourceDirectory(self, v20, v21);
    v24 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v23;

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  (*(v15 + 2))(v15, v22);
LABEL_7:

  _Block_object_dispose(buf, 8);
}

- (void)finalizeWithProgress:(id)progress completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_count(self->_items, v9, v10);
    *buf = 136315394;
    v28 = "[NTKParmesanImageEditor finalizeWithProgress:completion:]";
    v29 = 2048;
    v30 = v11;
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_INFO, "%s, items %lu", buf, 0x16u);
  }

  if (objc_msgSend_state(self, v12, v13) >= 2 && objc_msgSend_state(self, v14, v15) < 3)
  {
    objc_msgSend_setState_(self, v16, 4);
    v19 = self->_items;
    v20 = dispatch_get_global_queue(2, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_23BF18E04;
    v22[3] = &unk_278BA6BE0;
    v23 = v19;
    v24 = completionCopy;
    v22[4] = self;
    v18 = v19;
    v21 = completionCopy;
    dispatch_async(v20, v22);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF18DF0;
    block[3] = &unk_278BA6B68;
    v26 = completionCopy;
    v17 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v18 = v26;
  }
}

- (BOOL)_writeItems:(id)items toResourceDirectory:(id)directory
{
  v32 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  directoryCopy = directory;
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v28 = 134218242;
    v29 = objc_msgSend_count(itemsCopy, v11, v12);
    v30 = 2114;
    v31 = directoryCopy;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_INFO, "Writing %lu image items to %{public}@", &v28, 0x16u);
  }

  v14 = objc_msgSend__encodeAndCopyImageItems_toResourceDirectory_(self, v13, itemsCopy, directoryCopy);
  v17 = v14;
  if (!v14 || (v18 = objc_msgSend_count(v14, v15, v16), v18 != objc_msgSend_count(itemsCopy, v19, v20)))
  {
    v25 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6F54();
    }

    goto LABEL_10;
  }

  v21 = NTKPhotosWriteImageListWithVersion();
  v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v22, v23);
  v25 = v24;
  if ((v21 & 1) == 0)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6F14();
    }

LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v26 = 1;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_23BF0C000, v25, OS_LOG_TYPE_INFO, "Successfully wrote items", &v28, 2u);
  }

LABEL_11:

  return v26;
}

- (id)_encodeAndCopyImageItems:(id)items toResourceDirectory:(id)directory
{
  v105 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  directoryCopy = directory;
  v7 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = itemsCopy;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v99, v104, 16);
  if (v88)
  {
    v87 = *v100;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v94 = directoryCopy;
    v86 = v7;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v100 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v99 + 1) + 8 * v11);
        v13 = objc_opt_class();
        v16 = objc_msgSend_image(v12, v14, v15);
        v93 = v12;
        v19 = objc_msgSend_layout(v12, v17, v18);
        objc_msgSend_crop(v19, v20, v21);
        v23 = objc_msgSend__cropAndScaleUIImage_cropRect_outputSize_(v13, v22, v16);

        v24 = MEMORY[0x277CCACA8];
        v27 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v25, v26);
        v30 = objc_msgSend_UUIDString(v27, v28, v29);
        v32 = objc_msgSend_stringWithFormat_(v24, v31, @"TransientImage-%@", v30);

        v34 = objc_msgSend__saveImage_withIdentifier_toDirectory_(self, v33, v23, v32, directoryCopy);
        if (!v34)
        {

          v82 = obj;
          v83 = 0;
          goto LABEL_18;
        }

        v37 = v34;
        v90 = v32;
        v92 = v11;
        objc_msgSend_size(v23, v35, v36);
        v39 = v38;
        v91 = v23;
        objc_msgSend_size(v23, v40, v41);
        v43 = v42;
        v44 = [NTKParmesanCrop alloc];
        v47 = objc_msgSend_initWithRect_(v44, v45, v46, 0.0, 0.0, v39, v43);
        v48 = objc_opt_new();
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v51 = objc_msgSend_allLayouts(NTKParmesanTimeLayout, v49, v50);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v95, v103, 16);
        if (v53)
        {
          v54 = v53;
          v55 = *v96;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v96 != v55)
              {
                objc_enumerationMutation(v51);
              }

              v57 = *(*(&v95 + 1) + 8 * i);
              v58 = [NTKParmesanAssetLayout alloc];
              v60 = objc_msgSend_initWithOriginalCrop_baseImageName_mask_timeLayout_colorAnalysis_imageAOTBrightness_userEdited_(v58, v59, v47, v37, 0, v57, 0, 0, 0.0);
              objc_msgSend_setObject_forKey_(v48, v61, v60, v57);
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v62, &v95, v103, 16);
          }

          while (v54);
        }

        v64 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v63, v94);
        v65 = [NTKParmesanAsset alloc];
        v68 = objc_msgSend_date(MEMORY[0x277CBEAA8], v66, v67);
        v71 = objc_msgSend_layout(v93, v69, v70);
        v74 = objc_msgSend_timeLayout(v71, v72, v73);
        v76 = objc_msgSend_initWithLocalIdentifier_modificationDate_presentationSize_videoInfo_resourceDirectory_preferredTimeLayout_layouts_accessibilityDescription_(v65, v75, v90, v68, 0, v64, v74, v48, v9, v10, 0);

        v79 = objc_msgSend_asDictionary(v76, v77, v78);
        v7 = v86;
        objc_msgSend_addObject_(v86, v80, v79);

        directoryCopy = v94;
        v11 = v92 + 1;
      }

      while (v92 + 1 != v88);
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v99, v104, 16);
      if (v88)
      {
        continue;
      }

      break;
    }
  }

  v82 = obj;

  v83 = v7;
LABEL_18:

  return v83;
}

- (id)_saveImage:(id)image withIdentifier:(id)identifier toDirectory:(id)directory
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  directoryCopy = directory;
  v9 = MEMORY[0x277CCACA8];
  imageCopy = image;
  v12 = objc_msgSend_stringWithFormat_(v9, v11, @"base_%@.heic", identifierCopy);
  v13 = UIImageHEICRepresentation(imageCopy);

  if (v13)
  {
    v16 = objc_msgSend_stringByAppendingPathComponent_(directoryCopy, v14, v12);
    v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_INFO, "Saving image to %{public}@", buf, 0xCu);
    }

    v28 = 0;
    objc_msgSend_writeToFile_options_error_(v13, v20, v16, 0, &v28);
    v23 = v28;
    if (v23)
    {
      v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v21, v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF6F94(v23, v24, v25);
      }
    }

    v26 = v12;
  }

  else
  {
    v23 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF702C();
    }

    v26 = 0;
  }

  return v26;
}

@end