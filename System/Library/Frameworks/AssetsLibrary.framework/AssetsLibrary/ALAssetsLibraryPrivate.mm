@interface ALAssetsLibraryPrivate
- (ALAssetsLibraryPrivate)initWithAssetsLibrary:(id)library;
- (PLPhotoLibrary)photoLibrary;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)change;
- (void)registerAlbum:(id)album assetGroupPrivate:(id)private;
@end

@implementation ALAssetsLibraryPrivate

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(PLPhotoLibrary *)self->_photoLibrary performBlockAndWait:&__block_literal_global_159];
  [(ALAssetsLibraryPrivate *)self setAssetsLibrary:0];

  self->_assetGroupInternals = 0;
  self->_photoLibrary = 0;

  v3.receiver = self;
  v3.super_class = ALAssetsLibraryPrivate;
  [(ALAssetsLibraryPrivate *)&v3 dealloc];
}

- (void)registerAlbum:(id)album assetGroupPrivate:(id)private
{
  if (objc_opt_respondsToSelector())
  {
    photoLibrary = [(ALAssetsLibraryPrivate *)self photoLibrary];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ALAssetsLibraryPrivate_registerAlbum_assetGroupPrivate___block_invoke;
    v9[3] = &unk_278A07878;
    v9[4] = self;
    v9[5] = album;
    [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v9];
  }

  assetGroupInternals = self->_assetGroupInternals;
  objc_sync_enter(assetGroupInternals);
  [(NSHashTable *)self->_assetGroupInternals addObject:private];
  objc_sync_exit(assetGroupInternals);
}

uint64_t __58__ALAssetsLibraryPrivate_registerAlbum_assetGroupPrivate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) groupURL];
  v4 = [*(a1 + 40) objectID];

  return [v2 setObject:v3 forKey:v4];
}

- (void)photoLibraryDidChange:(id)change
{
  v66 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  if (userInfo)
  {
    v5 = userInfo;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v39 = [MEMORY[0x277CBEB58] set];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v37 = v5;
    v6 = [v5 objectForKey:@"insertedAssetGroups"];
    v7 = [v6 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v7)
    {
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(v6);
          }

          groupURL = [*(*(&v57 + 1) + 8 * i) groupURL];
          if (groupURL)
          {
            [v39 addObject:groupURL];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x277CBEB58] set];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = [v37 objectForKey:@"updatedAssetGroups"];
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v13)
    {
      v14 = *v54;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v53 + 1) + 8 * j);
          groupURL2 = [v16 groupURL];
          if (groupURL2)
          {
            [v11 addObject:groupURL2];
          }

          if ([v16 conformsToProtocol:&unk_2849B1E10])
          {
            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __48__ALAssetsLibraryPrivate_photoLibraryDidChange___block_invoke;
            v52[3] = &unk_278A07850;
            v52[4] = v11;
            [v16 enumerateDerivedAlbums:v52];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v13);
    }

    v18 = [MEMORY[0x277CBEB58] set];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = [v37 objectForKey:@"deletedAssetGroups"];
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
    if (v20)
    {
      v21 = *v49;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v48 + 1) + 8 * k);
          v24 = -[NSMutableDictionary objectForKey:](self->_groupURLSByAlbumOID, "objectForKey:", [v23 objectID]);
          if (v24)
          {
            [v18 addObject:v24];
            -[NSMutableDictionary removeObjectForKey:](self->_groupURLSByAlbumOID, "removeObjectForKey:", [v23 objectID]);
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v20);
    }

    v25 = [MEMORY[0x277CBEB58] set];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = [v37 objectForKey:@"updatedAssets"];
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v62 count:16];
    if (v27)
    {
      v28 = *v45;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v26);
          }

          assetURL = [*(*(&v44 + 1) + 8 * m) assetURL];
          if (assetURL)
          {
            [v25 addObject:assetURL];
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v44 objects:v62 count:16];
      }

      while (v27);
    }

    if ([v39 count])
    {
      [dictionary setObject:v39 forKey:@"ALAssetLibraryInsertedAssetGroupsKey"];
    }

    if ([v11 count])
    {
      [dictionary setObject:v11 forKey:@"ALAssetLibraryUpdatedAssetGroupsKey"];
    }

    if ([v18 count])
    {
      [dictionary setObject:v18 forKey:@"ALAssetLibraryDeletedAssetGroupsKey"];
    }

    if ([v25 count])
    {
      [dictionary setObject:v25 forKey:@"ALAssetLibraryUpdatedAssetsKey"];
    }

    userInfo = dictionary;
  }

  v31 = userInfo;
  if ([userInfo count])
  {
    +[ALAssetRepresentationPrivate _clearFileDescriptorQueue];
    if ([objc_msgSend(v31 objectForKey:{@"ALAssetLibraryUpdatedAssetGroupsKey", "count"}])
    {
      assetGroupInternals = self->_assetGroupInternals;
      objc_sync_enter(assetGroupInternals);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = self->_assetGroupInternals;
      v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v40 objects:v61 count:16];
      if (v34)
      {
        v35 = *v41;
        do
        {
          for (n = 0; n != v34; ++n)
          {
            if (*v41 != v35)
            {
              objc_enumerationMutation(v33);
            }

            [*(*(&v40 + 1) + 8 * n) libraryDidChange];
          }

          v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v40 objects:v61 count:16];
        }

        while (v34);
      }

      objc_sync_exit(assetGroupInternals);
    }
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

uint64_t __48__ALAssetsLibraryPrivate_photoLibraryDidChange___block_invoke(uint64_t a1, void *a2)
{
  [a2 mappedDataSourceChanged:0 remoteNotificationData:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [a2 groupURL];
    if (result)
    {
      v5 = result;
      v6 = *(a1 + 32);

      return [v6 addObject:v5];
    }
  }

  return result;
}

- (PLPhotoLibrary)photoLibrary
{
  objc_sync_enter(self);
  if (!self->_photoLibrary)
  {
    self->_photoLibrary = +[ALAssetsLibrary _library];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_photoLibraryDidChange_ name:*MEMORY[0x277D3ADC8] object:self->_photoLibrary];
  }

  objc_sync_exit(self);
  return self->_photoLibrary;
}

- (ALAssetsLibraryPrivate)initWithAssetsLibrary:(id)library
{
  v7.receiver = self;
  v7.super_class = ALAssetsLibraryPrivate;
  v4 = [(ALAssetsLibraryPrivate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ALAssetsLibraryPrivate *)v4 setAssetsLibrary:library];
    v5->_assetGroupInternals = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5->_groupURLSByAlbumOID = objc_opt_new();
    v5->_isValid = 1;
  }

  return v5;
}

@end