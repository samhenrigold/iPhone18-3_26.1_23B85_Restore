@interface NTKParmesanPreviewProvider
- (CGRect)Parmesan_screenBounds;
- (CGSize)Parmesan_minimumNormalizedCropSize;
- (NTKParmesanPreviewProvider)initWithEditor:(id)editor selectedImageIndex:(int64_t)index;
- (NTKParmesanTypefaceMetrics)Parmesan_typefaceMetrics;
- (double)Parmesan_screenCornerRadius;
- (void)Parmesan_changePhotoWithAsset:(id)asset completion:(id)completion;
- (void)Parmesan_getPreviewWithCompletion:(id)completion;
@end

@implementation NTKParmesanPreviewProvider

- (NTKParmesanPreviewProvider)initWithEditor:(id)editor selectedImageIndex:(int64_t)index
{
  editorCopy = editor;
  v11.receiver = self;
  v11.super_class = NTKParmesanPreviewProvider;
  v8 = [(NTKParmesanPreviewProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_editor, editor);
    v9->_selectedImageIndex = index;
  }

  return v9;
}

- (CGRect)Parmesan_screenBounds
{
  v3 = objc_msgSend_device(self->_editor, a2, v2);
  objc_msgSend_screenBounds(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)Parmesan_screenCornerRadius
{
  v3 = objc_msgSend_device(self->_editor, a2, v2);
  objc_msgSend_screenCornerRadius(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGSize)Parmesan_minimumNormalizedCropSize
{
  MEMORY[0x2821F9670](self->_editor, sel_minimumNormalizedCropSizeForPhotoAtIndex_, self->_selectedImageIndex);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NTKParmesanTypefaceMetrics)Parmesan_typefaceMetrics
{
  v3 = [NTKParmesanTypefaceMetrics alloc];
  v6 = objc_msgSend_device(self->_editor, v4, v5);
  v8 = objc_msgSend_initWithDevice_(v3, v7, v6);

  return v8;
}

- (void)Parmesan_getPreviewWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    selectedImageIndex = self->_selectedImageIndex;
    v13 = 134217984;
    v14 = selectedImageIndex;
    _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_DEFAULT, "Requesting preview for asset index = %ld", &v13, 0xCu);
  }

  editor = self->_editor;
  if (editor)
  {
    objc_msgSend_previewOfLibraryPhotoAtIndex_completion_(editor, v9, self->_selectedImageIndex, completionCopy);
  }

  else
  {
    v12 = objc_msgSend_logObject(NTKParmesanFaceBundle, v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8938(self, v12);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)Parmesan_changePhotoWithAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if (objc_msgSend_Parmesan_canAddPhotoAssets(self, v7, v8))
  {
    v11 = objc_msgSend_replaceAssetAtIndex_withAsset_(self->_editor, v9, self->_selectedImageIndex, assetCopy);
    if (v11)
    {
      completionCopy[2](completionCopy, 0, v11);
    }

    else
    {
      objc_msgSend_Parmesan_getPreviewWithCompletion_(self, v10, completionCopy);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

@end