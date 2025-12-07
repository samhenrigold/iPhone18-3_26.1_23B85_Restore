@interface PXZoomableInlineHeadersDataSourceManager
+ (BOOL)supportsAssetsDataSourceManager:(id)manager;
- (PXSimpleIndexPath)sectionIndexPath;
- (PXZoomableInlineHeadersDataSourceManager)initWithAssetsDataSourceManager:(id)manager indexPath:(PXSimpleIndexPath *)path;
- (id)_prepareQueue_createMetaDataStoreForAlbumWithDataSource:(id)source;
- (id)dataSourceForLevel:(unint64_t)level;
- (void)_didFinishBackgroundPreparationWithResult:(id)result forDataSource:(id)source;
- (void)_prepareInBackgroundWithDataSource:(id)source;
- (void)_prepareQueue_prepareInBackroundWithDataSource:(id)source;
- (void)_updateDataSource;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXZoomableInlineHeadersDataSourceManager

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXZoomableInlineHeadersDataSourceManager;
  [(PXZoomableInlineHeadersDataSourceManager *)&v4 didPerformChanges];
  updater = [(PXZoomableInlineHeadersDataSourceManager *)self updater];
  [updater updateIfNeeded];
}

- (void)_updateDataSource
{
  dataSource = [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager dataSource];
  v5 = dataSource;
  if (self->_metaDataStore)
  {
    containsAnyItems = [dataSource containsAnyItems];
    metaDataStore = self->_metaDataStore;
    if (containsAnyItems)
    {
      v42 = a2;
      dataSource2 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)metaDataStore dataSource];
      changeHistory = [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager changeHistory];
      identifier = [dataSource2 identifier];
      identifier2 = [v5 identifier];
      v12 = identifier;
      v13 = dataSource2;
      v14 = [changeHistory changeDetailsFromDataSourceIdentifier:v12 toDataSourceIdentifier:identifier2];

      v45 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)self->_metaDataStore updateWithDataSourceAfterChanges:v5 changeDetails:v14];
      v50 = 0;
      p_sectionIndexPath = &self->_sectionIndexPath;
      section = self->_sectionIndexPath.section;
      identifier3 = [v13 identifier];
      v17 = MEMORY[0x277D3CF78];
      v46 = v14;
      v44 = v13;
      if (identifier3 == self->_sectionIndexPath.dataSourceIdentifier)
      {
        v18 = identifier3;
        v19 = MEMORY[0x277D3CF78];
        v20 = self->_sectionIndexPath.section;
        objc_msgSend_indexPathAfterApplyingChanges_toIndexPath_hasIncrementalChanges_objectChanged_(MEMORY[0x277D3CDD0]);
        v21 = v48;
        *&p_sectionIndexPath->dataSourceIdentifier = v47;
        *&self->_sectionIndexPath.item = v21;
      }

      else
      {
        changeHistory2 = [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager changeHistory];
        v23 = [changeHistory2 changeDetailsFromDataSourceIdentifier:p_sectionIndexPath->dataSourceIdentifier toDataSourceIdentifier:{objc_msgSend(v13, "identifier")}];

        objc_msgSend_indexPathAfterRevertingChanges_fromIndexPath_hasIncrementalChanges_objectChanged_(MEMORY[0x277D3CDD0]);
        v20 = v47.i64[1];
        v18 = v47.i64[0];
        v49 = v48;
        v19 = v17;
        if (p_sectionIndexPath->dataSourceIdentifier == *v17)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v42 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:119 description:@"IndexPath after applying changes is null"];
        }

        if (v50 == 1)
        {
          objc_msgSend_indexPathAfterApplyingChanges_toIndexPath_hasIncrementalChanges_objectChanged_(MEMORY[0x277D3CDD0]);
          v24 = v48;
          *&p_sectionIndexPath->dataSourceIdentifier = v47;
          *&self->_sectionIndexPath.item = v24;
        }
      }

      if (v50 == 1)
      {
        dataSourceIdentifier = p_sectionIndexPath->dataSourceIdentifier;
      }

      else
      {
        dataSourceIdentifier = [v5 identifier];
        p_sectionIndexPath->dataSourceIdentifier = dataSourceIdentifier;
        self->_sectionIndexPath.section = section;
        v26.f64[0] = NAN;
        v26.f64[1] = NAN;
        *&self->_sectionIndexPath.item = vnegq_f64(v26);
      }

      v27 = *v19;
      if (dataSourceIdentifier == *v19)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:v42 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:130 description:@"current IndexPath is null"];
      }

      if (v18 == v27)
      {
        v20 = self->_sectionIndexPath.section;
      }

      fetchResultInfoProvider = [v44 fetchResultInfoProvider];
      v47.i64[0] = [v44 identifier];
      v47.i64[1] = v20;
      v29.f64[0] = NAN;
      v29.f64[1] = NAN;
      v48 = vnegq_f64(v29);
      v30 = [fetchResultInfoProvider sortDescriptorsForFetchResultAtSectionIndexPath:&v47];

      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&p_sectionIndexPath->dataSourceIdentifier, *MEMORY[0x277D3CFD8]), vceqq_s64(*&self->_sectionIndexPath.item, *(MEMORY[0x277D3CFD8] + 16))))))
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:v42 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:137 description:@"After-state index path is null. This indicates an update was missed."];
      }

      fetchResultInfoProvider2 = [v5 fetchResultInfoProvider];
      v32 = *&self->_sectionIndexPath.item;
      v47 = *&p_sectionIndexPath->dataSourceIdentifier;
      v48 = v32;
      v33 = [fetchResultInfoProvider2 sortDescriptorsForFetchResultAtSectionIndexPath:&v47];

      if (v30 == v33)
      {
        v34 = 1;
      }

      else
      {
        v34 = [v30 isEqual:v33];
      }

      if ((v45 & v34 & 1) == 0 && !self->_isPreparingMetadataInBackground)
      {
        [(PXZoomableInlineHeadersDataSourceManager *)self _prepareInBackgroundWithDataSource:v5];
      }
    }

    else
    {
      self->_metaDataStore = 0;
    }
  }

  else if (!self->_isPreparingMetadataInBackground && [dataSource containsAnyItems] && objc_msgSend(v5, "areAllSectionsConsideredAccurate"))
  {
    [(PXZoomableInlineHeadersDataSourceManager *)self _prepareInBackgroundWithDataSource:v5];
  }

  v35 = [[PXZoomableInlineHeadersDataSource alloc] initWithAssetsDataSource:v5 level:0 metaDataStore:self->_metaDataStore];
  yearsDataSource = self->_yearsDataSource;
  self->_yearsDataSource = v35;

  v37 = [[PXZoomableInlineHeadersDataSource alloc] initWithAssetsDataSource:v5 level:1 metaDataStore:self->_metaDataStore];
  monthsDataSource = self->_monthsDataSource;
  self->_monthsDataSource = v37;

  [(PXSectionedDataSourceManager *)self setDataSource:self->_monthsDataSource changeDetails:0];
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[6].section;
  *&retstr->dataSourceIdentifier = *&self[5].subitem;
  *&retstr->item = v3;
  return self;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXAssetsDataSourceManagerObserverContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:280 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__PXZoomableInlineHeadersDataSourceManager_observable_didChange_context___block_invoke;
    v12[3] = &unk_278297E50;
    v12[4] = self;
    [(PXZoomableInlineHeadersDataSourceManager *)self performChanges:v12];
  }
}

- (id)_prepareQueue_createMetaDataStoreForAlbumWithDataSource:(id)source
{
  v35 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [[PXZoomableInlineHeaderSectionInfoMetaDataStore alloc] initWithDataSource:sourceCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  fetchResultInfoProvider = [sourceCopy fetchResultInfoProvider];
  if (!fetchResultInfoProvider)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_ERROR, "%@ expects that the data source vends fetchResultInfoProviders", buf, 0xCu);
    }
  }

  identifier = [sourceCopy identifier];
  *&buf[8] = xmmword_21AC7D620;
  *buf = identifier;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  if (([fetchResultInfoProvider sortOrderForFetchResultAtSectionIndexPath:buf] - 1) <= 1)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke;
    v29[3] = &unk_278297EC8;
    v10 = currentCalendar;
    v30 = v10;
    *&buf[8] = xmmword_21AC7D620;
    *buf = identifier;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [fetchResultInfoProvider fetchAssetSortDatesForFetchResultAtSectionIndexPath:buf dateRangeEliminationBlock:v29];

    if (v11)
    {
      sortDescriptor = [v11 sortDescriptor];
      ascending = [sortDescriptor ascending];

      dateByIndex = [v11 dateByIndex];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4010000000;
      v32 = &unk_21AC883FE;
      v33 = 0u;
      v34 = 0u;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x4010000000;
      v26[3] = &unk_21AC883FE;
      v27 = 0u;
      v28 = 0u;
      fetchedIndexes = [v11 fetchedIndexes];
      if (ascending)
      {
        v16 = &__block_literal_global_2995;
      }

      else
      {
        v16 = &__block_literal_global_38_2996;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke_4;
      v19[3] = &unk_278297F10;
      v17 = dateByIndex;
      v20 = v17;
      v23 = v16;
      v24 = buf;
      v21 = v10;
      v22 = v5;
      v25 = v26;
      [fetchedIndexes enumerateIndexesUsingBlock:v19];

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  return v5;
}

BOOL __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 components:12 fromDate:a2];
  v8 = [*(a1 + 32) components:12 fromDate:v6];

  v9 = [v7 year];
  if (v9 == [v8 year])
  {
    v10 = [v7 month];
    v11 = v10 == [v8 month];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [*(a1 + 40) components:12 fromDate:v6];
    v8 = [v7 year];
    v9 = [v7 month];
    if (!*(*(*(a1 + 64) + 8) + 40) || (*(*(a1 + 56) + 16))())
    {
      [v6 timeIntervalSinceReferenceDate];
      v10 = *(*(a1 + 64) + 8);
      v10[4] = a2;
      v10[5] = v8;
      v10[6] = v9;
      v10[7] = v11;
      v12 = *(a1 + 48);
      v13 = *(*(a1 + 64) + 8);
      v14 = *(v13 + 48);
      v20 = *(v13 + 32);
      v21 = v14;
      [v12 addSectionInfo:&v20 forLevel:0];
    }

    if (!*(*(*(a1 + 72) + 8) + 40) || ((*(*(a1 + 56) + 16))() & 1) != 0 || (*(*(a1 + 56) + 16))())
    {
      [v6 timeIntervalSinceReferenceDate];
      v15 = *(*(a1 + 72) + 8);
      v15[4] = a2;
      v15[5] = v8;
      v15[6] = v9;
      v15[7] = v16;
      v17 = *(a1 + 48);
      v18 = *(*(a1 + 72) + 8);
      v19 = *(v18 + 48);
      v20 = *(v18 + 32);
      v21 = v19;
      [v17 addSectionInfo:&v20 forLevel:1];
    }
  }
}

- (void)_didFinishBackgroundPreparationWithResult:(id)result forDataSource:(id)source
{
  resultCopy = result;
  if (!self->_isPreparingMetadataInBackground)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"_isPreparingMetadataInBackground"}];
  }

  self->_isPreparingMetadataInBackground = 0;
  metaDataStore = self->_metaDataStore;
  self->_metaDataStore = resultCopy;
  v8 = resultCopy;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__PXZoomableInlineHeadersDataSourceManager__didFinishBackgroundPreparationWithResult_forDataSource___block_invoke;
  v10[3] = &unk_278297E50;
  v10[4] = self;
  [(PXZoomableInlineHeadersDataSourceManager *)self performChanges:v10];
}

- (void)_prepareQueue_prepareInBackroundWithDataSource:(id)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_prepareQueue);
  v5 = [(PXZoomableInlineHeadersDataSourceManager *)self _prepareQueue_createMetaDataStoreForAlbumWithDataSource:sourceCopy];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__PXZoomableInlineHeadersDataSourceManager__prepareQueue_prepareInBackroundWithDataSource___block_invoke;
  v8[3] = &unk_278297EA0;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = sourceCopy;
  v6 = sourceCopy;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __91__PXZoomableInlineHeadersDataSourceManager__prepareQueue_prepareInBackroundWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didFinishBackgroundPreparationWithResult:*(a1 + 32) forDataSource:*(a1 + 40)];
}

- (void)_prepareInBackgroundWithDataSource:(id)source
{
  sourceCopy = source;
  if (self->_isPreparingMetadataInBackground)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"!_isPreparingMetadataInBackground"}];
  }

  self->_isPreparingMetadataInBackground = 1;
  objc_initWeak(&location, self);
  mEMORY[0x277D3CD90] = [MEMORY[0x277D3CD90] sharedScheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke;
  v9[3] = &unk_278297EA0;
  v9[4] = self;
  objc_copyWeak(&v11, &location);
  v7 = sourceCopy;
  v10 = v7;
  [mEMORY[0x277D3CD90] scheduleTaskAfterCATransactionCommits:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke_2;
  v3[3] = &unk_278297E78;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _prepareQueue_prepareInBackroundWithDataSource:*(a1 + 32)];
}

- (id)dataSourceForLevel:(unint64_t)level
{
  if (level)
  {
    if (level != 1)
    {
      v15 = v4;
      v16 = v3;
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:84 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = &OBJC_IVAR___PXZoomableInlineHeadersDataSourceManager__monthsDataSource;
  }

  else
  {
    v9 = &OBJC_IVAR___PXZoomableInlineHeadersDataSourceManager__yearsDataSource;
  }

  v10 = *(&self->super.super.super.isa + *v9);

  return v10;
}

- (PXZoomableInlineHeadersDataSourceManager)initWithAssetsDataSourceManager:(id)manager indexPath:(PXSimpleIndexPath *)path
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = PXZoomableInlineHeadersDataSourceManager;
  v8 = [(PXSectionedDataSourceManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetsDataSourceManager, manager);
    v10 = *&path->item;
    *&v9->_sectionIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&v9->_sectionIndexPath.item = v10;
    [managerCopy registerChangeObserver:v9 context:PXAssetsDataSourceManagerObserverContext];
    v11 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v9 needsUpdateSelector:sel_setNeedsUpdate];
    updater = v9->_updater;
    v9->_updater = v11;

    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateDataSource];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.photos.inline-headers-queue", v13);
    prepareQueue = v9->_prepareQueue;
    v9->_prepareQueue = v14;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__PXZoomableInlineHeadersDataSourceManager_initWithAssetsDataSourceManager_indexPath___block_invoke;
    v17[3] = &unk_278297E50;
    v18 = v9;
    [(PXZoomableInlineHeadersDataSourceManager *)v18 performChanges:v17];
  }

  return v9;
}

+ (BOOL)supportsAssetsDataSourceManager:(id)manager
{
  dataSource = [manager dataSource];
  fetchResultInfoProvider = [dataSource fetchResultInfoProvider];
  v5 = fetchResultInfoProvider != 0;

  return v5;
}

@end