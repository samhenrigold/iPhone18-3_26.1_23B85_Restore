@interface AEProgressViewModel
- (AEProgressViewModel)initWithDataSourceManager:(id)manager;
- (id)_createSnapshot;
- (void)_setProgressByAsset:(id)asset;
- (void)cancelProgressForAssetUUIDs:(id)ds;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setProgress:(id)progress forAssetReference:(id)reference;
@end

@implementation AEProgressViewModel

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  v40 = *MEMORY[0x277D85DE8];
  observableCopy = observable;
  if ((changeCopy & 1) != 0 && AEProgressViewModelDataSourceManagerObserverContext == context)
  {
    v29 = observableCopy;
    dataSource = [observableCopy dataSource];
    selfCopy = self;
    _progressByAsset = [(AEProgressViewModel *)self _progressByAsset];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys = [_progressByAsset allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        v16 = 0;
        v30 = v14;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = *(*(&v33 + 1) + 8 * v16);
          v18 = [dataSource assetReferenceForAssetReference:v17];
          if (v18)
          {
            v19 = [_progressByAsset objectForKey:v17];
            [dictionary setObject:v19 forKey:v18];
          }

          else
          {
            v19 = PLAssetExplorerGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              asset = [v17 asset];
              [asset uuid];
              v21 = v15;
              v22 = dataSource;
              v23 = allKeys;
              v24 = dictionary;
              v26 = v25 = _progressByAsset;
              *buf = 138543362;
              v38 = v26;
              _os_log_impl(&dword_2411DE000, v19, OS_LOG_TYPE_DEFAULT, "Forgetting in-flight progress for asset %{public}@", buf, 0xCu);

              _progressByAsset = v25;
              dictionary = v24;
              allKeys = v23;
              dataSource = v22;
              v15 = v21;
              v14 = v30;
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [allKeys countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __52__AEProgressViewModel_observable_didChange_context___block_invoke;
    v31[3] = &unk_278CC77A8;
    v31[4] = selfCopy;
    v32 = dictionary;
    v27 = dictionary;
    [(AEProgressViewModel *)selfCopy performChanges:v31];

    observableCopy = v29;
  }
}

- (void)cancelProgressForAssetUUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    [(AEProgressViewModel *)self _progressByAsset];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          asset = [v11 asset];
          uuid = [asset uuid];

          if ([dsCopy containsObject:uuid])
          {
            v14 = [v5 objectForKey:v11];
            [v14 cancel];
            ++v8;
            v15 = [dsCopy count];

            if (v15 == v8)
            {

              goto LABEL_13;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (void)setProgress:(id)progress forAssetReference:(id)reference
{
  progressCopy = progress;
  referenceCopy = reference;
  _dataSourceManager = [(AEProgressViewModel *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];
  v10 = [dataSource assetReferenceForAssetReference:referenceCopy];

  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__AEProgressViewModel_setProgress_forAssetReference___block_invoke;
    v11[3] = &unk_278CC7780;
    v11[4] = self;
    v12 = progressCopy;
    v13 = v10;
    [(AEProgressViewModel *)self performChanges:v11];
  }
}

void __53__AEProgressViewModel_setProgress_forAssetReference___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _progressByAsset];
  v4 = [v2 mutableCopy];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 setObject:v3 forKey:*(a1 + 48)];
  }

  else
  {
    [v4 removeObjectForKey:*(a1 + 48)];
  }

  [*(a1 + 32) _setProgressByAsset:v4];
}

- (id)_createSnapshot
{
  v28 = *MEMORY[0x277D85DE8];
  _progressByAsset = [(AEProgressViewModel *)self _progressByAsset];
  if ([_progressByAsset count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    keyEnumerator = [_progressByAsset keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          _dataSourceManager = [(AEProgressViewModel *)self _dataSourceManager];
          dataSource = [_dataSourceManager dataSource];
          v13 = dataSource;
          if (dataSource)
          {
            objc_msgSend_indexPathForAssetReference_(dataSource);
          }

          else
          {
            v21 = 0u;
            v22 = 0u;
          }

          v14 = PXIndexPathFromSimpleIndexPath();
          v15 = [(AEProgressViewModel *)self _progressByAsset:v21];
          v16 = [v15 objectForKey:v10];

          [dictionary setObject:v16 forKey:v14];
        }

        v7 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    dictionary = 0;
  }

  _dataSourceManager2 = [(AEProgressViewModel *)self _dataSourceManager];
  dataSource2 = [_dataSourceManager2 dataSource];
  v19 = -[AEProgressViewModelSnapshot initWithProgressByIndexPath:dataSourceIdenfitier:]([AEProgressViewModelSnapshot alloc], "initWithProgressByIndexPath:dataSourceIdenfitier:", dictionary, [dataSource2 identifier]);

  return v19;
}

- (void)_setProgressByAsset:(id)asset
{
  assetCopy = asset;
  if (self->__progressByAsset != assetCopy)
  {
    v8 = assetCopy;
    objc_storeStrong(&self->__progressByAsset, asset);
    _createSnapshot = [(AEProgressViewModel *)self _createSnapshot];
    currentSnapshot = self->_currentSnapshot;
    self->_currentSnapshot = _createSnapshot;

    [(AEProgressViewModel *)self signalChange:1];
    assetCopy = v8;
  }
}

- (AEProgressViewModel)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = AEProgressViewModel;
  v6 = [(AEProgressViewModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__dataSourceManager, manager);
    [managerCopy registerChangeObserver:v7 context:AEProgressViewModelDataSourceManagerObserverContext];
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    progressByAsset = v7->__progressByAsset;
    v7->__progressByAsset = dictionary;
  }

  return v7;
}

@end