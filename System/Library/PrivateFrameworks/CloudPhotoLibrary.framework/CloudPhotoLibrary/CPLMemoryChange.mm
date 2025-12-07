@interface CPLMemoryChange
+ (id)_createTestMemoryWithAssets:(id)assets;
- (CPLMemoryChange)initWithCoder:(id)coder;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector;
- (id)propertiesDescription;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
@end

@implementation CPLMemoryChange

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector
{
  if (sel_notificationState == selector)
  {
    v5 = &__block_literal_global_4605;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    if (sel_blacklistedFeature == selector)
    {
      v5 = MEMORY[0x1E128EBA0](_CPLDefaultValueObjectNil, a2);
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CPLMemoryChange;
      v5 = [(CPLRecordChange *)&v7 checkDefaultValueBlockForPropertyWithSelector:?];
    }
  }

  return v5;
}

- (id)propertiesDescription
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu assets", -[CPLMemoryAssetList assetsCount](self->_assetList, "assetsCount")];
  v4 = [v3 stringByAppendingFormat:@" %lu custom user assets", -[CPLMemoryAssetList assetsCount](self->_customUserAssetList, "assetsCount")];

  return v4;
}

+ (id)_createTestMemoryWithAssets:(id)assets
{
  v31 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  scopedIdentifier = [firstObject scopedIdentifier];
  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  v7 = scopeIdentifier;
  if (scopeIdentifier)
  {
    v8 = scopeIdentifier;
  }

  else
  {
    v8 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  v9 = v8;

  v25 = v9;
  v10 = [(CPLRecordChange *)CPLMemoryChange newRecordInScopeWithIdentifier:v9];
  [v10 setTitle:@"Test Memory Title"];
  [v10 setSubtitle:@"Test Memory Subtitle"];
  [v10 setCategory:301];
  date = [MEMORY[0x1E695DF00] date];
  [v10 setCreationDate:date];

  v12 = [@"graphData" dataUsingEncoding:4];
  [v10 setGraphData:v12];

  [v10 setGraphVersion:1];
  v13 = [@"movieData" dataUsingEncoding:4];
  [v10 setMovieData:v13];

  [v10 setScore:10.0];
  [v10 setNotificationState:1];
  [v10 setPlayCount:10];
  [v10 setShareCount:10];
  [v10 setViewCount:10];
  v14 = objc_alloc_init(CPLMemoryAssetList);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = assetsCopy;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = objc_alloc_init(CPLMemoryAssetFlag);
        [(CPLMemoryAssetFlag *)v21 setIsRepresentative:1];
        [(CPLMemoryAssetFlag *)v21 setIsCurated:1];
        [(CPLMemoryAssetFlag *)v21 setIsMovieCurated:0];
        [(CPLMemoryAssetFlag *)v21 setIsKeyAsset:0];
        v22 = objc_alloc_init(CPLMemoryAsset);
        _unscopedIdentifier = [v20 _unscopedIdentifier];
        [(CPLMemoryAsset *)v22 setAssetIdentifier:_unscopedIdentifier];

        [(CPLMemoryAsset *)v22 setAssetFlag:v21];
        [(CPLMemoryAssetList *)v14 addAsset:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  [v10 setAssetList:v14];

  return v10;
}

- (CPLMemoryChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPLMemoryChange;
  v5 = [(CPLRecordChange *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5 && !-[CPLMemoryChange userActionOptions](v5, "userActionOptions") && [coderCopy decodeBoolForKey:@"userCreated"])
  {
    if (initWithCoder__onceToken_91 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_91, &__block_literal_global_93);
    }

    [(CPLMemoryChange *)v6 setUserActionOptions:1];
  }

  return v6;
}

void __46__CPLMemoryChange_CPLNSCoding__initWithCoder___block_invoke()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1DC05A000, v0, OS_LOG_TYPE_DEFAULT, "Storage might contain old serialized userCreated values", v1, 2u);
    }
  }
}

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v49.receiver = self;
  v49.super_class = CPLMemoryChange;
  v7 = [(CPLRecordChange *)&v49 translateToClientChangeUsingIDMapping:mappingCopy error:error];
  v8 = v7;
  if (v7)
  {
    v40 = v7;
    [v7 assetList];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = v48 = 0u;
    assets = [v39 assets];
    v10 = [assets countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(assets);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          assetIdentifier = [v14 assetIdentifier];
          if (assetIdentifier)
          {
            v16 = assetIdentifier;
            v17 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:scopedIdentifier identifier:v16];

            if (v19)
            {
              v20 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v19];
              v21 = v20;
              if (v20)
              {
                identifier = [v20 identifier];
                [v14 setAssetIdentifier:identifier];
              }
            }
          }
        }

        v11 = [assets countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v11);
    }

    [v40 customUserAssetList];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = v44 = 0u;
    assets2 = [v38 assets];
    v24 = [assets2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(assets2);
          }

          v28 = *(*(&v41 + 1) + 8 * j);
          assetIdentifier2 = [v28 assetIdentifier];
          if (assetIdentifier2)
          {
            v30 = assetIdentifier2;
            v31 = [CPLScopedIdentifier alloc];
            scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v30];

            if (v33)
            {
              v34 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v33];
              v35 = v34;
              if (v34)
              {
                identifier2 = [v34 identifier];
                [v28 setAssetIdentifier:identifier2];
              }
            }
          }
        }

        v25 = [assets2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v25);
    }

    v8 = v40;
  }

  return v8;
}

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v50.receiver = self;
  v50.super_class = CPLMemoryChange;
  v7 = [(CPLRecordChange *)&v50 translateToCloudChangeUsingIDMapping:mappingCopy error:error];
  v8 = v7;
  if (v7)
  {
    v40 = v7;
    [v7 assetList];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v39 = v49 = 0u;
    assets = [v39 assets];
    v10 = [assets countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(assets);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          assetIdentifier = [v14 assetIdentifier];
          if (assetIdentifier)
          {
            v16 = assetIdentifier;
            v17 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:scopedIdentifier identifier:v16];

            if (v19)
            {
              v45 = 0;
              v20 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:&v45];
              v21 = v20;
              if (v20)
              {
                identifier = [v20 identifier];
                [v14 setAssetIdentifier:identifier];
              }
            }
          }
        }

        v11 = [assets countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v11);
    }

    [v40 customUserAssetList];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = v44 = 0u;
    assets2 = [v38 assets];
    v24 = [assets2 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(assets2);
          }

          v28 = *(*(&v41 + 1) + 8 * j);
          assetIdentifier2 = [v28 assetIdentifier];
          if (assetIdentifier2)
          {
            v30 = assetIdentifier2;
            v31 = [CPLScopedIdentifier alloc];
            scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v30];

            if (v33)
            {
              v45 = 0;
              v34 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v33 isFinal:&v45];
              v35 = v34;
              if (v34)
              {
                identifier2 = [v34 identifier];
                [v28 setAssetIdentifier:identifier2];
              }
            }
          }
        }

        v25 = [assets2 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v25);
    }

    v8 = v40;
  }

  return v8;
}

- (id)scopedIdentifiersForMapping
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v37.receiver = self;
  v37.super_class = CPLMemoryChange;
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v37 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  [(CPLMemoryChange *)self assetList];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = v36 = 0u;
  assets = [v28 assets];
  v7 = [assets countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(assets);
        }

        assetIdentifier = [*(*(&v33 + 1) + 8 * i) assetIdentifier];
        if (assetIdentifier)
        {
          v12 = assetIdentifier;
          v13 = [CPLScopedIdentifier alloc];
          scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
          v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:scopedIdentifier identifier:v12];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }
      }

      v8 = [assets countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  [(CPLMemoryChange *)self customUserAssetList];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v32 = 0u;
  assets2 = [v27 assets];
  v17 = [assets2 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(assets2);
        }

        assetIdentifier2 = [*(*(&v29 + 1) + 8 * j) assetIdentifier];
        if (assetIdentifier2)
        {
          v22 = assetIdentifier2;
          v23 = [CPLScopedIdentifier alloc];
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v22];

          if (v25)
          {
            [v5 addObject:v25];
          }
        }
      }

      v18 = [assets2 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v18);
  }

  return v5;
}

@end