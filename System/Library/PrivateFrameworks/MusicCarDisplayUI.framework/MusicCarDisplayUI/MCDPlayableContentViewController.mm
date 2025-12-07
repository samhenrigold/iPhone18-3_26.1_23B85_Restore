@interface MCDPlayableContentViewController
- (MCDPlayableContentViewController)initWithBundleID:(id)d stack:(id)stack;
- (id)_createRootViewController;
- (id)_createSectionedRootViewController;
- (id)currentStack;
- (void)_modelDidInvalidate:(id)invalidate;
- (void)_nowPlayingIdentifiersChanged:(id)changed;
- (void)_populateStack;
- (void)_setupView;
- (void)refreshNavigationStackForLaunch;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MCDPlayableContentViewController

- (MCDPlayableContentViewController)initWithBundleID:(id)d stack:(id)stack
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stackCopy = stack;
  v19.receiver = self;
  v19.super_class = MCDPlayableContentViewController;
  v8 = [(MCDPlayableContentViewController *)&v19 init];
  if (v8)
  {
    v9 = [dCopy copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    v12 = MCDGeneralLogging(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = dCopy;
      _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Initializing a new view for bundle: %@", buf, 0xCu);
    }

    v13 = [[MCDPCModel alloc] initWithBundleID:v8->_bundleID];
    model = v8->_model;
    v8->_model = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCABD8]);
    modelInvalidationQueue = v8->_modelInvalidationQueue;
    v8->_modelInvalidationQueue = v15;

    [(NSOperationQueue *)v8->_modelInvalidationQueue setQualityOfService:25];
    [(NSOperationQueue *)v8->_modelInvalidationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_modelInvalidationQueue setName:@"com.apple.MusicCarDisplayUI.playableContent.invalidate"];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__modelDidInvalidate_ name:@"didInvalidate" object:0];
    [defaultCenter addObserver:v8 selector:sel__nowPlayingIdentifiersChanged_ name:*MEMORY[0x277D27A78] object:0];
    objc_storeStrong(&v8->_stackToRebuild, stack);
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MCDPlayableContentViewController;
  [(MCDPlayableContentViewController *)&v5 viewWillAppear:appear];
  if (self->_bundleID)
  {
    v4 = MRMediaRemoteApplicationSupportsSectionedBrowsing() != 0;
  }

  else
  {
    v4 = 0;
  }

  self->_hasSectionedContent = v4;
  [(MCDPlayableContentViewController *)self _setupView];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = MCDPlayableContentViewController;
  [(MCDPlayableContentViewController *)&v9 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  bundleID = self->_bundleID;
  self->_bundleID = 0;

  model = self->_model;
  self->_model = 0;

  stackToRebuild = self->_stackToRebuild;
  self->_stackToRebuild = 0;

  rootContainer = self->_rootContainer;
  self->_rootContainer = 0;
}

- (void)_nowPlayingIdentifiersChanged:(id)changed
{
  changedCopy = changed;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MCDPlayableContentViewController__nowPlayingIdentifiersChanged___block_invoke;
  block[3] = &unk_279923B08;
  v6 = changedCopy;
  v4 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__MCDPlayableContentViewController__nowPlayingIdentifiersChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v2 = [v1 valueForKey:*MEMORY[0x277D27E70]];

  v4 = MCDGeneralLogging(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Received kMRMediaRemoteBrowsableContentNowPlayingIdentifiersUpdatedNotification", v6, 2u);
  }

  v5 = +[MCDBrowsableContentUtilities sharedInstance];
  [v5 setNowPlayingIdentifiers:v2];
}

- (id)_createSectionedRootViewController
{
  if (!self->_rootContainer)
  {
    containerForRoot = [(MCDPCModel *)self->_model containerForRoot];
    rootContainer = self->_rootContainer;
    self->_rootContainer = containerForRoot;
  }

  [(MCDPlayableContentViewController *)self setNavigationBarHidden:1];
  v5 = [[MCDBrowsableContentNavigationController alloc] initWithBundleID:self->_bundleID model:self->_model];

  return v5;
}

- (id)_createRootViewController
{
  if (!self->_rootContainer)
  {
    containerForRoot = [(MCDPCModel *)self->_model containerForRoot];
    rootContainer = self->_rootContainer;
    self->_rootContainer = containerForRoot;
  }

  v5 = [[MCDBrowsableContentTableViewController alloc] initWithContainer:self->_rootContainer tabbedBrowsing:0];

  return v5;
}

- (void)_setupView
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!self->_hasLoaded)
  {
    if (self->_bundleID)
    {
      v3 = MRMediaRemoteApplicationSupportsBrowsableContent() != 0;
    }

    else
    {
      v3 = 0;
    }

    self->_hasBrowsableContent = v3;
    v4 = +[MCDBrowsableContentUtilities sharedInstance];
    [v4 setNowPlayingIdentifiers:0];

    if (!self->_hasBrowsableContent)
    {
      v8 = MCDGeneralLogging(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "App does not use browsable content API, pushing to now playing", buf, 2u);
      }

      v9 = [MCDNowPlayingViewController alloc];
      bundleID = [(MCDPCModel *)self->_model bundleID];
      appTitle = [(MCDPCModel *)self->_model appTitle];
      v7 = [(MCDNowPlayingViewController *)v9 initWithPlayableBundleID:bundleID appName:appTitle];

      v21 = v7;
      v12 = MEMORY[0x277CBEA60];
      v13 = &v21;
      goto LABEL_13;
    }

    if (self->_stackToRebuild)
    {
      v6 = MCDGeneralLogging(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Rebuilding stack for app launch", buf, 2u);
      }

      v7 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__MCDPlayableContentViewController__setupView__block_invoke;
      block[3] = &unk_279923B08;
      block[4] = self;
      dispatch_async(v7, block);
      goto LABEL_14;
    }

    if (!self->_hasLoaded)
    {
      hasSectionedContent = self->_hasSectionedContent;
      v16 = MCDGeneralLogging(v5);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (hasSectionedContent)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Creating view controller for sectioned browsing", buf, 2u);
        }

        _createSectionedRootViewController = [(MCDPlayableContentViewController *)self _createSectionedRootViewController];
      }

      else
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Creating view controller for table view browsing", buf, 2u);
        }

        _createSectionedRootViewController = [(MCDPlayableContentViewController *)self _createRootViewController];
      }

      v7 = _createSectionedRootViewController;
      v22[0] = _createSectionedRootViewController;
      v12 = MEMORY[0x277CBEA60];
      v13 = v22;
LABEL_13:
      v14 = [v12 arrayWithObjects:v13 count:1];
      [(MCDPlayableContentViewController *)self setViewControllers:v14 animated:0];

      self->_hasLoaded = 1;
LABEL_14:
    }
  }
}

_BYTE *__46__MCDPlayableContentViewController__setupView__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1498] & 1) == 0)
  {
    [result _populateStack];
    result = *(a1 + 32);
  }

  result[1498] = 1;
  return result;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  if ([controllersCopy count])
  {
    v7.receiver = self;
    v7.super_class = MCDPlayableContentViewController;
    [(MCDPlayableContentViewController *)&v7 setViewControllers:controllersCopy animated:animatedCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MCDPlayableContentViewController_setViewControllers_animated___block_invoke;
    block[3] = &unk_279923B08;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)refreshNavigationStackForLaunch
{
  v32 = *MEMORY[0x277D85DE8];
  playableContentPlaybackManager = [(MCDPCModel *)self->_model playableContentPlaybackManager];
  currentPlayingSong = [playableContentPlaybackManager currentPlayingSong];
  if (currentPlayingSong)
  {
    isCurrentPlayingApp = [(MCDPCModel *)self->_model isCurrentPlayingApp];
  }

  else
  {
    isCurrentPlayingApp = 0;
  }

  [(MCDPCModel *)self->_model bundleID];
  v6 = MRMediaRemoteApplicationSupportsImmediatePlayback();
  visibleViewController = [(MCDPlayableContentViewController *)self visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && isCurrentPlayingApp)
  {
    v10 = MCDGeneralLogging(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Now Playing view already frontmost when Now Playing app tapped", buf, 2u);
    }

LABEL_29:

    return;
  }

  v25 = v6;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  viewControllers = [(MCDPlayableContentViewController *)self viewControllers];
  v12 = [viewControllers countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(viewControllers);
      }

      v16 = *(*(&v26 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [viewControllers countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v10 = v16;

    if (!v10)
    {
      goto LABEL_21;
    }

    v18 = MCDGeneralLogging(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEFAULT, "popping from view controller to Now Playing view", buf, 2u);
    }

    v19 = [(MCDPlayableContentViewController *)self popToViewController:v10 animated:0];
    goto LABEL_29;
  }

LABEL_16:

LABEL_21:
  if (v25 != 0 || isCurrentPlayingApp)
  {
    if (v25)
    {
      v20 = MCDGeneralLogging(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v20, OS_LOG_TYPE_DEFAULT, "Sending play command since the app supports immediate playback", buf, 2u);
      }

      v17 = MRMediaRemoteSendCommandToApp();
    }

    v21 = MCDGeneralLogging(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v21, OS_LOG_TYPE_DEFAULT, "Show Now Playing view on app foreground", buf, 2u);
    }

    v22 = [MCDNowPlayingViewController alloc];
    bundleID = [(MCDPCModel *)self->_model bundleID];
    appTitle = [(MCDPCModel *)self->_model appTitle];
    v10 = [(MCDNowPlayingViewController *)v22 initWithPlayableBundleID:bundleID appName:appTitle];

    [v10 setShowNavigationBar:self->_hasSectionedContent];
    [(MCDPlayableContentViewController *)self pushViewController:v10 animated:0];
    goto LABEL_29;
  }
}

- (void)_modelDidInvalidate:(id)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  modelInvalidationQueue = [(MCDPlayableContentViewController *)self modelInvalidationQueue];
  operationCount = [modelInvalidationQueue operationCount];

  if (operationCount < 4)
  {
    modelInvalidationQueue2 = [(MCDPlayableContentViewController *)self modelInvalidationQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke;
    v9[3] = &unk_279923B08;
    v9[4] = self;
    [modelInvalidationQueue2 addOperationWithBlock:v9];
  }

  else
  {
    modelInvalidationQueue2 = MCDGeneralLogging(v6);
    if (os_log_type_enabled(modelInvalidationQueue2, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [(MCDPlayableContentViewController *)self bundleID];
      *buf = 138543362;
      v11 = bundleID;
      _os_log_impl(&dword_25AD8E000, modelInvalidationQueue2, OS_LOG_TYPE_DEFAULT, "Cancelling extra model invalidation for %{public}@.", buf, 0xCu);
    }
  }
}

void __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke(uint64_t a1)
{
  v1 = a1;
  v65 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v1 + 32) bundleID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Playable content invalidated, refreshing all index paths for %{public}@", &buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v64 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  v53 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_41;
  block[3] = &unk_279923D30;
  block[4] = *(v1 + 32);
  block[5] = &v48;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = [v49[5] firstObject];
  while (v42[5])
  {
    v5 = dispatch_semaphore_create(0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v42[5];
      v7 = MCDGeneralLogging(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 0;
        _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Adding MCDBrowsableContentTableViewController after model invalidate", v58, 2u);
      }

      [v4 addObject:v6];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_42;
      v34[3] = &unk_279923D58;
      p_buf = &buf;
      v8 = v6;
      v35 = v8;
      v38 = &v54;
      v39 = &v48;
      v40 = &v41;
      v9 = v5;
      v36 = v9;
      [v8 reloadWithCompletion:v34];
      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v42[5];
        v11 = MCDGeneralLogging(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v1;
          v13 = [*(v1 + 32) bundleID];
          *v58 = 138543362;
          v59 = v13;
          _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Adding MCDBrowsableNavigationController to view controllers after model invalidate for %{public}@", v58, 0xCu);

          v1 = v12;
        }

        [v4 addObject:v10];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_43;
        v27[3] = &unk_279923D58;
        v30 = &buf;
        v8 = v10;
        v28 = v8;
        v31 = &v54;
        v32 = &v48;
        v33 = &v41;
        v14 = v5;
        v29 = v14;
        [v8 invalidateAndReloadTabsWithCompletion:v27];
        dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v16 = MCDGeneralLogging(isKindOfClass);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(v1 + 32) bundleID];
            *v58 = 138543362;
            v59 = v17;
            _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Adding now playing view controller for model invalidate for %{public}@", v58, 0xCu);
          }

          [v4 addObject:v42[5]];
          v18 = v55[3];
          if (v18 + 1 >= [v49[5] count])
          {
            v20 = 0;
          }

          else
          {
            v19 = v49[5];
            ++v55[3];
            v20 = [v19 objectAtIndexedSubscript:?];
          }

          v22 = v42[5];
          v42[5] = v20;

          v21 = *(&buf + 1);
        }

        else
        {
          v21 = v42;
        }

        v8 = v21[5];
        v21[5] = 0;
      }
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_44;
  v25[3] = &unk_279923AB8;
  v25[4] = *(v1 + 32);
  v26 = v4;
  v23 = v4;
  v24 = MEMORY[0x277D85CD0];
  dispatch_sync(MEMORY[0x277D85CD0], v25);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&buf, 8);
}

void __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_41(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewControllers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = MCDGeneralLogging(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) bundleID];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Fetched current view controllers to reload after playable content invalidated for %{public}@: %{public}@", &v9, 0x16u);
  }
}

intptr_t __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_42(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) container];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 24) + 1;
  if (v5 < [*(*(*(a1 + 64) + 8) + 40) count])
  {
    v6 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24) + 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 container];
      v8 = [v7 isValidForRefreshedParent:*(*(*(a1 + 48) + 8) + 40)];

      v10 = MCDGeneralLogging(v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v11)
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Container is valid for table view", &v24, 2u);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_17;
      }

      if (!v11)
      {
        goto LABEL_15;
      }

      LOWORD(v24) = 0;
      v19 = "Container isn't valid for refreshed parent for table views";
      v20 = v10;
      v21 = 2;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v15 = *(*(*(a1 + 64) + 8) + 40);
        ++*(*(*(a1 + 56) + 8) + 24);
        v16 = [v15 objectAtIndexedSubscript:?];
        v17 = *(*(a1 + 72) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
LABEL_16:

LABEL_17:
        return dispatch_semaphore_signal(*(a1 + 40));
      }

      v10 = MCDGeneralLogging(isKindOfClass);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v22 = *(*(a1 + 72) + 8);
        v18 = *(v22 + 40);
        *(v22 + 40) = 0;
        goto LABEL_16;
      }

      v24 = 138543362;
      v25 = v6;
      v19 = "Next view controller is neither a table view nor now playing view when current VC is a table view, which shouldn't be here: %{public}@";
      v20 = v10;
      v21 = 12;
    }

    _os_log_impl(&dword_25AD8E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v24, v21);
    goto LABEL_15;
  }

  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_43(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) container];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 24) + 1;
  if (v5 < [*(*(*(a1 + 64) + 8) + 40) count])
  {
    v6 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24) + 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) selectedViewController];
      v8 = [v7 container];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [v6 container];
      v12 = [v11 isValidForRefreshedParent:*(*(*(a1 + 48) + 8) + 40)];

      v14 = MCDGeneralLogging(v13);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v15)
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_25AD8E000, v14, OS_LOG_TYPE_DEFAULT, "Container is valid for tab bar", &v28, 2u);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_17;
      }

      if (!v15)
      {
        goto LABEL_15;
      }

      LOWORD(v28) = 0;
      v23 = "Container isn't valid for tab bar";
      v24 = v14;
      v25 = 2;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v19 = *(*(*(a1 + 64) + 8) + 40);
        ++*(*(*(a1 + 56) + 8) + 24);
        v20 = [v19 objectAtIndexedSubscript:?];
        v21 = *(*(a1 + 72) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;
LABEL_16:

LABEL_17:
        return dispatch_semaphore_signal(*(a1 + 40));
      }

      v14 = MCDGeneralLogging(isKindOfClass);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v26 = *(*(a1 + 72) + 8);
        v22 = *(v26 + 40);
        *(v26 + 40) = 0;
        goto LABEL_16;
      }

      v28 = 138543362;
      v29 = v6;
      v23 = "Next view controller is neither a table view nor a now playing view when current VC is a tab bar, which shouldn't be here: %{public}@";
      v24 = v14;
      v25 = 12;
    }

    _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, v23, &v28, v25);
    goto LABEL_15;
  }

  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __56__MCDPlayableContentViewController__modelDidInvalidate___block_invoke_44(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleID];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Setting view controllers after model invalidate for %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) setViewControllers:*(a1 + 40) animated:0];
}

- (void)_populateStack
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  objectEnumerator = [(NSArray *)self->_stackToRebuild objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  array = [MEMORY[0x277CBEB18] array];
  if (nextObject)
  {
    do
    {
      indexPath = [nextObject indexPath];
      v7 = [indexPath length];

      if (!v7)
      {
        rootContainer = self->_rootContainer;
        if (!rootContainer)
        {
          containerForRoot = [(MCDPCModel *)self->_model containerForRoot];
          v10 = self->_rootContainer;
          self->_rootContainer = containerForRoot;

          rootContainer = self->_rootContainer;
        }

        objc_storeStrong(v33 + 5, rootContainer);
      }

      if (v33[5])
      {
        [array addObject:?];
      }

      nextObject2 = [objectEnumerator nextObject];
      v12 = v39[5];
      v39[5] = nextObject2;

      v13 = dispatch_semaphore_create(0);
      v14 = v33[5];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50__MCDPlayableContentViewController__populateStack__block_invoke;
      v21[3] = &unk_279923D80;
      v23 = &v38;
      v24 = &v26;
      v25 = &v32;
      v15 = v13;
      v22 = v15;
      [v14 refreshWithCompletion:v21];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = v39[5];

      objc_storeStrong(v33 + 5, v27[5]);
      nextObject = v16;
    }

    while (v16);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MCDPlayableContentViewController__populateStack__block_invoke_2;
  block[3] = &unk_279923AB8;
  v19 = array;
  selfCopy = self;
  v17 = array;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
}

intptr_t __50__MCDPlayableContentViewController__populateStack__block_invoke(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    v3 = [v2 indexPath];
    v4 = [*(*(a1[7] + 8) + 40) containerAtIndex:{objc_msgSend(v3, "indexAtPosition:", objc_msgSend(v3, "length") - 1)}];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (([*(*(a1[6] + 8) + 40) isValidForRefreshedParent:*(*(a1[7] + 8) + 40)] & 1) == 0)
    {
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }
  }

  v9 = a1[4];

  return dispatch_semaphore_signal(v9);
}

void __50__MCDPlayableContentViewController__populateStack__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [MCDBrowsableContentTableViewController alloc];
        v10 = [(MCDBrowsableContentTableViewController *)v9 initWithContainer:v8, v11];
        [(MCDBrowsableContentTableViewController *)v10 reloadWithCompletion:0];
        [v2 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) setViewControllers:v2 animated:0];
}

- (id)currentStack
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MCDGeneralLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    viewControllers = [(MCDPlayableContentViewController *)self viewControllers];
    *buf = 138412290;
    v22 = viewControllers;
    _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "current stack: %@", buf, 0xCu);
  }

  if (self->_hasSectionedContent)
  {
    v5 = 0;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    viewControllers2 = [(MCDPlayableContentViewController *)self viewControllers];
    v8 = [viewControllers2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(viewControllers2);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            container = [v12 container];
            v14 = [_MCDStackItem stackItemWithContainer:container];

            [array addObject:v14];
          }
        }

        v9 = [viewControllers2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([array count] == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = array;
    }
  }

  return v5;
}

@end