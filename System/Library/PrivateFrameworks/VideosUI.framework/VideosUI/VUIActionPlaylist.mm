@interface VUIActionPlaylist
- (VUIActionPlaylist)initWithContextData:(id)data appContext:(id)context;
- (VUIAppContext)appContext;
- (id)_maxContentRating;
- (id)_ratingDomain;
- (id)_ratingValue;
- (void)_presentViewControllerAllowingCellular:(BOOL)cellular completion:(id)completion;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionPlaylist

- (VUIActionPlaylist)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = VUIActionPlaylist;
  v9 = [(VUIActionPlaylist *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextData, data);
    objc_storeWeak(&v10->_appContext, contextCopy);
    v11 = [dataCopy vui_arrayForKey:@"videosPlayables"];
    v12 = [dataCopy vui_dictionaryForKey:@"contentMetadata"];
    v13 = [VUIVideosPlayable videosPlayablesFromDictionaries:v11 andMetadataDictionary:v12];
    videosPlayable = v10->_videosPlayable;
    v10->_videosPlayable = v13;
    v15 = v13;

    v16 = [dataCopy vui_numberForKey:@"index"];
    v10->_index = [v16 integerValue];

    v17 = [dataCopy vui_arrayForKey:@"clipItems"];
    clipItems = v10->_clipItems;
    v10->_clipItems = v17;

    v19 = [dataCopy vui_arrayForKey:@"metadataViewModels"];
    metadataViewModels = v10->_metadataViewModels;
    v10->_metadataViewModels = v19;

    v10->_requiresAuthentication = [dataCopy vui_BOOLForKey:@"requiresAuthentication" defaultValue:0];
    v21 = [dataCopy vui_stringForKey:@"nextToken"];
    nextToken = v10->_nextToken;
    v10->_nextToken = v21;

    v23 = [dataCopy vui_stringForKey:@"trailerEndpoint"];
    trailerEndpoint = v10->_trailerEndpoint;
    v10->_trailerEndpoint = v23;
  }

  return v10;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  responderCopy = responder;
  handlerCopy = handler;
  clipItems = [(VUIActionPlaylist *)self clipItems];
  if ([clipItems count])
  {
    v9 = 9;
  }

  else
  {
    v9 = 7;
  }

  v10 = [VUIMediaInfo alloc];
  videosPlayable = [(VUIActionPlaylist *)self videosPlayable];
  v12 = [(VUIMediaInfo *)v10 initWithPlaybackContext:v9 videosPlayables:videosPlayable imageProxies:0 storeDictionary:0];

  v13 = +[VUIPlaybackManager sharedInstance];
  LODWORD(videosPlayable) = [v13 isFullscreenPlaybackUIBeingShown];

  if (videosPlayable)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = [VUIPlaybackStartupCoordinator startupCoordinatorWithMediaInfo:v12 watchType:v14 isRentAndWatchNow:0];
  videosPlayable2 = [(VUIActionPlaylist *)self videosPlayable];
  firstObject = [videosPlayable2 firstObject];

  sharedWatchUrl = [firstObject sharedWatchUrl];
  if (sharedWatchUrl)
  {
    useSharedPlayableForCowatching = 1;
  }

  else
  {
    useSharedPlayableForCowatching = [firstObject useSharedPlayableForCowatching];
  }

  if (+[VUIGroupActivitiesManagerObjC isEligibleForSession]&& useSharedPlayableForCowatching)
  {
    [(VUIMediaInfo *)v12 setIntent:1];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke;
    v27[3] = &unk_1E872D7E0;
    v28 = handlerCopy;
    [VUIActionPlay playMediaInfo:v12 watchType:0 isRentAndWatchNow:0 completion:v27];
  }

  else
  {
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_2;
    v20[3] = &unk_1E872EA18;
    v21 = v15;
    v22 = v12;
    v23 = responderCopy;
    v24 = handlerCopy;
    objc_copyWeak(&v25, &location);
    [v21 performPlaybackStartupFlowWithCompletion:v20];
    objc_destroyWeak(&v25);

    objc_destroyWeak(&location);
  }
}

uint64_t __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = v16;
  if (a2)
  {
    if (a3)
    {
      v18 = VUIDefaultLogObject(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: cowatching, skipping playlist feature", buf, 2u);
      }

      [*(a1 + 40) setIntent:1];
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_31;
      v25[3] = &unk_1E872E9F0;
      v26 = *(a1 + 56);
      LOBYTE(v24) = a5;
      [VUIActionPlay presentPlaybackWithMediaInfo:v19 multiviewMediaInfos:MEMORY[0x1E695E0F0] extrasInfo:0 isCoWatching:1 watchType:0 playType:@"play" allowsCellular:v24 previewMetadata:v17 targetResponder:v20 completion:v25];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      [WeakRetained _presentViewControllerAllowingCellular:a5 completion:*(a1 + 56)];
    }
  }

  else
  {
    v21 = VUIDefaultLogObject(v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: start playback is false, failing playlist presentation", buf, 2u);
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }
  }
}

uint64_t __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_31(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (id)_ratingDomain
{
  videosPlayable = [(VUIActionPlaylist *)self videosPlayable];
  firstObject = [videosPlayable firstObject];
  metadata = [firstObject metadata];
  ratingDomain = [metadata ratingDomain];

  if ([ratingDomain length])
  {
    if ([ratingDomain isEqualToString:@"Show"])
    {
      v6 = MEMORY[0x1E69D5B18];
LABEL_6:
      v7 = *v6;
      goto LABEL_8;
    }

    if ([ratingDomain isEqualToString:@"Movie"])
    {
      v6 = MEMORY[0x1E69D5B10];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_ratingValue
{
  videosPlayable = [(VUIActionPlaylist *)self videosPlayable];
  firstObject = [videosPlayable firstObject];
  metadata = [firstObject metadata];
  ratingValue = [metadata ratingValue];

  return ratingValue;
}

- (id)_maxContentRating
{
  _ratingDomain = [(VUIActionPlaylist *)self _ratingDomain];
  _ratingValue = [(VUIActionPlaylist *)self _ratingValue];
  if (![_ratingDomain length])
  {
    goto LABEL_18;
  }

  if ([_ratingDomain isEqualToString:*MEMORY[0x1E69D5B10]])
  {
    v5 = +[VUISettingsManager sharedInstance];
    maxMovieRank = [v5 maxMovieRank];
    goto LABEL_6;
  }

  if ([_ratingDomain isEqualToString:*MEMORY[0x1E69D5B18]])
  {
    v5 = +[VUISettingsManager sharedInstance];
    maxMovieRank = [v5 maxTVShowRank];
LABEL_6:
    v7 = maxMovieRank;

    if (!_ratingValue)
    {
      if (!v7)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!_ratingValue)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (![_ratingValue integerValue] && v7)
  {
LABEL_12:

    _ratingValue = &unk_1F5E5C9F0;
LABEL_14:
    integerValue = [_ratingValue integerValue];
    if (integerValue <= [v7 integerValue])
    {
      v11 = v7;
    }

    else
    {
      v11 = _ratingValue;
    }

    v8 = v11;

    goto LABEL_19;
  }

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_18:
  v8 = 0;
LABEL_19:
  v9 = _ratingValue;
LABEL_20:

  return v8;
}

- (void)_presentViewControllerAllowingCellular:(BOOL)cellular completion:(id)completion
{
  cellularCopy = cellular;
  completionCopy = completion;
  v7 = +[VUIPlaybackManager sharedInstance];
  isFullscreenPlaybackUIBeingShown = [v7 isFullscreenPlaybackUIBeingShown];

  v9 = +[VUIApplicationRouter currentNavigationController];
  topViewController = [v9 topViewController];
  presentedViewController = [topViewController presentedViewController];
  rootViewController = presentedViewController;
  if (isFullscreenPlaybackUIBeingShown)
  {
    presentingViewController = [presentedViewController presentingViewController];
  }

  else if (presentedViewController)
  {
    goto LABEL_6;
  }

  v14 = +[VUITVAppLauncher sharedInstance];
  appWindow = [v14 appWindow];

  rootViewController = [appWindow rootViewController];

  if (!rootViewController)
  {
    v16 = +[VUIInterfaceFactory sharedInstance];
    rootViewController = [v16 controllerPresenter];
  }

LABEL_6:
  videosPlayable = [(VUIActionPlaylist *)self videosPlayable];
  firstObject = [videosPlayable firstObject];

  if (([firstObject isKeyPlayAvailable] & 1) != 0 || (-[VUIActionPlaylist clipItems](self, "clipItems"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v20))
  {
    v22 = +[VUIPlaybackManager sharedInstance];
    if ([v22 isFullscreenPlaybackUIBeingShown])
    {
      videosPlayable2 = [(VUIActionPlaylist *)self videosPlayable];

      if (!videosPlayable2)
      {
        objc_initWeak(location, self);
        v25 = +[VUIPlaybackManager sharedInstance];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_39;
        v58[3] = &unk_1E872EA40;
        objc_copyWeak(&v60, location);
        v58[4] = self;
        v59 = completionCopy;
        [v25 transferPlaybackToBackgroundMediaController:v58];

        v26 = &v60;
LABEL_18:
        objc_destroyWeak(v26);
        objc_destroyWeak(location);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v27 = VUIDefaultLogObject(v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: Dismissing playback due to catch up to live", location, 2u);
    }

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_41;
    aBlock[3] = &unk_1E872DE00;
    objc_copyWeak(&v57, location);
    v55 = rootViewController;
    v56 = completionCopy;
    v28 = _Block_copy(aBlock);
    v29 = +[VUIPlaybackManager sharedInstance];
    isFullscreenPlaybackUIBeingShown2 = [v29 isFullscreenPlaybackUIBeingShown];

    if (isFullscreenPlaybackUIBeingShown2)
    {
      v31 = +[VUIPlaybackManager sharedInstance];
      [v31 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:v28];
    }

    else
    {
      v28[2](v28);
    }

    v26 = &v57;
    goto LABEL_18;
  }

  v32 = VUIDefaultLogObject(v21);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: no clip items, so assuming standard playlist", location, 2u);
  }

  _ratingDomain = [(VUIActionPlaylist *)self _ratingDomain];
  v34 = [_ratingDomain isEqualToString:*MEMORY[0x1E69D5B18]];

  v51 = cellularCopy;
  if (v34)
  {
    v35 = +[VUISettingsManager sharedInstance];
    maxMovieRank = [v35 maxMovieRank];

    _maxContentRating = [(VUIActionPlaylist *)self _maxContentRating];
  }

  else
  {
    _ratingDomain2 = [(VUIActionPlaylist *)self _ratingDomain];
    v37 = [_ratingDomain2 isEqualToString:*MEMORY[0x1E69D5B10]];

    if (v37)
    {
      maxMovieRank = [(VUIActionPlaylist *)self _maxContentRating];
    }

    else
    {
      v38 = +[VUISettingsManager sharedInstance];
      maxMovieRank = [v38 maxMovieRank];
    }

    v39 = +[VUISettingsManager sharedInstance];
    _maxContentRating = [v39 maxTVShowRank];
  }

  trailerEndpoint = [(VUIActionPlaylist *)self trailerEndpoint];
  v41 = [trailerEndpoint length];

  v42 = +[VUIInterfaceFactory sharedInstance];
  documentCreator = [v42 documentCreator];
  index = [(VUIActionPlaylist *)self index];
  if (v41)
  {
    trailerEndpoint2 = [(VUIActionPlaylist *)self trailerEndpoint];
    [documentCreator clipsViewControllerWithIndex:index trailerEndpoint:trailerEndpoint2 maxMovieContentRating:maxMovieRank maxTVContentRating:_maxContentRating allowsCellular:v51];
  }

  else
  {
    trailerEndpoint2 = [(VUIActionPlaylist *)self collectionViewModel];
    [documentCreator clipsViewControllerWithIndex:index collectionData:trailerEndpoint2 maxMovieContentRating:maxMovieRank maxTVContentRating:_maxContentRating allowsCellular:v51];
  }
  v46 = ;

  if (rootViewController && v46)
  {
    v48 = +[VUIPlaybackManager sharedInstance];
    [v48 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];

    v49 = +[VUIPlaybackManager sharedInstance];
    [v49 setBackgroundMediaControllerForPIP:0];

    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke;
    v62[3] = &unk_1E872D7E0;
    v63 = completionCopy;
    [rootViewController presentViewController:v46 animated:1 completion:v62];
  }

  else
  {
    v50 = VUIDefaultLogObject(v47);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [VUIActionPlaylist _presentViewControllerAllowingCellular:v50 completion:?];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

LABEL_19:
}

uint64_t __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_39(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v17 = [v6 currentMediaItem];
  v8 = [[VUIMediaInfo alloc] initWithPlaybackContext:9 storeAuxMediaItem:v17];
  v9 = +[VUIInterfaceFactory sharedInstance];
  v10 = [v9 documentCreator];
  v11 = [WeakRetained index];
  v12 = [*(a1 + 32) clipItems];
  v13 = [*(a1 + 32) metadataViewModels];
  v14 = [*(a1 + 32) nextToken];
  v15 = [v10 catchUpToLiveViewControllerWithIndex:v11 mediaInfo:v8 segments:v12 metadataViewModels:v13 nextToken:v14];

  [v7 embedCatchUpToLiveViewController:v15 reusingFullscreenPlaybackWithPlayer:v6];
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, 1);
  }
}

void __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[VUIPlaybackManager sharedInstance];
  [v3 setBackgroundMediaControllerForPIP:0];

  v4 = [WeakRetained videosPlayable];
  v5 = [v4 firstObject];

  v6 = +[VUIInterfaceFactory sharedInstance];
  v7 = [v6 documentCreator];
  v8 = [WeakRetained index];
  v9 = [WeakRetained clipItems];
  v10 = [WeakRetained metadataViewModels];
  v11 = [WeakRetained nextToken];
  v12 = [v7 catchUpToLiveViewControllerWithIndex:v8 playable:v5 segments:v9 metadataViewModels:v10 nextToken:v11];

  v13 = +[VUIInterfaceFactory sharedInstance];
  v14 = [v13 documentCreator];
  v15 = [v14 playbackContainerViewController];

  v16 = [v15 vuiView];
  v17 = [MEMORY[0x1E69DC888] blackColor];
  [v16 setBackgroundColor:v17];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_2;
  v21[3] = &unk_1E872DF40;
  v22 = v15;
  v23 = v12;
  v18 = *(a1 + 32);
  v24 = *(a1 + 40);
  v19 = v12;
  v20 = v15;
  [v18 presentViewController:v20 animated:1 completion:v21];
}

uint64_t __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) embedCatchUpToLiveViewController:*(a1 + 40)];
  v2 = [*(a1 + 32) vuiView];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end