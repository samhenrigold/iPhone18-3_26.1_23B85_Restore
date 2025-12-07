@interface MCDPCModel
- (CGSize)imageSize;
- (MCDPCModel)initWithBundleID:(id)d;
- (NSString)appTitle;
- (id)_errorForNotification:(id)notification;
- (id)containerForRoot;
- (id)itemsFromMRContentItems:(id)items;
- (void)_browsableContentDidRegisterNotification:(id)notification;
- (void)_contentItemsUpdated:(id)updated;
- (void)_dataSourceInvalidated:(id)invalidated;
- (void)_finishBeginLoadingNotification:(id)notification;
- (void)_finishPlaybackNotification:(id)notification;
- (void)_invalidateBeginLoadingTimeoutTimer;
- (void)_invalidatePlaybackProgressTimeoutTimer;
- (void)_nowPlayingDidChangeNotification:(id)notification;
- (void)_registerForClientContent;
- (void)_registerNotifications;
- (void)_setupBeginLoadingTimeoutTimerWithCompletion:(id)completion;
- (void)_setupPlaybackProgressTimeoutTimerWithCompletion:(id)completion;
- (void)beginLoadingItemAtIndexPath:(id)path completion:(id)completion;
- (void)contentManager:(id)manager itemDidChange:(id)change response:(id)response;
- (void)dealloc;
- (void)getChildrenAtIndexPath:(id)path inRange:(_NSRange)range completion:(id)completion;
- (void)getChildrenSupportsPlaybackProgressForIndexPath:(id)path withCompletion:(id)completion;
- (void)getCountOfChildrenAtIndexPath:(id)path withCompletion:(id)completion;
- (void)getNowPlayingIdentifiersWithCompletion:(id)completion;
- (void)initiatePlaybackAtIndexPath:(id)path completion:(id)completion;
@end

@implementation MCDPCModel

- (MCDPCModel)initWithBundleID:(id)d
{
  dCopy = d;
  v23.receiver = self;
  v23.super_class = MCDPCModel;
  v6 = [(MCDPCModel *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.mediaRemote", v8);
    mediaRemoteNotificationQueue = v7->_mediaRemoteNotificationQueue;
    v7->_mediaRemoteNotificationQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.mediaRemote.items", v11);
    mediaRemoteItemQueue = v7->_mediaRemoteItemQueue;
    v7->_mediaRemoteItemQueue = v12;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    items = v7->_items;
    v7->_items = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    beginLoadingBlocks = v7->_beginLoadingBlocks;
    v7->_beginLoadingBlocks = dictionary2;

    v18 = [MCDPlayableContentPlaybackManager alloc];
    v19 = objc_alloc_init(MCDPlayableContentNowPlayingDataSource);
    v20 = [(_MCDNowPlayingContentManager *)v18 initWithDelegate:v7 dataSource:v19 bundleID:dCopy];
    playableContentPlaybackManager = v7->_playableContentPlaybackManager;
    v7->_playableContentPlaybackManager = v20;

    [(MCDPCModel *)v7 _registerForClientContent];
  }

  return v7;
}

- (void)dealloc
{
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  [(_MCDNowPlayingContentManager *)self->_playableContentPlaybackManager endRequestObservation];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDPCModel;
  [(MCDPCModel *)&v4 dealloc];
}

- (void)contentManager:(id)manager itemDidChange:(id)change response:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  playerPath = [response playerPath];
  representedBundleID = [playerPath representedBundleID];
  -[MCDPCModel setCurrentPlayingApp:](self, "setCurrentPlayingApp:", [representedBundleID isEqualToString:self->_bundleID]);

  v9 = MCDGeneralLogging(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = self->_bundleID;
    isCurrentPlayingApp = [(MCDPCModel *)self isCurrentPlayingApp];
    v12 = @"NO";
    if (isCurrentPlayingApp)
    {
      v12 = @"YES";
    }

    v13 = 138543618;
    v14 = bundleID;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is now playing app? %{public}@", &v13, 0x16u);
  }
}

- (void)_registerForClientContent
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v5, &location);
  MRMediaRemoteGetSupportedBrowsableContentAPIs();

  [(MCDPCModel *)self _registerNotifications:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__MCDPCModel__registerForClientContent__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSupportedAPIMask:a2];
  [WeakRetained _browsableContentDidRegisterNotification:0];
}

- (void)_registerNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__dataSourceInvalidated_ name:*MEMORY[0x277D27A48] object:0];
  [defaultCenter addObserver:self selector:sel__contentItemsUpdated_ name:*MEMORY[0x277D27AD8] object:0];
  [defaultCenter addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27B38] object:0];
  [defaultCenter addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27E20] object:0];
  [defaultCenter addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27BC8] object:0];
  [defaultCenter addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27B50] object:0];
  MRMediaRemoteRegisterForNowPlayingNotifications();
  playableContentPlaybackManager = [(MCDPCModel *)self playableContentPlaybackManager];
  [playableContentPlaybackManager beginRequestObservation];
}

- (void)_dataSourceInvalidated:(id)invalidated
{
  objc_initWeak(&location, self);
  mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__MCDPCModel__dataSourceInvalidated___block_invoke;
  v5[3] = &unk_279923A90;
  objc_copyWeak(&v6, &location);
  dispatch_async(mediaRemoteNotificationQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __37__MCDPCModel__dataSourceInvalidated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MCDGeneralLogging(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v3, OS_LOG_TYPE_DEFAULT, "Data source invalidated", buf, 2u);
    }

    v4 = v2[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__MCDPCModel__dataSourceInvalidated___block_invoke_39;
    block[3] = &unk_279923B08;
    v9 = v2;
    dispatch_sync(v4, block);
    v6 = MCDGeneralLogging(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Posting MCDPCDidInvalidateNotificationName", buf, 2u);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"didInvalidate" object:0];
  }
}

void __37__MCDPCModel__dataSourceInvalidated___block_invoke_39(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setItems:v2];
}

- (void)_contentItemsUpdated:(id)updated
{
  v24 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = MCDGeneralLogging(updatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Content items updated", buf, 2u);
  }

  userInfo = [updatedCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D27A58]];
  bundleID = [(MCDPCModel *)self bundleID];
  v9 = [v7 isEqualToString:bundleID];

  if (v9)
  {
    v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D27E68]];
    if (v11)
    {
      v12 = [(MCDPCModel *)self itemsFromMRContentItems:v11];
      v13 = [v12 count];
      if (v13)
      {
        v18 = @"items";
        v19 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v16 = MCDGeneralLogging(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v16, OS_LOG_TYPE_DEFAULT, "Posting MCDPCDidUpdateContentNotificationName", buf, 2u);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"didUpdateContent" object:self userInfo:v14];
    }

    else
    {
      v12 = MCDGeneralLogging(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Got content items updated notification, but no updated content items", buf, 2u);
      }
    }
  }

  else
  {
    v11 = MCDGeneralLogging(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      bundleID2 = [(MCDPCModel *)self bundleID];
      *buf = 138543618;
      v21 = bundleID2;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Content items updated for wrong app, expected %{public}@, got %{public}@", buf, 0x16u);
    }
  }
}

- (void)_nowPlayingDidChangeNotification:(id)notification
{
  v4 = MCDGeneralLogging(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Posting MCDPCNowPlayingDidChangeNotificationName", v6, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"nowPlayingChange" object:self];
}

- (void)_browsableContentDidRegisterNotification:(id)notification
{
  v4 = MCDGeneralLogging(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Posting MCDPCAppReadyToFetchNotificationName", v6, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"appReadyToFetch" object:self];
}

- (NSString)appTitle
{
  v2 = MEMORY[0x277CC1E60];
  bundleID = [(MCDPCModel *)self bundleID];
  v4 = [v2 applicationProxyForIdentifier:bundleID];

  localizedName = [v4 localizedNameForContext:@"Car"];
  if (!localizedName)
  {
    localizedName = [v4 localizedName];
  }

  return localizedName;
}

- (id)containerForRoot
{
  v3 = [MCDPCContainer alloc];
  v4 = [MEMORY[0x277CCAA70] indexPathWithIndexes:0 length:0];
  v5 = [(MCDPCContainer *)v3 _initWithModel:self rootItem:0 indexPath:v4];

  return v5;
}

- (void)beginLoadingItemAtIndexPath:(id)path completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  supportedAPIMask = [(MCDPCModel *)self supportedAPIMask];
  v9 = (supportedAPIMask & 1) == 0;
  v10 = MCDGeneralLogging(supportedAPIMask);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API is not implemented", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (v11)
    {
      *buf = 138543362;
      v37 = pathCopy;
      _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Beginning to load item at index path: %{public}@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__finishBeginLoadingNotification_ name:*MEMORY[0x277D27A38] object:0];

    v13 = _MCDCreateMediaRemoteIndexPath(pathCopy);
    bundleID = [(MCDPCModel *)self bundleID];
    v15 = MRMediaRemoteBeginLoadingBrowsableContent();

    free(*v13);
    free(v13);
    v17 = MCDGeneralLogging(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v15 == 6)
      {
        if (v18)
        {
          *buf = 138543362;
          v37 = pathCopy;
          _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API is not implemented, receiving unsupported operation for index path: %{public}@", buf, 0xCu);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        if (v18)
        {
          *buf = 67109120;
          LODWORD(v37) = v15;
          _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API error, code: %d", buf, 8u);
        }

        if (completionCopy)
        {
          v26 = MEMORY[0x277CCA9B8];
          v34 = *MEMORY[0x277CCA450];
          v27 = MCDCarDisplayBundle(v25);
          v28 = [v27 localizedStringForKey:@"ERROR_LOADING_ITEM" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
          v35 = v28;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v30 = [v26 errorWithDomain:@"MCDError" code:v15 userInfo:v29];
          (completionCopy)[2](completionCopy, v30);
        }
      }
    }

    else
    {
      if (v18)
      {
        *buf = 138543362;
        v37 = pathCopy;
        _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API in progress for %{public}@", buf, 0xCu);
      }

      beginLoadingBlocks = [(MCDPCModel *)self beginLoadingBlocks];
      v20 = [beginLoadingBlocks objectForKeyedSubscript:pathCopy];
      v21 = v20 == 0;

      if (v21)
      {
        v22 = [completionCopy copy];
        v23 = MEMORY[0x25F856270]();
        beginLoadingBlocks2 = [(MCDPCModel *)self beginLoadingBlocks];
        [beginLoadingBlocks2 setObject:v23 forKeyedSubscript:pathCopy];
      }

      objc_initWeak(buf, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__MCDPCModel_beginLoadingItemAtIndexPath_completion___block_invoke;
      v31[3] = &unk_279923E78;
      v32 = pathCopy;
      objc_copyWeak(&v33, buf);
      [(MCDPCModel *)self _setupBeginLoadingTimeoutTimerWithCompletion:v31];
      objc_destroyWeak(&v33);

      objc_destroyWeak(buf);
    }
  }
}

void __53__MCDPCModel_beginLoadingItemAtIndexPath_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API timed out, completion block wasn't called for index path: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = [v5 length];
  v7 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
  v8 = v7;
  v7[1] = v6;
  if (v6)
  {
    v9 = 0;
    *v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
    do
    {
      *(*v8 + 8 * v9) = [v5 indexAtPosition:v9];
      ++v9;
    }

    while (v6 != v9);
  }

  else
  {
    *v7 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*v8 length:{8 * objc_msgSend(v5, "length")}];

  v11 = objc_alloc(MEMORY[0x277CCAB88]);
  v12 = *MEMORY[0x277D27A38];
  v15 = *MEMORY[0x277D27AE8];
  v16 = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v14 = [v11 initWithName:v12 object:0 userInfo:v13];

  [WeakRetained _finishBeginLoadingNotification:v14];
}

- (void)_finishBeginLoadingNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D27A60]];
  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D27AE8]];

  v9 = v8;
  v10 = v8;
  bytes = [v10 bytes];
  v12 = [v10 length];

  v13 = MCDNSIndexPathFromMRMediaRemoteIndexPath(bytes, v12 >> 3);
  beginLoadingBlocks = [(MCDPCModel *)self beginLoadingBlocks];
  v15 = [beginLoadingBlocks objectForKeyedSubscript:v13];

  v16 = [v6 isEqualToNumber:&unk_286C30E30];
  if (v16)
  {
    v17 = MCDGeneralLogging(v16);
    beginLoadingBlocks2 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = v13;
        _os_log_impl(&dword_25AD8E000, beginLoadingBlocks2, OS_LOG_TYPE_DEFAULT, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification, beginLoadingPlayableContent API not implemented for index path: %{public}@", &v26, 0xCu);
      }

      v15[2](v15, 0);
      beginLoadingBlocks2 = [(MCDPCModel *)self beginLoadingBlocks];
      [beginLoadingBlocks2 setObject:0 forKeyedSubscript:v13];
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(MCDPCModel *)v13 _finishBeginLoadingNotification:beginLoadingBlocks2];
    }

    goto LABEL_20;
  }

  beginLoadingBlocks2 = [(MCDPCModel *)self _errorForNotification:notificationCopy];
  v19 = MCDGeneralLogging(beginLoadingBlocks2);
  beginLoadingBlocks3 = v19;
  if (v15)
  {
    v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (beginLoadingBlocks2)
    {
      if (v21)
      {
        v26 = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = v6;
        v22 = "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification for index path: %{public}@, beginLoadingPlayableContent API error: %{public}@";
        v23 = beginLoadingBlocks3;
        v24 = 22;
LABEL_17:
        _os_log_impl(&dword_25AD8E000, v23, OS_LOG_TYPE_DEFAULT, v22, &v26, v24);
      }
    }

    else if (v21)
    {
      v26 = 138543362;
      v27 = v13;
      v22 = "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification without error for index path: %{public}@";
      v23 = beginLoadingBlocks3;
      v24 = 12;
      goto LABEL_17;
    }

    (v15)[2](v15, beginLoadingBlocks2);
    beginLoadingBlocks3 = [(MCDPCModel *)self beginLoadingBlocks];
    [beginLoadingBlocks3 setObject:0 forKeyedSubscript:v13];
LABEL_19:

    goto LABEL_20;
  }

  v25 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (beginLoadingBlocks2)
  {
    if (v25)
    {
      [(MCDPCModel *)v6 _finishBeginLoadingNotification:v13, beginLoadingBlocks3];
    }

    goto LABEL_19;
  }

  if (v25)
  {
    [(MCDPCModel *)v13 _finishBeginLoadingNotification:beginLoadingBlocks3];
  }

  beginLoadingBlocks2 = beginLoadingBlocks3;
LABEL_20:

  [(MCDPCModel *)self _invalidateBeginLoadingTimeoutTimer];
}

- (void)getChildrenSupportsPlaybackProgressForIndexPath:(id)path withCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  supportedAPIMask = [(MCDPCModel *)self supportedAPIMask];
  v9 = supportedAPIMask;
  v10 = MCDGeneralLogging(supportedAPIMask);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 2) != 0)
  {
    if (v11)
    {
      *buf = 138543362;
      v25 = pathCopy;
      _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to fetch if children support playback progress for index path: %{public}@", buf, 0xCu);
    }

    v12 = _MCDCreateMediaRemoteIndexPath(pathCopy);
    bundleID = [(MCDPCModel *)self bundleID];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke;
    v20 = &unk_279923EA0;
    selfCopy = self;
    v22 = pathCopy;
    v23 = completionCopy;
    MRMediaRemoteBrowsableContentSupportsPlaybackProgress();

    free(*v12);
    free(v12);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke_63;
    v14[3] = &unk_279923EC8;
    v15 = v22;
    v16 = v23;
    [(MCDPCModel *)self _setupPlaybackProgressTimeoutTimerWithCompletion:v14];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "childItemsDisplayPlaybackProgress API is not implemented", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

uint64_t __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MCDGeneralLogging([*(a1 + 32) _invalidatePlaybackProgressTimeoutTimer]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Fetched children supporting playback progress for index path: %{public}@", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a2 != 0, 0);
}

uint64_t __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke_63(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Children support playback progress timed out for: %{public}@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)getNowPlayingIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  supportedAPIMask = [(MCDPCModel *)self supportedAPIMask];
  v6 = supportedAPIMask;
  v7 = MCDGeneralLogging(supportedAPIMask);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((v6 & 4) != 0)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to fetch now playing identifiers", buf, 2u);
    }

    v9 = completionCopy;
    MRMediaRemoteBrowsableContentGetNowPlayingContentIdentifiers();
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "now playing identifiers API is not implemented", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __53__MCDPCModel_getNowPlayingIdentifiersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetched now playing identifiers", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)getCountOfChildrenAtIndexPath:(id)path withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  v8 = MCDGeneralLogging(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = pathCopy;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Fetching count of children at index path: %@", buf, 0xCu);
  }

  v9 = _MCDCreateMediaRemoteIndexPath(pathCopy);
  bundleID = [(MCDPCModel *)self bundleID];
  v13 = pathCopy;
  v14 = completionCopy;
  v11 = completionCopy;
  v12 = pathCopy;
  MRMediaRemoteGetCountOfBrowsableContentChildItems();

  free(*v9);
  free(v9);
}

uint64_t __59__MCDPCModel_getCountOfChildrenAtIndexPath_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MCDGeneralLogging(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2050;
    v10 = a2;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Completed fetching count of children at index path: %{public}@, number of children: %{public}llu", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)getChildrenAtIndexPath:(id)path inRange:(_NSRange)range completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  v9 = MCDGeneralLogging(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = pathCopy;
    _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Fetching children at index path: %{public}@", buf, 0xCu);
  }

  v10 = _MCDCreateMediaRemoteIndexPath(pathCopy);
  bundleID = [(MCDPCModel *)self bundleID];
  v14 = pathCopy;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = pathCopy;
  MRMediaRemoteGetBrowsableContentChildItems();

  free(*v10);
  free(v10);
}

void __56__MCDPCModel_getChildrenAtIndexPath_inRange_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) itemsFromMRContentItems:a2];
  v4 = MCDGeneralLogging(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Completed fetching children at index path: %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, *(a1 + 56), [v3 count], 0);
  if (([*(a1 + 32) didFinishInitialLoad] & 1) == 0)
  {
    v6 = MCDGeneralLogging([*(a1 + 32) setDidFinishInitialLoad:1]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Finishing initial load", &v7, 2u);
    }
  }
}

- (void)initiatePlaybackAtIndexPath:(id)path completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(MCDPCModel *)self setPlaybackCompletion:completion];
  [(MCDPCModel *)self setSelectedIndexPath:pathCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__finishPlaybackNotification_ name:*MEMORY[0x277D27A40] object:0];

  v8 = _MCDCreateMediaRemoteIndexPath(pathCopy);
  v9 = MCDGeneralLogging(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = pathCopy;
    _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Asking MediaRemote to initialize playback for index path: %{public}@", &v11, 0xCu);
  }

  bundleID = [(MCDPCModel *)self bundleID];
  MRMediaRemoteRequestPlaybackInitialization();

  free(*v8);
  free(v8);
}

- (void)_finishPlaybackNotification:(id)notification
{
  v4 = [(MCDPCModel *)self _errorForNotification:notification];
  v5 = MCDGeneralLogging(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Received kMRMediaRemoteApplicationInitiatedPlaybackOfContentItemNotification", v8, 2u);
  }

  playbackCompletion = [(MCDPCModel *)self playbackCompletion];

  if (playbackCompletion)
  {
    playbackCompletion2 = [(MCDPCModel *)self playbackCompletion];
    (playbackCompletion2)[2](playbackCompletion2, v4);

    [(MCDPCModel *)self setPlaybackCompletion:0];
    [(MCDPCModel *)self setSelectedIndexPath:0];
  }
}

- (id)_errorForNotification:(id)notification
{
  v22[2] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D27A70]];

  if (v6)
  {
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKey:*MEMORY[0x277D27A68]];
    v9 = v8;
    v10 = @"MCDError";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    userInfo3 = [notificationCopy userInfo];
    v13 = [userInfo3 objectForKey:*MEMORY[0x277D27A60]];

    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v21[0] = *MEMORY[0x277CCA450];
    v21[1] = @"model";
    v22[0] = v6;
    v22[1] = self;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v17 = [v16 mutableCopy];

    selectedIndexPath = [(MCDPCModel *)self selectedIndexPath];

    if (selectedIndexPath)
    {
      selectedIndexPath2 = [(MCDPCModel *)self selectedIndexPath];
      [v17 setObject:selectedIndexPath2 forKeyedSubscript:@"indexPath"];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:integerValue userInfo:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_setupBeginLoadingTimeoutTimerWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CD6118];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__MCDPCModel__setupBeginLoadingTimeoutTimerWithCompletion___block_invoke;
  v8[3] = &unk_279923F78;
  objc_copyWeak(&v10, &location);
  v6 = completionCopy;
  v9 = v6;
  v7 = [v5 timerWithInterval:0 repeats:v8 block:2.0];
  [(MCDPCModel *)self setBeginLoadingTimeoutTimer:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__MCDPCModel__setupBeginLoadingTimeoutTimerWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained _invalidateBeginLoadingTimeoutTimer];
}

- (void)_invalidateBeginLoadingTimeoutTimer
{
  beginLoadingTimeoutTimer = [(MCDPCModel *)self beginLoadingTimeoutTimer];

  if (beginLoadingTimeoutTimer)
  {
    beginLoadingTimeoutTimer2 = [(MCDPCModel *)self beginLoadingTimeoutTimer];
    [beginLoadingTimeoutTimer2 invalidate];

    [(MCDPCModel *)self setBeginLoadingTimeoutTimer:0];
  }
}

- (void)_setupPlaybackProgressTimeoutTimerWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CD6118];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__MCDPCModel__setupPlaybackProgressTimeoutTimerWithCompletion___block_invoke;
  v8[3] = &unk_279923F78;
  objc_copyWeak(&v10, &location);
  v6 = completionCopy;
  v9 = v6;
  v7 = [v5 timerWithInterval:0 repeats:v8 block:2.0];
  [(MCDPCModel *)self setPlaybackProgressTimeoutTimer:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __63__MCDPCModel__setupPlaybackProgressTimeoutTimerWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained _invalidatePlaybackProgressTimeoutTimer];
}

- (void)_invalidatePlaybackProgressTimeoutTimer
{
  playbackProgressTimeoutTimer = [(MCDPCModel *)self playbackProgressTimeoutTimer];

  if (playbackProgressTimeoutTimer)
  {
    playbackProgressTimeoutTimer2 = [(MCDPCModel *)self playbackProgressTimeoutTimer];
    [playbackProgressTimeoutTimer2 invalidate];

    [(MCDPCModel *)self setPlaybackProgressTimeoutTimer:0];
  }
}

- (id)itemsFromMRContentItems:(id)items
{
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  mediaRemoteItemQueue = self->_mediaRemoteItemQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MCDPCModel_itemsFromMRContentItems___block_invoke;
  block[3] = &unk_279923FA0;
  v12 = itemsCopy;
  selfCopy = self;
  v14 = array;
  v7 = array;
  v8 = itemsCopy;
  dispatch_sync(mediaRemoteItemQueue, block);
  v9 = [v7 copy];

  return v9;
}

void __38__MCDPCModel_itemsFromMRContentItems___block_invoke(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v30;
    v5 = 0x279923000uLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = MRContentItemGetIdentifier();
        v9 = [objc_alloc(*(v5 + 1704)) _initWithModel:*(v1 + 40) MRContentItem:v7];
        v10 = [*(v1 + 40) items];
        v28 = v8;
        [v10 setObject:v9 forKeyedSubscript:v8];

        v12 = MCDGeneralLogging(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v34 = v8;
          _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to items dictionary", buf, 0xCu);
        }

        v13 = [v9 artworkData];
        if (v13)
        {
          v14 = [MEMORY[0x277D755B8] imageWithData:v13];
          v15 = [v14 size];
          if (v17 != 48.0 || v16 != 48.0)
          {
            v19 = [v14 car_scaledImageWithSize:48.0, 48.0];
            v20 = v1;
            v21 = v3;
            v22 = v4;
            v23 = v5;
            v24 = [v19 copy];

            v14 = v24;
            v5 = v23;
            v4 = v22;
            v3 = v21;
            v1 = v20;
          }

          v25 = MCDGeneralLogging(v15);
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v26)
            {
              *buf = 138543362;
              v34 = v28;
              _os_log_impl(&dword_25AD8E000, v25, OS_LOG_TYPE_DEFAULT, "Updating artwork to %{public}@", buf, 0xCu);
            }

            [v9 setArtworkImage:v14];
          }

          else
          {
            if (v26)
            {
              *buf = 138543362;
              v34 = v28;
              _os_log_impl(&dword_25AD8E000, v25, OS_LOG_TYPE_DEFAULT, "Have artwork data, but artwork is nil for %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v14 = MCDGeneralLogging(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v28;
            _os_log_impl(&dword_25AD8E000, v14, OS_LOG_TYPE_DEFAULT, "Artwork is nil for %{public}@", buf, 0xCu);
          }
        }

        [*(v1 + 48) addObject:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v3);
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_finishBeginLoadingNotification:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_25AD8E000, log, OS_LOG_TYPE_DEBUG, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification with error: %{public}@, but completion block is null for index path: %{public}@", &v3, 0x16u);
}

- (void)_finishBeginLoadingNotification:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_DEBUG, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification, but completion block is null for index path: %{public}@", &v2, 0xCu);
}

- (void)_finishBeginLoadingNotification:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_DEBUG, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification, beginLoadingPlayableContent API not implemented and null completion block for index path: %{public}@", &v2, 0xCu);
}

@end