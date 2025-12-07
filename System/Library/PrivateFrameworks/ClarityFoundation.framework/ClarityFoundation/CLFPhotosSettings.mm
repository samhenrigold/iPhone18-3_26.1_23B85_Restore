@interface CLFPhotosSettings
- (id)selectedSharedAlbumCloudIdentifiers;
- (void)_migrateSelectedSharedAlbumNamesIfNecessary;
- (void)_saveSelectedSharedAlbumCloudIdentifiersForNames:(id)names;
@end

@implementation CLFPhotosSettings

- (id)selectedSharedAlbumCloudIdentifiers
{
  [(CLFPhotosSettings *)self _migrateSelectedSharedAlbumNamesIfNecessary];
  v5.receiver = self;
  v5.super_class = CLFPhotosSettings;
  selectedSharedAlbumCloudIdentifiers = [(CLFPhotosSettings_GeneratedCode *)&v5 selectedSharedAlbumCloudIdentifiers];

  return selectedSharedAlbumCloudIdentifiers;
}

- (void)_migrateSelectedSharedAlbumNamesIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(AXBaseSettings *)self objectValueForPreferenceKey:@"SelectedSharedAlbums" ofClass:objc_opt_class() defaultValue:0];
  if ([v3 count])
  {
    v4 = +[CLFLog commonLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [v3 count];
      _os_log_impl(&dword_1E115B000, v4, OS_LOG_TYPE_DEFAULT, "Migrating %lu shared photo album name(s).", &v6, 0xCu);
    }

    [(CLFPhotosSettings *)self _saveSelectedSharedAlbumCloudIdentifiersForNames:v3];
LABEL_9:
    [(AXBaseSettings *)self setValue:0 forPreferenceKey:@"SelectedSharedAlbums"];
    goto LABEL_10;
  }

  if (v3)
  {
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1E115B000, v5, OS_LOG_TYPE_DEFAULT, "Removing empty shared photo album names.", &v6, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_saveSelectedSharedAlbumCloudIdentifiersForNames:(id)names
{
  v52 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v5 = getPHAssetCollectionClass_softClass;
  v46 = getPHAssetCollectionClass_softClass;
  if (!getPHAssetCollectionClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPHAssetCollectionClass_block_invoke;
    v50 = &unk_1E8704E78;
    v51 = &v43;
    __getPHAssetCollectionClass_block_invoke(buf);
    v5 = v44[3];
  }

  v6 = v5;
  _Block_object_dispose(&v43, 8);
  v7 = [v5 fetchAssetCollectionsWithType:1 subtype:101 options:0];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __81__CLFPhotosSettings_Migration___saveSelectedSharedAlbumCloudIdentifiersForNames___block_invoke;
  v41[3] = &unk_1E8704E50;
  v8 = dictionary;
  v42 = v8;
  [v7 enumerateObjectsUsingBlock:v41];

  array = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = namesCopy;
  v9 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v9)
  {
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v8 objectForKeyedSubscript:v12];
        if ([v13 length])
        {
          [array addObject:v13];
        }

        else
        {
          v14 = +[CLFLog commonLog];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            *&buf[4] = v12;
            _os_log_error_impl(&dword_1E115B000, v14, OS_LOG_TYPE_ERROR, "Unable to get local identifier for shared album name: %{private}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v9);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  if ([array count])
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v15 = getPHPhotoLibraryClass_softClass;
    v46 = getPHPhotoLibraryClass_softClass;
    if (!getPHPhotoLibraryClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPHPhotoLibraryClass_block_invoke;
      v50 = &unk_1E8704E78;
      v51 = &v43;
      __getPHPhotoLibraryClass_block_invoke(buf);
      v15 = v44[3];
    }

    v16 = v15;
    _Block_object_dispose(&v43, 8);
    sharedPhotoLibrary = [v15 sharedPhotoLibrary];
    v18 = [sharedPhotoLibrary cloudIdentifierMappingsForLocalIdentifiers:array];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v20)
    {
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v33 + 1) + 8 * j);
          v24 = [v19 objectForKeyedSubscript:v23];
          cloudIdentifier = [v24 cloudIdentifier];
          stringValue = [cloudIdentifier stringValue];

          if ([stringValue length])
          {
            [array2 addObject:stringValue];
          }

          else
          {
            v27 = +[CLFLog commonLog];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              error = [v24 error];
              *buf = 138478083;
              *&buf[4] = v23;
              *&buf[12] = 2112;
              *&buf[14] = error;
              _os_log_error_impl(&dword_1E115B000, v27, OS_LOG_TYPE_ERROR, "Unable to get cloud identifier for shared album with local identifier: %{private}@, error: %@", buf, 0x16u);
            }
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v20);
    }
  }

  [(CLFPhotosSettings_GeneratedCode *)self setSelectedSharedAlbumCloudIdentifiers:array2];
}

void __81__CLFPhotosSettings_Migration___saveSelectedSharedAlbumCloudIdentifiersForNames___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 localizedTitle];
  if ([v3 length])
  {
    v4 = [v5 localIdentifier];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

uint64_t __49__CLFPhotosSettings_GeneratedCode_sharedInstance__block_invoke()
{
  sharedInstance_SharedSettings_4 = objc_alloc_init(CLFPhotosSettings);

  return MEMORY[0x1EEE66BB8]();
}

@end