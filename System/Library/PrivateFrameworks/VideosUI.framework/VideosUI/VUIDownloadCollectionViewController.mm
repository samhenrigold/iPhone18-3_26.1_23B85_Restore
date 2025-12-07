@interface VUIDownloadCollectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (VUIDownloadCollectionViewController)initWithDataSource:(id)source;
- (double)_computeBottomMargin;
- (id)_configureAlertController;
- (id)_createCollectionView;
- (id)_createDiffableDataSource;
- (id)_createDiffableDataSourceSnapshot;
- (id)_createIdentifierToDownloadEntityDictionary;
- (id)_deleteActionTitleString;
- (id)_identifiersForDownloadEntities;
- (void)_batchSelectToggled;
- (void)_clearSelections;
- (void)_configureNavigationBarForEditingMode;
- (void)_deleteDownloadEntities:(id)entities;
- (void)_deleteMediaEntitiesInDownloadEntities:(id)entities;
- (void)_editToggled;
- (void)_enterEditingMode;
- (void)_exitEditingMode;
- (void)_selectAllCells;
- (void)_toggleRightBarEditItemIfNeeded;
- (void)_updateAllVisibleCellsForEditingMode;
- (void)_updateLayoutForSize:(CGSize)size;
- (void)_updateNavigationBarPadding;
- (void)_updateSelectAllBarButtonItemIfNecessary;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)downloadCellDidRequestCancelDownload:(id)download;
- (void)downloadManager:(id)manager downloadedFetchDidFinishWithEntities:(id)entities;
- (void)downloadManager:(id)manager downloadsDidChange:(id)change;
- (void)loadView;
- (void)setDownloadEntities:(id)entities;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VUIDownloadCollectionViewController

- (VUIDownloadCollectionViewController)initWithDataSource:(id)source
{
  v20[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = VUIDownloadCollectionViewController;
  v5 = [(VUIDownloadCollectionViewController *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(VUIDownloadCollectionViewController *)v5 setDownloadDataSource:sourceCopy];
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"DOWNLOADED"];
    [(VUIDownloadCollectionViewController *)v6 setTitle:v8];

    [(VUIDownloadCollectionViewController *)v6 setGridStyle:6];
    [(VUIDownloadCollectionViewController *)v6 setGridType:1];
    v9 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v6->_contentPresenter;
    v6->_contentPresenter = v9;

    [(VUIViewControllerContentPresenter *)v6->_contentPresenter setLogName:@"VUIDownloadCollectionViewController"];
    v6->_isEditing = 0;
    v6->_isSelectingAll = 0;
    v6->_lastViewWidth = 0.0;
    view = [(VUIDownloadCollectionViewController *)v6 view];
    v12 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Downloaded"];
    [view setAccessibilityIdentifier:v12];

    objc_initWeak(&location, v6);
    v20[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__VUIDownloadCollectionViewController_initWithDataSource___block_invoke;
    v16[3] = &unk_1E872E760;
    objc_copyWeak(&v17, &location);
    v14 = [(VUIDownloadCollectionViewController *)v6 registerForTraitChanges:v13 withHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __58__VUIDownloadCollectionViewController_initWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 bounds];
  [WeakRetained _updateLayoutForSize:{v2, v3}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v16 viewWillAppear:?];
  v5 = self->_collectionView;
  indexPathsForSelectedItems = [(VUILegacyCollectionView *)v5 indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    transitionCoordinator = [(VUIDownloadCollectionViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__VUIDownloadCollectionViewController_viewWillAppear___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = v5;
      v14 = firstObject;
      appearCopy = appear;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__VUIDownloadCollectionViewController_viewWillAppear___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [transitionCoordinator animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [(VUILegacyCollectionView *)v5 deselectItemAtIndexPath:firstObject animated:1];
    }
  }
}

void *__54__VUIDownloadCollectionViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
  }

  return result;
}

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v33 loadView];
  contentPresenter = [(VUIDownloadCollectionViewController *)self contentPresenter];
  [contentPresenter setRootViewForViewController:self];

  _createCollectionView = [(VUIDownloadCollectionViewController *)self _createCollectionView];
  [(VUIDownloadCollectionViewController *)self setCollectionView:_createCollectionView];

  _createDiffableDataSource = [(VUIDownloadCollectionViewController *)self _createDiffableDataSource];
  [(VUIDownloadCollectionViewController *)self setDiffableDataSource:_createDiffableDataSource];

  if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"EDIT"];
    v9 = [v6 initWithTitle:v8 style:0 target:self action:sel__editToggled];
    rightBarButtonItem = self->_rightBarButtonItem;
    self->_rightBarButtonItem = v9;

    navigationItem = [(VUIDownloadCollectionViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:self->_rightBarButtonItem];

    v12 = objc_alloc(MEMORY[0x1E69DC708]);
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"SELECT_ALL"];
    v15 = [v12 initWithTitle:v14 style:0 target:self action:sel__batchSelectToggled];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = v15;
  }

  navigationItem2 = [(VUIDownloadCollectionViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = leftBarButtonItem;

  v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  leftBarButtonItem = self->_leftBarButtonItem;
  self->_leftBarButtonItem = v20;

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke;
  aBlock[3] = &unk_1E872F5D0;
  objc_copyWeak(&v31, &location);
  v22 = _Block_copy(aBlock);
  if (_os_feature_enabled_impl())
  {
    v23 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke_3;
    v29[3] = &unk_1E872E470;
    v29[4] = v22;
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v29];
  }

  else
  {
    v24 = MEMORY[0x1E69E15F8];
    v23 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke_70;
    v28[3] = &unk_1E872D790;
    v28[4] = v22;
    [v24 isFullTVAppEnabledwithCompletion:v28];
  }

  contentPresenter2 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  [contentPresenter2 setCurrentContentViewType:1];

  contentPresenter3 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  [contentPresenter3 setContentView:collectionView];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke_2;
  v3[3] = &unk_1E872EDE0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v2 = *(a1 + 40);
    v3 = [WeakRetained contentPresenter];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = v4;
    if (v2 == 1)
    {
      v6 = [v4 localizedStringForKey:@"LIBRARY_EMPTY_TITLE_NEW"];
      [v3 setNoContentErrorTitle:v6];

      v7 = [WeakRetained contentPresenter];
      v8 = +[VUILocalizationManager sharedInstance];
      v9 = v8;
      v10 = @"LIBRARY_EMPTY_DESCRIPTION_NEW";
LABEL_6:
      v14 = [v8 localizedStringForKey:v10];
      goto LABEL_8;
    }

LABEL_5:
    v13 = [v5 localizedStringForKey:@"LIBRARY_EMPTY_TITLE_LIBRARY_ONLY"];
    [v3 setNoContentErrorTitle:v13];

    v7 = [WeakRetained contentPresenter];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = v8;
    v10 = @"LIBRARY_EMPTY_DESCRIPTION_LIBRARY_ONLY";
    goto LABEL_6;
  }

  v11 = WLKIsRegulatedSKU();
  v3 = [WeakRetained contentPresenter];
  v12 = +[VUILocalizationManager sharedInstance];
  v5 = v12;
  if (v11)
  {
    goto LABEL_5;
  }

  v15 = [v12 localizedStringForKey:@"LIBRARY_EMPTY_TITLE_NO_CONNECTION"];
  [v3 setNoContentErrorTitle:v15];

  v7 = [WeakRetained contentPresenter];
  v9 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v14 = [v9 localizedStringForKey:@"LIBRARY_EMPTY_DESCRIPTION_NO_CONNNECTION" value:0 table:@"VideosUIEmbedded"];
LABEL_8:
  v16 = v14;
  [v7 setNoContentErrorMessage:v14];

  v17 = [WeakRetained contentPresenter];
  [v17 refreshNoContentViewIfNeeded];

  [WeakRetained _toggleRightBarEditItemIfNeeded];
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__VUIDownloadCollectionViewController_loadView__block_invoke_3_cold_1(a2, v6, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v6 viewDidAppear:appear];
  [(VUIDownloadCollectionViewController *)self _updateNavigationBarPadding];
  navigationController = [(VUIDownloadCollectionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar sizeToFit];

  [VUILibraryMetrics recordPageEventWithPageType:@"LibraryDownloaded"];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v19 viewDidLoad];
  downloadDataSource = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  [downloadDataSource setDownloadDelegate:self];

  downloadDataSource2 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  hasCompletedInitialFetch = [downloadDataSource2 hasCompletedInitialFetch];

  if (hasCompletedInitialFetch)
  {
    downloadDataSource3 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
    downloadEntities = [downloadDataSource3 downloadEntities];
    v9 = [downloadEntities mutableCopy];
    [(VUIDownloadCollectionViewController *)self setDownloadEntities:v9];

    downloadEntities2 = [(VUIDownloadCollectionViewController *)self downloadEntities];
    v11 = [downloadEntities2 count];

    contentPresenter = [(VUIDownloadCollectionViewController *)self contentPresenter];
    diffableDataSource = contentPresenter;
    if (v11)
    {
      currentContentViewType = [contentPresenter currentContentViewType];

      if (currentContentViewType != 3)
      {
        contentPresenter2 = [(VUIDownloadCollectionViewController *)self contentPresenter];
        [contentPresenter2 setCurrentContentViewType:3];
      }

      diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
      _createDiffableDataSourceSnapshot = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
      [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:currentContentViewType == 3 completion:0];
    }

    else
    {
      [contentPresenter setCurrentContentViewType:2];
    }
  }

  else
  {
    v17 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "[VUIDownloadCollectionViewController] Fetching downloads", v18, 2u);
    }

    diffableDataSource = [(VUIDownloadCollectionViewController *)self downloadDataSource];
    [diffableDataSource startFetch];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v8 viewDidLayoutSubviews];
  contentPresenter = [(VUIDownloadCollectionViewController *)self contentPresenter];
  view = [(VUIDownloadCollectionViewController *)self view];
  [view bounds];
  [contentPresenter configureCurrentViewFrameForBounds:?];

  view2 = [(VUIDownloadCollectionViewController *)self view];
  [view2 bounds];
  [(VUIDownloadCollectionViewController *)self _updateLayoutForSize:v6, v7];

  [(VUIDownloadCollectionViewController *)self _updateNavigationBarPadding];
}

- (void)setDownloadEntities:(id)entities
{
  v26 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = entitiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        identifier = [v11 identifier];
        if (identifier)
        {
          identifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
          v14 = [identifierToDownloadEntityDictionary objectForKey:identifier];

          if (v14)
          {
            mediaEntities = [v11 mediaEntities];
            v16 = [mediaEntities copy];
            [v14 setMediaEntities:v16];

            v17 = array;
            v18 = v14;
          }

          else
          {
            v17 = array;
            v18 = v11;
          }

          [(NSMutableArray *)v17 addObject:v18];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  downloadEntities = self->_downloadEntities;
  self->_downloadEntities = array;

  _createIdentifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self _createIdentifierToDownloadEntityDictionary];
  [(VUIDownloadCollectionViewController *)self setIdentifierToDownloadEntityDictionary:_createIdentifierToDownloadEntityDictionary];

  [(VUIDownloadCollectionViewController *)self _toggleRightBarEditItemIfNeeded];
}

- (void)_toggleRightBarEditItemIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  downloadEntities = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v4 = [downloadEntities count];

  navigationItem = [(VUIDownloadCollectionViewController *)self navigationItem];
  v6 = navigationItem;
  if (v4)
  {
    v8[0] = self->_rightBarButtonItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 setRightBarButtonItems:v7];
  }

  else
  {
    [navigationItem setRightBarButtonItems:MEMORY[0x1E695E0F0]];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = VUIDownloadCollectionViewController;
  coordinatorCopy = coordinator;
  [(VUIDownloadCollectionViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__VUIDownloadCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __90__VUIDownloadCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 view];
  [v4 bounds];
  [v1 _updateLayoutForSize:{v2, v3}];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [cellCopy setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];
  if ([(VUIDownloadCollectionViewController *)self isEditing]&& [(VUIDownloadCollectionViewController *)self isSelectingAll])
  {
    collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:pathCopy animated:1 scrollPosition:0];

    [cellCopy setSelected:1];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v98[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if ([(VUIDownloadCollectionViewController *)self isEditing])
  {
    v8 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v8 setSelected:1 animated:1];
    [(VUIDownloadCollectionViewController *)self _updateSelectAllBarButtonItemIfNecessary];
  }

  else
  {
    [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
    diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
    rightBarButtonItem2 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

    identifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
    v85 = [identifierToDownloadEntityDictionary objectForKey:rightBarButtonItem2];

    mediaEntities = [v85 mediaEntities];
    firstObject = [mediaEntities firstObject];

    if (!firstObject)
    {
      v25 = VUIDefaultLogObject(v14);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [VUIDownloadCollectionViewController collectionView:rightBarButtonItem2 didSelectItemAtIndexPath:v25];
      }

      goto LABEL_37;
    }

    if ([v85 downloadType])
    {
      if ([v85 downloadType] == 1 || objc_msgSend(v85, "downloadType") == 2)
      {
        [VUILibraryMetrics recordClickOnMediaEntity:firstObject];
        v15 = [[VUIDownloadShowDataSource alloc] initWithMediaEntity:firstObject];
        showIdentifier = [firstObject showIdentifier];
        v17 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:showIdentifier];
        mediaLibrary = [firstObject mediaLibrary];
        v19 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v17 withLibrary:mediaLibrary];

        v20 = [[VUIDownloadShowTableViewController alloc] initWithDataSource:v15 seasonsDataSource:v19];
        showTitle = [firstObject showTitle];

        if (showTitle)
        {
          navigationItem = [(VUIDownloadShowTableViewController *)v20 navigationItem];
          showTitle2 = [firstObject showTitle];
          [navigationItem setTitle:showTitle2];
        }

        navigationController = [(VUIDownloadCollectionViewController *)self navigationController];
        [navigationController pushViewController:v20 animated:1];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v84 = firstObject;
        downloadExpirationDate = [v84 downloadExpirationDate];
        v83 = downloadExpirationDate;
        if (downloadExpirationDate && ![downloadExpirationDate vui_isInTheFuture])
        {
          availabilityEndDate = [v84 availabilityEndDate];
          v29 = availabilityEndDate;
          if (availabilityEndDate && ![(VUIMediaInfo *)availabilityEndDate vui_isInTheFuture])
          {
            objc_initWeak(&location, self);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
            aBlock[3] = &unk_1E872E4B8;
            objc_copyWeak(&v89, &location);
            v75 = _Block_copy(aBlock);
            v81 = MEMORY[0x1E696AEC0];
            v60 = +[VUILocalizationManager sharedInstance];
            v61 = [v60 localizedStringForKey:@"DOWNLOAD_MESSAGE_NO_LONGER_AVAILABLE"];
            brandName = [v84 brandName];
            v77 = [v81 stringWithValidatedFormat:v61 validFormatSpecifiers:@"%@" error:0, brandName];

            v63 = MEMORY[0x1E69DC650];
            v64 = +[VUILocalizationManager sharedInstance];
            v65 = [v64 localizedStringForKey:@"DOWNLOAD_NO_LONGER_AVAILABLE"];
            v82 = [v63 alertControllerWithTitle:v65 message:v77 preferredStyle:1];

            v66 = MEMORY[0x1E69DC648];
            v67 = +[VUILocalizationManager sharedInstance];
            v68 = [v67 localizedStringForKey:@"DELETE"];
            v86[0] = MEMORY[0x1E69E9820];
            v86[1] = 3221225472;
            v86[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
            v86[3] = &unk_1E872E850;
            v69 = v75;
            v87 = v69;
            v70 = [v66 actionWithTitle:v68 style:0 handler:v86];

            [v82 addAction:v70];
            [(VUIDownloadCollectionViewController *)self presentViewController:v82 animated:1 completion:0];

            objc_destroyWeak(&v89);
            objc_destroyWeak(&location);
          }

          else if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
          {
            allowsManualDownloadRenewal = [v84 allowsManualDownloadRenewal];
            v33 = +[VUILocalizationManager sharedInstance];
            v34 = v33;
            if (allowsManualDownloadRenewal)
            {
              v35 = @"RENEW_DOWNLOAD";
            }

            else
            {
              v35 = @"DOWNLOAD_AGAIN";
            }

            if (allowsManualDownloadRenewal)
            {
              v36 = @"RENEW_DOWNLOAD";
            }

            else
            {
              v36 = @"DOWNLOAD_AGAIN_BUTTON_TITLE";
            }

            v37 = @"DOWNLOAD_MESSAGE_REDOWNLOAD";
            if (allowsManualDownloadRenewal)
            {
              v37 = @"DOWNLOAD_MESSAGE_RENEW";
            }

            v78 = v37;
            v74 = [v33 localizedStringForKey:v35];

            v38 = +[VUILocalizationManager sharedInstance];
            v73 = [v38 localizedStringForKey:v36];

            v71 = MEMORY[0x1E696AEC0];
            v39 = +[VUILocalizationManager sharedInstance];
            v40 = [v39 localizedStringForKey:v78];
            brandName2 = [v84 brandName];
            v72 = [v71 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:0, brandName2];

            v79 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v74 message:v72 preferredStyle:1];
            objc_initWeak(&location, self);
            v42 = MEMORY[0x1E69DC648];
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 3221225472;
            v90[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_108;
            v90[3] = &unk_1E8733A88;
            objc_copyWeak(&v93, &location);
            v43 = v84;
            v94 = allowsManualDownloadRenewal;
            v91 = v43;
            selfCopy = self;
            v44 = [v42 actionWithTitle:v73 style:0 handler:v90];
            [v79 addAction:v44];
            v45 = MEMORY[0x1E69DC648];
            v46 = +[VUILocalizationManager sharedInstance];
            v47 = [v46 localizedStringForKey:@"CANCEL"];
            v48 = [v45 actionWithTitle:v47 style:1 handler:0];

            [v79 addAction:v48];
            [(VUIDownloadCollectionViewController *)self presentViewController:v79 animated:1 completion:0];

            objc_destroyWeak(&v93);
            objc_destroyWeak(&location);
          }

          else
          {
            v51 = MEMORY[0x1E69DC650];
            v80 = +[VUILocalizationManager sharedInstance];
            v52 = [v80 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW"];
            v53 = +[VUILocalizationManager sharedInstance];
            v54 = [v53 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW_MESSAGE"];
            v55 = [v51 alertControllerWithTitle:v52 message:v54 preferredStyle:1];

            v56 = MEMORY[0x1E69DC648];
            v57 = +[VUILocalizationManager sharedInstance];
            v58 = [v57 localizedStringForKey:@"OK"];
            v59 = [v56 actionWithTitle:v58 style:1 handler:0];

            [v55 addAction:v59];
            [(VUIDownloadCollectionViewController *)self presentViewController:v55 animated:1 completion:0];
          }
        }

        else
        {
          v27 = [VUIMediaInfo alloc];
          v98[0] = v84;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
          v29 = [(VUIMediaInfo *)v27 initWithPlaybackContext:3 vuiMediaItems:v28];

          [(VUIMediaInfo *)v29 setIntent:1];
          v30 = [(VUIMediaInfo *)v29 setAutomaticPlaybackStart:0];
          if (v29)
          {
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
            v96[3] = &unk_1E872D768;
            v97 = v84;
            [VUIActionPlay playMediaInfo:v29 watchType:0 isRentAndWatchNow:0 completion:v96];
            v31 = v97;
          }

          else
          {
            v31 = VUIDefaultLogObject(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [VUIDownloadShowTableViewController tableView:v84 didSelectRowAtIndexPath:v31];
            }
          }
        }
      }
    }
  }

  rightBarButtonItem = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  if ((isEnabled & 1) == 0)
  {
    rightBarButtonItem2 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:1];
LABEL_37:
  }
}

void __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) assetController];

    if (v3)
    {
      if (*(a1 + 56) == 1)
      {
        v4 = [*(a1 + 32) assetController];
        [v4 fetchNewKeysForDownloadedVideo];
      }

      else
      {
        v5 = +[VUIDownloadManager sharedInstance];
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = [v6 assetController];
        v9 = [v8 contentAllowsCellularDownload];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
        v10[3] = &unk_1E872E878;
        v11 = *(a1 + 32);
        [v5 preflightDownloadForLibraryMediaEntity:v6 presentingViewController:v7 contentAllowsCellularDownload:v9 completion:v10];
      }
    }
  }
}

void __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = [*(a1 + 32) assetController];
    [v6 startDownloadAllowingCellular:a3 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
  }
}

void __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [WeakRetained downloadEntities];
        v11 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];
        [v2 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [WeakRetained _deleteDownloadEntities:v2];
  [WeakRetained _exitEditingMode];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  [v5 setSelected:0 animated:1];
  [(VUIDownloadCollectionViewController *)self _updateSelectAllBarButtonItemIfNecessary];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  sizingCell = [(VUIDownloadCollectionViewController *)self sizingCell];

  if (!sizingCell)
  {
    v8 = objc_alloc_init(VUIDownloadCollectionViewCell);
    [(VUIDownloadCollectionViewController *)self setSizingCell:v8];
  }

  diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
  v10 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  identifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
  v12 = [identifierToDownloadEntityDictionary objectForKey:v10];

  sizingCell2 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [(VUIDownloadCollectionViewController *)self cellWidth];
  [VUIDownloadCollectionViewCell configureVUIDownloadEntityCollectionViewCell:sizingCell2 withDownloadEntity:v12 width:1 forMetrics:?];

  sizingCell3 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [sizingCell3 setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];

  sizingCell4 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [(VUIDownloadCollectionViewController *)self cellWidth];
  [sizingCell4 sizeThatFits:?];
  v17 = v16;
  v19 = v18;

  if (v17 <= 0.0 || v19 <= 0.0)
  {
    v21 = VUIDefaultLogObject(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      cellWidth = self->_cellWidth;
      v25 = 134218754;
      v26 = v17;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = cellWidth;
      v31 = 2112;
      v32 = v12;
      _os_log_error_impl(&dword_1E323F000, v21, OS_LOG_TYPE_ERROR, "[VUIDownloadCollectionViewController] Incorrect sizing for item width:%f height:%f cellWidth:%f forEntity:%@", &v25, 0x2Au);
    }
  }

  v22 = v17;
  v23 = v19;
  result.height = v23;
  result.width = v22;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(VUIDownloadCollectionViewController *)self _computeBottomMargin:view];
  v6 = v5;
  v7 = 10.0;
  v8 = 0.0;
  v9 = 0.0;
  result.right = v9;
  result.bottom = v6;
  result.left = v8;
  result.top = v7;
  return result;
}

- (void)downloadManager:(id)manager downloadedFetchDidFinishWithEntities:(id)entities
{
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIDownloadCollectionViewController] Fetching downloads completed", v16, 2u);
  }

  downloadDataSource = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  downloadEntities = [downloadDataSource downloadEntities];
  v8 = [downloadEntities mutableCopy];
  [(VUIDownloadCollectionViewController *)self setDownloadEntities:v8];

  downloadEntities2 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v10 = [downloadEntities2 count];

  contentPresenter = [(VUIDownloadCollectionViewController *)self contentPresenter];
  diffableDataSource = contentPresenter;
  if (v10)
  {
    currentContentViewType = [contentPresenter currentContentViewType];

    if (currentContentViewType != 3)
    {
      contentPresenter2 = [(VUIDownloadCollectionViewController *)self contentPresenter];
      [contentPresenter2 setCurrentContentViewType:3];
    }

    diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
    _createDiffableDataSourceSnapshot = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
    [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:currentContentViewType == 3 completion:0];
  }

  else
  {
    [contentPresenter setCurrentContentViewType:2];
  }
}

- (void)downloadManager:(id)manager downloadsDidChange:(id)change
{
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIDownloadCollectionViewController] Downloads changed", v14, 2u);
  }

  downloadDataSource = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  downloadEntities = [downloadDataSource downloadEntities];
  v8 = [downloadEntities mutableCopy];
  [(VUIDownloadCollectionViewController *)self setDownloadEntities:v8];

  downloadEntities2 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v10 = [downloadEntities2 count];

  contentPresenter = [(VUIDownloadCollectionViewController *)self contentPresenter];
  diffableDataSource = contentPresenter;
  if (v10)
  {
    [contentPresenter setCurrentContentViewType:3];

    diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
    _createDiffableDataSourceSnapshot = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
    [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1 completion:0];
  }

  else
  {
    [contentPresenter setCurrentContentViewType:2];
  }
}

- (void)downloadCellDidRequestCancelDownload:(id)download
{
  downloadCopy = download;
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  v17 = [collectionView indexPathForCell:downloadCopy];

  v6 = v17;
  if (v17)
  {
    downloadEntities = [(VUIDownloadCollectionViewController *)self downloadEntities];
    v8 = [downloadEntities objectAtIndex:{objc_msgSend(v17, "row")}];

    mediaEntities = [v8 mediaEntities];
    firstObject = [mediaEntities firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = firstObject;
      if (([v11 markedAsDeleted] & 1) != 0 || (objc_msgSend(v11, "downloadExpirationDate"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
      {
        downloadEntities2 = [(VUIDownloadCollectionViewController *)self downloadEntities];
        [downloadEntities2 removeObjectAtIndex:{objc_msgSend(v17, "row")}];

        _createIdentifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self _createIdentifierToDownloadEntityDictionary];
        [(VUIDownloadCollectionViewController *)self setIdentifierToDownloadEntityDictionary:_createIdentifierToDownloadEntityDictionary];

        diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
        _createDiffableDataSourceSnapshot = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
        [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1 completion:0];
      }
    }

    v6 = v17;
  }
}

- (id)_createCollectionView
{
  v3 = objc_alloc_init(VUITopAlignedCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v3 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  v4 = MEMORY[0x1E69DD2E8];
  gridStyle = [(VUIDownloadCollectionViewController *)self gridStyle];
  gridType = [(VUIDownloadCollectionViewController *)self gridType];
  view = [(VUIDownloadCollectionViewController *)self view];
  [view bounds];
  [v4 vui_collectionInteritemSpace:gridStyle gridType:gridType windowWidth:CGRectGetWidth(v18)];
  v9 = v8;

  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:v9];
  v10 = [VUILegacyCollectionView alloc];
  v11 = [(VUILegacyCollectionView *)v10 initWithFrame:v3 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(VUILegacyCollectionView *)v11 setBackgroundColor:vui_primaryDynamicBackgroundColor];

  [(VUILegacyCollectionView *)v11 setAllowsMultipleSelection:1];
  [(VUILegacyCollectionView *)v11 setDelegate:self];
  [(VUILegacyCollectionView *)v11 setAlwaysBounceVertical:1];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [(VUILegacyCollectionView *)v11 registerClass:v13 forCellWithReuseIdentifier:v15];

  return v11;
}

- (id)_createDiffableDataSource
{
  v3 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__VUIDownloadCollectionViewController__createDiffableDataSource__block_invoke;
  v7[3] = &unk_1E8733AB0;
  v7[4] = self;
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v7];

  return v5;
}

id __64__VUIDownloadCollectionViewController__createDiffableDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  v13 = [*(a1 + 32) identifierToDownloadEntityDictionary];
  v14 = [v13 objectForKey:v7];

  [*(a1 + 32) cellWidth];
  [VUIDownloadCollectionViewCell configureVUIDownloadEntityCollectionViewCell:v12 withDownloadEntity:v14 width:0 forMetrics:?];
  [v12 setEditing:{objc_msgSend(*(a1 + 32), "isEditing")}];
  v15 = [v12 downloadButton];
  v16 = v15;
  if (v15)
  {
    [v15 setPresentingViewController:*(a1 + 32)];
  }

  return v12;
}

- (id)_createDiffableDataSourceSnapshot
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v7[0] = @"DownloadGridMainSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  _identifiersForDownloadEntities = [(VUIDownloadCollectionViewController *)self _identifiersForDownloadEntities];
  [v3 appendItemsWithIdentifiers:_identifiersForDownloadEntities intoSectionWithIdentifier:@"DownloadGridMainSection"];

  return v3;
}

- (id)_createIdentifierToDownloadEntityDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  downloadEntities = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v5 = [downloadEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(downloadEntities);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        if (identifier)
        {
          [v3 setValue:v9 forKey:identifier];
        }
      }

      v6 = [downloadEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)_identifiersForDownloadEntities
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  downloadEntities = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v5 = [downloadEntities countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(downloadEntities);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        if (identifier)
        {
          [v3 addObject:identifier];
        }
      }

      v6 = [downloadEntities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  array = [v3 array];

  return array;
}

- (double)_computeBottomMargin
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
  v5 = [diffableDataSource itemIdentifierForIndexPath:v3];

  identifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
  v7 = [identifierToDownloadEntityDictionary objectForKey:v5];

  sizingCell = [(VUIDownloadCollectionViewController *)self sizingCell];
  [(VUIDownloadCollectionViewController *)self cellWidth];
  [VUIDownloadCollectionViewCell configureVUIDownloadEntityCollectionViewCell:sizingCell withDownloadEntity:v7 width:1 forMetrics:?];

  sizingCell2 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [sizingCell2 setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];

  sizingCell3 = [(VUIDownloadCollectionViewController *)self sizingCell];
  +[VUIViewSpacer spacerB];
  [sizingCell3 bottomMarginWithBaselineMargin:?];
  v12 = v11;

  if (v12 == 0.0)
  {
    +[VUIViewSpacer spacerB];
    v14 = v13;
    traitCollection = [(VUIDownloadCollectionViewController *)self traitCollection];
    [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:v14];
    v12 = v16;
  }

  return v12;
}

- (void)_updateLayoutForSize:(CGSize)size
{
  width = size.width;
  [(VUIDownloadCollectionViewController *)self lastViewWidth:size.width];
  if (v5 != width)
  {
    [(VUIDownloadCollectionViewController *)self setLastViewWidth:width];
    v6 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:width];
    v7 = 3;
    if ((v6 - 3) < 3)
    {
      v7 = 6;
    }

    self->_gridStyle = v7;
    [MEMORY[0x1E69DD2E8] vui_itemWidthForGridStyle:-[VUIDownloadCollectionViewController gridStyle](self gridType:"gridStyle") numGridColumns:-[VUIDownloadCollectionViewController gridType](self windowWidth:{"gridType"), 1, width}];
    self->_cellWidth = v8;
    [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:width];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    [MEMORY[0x1E69DD2E8] vui_collectionInteritemSpace:-[VUIDownloadCollectionViewController gridStyle](self gridType:"gridStyle") windowWidth:{-[VUIDownloadCollectionViewController gridType](self, "gridType"), width}];
    [collectionViewLayout setMinimumInteritemSpacing:?];
    collectionView2 = [(VUIDownloadCollectionViewController *)self collectionView];
    [collectionView2 setContentInset:{v10, v12, v14, v16}];

    collectionView3 = [(VUIDownloadCollectionViewController *)self collectionView];
    collectionViewLayout2 = [collectionView3 collectionViewLayout];
    [collectionViewLayout2 invalidateLayout];
  }
}

- (void)_editToggled
{
  if ([(VUIDownloadCollectionViewController *)self isEditing])
  {
    collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v5 = [indexPathsForSelectedItems count];

    if (v5)
    {
      _configureAlertController = [(VUIDownloadCollectionViewController *)self _configureAlertController];
      alertController = self->_alertController;
      self->_alertController = _configureAlertController;

      v8 = self->_alertController;
      if (v8)
      {
        [(VUIDownloadCollectionViewController *)self presentViewController:v8 animated:1 completion:0];
      }
    }

    else
    {
      [(VUIDownloadCollectionViewController *)self _exitEditingMode];
    }
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self _enterEditingMode];
  }

  [(VUIDownloadCollectionViewController *)self _updateAllVisibleCellsForEditingMode];
}

- (void)_batchSelectToggled
{
  isSelectingAll = self->_isSelectingAll;
  if (isSelectingAll)
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:0];
    selectAllBarButtonItem = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v5 = +[VUILocalizationManager sharedInstance];
    v6 = [v5 localizedStringForKey:@"SELECT_ALL"];
    [selectAllBarButtonItem setTitle:v6];

    [(VUIDownloadCollectionViewController *)self _clearSelections];
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:1];
    selectAllBarButtonItem2 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"DESELECT_ALL"];
    [selectAllBarButtonItem2 setTitle:v9];

    [(VUIDownloadCollectionViewController *)self _selectAllCells];
  }

  rightBarButtonItem = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
  [rightBarButtonItem setEnabled:!isSelectingAll];
}

- (id)_configureAlertController
{
  v3 = +[VUILocalizationManager sharedInstance];
  v20 = [v3 localizedStringForKey:@"DELETES_EXPLANATION"];

  _deleteActionTitleString = [(VUIDownloadCollectionViewController *)self _deleteActionTitleString];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke;
  aBlock[3] = &unk_1E872E4B8;
  objc_copyWeak(&v28, location);
  v4 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_2;
  v25[3] = &unk_1E872E4B8;
  objc_copyWeak(&v26, location);
  v5 = _Block_copy(v25);
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = [indexPathsForSelectedItems count];

  if (v8)
  {
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v20 preferredStyle:0];
    v10 = MEMORY[0x1E69DC648];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_3;
    v23[3] = &unk_1E872E850;
    v24 = v4;
    v11 = [v10 actionWithTitle:_deleteActionTitleString style:2 handler:v23];
    [v9 addAction:v11];
    v12 = MEMORY[0x1E69DC648];
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"CANCEL"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_4;
    v21[3] = &unk_1E872E850;
    v22 = v5;
    v15 = [v12 actionWithTitle:v14 style:1 handler:v21];

    [v9 addAction:v15];
    [v9 setModalPresentationStyle:7];
    popoverPresentationController = [v9 popoverPresentationController];
    rightBarButtonItem = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem];
  }

  else
  {
    v9 = 0;
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(location);

  return v9;
}

void __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [WeakRetained downloadEntities];
        v11 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];
        [v2 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [WeakRetained _deleteDownloadEntities:v2];
  [WeakRetained _exitEditingMode];
}

void __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitEditingMode];
}

- (id)_deleteActionTitleString
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"DELETE_DOWNLOAD"];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v23;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(indexPathsForSelectedItems);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      diffableDataSource = [(VUIDownloadCollectionViewController *)self diffableDataSource];
      v14 = [diffableDataSource itemIdentifierForIndexPath:v12];

      identifierToDownloadEntityDictionary = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
      v16 = [identifierToDownloadEntityDictionary objectForKey:v14];

      numberOfMediaItems = [v16 numberOfMediaItems];
      v9 += [numberOfMediaItems unsignedIntegerValue];
    }

    v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);

  if (v9 >= 2)
  {
    v18 = MEMORY[0x1E696AEC0];
    indexPathsForSelectedItems = +[VUILocalizationManager sharedInstance];
    v19 = [indexPathsForSelectedItems localizedStringForKey:@"DELETE_%U_DOWNLOADS"];
    v20 = [v18 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%u" error:0, v9];

    v4 = v20;
LABEL_10:
  }

  return v4;
}

- (void)_configureNavigationBarForEditingMode
{
  v22[2] = *MEMORY[0x1E69E9840];
  if ([(VUIDownloadCollectionViewController *)self isEditing])
  {
    rightBarButtonItem = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = [v4 localizedStringForKey:@"DELETE"];
    [rightBarButtonItem setTitle:v5];

    rightBarButtonItem2 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:0];

    navigationItem = [(VUIDownloadCollectionViewController *)self navigationItem];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    v22[0] = self->_rightBarButtonItem;
    v22[1] = selectAllBarButtonItem;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [navigationItem setRightBarButtonItems:v9];

    navigationItem2 = [(VUIDownloadCollectionViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:self->_leftBarButtonItem];
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:0];
    selectAllBarButtonItem = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"SELECT_ALL"];
    [selectAllBarButtonItem setTitle:v13];

    rightBarButtonItem3 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    v15 = +[VUILocalizationManager sharedInstance];
    v16 = [v15 localizedStringForKey:@"EDIT"];
    [rightBarButtonItem3 setTitle:v16];

    rightBarButtonItem4 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [rightBarButtonItem4 setEnabled:1];

    navigationItem3 = [(VUIDownloadCollectionViewController *)self navigationItem];
    rightBarButtonItem = self->_rightBarButtonItem;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&rightBarButtonItem count:1];
    [navigationItem3 setRightBarButtonItems:v19];

    navigationItem2 = [(VUIDownloadCollectionViewController *)self navigationItem];
    backBarButtonItem = [(VUIDownloadCollectionViewController *)self backBarButtonItem];
    [navigationItem2 setLeftBarButtonItem:backBarButtonItem];
  }
}

- (void)_enterEditingMode
{
  [(VUIDownloadCollectionViewController *)self setIsEditing:1];

  [(VUIDownloadCollectionViewController *)self _configureNavigationBarForEditingMode];
}

- (void)_exitEditingMode
{
  [(VUIDownloadCollectionViewController *)self setIsEditing:0];
  [(VUIDownloadCollectionViewController *)self _updateAllVisibleCellsForEditingMode];
  [(VUIDownloadCollectionViewController *)self _clearSelections];
  [(VUIDownloadCollectionViewController *)self _configureNavigationBarForEditingMode];
  alertController = [(VUIDownloadCollectionViewController *)self alertController];

  if (alertController)
  {
    alertController2 = [(VUIDownloadCollectionViewController *)self alertController];
    [alertController2 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_clearSelections
{
  v19 = *MEMORY[0x1E69E9840];
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = indexPathsForSelectedItems;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        collectionView2 = [(VUIDownloadCollectionViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v10 animated:1];

        collectionView3 = [(VUIDownloadCollectionViewController *)self collectionView];
        v13 = [collectionView3 cellForItemAtIndexPath:v10];

        [v13 setSelected:0 animated:1];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_selectAllCells
{
  v19 = *MEMORY[0x1E69E9840];
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = indexPathsForVisibleItems;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        collectionView2 = [(VUIDownloadCollectionViewController *)self collectionView];
        [collectionView2 selectItemAtIndexPath:v10 animated:1 scrollPosition:0];

        collectionView3 = [(VUIDownloadCollectionViewController *)self collectionView];
        v13 = [collectionView3 cellForItemAtIndexPath:v10];

        [v13 setSelected:1 animated:1];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_deleteDownloadEntities:(id)entities
{
  entitiesCopy = entities;
  v7 = MEMORY[0x1E69E9820];
  v8 = __63__VUIDownloadCollectionViewController__deleteDownloadEntities___block_invoke;
  v9 = &unk_1E872D990;
  selfCopy = self;
  v11 = entitiesCopy;
  v5 = MEMORY[0x1E696AF00];
  v6 = entitiesCopy;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v7);
  }
}

void __63__VUIDownloadCollectionViewController__deleteDownloadEntities___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) downloadEntities];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:v8] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setDownloadEntities:v2];
  v9 = [*(a1 + 32) diffableDataSource];
  v10 = [*(a1 + 32) _createDiffableDataSourceSnapshot];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VUIDownloadCollectionViewController__deleteDownloadEntities___block_invoke_2;
  v12[3] = &unk_1E872D990;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  [v9 applySnapshot:v10 animatingDifferences:1 completion:v12];
}

- (void)_deleteMediaEntitiesInDownloadEntities:(id)entities
{
  v30 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v5 = objc_opt_new();
  assetControllersToRemove = self->_assetControllersToRemove;
  self->_assetControllersToRemove = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = entitiesCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        mediaEntities = [v11 mediaEntities];
        v13 = [mediaEntities countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            v16 = 0;
            do
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(mediaEntities);
              }

              assetController = [*(*(&v20 + 1) + 8 * v16) assetController];
              assetControllersToRemove = [(VUIDownloadCollectionViewController *)self assetControllersToRemove];
              [assetControllersToRemove addObject:assetController];

              [assetController cancelAndRemoveDownload];
              ++v16;
            }

            while (v14 != v16);
            v14 = [mediaEntities countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)_updateAllVisibleCellsForEditingMode
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateSelectAllBarButtonItemIfNecessary
{
  collectionView = [(VUIDownloadCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count];
  downloadEntities = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v7 = [downloadEntities count];

  if (v5 == v7)
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:1];
    selectAllBarButtonItem = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"DESELECT_ALL"];
    [selectAllBarButtonItem setTitle:v10];
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:0];
    selectAllBarButtonItem2 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"SELECT_ALL"];
    [selectAllBarButtonItem2 setTitle:v13];

    collectionView2 = [(VUIDownloadCollectionViewController *)self collectionView];
    indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
    v16 = [indexPathsForSelectedItems2 count];

    if (v16)
    {
      return;
    }

    rightBarButtonItem = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    isEnabled = [rightBarButtonItem isEnabled];

    if (!isEnabled)
    {
      return;
    }
  }

  rightBarButtonItem2 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
  [rightBarButtonItem2 setEnabled:v5 == v7];
}

- (void)_updateNavigationBarPadding
{
  v3 = MEMORY[0x1E69DD2E8];
  view = [(VUIDownloadCollectionViewController *)self view];
  [view bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v27)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  navigationController = [(VUIDownloadCollectionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar layoutMargins];
  if (v8 == v18 && v6 == v15 && v12 == v17)
  {
    v21 = v16;

    if (v10 == v21)
    {
      return;
    }
  }

  else
  {
  }

  navigationController2 = [(VUIDownloadCollectionViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setLayoutMargins:{v6, v8, v10, v12}];

  navigationController3 = [(VUIDownloadCollectionViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setNeedsLayout];
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke_3_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "[VUIDownloadCollectionViewController]- isFullTVAppEnabled: %d, error: %@", v3, 0x12u);
}

- (void)collectionView:(uint64_t)a1 didSelectItemAtIndexPath:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unable to start playback because no entity found for identifier: %@", &v2, 0xCu);
}

@end