@interface MCDBrowsableContentNavigationController
- (MCDBrowsableContentNavigationController)initWithBundleID:(id)d model:(id)model;
- (id)_hostTabAtIndex:(unint64_t)index dummyTab:(BOOL)tab;
- (id)_tabBarItemForViewController:(id)controller fromItem:(id)item;
- (void)_appRegisteredForContent:(id)content;
- (void)_loadAllHostTabs;
- (void)_nowPlayingButtonTapped:(id)tapped;
- (void)_nowPlayingDidChange:(id)change;
- (void)_updateNowPlayingButtonVisibility;
- (void)container:(id)container didInvalidateIndicies:(id)indicies;
- (void)invalidateAndReloadTabsWithCompletion:(id)completion;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTitleAndTabBarItemsAtIndexes:(id)indexes;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MCDBrowsableContentNavigationController

- (MCDBrowsableContentNavigationController)initWithBundleID:(id)d model:(id)model
{
  dCopy = d;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = MCDBrowsableContentNavigationController;
  v8 = [(MCDBrowsableContentNavigationController *)&v17 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [dCopy copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    objc_storeStrong(&v8->_model, model);
    v11 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.navigationController", 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v11;

    containerForRoot = [(MCDPCModel *)v8->_model containerForRoot];
    container = v8->_container;
    v8->_container = containerForRoot;

    [(MCDPCContainer *)v8->_container setDelegate:v8];
    [(MCDBrowsableContentNavigationController *)v8 setDelegate:v8];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__appRegisteredForContent_ name:@"appReadyToFetch" object:0];
    [defaultCenter addObserver:v8 selector:sel__nowPlayingDidChange_ name:@"nowPlayingChange" object:0];
    [defaultCenter addObserver:v8 selector:sel__nowPlayingDidChange_ name:@"MCDContentItemsChangedNotification" object:0];
  }

  return v8;
}

- (void)_appRegisteredForContent:(id)content
{
  contentCopy = content;
  objc_initWeak(&location, self);
  v5 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke;
  v10 = &unk_279923A90;
  objc_copyWeak(&v11, &location);
  [v5 addOperation:&v7 cancelAllOperations:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"appReadyToFetch" object:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2;
  block[3] = &unk_279923A90;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_sync(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MCDGeneralLogging(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Loading content in tab controller for the first time since app registered", buf, 2u);
  }

  v3 = [WeakRetained container];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_25;
  v5[3] = &unk_279923B08;
  v6 = WeakRetained;
  v4 = WeakRetained;
  [v3 refreshWithCompletion:v5];
}

void __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_25(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2_26;
  block[3] = &unk_279923B08;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__68__MCDBrowsableContentNavigationController__appRegisteredForContent___block_invoke_2_26(uint64_t a1)
{
  [*(a1 + 32) setDidFinishInitialLoad:1];
  result = [*(a1 + 32) visible];
  if (result)
  {
    v3 = MCDGeneralLogging(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "finished loading content after the view appeared, setting tabs", v4, 2u);
    }

    [*(a1 + 32) _updateNowPlayingButtonVisibility];
    [*(a1 + 32) _loadAllHostTabs];
    return [*(a1 + 32) setDidFinishInitialViewAppear:1];
  }

  return result;
}

- (void)_nowPlayingDidChange:(id)change
{
  v4 = MCDGeneralLogging(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Received MCDPCNowPlayingDidChangeNotificationName", v5, 2u);
  }

  [(MCDBrowsableContentNavigationController *)self _updateNowPlayingButtonVisibility];
}

- (void)_updateNowPlayingButtonVisibility
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MCDBrowsableContentNavigationController__updateNowPlayingButtonVisibility__block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__MCDBrowsableContentNavigationController__updateNowPlayingButtonVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1296) playableContentPlaybackManager];
  v3 = [v2 currentPlayingSong];
  if (v3 && [*(*(a1 + 32) + 1296) isCurrentPlayingApp])
  {
    v4 = *(*(a1 + 32) + 1272);

    if (v4 == 1)
    {
      v6 = MCDGeneralLogging(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Showing Now Playing button in tab bar", buf, 2u);
      }

      v7 = [*(a1 + 32) _accessoryView];

      v9 = MCDGeneralLogging(v8);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v10)
        {
          v24 = 0;
          v11 = "Accessory view already set.";
          v12 = &v24;
LABEL_17:
          _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (v10)
      {
        *v23 = 0;
        _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Showing Now Playing button in tab bar", v23, 2u);
      }

      v16 = *(a1 + 32);
      v17 = v16[164];
      if (!v17)
      {
        v18 = objc_alloc_init(MEMORY[0x277CF9150]);
        v19 = *(a1 + 32);
        v20 = *(v19 + 1312);
        *(v19 + 1312) = v18;

        [*(*(a1 + 32) + 1312) addTarget:*(a1 + 32) action:sel__nowPlayingButtonTapped_ forControlEvents:64];
        v16 = *(a1 + 32);
        v17 = v16[164];
      }

LABEL_14:
      [v16 _setAccessoryView:v17];
      return;
    }
  }

  else
  {
  }

  v13 = [*(a1 + 32) _accessoryView];

  v9 = MCDGeneralLogging(v14);
  v15 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *v22 = 0;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Hiding Now Playing button in tab bar", v22, 2u);
    }

    v16 = *(a1 + 32);
    v17 = 0;
    goto LABEL_14;
  }

  if (v15)
  {
    v21 = 0;
    v11 = "No Now Playing button hide needed.";
    v12 = &v21;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_nowPlayingButtonTapped:(id)tapped
{
  v4 = [MCDNowPlayingViewController alloc];
  bundleID = [(MCDPCModel *)self->_model bundleID];
  appTitle = [(MCDPCModel *)self->_model appTitle];
  v7 = [(MCDNowPlayingViewController *)v4 initWithPlayableBundleID:bundleID appName:appTitle];

  v9 = MCDGeneralLogging(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Now playing button tapped in tab bar, pushing to Now Playing screen", v12, 2u);
  }

  navigationController = [(MCDBrowsableContentNavigationController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  navigationController2 = [(MCDBrowsableContentNavigationController *)self navigationController];
  [navigationController2 pushViewController:v7 animated:1];
}

- (void)container:(id)container didInvalidateIndicies:(id)indicies
{
  v21 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  indiciesCopy = indicies;
  v8 = MCDGeneralLogging(indiciesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [containerCopy identifier];
    *buf = 138543618;
    v18 = identifier;
    v19 = 2114;
    v20 = indiciesCopy;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Some content has invalidated, preparing to reload tab views for container: %{public}@, indicies: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke;
  v13[3] = &unk_279924218;
  objc_copyWeak(&v16, buf);
  v11 = containerCopy;
  v14 = v11;
  v12 = indiciesCopy;
  v15 = v12;
  [v10 addOperation:v13 cancelAllOperations:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke_2;
  block[3] = &unk_279924218;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __75__MCDBrowsableContentNavigationController_container_didInvalidateIndicies___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained visible];
  if (v3)
  {
    v4 = [WeakRetained viewControllers];

    if (v4)
    {
      v6 = MCDGeneralLogging(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) identifier];
        v8 = *(a1 + 40);
        v16 = 138543618;
        v17 = v7;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Reloading specific tabs since they are invalid for container: %{public}@, indicies: %{public}@", &v16, 0x16u);
      }

      [WeakRetained updateTitleAndTabBarItemsAtIndexes:*(a1 + 40)];
    }

    else
    {
      v12 = [WeakRetained didFinishInitialLoad];
      if (v12)
      {
        v13 = MCDGeneralLogging(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 32) identifier];
          v15 = *(a1 + 40);
          v16 = 138543618;
          v17 = v14;
          v18 = 2114;
          v19 = v15;
          _os_log_impl(&dword_25AD8E000, v13, OS_LOG_TYPE_DEFAULT, "Reloading all host tabs since table views are nil for container: %{public}@, indicies: %{public}@", &v16, 0x16u);
        }

        [WeakRetained _loadAllHostTabs];
      }
    }
  }

  else
  {
    v9 = MCDGeneralLogging(v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) identifier];
      v11 = *(a1 + 40);
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Tab view not visible for container indicies reload: %{public}@, indicies: %{public}@", &v16, 0x16u);
    }
  }
}

- (void)_loadAllHostTabs
{
  v36 = *MEMORY[0x277D85DE8];
  container = [(MCDBrowsableContentNavigationController *)self container];
  cachedCount = [container cachedCount];

  v6 = MCDGeneralLogging(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (cachedCount)
  {
    if (v7)
    {
      bundleID = [(MCDBrowsableContentNavigationController *)self bundleID];
      *buf = 138543618;
      v33 = bundleID;
      v34 = 2050;
      v35 = cachedCount;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Number of tabs returned from client %{public}@: %{public}ld", buf, 0x16u);
    }

    v9 = cachedCount;
  }

  else
  {
    if (v7)
    {
      bundleID2 = [(MCDBrowsableContentNavigationController *)self bundleID];
      *buf = 138543362;
      v33 = bundleID2;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "No tabs available from host, loading default tabs for %{public}@", buf, 0xCu);
    }

    hasInvalidatedDummyTabs = [(MCDBrowsableContentNavigationController *)self hasInvalidatedDummyTabs];
    if ((hasInvalidatedDummyTabs & 1) == 0)
    {
      v12 = MCDGeneralLogging(hasInvalidatedDummyTabs);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        bundleID3 = [(MCDBrowsableContentNavigationController *)self bundleID];
        *buf = 138543362;
        v33 = bundleID3;
        _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling dummy tab reload for %{public}@", buf, 0xCu);
      }

      [(MCDBrowsableContentNavigationController *)self setHasInvalidatedDummyTabs:1];
      v14 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__MCDBrowsableContentNavigationController__loadAllHostTabs__block_invoke;
      block[3] = &unk_279923B08;
      block[4] = self;
      dispatch_after(v14, MEMORY[0x277D85CD0], block);
    }

    v9 = 3;
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([(MCDBrowsableContentNavigationController *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedIndex = 0;
  }

  else
  {
    selectedIndex = [(MCDBrowsableContentNavigationController *)self selectedIndex];
  }

  v18 = 0;
  *&v16 = 138543618;
  v30 = v16;
  do
  {
    v19 = [(MCDBrowsableContentNavigationController *)self _hostTabAtIndex:v18 dummyTab:cachedCount == 0];
    v20 = v19;
    if (v19)
    {
      if (cachedCount)
      {
        v21 = MCDGeneralLogging(v19);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (selectedIndex == v18)
        {
          if (v22)
          {
            container2 = [v20 container];
            identifier = [container2 identifier];
            *buf = v30;
            v33 = identifier;
            v34 = 2050;
            v35 = selectedIndex;
            _os_log_impl(&dword_25AD8E000, v21, OS_LOG_TYPE_DEFAULT, "Refreshing view controller %{public}@ because it is the selected index: %{public}ld", buf, 0x16u);
          }

          [v20 reloadWithCompletion:0];
        }

        else
        {
          if (v22)
          {
            container3 = [v20 container];
            identifier2 = [container3 identifier];
            *buf = 138543362;
            v33 = identifier2;
            _os_log_impl(&dword_25AD8E000, v21, OS_LOG_TYPE_DEFAULT, "View controller %{public}@ is not selected but is reloaded, begin loading item", buf, 0xCu);
          }

          container4 = [v20 container];
          [container4 beginLoadingItemWithCompletion:0];
        }
      }

      else
      {
        v25 = MCDGeneralLogging(v19);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          bundleID4 = [(MCDBrowsableContentNavigationController *)self bundleID];
          *buf = 138543362;
          v33 = bundleID4;
          _os_log_impl(&dword_25AD8E000, v25, OS_LOG_TYPE_DEFAULT, "Dummy tab, no need to refresh in %{public}@", buf, 0xCu);
        }
      }

      [array addObject:{v20, v30}];
    }

    ++v18;
  }

  while (v9 != v18);
  [(MCDBrowsableContentNavigationController *)self setViewControllers:array];
}

uint64_t __59__MCDBrowsableContentNavigationController__loadAllHostTabs__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleID];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Performing dummy tab reload for %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) invalidateAndReloadTabsWithCompletion:0];
}

- (void)invalidateAndReloadTabsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = +[MCDMediaRemoteSerialQueueManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke;
  v7[3] = &unk_279923F78;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [v5 addOperation:v7 cancelAllOperations:0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Reloading tabs after invalidate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained container];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_33;
  v6[3] = &unk_279923EC8;
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  v5 = WeakRetained;
  [v4 refreshWithCompletion:v6];
}

void __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_33(uint64_t a1)
{
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Finished reloading tabs after invalidate", buf, 2u);
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_34;
  v3[3] = &unk_279923EC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __81__MCDBrowsableContentNavigationController_invalidateAndReloadTabsWithCompletion___block_invoke_34(uint64_t a1)
{
  [*(a1 + 32) _loadAllHostTabs];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  v9 = *MEMORY[0x277D85DE8];
  viewControllerCopy = viewController;
  v5 = MCDGeneralLogging(viewControllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    title = [viewControllerCopy title];
    v7 = 138543362;
    v8 = title;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Tab selected, reloading content for %{public}@", &v7, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [viewControllerCopy reloadWithCompletion:0];
  }
}

- (id)_tabBarItemForViewController:(id)controller fromItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  itemCopy = item;
  artworkImage = [itemCopy artworkImage];
  v8 = [artworkImage imageWithRenderingMode:2];

  tabBarItem = [controllerCopy tabBarItem];

  if (!tabBarItem)
  {
    tabBarItem2 = MCDGeneralLogging(v10);
    if (!os_log_type_enabled(tabBarItem2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      v23 = MCDGeneralLogging(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        title = [itemCopy title];
        artworkImage2 = [itemCopy artworkImage];
        v26 = @"NO";
        if (!artworkImage2)
        {
          v26 = @"YES";
        }

        v30 = 138412546;
        v31 = title;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_25AD8E000, v23, OS_LOG_TYPE_DEFAULT, "Creating tab bar item for item: %@, artwork is nil? %@", &v30, 0x16u);
      }

      v27 = objc_alloc(MEMORY[0x277D75B28]);
      title2 = [itemCopy title];
      tabBarItem2 = [v27 initWithTitle:title2 image:v8 selectedImage:v8];
      goto LABEL_19;
    }

    title2 = [itemCopy title];
    v30 = 138412290;
    v31 = title2;
    _os_log_impl(&dword_25AD8E000, tabBarItem2, OS_LOG_TYPE_DEFAULT, "No existing tab bar item and artwork for item: %@", &v30, 0xCu);
    goto LABEL_13;
  }

  tabBarItem2 = [controllerCopy tabBarItem];
  v12 = MCDGeneralLogging(tabBarItem2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    title3 = [itemCopy title];
    v30 = 138412290;
    v31 = title3;
    _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Examining existing tab bar item and artwork for item: %@", &v30, 0xCu);
  }

  title4 = [tabBarItem2 title];
  title5 = [itemCopy title];
  v16 = [title4 isEqualToString:title5];

  if ((v16 & 1) == 0)
  {
    title2 = MCDGeneralLogging(v17);
    if (os_log_type_enabled(title2, OS_LOG_TYPE_DEFAULT))
    {
      title6 = [itemCopy title];
      v30 = 138412290;
      v31 = title6;
      v21 = "Titles differ; invalidating tab bar item: %@";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  title2 = MCDGeneralLogging(v17);
  v19 = os_log_type_enabled(title2, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v19)
    {
      title6 = [itemCopy title];
      v30 = 138412290;
      v31 = title6;
      v21 = "New image provided; invalidating tab bar item: %@";
LABEL_12:
      _os_log_impl(&dword_25AD8E000, title2, OS_LOG_TYPE_DEFAULT, v21, &v30, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v19)
  {
    title7 = [itemCopy title];
    v30 = 138412290;
    v31 = title7;
    _os_log_impl(&dword_25AD8E000, title2, OS_LOG_TYPE_DEFAULT, "Repurposing tab bar item and artwork for tab bar item: %@", &v30, 0xCu);
  }

LABEL_19:

  return tabBarItem2;
}

- (id)_hostTabAtIndex:(unint64_t)index dummyTab:(BOOL)tab
{
  v33 = *MEMORY[0x277D85DE8];
  if (tab)
  {
    v4 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:0 tabbedBrowsing:1];
  }

  else
  {
    container = [(MCDBrowsableContentNavigationController *)self container];
    v8 = [container containerAtIndex:index];

    container2 = [(MCDBrowsableContentNavigationController *)self container];
    v10 = [container2 cachedItemForIndex:index];

    if ([v10 isContainer] && (objc_msgSend(v10, "isPlayable") & 1) == 0)
    {
      title = [v10 title];
      viewControllers = [(MCDBrowsableContentNavigationController *)self viewControllers];
      v13 = [viewControllers count];

      if (v13 <= index)
      {
        v4 = 0;
      }

      else
      {
        viewControllers2 = [(MCDBrowsableContentNavigationController *)self viewControllers];
        v4 = [viewControllers2 objectAtIndexedSubscript:index];
      }

      container3 = [(MCDBrowsableContentTableViewController *)v4 container];
      identifier = [container3 identifier];
      identifier2 = [v8 identifier];
      v18 = [identifier isEqualToString:identifier2];

      if ((v18 & 1) == 0)
      {
        v20 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:v8 tabbedBrowsing:1];

        v4 = v20;
      }

      v21 = MCDGeneralLogging(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        title2 = [v10 title];
        artworkImage = [v10 artworkImage];
        v24 = @"NO";
        if (!artworkImage)
        {
          v24 = @"YES";
        }

        v29 = 138412546;
        v30 = title2;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_25AD8E000, v21, OS_LOG_TYPE_DEFAULT, "Adding view controller for tab: %@, artwork is nil? %@", &v29, 0x16u);
      }

      [(MCDBrowsableContentTableViewController *)v4 setTitle:title];
      v25 = [(MCDBrowsableContentNavigationController *)self _tabBarItemForViewController:v4 fromItem:v10];
      tabBarItem = [(MCDBrowsableContentTableViewController *)v4 tabBarItem];
      v27 = [v25 isEqual:tabBarItem];

      if ((v27 & 1) == 0)
      {
        [(MCDBrowsableContentTableViewController *)v4 setTabBarItem:v25];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)updateTitleAndTabBarItemsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  viewControllers = [(MCDBrowsableContentNavigationController *)self viewControllers];
  v6 = [viewControllers mutableCopy];

  v7 = [v6 count];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__MCDBrowsableContentNavigationController_updateTitleAndTabBarItemsAtIndexes___block_invoke;
  v9[3] = &unk_279924290;
  v10 = v6;
  v11 = v7;
  v9[4] = self;
  v8 = v6;
  [indexesCopy enumerateIndexesUsingBlock:v9];

  [(MCDBrowsableContentNavigationController *)self setViewControllers:v8];
}

void __78__MCDBrowsableContentNavigationController_updateTitleAndTabBarItemsAtIndexes___block_invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) > a2)
  {
    v4 = [*(*(a1 + 32) + 1280) cachedItemForIndex:a2];
    if ([v4 isContainer] && (objc_msgSend(v4, "isPlayable") & 1) == 0)
    {
      v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
      v6 = MCDGeneralLogging(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 title];
        v8 = [v4 artworkImage];
        v9 = @"NO";
        if (!v8)
        {
          v9 = @"YES";
        }

        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Adding title for tab: %@, artwork is nil? %@", &v14, 0x16u);
      }

      v10 = [v4 title];
      [v5 setTitle:v10];

      v11 = [*(a1 + 32) _tabBarItemForViewController:v5 fromItem:v4];
      v12 = [v5 tabBarItem];
      v13 = [v11 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        [v5 setTabBarItem:v11];
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MCDBrowsableContentNavigationController;
  [(MCDBrowsableContentNavigationController *)&v9 viewWillAppear:appear];
  traitCollection = [(MCDBrowsableContentNavigationController *)self traitCollection];
  -[MCDBrowsableContentNavigationController setHasCarScreen:](self, "setHasCarScreen:", [traitCollection userInterfaceIdiom] == 3);

  didFinishInitialLoad = [(MCDBrowsableContentNavigationController *)self didFinishInitialLoad];
  if (didFinishInitialLoad && (didFinishInitialLoad = [(MCDBrowsableContentNavigationController *)self didFinishInitialViewAppear], (didFinishInitialLoad & 1) == 0))
  {
    v7 = MCDGeneralLogging(didFinishInitialLoad);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Container finished initial load when viewWillAppear is called, start loading host tabs", v8, 2u);
    }

    [(MCDBrowsableContentNavigationController *)self _updateNowPlayingButtonVisibility];
    [(MCDBrowsableContentNavigationController *)self _loadAllHostTabs];
    [(MCDBrowsableContentNavigationController *)self setDidFinishInitialViewAppear:1];
  }

  else
  {
    v6 = MCDGeneralLogging(didFinishInitialLoad);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "viewWillAppear called for MCDBrowsableContentNavigationController, but container isn't finished loading yet", v8, 2u);
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MCDBrowsableContentNavigationController;
  [(MCDBrowsableContentNavigationController *)&v9 viewDidAppear:appear];
  [(MCDBrowsableContentNavigationController *)self setVisible:1];
  if ([(MCDBrowsableContentNavigationController *)self didFinishInitialViewAppear]|| (v4 = [(MCDBrowsableContentNavigationController *)self didFinishInitialLoad], !v4))
  {
    if (![(MCDBrowsableContentNavigationController *)self didFinishInitialViewAppear])
    {
      didFinishInitialViewAppear = [(MCDBrowsableContentNavigationController *)self didFinishInitialViewAppear];
      if ((didFinishInitialViewAppear & 1) == 0)
      {
        v7 = MCDGeneralLogging(didFinishInitialViewAppear);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "viewDidAppear called for MCDBrowsableContentNavigationController, but container isn't finished loading yet", v8, 2u);
        }
      }
    }
  }

  else
  {
    v5 = MCDGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Container finished initial load when viewDidAppear is called, start loading host tabs", v8, 2u);
    }

    [(MCDBrowsableContentNavigationController *)self _updateNowPlayingButtonVisibility];
    [(MCDBrowsableContentNavigationController *)self _loadAllHostTabs];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MCDBrowsableContentNavigationController;
  [(MCDBrowsableContentNavigationController *)&v4 viewWillDisappear:disappear];
  [(MCDBrowsableContentNavigationController *)self setVisible:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = MCDBrowsableContentNavigationController;
  [(MCDBrowsableContentNavigationController *)&v8 traitCollectionDidChange:change];
  traitCollection = [(MCDBrowsableContentNavigationController *)self traitCollection];
  -[MCDBrowsableContentNavigationController setHasCarScreen:](self, "setHasCarScreen:", [traitCollection userInterfaceIdiom] == 3);

  v6 = MCDGeneralLogging(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "traitCollectionDidChange is called", v7, 2u);
  }
}

@end