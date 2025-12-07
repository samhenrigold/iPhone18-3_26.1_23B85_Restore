@interface CNPhotoPickerPhotoFacesProvider
+ (id)log;
- (CGRect)cropRectForAsset:(id)asset face:(id)face;
- (CNPhotoPickerPhotoFacesProvider)initWithVisualIdentity:(id)identity;
- (id)getItemsFromPhotoLibraryWithItemDelegate:(id)delegate;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
@end

@implementation CNPhotoPickerPhotoFacesProvider

- (CGRect)cropRectForAsset:(id)asset face:(id)face
{
  v46 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  assetCopy = asset;
  [faceCopy size];
  v8 = v7;
  [faceCopy centerX];
  v10 = v9;
  [faceCopy centerY];
  v12 = v11;

  pixelWidth = [assetCopy pixelWidth];
  pixelHeight = [assetCopy pixelHeight];

  v15 = pixelHeight;
  if (pixelWidth >= pixelHeight)
  {
    v16 = pixelHeight;
  }

  else
  {
    v16 = pixelWidth;
  }

  v17 = v8 * v16;
  v18 = v8 * v16 * -0.5;
  v19 = v18 + v10 * pixelWidth;
  v20 = v18 + (1.0 - v12) * v15;
  v21 = v8 * v16 + v19 - pixelWidth;
  if (v21 < v8 * v16 + v20 - v15)
  {
    v21 = v8 * v16 + v20 - v15;
  }

  v22 = -(v8 * v16);
  if (v21 >= v22)
  {
    v22 = v21;
  }

  if (v19 + v22 < 0.0)
  {
    v22 = v22 - (v19 + v22);
  }

  if (v20 + v22 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 - (v20 + v22);
  }

  v24 = v17;
  v47 = CGRectInset(*&v19, v23, v23);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v29 = [objc_opt_class() log];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v34 = 134219264;
    v35 = x;
    v36 = 2048;
    v37 = y;
    v38 = 2048;
    v39 = width;
    v40 = 2048;
    v41 = height;
    v42 = 2048;
    v43 = pixelWidth;
    v44 = 2048;
    v45 = pixelHeight;
    _os_log_debug_impl(&dword_199A75000, v29, OS_LOG_TYPE_DEBUG, "cropRect {%.2f, %.2f, %.2f, %.2f} for face asset of size (%.2f x %.2f)", &v34, 0x3Eu);
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)getItemsFromPhotoLibraryWithItemDelegate:(id)delegate
{
  v55 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  array = [MEMORY[0x1E695DF70] array];
  v50 = 0;
  v4 = [CNPhotoLibraryProvider photoLibraryWithError:&v50];
  v5 = v50;
  if (v4)
  {
    v6 = objc_alloc_init(getPHFetchOptionsClass());
    [v6 setPhotoLibrary:v4];
    visualIdentity = [(CNPhotoPickerPhotoFacesProvider *)self visualIdentity];
    identifier = [visualIdentity identifier];

    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
      PHPersonClass = getPHPersonClass();
      v52 = identifier;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v11 = [(objc_class *)PHPersonClass fetchPersonsForContactIdentifiers:v10 options:v6];

      firstObject = [v11 firstObject];
      if (firstObject)
      {
        v33 = v11;
        v34 = identifier;
        selfCopy = self;
        v35 = v5;
        v13 = objc_alloc_init(getPHFetchOptionsClass());
        v36 = v4;
        [v13 setPhotoLibrary:v4];
        v14 = [v13 setFetchLimit:4];
        v31 = v13;
        v32 = firstObject;
        v30 = [getPHFaceClass(v14) fetchSuggestedFacesForPerson:firstObject options:v13];
        fetchedObjects = [v30 fetchedObjects];
        v16 = [(objc_class *)getPHAssetClass() fetchAssetsGroupedByFaceUUIDForFaces:fetchedObjects];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = fetchedObjects;
        v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v47;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v47 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v46 + 1) + 8 * i);
              uuid = [v21 uuid];
              v23 = [v16 objectForKeyedSubscript:uuid];

              if (v23)
              {
                getPHImageRequestOptionsClass();
                v24 = objc_opt_new();
                [v24 setSynchronous:1];
                [v24 setNetworkAccessAllowed:1];
                v25 = [v24 setResizeMode:1];
                defaultManager = [getPHImageManagerClass(v25) defaultManager];
                v41[0] = MEMORY[0x1E69E9820];
                v41[1] = 3221225472;
                v41[2] = __76__CNPhotoPickerPhotoFacesProvider_getItemsFromPhotoLibraryWithItemDelegate___block_invoke;
                v41[3] = &unk_1E74E5340;
                v41[4] = selfCopy;
                v27 = v23;
                v42 = v27;
                v43 = v21;
                v44 = delegateCopy;
                v45 = array;
                [defaultManager requestImageDataAndOrientationForAsset:v27 options:v24 resultHandler:v41];
              }
            }

            v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v18);
        }

        v5 = v35;
        v4 = v36;
        identifier = v34;
        firstObject = v32;
        v11 = v33;
      }

      v28 = array;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v5;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Unable to fetch faces from photo library %@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E695E0F0];
  }

  return v28;
}

void __76__CNPhotoPickerPhotoFacesProvider_getItemsFromPhotoLibraryWithItemDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  [v3 cropRectForAsset:v4 face:v5];
  v12 = [(CNPhotoPickerProviderItem *)[CNPhotoPickerPhotoFacesProviderItem alloc] initWithImageData:v6 thumbnailImageData:0 fullscreenImageData:0 cropRect:v7, v8, v9, v10];

  v11 = [*(a1 + 40) modificationDate];
  [(CNPhotoPickerProviderItem *)v12 setSortDate:v11];

  [(CNPhotoPickerProviderItem *)v12 setDelegate:*(a1 + 56)];
  [*(a1 + 64) addObject:v12];
}

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  delegateCopy = delegate;
  if (+[CNPhotoPickerCapabilities allowsPhotoLibraryAccess]&& [(objc_class *)getPHPhotoLibraryClass_47934() authorizationStatus]!= 2)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__47935;
    v26 = __Block_byref_object_dispose__47936;
    v27 = 0;
    if ([(objc_class *)getPHPhotoLibraryClass_47934() authorizationStatus])
    {
      v15 = [(CNPhotoPickerPhotoFacesProvider *)self getItemsFromPhotoLibraryWithItemDelegate:delegateCopy];
      v16 = v23[5];
      v23[5] = v15;
    }

    else
    {
      PHPhotoLibraryClass_47934 = getPHPhotoLibraryClass_47934();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __104__CNPhotoPickerPhotoFacesProvider_loadItemsForSize_scale_RTL_renderingQueue_callbackQueue_itemDelegate___block_invoke;
      v19[3] = &unk_1E74E5318;
      v21 = &v22;
      v19[4] = self;
      v20 = delegateCopy;
      [(objc_class *)PHPhotoLibraryClass_47934 requestAuthorization:v19];
    }

    v14 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

uint64_t __104__CNPhotoPickerPhotoFacesProvider_loadItemsForSize_scale_RTL_renderingQueue_callbackQueue_itemDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = [*(a1 + 32) getItemsFromPhotoLibraryWithItemDelegate:*(a1 + 40)];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (CNPhotoPickerPhotoFacesProvider)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerPhotoFacesProvider;
  v6 = [(CNPhotoPickerPhotoFacesProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, identity);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;

    v11 = v7;
  }

  return v7;
}

+ (id)log
{
  if (log_cn_once_token_20_47949 != -1)
  {
    dispatch_once(&log_cn_once_token_20_47949, &__block_literal_global_47950);
  }

  v3 = log_cn_once_object_20_47951;

  return v3;
}

uint64_t __38__CNPhotoPickerPhotoFacesProvider_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNPhotoPickerPhotoFacesProvider");
  v1 = log_cn_once_object_20_47951;
  log_cn_once_object_20_47951 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end