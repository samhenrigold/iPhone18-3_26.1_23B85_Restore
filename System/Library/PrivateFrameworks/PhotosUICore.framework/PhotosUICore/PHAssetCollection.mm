@interface PHAssetCollection
@end

@implementation PHAssetCollection

void __57__PHAssetCollection_PhotosUICore__px_otherAlbumsSubtypes__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = px_otherAlbumsSubtypes_subtypes;
  px_otherAlbumsSubtypes_subtypes = &unk_1F19117B8;

  if (_os_feature_enabled_impl())
  {
    v2 = [&unk_1F19117D0 arrayByAddingObjectsFromArray:px_otherAlbumsSubtypes_subtypes];
    v3 = px_otherAlbumsSubtypes_subtypes;
    px_otherAlbumsSubtypes_subtypes = v2;
  }

  v4 = [&unk_1F19117E8 arrayByAddingObjectsFromArray:px_otherAlbumsSubtypes_subtypes];
  v5 = px_otherAlbumsSubtypes_subtypes;
  px_otherAlbumsSubtypes_subtypes = v4;

  v6 = +[PXCuratedLibrarySettings sharedInstance];
  v7 = [v6 enableRecentlyEditedAlbum];

  if (v7)
  {
    v8 = [&unk_1F1911800 arrayByAddingObjectsFromArray:px_otherAlbumsSubtypes_subtypes];
    v9 = px_otherAlbumsSubtypes_subtypes;
    px_otherAlbumsSubtypes_subtypes = v8;
  }

  v10 = PLUserSmartAlbumGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = px_otherAlbumsSubtypes_subtypes;
    v11 = v13;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Other Albums Subtypes to Fetch: %@", &v12, 0x16u);
  }
}

void __65__PHAssetCollection_PhotosUICore__px_mediaTypeSmartAlbumSubtypes__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = px_mediaTypeSmartAlbumSubtypes_subtypes;
  px_mediaTypeSmartAlbumSubtypes_subtypes = &unk_1F19117A0;

  v2 = PLUserSmartAlbumGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = objc_opt_class();
    v6 = 2112;
    v7 = &unk_1F19117A0;
    v3 = v5;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@> Media Smart Albums Subtypes to Fetch: %@", &v4, 0x16u);
  }
}

void __70__PHAssetCollection_PhotosUICore__px_albumNameForTransientIdentifier___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXPhotosVirtualCollection";
  v2[1] = @"PXEventsVirtualCollection";
  v3[0] = @"library";
  v3[1] = @"event";
  v2[2] = @"PXMemoriesVirtualCollection";
  v2[3] = @"PXTripsVirtualCollection";
  v3[2] = @"memory";
  v3[3] = @"trip";
  v2[4] = @"PXPeopleVirtualCollection";
  v2[5] = @"PXCompleteMyMomentVirtualCollection";
  v3[4] = @"people";
  v3[5] = @"icloud-links";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = px_albumNameForTransientIdentifier__albumNames;
  px_albumNameForTransientIdentifier__albumNames = v0;
}

@end