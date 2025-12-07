@interface CPUINowPlayingManager
+ (id)sharedManager;
- (CPUINowPlayingManager)initWithBundleIdentifier:(id)identifier;
- (void)_setupRequestController;
- (void)addNowPlayingObserver:(id)observer;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)dealloc;
- (void)performCommandRequest:(id)request completion:(id)completion;
- (void)setThrottleBehavior:(unint64_t)behavior;
@end

@implementation CPUINowPlayingManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CPUINowPlayingManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager___manager;

  return v2;
}

uint64_t __38__CPUINowPlayingManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager___manager = [objc_alloc(*(a1 + 32)) initWithBundleIdentifier:0];

  return MEMORY[0x2821F96F8]();
}

- (CPUINowPlayingManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CPUINowPlayingManager;
  v6 = [(CPUINowPlayingManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_throttleBehavior = 0;
    v8 = objc_alloc(MEMORY[0x277CF89C0]);
    v9 = [v8 initWithProtocol:&unk_285614A90 callbackQueue:MEMORY[0x277D85CD0]];
    stateObservers = v7->_stateObservers;
    v7->_stateObservers = v9;

    objc_storeStrong(&v7->_bundleIdentifier, identifier);
    [(CPUINowPlayingManager *)v7 _setupRequestController];
  }

  return v7;
}

- (void)setThrottleBehavior:(unint64_t)behavior
{
  if (self->_throttleBehavior != behavior)
  {
    self->_throttleBehavior = behavior;
    if (behavior)
    {
      metadataThrottle = self->_metadataThrottle;
      if (metadataThrottle)
      {

        [(CPUIThrottle *)metadataThrottle unthrottle];
      }

      else
      {
        self->_metadataThrottle = [[CPUIThrottle alloc] initWithBase:15.0 factor:1.5 max:90.0];

        MEMORY[0x2821F96F8]();
      }
    }
  }
}

- (void)_setupRequestController
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD6038]);
  selfCopy = self;
  requestController = self->_requestController;
  self->_requestController = v3;

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v41 = objc_alloc(MEMORY[0x277CD6018]);
  v59 = *MEMORY[0x277CD5BB0];
  v42 = objc_alloc(MEMORY[0x277CD6018]);
  v5 = *MEMORY[0x277CD5B18];
  v58[0] = *MEMORY[0x277CD5B60];
  v58[1] = v5;
  v6 = *MEMORY[0x277CD5B08];
  v58[2] = *MEMORY[0x277CD5AF8];
  v58[3] = v6;
  v58[4] = *MEMORY[0x277CD5B50];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
  v56[0] = *MEMORY[0x277CD5C10];
  v8 = MEMORY[0x277CD6018];
  v55 = *MEMORY[0x277CD5988];
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v43 = [v8 propertySetWithProperties:v44];
  v57[0] = v43;
  v56[1] = *MEMORY[0x277CD5BF0];
  v9 = objc_alloc(MEMORY[0x277CD6018]);
  v54 = *MEMORY[0x277CD5960];
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v52 = *MEMORY[0x277CD5B68];
  v10 = MEMORY[0x277CD6018];
  v51 = *MEMORY[0x277CD5980];
  v11 = v51;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v12 = [v10 propertySetWithProperties:v40];
  v53 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v14 = [v9 initWithProperties:v39 relationships:v13];
  v57[1] = v14;
  v56[2] = *MEMORY[0x277CD5C08];
  v15 = MEMORY[0x277CD6018];
  v50 = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v17 = [v15 propertySetWithProperties:v16];
  v57[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
  v19 = v7;
  v20 = [v42 initWithProperties:v7 relationships:v18];
  v60[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  v22 = [v41 initWithProperties:0 relationships:v21];

  v23 = objc_alloc(MEMORY[0x277CD6018]);
  v48 = *MEMORY[0x277CD5B90];
  v24 = MEMORY[0x277CD6018];
  v25 = *MEMORY[0x277CD5A78];
  v47[0] = *MEMORY[0x277CD5AB0];
  v47[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v27 = [v24 propertySetWithProperties:v26];
  v49 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v29 = [v23 initWithProperties:0 relationships:v28];

  v30 = objc_alloc_init(MEMORY[0x277D278F0]);
  [v30 setTracklistRange:{1, 1}];
  [v30 setQueueItemProperties:v22];
  [v30 setPlayingItemProperties:v22];
  v31 = MEMORY[0x277D278E0];
  bundleIdentifier = [(CPUINowPlayingManager *)selfCopy bundleIdentifier];
  v33 = [v31 pathWithRoute:0 bundleID:bundleIdentifier playerID:0];
  [v30 setPlayerPath:v33];

  [v30 setQueueSectionProperties:v29];
  requestController = [(CPUINowPlayingManager *)selfCopy requestController];
  [requestController setRequest:v30];

  requestController2 = [(CPUINowPlayingManager *)selfCopy requestController];
  [requestController2 setDelegate:selfCopy];

  v37 = CarPlayUIGeneralLogging(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243134000, v37, OS_LOG_TYPE_DEFAULT, "Beginning automatic mediaplayer response loading.", buf, 2u);
  }

  requestController3 = [(CPUINowPlayingManager *)selfCopy requestController];
  [requestController3 beginAutomaticResponseLoading];
}

- (void)dealloc
{
  v3 = CarPlayUIGeneralLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243134000, v3, OS_LOG_TYPE_DEFAULT, "Ending automatic mediaplayer response loading.", buf, 2u);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v4.receiver = self;
  v4.super_class = CPUINowPlayingManager;
  [(CPUINowPlayingManager *)&v4 dealloc];
}

- (void)addNowPlayingObserver:(id)observer
{
  observerCopy = observer;
  [(CARObserverHashTable *)self->_stateObservers registerObserver:observerCopy];
  snapshot = [(CPUINowPlayingManager *)self snapshot];
  if (snapshot)
  {
    v6 = snapshot;
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__CPUINowPlayingManager_addNowPlayingObserver___block_invoke;
      v8[3] = &unk_278D9C530;
      v9 = observerCopy;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __47__CPUINowPlayingManager_addNowPlayingObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 snapshot];
  [v1 nowPlayingManager:v2 didUpdateSnapshot:v3];
}

- (void)performCommandRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277D278C0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CPUINowPlayingManager_performCommandRequest_completion___block_invoke;
  v8[3] = &unk_278D9C580;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 performRequest:request options:0x10000 completion:v8];
}

void __58__CPUINowPlayingManager_performCommandRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__CPUINowPlayingManager_performCommandRequest_completion___block_invoke_2;
    v4[3] = &unk_278D9C558;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  controllerCopy = controller;
  replacementCopy = replacement;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_278D9C5D0;
  selfCopy = self;
  v13 = replacementCopy;
  v11 = controllerCopy;
  v8 = controllerCopy;
  v9 = replacementCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) response];
  v4 = [[CPUINowPlayingSnapshot alloc] initWithResponse:v3];
  if ([*(a1 + 40) throttleBehavior] == 1)
  {
    v5 = [(CPUINowPlayingSnapshot *)v4 song];
    v6 = [v5 identifiers];

    v7 = [v6 contentItemID];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = [v6 library];
      v12 = [v10 numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
      v9 = [v12 stringValue];
    }

    v13 = [(CPUINowPlayingSnapshot *)v4 song];
    v14 = [v13 title];

    if (![v9 length] || !-[NSObject length](v14, "length"))
    {
      goto LABEL_23;
    }

    v15 = [*(a1 + 40) lastContentItemIdentifier];
    if ([v15 length])
    {
      v16 = [*(a1 + 40) lastContentItemIdentifier];
      if ([v9 isEqualToString:v16])
      {
        v17 = [*(a1 + 40) lastContentItemTitle];
        if ([v17 length])
        {
          [*(a1 + 40) lastContentItemTitle];
          v19 = v18 = v3;
          v59 = [v14 isEqualToString:v19];

          v3 = v18;
          if ((v59 & 1) == 0)
          {
            v20 = [*(a1 + 40) metadataThrottle];
            v21 = [v20 incrementAttempts];

            if ((v21 & 1) == 0)
            {
              v23 = CarPlayUIGeneralLogging(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [(CPUINowPlayingSnapshot *)v4 bundleIdentifier];
                v25 = v24;
                v26 = @"[all]";
                if (v24)
                {
                  v26 = v24;
                }

                *buf = 138412546;
                v71 = v26;
                v72 = 2112;
                v73 = v9;
                _os_log_impl(&dword_243134000, v23, OS_LOG_TYPE_DEFAULT, "Throttling snapshot update for app %@ with content item identifier %@", buf, 0x16u);
              }

              v27 = [*(a1 + 40) stateObservers];
              v28 = *(a1 + 40);
              v29 = [(CPUINowPlayingSnapshot *)v4 bundleIdentifier];
              [(CPUINowPlayingSnapshotArtwork *)v27 nowPlayingManager:v28 didThrottleUpdateForBundleIdentifier:v29];

LABEL_47:
              goto LABEL_48;
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }

LABEL_22:
    [*(a1 + 40) setLastContentItemIdentifier:v9];
    [*(a1 + 40) setLastContentItemTitle:v14];
    v30 = [*(a1 + 40) metadataThrottle];
    [v30 unthrottle];

    v31 = [*(a1 + 40) metadataThrottle];
    [v31 incrementAttempts];

LABEL_23:
  }

  objc_storeStrong((*(a1 + 40) + 48), v4);
  v32 = [*(a1 + 40) stateObservers];
  [v32 nowPlayingManager:*(a1 + 40) didUpdateSnapshot:v4];

  v6 = [(CPUINowPlayingSnapshot *)v4 artworkCatalog];
  v9 = [(CPUINowPlayingSnapshot *)v4 bundleIdentifier];
  v33 = [*(a1 + 40) preferredArtworkSize];
  if (v34 >= 1.0)
  {
    if (!v6)
    {
      v55 = CarPlayUIGeneralLogging(v33);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_cold_3(v4, v55);
      }

      v56 = [[CPUINowPlayingSnapshotArtwork alloc] initWithArtworkCatalog:0 bundleIdentifier:v9 artworkImage:0 snapshot:v4];
      v57 = *(a1 + 40);
      v58 = *(v57 + 40);
      *(v57 + 40) = v56;
      v27 = v56;

      v14 = [*(a1 + 40) stateObservers];
      [v14 nowPlayingManager:*(a1 + 40) didReceiveArtworkResponse:v27];
      goto LABEL_47;
    }

    [*(a1 + 40) preferredArtworkSize];
    v36 = v35;
    v60 = v3;
    if (CPUICannedArtworkSizeNearestToSize_onceToken != -1)
    {
      __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_cold_1();
    }

    v37 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v38 = CPUICannedArtworkSizeNearestToSize__cannedSizes;
    v39 = [v38 countByEnumeratingWithState:&v66 objects:buf count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v67;
LABEL_32:
      v42 = 0;
      while (1)
      {
        if (*v67 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v66 + 1) + 8 * v42);
        if ([v43 compare:v37] == 1)
        {
          break;
        }

        if (v40 == ++v42)
        {
          v40 = [v38 countByEnumeratingWithState:&v66 objects:buf count:16];
          if (v40)
          {
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_38:

      v43 = [CPUICannedArtworkSizeNearestToSize__cannedSizes lastObject];
      v38 = v43;
    }

    [v43 floatValue];
    v45 = v44;

    v46 = v45;
    v48 = CarPlayUIGeneralLogging(v47);
    v3 = v60;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_cold_2(v4, v48);
    }

    v49 = [*(a1 + 40) stateObservers];
    [v49 nowPlayingManager:*(a1 + 40) willStartLoadingArtworkForCatalog:v6 bundleIdentifier:v9];

    v50 = *(a1 + 40);
    v51 = *(v50 + 40);
    *(v50 + 40) = 0;

    [v6 setFittingSize:v46, v46];
    [*(a1 + 40) preferredArtworkScale];
    if (v52 < 2.0)
    {
      v52 = 2.0;
    }

    [v6 setDestinationScale:v52];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_90;
    v61[3] = &unk_278D9C5A8;
    v6 = v6;
    v62 = v6;
    v9 = v9;
    v63 = v9;
    v53 = v4;
    v54 = *(a1 + 40);
    v64 = v53;
    v65 = v54;
    [v6 requestImageWithCompletion:v61];

    v14 = v62;
  }

  else
  {
    v14 = CarPlayUIGeneralLogging(v33);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_cold_4(v14);
    }
  }

LABEL_48:
}

void __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[CPUINowPlayingSnapshotArtwork alloc] initWithArtworkCatalog:*(a1 + 32) bundleIdentifier:*(a1 + 40) artworkImage:v5 snapshot:*(a1 + 48)];
  v8 = CarPlayUIGeneralLogging(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) title];
      *buf = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v6;
      v12 = "Artwork request for %{public}@, %{public}@ completed with error: %{public}@";
LABEL_7:
      _os_log_debug_impl(&dword_243134000, v8, OS_LOG_TYPE_DEBUG, v12, buf, 0x20u);
    }
  }

  else if (v9)
  {
    v14 = *(a1 + 40);
    v11 = [*(a1 + 48) title];
    *buf = 138543874;
    v18 = v5;
    v19 = 2114;
    v20 = v14;
    v21 = 2112;
    v22 = v11;
    v12 = "Loaded image %{public}@ for bundle %{public}@ song title %@";
    goto LABEL_7;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_91;
  v15[3] = &unk_278D9C530;
  v15[4] = *(a1 + 56);
  v16 = v7;
  v13 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_91(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = [*(a1 + 32) stateObservers];
  [v2 nowPlayingManager:*(a1 + 32) didReceiveArtworkResponse:*(a1 + 40)];
}

void __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v5 = [a1 title];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_243134000, a2, OS_LOG_TYPE_DEBUG, "Requesting artwork sized %{public}@ for song title %{public}@", &v6, 0x16u);
}

void __62__CPUINowPlayingManager_controller_defersResponseReplacement___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 title];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_243134000, a2, OS_LOG_TYPE_DEBUG, "No available artwork catalog to load for song title %{public}@.", &v4, 0xCu);
}

@end