@interface PXPhotoKitSyndicationSaveToLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group error:(id *)error;
+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitSyndicationSaveToLibraryActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  managerCopy = manager;
  selectionManager = [managerCopy selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];

  v8 = [allItemsEnumerator count];
  [managerCopy presentationSource];

  if (v8 == 1)
  {
    PXMediaTypeForAssets();
  }

  PXFilter();
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group error:(id *)error
{
  if (asset)
  {
    return [asset px_isUnsavedSyndicatedAsset];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error
{
  objectReference = [manager objectReference];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = objectReference;
  }

  else
  {
    v7 = 0;
  }

  asset = [v7 asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = asset;
  }

  else
  {
    v9 = 0;
  }

  assetCollection = [v7 assetCollection];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = assetCollection;
  }

  else
  {
    v11 = 0;
  }

  v12 = [self canPerformOnAsset:v9 inAssetCollection:v11 person:0 socialGroup:0 error:error];
  return v12;
}

- (void)performBackgroundTask
{
  v3 = +[PXContentSyndicationSettings sharedInstance];
  preventActualSaveToLibraryBehavior = [v3 preventActualSaveToLibraryBehavior];

  if (preventActualSaveToLibraryBehavior)
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    assets = [(PXPhotoKitAssetActionPerformer *)self assets];
    px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke;
    v11[3] = &unk_1E774C648;
    v12 = assets;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_240;
    v8[3] = &unk_1E774B730;
    v9 = v12;
    selfCopy = self;
    v7 = v12;
    [px_systemPhotoLibrary performChanges:v11 completionHandler:v8];
  }
}

void __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 uuid];
          *buf = 138543618;
          v15 = v8;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "SyndicationSaveActionPerformer: Saving asset (%{public}@): %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x1E6978698] creationRequestForAssetFromGuestAsset:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }
}

void __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_240(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2;
  v7[3] = &unk_1E77443F0;
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = PLSyndicationUIGetLog();
  v5 = v4;
  if (v3 == 1)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) count];
    *buf = 134217984;
    v35 = v6;
    v7 = "SyndicationSaveActionPerformer: All %ld assets saved";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = [*(a1 + 32) count];
    v12 = *(a1 + 40);
    *buf = 134218242;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v7 = "SyndicationSaveActionPerformer: All %ld assets did not save. Error: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 22;
  }

  _os_log_impl(&dword_1A3C1C000, v8, v9, v7, buf, v10);
LABEL_7:

  [*(a1 + 48) completeBackgroundTaskWithSuccess:*(a1 + 56) error:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(a1 + 32);
    v13 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v28;
      v17 = *MEMORY[0x1E6991E20];
      v18 = *MEMORY[0x1E6991E18];
LABEL_10:
      v19 = 0;
      if (v15 <= 9)
      {
        v20 = 9;
      }

      else
      {
        v20 = v15;
      }

      while (1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v27 + 1) + v19);
        v22 = MEMORY[0x1E6991F28];
        v31[0] = v17;
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v31[1] = v18;
        v32[0] = v24;
        v32[1] = v21;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
        [v22 sendEvent:@"com.apple.photos.CPAnalytics.syndicatedAssetsSaved" withPayload:v25];

        if (v20 == v15)
        {
          break;
        }

        ++v15;
        v19 += 8;
        if (!--v14)
        {
          v14 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v14)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }
}

- (void)performUserInteractionTask
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[PXContentSyndicationSettings sharedInstance];
  preventActualSaveToLibraryBehavior = [v3 preventActualSaveToLibraryBehavior];

  if (preventActualSaveToLibraryBehavior)
  {
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Save to Library Prevented" message:@"Saving to Library is currently disabled via our internal settings (for debugging)." preferredStyle:1];
    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v10 addAction:v5];

    [(PXActionPerformer *)self presentViewController:v10];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      assets = [(PXPhotoKitAssetActionPerformer *)self assets];
      *buf = 134217984;
      v13 = [assets count];
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "SyndicationSaveActionPerformer: Ensuring all %lu unsaved assets are available locally...", buf, 0xCu);
    }

    v8 = PXCreateDefaultAssetSharingHelper(self);
    assets2 = [(PXPhotoKitAssetActionPerformer *)self assets];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke;
    v11[3] = &unk_1E774B308;
    v11[4] = self;
    [v8 ensureLocalAssetsForSyndicationSave:assets2 completion:v11];
  }
}

uint64_t __79__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v6 = v5;
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "SyndicationSaveActionPerformer: Unsaved assets were all made locally available: %{public}@", &v8, 0xCu);
  }

  return [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end