@interface VUIBackgroundMediaController
+ (void)initialize;
- (BOOL)_autoPlayEnabled;
- (BOOL)_canPause;
- (BOOL)_currentMediaInfoContentMatchesMediaInfo:(id)info;
- (BOOL)_currentMediaInfoImagesMatchesNewMediaInfoImage:(id)image;
- (BOOL)_hasSecondaryView;
- (BOOL)_isViewInTopMostVisibleView;
- (BOOL)_mediaInfo:(id)info contentMatchesMediaInfo:(id)mediaInfo;
- (BOOL)_playlist:(id)_playlist contentMatchesPlaylist:(id)playlist;
- (BOOL)_shouldShowSecondaryView;
- (BOOL)hasBackgroundVideo;
- (BOOL)isBackgrounded;
- (BOOL)isForeground;
- (CGRect)_playbackContainerViewFrame:(BOOL)frame hasSecondaryVideoView:(BOOL)view;
- (CGRect)_secondaryVideoViewFrame:(BOOL)frame;
- (NSArray)mediaInfos;
- (NSTimer)imageDelayTimer;
- (NSTimer)pauseStateTimeoutTimer;
- (NSTimer)playbackDelayTimer;
- (NSTimer)playbackLoadingTimer;
- (UIEdgeInsets)legibleContentInsets;
- (VUIBackgroundMediaController)initWithName:(id)name;
- (VUIBackgroundMediaController)initWithName:(id)name mediaInfoFetchController:(id)controller;
- (VUIMediaInfo)currentMediaInfo;
- (double)_computedPlaybackDelayInterval;
- (double)_secondaryVideoViewHeight;
- (id)_activePIPPlayer;
- (id)_createPlayerViewController;
- (id)createTransitionViewAtIndex:(unint64_t)index oldView:(id)view;
- (id)surrenderCurrentPlayer;
- (unint64_t)_flippedDirection:(unint64_t)direction isRTL:(BOOL)l;
- (void)_addAlphaProxyImageViewIfNeeded;
- (void)_addContentViewIfNeeded;
- (void)_addOverlayViewAnimatedIfNeeded:(BOOL)needed dismissAfter:(double)after;
- (void)_addPlaybackViewControllerForPlayback:(BOOL)playback restoringAVPlayerViewController:(BOOL)controller;
- (void)_addProxyImageView:(id)view;
- (void)_animateTransitionFromView:(id)view toView:(id)toView duration:(double)duration direction:(unint64_t)direction completion:(id)completion;
- (void)_applicationDidRemoveDeactivationReason:(id)reason;
- (void)_applicationWillAddDeactivationReason:(id)reason;
- (void)_cleanUpEverything;
- (void)_cleanUpEverythingPlaybackRelated;
- (void)_cleanUpPlaybackTimers;
- (void)_cleanUpRampDownPlayer;
- (void)_cleanupPIPPlayback;
- (void)_cleanupPrefetchPlayback;
- (void)_clearPreloadPlayback;
- (void)_configureAudioSession;
- (void)_configureAudioSessionForState:(id)state;
- (void)_configureLegibleContentInsetFromState:(id)state toState:(id)toState;
- (void)_configurePlayerViewController:(id)controller;
- (void)_constrainToView:(id)view;
- (void)_didPlayMediaItemToEnd:(id)end;
- (void)_disablePlaybackWhenShowingFullScreenUIIfNeeded;
- (void)_disableSubtitleIfNeeded;
- (void)_enablePlaybackWhenFullScreenPlaybackEnd;
- (void)_externalPlaybackStateChanged:(id)changed;
- (void)_handleApplicationDidBecomeActiveNotification:(id)notification;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification;
- (void)_handleApplicationWillResignActiveNotification:(id)notification;
- (void)_handleNavigationControllerDidShow;
- (void)_handlePlaybackManagerUIDidChange;
- (void)_handleViewDisappear;
- (void)_loadImage:(id)image;
- (void)_mediaControllerStartedPlayback:(id)playback;
- (void)_notifyAVPlayerViewControllerDisplaySize:(id)size player:(id)player;
- (void)_observeModalNavigationControllerNotifications;
- (void)_performPlayerVolumeAnimatedUpdate:(BOOL)update;
- (void)_pipPlaybackDidChangeMutedState;
- (void)_pipPlaybackStateChanged:(id)changed;
- (void)_playbackErrorDidOccur:(id)occur;
- (void)_playbackRateDidChange:(id)change;
- (void)_playbackStateChanged:(id)changed;
- (void)_playbackStateWillChange:(id)change;
- (void)_populatePlayerWithMediaItemsIfNeeded:(id)needed;
- (void)_postDidStopPlaybackNotification;
- (void)_postWillStartPlaybackNotification:(BOOL)notification;
- (void)_postWillStopPlaybackNotification;
- (void)_prefetchNextVideo;
- (void)_recordBgAutoPlayMediaEventForPlaybackState:(id)state;
- (void)_registerAudioSessionNotification;
- (void)_registerForApplicationStateNotifications;
- (void)_registerPlaybackManagerNotification;
- (void)_registerPlayerNotifications;
- (void)_registerStateMachineHandlers;
- (void)_removeOverlayView:(id)view animated:(BOOL)animated;
- (void)_removePlaybackViewController;
- (void)_removeProxyImageView;
- (void)_setAlphaImageProxy:(id)proxy;
- (void)_showPlaybackIfPossible;
- (void)_startPreloadPlaybackIfNeeded;
- (void)_stateDidChangeFromState:(id)state toState:(id)toState onEvent:(id)event context:(id)context userInfo:(id)info;
- (void)_swapActiveMedia:(BOOL)media animated:(BOOL)animated completion:(id)completion;
- (void)_transitionToNewImage:(id)image animated:(BOOL)animated direction:(unint64_t)direction completion:(id)completion;
- (void)_unregisterPlayerNotifications;
- (void)_updateAVPlayerViewControllerWithAVPlayerForPlayer:(id)player;
- (void)_updateCurrentPlaybackViewFrameForPlaybackInBackground:(BOOL)background animated:(BOOL)animated;
- (void)_updatePlayerMuteStateForBackgroundPlaybackWithReason:(id)reason;
- (void)_updatePlayerVolume:(id)volume;
- (void)_updateVideoPlayerLegibleContentInsets:(BOOL)insets;
- (void)_updateWithMediaInfo:(id)info withDirection:(unint64_t)direction imageVideoSwapBehavior:(unint64_t)behavior animated:(BOOL)animated;
- (void)adoptAVPlayerViewController:(id)controller player:(id)player;
- (void)appendMediaInfos:(id)infos;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadAlphaImageProxy;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playBackManagerFullscreenPlaybackUIDidChangeNotification:(id)notification;
- (void)playbackManagerShowingExtrasDidChangeNotification:(id)notification;
- (void)playerViewController:(id)controller failedToStartPictureInPictureWithError:(id)error;
- (void)playerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)playerViewControllerDidStartPictureInPicture:(id)picture;
- (void)playerViewControllerDidStopPictureInPicture:(id)picture;
- (void)removeMediaInfoAtIndex:(unint64_t)index;
- (void)replay;
- (void)setActivePIPingPlayer:(id)player;
- (void)setAllowsExternalPlayback:(BOOL)playback;
- (void)setAllowsVideoCellularUsage:(BOOL)usage;
- (void)setAvPlayerViewController:(id)controller;
- (void)setControlsVisible:(BOOL)visible;
- (void)setExitsFullscreenWhenPlaybackEnds:(BOOL)ends;
- (void)setImageContentMode:(unint64_t)mode;
- (void)setLegibleContentInsets:(UIEdgeInsets)insets;
- (void)setMediaInfo:(id)info atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setMediaInfoIndex:(unint64_t)index imageVideoSwapBehavior:(unint64_t)behavior animated:(BOOL)animated forwardAnimation:(BOOL)animation;
- (void)setMediaInfos:(id)infos selectedIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setMutePlaybackInBackground:(BOOL)background;
- (void)setMuted:(BOOL)muted;
- (void)setPlaybackEnabled:(BOOL)enabled imageVideoSwapBehavior:(unint64_t)behavior;
- (void)setPrefetchPlayerViewController:(id)controller;
- (void)setPreloadPlaybackEnabled:(BOOL)enabled;
- (void)setShowsVideoControls:(BOOL)controls;
- (void)setState:(unint64_t)state;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)center;
- (void)setVideoGravity:(id)gravity;
- (void)showAlphaImage:(BOOL)image animated:(BOOL)animated;
- (void)stop;
- (void)transitionToForeground:(BOOL)foreground withPlaybackControls:(BOOL)controls fullScreenPlayer:(BOOL)player animated:(BOOL)animated;
- (void)updateAudioMuteWithPIPingPlayback;
- (void)updateFrames;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation VUIBackgroundMediaController

+ (void)initialize
{
  if (initialize_onceToken_12 != -1)
  {
    +[VUIBackgroundMediaController initialize];
  }
}

void __42__VUIBackgroundMediaController_initialize__block_invoke()
{
  v0 = dispatch_queue_create("VUIBackgroundMediaController AVAudioSession management queue", 0);
  v1 = sAVAudioSessionQueue;
  sAVAudioSessionQueue = v0;
}

- (VUIBackgroundMediaController)initWithName:(id)name mediaInfoFetchController:(id)controller
{
  controllerCopy = controller;
  v8 = [(VUIBackgroundMediaController *)self initWithName:name];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaInfoFetchController, controller);
  }

  return v9;
}

- (VUIBackgroundMediaController)initWithName:(id)name
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = VUIBackgroundMediaController;
  v5 = [(VUIBackgroundMediaController *)&v30 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_shouldAnimateOverlayView = 1;
    v5->_stopPlayerWhenViewDisappears = 1;
    v5->_stopPlayerWhenExitingFullScreen = 1;
    v5->_exitsFullscreenWhenPlaybackEnds = 1;
    v5->_clearPreviousImageBeforeLoading = 1;
    v5->_stopWhenAnotherMediaControllerStarts = 1;
    v5->_loadsPlayerWithFullscreenPlayback = 0;
    v5->_muted = 0;
    v5->_mutePlaybackInBackground = 1;
    v5->_useForegroundAudioSessionInBackgroundMode = 0;
    v5->_didAVPlayerControllerEnterFullscreen = 0;
    v5->_animateImageChange = 1;
    v5->_animateVideoChange = 1;
    v5->_shouldPauseAtEnd = 0;
    v5->_shouldShowImageAndStopAfterPausingAtEnd = 0;
    v5->_imageSwappingAnimationType = 1;
    v5->_videoSwappingAnimationType = 1;
    v5->_playbackStopDelayReasons = 0;
    v5->_playbackStopDelay = 0.5;
    v5->_prefetchesVideoFrame = 0;
    v5->_videoAudioRampDuration = 0.0;
    v5->_allowsExternalPlayback = 0;
    v5->_playbackStartDelay = 5.0;
    v5->_imageAnimationDuration = 0.75;
    v5->_imageTransitionAnimationDuration = 0.5;
    v5->_imageVideoTransitionAnimationDuration = 0.5;
    v5->_backgroundVolume = -1.0;
    v5->_foregroundVolume = -1.0;
    v5->_volumeTransitionAnimationDuration = 2.0;
    v5->_numberOfVolumeIncrements = 5;
    v5->_fullscreenTransitionVolumeAnimationChanges = -1.0;
    v5->_imageAnimationOptions = 5243008;
    v5->_state = 0;
    v7 = objc_alloc_init(MEMORY[0x1E69DF740]);
    proxyImageView = v6->_proxyImageView;
    v6->_proxyImageView = v7;

    v6->_preloadPlaybackEnabled = 0;
    v9 = objc_alloc_init(VUIMediaInfoFetchController);
    mediaInfoFetchController = v6->_mediaInfoFetchController;
    v6->_mediaInfoFetchController = v9;

    v6->_mediaInfoIndex = 0;
    v6->_lastMediaInfoIndex = 0;
    v6->_imageContentMode = 2;
    v6->_shouldShowFullScreenButton = 1;
    v6->_hasViewAppeared = 0;
    v6->_forceAutoPlay = 0;
    v6->_autoPlayInSharePlay = 0;
    v6->_stopsPlaybackWhenInactive = 1;
    v6->_allowsPictureInPicturePlayback = 0;
    v6->_prefersAudioOverPictureInPicture = 0;
    objc_storeStrong(&v6->_playbackInitiatorForRTCReporting, @"background");
    v6->_recordPausedMediaEventAsStop = 1;
    v6->_showAlertOnPlaybackFail = 0;
    v6->_interruptsOtherAppAudio = 0;
    v6->_supportsMediaSharing = 0;
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v6->_legibleContentInsets.top = *MEMORY[0x1E69DDCE0];
    *&v6->_legibleContentInsets.bottom = v11;
    v6->_hapticsEnabled = 0;
    v6->_allowsVideoCellularUsage = 0;
    v6->_shouldDisableSubtitle = 0;
    v6->_disableSupplementalSubtitle = 0;
    v6->_showsPlaybackControlsInForeground = 0;
    objc_storeStrong(&v6->_videoGravity, *MEMORY[0x1E69874F0]);
    v6->_updatesNowPlayingInfoCenter = 0;
    [(VUIBackgroundMediaController *)v6 _registerForApplicationStateNotifications];
    [(VUIBackgroundMediaController *)v6 _registerPlaybackManagerNotification];
    [(VUIBackgroundMediaController *)v6 _registerAudioSessionNotification];
    objc_initWeak(&location, v6);
    v12 = initWithName__instanceNumber_0++;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%ld)", nameCopy, v12];
    name = v6->_name;
    v6->_name = v13;

    v15 = objc_alloc(MEMORY[0x1E69D5A60]);
    v16 = v6->_name;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__VUIBackgroundMediaController_initWithName___block_invoke;
    v27[3] = &unk_1E872FED0;
    objc_copyWeak(&v28, &location);
    v17 = [v15 initWithName:v16 initialState:@"Not doing anything" mode:0 stateChangeHandler:v27];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v17;

    v19 = v6->_stateMachine;
    v21 = VUIDefaultLogObject(v20);
    [(TVPStateMachine *)v19 setLogObject:v21];

    [(TVPStateMachine *)v6->_stateMachine setCallsStateChangeHandlerSynchronously:1];
    [(VUIBackgroundMediaController *)v6 _registerStateMachineHandlers];
    [(TVPStateMachine *)v6->_stateMachine setShouldAcceptEvents:1];
    v22 = +[VUIPlaybackManager sharedInstance];
    LODWORD(v19) = [v22 isPIPing];

    if (v19)
    {
      updateAudioMuteWithPIPingPlayback = [(VUIBackgroundMediaController *)v6 updateAudioMuteWithPIPingPlayback];
    }

    v24 = VUIDefaultLogObject(updateAudioMuteWithPIPingPlayback);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v6->_name;
      *buf = 134218242;
      v32 = v6;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) finished creating media controller.", buf, 0x16u);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __45__VUIBackgroundMediaController_initWithName___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateDidChangeFromState:v16 toState:v15 onEvent:v14 context:v13 userInfo:v12];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  [(VUIBackgroundMediaController *)self setActivePIPingPlayer:0];
  prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];

  if (prefetchPlayer)
  {
    prefetchPlayer2 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [prefetchPlayer2 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];
  }

  [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(VUIBackgroundMediaController *)self setVideoAudioRampDuration:0.0];
  v6 = VUIDefaultLogObject([(VUIBackgroundMediaController *)self _cleanUpEverything]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    v13 = 1024;
    isMainThread = [MEMORY[0x1E696AF00] isMainThread];
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) dealloc cleaning up, isMainThread=%d", buf, 0x1Cu);
  }

  v8.receiver = self;
  v8.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v8 dealloc];
}

- (void)vui_viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v5 vui_viewDidLoad];
  vuiView = [(VUIBackgroundMediaController *)self vuiView];
  [vuiView setVuiClipsToBounds:1];

  proxyImageView = [(VUIBackgroundMediaController *)self proxyImageView];
  [(VUIBackgroundMediaController *)self _addProxyImageView:proxyImageView];

  [(VUIBackgroundMediaController *)self _observeModalNavigationControllerNotifications];
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v14 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 136315650;
    v9 = "[VUIBackgroundMediaController vui_viewWillDisappear:]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v7 vui_viewWillDisappear:disappearCopy];
  [(VUIBackgroundMediaController *)self setHasViewAppeared:0];
  [(VUIBackgroundMediaController *)self _handleViewDisappear];
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v14 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 136315650;
    v9 = "[VUIBackgroundMediaController vui_viewWillAppear:]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v7 vui_viewWillAppear:appearCopy];
  [(VUIBackgroundMediaController *)self setHasViewAppeared:1];
}

- (void)_handleViewDisappear
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v8 = 136315650;
    v9 = "[VUIBackgroundMediaController _handleViewDisappear]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", &v8, 0x20u);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v5 = +[VUIPlaybackManager sharedInstance];
  backgroundMediaPlayer = [v5 backgroundMediaPlayer];

  if (!backgroundMediaPlayer || ([(VUIBackgroundMediaController *)self player], v7 = objc_claimAutoreleasedReturnValue(), v7, backgroundMediaPlayer != v7))
  {
    if ([(VUIBackgroundMediaController *)self shouldStopPlayerWhenViewDisappears]&& [(VUIBackgroundMediaController *)self isPlaybackEnabled])
    {
      [(VUIBackgroundMediaController *)self setPlaybackEnabled:0];
    }
  }
}

- (void)_observeModalNavigationControllerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleNavigationControllerDidShow name:*MEMORY[0x1E69DF870] object:0];
}

- (void)_handleNavigationControllerDidShow
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v5 = 136315650;
    v6 = "[VUIBackgroundMediaController _handleNavigationControllerDidShow]";
    v7 = 2048;
    selfCopy = self;
    v9 = 2112;
    v10 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", &v5, 0x20u);
  }

  if (![(VUIBackgroundMediaController *)self _isViewInTopMostVisibleView])
  {
    [(VUIBackgroundMediaController *)self _handleViewDisappear];
  }
}

- (BOOL)_isViewInTopMostVisibleView
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  vuiView = [v3 vuiView];
  v5 = VUIDefaultLogObject(vuiView);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v10 = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = name;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) topMostVisibleViewController: %@", &v10, 0x20u);
  }

  if (vuiView)
  {
    vuiView2 = [(VUIBackgroundMediaController *)self vuiView];
    v8 = [vuiView2 isDescendantOfView:vuiView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_constrainToView:(id)view
{
  v23[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  widthAnchor = [viewCopy widthAnchor];
  view = [(VUIBackgroundMediaController *)self view];
  widthAnchor2 = [view widthAnchor];
  v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  heightAnchor = [viewCopy heightAnchor];
  view2 = [(VUIBackgroundMediaController *)self view];
  heightAnchor2 = [view2 heightAnchor];
  v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  centerXAnchor = [viewCopy centerXAnchor];
  view3 = [(VUIBackgroundMediaController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  centerYAnchor = [viewCopy centerYAnchor];

  view4 = [(VUIBackgroundMediaController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  v21 = MEMORY[0x1E696ACD8];
  v23[0] = v8;
  v23[1] = v12;
  v23[2] = v16;
  v23[3] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v21 activateConstraints:v22];
}

- (void)updateFrames
{
  v25 = *MEMORY[0x1E69E9840];
  view = [(VUIBackgroundMediaController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  v9 = VUIDefaultLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218240;
    v22 = v5;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController: updateFrames for bounds %f x %f", &v21, 0x16u);
  }

  [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:[(VUIBackgroundMediaController *)self isBackgrounded] hasSecondaryVideoView:[(VUIBackgroundMediaController *)self _hasSecondaryView]];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  playbackContainerController = [(VUIBackgroundMediaController *)self playbackContainerController];
  view2 = [playbackContainerController view];
  [view2 setFrame:{v11, v13, v15, v17}];

  if ([(VUIBackgroundMediaController *)self _shouldShowSecondaryView])
  {
    if ([(VUIBackgroundMediaController *)self _hasSecondaryView])
    {
      secondaryVideoView = [(VUIBackgroundMediaController *)self secondaryVideoView];
      [(VUIBackgroundMediaController *)self _secondaryVideoViewFrame:1];
      [secondaryVideoView setFrame:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (__PlayerAVPlayerKVOContext_1 == context)
  {
    [(VUIBackgroundMediaController *)self _updateAVPlayerViewControllerWithAVPlayerForPlayer:objectCopy];
    goto LABEL_25;
  }

  if (__PlayerPreferredAudioLanguageCode == context)
  {
    preferredAudioLanguageCode = [objectCopy preferredAudioLanguageCode];
    [(VUIBackgroundMediaController *)self setPreferredAudioLanguageCode:preferredAudioLanguageCode];
LABEL_24:

    goto LABEL_25;
  }

  if (__PlayerPrefersAudioDescriptions == context)
  {
    preferredAudioLanguageCode = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objectCopy, "prefersAudioDescriptions")}];
    [(VUIBackgroundMediaController *)self setPrefersAudioDescriptions:preferredAudioLanguageCode];
    goto LABEL_24;
  }

  if (__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext_0 != context)
  {
    if (__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0 != context)
    {
      if (__PIPingPlayerMutedKVOContext == context)
      {
        [(VUIBackgroundMediaController *)self _pipPlaybackDidChangeMutedState];
      }

      else
      {
        v20.receiver = self;
        v20.super_class = VUIBackgroundMediaController;
        [(VUIBackgroundMediaController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      }

      goto LABEL_25;
    }

    avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];

    if (avPlayerViewController == objectCopy)
    {
      preferredAudioLanguageCode = [(VUIBackgroundMediaController *)self avPlayerViewController];
      player = [(VUIBackgroundMediaController *)self player];
    }

    else
    {
      prefetchPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];

      if (prefetchPlayerViewController != objectCopy)
      {
        preferredAudioLanguageCode = 0;
        v18 = 0;
LABEL_23:
        [(VUIBackgroundMediaController *)self _notifyAVPlayerViewControllerDisplaySize:preferredAudioLanguageCode player:v18];

        goto LABEL_24;
      }

      preferredAudioLanguageCode = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
      player = [(VUIBackgroundMediaController *)self prefetchPlayer];
    }

    v18 = player;
    goto LABEL_23;
  }

  if ([objectCopy initialMediaItemHasCompletedInitialLoading])
  {
    currentMediaItem = [objectCopy currentMediaItem];
    v15 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

    if (v15 && ([v15 complete] & 1) == 0)
    {
      [v15 addEndEventWithName:*MEMORY[0x1E69D6040]];
      [v15 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6070]];
    }
  }

LABEL_25:
}

- (VUIMediaInfo)currentMediaInfo
{
  mediaInfoIndex = [(VUIBackgroundMediaController *)self mediaInfoIndex];
  mediaInfos = [(VUIBackgroundMediaController *)self mediaInfos];
  v5 = [mediaInfos count];

  if (mediaInfoIndex >= v5)
  {
    v7 = 0;
  }

  else
  {
    mediaInfos2 = [(VUIBackgroundMediaController *)self mediaInfos];
    v7 = [mediaInfos2 objectAtIndex:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];
  }

  return v7;
}

- (void)setMediaInfos:(id)infos selectedIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  infosCopy = infos;
  if ([infosCopy count] > index)
  {
    if ([infosCopy count] > index)
    {
      currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];

      if (currentMediaInfo)
      {
        v9 = [infosCopy objectAtIndex:index];
        imageProxies = [v9 imageProxies];
        firstObject = [imageProxies firstObject];
        currentMediaInfo2 = [(VUIBackgroundMediaController *)self currentMediaInfo];
        imageProxies2 = [currentMediaInfo2 imageProxies];
        firstObject2 = [imageProxies2 firstObject];
        animatedCopy = [firstObject isEqual:firstObject2] ^ 1;
      }
    }

    self->_mediaInfoIndex = index;
    self->_lastMediaInfoIndex = index;
    mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    if (infosCopy)
    {
      v16 = infosCopy;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    [mediaInfoFetchController setMediaInfos:v16];

    currentMediaInfo3 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    [(VUIBackgroundMediaController *)self _updateWithMediaInfo:currentMediaInfo3 withDirection:0 imageVideoSwapBehavior:0 animated:animatedCopy];
  }
}

- (void)setMediaInfo:(id)info atIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  infoCopy = info;
  mediaInfos = [(VUIBackgroundMediaController *)self mediaInfos];
  v9 = [mediaInfos count];

  if (v9 > index)
  {
    mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    [mediaInfoFetchController setMediaInfo:infoCopy atIndex:index];

    currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
    [(VUIBackgroundMediaController *)self _updateWithMediaInfo:currentMediaInfo withDirection:0 imageVideoSwapBehavior:0 animated:animatedCopy];
  }
}

- (NSArray)mediaInfos
{
  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  mediaInfos = [mediaInfoFetchController mediaInfos];

  return mediaInfos;
}

- (void)setMediaInfoIndex:(unint64_t)index imageVideoSwapBehavior:(unint64_t)behavior animated:(BOOL)animated forwardAnimation:(BOOL)animation
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  if (animation)
  {
    v12 = 2;
    goto LABEL_12;
  }

  lastMediaInfoIndex = self->_lastMediaInfoIndex;
  if (lastMediaInfoIndex == index)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if (lastMediaInfoIndex >= index)
  {
    goto LABEL_8;
  }

  mediaInfos = [(VUIBackgroundMediaController *)self mediaInfos];
  if ([mediaInfos count] - 1 == index)
  {

LABEL_8:
    v12 = 1;
    goto LABEL_12;
  }

  v15 = self->_lastMediaInfoIndex;

  if (v15)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

LABEL_12:
  v16 = [(VUIBackgroundMediaController *)self _flippedDirection:v12 isRTL:[(VUIBackgroundMediaController *)self vuiIsRTL]];
  v17 = VUIDefaultLogObject(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    mediaInfoIndex = self->_mediaInfoIndex;
    v25 = 134218754;
    selfCopy = self;
    v27 = 2112;
    v28 = name;
    v29 = 2048;
    v30 = mediaInfoIndex;
    v31 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) mediaInfo oldIndex:[%lu] newIndex:[%lu]", &v25, 0x2Au);
  }

  self->_mediaInfoIndex = index;
  self->_lastMediaInfoIndex = index;
  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController setIndex:index];

  mediaInfos2 = [(VUIBackgroundMediaController *)self mediaInfos];
  if (![mediaInfos2 count])
  {
    goto LABEL_20;
  }

  mediaInfos3 = [(VUIBackgroundMediaController *)self mediaInfos];
  v23 = [mediaInfos3 count];

  if (v23 > index)
  {
    mediaInfos4 = [(VUIBackgroundMediaController *)self mediaInfos];
    mediaInfos2 = [mediaInfos4 objectAtIndex:index];

    if (![(VUIBackgroundMediaController *)self _mediaInfo:currentMediaInfo contentMatchesMediaInfo:mediaInfos2])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(VUIBackgroundMediaController *)self setAutomaticPlaybackStart:1];
        -[VUIBackgroundMediaController setVpafPlaybackStartReason:](self, "setVpafPlaybackStartReason:", [mediaInfos2 playbackStartReason]);
        -[VUIBackgroundMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [mediaInfos2 playbackStopReason]);
      }

      [(VUIBackgroundMediaController *)self _updateWithMediaInfo:mediaInfos2 withDirection:v16 imageVideoSwapBehavior:behavior animated:animatedCopy];
    }

LABEL_20:
  }
}

- (unint64_t)_flippedDirection:(unint64_t)direction isRTL:(BOOL)l
{
  v4 = 1;
  directionCopy = 2;
  if (direction != 1)
  {
    directionCopy = direction;
  }

  if (direction != 2)
  {
    v4 = directionCopy;
  }

  if (l)
  {
    return v4;
  }

  else
  {
    return direction;
  }
}

- (id)createTransitionViewAtIndex:(unint64_t)index oldView:(id)view
{
  viewCopy = view;
  mediaInfos = [(VUIBackgroundMediaController *)self mediaInfos];
  v8 = [mediaInfos count];

  if (v8 <= index)
  {
    view = 0;
  }

  else
  {
    v9 = [(VUIBackgroundMediaController *)self mediaInfoIndex]+ 1;
    if ([(VUIBackgroundMediaController *)self isVideoFrameFallbackEnabled])
    {
      prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];
      state = [prefetchPlayer state];
      paused = [MEMORY[0x1E69D5A40] paused];
      v13 = state == paused;
    }

    else
    {
      v13 = 1;
    }

    if (v9 == index && -[VUIBackgroundMediaController prefetchesVideoFrame](self, "prefetchesVideoFrame") && (-[VUIBackgroundMediaController mediaInfoFetchController](self, "mediaInfoFetchController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 mediaInfoContainsPlayerAtIndex:index] & v13, v15, v16 == 1))
    {
      mediaInfos2 = [(VUIBackgroundMediaController *)self mediaInfos];
      v18 = [mediaInfos2 objectAtIndex:index];

      tvpPlaylist = [v18 tvpPlaylist];
      prefetchPlayer2 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      playlist = [prefetchPlayer2 playlist];
      v22 = [(VUIBackgroundMediaController *)self _playlist:tvpPlaylist contentMatchesPlaylist:playlist];

      if (v22)
      {
        prefetchPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
        view = [prefetchPlayerViewController view];
      }

      else
      {
        view = 0;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (viewCopy && (isKindOfClass & 1) != 0)
      {
        v25 = viewCopy;
        [v25 setImage:0];
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x1E69DF740]);
        view2 = [(VUIBackgroundMediaController *)self view];
        [view2 bounds];
        v25 = [v26 initWithFrame:?];
      }

      [v25 setVuiContentMode:{-[VUIBackgroundMediaController imageContentMode](self, "imageContentMode")}];
      [(VUIBackgroundMediaController *)self _configMirroredImageForBackgroundImage:v25];
      mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke;
      v32[3] = &unk_1E87376C0;
      v32[4] = self;
      v29 = v25;
      v33 = v29;
      [mediaInfoFetchController loadImageAtIndex:index completion:v32];

      v30 = v33;
      view = v29;
    }
  }

  return view;
}

void __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = VUIDefaultLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v7 name];
    v9 = VUIBoolLogString();
    *buf = 134218754;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) completed loading transition image: [%@], finished: [%@]", buf, 0x2Au);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke_248;
  v14 = &unk_1E872D990;
  v15 = v5;
  v16 = *(a1 + 40);
  v10 = MEMORY[0x1E696AF00];
  v11 = v5;
  if ([v10 isMainThread])
  {
    v13(v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

void __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke_248(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 uiImage];
    [v3 setImage:v4];
  }
}

- (void)appendMediaInfos:(id)infos
{
  infosCopy = infos;
  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController appendMediaInfos:infosCopy];
}

- (void)removeMediaInfoAtIndex:(unint64_t)index
{
  if ([(VUIBackgroundMediaController *)self mediaInfoIndex]> index)
  {
    v5 = self->_mediaInfoIndex - 1;
    self->_mediaInfoIndex = v5;
    self->_lastMediaInfoIndex = v5;
  }

  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController removeMediaInfoAtIndex:index];
}

- (void)play
{
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  [stateMachine postEvent:@"Play"];
}

- (void)replay
{
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  [stateMachine postEvent:@"Replay"];
}

- (void)pause
{
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  [stateMachine postEvent:@"Pause"];
}

- (void)stop
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_stop object:0];
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  v5 = @"PlaybackStopReasonKey";
  v6[0] = &unk_1F5E5E748;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [stateMachine postEvent:@"Stop" withContext:0 userInfo:v4];
}

- (void)setExitsFullscreenWhenPlaybackEnds:(BOOL)ends
{
  endsCopy = ends;
  self->_exitsFullscreenWhenPlaybackEnds = ends;
  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (avPlayerViewController)
  {
    avPlayerViewController2 = [(VUIBackgroundMediaController *)self avPlayerViewController];
    [avPlayerViewController2 setExitsFullScreenWhenPlaybackEnds:endsCopy];
  }
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  [(VUIBackgroundMediaController *)self willChangeValueForKey:@"muted"];
  self->_muted = mutedCopy;
  player = [(VUIBackgroundMediaController *)self player];
  [player setMuted:mutedCopy];

  prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];
  [prefetchPlayer setMuted:mutedCopy];

  [(VUIBackgroundMediaController *)self didChangeValueForKey:@"muted"];
}

- (void)setMutePlaybackInBackground:(BOOL)background
{
  if (self->_mutePlaybackInBackground != background)
  {
    [(VUIBackgroundMediaController *)self willChangeValueForKey:@"mutePlaybackInBackground"];
    self->_mutePlaybackInBackground = background;
    [(VUIBackgroundMediaController *)self _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonAssigned"];

    [(VUIBackgroundMediaController *)self didChangeValueForKey:@"mutePlaybackInBackground"];
  }
}

- (void)setLegibleContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v20 = *MEMORY[0x1E69E9840];
  self->_legibleContentInsets = insets;
  v8 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v21.top = top;
    v21.left = left;
    v21.bottom = bottom;
    v21.right = right;
    v10 = NSStringFromPlatformEdgeInsets(v21);
    v14 = 134218498;
    selfCopy = self;
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) set legibleContentInsets: %@", &v14, 0x20u);
  }

  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (avPlayerViewController)
  {
    stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
    currentState = [stateMachine currentState];
    [(VUIBackgroundMediaController *)self _updateVideoPlayerLegibleContentInsets:[(VUIBackgroundMediaController *)self _shouldApplyLegibleContentInsetForState:currentState]];
  }
}

- (void)_disableSubtitleIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  shouldDisableSubtitle = [(VUIBackgroundMediaController *)self shouldDisableSubtitle];
  if (shouldDisableSubtitle)
  {
    v4 = VUIDefaultLogObject(shouldDisableSubtitle);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = name;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) disable subtitle", &v7, 0x16u);
    }

    player = [(VUIBackgroundMediaController *)self player];
    [player setSelectedSubtitleOption:0 setGlobalPreference:0];
  }
}

- (void)_updateVideoPlayerLegibleContentInsets:(BOOL)insets
{
  insetsCopy = insets;
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  if (insets)
  {
    [(VUIBackgroundMediaController *)self legibleContentInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if ([(VUIBackgroundMediaController *)selfCopy _shouldShowSecondaryView])
    {
      [(VUIBackgroundMediaController *)selfCopy _secondaryVideoViewHeight];
      v10 = v10 - v13;
    }

    if (([MEMORY[0x1E69DF6F0] isTV] & 1) != 0 || (self = objc_msgSend(MEMORY[0x1E69DF6F0], "isMac"), self))
    {
      avPlayerViewController = [(VUIBackgroundMediaController *)selfCopy avPlayerViewController];
      vuiIsViewLoaded = [avPlayerViewController vuiIsViewLoaded];

      if (vuiIsViewLoaded)
      {
        avPlayerViewController2 = [(VUIBackgroundMediaController *)selfCopy avPlayerViewController];
        vuiView = [avPlayerViewController2 vuiView];
        [vuiView frame];
        v19 = v18;
        v21 = v20;

        v22 = 0.0;
        if ([(VUIBackgroundMediaController *)selfCopy _shouldShowSecondaryView])
        {
          [(VUIBackgroundMediaController *)selfCopy _secondaryVideoViewHeight];
          v22 = v23;
        }

        v6 = v6 - v19;
        vuiView2 = [(VUIBackgroundMediaController *)selfCopy vuiView];
        [vuiView2 bounds];
        v26 = v25 - v22;

        v10 = v10 + v19 + v21 - v26;
      }
    }

    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v27 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)selfCopy name];
    v40.top = v6;
    v40.left = v8;
    v40.bottom = v10;
    v40.right = v12;
    v29 = NSStringFromPlatformEdgeInsets(v40);
    v31 = 134218754;
    v32 = selfCopy;
    v33 = 2112;
    v34 = name;
    v35 = 2112;
    v36 = v29;
    v37 = 1024;
    v38 = insetsCopy;
    _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) update video's legibleContentInsets: %@, shouldApplyLegibleContentInset=%d", &v31, 0x26u);
  }

  avPlayerViewController3 = [(VUIBackgroundMediaController *)selfCopy avPlayerViewController];
  [avPlayerViewController3 setLegibleContentInsets:{v6, v8, v10, v12}];
}

- (void)_configureLegibleContentInsetFromState:(id)state toState:(id)toState
{
  v16 = *MEMORY[0x1E69E9840];
  toStateCopy = toState;
  v7 = [(VUIBackgroundMediaController *)self _shouldApplyLegibleContentInsetForState:state];
  v8 = [(VUIBackgroundMediaController *)self _shouldApplyLegibleContentInsetForState:toStateCopy];

  if (v7 != v8)
  {
    v10 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      v12 = 134218242;
      selfCopy = self;
      v14 = 2112;
      v15 = name;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Video changes between background & foreground, update legibleContentInsets", &v12, 0x16u);
    }

    [(VUIBackgroundMediaController *)self _updateVideoPlayerLegibleContentInsets:v8];
  }
}

- (void)setShowsVideoControls:(BOOL)controls
{
  controlsCopy = controls;
  self->_showsVideoControls = controls;
  [(VUIBackgroundMediaController *)self showAlphaImage:!controls animated:1];
  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];
  view = [avPlayerViewController view];
  [view setUserInteractionEnabled:controlsCopy];

  if (self->_keepVideoGravityUnchangedByVideoControlsVisibility || !controlsCopy)
  {
    videoGravity = [(VUIBackgroundMediaController *)self videoGravity];
  }

  else
  {
    videoGravity = *MEMORY[0x1E69874E8];
  }

  v7 = videoGravity;
  [avPlayerViewController setVideoGravity:videoGravity];

  [(VUIBackgroundMediaController *)self setControlsVisible:controlsCopy];
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)center
{
  centerCopy = center;
  self->_updatesNowPlayingInfoCenter = center;
  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];
  [avPlayerViewController setUpdatesNowPlayingInfoCenter:centerCopy];

  prefetchPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
  [prefetchPlayerViewController setUpdatesNowPlayingInfoCenter:centerCopy];
}

- (void)showAlphaImage:(BOOL)image animated:(BOOL)animated
{
  animatedCopy = animated;
  alphaProxyImageView = [(VUIBackgroundMediaController *)self alphaProxyImageView];
  if (alphaProxyImageView)
  {
    v15 = alphaProxyImageView;
    alphaProxyImageView2 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
    superview = [alphaProxyImageView2 superview];
    if (superview)
    {
      v10 = superview;
      alphaProxyImageView3 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
      image = [alphaProxyImageView3 image];

      if (image)
      {
        v13 = MEMORY[0x1E69DD250];
        if (animatedCopy)
        {
          view = [(VUIBackgroundMediaController *)self view];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke;
          v18[3] = &unk_1E872ECA0;
          v18[4] = self;
          imageCopy = image;
          [v13 vui_transitionWithView:view duration:5242880 options:v18 animations:0 completion:0.3];
        }

        else
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke_2;
          v16[3] = &unk_1E872ECA0;
          v16[4] = self;
          imageCopy2 = image;
          [MEMORY[0x1E69DD250] vui_performWithoutAnimation:v16];
        }
      }
    }

    else
    {
    }
  }
}

void __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alphaProxyImageView];
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [v2 setVuiAlpha:v4];

  v6 = [*(a1 + 32) view];
  v5 = [*(a1 + 32) alphaProxyImageView];
  [v6 vui_bringSubviewToFront:v5];
}

void __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) alphaProxyImageView];
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [v2 setVuiAlpha:v4];

  v6 = [*(a1 + 32) view];
  v5 = [*(a1 + 32) alphaProxyImageView];
  [v6 vui_bringSubviewToFront:v5];
}

- (void)transitionToForeground:(BOOL)foreground withPlaybackControls:(BOOL)controls fullScreenPlayer:(BOOL)player animated:(BOOL)animated
{
  animatedCopy = animated;
  controlsCopy = controls;
  v20[3] = *MEMORY[0x1E69E9840];
  if (foreground)
  {
    playerCopy = player;
    [(VUIBackgroundMediaController *)self foregroundVolume];
    if (v10 != -1.0)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatePlayerVolume_ object:MEMORY[0x1E695E110]];
      [(VUIBackgroundMediaController *)self _performPlayerVolumeAnimatedUpdate:1];
    }

    stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
    v19[0] = @"AnimatedKey";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
    v20[0] = v12;
    v19[1] = @"IsFullScreenPlayerKey";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:playerCopy];
    v20[1] = v13;
    v19[2] = @"ShowsPlaybackControlsKey";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:controlsCopy];
    v20[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [stateMachine postEvent:@"Transition to foreground" withContext:0 userInfo:v15];
  }

  else
  {
    if (![(VUIBackgroundMediaController *)self mutePlaybackInBackground:foreground])
    {
      [(VUIBackgroundMediaController *)self backgroundVolume];
      if (v16 != -1.0)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatePlayerVolume_ object:MEMORY[0x1E695E118]];
        [(VUIBackgroundMediaController *)self _performPlayerVolumeAnimatedUpdate:0];
      }
    }

    stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
    v17[0] = @"AnimatedKey";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
    v17[1] = @"ShowsPlaybackControlsKey";
    v18[0] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:controlsCopy];
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [stateMachine postEvent:@"Transition background" withContext:0 userInfo:v14];
  }
}

- (void)setControlsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v19 = *MEMORY[0x1E69E9840];
  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];
  v6 = VUIDefaultLogObject(avPlayerViewController);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v8 = VUIBoolLogString();
    [(VUIBackgroundMediaController *)self showsPlaybackControlsInForeground];
    v9 = VUIBoolLogString();
    v11 = 134218754;
    selfCopy = self;
    v13 = 2112;
    v14 = name;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setControlsVisible %@ showsPlaybackControlsInForeground %@", &v11, 0x2Au);
  }

  if ([(VUIBackgroundMediaController *)self showsPlaybackControlsInForeground])
  {
    [avPlayerViewController setShowsPlaybackControls:visibleCopy];
    if (visibleCopy)
    {
      [avPlayerViewController flashPlaybackControlsWithDuration:5.0];
    }
  }

  view = [avPlayerViewController view];
  [view setUserInteractionEnabled:visibleCopy];
}

- (id)surrenderCurrentPlayer
{
  player = [(VUIBackgroundMediaController *)self player];
  if (player)
  {
    [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
    [(VUIBackgroundMediaController *)self _unregisterPlayerNotifications];
    player2 = [(VUIBackgroundMediaController *)self player];
    [player2 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    player3 = [(VUIBackgroundMediaController *)self player];
    [player3 removeObserver:self forKeyPath:@"preferredAudioLanguageCode" context:__PlayerPreferredAudioLanguageCode];

    player4 = [(VUIBackgroundMediaController *)self player];
    [player4 removeObserver:self forKeyPath:@"prefersAudioDescriptions" context:__PlayerPrefersAudioDescriptions];

    [(VUIBackgroundMediaController *)self setPlayer:0];
    v7 = +[VUIPlayerValidationManager sharedInstance];
    [v7 removeReferenceForPlayer:player stoppingIfNeeded:0];
  }

  prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];

  if (prefetchPlayer)
  {
    prefetchPlayer2 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [prefetchPlayer2 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
  }

  mediaInfos = [(VUIBackgroundMediaController *)self mediaInfos];
  v11 = [mediaInfos objectAtIndex:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];

  -[VUIBackgroundMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [v11 playbackStopReason]);
  [(VUIBackgroundMediaController *)self _postWillStopPlaybackNotification];

  return player;
}

- (void)adoptAVPlayerViewController:(id)controller player:(id)player
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  playerCopy = player;
  v8 = VUIDefaultLogObject(playerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
    currentState = [stateMachine currentState];
    v14 = 134219010;
    selfCopy = self;
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = controllerCopy;
    v20 = 2112;
    v21 = playerCopy;
    v22 = 2112;
    v23 = currentState;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) adoptAVPlayerViewController avPlayerViewController = %@, player = %@ on state %@", &v14, 0x34u);
  }

  if (controllerCopy && playerCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary vui_setObjectIfNotNil:playerCopy forKey:@"PlayerKey"];
    [dictionary vui_setObjectIfNotNil:controllerCopy forKey:@"AVPlayerViewControllerKey"];
    [(VUIBackgroundMediaController *)self _configurePlayerViewController:controllerCopy];
    stateMachine2 = [(VUIBackgroundMediaController *)self stateMachine];
    [stateMachine2 postEvent:@"Restore avPlayerViewController" withContext:0 userInfo:dictionary];
  }
}

- (void)setPlaybackEnabled:(BOOL)enabled imageVideoSwapBehavior:(unint64_t)behavior
{
  enabledCopy = enabled;
  v63[2] = *MEMORY[0x1E69E9840];
  v7 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 134218754;
    selfCopy9 = self;
    v60 = 2112;
    v61 = name;
    v62 = 1024;
    LODWORD(v63[0]) = enabledCopy;
    WORD2(v63[0]) = 2048;
    *(v63 + 6) = behavior;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setPlaybackEnabled = %d, imageVideoSwapBehavior = %lu", buf, 0x26u);
  }

  _autoPlayEnabled = [(VUIBackgroundMediaController *)self _autoPlayEnabled];
  v10 = _autoPlayEnabled;
  if ((_autoPlayEnabled & 1) == 0)
  {
    v11 = VUIDefaultLogObject(_autoPlayEnabled);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      selfCopy9 = self;
      v60 = 2112;
      v61 = name2;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) accessibility video autoplay is disabled", buf, 0x16u);
    }
  }

  v13 = +[VUIFeaturesConfiguration sharedInstance];
  autoPlayConfig = [v13 autoPlayConfig];
  disableBackgroundMediaPlayback = [autoPlayConfig disableBackgroundMediaPlayback];

  v17 = VUIDefaultLogObject(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218498;
    selfCopy9 = self;
    v60 = 2112;
    v61 = name3;
    v62 = 1024;
    LODWORD(v63[0]) = disableBackgroundMediaPlayback;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) is playback disabled by defaults %d.", buf, 0x1Cu);
  }

  self->_playbackEnabled = enabledCopy & (disableBackgroundMediaPlayback ^ 1);
  player = [(VUIBackgroundMediaController *)self player];

  playbackEnabled = self->_playbackEnabled;
  if (player)
  {
    if (playbackEnabled)
    {
LABEL_11:
      v22 = VUIDefaultLogObject(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        name4 = [(VUIBackgroundMediaController *)self name];
        stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
        currentState = [stateMachine currentState];
        *buf = 134218498;
        selfCopy9 = self;
        v60 = 2112;
        v61 = name4;
        v62 = 2112;
        v63[0] = currentState;
        _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@, machine state: %@) playback is enabled and we have a stale player, perform cleanup and start reloading.", buf, 0x20u);
      }

      [(VUIBackgroundMediaController *)self _cleanUpEverythingPlaybackRelated];
      if (v10)
      {
        stateMachine2 = [(VUIBackgroundMediaController *)self stateMachine];
        [stateMachine2 postEvent:@"Replay"];
      }

      goto LABEL_37;
    }

    player2 = [(VUIBackgroundMediaController *)self player];
    state = [player2 state];
    stopped = [MEMORY[0x1E69D5A40] stopped];
    v33 = state == stopped;

    if (v33)
    {
      if (self->_playbackEnabled)
      {
        goto LABEL_11;
      }

      v37 = VUIDefaultLogObject(v20);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        name5 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218242;
        selfCopy9 = self;
        v60 = 2112;
        v61 = name5;
        _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) cleanup everything playback related in defensive case", buf, 0x16u);
      }

      [(VUIBackgroundMediaController *)self _cleanUpEverythingPlaybackRelated];
    }

    else if (behavior == 1)
    {
      v34 = VUIDefaultLogObject(v20);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        name6 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218242;
        selfCopy9 = self;
        v60 = 2112;
        v61 = name6;
        _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) pausing playback, will show image and then stop.", buf, 0x16u);
      }

      stateMachine3 = [(VUIBackgroundMediaController *)self stateMachine];
      [stateMachine3 postEvent:@"Pause show image and stop"];
    }

    else
    {
      v56[0] = @"PlaybackStopReasonKey";
      v56[1] = @"ImageVideoSwapBehaviorKey";
      v57[0] = &unk_1F5E5E760;
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
      v57[1] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

      LODWORD(v39) = behavior == 3;
      v42 = VUIDefaultLogObject(v41);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (v39)
      {
        if (v43)
        {
          name7 = [(VUIBackgroundMediaController *)self name];
          *buf = 134218242;
          selfCopy9 = self;
          v60 = 2112;
          v61 = name7;
          _os_log_impl(&dword_1E323F000, v42, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing image and then will stop playback.", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v50 = MEMORY[0x1E69E9820];
        v51 = 3221225472;
        v52 = __74__VUIBackgroundMediaController_setPlaybackEnabled_imageVideoSwapBehavior___block_invoke;
        v53 = &unk_1E872F038;
        objc_copyWeak(&v55, buf);
        v54 = v40;
        [(VUIBackgroundMediaController *)self _swapActiveMedia:1 animated:1 completion:&v50];

        objc_destroyWeak(&v55);
        objc_destroyWeak(buf);
      }

      else
      {
        if (v43)
        {
          name8 = [(VUIBackgroundMediaController *)self name];
          *buf = 134218242;
          selfCopy9 = self;
          v60 = 2112;
          v61 = name8;
          _os_log_impl(&dword_1E323F000, v42, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) stopping playback.", buf, 0x16u);
        }

        stateMachine4 = [(VUIBackgroundMediaController *)self stateMachine];
        [stateMachine4 postEvent:@"Stop" withContext:0 userInfo:v40];
      }
    }
  }

  else if ((v10 & playbackEnabled) == 1)
  {
    v27 = VUIDefaultLogObject(v20);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      name9 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      selfCopy9 = self;
      v60 = 2112;
      v61 = name9;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is enabled but we don't have a player, start reloading.", buf, 0x16u);
    }

    stateMachine5 = [(VUIBackgroundMediaController *)self stateMachine];
    [stateMachine5 postEvent:@"Replay"];
  }

  else
  {
    [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
  }

LABEL_37:
  if (!self->_playbackEnabled)
  {
    prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];

    if (prefetchPlayer)
    {
      prefetchPlayer2 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      [prefetchPlayer2 stop];

      prefetchPlayer3 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      [prefetchPlayer3 invalidate];

      [(VUIBackgroundMediaController *)self setPrefetchPlayer:0];
    }

    [(VUIBackgroundMediaController *)self setPrefetchPlayerViewController:0, v50, v51, v52, v53];
  }
}

void __74__VUIBackgroundMediaController_setPlaybackEnabled_imageVideoSwapBehavior___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Stop" withContext:0 userInfo:*(a1 + 32)];
}

- (BOOL)_autoPlayEnabled
{
  v38 = *MEMORY[0x1E69E9840];
  forceAutoPlay = [(VUIBackgroundMediaController *)self forceAutoPlay];
  if (forceAutoPlay)
  {
    v4 = VUIDefaultLogObject(forceAutoPlay);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      v20 = 134218242;
      selfCopy3 = self;
      v22 = 2112;
      v23 = name;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) auto play is enabled because forceAutoPlay is YES", &v20, 0x16u);
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = +[VUIGroupActivitiesManagerObjC isSessionActive];
    v8 = [MEMORY[0x1E69DF678] isFeatureEnabled:1];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    _isViewInTopMostVisibleView = [(VUIBackgroundMediaController *)self _isViewInTopMostVisibleView];
    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v13 = IsVideoAutoplayEnabled;
    v14 = VUIDefaultLogObject(IsVideoAutoplayEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      v20 = 134219010;
      selfCopy3 = self;
      v22 = 2112;
      v23 = name2;
      v24 = 1024;
      v25 = 0;
      v26 = 1024;
      v27 = 0;
      v28 = 1024;
      loadsPlayerWithFullscreenPlayback = [(VUIBackgroundMediaController *)self loadsPlayerWithFullscreenPlayback];
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) isDisabledBecauseOfFullScreenPlayback=%d, isPlaybackUIBeingShown=%d, loadsPlayerWithFullscreenPlayback=%d", &v20, 0x28u);
    }

    v6 = !(v8 & 1 | !v13 | isLowPowerModeEnabled & 1) && (!v7 || (v16 = [(VUIBackgroundMediaController *)self autoPlayInSharePlay], v16)) && _isViewInTopMostVisibleView;
    v4 = VUIDefaultLogObject(v16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name3 = [(VUIBackgroundMediaController *)self name];
      autoPlayInSharePlay = [(VUIBackgroundMediaController *)self autoPlayInSharePlay];
      v20 = 134220034;
      selfCopy3 = self;
      v22 = 2112;
      v23 = name3;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      loadsPlayerWithFullscreenPlayback = v8;
      v30 = 1024;
      v31 = isLowPowerModeEnabled;
      v32 = 1024;
      v33 = v7;
      v34 = 1024;
      v35 = autoPlayInSharePlay;
      v36 = 1024;
      v37 = _isViewInTopMostVisibleView;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) check _autoPlayEnabled=%d, isVideoAutoPlayEnabled=%d, isReduceMotionEnabled=%d,            isLowPowerModeEnabled=%d, isSharePlay=%d, autoPlayInSharePlay=%d, isViewInTopMostVisibleView=%d", &v20, 0x40u);
    }
  }

  return v6;
}

- (void)_registerForApplicationStateNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleApplicationWillResignActiveNotification_ name:*MEMORY[0x1E69DF7F0] object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DF7D8] object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillAddDeactivationReason_ name:*MEMORY[0x1E69DE878] object:0];
  [defaultCenter addObserver:self selector:sel__applicationDidRemoveDeactivationReason_ name:*MEMORY[0x1E69DE840] object:0];
}

- (void)_handleApplicationWillResignActiveNotification:(id)notification
{
  player = [(VUIBackgroundMediaController *)self player];
  if (player)
  {
    v5 = player;
    player2 = [(VUIBackgroundMediaController *)self player];
    state = [player2 state];
    playing = [MEMORY[0x1E69D5A40] playing];
    v9 = playing;
    if (state == playing)
    {
    }

    else
    {
      player3 = [(VUIBackgroundMediaController *)self player];
      state2 = [player3 state];
      loading = [MEMORY[0x1E69D5A40] loading];

      if (state2 != loading)
      {
        return;
      }
    }

    if ([(VUIBackgroundMediaController *)self _shouldPausePlaybackDueToDeactivationReasons])
    {
      [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:1];

      [(VUIBackgroundMediaController *)self pause];
    }
  }
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification
{
  v24 = *MEMORY[0x1E69E9840];
  vuiNavigationController = [(VUIBackgroundMediaController *)self vuiNavigationController];
  topViewController = [vuiNavigationController topViewController];

  vuiView = [(VUIBackgroundMediaController *)self vuiView];
  vuiView2 = [topViewController vuiView];
  v8 = [vuiView vui_isDescendantOfView:vuiView2];

  v10 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v16 = 134218754;
    selfCopy2 = self;
    v18 = 2112;
    v19 = name;
    v20 = 1024;
    stopsPlaybackWhenInactive = [(VUIBackgroundMediaController *)self stopsPlaybackWhenInactive];
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handleApplicationDidEnterBackgroundNotification, stopsPlaybackWhenInactive=%d, isTopViewController=%d", &v16, 0x22u);
  }

  if (([(VUIBackgroundMediaController *)self stopsPlaybackWhenInactive]& v8) == 1)
  {
    player = [(VUIBackgroundMediaController *)self player];

    if (player)
    {
      v14 = VUIDefaultLogObject(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(VUIBackgroundMediaController *)self name];
        v16 = 134218242;
        selfCopy2 = self;
        v18 = 2112;
        v19 = name2;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) AppDidEnterBackground: Try to show the image and stop the video", &v16, 0x16u);
      }

      [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:0];
      [(VUIBackgroundMediaController *)self _swapActiveMedia:1 animated:0 completion:0];
      [(VUIBackgroundMediaController *)self stop];
    }

    [(VUIBackgroundMediaController *)self _clearPreloadPlayback];
  }

  else
  {
    [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:1];
  }
}

- (void)_handleApplicationDidBecomeActiveNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  vuiNavigationController = [(VUIBackgroundMediaController *)self vuiNavigationController];
  topViewController = [vuiNavigationController topViewController];

  vuiView = [(VUIBackgroundMediaController *)self vuiView];
  vuiView2 = [topViewController vuiView];
  v8 = [vuiView vui_isDescendantOfView:vuiView2];

  v10 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v13 = 134218754;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    v17 = 1024;
    shouldPlayAfterAppBecomesActive = [(VUIBackgroundMediaController *)self shouldPlayAfterAppBecomesActive];
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handleApplicationDidBecomeActiveNotification, shouldPlayAfterAppBecomesActive=%d, isTopViewController=%d", &v13, 0x22u);
  }

  player = [(VUIBackgroundMediaController *)self player];
  if (player && [(VUIBackgroundMediaController *)self shouldPlayAfterAppBecomesActive])
  {

    if (v8)
    {
      [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:0];
      [(VUIBackgroundMediaController *)self play];
    }
  }

  else
  {
  }

  [(VUIBackgroundMediaController *)self _startPreloadPlaybackIfNeeded];
}

- (void)setPreloadPlaybackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    v9 = 134218754;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    v13 = 1024;
    v14 = enabledCopy;
    v15 = 2048;
    v16 = mediaInfoFetchController;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setPreloadPlaybackEnabled = %d, mediaInfoFetch: %p", &v9, 0x26u);
  }

  self->_preloadPlaybackEnabled = enabledCopy;
  mediaInfoFetchController2 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController2 setPreloadPlaybackEnabled:enabledCopy];
}

- (void)_clearPreloadPlayback
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) clearPreloadPlayback", &v7, 0x16u);
  }

  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController setPreloadPlaybackEnabled:0];

  mediaInfoFetchController2 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController2 clearPreloadedPlayback];
}

- (void)_startPreloadPlaybackIfNeeded
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v14 = 134218498;
    selfCopy3 = self;
    v16 = 2112;
    v17 = name;
    v18 = 1024;
    isPreloadPlaybackEnabled = [(VUIBackgroundMediaController *)self isPreloadPlaybackEnabled];
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) update preloadPlaybackEnabled = %d", &v14, 0x1Cu);
  }

  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController setPreloadPlaybackEnabled:{-[VUIBackgroundMediaController isPreloadPlaybackEnabled](self, "isPreloadPlaybackEnabled")}];

  v6 = +[VUIPlaybackManager sharedInstance];
  isFullscreenPlaybackUIBeingShown = [v6 isFullscreenPlaybackUIBeingShown];

  if (isFullscreenPlaybackUIBeingShown)
  {
    mediaInfoFetchController2 = VUIDefaultLogObject(v8);
    if (os_log_type_enabled(mediaInfoFetchController2, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      v14 = 134218242;
      selfCopy3 = self;
      v16 = 2112;
      v17 = name2;
      _os_log_impl(&dword_1E323F000, mediaInfoFetchController2, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) skipped startPreloadPlayback due to full screen playback", &v14, 0x16u);
    }

LABEL_11:

    return;
  }

  if ([(VUIBackgroundMediaController *)self isPlaybackEnabled])
  {
    isPreloadPlaybackEnabled2 = [(VUIBackgroundMediaController *)self isPreloadPlaybackEnabled];
    if (isPreloadPlaybackEnabled2)
    {
      v12 = VUIDefaultLogObject(isPreloadPlaybackEnabled2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [(VUIBackgroundMediaController *)self name];
        v14 = 134218242;
        selfCopy3 = self;
        v16 = 2112;
        v17 = name3;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) startPreloadPlayback", &v14, 0x16u);
      }

      mediaInfoFetchController2 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      [mediaInfoFetchController2 preloadPlayback];
      goto LABEL_11;
    }
  }
}

- (void)_applicationWillAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE838]];
  integerValue = [v5 integerValue];

  self->_deactivationReasons |= (1 << integerValue);
}

- (void)_applicationDidRemoveDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE838]];
  integerValue = [v5 integerValue];

  self->_deactivationReasons &= ~(1 << integerValue);
}

- (void)_registerPlaybackManagerNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_playBackManagerFullscreenPlaybackUIDidChangeNotification_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];
  [defaultCenter addObserver:self selector:sel_playbackManagerShowingExtrasDidChangeNotification_ name:VUIPlaybackManagerShowingExtrasDidChangeNotification[0] object:0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_updateAudioMuteWithPIPingPlayback name:VUIPlaybackManagerIsPIPingDidChangeNotification[0] object:0];
}

- (void)playBackManagerFullscreenPlaybackUIDidChangeNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  isFullscreenPlaybackUIBeingShown = [v4 isFullscreenPlaybackUIBeingShown];

  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 134218498;
    selfCopy = self;
    v14 = 2112;
    v15 = name;
    v16 = 1024;
    v17 = isFullscreenPlaybackUIBeingShown;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playbackManagerFullScreenUIDidChange: %d", buf, 0x1Cu);
  }

  if (isFullscreenPlaybackUIBeingShown)
  {
    [(VUIBackgroundMediaController *)self _clearPreloadPlayback];
    [(VUIBackgroundMediaController *)self _handlePlaybackManagerUIDidChange];
  }

  else
  {
    objc_initWeak(buf, self);
    v9 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__VUIBackgroundMediaController_playBackManagerFullscreenPlaybackUIDidChangeNotification___block_invoke;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v11, buf);
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __89__VUIBackgroundMediaController_playBackManagerFullscreenPlaybackUIDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaybackManagerUIDidChange];
}

- (void)playbackManagerShowingExtrasDidChangeNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = name;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playbackManagerShowingExtrasDidChangeNotification", &v6, 0x16u);
  }

  [(VUIBackgroundMediaController *)self _handlePlaybackManagerUIDidChange];
}

- (void)_handlePlaybackManagerUIDidChange
{
  v21 = *MEMORY[0x1E69E9840];
  loadsPlayerWithFullscreenPlayback = [(VUIBackgroundMediaController *)self loadsPlayerWithFullscreenPlayback];
  if (loadsPlayerWithFullscreenPlayback)
  {
    v4 = VUIDefaultLogObject(loadsPlayerWithFullscreenPlayback);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      v13 = 134218242;
      selfCopy2 = self;
      v15 = 2112;
      v16 = name;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) _handlePlaybackManagerUIDidChange: skip as loadsPlayerWithFullscreenPlayback=true", &v13, 0x16u);
    }
  }

  else
  {
    v6 = +[VUIPlaybackManager sharedInstance];
    isFullscreenPlaybackUIBeingShown = [v6 isFullscreenPlaybackUIBeingShown];

    v8 = +[VUIPlaybackManager sharedInstance];
    isShowingExtras = [v8 isShowingExtras];

    v11 = VUIDefaultLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      v13 = 134218754;
      selfCopy2 = self;
      v15 = 2112;
      v16 = name2;
      v17 = 1024;
      v18 = isFullscreenPlaybackUIBeingShown;
      v19 = 1024;
      v20 = isShowingExtras;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) _handlePlaybackManagerUIDidChange isFullscreenPlaybackUIBeingShown=%d, isShowingExtras=%d", &v13, 0x22u);
    }

    if ((isFullscreenPlaybackUIBeingShown | isShowingExtras))
    {
      [(VUIBackgroundMediaController *)self _disablePlaybackWhenShowingFullScreenUIIfNeeded];
    }

    else
    {
      [(VUIBackgroundMediaController *)self _enablePlaybackWhenFullScreenPlaybackEnd];
    }
  }
}

- (void)_disablePlaybackWhenShowingFullScreenUIIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  currentState = [stateMachine currentState];
  v5 = [currentState isEqualToString:@"waiting for timeout while paused"];

  player = [(VUIBackgroundMediaController *)self player];
  if (player)
  {
    player2 = [(VUIBackgroundMediaController *)self player];
    state = [player2 state];
    stopped = [MEMORY[0x1E69D5A40] stopped];
    v10 = state == stopped;
  }

  else
  {
    v10 = 0;
  }

  isPlaybackEnabled = [(VUIBackgroundMediaController *)self isPlaybackEnabled];
  v12 = isPlaybackEnabled;
  v13 = VUIDefaultLogObject(isPlaybackEnabled);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      name = [(VUIBackgroundMediaController *)self name];
      v20 = 134218242;
      selfCopy3 = self;
      v22 = 2112;
      v23 = name;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did shown, disable playback", &v20, 0x16u);
    }

    if (((v5 | v10) & 1) == 0)
    {
      v17 = VUIDefaultLogObject(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(VUIBackgroundMediaController *)self name];
        v20 = 134218242;
        selfCopy3 = self;
        v22 = 2112;
        v23 = name2;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did shown, update shouldPlayAfterFullplaybackUIDidEnd to YES", &v20, 0x16u);
      }

      [(VUIBackgroundMediaController *)self setShouldPlayAfterFullplaybackUIDidEnd:1];
    }

    [(VUIBackgroundMediaController *)self setPlaybackEnabled:0];
  }

  else
  {
    if (v14)
    {
      name3 = [(VUIBackgroundMediaController *)self name];
      v20 = 134218242;
      selfCopy3 = self;
      v22 = 2112;
      v23 = name3;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did shown, playback is disabled, ignore", &v20, 0x16u);
    }
  }
}

- (void)_enablePlaybackWhenFullScreenPlaybackEnd
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(VUIBackgroundMediaController *)self shouldPlayAfterFullplaybackUIDidEnd])
  {
    hasViewAppeared = [(VUIBackgroundMediaController *)self hasViewAppeared];
    if (hasViewAppeared)
    {
      v4 = VUIDefaultLogObject(hasViewAppeared);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        name = [(VUIBackgroundMediaController *)self name];
        v6 = 134218242;
        selfCopy = self;
        v8 = 2112;
        v9 = name;
        _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did end, enable playback", &v6, 0x16u);
      }

      [(VUIBackgroundMediaController *)self setShouldPlayAfterFullplaybackUIDidEnd:0];
      [(VUIBackgroundMediaController *)self setPlaybackEnabled:1];
    }
  }
}

- (id)_activePIPPlayer
{
  v2 = +[VUIPlaybackManager sharedInstance];
  backgroundMediaPlayer = [v2 backgroundMediaPlayer];
  v4 = backgroundMediaPlayer;
  if (backgroundMediaPlayer)
  {
    activePlayer = backgroundMediaPlayer;
  }

  else
  {
    v6 = +[VUIPlaybackManager sharedInstance];
    activePlayer = [v6 activePlayer];
  }

  return activePlayer;
}

- (void)updateAudioMuteWithPIPingPlayback
{
  name = [self name];
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setActivePIPingPlayer:(id)player
{
  playerCopy = player;
  activePIPingPlayer = self->_activePIPingPlayer;
  if (activePIPingPlayer != playerCopy)
  {
    v10 = playerCopy;
    v7 = MEMORY[0x1E69D6090];
    if (activePIPingPlayer)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*v7 object:self->_activePIPingPlayer];

      [(VUIPlayer *)self->_activePIPingPlayer removeObserver:self forKeyPath:@"muted" context:__PIPingPlayerMutedKVOContext];
    }

    objc_storeStrong(&self->_activePIPingPlayer, player);
    playerCopy = v10;
    if (v10)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__pipPlaybackStateChanged_ name:*v7 object:v10];

      [(VUIPlayer *)v10 addObserver:self forKeyPath:@"muted" options:0 context:__PIPingPlayerMutedKVOContext];
      playerCopy = v10;
    }
  }
}

- (void)_pipPlaybackStateChanged:(id)changed
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69D6098]];

  userInfo2 = [changedCopy userInfo];

  v8 = [userInfo2 objectForKey:*MEMORY[0x1E69D60A0]];

  v10 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v13 = 134218754;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) PIP playback state changed, new state %@, old state %@", &v13, 0x2Au);
  }

  playing = [MEMORY[0x1E69D5A40] playing];

  if (v6 == playing)
  {
    [(VUIBackgroundMediaController *)self setMutePlaybackInBackground:1];
  }
}

- (void)_pipPlaybackDidChangeMutedState
{
  v12 = *MEMORY[0x1E69E9840];
  _activePIPPlayer = [(VUIBackgroundMediaController *)self _activePIPPlayer];
  v4 = VUIDefaultLogObject(_activePIPPlayer);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v6 = 134218498;
    selfCopy = self;
    v8 = 2112;
    v9 = name;
    v10 = 1024;
    muted = [_activePIPPlayer muted];
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) PIP playback did change muted state: %d", &v6, 0x1Cu);
  }

  if (_activePIPPlayer && ([_activePIPPlayer muted] & 1) == 0)
  {
    [(VUIBackgroundMediaController *)self setMutePlaybackInBackground:1];
  }
}

- (void)_registerAudioSessionNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__audioSessionSilentSecondaryAudioDidChange_ name:*MEMORY[0x1E6958248] object:0];
}

- (void)_registerPlayerNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v17 = 134218242;
    selfCopy = self;
    v19 = 2112;
    v20 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) register player notifications and add observers", &v17, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69D6090];
  player = [(VUIBackgroundMediaController *)self player];
  [defaultCenter addObserver:self selector:sel__playbackStateChanged_ name:v6 object:player];

  v8 = *MEMORY[0x1E69D5F38];
  player2 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter addObserver:self selector:sel__playbackErrorDidOccur_ name:v8 object:player2];

  v10 = *MEMORY[0x1E69D60A8];
  player3 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter addObserver:self selector:sel__playbackStateWillChange_ name:v10 object:player3];

  v12 = *MEMORY[0x1E69D5F40];
  player4 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter addObserver:self selector:sel__playbackRateDidChange_ name:v12 object:player4];

  v14 = *MEMORY[0x1E69D60C8];
  player5 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter addObserver:self selector:sel__externalPlaybackStateChanged_ name:v14 object:player5];

  [defaultCenter addObserver:self selector:sel__mediaControllerStartedPlayback_ name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];
  [defaultCenter addObserver:self selector:sel__mediaControllerStartedPlayback_ name:@"VUIBackgroundMediaControllerDidStartPlaybackNotification" object:0];
  if (![(VUIBackgroundMediaController *)self observingInitialMediaItemHasCompletedInitialLoading])
  {
    player6 = [(VUIBackgroundMediaController *)self player];
    [player6 addObserver:self forKeyPath:@"initialMediaItemHasCompletedInitialLoading" options:0 context:__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext_0];

    [(VUIBackgroundMediaController *)self setObservingInitialMediaItemHasCompletedInitialLoading:1];
  }
}

- (void)_unregisterPlayerNotifications
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v15 = 134218242;
    selfCopy = self;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) unregister player notifications and remove observers", &v15, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69D6090];
  player = [(VUIBackgroundMediaController *)self player];
  [defaultCenter removeObserver:self name:v6 object:player];

  v8 = *MEMORY[0x1E69D5F38];
  player2 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter removeObserver:self name:v8 object:player2];

  v10 = *MEMORY[0x1E69D60A8];
  player3 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter removeObserver:self name:v10 object:player3];

  v12 = *MEMORY[0x1E69D60C8];
  player4 = [(VUIBackgroundMediaController *)self player];
  [defaultCenter removeObserver:self name:v12 object:player4];

  [defaultCenter removeObserver:self name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];
  [defaultCenter removeObserver:self name:@"VUIBackgroundMediaControllerDidStartPlaybackNotification" object:0];
  if ([(VUIBackgroundMediaController *)self observingInitialMediaItemHasCompletedInitialLoading])
  {
    player5 = [(VUIBackgroundMediaController *)self player];
    [player5 removeObserver:self forKeyPath:@"initialMediaItemHasCompletedInitialLoading" context:__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext_0];

    [(VUIBackgroundMediaController *)self setObservingInitialMediaItemHasCompletedInitialLoading:0];
  }
}

- (BOOL)_canPause
{
  player = [(VUIBackgroundMediaController *)self player];
  [player duration];
  v4 = v3 != *MEMORY[0x1E69D5A78];

  return v4;
}

- (void)_updateWithMediaInfo:(id)info withDirection:(unint64_t)direction imageVideoSwapBehavior:(unint64_t)behavior animated:(BOOL)animated
{
  animatedCopy = animated;
  v32[4] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (infoCopy)
  {
    [(VUIBackgroundMediaController *)self _addContentViewIfNeeded];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tvpPlaylist = [infoCopy tvpPlaylist];
      -[VUIBackgroundMediaController setVpafPlaybackStartReason:](self, "setVpafPlaybackStartReason:", [infoCopy playbackStartReason]);
      -[VUIBackgroundMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [infoCopy playbackStopReason]);
    }

    else
    {
      tvpPlaylist = 0;
    }

    titleForLogging = [(VUIBackgroundMediaController *)self titleForLogging];
    if ([titleForLogging length])
    {
      name = [(VUIBackgroundMediaController *)self name];
      v14 = [name rangeOfString:titleForLogging];
      v16 = v15;

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        name2 = [(VUIBackgroundMediaController *)self name];
        v18 = [name2 stringByReplacingCharactersInRange:v14 withString:{v16, &stru_1F5DB25C0}];
        name = self->_name;
        self->_name = v18;

        [(VUIBackgroundMediaController *)self setTitleForLogging:0];
      }
    }

    currentMediaItem = [tvpPlaylist currentMediaItem];
    v21 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

    if ([v21 length])
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v21];
      [(VUIBackgroundMediaController *)self setTitleForLogging:v22];
      v23 = [(NSString *)self->_name stringByAppendingString:v22];
      v24 = self->_name;
      self->_name = v23;
    }

    alphaImageProxy = [infoCopy alphaImageProxy];
    [(VUIBackgroundMediaController *)self _setAlphaImageProxy:alphaImageProxy];

    v31[0] = @"DirectionKey";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:direction];
    v32[0] = v26;
    v31[1] = @"AnimatedKey";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
    v32[1] = v27;
    v31[2] = @"ImageVideoSwapBehaviorKey";
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
    v31[3] = @"PlaybackStopReasonKey";
    v32[2] = v28;
    v32[3] = &unk_1F5E5E778;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];

    stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
    [stateMachine postEvent:@"Set media info" withContext:0 userInfo:v29];
  }
}

- (BOOL)_playlist:(id)_playlist contentMatchesPlaylist:(id)playlist
{
  playlistCopy = playlist;
  _playlistCopy = _playlist;
  currentMediaItem = [_playlistCopy currentMediaItem];
  v8 = *MEMORY[0x1E69D5D88];
  v9 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D88]];

  currentMediaItem2 = [playlistCopy currentMediaItem];
  v11 = [currentMediaItem2 mediaItemMetadataForProperty:v8];

  currentMediaItem3 = [_playlistCopy currentMediaItem];
  v13 = [currentMediaItem3 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  currentMediaItem4 = [playlistCopy currentMediaItem];
  v15 = [currentMediaItem4 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  v16 = [_playlistCopy isEqualToPlaylist:playlistCopy];
  if (v9 | v11)
  {
    v17 = [v9 isEqualToDate:v11];
  }

  else
  {
    v17 = 1;
  }

  if (!(v13 | v15))
  {
    v18 = 1;
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = v17 & v18;
    goto LABEL_9;
  }

  v18 = [v13 isEqualToString:v15];
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = 0;
LABEL_9:

  return v19;
}

- (BOOL)_mediaInfo:(id)info contentMatchesMediaInfo:(id)mediaInfo
{
  v4 = 0;
  if (info && mediaInfo)
  {
    mediaInfoCopy = mediaInfo;
    infoCopy = info;
    imageProxies = [infoCopy imageProxies];
    firstObject = [imageProxies firstObject];

    imageProxies2 = [mediaInfoCopy imageProxies];
    firstObject2 = [imageProxies2 firstObject];

    tvpPlaylist = [infoCopy tvpPlaylist];

    tvpPlaylist2 = [mediaInfoCopy tvpPlaylist];

    if (firstObject | firstObject2)
    {
      v15 = [firstObject isEqual:firstObject2];
    }

    else
    {
      v15 = 1;
    }

    if (tvpPlaylist | tvpPlaylist2)
    {
      v16 = [(VUIBackgroundMediaController *)self _playlist:tvpPlaylist contentMatchesPlaylist:tvpPlaylist2];
    }

    else
    {
      v16 = 1;
    }

    v4 = v15 & v16;
  }

  return v4;
}

- (BOOL)_currentMediaInfoImagesMatchesNewMediaInfoImage:(id)image
{
  imageCopy = image;
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  imageProxies = [currentMediaInfo imageProxies];
  firstObject = [imageProxies firstObject];

  imageProxies2 = [imageCopy imageProxies];

  firstObject2 = [imageProxies2 firstObject];

  v10 = 0;
  if (firstObject && firstObject2)
  {
    v10 = [firstObject isEqual:firstObject2];
  }

  return v10;
}

- (BOOL)_currentMediaInfoContentMatchesMediaInfo:(id)info
{
  infoCopy = info;
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  LOBYTE(self) = [(VUIBackgroundMediaController *)self _mediaInfo:currentMediaInfo contentMatchesMediaInfo:infoCopy];

  return self;
}

- (void)_setAlphaImageProxy:(id)proxy
{
  proxyCopy = proxy;
  if (([(VUIImageProxy *)self->_alphaImageProxy isEqual:?]& 1) == 0)
  {
    [(VUIImageProxy *)self->_alphaImageProxy cancel];
    alphaProxyImageView = [(VUIBackgroundMediaController *)self alphaProxyImageView];
    [alphaProxyImageView setImage:0];

    objc_storeStrong(&self->_alphaImageProxy, proxy);
    [(VUIBackgroundMediaController *)self loadAlphaImageProxy];
    [(VUIBackgroundMediaController *)self _addAlphaProxyImageViewIfNeeded];
  }
}

- (void)loadAlphaImageProxy
{
  alphaImageProxy = [(VUIBackgroundMediaController *)self alphaImageProxy];
  if (alphaImageProxy)
  {
    v4 = alphaImageProxy;
    alphaProxyImageView = [(VUIBackgroundMediaController *)self alphaProxyImageView];
    image = [alphaProxyImageView image];

    if (!image)
    {
      objc_initWeak(&location, self);
      alphaImageProxy2 = [(VUIBackgroundMediaController *)self alphaImageProxy];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke;
      v12 = &unk_1E87376E8;
      objc_copyWeak(&v13, &location);
      [alphaImageProxy2 setCompletionHandler:&v9];

      v8 = [(VUIBackgroundMediaController *)self alphaImageProxy:v9];
      [v8 load];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uiImage];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke_2;
  v13 = &unk_1E872F038;
  objc_copyWeak(&v15, (a1 + 32));
  v8 = v7;
  v14 = v8;
  v9 = &v10;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v12(v9);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  objc_destroyWeak(&v15);
}

void __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained alphaProxyImageView];
  [v2 setImage:*(a1 + 32)];

  v3 = [WeakRetained proxyImageView];
  v4 = [v3 image];
  if (v4)
  {
    v5 = v4;
    v6 = [WeakRetained proxyImageView];
    v7 = [v6 isHidden];

    if ((v7 & 1) == 0)
    {
      [WeakRetained showAlphaImage:1 animated:1];
    }
  }

  else
  {
  }
}

- (void)_performPlayerVolumeAnimatedUpdate:(BOOL)update
{
  updateCopy = update;
  v29 = *MEMORY[0x1E69E9840];
  player = [(VUIBackgroundMediaController *)self player];
  [player volume];
  v7 = v6;

  if (updateCopy)
  {
    foregroundVolume = [(VUIBackgroundMediaController *)self foregroundVolume];
  }

  else
  {
    foregroundVolume = [(VUIBackgroundMediaController *)self backgroundVolume];
  }

  v10 = v9;
  if (v9 == -1.0)
  {
    v11 = VUIDefaultLogObject(foregroundVolume);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      selfCopy2 = self;
      v25 = 2112;
      v26 = name;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) volume fading is not supported, returning without any volume changes.", buf, 0x16u);
    }
  }

  else
  {
    v13 = v7 < v9;
    if (!updateCopy)
    {
      v13 = v7 > v9;
    }

    if (v13)
    {
      [(VUIBackgroundMediaController *)self fullscreenTransitionVolumeAnimationChanges];
      if (v14 == -1.0)
      {
        if (updateCopy)
        {
          v15 = v10 - v7;
        }

        else
        {
          v15 = v7 - v10;
        }

        *&v16 = v15 / [(VUIBackgroundMediaController *)self numberOfVolumeIncrements];
        [(VUIBackgroundMediaController *)self setFullscreenTransitionVolumeAnimationChanges:v16];
      }

      [(VUIBackgroundMediaController *)self volumeTransitionAnimationDuration];
      v18 = v17 / [(VUIBackgroundMediaController *)self numberOfVolumeIncrements];
      v22 = [MEMORY[0x1E696AD98] numberWithBool:updateCopy];
      [(VUIBackgroundMediaController *)self performSelector:sel__updatePlayerVolume_ withObject:v18 afterDelay:?];
    }

    else
    {
      v19 = VUIDefaultLogObject(foregroundVolume);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218498;
        selfCopy2 = self;
        v25 = 2112;
        v26 = name2;
        v27 = 2048;
        v28 = v10;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) reached final volume: [%f].", buf, 0x20u);
      }

      LODWORD(v21) = -1.0;
      [(VUIBackgroundMediaController *)self setFullscreenTransitionVolumeAnimationChanges:v21];
    }
  }
}

- (void)_updatePlayerVolume:(id)volume
{
  v32 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  v5 = volumeCopy;
  if (volumeCopy)
  {
    bOOLValue = [volumeCopy BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  player = [(VUIBackgroundMediaController *)self player];
  [player volume];
  v9 = v8;

  if (bOOLValue)
  {
    [(VUIBackgroundMediaController *)self foregroundVolume];
    v11 = v10;
    fullscreenTransitionVolumeAnimationChanges = [(VUIBackgroundMediaController *)self fullscreenTransitionVolumeAnimationChanges];
    v14 = v13;
    if (v9 >= v11)
    {
LABEL_17:
      v21 = VUIDefaultLogObject(fullscreenTransitionVolumeAnimationChanges);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        name = [(VUIBackgroundMediaController *)self name];
        v24 = 134218754;
        selfCopy = self;
        v26 = 2112;
        v27 = name;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v14;
        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) either reached final volume: [%f] or volume changes are invalid: [%f]", &v24, 0x2Au);
      }

      LODWORD(v23) = -1.0;
      [(VUIBackgroundMediaController *)self setFullscreenTransitionVolumeAnimationChanges:v23];
      goto LABEL_20;
    }
  }

  else
  {
    [(VUIBackgroundMediaController *)self backgroundVolume];
    v11 = v15;
    fullscreenTransitionVolumeAnimationChanges = [(VUIBackgroundMediaController *)self fullscreenTransitionVolumeAnimationChanges];
    v14 = v16;
  }

  if (((v9 <= v11) & ~bOOLValue) != 0 || v14 == -1.0)
  {
    goto LABEL_17;
  }

  v17 = v11 - v9;
  if (!bOOLValue)
  {
    v17 = v9 - v11;
  }

  if (v17 >= v14)
  {
    v17 = v14;
  }

  if (!bOOLValue)
  {
    v17 = -v17;
  }

  v18 = v9 + v17;
  player2 = [(VUIBackgroundMediaController *)self player];
  *&v20 = v18;
  [player2 setVolume:v20];

  [(VUIBackgroundMediaController *)self _performPlayerVolumeAnimatedUpdate:bOOLValue];
LABEL_20:
}

- (void)_cleanUpPlaybackTimers
{
  v15 = *MEMORY[0x1E69E9840];
  playbackLoadingTimer = [(VUIBackgroundMediaController *)self playbackLoadingTimer];
  v4 = playbackLoadingTimer;
  if (playbackLoadingTimer)
  {
    v5 = VUIDefaultLogObject(playbackLoadingTimer);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      v11 = 134218242;
      selfCopy2 = self;
      v13 = 2112;
      v14 = name;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) invalidating playlist loading timer.", &v11, 0x16u);
    }

    [v4 invalidate];
    [(VUIBackgroundMediaController *)self setPlaybackLoadingTimer:0];
    [(VUIBackgroundMediaController *)self setPlaybackLoadingStartDate:0];
  }

  playbackDelayTimer = [(VUIBackgroundMediaController *)self playbackDelayTimer];
  v8 = playbackDelayTimer;
  if (playbackDelayTimer)
  {
    v9 = VUIDefaultLogObject(playbackDelayTimer);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      v11 = 134218242;
      selfCopy2 = self;
      v13 = 2112;
      v14 = name2;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) invalidating playback timer.", &v11, 0x16u);
    }

    [v8 invalidate];
    [(VUIBackgroundMediaController *)self setPlaybackDelayTimer:0];
    [(VUIBackgroundMediaController *)self setPlaybackLoadingStartDate:0];
  }
}

- (void)_cleanUpEverything
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) cleaning up everything for", &v8, 0x16u);
  }

  proxyImageView = [(VUIBackgroundMediaController *)self proxyImageView];
  [proxyImageView setImage:0];

  proxyImageView2 = [(VUIBackgroundMediaController *)self proxyImageView];
  [proxyImageView2 setImageProxy:0];

  alphaImageProxy = [(VUIBackgroundMediaController *)self alphaImageProxy];
  [alphaImageProxy cancel];

  [(VUIBackgroundMediaController *)self _cleanUpEverythingPlaybackRelated];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_cleanUpEverythingPlaybackRelated
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 134218242;
    selfCopy = self;
    v44 = 2112;
    v45 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) cleaning up player and playback view controller.", buf, 0x16u);
  }

  [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
  [(VUIBackgroundMediaController *)self _unregisterPlayerNotifications];
  [(VUIBackgroundMediaController *)self _removePlaybackViewController];
  secondaryVideoView = [(VUIBackgroundMediaController *)self secondaryVideoView];
  if (secondaryVideoView)
  {
    secondaryVideoView2 = [(VUIBackgroundMediaController *)self secondaryVideoView];
    superview = [secondaryVideoView2 superview];
    v8 = superview == 0;

    if (!v8)
    {
      secondaryVideoView3 = [(VUIBackgroundMediaController *)self secondaryVideoView];
      [secondaryVideoView3 removeFromSuperview];
    }
  }

  [(VUIBackgroundMediaController *)self setSecondaryVideoView:0];
  [(VUIBackgroundMediaController *)self setAvPlayerViewController:0];
  [(VUIBackgroundMediaController *)self setPlaybackContainerController:0];
  if ([(VUIBackgroundMediaController *)self didWeCreatePlayer])
  {
    player = [(VUIBackgroundMediaController *)self player];
    [player removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    player2 = [(VUIBackgroundMediaController *)self player];
    [player2 removeObserver:self forKeyPath:@"preferredAudioLanguageCode" context:__PlayerPreferredAudioLanguageCode];

    player3 = [(VUIBackgroundMediaController *)self player];
    [player3 removeObserver:self forKeyPath:@"prefersAudioDescriptions" context:__PlayerPrefersAudioDescriptions];

    [(VUIBackgroundMediaController *)self videoAudioRampDuration];
    v14 = v13;
    if (v13 <= 0.0)
    {
      player4 = [(VUIBackgroundMediaController *)self player];
      state = [player4 state];
      stopped = [MEMORY[0x1E69D5A40] stopped];
      v23 = state == stopped;

      if (v23)
      {
        player5 = [(VUIBackgroundMediaController *)self player];
        [player5 setElapsedTime:0.0];
      }
    }

    else
    {
      objc_initWeak(buf, self);
      player6 = [(VUIBackgroundMediaController *)self player];
      rampDownPlayer = [(VUIBackgroundMediaController *)self rampDownPlayer];

      if (rampDownPlayer)
      {
        v17 = +[VUIPlayerValidationManager sharedInstance];
        rampDownPlayer2 = [(VUIBackgroundMediaController *)self rampDownPlayer];
        [v17 removeReferenceForPlayer:rampDownPlayer2];
      }

      [(VUIBackgroundMediaController *)self setRampDownPlayer:player6];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke;
      block[3] = &unk_1E8737710;
      v40 = player6;
      v41[1] = *&v14;
      v19 = player6;
      objc_copyWeak(v41, buf);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(v41);

      objc_destroyWeak(buf);
    }
  }

  player7 = [(VUIBackgroundMediaController *)self player];
  if (player7)
  {
    player8 = [(VUIBackgroundMediaController *)self player];
    state2 = [player8 state];
    stopped2 = [MEMORY[0x1E69D5A40] stopped];
    v29 = state2 == stopped2;

    if (!v29)
    {
      [(VUIBackgroundMediaController *)self videoAudioRampDuration];
      if (v30 == 0.0)
      {
        v31 = MEMORY[0x1E696AD98];
        player9 = [(VUIBackgroundMediaController *)self player];
        [player9 cachedElapsedTime];
        v33 = [v31 numberWithDouble:?];
        [(VUIBackgroundMediaController *)self setElapsedTimeWhenStopped:v33];

        player10 = [(VUIBackgroundMediaController *)self player];
        [player10 stop];
      }

      stopped3 = [MEMORY[0x1E69D5A40] stopped];
      [(VUIBackgroundMediaController *)self _recordBgAutoPlayMediaEventForPlaybackState:stopped3];
    }
  }

  player11 = [(VUIBackgroundMediaController *)self player];

  if (player11)
  {
    v37 = +[VUIPlayerValidationManager sharedInstance];
    player12 = [(VUIBackgroundMediaController *)self player];
    [v37 removeReferenceForPlayer:player12];
  }

  [(VUIBackgroundMediaController *)self setPlayer:0];
}

void __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [MEMORY[0x1E69D5A40] stopped];

  if (v2 != v3)
  {
    [*(a1 + 32) pauseWithVolumeRampDuration:*(a1 + 48)];
    v4 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke_2;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanUpRampDownPlayer];
}

- (void)_cleanUpRampDownPlayer
{
  rampDownPlayer = [(VUIBackgroundMediaController *)self rampDownPlayer];

  if (rampDownPlayer)
  {
    rampDownPlayer2 = [(VUIBackgroundMediaController *)self rampDownPlayer];
    [rampDownPlayer2 stop];

    rampDownPlayer3 = [(VUIBackgroundMediaController *)self rampDownPlayer];
    [rampDownPlayer3 setElapsedTime:0.0];

    v6 = +[VUIPlayerValidationManager sharedInstance];
    rampDownPlayer4 = [(VUIBackgroundMediaController *)self rampDownPlayer];
    [v6 removeReferenceForPlayer:rampDownPlayer4];

    [(VUIBackgroundMediaController *)self setRampDownPlayer:0];
  }
}

- (void)_addOverlayViewAnimatedIfNeeded:(BOOL)needed dismissAfter:(double)after
{
  neededCopy = needed;
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  overlayView = [currentMediaInfo overlayView];

  if (overlayView)
  {
    superview = [overlayView superview];

    if (!superview)
    {
      [overlayView vuiAlpha];
      v11 = v10;
      [overlayView setVuiAlpha:0.0];
      view = [(VUIBackgroundMediaController *)self view];
      [view vui_addSubview:overlayView oldView:0];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke;
      aBlock[3] = &unk_1E872E4E0;
      v25[1] = *&after;
      objc_copyWeak(v25, &location);
      v13 = overlayView;
      v24 = v13;
      v26 = neededCopy;
      v14 = _Block_copy(aBlock);
      if (neededCopy)
      {
        v15 = MEMORY[0x1E69DD250];
        imageAnimationDuration = self->_imageAnimationDuration;
        imageAnimationOptions = self->_imageAnimationOptions;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_3;
        v20[3] = &unk_1E872FEF8;
        v21 = v13;
        v22 = v11;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_4;
        v18[3] = &unk_1E872D790;
        v19 = v14;
        [v15 vui_animateWithDuration:imageAnimationOptions delay:v20 options:v18 animations:imageAnimationDuration completion:0.0];
      }

      else
      {
        [v13 setVuiAlpha:v11];
        v14[2](v14);
      }

      objc_destroyWeak(v25);
      objc_destroyWeak(&location);
    }
  }
}

void __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 0.0)
  {
    v3 = MEMORY[0x1E695DFF0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_2;
    v5[3] = &unk_1E872F8F8;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    v8 = *(a1 + 56);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:v1];

    objc_destroyWeak(&v7);
  }
}

void __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeOverlayView:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)_removeOverlayView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v7 = viewCopy;
  if (viewCopy)
  {
    [viewCopy setVuiAlpha:1.0];
    if (animatedCopy)
    {
      v8 = MEMORY[0x1E69DD250];
      imageAnimationDuration = self->_imageAnimationDuration;
      imageAnimationOptions = self->_imageAnimationOptions;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__VUIBackgroundMediaController__removeOverlayView_animated___block_invoke;
      v13[3] = &unk_1E872D768;
      v14 = v7;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60__VUIBackgroundMediaController__removeOverlayView_animated___block_invoke_2;
      v11[3] = &unk_1E872F758;
      v12 = v14;
      [v8 vui_animateWithDuration:imageAnimationOptions delay:v13 options:v11 animations:imageAnimationDuration completion:0.0];
    }

    else
    {
      [v7 setVuiAlpha:0.0];
      [v7 removeFromSuperview];
    }
  }
}

- (void)_animateTransitionFromView:(id)view toView:(id)toView duration:(double)duration direction:(unint64_t)direction completion:(id)completion
{
  v58[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  toViewCopy = toView;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if ([(VUIBackgroundMediaController *)self animateImageChange]&& [(VUIBackgroundMediaController *)self imageSwappingAnimationType])
  {
    constraints = [toViewCopy constraints];
    [toViewCopy removeConstraints:constraints];

    view = [(VUIBackgroundMediaController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v59);

    widthAnchor = [toViewCopy widthAnchor];
    view2 = [(VUIBackgroundMediaController *)self view];
    widthAnchor2 = [view2 widthAnchor];
    v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

    heightAnchor = [toViewCopy heightAnchor];
    view3 = [(VUIBackgroundMediaController *)self view];
    heightAnchor2 = [view3 heightAnchor];
    v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

    centerXAnchor = [toViewCopy centerXAnchor];
    view4 = [(VUIBackgroundMediaController *)self view];
    centerXAnchor2 = [view4 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    centerYAnchor = [toViewCopy centerYAnchor];
    view5 = [(VUIBackgroundMediaController *)self view];
    centerYAnchor2 = [view5 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    imageSwappingAnimationType = [(VUIBackgroundMediaController *)self imageSwappingAnimationType];
    if (imageSwappingAnimationType == 1)
    {
      view6 = [(VUIBackgroundMediaController *)self view];
      [view6 vui_bringSubviewToFront:toViewCopy];

      [viewCopy setVuiAlpha:1.0];
      [toViewCopy setVuiAlpha:0.0];
      goto LABEL_18;
    }

    if (imageSwappingAnimationType != 2)
    {
      if (imageSwappingAnimationType == 3)
      {
        view7 = [(VUIBackgroundMediaController *)self view];
        [view7 vui_bringSubviewToFront:toViewCopy];

        if (direction == 2)
        {
          [v27 setConstant:Width * 0.5];
          goto LABEL_16;
        }

        if (direction == 1)
        {
          [v27 setConstant:Width * -0.5];
LABEL_16:
          v35 = -Width;
          v34 = v45;
          goto LABEL_17;
        }
      }

LABEL_18:
      v37 = MEMORY[0x1E696ACD8];
      v58[0] = v45;
      v58[1] = v23;
      v58[2] = v27;
      v58[3] = v31;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:{4, v45}];
      [v37 activateConstraints:v38];

      view8 = [(VUIBackgroundMediaController *)self view];
      [view8 vui_setNeedsLayout];

      view9 = [(VUIBackgroundMediaController *)self view];
      [view9 vui_layoutIfNeeded];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke;
      block[3] = &unk_1E8737760;
      objc_copyWeak(v56, &location);
      v56[1] = direction;
      v49 = v27;
      v50 = v46;
      v56[2] = *&Width;
      v56[3] = *&duration;
      v51 = viewCopy;
      v52 = toViewCopy;
      v53 = v23;
      v54 = v31;
      v55 = completionCopy;
      v41 = v31;
      v42 = v23;
      v43 = v46;
      v44 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(v56);
      goto LABEL_19;
    }

    v34 = v27;
    v35 = Width;
    if (direction != 2)
    {
      if (direction != 1)
      {
        goto LABEL_18;
      }

      v35 = -Width;
      v34 = v27;
    }

LABEL_17:
    [v34 setConstant:{v35, v45}];
    goto LABEL_18;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_19:
  objc_destroyWeak(&location);
}

void __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [WeakRetained imageSwappingAnimationType];
  if (v3 == 3)
  {
    [*(a1 + 32) setConstant:0.0];
    [*(a1 + 40) setConstant:0.0];
    v8 = *(a1 + 96);
    if (v8 == 2)
    {
      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v9 = *(a1 + 104);
      v10 = -0.25;
    }

    else
    {
      if (v8 != 1)
      {
        goto LABEL_13;
      }

      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v9 = *(a1 + 104);
      v10 = 0.25;
    }

    v7 = v9 * v10;
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    [*(a1 + 32) setConstant:0.0];
    v4 = *(a1 + 96);
    if (v4 == 2)
    {
      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v7 = -*(a1 + 104);
      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v7 = *(a1 + 104);
LABEL_12:
      [v5 setConstant:v7];
    }
  }

LABEL_13:
  v11 = MEMORY[0x1E69DD250];
  v12 = *(a1 + 112);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_2;
  v20[3] = &unk_1E872D9B8;
  objc_copyWeak(&v23, (a1 + 88));
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_3;
  v13[3] = &unk_1E8737738;
  objc_copyWeak(&v19, (a1 + 88));
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  [v11 vui_animateWithDuration:v20 animations:v13 completion:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v23);
}

void __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained imageSwappingAnimationType] == 1)
  {
    [a1[4] setVuiAlpha:0.0];
    [a1[5] setVuiAlpha:1.0];
  }

  v2 = [WeakRetained view];
  [v2 vui_setNeedsLayout];

  v3 = [WeakRetained view];
  [v3 vui_layoutIfNeeded];
}

void __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setProxyImageWidthConstraint:*(a1 + 32)];
  [WeakRetained setProxyImageHeightConstraint:*(a1 + 40)];
  [WeakRetained setProxyImageCenterXConstraint:*(a1 + 48)];
  [WeakRetained setProxyImageCenterYConstraint:*(a1 + 56)];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_transitionToNewImage:(id)image animated:(BOOL)animated direction:(unint64_t)direction completion:(id)completion
{
  animatedCopy = animated;
  imageCopy = image;
  completionCopy = completion;
  objc_initWeak(&location, self);
  proxyImageView = [(VUIBackgroundMediaController *)self proxyImageView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke;
  aBlock[3] = &unk_1E872F038;
  objc_copyWeak(&v34, &location);
  v13 = proxyImageView;
  v33 = v13;
  v14 = _Block_copy(aBlock);
  if (animatedCopy && [(VUIBackgroundMediaController *)self animateImageChange])
  {
    v15 = objc_alloc_init(MEMORY[0x1E69DF740]);
    [(VUIBackgroundMediaController *)self _configMirroredImageForBackgroundImage:v15];
    [(VUIBackgroundMediaController *)self _configImageTransitionContextForBackgroundImage:v15];
    uiImage = [imageCopy uiImage];
    [v15 setImage:uiImage];

    [v15 setVuiContentMode:{objc_msgSend(v13, "vuiContentMode")}];
    view = [(VUIBackgroundMediaController *)self view];
    [view vui_insertSubview:v15 belowSubview:v13 oldView:0];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    proxyImageView2 = [(VUIBackgroundMediaController *)self proxyImageView];
    [proxyImageView2 setVuiAlpha:1.0];

    [(VUIBackgroundMediaController *)self setProxyImageView:v15];
    [(VUIBackgroundMediaController *)self imageTransitionAnimationDuration];
    v20 = v19;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke_324;
    v28 = &unk_1E8737788;
    v30 = v14;
    v29 = v13;
    v31 = completionCopy;
    [(VUIBackgroundMediaController *)self _animateTransitionFromView:v29 toView:v15 duration:direction direction:&v25 completion:v20];
  }

  else
  {
    proxyImageView3 = [(VUIBackgroundMediaController *)self proxyImageView];
    [(VUIBackgroundMediaController *)self _configMirroredImageForBackgroundImage:proxyImageView3];

    proxyImageView4 = [(VUIBackgroundMediaController *)self proxyImageView];
    uiImage2 = [imageCopy uiImage];
    [proxyImageView4 setImage:uiImage2];

    v14[2](v14);
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerImageLoadedNotification" object:self];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    v9 = 134218242;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing background image now.", &v9, 0x16u);
  }

  [*(a1 + 32) setVuiAlpha:1.0];
  v5 = [WeakRetained playbackContainerController];
  v6 = [v5 view];
  [v6 setVuiAlpha:0.0];

  v7 = [WeakRetained currentMediaInfo];
  LODWORD(v6) = [v7 showsSecondaryVideoView];

  if (v6)
  {
    v8 = [WeakRetained secondaryVideoView];
    [v8 setVuiAlpha:0.0];
  }
}

uint64_t __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke_324(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) vui_removeFromSuperView];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_swapActiveMedia:(BOOL)media animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (media)
  {
    isAudioOnly = 1;
  }

  else
  {
    currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
    isAudioOnly = [currentMediaInfo isAudioOnly];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke;
  aBlock[3] = &unk_1E8731108;
  objc_copyWeak(&v37, &location);
  v38 = isAudioOnly;
  v39 = animatedCopy;
  v11 = _Block_copy(aBlock);
  if (!animatedCopy)
  {
    goto LABEL_11;
  }

  playbackContainerController = [(VUIBackgroundMediaController *)self playbackContainerController];
  view = [playbackContainerController view];
  if (!view)
  {

LABEL_11:
    v22 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_5;
    v25[3] = &unk_1E872FF20;
    v26 = v11;
    v27 = completionCopy;
    [v22 vui_performWithoutAnimation:v25];
    [(VUIBackgroundMediaController *)self showAlphaImage:1 animated:0];

    goto LABEL_12;
  }

  proxyImageView = [(VUIBackgroundMediaController *)self proxyImageView];

  if (!proxyImageView || ![(VUIBackgroundMediaController *)self animateVideoChange])
  {
    goto LABEL_11;
  }

  videoSwappingAnimationType = [(VUIBackgroundMediaController *)self videoSwappingAnimationType];
  v16 = MEMORY[0x1E69DD250];
  if (videoSwappingAnimationType)
  {
    view2 = [(VUIBackgroundMediaController *)self view];
    [(VUIBackgroundMediaController *)self imageVideoTransitionAnimationDuration];
    v19 = v18;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_3;
    v30[3] = &unk_1E872D7E0;
    v31 = v11;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_4;
    v28[3] = &unk_1E872D790;
    v29 = completionCopy;
    [v16 vui_transitionWithView:view2 duration:5242880 options:v30 animations:v28 completion:v19];
    v20 = &v31;
    v21 = &v29;
  }

  else
  {
    [(VUIBackgroundMediaController *)self imageVideoTransitionAnimationDuration];
    v24 = v23;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_325;
    v34[3] = &unk_1E872D7E0;
    v35 = v11;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_2;
    v32[3] = &unk_1E872D790;
    v33 = completionCopy;
    [v16 vui_animateWithDuration:5242912 delay:v34 options:v32 animations:v24 completion:0.0];
    v20 = &v35;
    v21 = &v33;
  }

  [(VUIBackgroundMediaController *)self showAlphaImage:1 animated:1];
LABEL_12:

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = VUIDefaultLogObject(WeakRetained);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = [WeakRetained name];
      v7 = *(a1 + 41);
      v20 = 134218498;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v6;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing background image now, animated %d", &v20, 0x1Cu);
    }

    v8 = [WeakRetained proxyImageView];
    [v8 setVuiAlpha:1.0];

    v9 = [WeakRetained playbackContainerController];
    v10 = [v9 view];
    v11 = 0.0;
    [v10 setVuiAlpha:0.0];

    v12 = [WeakRetained currentMediaInfo];
    LOBYTE(v10) = [v12 showsSecondaryVideoView];

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v19 = [WeakRetained secondaryVideoView];
    [v19 setVuiAlpha:v11];

    goto LABEL_10;
  }

  if (v5)
  {
    v13 = [WeakRetained name];
    v14 = *(a1 + 41);
    v20 = 134218498;
    v21 = WeakRetained;
    v22 = 2112;
    v23 = v13;
    v24 = 1024;
    v25 = v14;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing playback view now, animated %d", &v20, 0x1Cu);
  }

  v15 = [WeakRetained proxyImageView];
  [v15 setVuiAlpha:0.0];

  v16 = [WeakRetained playbackContainerController];
  v17 = [v16 view];
  v11 = 1.0;
  [v17 setVuiAlpha:1.0];

  v18 = [WeakRetained currentMediaInfo];
  LODWORD(v17) = [v18 showsSecondaryVideoView];

  if (v17)
  {
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_addContentViewIfNeeded
{
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  contentView = [currentMediaInfo contentView];

  if (contentView)
  {
    view = [(VUIBackgroundMediaController *)self view];
    [view vui_insertSubview:contentView aboveSubview:0 oldView:0];

    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VUIBackgroundMediaController *)self _constrainToView:contentView];
  }
}

- (void)setImageContentMode:(unint64_t)mode
{
  self->_imageContentMode = mode;
  proxyImageView = [(VUIBackgroundMediaController *)self proxyImageView];
  [proxyImageView setVuiContentMode:mode];
}

- (void)setVideoGravity:(id)gravity
{
  gravityCopy = gravity;
  objc_storeStrong(&self->_videoGravity, gravity);
  if (self->_keepVideoGravityUnchangedByVideoControlsVisibility)
  {
    avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];
    [avPlayerViewController setVideoGravity:gravityCopy];

    prefetchPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
    [prefetchPlayerViewController setVideoGravity:gravityCopy];
  }

  else
  {
    showsVideoControls = [(VUIBackgroundMediaController *)self showsVideoControls];
    v8 = *MEMORY[0x1E69874E8];
    if (!showsVideoControls)
    {
      v8 = gravityCopy;
    }

    v9 = v8;
    avPlayerViewController2 = [(VUIBackgroundMediaController *)self avPlayerViewController];
    [avPlayerViewController2 setVideoGravity:v9];

    prefetchPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
    [prefetchPlayerViewController setVideoGravity:v9];
  }
}

- (void)setAllowsExternalPlayback:(BOOL)playback
{
  playbackCopy = playback;
  self->_allowsExternalPlayback = playback;
  player = [(VUIBackgroundMediaController *)self player];
  [player setAllowsExternalPlayback:playbackCopy];

  prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];
  [prefetchPlayer setAllowsExternalPlayback:playbackCopy];
}

- (void)setAllowsVideoCellularUsage:(BOOL)usage
{
  usageCopy = usage;
  self->_allowsVideoCellularUsage = usage;
  player = [(VUIBackgroundMediaController *)self player];
  [player setAllowsCellularUsage:usageCopy];

  prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];
  [prefetchPlayer setAllowsCellularUsage:usageCopy];
}

- (void)_addProxyImageView:(id)view
{
  viewCopy = view;
  [viewCopy setVuiContentMode:{-[VUIBackgroundMediaController imageContentMode](self, "imageContentMode")}];
  v4 = viewCopy;
  if (viewCopy)
  {
    currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
    overlayView = [currentMediaInfo overlayView];

    if (overlayView)
    {
      view = [(VUIBackgroundMediaController *)self view];
      [view vui_insertSubview:viewCopy belowSubview:overlayView oldView:0];
    }

    else
    {
      [viewCopy setVuiUserInteractionEnabled:0];
      view = [(VUIBackgroundMediaController *)self view];
      [view vui_addSubview:viewCopy oldView:0];
    }

    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VUIBackgroundMediaController *)self _constrainToView:viewCopy];
    [viewCopy setVuiAlpha:0.0];

    v4 = viewCopy;
  }
}

- (void)_removeProxyImageView
{
  proxyImageView = [(VUIBackgroundMediaController *)self proxyImageView];
  if (proxyImageView)
  {
    v4 = proxyImageView;
    proxyImageView2 = [(VUIBackgroundMediaController *)self proxyImageView];
    superview = [proxyImageView2 superview];

    if (superview)
    {
      proxyImageView3 = [(VUIBackgroundMediaController *)self proxyImageView];
      [proxyImageView3 removeFromSuperview];
    }
  }
}

- (void)_addAlphaProxyImageViewIfNeeded
{
  alphaProxyImageView = [(VUIBackgroundMediaController *)self alphaProxyImageView];
  if ([(VUIBackgroundMediaController *)self isViewLoaded])
  {
    if (!alphaProxyImageView || ([alphaProxyImageView superview], v3 = objc_claimAutoreleasedReturnValue(), v3, v4 = alphaProxyImageView, !v3))
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DF740]);

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 setVuiAlpha:0.0];
      [v5 vui_isAccessibilityElement:1];
      currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
      alphaLayerAccessibilityText = [currentMediaInfo alphaLayerAccessibilityText];
      [v5 setAccessibilityLabel:alphaLayerAccessibilityText];

      [v5 setVuiUserInteractionEnabled:0];
      view = [(VUIBackgroundMediaController *)self view];
      [view vui_addSubview:v5 oldView:0];

      [(VUIBackgroundMediaController *)self _constrainToView:v5];
      [(VUIBackgroundMediaController *)self setAlphaProxyImageView:v5];
      v4 = v5;
    }
  }

  else
  {
    v4 = alphaProxyImageView;
  }
}

- (void)_loadImage:(id)image
{
  imageCopy = image;
  objc_initWeak(&location, self);
  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  mediaInfoIndex = [(VUIBackgroundMediaController *)self mediaInfoIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VUIBackgroundMediaController__loadImage___block_invoke;
  v8[3] = &unk_1E87322C0;
  objc_copyWeak(&v10, &location);
  v7 = imageCopy;
  v9 = v7;
  [mediaInfoFetchController loadImageAtIndex:mediaInfoIndex completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained name];
    v12 = VUIBoolLogString();
    *buf = 134218754;
    v30 = WeakRetained;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) completed loading image: [%@], finished: [%@]", buf, 0x2Au);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__VUIBackgroundMediaController__loadImage___block_invoke_326;
  aBlock[3] = &unk_1E87377B0;
  v28 = *(a1 + 32);
  v13 = _Block_copy(aBlock);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __43__VUIBackgroundMediaController__loadImage___block_invoke_3;
  v21 = &unk_1E87377D8;
  v26 = v4;
  objc_copyWeak(&v25, (a1 + 40));
  v14 = v8;
  v22 = v14;
  v15 = v7;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = &v18;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v20(v17);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

  objc_destroyWeak(&v25);
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_326(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v10 = __43__VUIBackgroundMediaController__loadImage___block_invoke_2;
  v11 = &unk_1E87317D0;
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = a3;
  v7 = MEMORY[0x1E696AF00];
  v8 = v5;
  if ([v7 isMainThread])
  {
    v10(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __43__VUIBackgroundMediaController__loadImage___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 48));
  }

  return result;
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = WeakRetained;
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v4 = VUIDefaultLogObject(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __43__VUIBackgroundMediaController__loadImage___block_invoke_3_cold_1(v3);
      }

      v5 = *(*(a1 + 48) + 16);
    }

    else
    {
      v7 = [WeakRetained alphaImageProxy];
      if (v7)
      {
        v8 = v7;
        v9 = [v3 alphaProxyImageView];
        v10 = [v9 image];

        if (!v10)
        {
          v11 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __43__VUIBackgroundMediaController__loadImage___block_invoke_4;
          block[3] = &unk_1E8734A20;
          objc_copyWeak(&v15, (a1 + 56));
          v14 = *(a1 + 48);
          v13 = *(a1 + 40);
          dispatch_after(v11, MEMORY[0x1E69E96A0], block);

          objc_destroyWeak(&v15);
          goto LABEL_7;
        }
      }

      v5 = *(*(a1 + 48) + 16);
    }

    v5();
LABEL_7:

    return;
  }

  v6 = *(*(a1 + 48) + 16);

  v6();
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)didReceiveMemoryWarning
{
  v5.receiver = self;
  v5.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v5 didReceiveMemoryWarning];
  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController clearPreloadedPlayback];

  mediaInfoFetchController2 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [mediaInfoFetchController2 clearCachedImageExclude:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];
}

- (void)_playbackStateWillChange:(id)change
{
  userInfo = [change userInfo];
  v10 = [userInfo objectForKey:*MEMORY[0x1E69D6098]];

  stopped = [MEMORY[0x1E69D5A40] stopped];

  v6 = v10;
  if (v10 == stopped)
  {
    v7 = MEMORY[0x1E696AD98];
    player = [(VUIBackgroundMediaController *)self player];
    [player cachedElapsedTime];
    v9 = [v7 numberWithDouble:?];
    [(VUIBackgroundMediaController *)self setElapsedTimeWhenStopped:v9];

    v6 = v10;
  }
}

- (void)_playbackRateDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v6 = [userInfo vui_stringForKey:*MEMORY[0x1E6987A90]];

  if ([v6 isEqualToString:*MEMORY[0x1E6987AA8]])
  {
    [object rateUsedForPlayback];
    if (v7 > 0.0)
    {
      v8 = MEMORY[0x1E696AD98];
      [object rateUsedForPlayback];
      v9 = [v8 numberWithDouble:?];
      [(VUIBackgroundMediaController *)self setRateUsedForPlayback:v9];

      prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];
      [object rateUsedForPlayback];
      [prefetchPlayer setRateUsedForPlayback:?];
    }
  }
}

- (void)_playbackStateChanged:(id)changed
{
  v48 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69D6098]];

  userInfo2 = [changedCopy userInfo];

  v8 = [userInfo2 objectForKey:*MEMORY[0x1E69D60A0]];

  v10 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    player = [(VUIBackgroundMediaController *)self player];
    *buf = 134219010;
    selfCopy = self;
    v40 = 2112;
    v41 = name;
    v42 = 2048;
    v43 = player;
    v44 = 2112;
    v45 = v6;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback state changed (%p), new state %@, old state %@", buf, 0x34u);
  }

  playing = [MEMORY[0x1E69D5A40] playing];

  if (v6 == playing)
  {
    v36[0] = @"VUIBackgroundMediaControllerIsForegroundedKey";
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[VUIBackgroundMediaController isBackgrounded](self, "isBackgrounded") ^ 1}];
    v37[0] = v17;
    v36[1] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey";
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStart](self, "isAutomaticPlaybackStart")}];
    v37[1] = v18;
    v36[2] = @"VUIBackgroundMediaControllerPlaybackStartReasonKey";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStartReason](self, "vpafPlaybackStartReason")}];
    v37[2] = v19;
    defaultCenter2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

    [(VUIBackgroundMediaController *)self _updateCurrentPlaybackViewFrameForPlaybackInBackground:[(VUIBackgroundMediaController *)self isBackgrounded] animated:0];
    date = [MEMORY[0x1E695DF00] date];
    [(VUIBackgroundMediaController *)self setPlaybackStartDate:date];

    [(VUIBackgroundMediaController *)self _recordBgAutoPlayMediaEventForPlaybackState:v6];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerDidStartPlaybackNotification" object:self userInfo:defaultCenter2];

LABEL_16:
    goto LABEL_17;
  }

  paused = [MEMORY[0x1E69D5A40] paused];
  v15 = paused;
  if (v6 == paused)
  {
  }

  else
  {
    stopped = [MEMORY[0x1E69D5A40] stopped];

    if (v6 != stopped)
    {
      goto LABEL_17;
    }
  }

  player2 = [(VUIBackgroundMediaController *)self player];
  [player2 cachedElapsedTime];
  v25 = v24;

  player3 = [(VUIBackgroundMediaController *)self player];
  [player3 duration];
  v28 = v27;
  v29 = *MEMORY[0x1E69D5A78];

  if (v25 > 0.0 && -[VUIBackgroundMediaController recordPausedMediaEventAsStop](self, "recordPausedMediaEventAsStop") || v28 == v29 || ([MEMORY[0x1E69D5A40] stopped], v30 = objc_claimAutoreleasedReturnValue(), v30, v6 == v30))
  {
    [(VUIBackgroundMediaController *)self _recordBgAutoPlayMediaEventForPlaybackState:v6];
  }

  paused2 = [MEMORY[0x1E69D5A40] paused];

  if (v6 == paused2)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"VUIBackgroundMediaControllerDidPausePlaybackNotification" object:self userInfo:0];
    goto LABEL_16;
  }

LABEL_17:
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  v34 = @"PlaybackStateKey";
  v35 = v6;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [stateMachine postEvent:@"Player state changed" withContext:0 userInfo:v33];
}

- (void)_playbackErrorDidOccur:(id)occur
{
  occurCopy = occur;
  userInfo = [occurCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69D60B8]];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    player = [(VUIBackgroundMediaController *)self player];
    currentMediaItem = [player currentMediaItem];
    v10 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v10 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6068]];
  }

  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  object = [occurCopy object];
  userInfo2 = [occurCopy userInfo];

  [stateMachine postEvent:@"Playback error occurred" withContext:object userInfo:userInfo2];
}

- (void)_mediaControllerStartedPlayback:(id)playback
{
  v18 = *MEMORY[0x1E69E9840];
  object = [playback object];
  if (object != self)
  {
    player = [(VUIBackgroundMediaController *)self player];
    state = [player state];
    stopped = [MEMORY[0x1E69D5A40] stopped];

    if (state != stopped)
    {
      shouldStopWhenAnotherMediaControllerStarts = [(VUIBackgroundMediaController *)self shouldStopWhenAnotherMediaControllerStarts];
      if (shouldStopWhenAnotherMediaControllerStarts)
      {
        v9 = VUIDefaultLogObject(shouldStopWhenAnotherMediaControllerStarts);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          name = [(VUIBackgroundMediaController *)self name];
          name2 = [(VUIBackgroundMediaController *)object name];
          v12 = 134218498;
          selfCopy = self;
          v14 = 2112;
          v15 = name;
          v16 = 2112;
          v17 = name2;
          _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) received stop event because %@ will start playback.", &v12, 0x20u);
        }

        [(VUIBackgroundMediaController *)self setAutomaticPlaybackStop:1];
        [(VUIBackgroundMediaController *)self setVpafPlaybackStopReason:1];
        [(VUIBackgroundMediaController *)self stop];
      }
    }
  }
}

- (void)_updatePlayerMuteStateForBackgroundPlaybackWithReason:(id)reason
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  if ([currentMediaInfo intent])
  {
    goto LABEL_2;
  }

  player = [(VUIBackgroundMediaController *)self player];

  if (!player)
  {
    goto LABEL_3;
  }

  isBackgrounded = [(VUIBackgroundMediaController *)self isBackgrounded];
  v8 = VUIDefaultLogObject(isBackgrounded);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v10 = VUIBoolLogString();
    [(VUIBackgroundMediaController *)self mutePlaybackInBackground];
    v11 = VUIBoolLogString();
    [(VUIBackgroundMediaController *)self isMuted];
    v12 = VUIBoolLogString();
    v18 = 134219010;
    selfCopy = self;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) isBackgrounded:<%@>, mutePlaybackInBackground<%@>, isMuted:<%@>", &v18, 0x34u);
  }

  if (isBackgrounded)
  {
    isBackgrounded = [(VUIBackgroundMediaController *)self mutePlaybackInBackground]|| [(VUIBackgroundMediaController *)self isMuted];
  }

  player2 = [(VUIBackgroundMediaController *)self player];
  [player2 setMuted:isBackgrounded];

  currentMediaInfo = +[VUIPlaybackManager sharedInstance];
  if (![currentMediaInfo isPIPing] || -[VUIBackgroundMediaController mutePlaybackInBackground](self, "mutePlaybackInBackground"))
  {
LABEL_2:
  }

  else
  {
    v14 = [reasonCopy isEqualToString:@"VUIBackgroundMediaControllerPlaybackMuteReasonAssigned"];

    if (v14)
    {
      v15 = +[VUIGroupActivitiesManagerObjC isSessionActive];
      _activePIPPlayer = [(VUIBackgroundMediaController *)self _activePIPPlayer];
      v17 = _activePIPPlayer;
      if (v15)
      {
        [_activePIPPlayer setMuted:1];
      }

      else
      {
        [_activePIPPlayer pause];
      }
    }
  }

LABEL_3:
}

- (BOOL)isForeground
{
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  currentState = [stateMachine currentState];
  v4 = [currentState isEqualToString:@"Showing playback in foreground"];

  return v4;
}

- (BOOL)isBackgrounded
{
  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (avPlayerViewController)
  {
    return ![(VUIBackgroundMediaController *)self showsVideoControls];
  }

  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];

  return currentMediaInfo != 0;
}

- (CGRect)_playbackContainerViewFrame:(BOOL)frame hasSecondaryVideoView:(BOOL)view
{
  viewCopy = view;
  frameCopy = frame;
  view = [(VUIBackgroundMediaController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (frameCopy && viewCopy)
  {
    [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
    v15 = v15 - v16;
  }

  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v15;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_hasSecondaryView
{
  secondaryVideoView = [(VUIBackgroundMediaController *)self secondaryVideoView];
  v3 = secondaryVideoView != 0;

  return v3;
}

- (BOOL)_shouldShowSecondaryView
{
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentMediaInfo2 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    showsSecondaryVideoView = [currentMediaInfo2 showsSecondaryVideoView];
  }

  else
  {
    showsSecondaryVideoView = 0;
  }

  return showsSecondaryVideoView;
}

- (double)_secondaryVideoViewHeight
{
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  [currentMediaInfo primaryVideoAspectRatio];
  v5 = v4;

  if (v5 <= 0.0)
  {
    return 300.0;
  }

  view = [(VUIBackgroundMediaController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  currentMediaInfo2 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  [currentMediaInfo2 primaryVideoAspectRatio];
  v13 = v8 / v12;

  return fmax(v10 - v13, 0.0);
}

- (CGRect)_secondaryVideoViewFrame:(BOOL)frame
{
  frameCopy = frame;
  view = [(VUIBackgroundMediaController *)self view];
  [view bounds];
  v7 = v6;
  [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
  v9 = v8;

  view2 = [(VUIBackgroundMediaController *)self view];
  [view2 bounds];
  v12 = v11;
  v14 = v13;

  if (frameCopy)
  {
    [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
    v14 = v14 - v15;
  }

  v16 = v7 - v9;
  v17 = 0.0;
  v18 = v14;
  v19 = v12;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_updateCurrentPlaybackViewFrameForPlaybackInBackground:(BOOL)background animated:(BOOL)animated
{
  animatedCopy = animated;
  backgroundCopy = background;
  if (![(VUIBackgroundMediaController *)self _hasSecondaryView])
  {
    return;
  }

  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (!avPlayerViewController)
  {
    return;
  }

  [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:backgroundCopy hasSecondaryVideoView:[(VUIBackgroundMediaController *)self _hasSecondaryView]];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  player = [(VUIBackgroundMediaController *)self player];
  [player currentMediaItemPresentationSize];
  v18 = v17;
  v20 = v19;

  v21 = *(MEMORY[0x1E695EFD0] + 16);
  *&v44.a = *MEMORY[0x1E695EFD0];
  *&v44.c = v21;
  *&v44.tx = *(MEMORY[0x1E695EFD0] + 32);
  v22 = 0;
  if (![MEMORY[0x1E69DF6F0] isTV] || v20 <= 0.0)
  {
LABEL_12:
    v24 = *&v15;
    v25 = *&v13;
    v26 = *&v11;
    v27 = *&v9;
    goto LABEL_18;
  }

  v23 = v18;
  v24 = *&v15;
  v25 = *&v13;
  v26 = *&v11;
  v27 = *&v9;
  if (*&v15 > 0.0)
  {
    if (backgroundCopy)
    {
      v28 = v23 / v20;
      if (v28 >= *&v13 / *&v15)
      {
        v30 = round(*&v15);
        v32 = round(v30 * v28);
        if (v32 >= *&v13 * 3.0)
        {
          v25 = *&v13 * 3.0;
        }

        else
        {
          v25 = v32;
        }

        v31 = v25 / *&v13;
      }

      else
      {
        v25 = round(*&v13);
        v29 = round(v25 / v28);
        if (v29 >= *&v15 * 3.0)
        {
          v29 = *&v15 * 3.0;
        }

        v30 = v29;
        v31 = v29 / *&v15;
      }

      CGAffineTransformMakeScale(&v44, v31, v31);
      v24 = v30;
      v26 = (*&v15 - v30) * 0.5;
      v27 = (*&v13 - v25) * 0.5;
      v22 = 1;
      goto LABEL_18;
    }

    v22 = 0;
    goto LABEL_12;
  }

LABEL_18:
  v33 = v24;
  view = [(VUIBackgroundMediaController *)self view];
  [view vui_layoutIfNeeded];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__VUIBackgroundMediaController__updateCurrentPlaybackViewFrameForPlaybackInBackground_animated___block_invoke;
  aBlock[3] = &unk_1E8737800;
  objc_copyWeak(v39, &location);
  v39[1] = v9;
  v39[2] = v11;
  v39[3] = v13;
  v39[4] = v15;
  v41 = backgroundCopy;
  v39[5] = *&v27;
  v39[6] = *&v26;
  v39[7] = *&v25;
  v39[8] = *&v33;
  v40 = v44;
  v42 = v22;
  v35 = _Block_copy(aBlock);
  v36 = v35;
  if (animatedCopy)
  {
    if (backgroundCopy)
    {
      v37 = 0x10000;
    }

    else
    {
      v37 = 0x20000;
    }

    [MEMORY[0x1E69DD250] vui_animateWithDuration:v37 delay:v35 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    (*(v35 + 2))(v35);
  }

  objc_destroyWeak(v39);
  objc_destroyWeak(&location);
}

void __96__VUIBackgroundMediaController__updateCurrentPlaybackViewFrameForPlaybackInBackground_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playbackContainerController];
  v4 = [v3 view];
  [v4 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v5 = [WeakRetained secondaryVideoView];

  if (v5)
  {
    [WeakRetained _secondaryVideoViewFrame:*(a1 + 152)];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [WeakRetained secondaryVideoView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [WeakRetained avPlayerViewController];
    v16 = [v15 view];
    [v16 setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  }

  else
  {
    v15 = [WeakRetained avPlayerViewController];
    v16 = [v15 view];
    v17 = *(a1 + 120);
    v19[0] = *(a1 + 104);
    v19[1] = v17;
    v19[2] = *(a1 + 136);
    [v16 setTransform:v19];
  }

  if (*(a1 + 153) == 1)
  {
    [WeakRetained _updateVideoPlayerLegibleContentInsets:*(a1 + 152)];
  }

  v18 = [WeakRetained view];
  [v18 vui_layoutIfNeeded];
}

- (void)_addPlaybackViewControllerForPlayback:(BOOL)playback restoringAVPlayerViewController:(BOOL)controller
{
  playbackCopy = playback;
  playbackContainerController = [(VUIBackgroundMediaController *)self playbackContainerController];
  v8 = playbackContainerController;
  if (playbackContainerController)
  {
    view = [playbackContainerController view];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [view setVuiBackgroundColor:blackColor];

    [(VUIBackgroundMediaController *)self vui_addChildViewController:v8];
    alphaProxyImageView = [(VUIBackgroundMediaController *)self alphaProxyImageView];

    view2 = [(VUIBackgroundMediaController *)self view];
    view3 = [v8 view];
    if (alphaProxyImageView)
    {
      alphaProxyImageView2 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
      [view2 vui_insertSubview:view3 belowSubview:alphaProxyImageView2 oldView:0];
    }

    else
    {
      [view2 vui_addSubview:view3 oldView:0];
    }

    if ([(VUIBackgroundMediaController *)self _shouldShowSecondaryView])
    {
      [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:playbackCopy hasSecondaryVideoView:1];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      view4 = [v8 view];
      [view4 setFrame:{v16, v18, v20, v22}];

      view5 = [v8 view];
      [view5 setVuiClipsToBounds:1];

      [(VUIBackgroundMediaController *)self _secondaryVideoViewFrame:1];
      view8 = [objc_alloc(MEMORY[0x1E69D5A70]) initWithFrame:{v25, v26, v27, v28}];
      CGAffineTransformMakeScale(&v59, 1.0, -1.0);
      [view8 setTransform:&v59];
      player = [(VUIBackgroundMediaController *)self player];
      [view8 setPlayer:player];

      [view8 setVuiAlpha:0.0];
      [view8 setVideoGravity:1];
      view6 = [(VUIBackgroundMediaController *)self view];
      view7 = [v8 view];
      [view6 vui_insertSubview:view8 aboveSubview:view7 oldView:0];

      [(VUIBackgroundMediaController *)self setSecondaryVideoView:view8];
    }

    else
    {
      [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:playbackCopy hasSecondaryVideoView:0];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      view8 = [v8 view];
      [view8 setFrame:{v34, v36, v38, v40}];
    }

    if (!controller)
    {
      view9 = [v8 view];
      [view9 setVuiAlpha:0.0];
    }

    [v8 didMoveToParentViewController:self];
    avPlayerViewController = self->_avPlayerViewController;
    if (avPlayerViewController)
    {
      view10 = [(AVPlayerViewController *)avPlayerViewController view];
      view11 = [v8 view];
      [v8 addChildViewController:self->_avPlayerViewController];
      currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
      overlayView = [currentMediaInfo overlayView];

      if (overlayView)
      {
        [view11 vui_insertSubview:view10 belowSubview:overlayView oldView:0];
      }

      else
      {
        [view11 addSubview:view10];
      }

      leadingAnchor = [view10 leadingAnchor];
      leadingAnchor2 = [view11 leadingAnchor];
      v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v49 setActive:1];

      trailingAnchor = [view10 trailingAnchor];
      trailingAnchor2 = [view11 trailingAnchor];
      v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v52 setActive:1];

      topAnchor = [view10 topAnchor];
      topAnchor2 = [view11 topAnchor];
      v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v55 setActive:1];

      bottomAnchor = [view10 bottomAnchor];
      bottomAnchor2 = [view11 bottomAnchor];
      v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v58 setActive:1];

      [view11 bounds];
      [view10 setFrame:?];
      [(AVPlayerViewController *)self->_avPlayerViewController didMoveToParentViewController:v8];
    }
  }
}

- (void)_removePlaybackViewController
{
  avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];
  vuiParentViewController = [avPlayerViewController vuiParentViewController];
  playbackContainerController = [(VUIBackgroundMediaController *)self playbackContainerController];

  if (vuiParentViewController == playbackContainerController)
  {
    [avPlayerViewController vui_willMoveToParentViewController:0];
    vuiView = [avPlayerViewController vuiView];
    [vuiView vui_removeFromSuperView];

    [avPlayerViewController vui_removeFromParentViewController];
  }

  playbackContainerController2 = [(VUIBackgroundMediaController *)self playbackContainerController];
  vuiParentViewController2 = [playbackContainerController2 vuiParentViewController];

  if (vuiParentViewController2 == self)
  {
    [playbackContainerController2 vui_willMoveToParentViewController:0];
    vuiView2 = [playbackContainerController2 vuiView];
    [vuiView2 vui_removeFromSuperView];

    [playbackContainerController2 vui_removeFromParentViewController];
  }
}

- (void)_updateAVPlayerViewControllerWithAVPlayerForPlayer:(id)player
{
  v30 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  player = [(VUIBackgroundMediaController *)self player];

  if (player == playerCopy)
  {
    v12 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      *buf = 134218498;
      selfCopy2 = self;
      v26 = 2112;
      v27 = name;
      v28 = 2112;
      v29 = playerCopy;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setting player on main %@", buf, 0x20u);
    }

    avPlayerViewController = [(VUIBackgroundMediaController *)self avPlayerViewController];
  }

  else
  {
    prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];

    if (prefetchPlayer != playerCopy)
    {
      goto LABEL_18;
    }

    v9 = VUIDefaultLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218498;
      selfCopy2 = self;
      v26 = 2112;
      v27 = name2;
      v28 = 2112;
      v29 = playerCopy;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setting player on prefetch %@", buf, 0x20u);
    }

    avPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
  }

  v14 = avPlayerViewController;
  if (avPlayerViewController)
  {
    player2 = [avPlayerViewController player];

    if (player2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__VUIBackgroundMediaController__updateAVPlayerViewControllerWithAVPlayerForPlayer___block_invoke;
      block[3] = &unk_1E872D990;
      v21 = v14;
      v22 = playerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      avPlayer = v21;
    }

    else
    {
      avPlayer = [playerCopy avPlayer];
      [v14 setPlayer:avPlayer];
    }

    currentMediaItem = [playerCopy currentMediaItem];
    if ([(VUIBackgroundMediaController *)self supportsMediaSharing]&& [VUIMediaShareCoordinator shouldShowShareForMediaItem:currentMediaItem])
    {
      v18 = [VUIMediaShareControlButton shareControlItemForMediaItem:currentMediaItem inPlayerViewController:v14];
      v23 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [v14 setCustomControlItems:v19];
    }

    else
    {
      [v14 setCustomControlItems:MEMORY[0x1E695E0F0]];
    }
  }

LABEL_18:
}

void __83__VUIBackgroundMediaController__updateAVPlayerViewControllerWithAVPlayerForPlayer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(a1 + 40) avPlayer];
    [v1 setPlayer:v2];
  }
}

- (void)_notifyAVPlayerViewControllerDisplaySize:(id)size player:(id)player
{
  sizeCopy = size;
  playerCopy = player;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [sizeCopy videoDisplaySize];
  v10 = v9;
  v11 = v8;
  if (v9 != *MEMORY[0x1E695F060] || v8 != *(MEMORY[0x1E695F060] + 8))
  {
    [sizeCopy videoDisplayScale];
    v18.height = round(v11) * v13;
    v18.width = round(v10) * v13;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v18);
    [v7 vui_setObjectIfNotNil:DictionaryRepresentation forKey:@"VUIBackgroundMediaControllerDisplaySizeKey"];
    [v7 vui_setObjectIfNotNil:playerCopy forKey:@"VUIBackgroundMediaControllerPlayerKey"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification" object:self userInfo:v7];
  }
}

- (void)_showPlaybackIfPossible
{
  v29 = *MEMORY[0x1E69E9840];
  isPlaybackEnabled = [(VUIBackgroundMediaController *)self isPlaybackEnabled];
  if (isPlaybackEnabled && (isPlaybackEnabled = [(VUIBackgroundMediaController *)self _autoPlayEnabled], isPlaybackEnabled))
  {
    playbackLoadingStartDate = [(VUIBackgroundMediaController *)self playbackLoadingStartDate];
    _computedPlaybackDelayInterval = [(VUIBackgroundMediaController *)self _computedPlaybackDelayInterval];
    v7 = v6;
    if (playbackLoadingStartDate)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:playbackLoadingStartDate];
      v10 = v9;

      _computedPlaybackDelayInterval = [(VUIBackgroundMediaController *)self setPlaybackLoadingStartDate:0];
    }

    else
    {
      v10 = 0.0;
    }

    v12 = VUIDefaultLogObject(_computedPlaybackDelayInterval);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      *buf = 134218754;
      selfCopy2 = self;
      v23 = 2112;
      v24 = name;
      v25 = 2048;
      v26 = v10;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) timeTakenToLoad:[%f], playbackDelayInterval:[%f]", buf, 0x2Au);
    }

    if ([(VUIBackgroundMediaController *)self isBackgrounded]&& (v7 == 0.0 || v10 < v7))
    {
      currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
      objc_initWeak(buf, self);
      v16 = MEMORY[0x1E695DFF0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__VUIBackgroundMediaController__showPlaybackIfPossible__block_invoke;
      v18[3] = &unk_1E8737828;
      objc_copyWeak(&v20, buf);
      v18[4] = self;
      stateMachine = currentMediaInfo;
      v19 = stateMachine;
      v17 = [v16 scheduledTimerWithTimeInterval:0 repeats:v18 block:v7 - v10];
      [(VUIBackgroundMediaController *)self setPlaybackDelayTimer:v17];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
      goto LABEL_16;
    }

    if (v7 != -1.0)
    {
      stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
      [stateMachine postEvent:@"Play" withContext:0 userInfo:0];
LABEL_16:
    }
  }

  else
  {
    playbackLoadingStartDate = VUIDefaultLogObject(isPlaybackEnabled);
    if (os_log_type_enabled(playbackLoadingStartDate, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      selfCopy2 = self;
      v23 = 2112;
      v24 = name2;
      _os_log_impl(&dword_1E323F000, playbackLoadingStartDate, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is not enabled yet. Will show playback when it gets enabled.", buf, 0x16u);
    }
  }
}

void __55__VUIBackgroundMediaController__showPlaybackIfPossible__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    [WeakRetained isPlaybackEnabled];
    v5 = VUIBoolLogString();
    v7 = 134218498;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback timer fired, isPlaybackEnabled: (%@)", &v7, 0x20u);
  }

  [WeakRetained setPlaybackDelayTimer:0];
  if ([WeakRetained isPlaybackEnabled] && objc_msgSend(*(a1 + 32), "_autoPlayEnabled") && objc_msgSend(WeakRetained, "_currentMediaInfoContentMatchesMediaInfo:", *(a1 + 40)))
  {
    v6 = [WeakRetained stateMachine];
    [v6 postEvent:@"Play" withContext:0 userInfo:0];
  }
}

- (double)_computedPlaybackDelayInterval
{
  [(VUIBackgroundMediaController *)self playbackStartDelay];
  v4 = v3;
  result = -1.0;
  if (v4 != -1.0)
  {
    if (PlaybackDelayTimeIntervalOverride_onceToken_0 != -1)
    {
      [VUIBackgroundMediaController _computedPlaybackDelayInterval];
    }

    v6 = *&PlaybackDelayTimeIntervalOverride_playbackDelayInterval_0;
    [(VUIBackgroundMediaController *)self playbackStartDelay];
    v8 = v7;
    currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      currentMediaInfo2 = [(VUIBackgroundMediaController *)self currentMediaInfo];
      [currentMediaInfo2 playbackDelayInterval];
      v13 = v12;

      if (v13 != -1.0)
      {
        currentMediaInfo3 = [(VUIBackgroundMediaController *)self currentMediaInfo];
        [currentMediaInfo3 playbackDelayInterval];
        v8 = v15;
      }
    }

    if (v6 <= 0.0)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (void)setAvPlayerViewController:(id)controller
{
  controllerCopy = controller;
  avPlayerViewController = self->_avPlayerViewController;
  if (avPlayerViewController)
  {
    [(AVPlayerViewController *)avPlayerViewController removeObserver:self forKeyPath:@"videoBounds" context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
  }

  objc_storeStrong(&self->_avPlayerViewController, controller);
  v6 = controllerCopy;
  if (controllerCopy)
  {
    [controllerCopy addObserver:self forKeyPath:@"videoBounds" options:0 context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
    v6 = controllerCopy;
  }
}

- (void)setPrefetchPlayerViewController:(id)controller
{
  controllerCopy = controller;
  prefetchPlayerViewController = self->_prefetchPlayerViewController;
  if (prefetchPlayerViewController)
  {
    [(AVPlayerViewController *)prefetchPlayerViewController removeObserver:self forKeyPath:@"videoBounds" context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
  }

  objc_storeStrong(&self->_prefetchPlayerViewController, controller);
  v6 = controllerCopy;
  if (controllerCopy)
  {
    [controllerCopy addObserver:self forKeyPath:@"videoBounds" options:0 context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
    v6 = controllerCopy;
  }
}

- (id)_createPlayerViewController
{
  v3 = [objc_alloc(MEMORY[0x1E6958608]) initWithNibName:0 bundle:0];
  [(VUIBackgroundMediaController *)self _configurePlayerViewController:v3];

  return v3;
}

- (void)_configurePlayerViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setUpdatesNowPlayingInfoCenter:{-[VUIBackgroundMediaController updatesNowPlayingInfoCenter](self, "updatesNowPlayingInfoCenter")}];
  [controllerCopy setAllowsPictureInPicturePlayback:{-[VUIBackgroundMediaController allowsPictureInPicturePlayback](self, "allowsPictureInPicturePlayback")}];
  [controllerCopy setCanIncludePlaybackControlsWhenInline:0];
  [controllerCopy setCanPausePlaybackWhenExitingFullScreen:0];
  [controllerCopy setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [controllerCopy setDelegate:self];
  videoGravity = [(VUIBackgroundMediaController *)self videoGravity];
  [controllerCopy setVideoGravity:videoGravity];

  [controllerCopy setExitsFullScreenWhenPlaybackEnds:{-[VUIBackgroundMediaController exitsFullscreenWhenPlaybackEnds](self, "exitsFullscreenWhenPlaybackEnds")}];
  [controllerCopy setShowsPlaybackControls:0];
  if ([(VUIBackgroundMediaController *)self disableSupplementalSubtitle])
  {
    [controllerCopy setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:0];
  }

  v6 = VUIDefaultLogObject([controllerCopy setAllowsVideoFrameAnalysis:0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::setAllowInfoMetadataSubpanel: NO", v9, 2u);
  }

  [controllerCopy vui_setAllowInfoMetadataSubpanel:0];
  view = [controllerCopy view];
  view2 = [(VUIBackgroundMediaController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)_cleanupPrefetchPlayback
{
  prefetchPlayer = [(VUIBackgroundMediaController *)self prefetchPlayer];

  if (prefetchPlayer)
  {
    prefetchPlayer2 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [prefetchPlayer2 stop];

    prefetchPlayer3 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [prefetchPlayer3 invalidate];

    [(VUIBackgroundMediaController *)self setPrefetchPlayer:0];
  }

  prefetchPlayerViewController = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];

  if (prefetchPlayerViewController)
  {

    [(VUIBackgroundMediaController *)self setPrefetchPlayerViewController:0];
  }
}

- (void)_prefetchNextVideo
{
  v20 = *MEMORY[0x1E69E9840];
  player = [(VUIBackgroundMediaController *)self player];
  if (player)
  {
    player2 = [(VUIBackgroundMediaController *)self player];
    externalPlaybackType = [player2 externalPlaybackType];

    if (externalPlaybackType)
    {
      v7 = VUIDefaultLogObject(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        name = [(VUIBackgroundMediaController *)self name];
        *buf = 134218242;
        selfCopy2 = self;
        v18 = 2112;
        v19 = name;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Not prefetching player because external playback is not none", buf, 0x16u);
      }

LABEL_5:

      return;
    }
  }

  prefetchesVideoFrame = [(VUIBackgroundMediaController *)self prefetchesVideoFrame];
  if (!prefetchesVideoFrame)
  {
    v7 = VUIDefaultLogObject(prefetchesVideoFrame);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      selfCopy2 = self;
      v18 = 2112;
      v19 = name2;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Not prefetching next video because prefetchesVideoFrame is NO", buf, 0x16u);
    }

    goto LABEL_5;
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __50__VUIBackgroundMediaController__prefetchNextVideo__block_invoke;
  v14 = &unk_1E872E4B8;
  objc_copyWeak(&v15, buf);
  v10 = v12;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v13(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __50__VUIBackgroundMediaController__prefetchNextVideo__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupPrefetchPlayback];
  v2 = [WeakRetained mediaInfoFetchController];
  v3 = [v2 loadPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex") + 1}];

  v4 = [WeakRetained player];

  if (v4)
  {
    v5 = [WeakRetained player];
    [v3 setMuted:{objc_msgSend(v5, "muted")}];

    v6 = [WeakRetained player];
    [v6 rateUsedForPlayback];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = [WeakRetained player];
      [v9 rate];
      [v3 setRateUsedForPlayback:?];
    }
  }

  v10 = [WeakRetained playbackInitiatorForRTCReporting];
  [v3 setReportingValueWithString:v10 forKey:@"initiator"];

  v12 = VUIDefaultLogObject(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [WeakRetained name];
    v15 = 134218498;
    v16 = WeakRetained;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Created prefetch player %@", &v15, 0x20u);
  }

  [WeakRetained setPrefetchPlayer:v3];
  v14 = [WeakRetained _createPlayerViewController];
  [WeakRetained setPrefetchPlayerViewController:v14];

  [v3 addObserver:WeakRetained forKeyPath:@"avPlayer" options:0 context:__PlayerAVPlayerKVOContext_1];
  [v3 pause];
}

- (void)_recordBgAutoPlayMediaEventForPlaybackState:(id)state
{
  v56 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  player = [(VUIBackgroundMediaController *)self player];
  playlist = [player playlist];

  currentMediaItem = [playlist currentMediaItem];
  if (currentMediaItem)
  {
    playing = [MEMORY[0x1E69D5A40] playing];

    if (playing == stateCopy)
    {
      v15 = VUIMetricsMediaActionTypePlay;
    }

    else
    {
      stopped = [MEMORY[0x1E69D5A40] stopped];
      v10 = stopped;
      if (stopped == stateCopy)
      {
      }

      else
      {
        paused = [MEMORY[0x1E69D5A40] paused];
        v12 = paused;
        if (paused != stateCopy)
        {

LABEL_19:
          elapsedTimeWhenStopped2 = VUIDefaultLogObject(v13);
          if (os_log_type_enabled(elapsedTimeWhenStopped2, OS_LOG_TYPE_DEFAULT))
          {
            name = [(VUIBackgroundMediaController *)self name];
            v48 = 134218242;
            selfCopy2 = self;
            v50 = 2112;
            v51 = name;
            _os_log_impl(&dword_1E323F000, elapsedTimeWhenStopped2, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) ignoring playback state media event for ", &v48, 0x16u);
          }

          v14 = 0;
          goto LABEL_22;
        }

        recordPausedMediaEventAsStop = [(VUIBackgroundMediaController *)self recordPausedMediaEventAsStop];

        if (!recordPausedMediaEventAsStop)
        {
          goto LABEL_19;
        }
      }

      v15 = VUIMetricsMediaActionTypeStop;
    }

    v14 = *v15;
    lastMediaEventActionType = [(VUIBackgroundMediaController *)self lastMediaEventActionType];
    v18 = lastMediaEventActionType;
    if (v14 == lastMediaEventActionType)
    {
      lastMediaEventActionType2 = [(VUIBackgroundMediaController *)self lastMediaEventActionType];

      if (lastMediaEventActionType2)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v19 = VUIDefaultLogObject([(VUIBackgroundMediaController *)self setLastMediaEventActionType:v14]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      v48 = 134218754;
      selfCopy2 = self;
      v50 = 2112;
      v51 = name2;
      v52 = 2112;
      v53 = v14;
      v54 = 1024;
      v55 = 0;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) record bg video media event, actionType %@, isAmbientVideo %i", &v48, 0x26u);
    }

    v21 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
    v22 = [v21 length];

    player2 = [(VUIBackgroundMediaController *)self player];
    v24 = player2;
    if (v22)
    {
      currentMediaItem2 = [player2 currentMediaItem];
      v26 = [currentMediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D88]];

      v27 = MEMORY[0x1E696AD98];
      player3 = [(VUIBackgroundMediaController *)self player];
      playbackDate = [player3 playbackDate];
      [playbackDate timeIntervalSinceDate:v26];
      elapsedTimeWhenStopped2 = [v27 numberWithDouble:?];
    }

    else
    {
      [player2 duration];
      v34 = v33;
      v35 = *MEMORY[0x1E69D5A78];

      if (v34 == v35)
      {
        playing2 = [MEMORY[0x1E69D5A40] playing];

        if (playing2 != stateCopy)
        {
          stopped2 = [MEMORY[0x1E69D5A40] stopped];
          if (stopped2 == stateCopy || ([MEMORY[0x1E69D5A40] paused], v38 = objc_claimAutoreleasedReturnValue(), v22 = v38, v38 == stateCopy))
          {
            playbackStartDate = [(VUIBackgroundMediaController *)self playbackStartDate];

            if (stopped2 != stateCopy)
            {
            }

            if (playbackStartDate)
            {
              v44 = MEMORY[0x1E696AD98];
              date = [MEMORY[0x1E695DF00] date];
              playbackStartDate2 = [(VUIBackgroundMediaController *)self playbackStartDate];
              [date timeIntervalSinceDate:playbackStartDate2];
              elapsedTimeWhenStopped2 = [v44 numberWithDouble:?];

              goto LABEL_18;
            }
          }

          else
          {
          }

          elapsedTimeWhenStopped2 = 0;
          goto LABEL_18;
        }

        elapsedTimeWhenStopped2 = &unk_1F5E5EE20;
      }

      else
      {
        stopped3 = [MEMORY[0x1E69D5A40] stopped];
        v40 = stopped3;
        if (stopped3 == stateCopy)
        {
          elapsedTimeWhenStopped = [(VUIBackgroundMediaController *)self elapsedTimeWhenStopped];

          if (elapsedTimeWhenStopped)
          {
            elapsedTimeWhenStopped2 = [(VUIBackgroundMediaController *)self elapsedTimeWhenStopped];
            goto LABEL_18;
          }
        }

        else
        {
        }

        v41 = MEMORY[0x1E696AD98];
        player4 = [(VUIBackgroundMediaController *)self player];
        [player4 cachedElapsedTime];
        elapsedTimeWhenStopped2 = [v41 numberWithDouble:?];
      }
    }

LABEL_18:
    [VUIMetricsMediaEvent recordBGVideoPlayOfTVPMediaItem:currentMediaItem contentPosition:elapsedTimeWhenStopped2 isAmbient:0 actionType:v14];
LABEL_22:

    goto LABEL_23;
  }

  v14 = VUIDefaultLogObject(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [VUIBackgroundMediaController _recordBgAutoPlayMediaEventForPlaybackState:?];
  }

LABEL_23:
}

- (void)_didPlayMediaItemToEnd:(id)end
{
  v25 = *MEMORY[0x1E69E9840];
  endCopy = end;
  player = [(VUIBackgroundMediaController *)self player];
  playlist = [player playlist];
  v7 = [playlist count];

  if (v7 == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    player2 = [(VUIBackgroundMediaController *)self player];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69D5F28] object:player2];
  }

  if ([(VUIBackgroundMediaController *)self shouldPauseAtEnd])
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"VUIBackgroundMediaControllerDidPlayToEndNotification" object:self userInfo:0];

    if ([(VUIBackgroundMediaController *)self shouldShowImageAndStopAfterPausingAtEnd])
    {
      objc_initWeak(location, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __55__VUIBackgroundMediaController__didPlayMediaItemToEnd___block_invoke;
      v20[3] = &unk_1E872E4B8;
      objc_copyWeak(&v21, location);
      [(VUIBackgroundMediaController *)self _swapActiveMedia:1 animated:1 completion:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }
  }

  else
  {
    player3 = [(VUIBackgroundMediaController *)self player];
    playlist2 = [player3 playlist];
    nextMediaItem = [playlist2 nextMediaItem];
    v14 = nextMediaItem == 0;

    v16 = VUIDefaultLogObject(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v17)
      {
        name = [(VUIBackgroundMediaController *)self name];
        *location = 134218242;
        *&location[4] = self;
        v23 = 2112;
        v24 = name;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) DidPlayMediaItemToEnd, stop now", location, 0x16u);
      }

      [(VUIBackgroundMediaController *)self stop];
    }

    else
    {
      if (v17)
      {
        name2 = [(VUIBackgroundMediaController *)self name];
        *location = 134218242;
        *&location[4] = self;
        v23 = 2112;
        v24 = name2;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) DidPlayMediaItemToEnd, there is next item to play, keep playing", location, 0x16u);
      }
    }
  }
}

void __55__VUIBackgroundMediaController__didPlayMediaItemToEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

- (void)_populatePlayerWithMediaItemsIfNeeded:(id)needed
{
  neededCopy = needed;
  externalPlaybackType = [neededCopy externalPlaybackType];
  mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  playlist = [neededCopy playlist];
  mediaInfoIndex = [(VUIBackgroundMediaController *)self mediaInfoIndex];
  if (externalPlaybackType)
  {
    [mediaInfoFetchController populatePlaylistWithMediaItems:playlist atIndex:mediaInfoIndex];

    [neededCopy setMediaItemEndAction:0];

    [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
  }

  else
  {
    [mediaInfoFetchController removePopulatedMediaItems:playlist atIndex:mediaInfoIndex];

    [neededCopy setMediaItemEndAction:1];
  }
}

- (void)_externalPlaybackStateChanged:(id)changed
{
  object = [changed object];
  if ([(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    [(VUIBackgroundMediaController *)self _populatePlayerWithMediaItemsIfNeeded:object];
  }
}

- (void)_postWillStartPlaybackNotification:(BOOL)notification
{
  notificationCopy = notification;
  v11[3] = *MEMORY[0x1E69E9840];
  [(VUIBackgroundMediaController *)self setAutomaticPlaybackStop:0];
  v10[0] = @"VUIBackgroundMediaControllerIsForegroundedKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:notificationCopy];
  v11[0] = v5;
  v10[1] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStart](self, "isAutomaticPlaybackStart")}];
  v11[1] = v6;
  v10[2] = @"VUIBackgroundMediaControllerPlaybackStartReasonKey";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStartReason](self, "vpafPlaybackStartReason")}];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:self userInfo:v8];
}

- (void)_postWillStopPlaybackNotification
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStop](self, "isAutomaticPlaybackStop")}];
  v7[1] = @"VUIBackgroundMediaControllerPlaybackStopReasonKey";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStopReason](self, "vpafPlaybackStopReason")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerWillStopPlaybackNotification" object:self userInfo:v5];
}

- (void)_postDidStopPlaybackNotification
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStop](self, "isAutomaticPlaybackStop")}];
  v7[1] = @"VUIBackgroundMediaControllerPlaybackStopReasonKey";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStopReason](self, "vpafPlaybackStopReason")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerDidStopPlaybackNotification" object:self userInfo:v5];
}

- (void)_stateDidChangeFromState:(id)state toState:(id)toState onEvent:(id)event context:(id)context userInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  toStateCopy = toState;
  eventCopy = event;
  v13 = VUIDefaultLogObject(eventCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v26 = 134219010;
    selfCopy3 = self;
    v28 = 2112;
    v29 = name;
    v30 = 2112;
    v31 = eventCopy;
    v32 = 2112;
    v33 = stateCopy;
    v34 = 2112;
    v35 = toStateCopy;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) event:%@, fromState:%@, toState:%@", &v26, 0x34u);
  }

  if (stateCopy && toStateCopy)
  {
    v15 = [stateCopy isEqualToString:@"waiting for timeout while paused"];
    if (v15)
    {
      v16 = VUIDefaultLogObject(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(VUIBackgroundMediaController *)self name];
        v26 = 134218242;
        selfCopy3 = self;
        v28 = 2112;
        v29 = name2;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) invalidating waiting for timeout timer in paused state.", &v26, 0x16u);
      }

      pauseStateTimeoutTimer = [(VUIBackgroundMediaController *)self pauseStateTimeoutTimer];
      [pauseStateTimeoutTimer invalidate];

      [(VUIBackgroundMediaController *)self setPauseStateTimeoutTimer:0];
      goto LABEL_23;
    }

    if ([stateCopy isEqualToString:@"Loading image"])
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
    }

    else
    {
      if (![stateCopy isEqualToString:@"Showing image"])
      {
        v19 = [stateCopy isEqualToString:@"waiting to stop playback"];
        if (v19)
        {
          v20 = VUIDefaultLogObject(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [(VUIBackgroundMediaController *)self name];
            v26 = 134218498;
            selfCopy3 = self;
            v28 = 2112;
            v29 = name3;
            v30 = 2112;
            v31 = toStateCopy;
          }

          v22 = MEMORY[0x1E69E58C0];
          v23 = sel_stop;
          selfCopy5 = self;
          v25 = 0;
        }

        else
        {
          if ([stateCopy isEqualToString:@"Showing playback in foreground"])
          {
            v22 = MEMORY[0x1E69E58C0];
            v23 = sel__updatePlayerVolume_;
            v25 = MEMORY[0x1E695E118];
          }

          else
          {
            if (![stateCopy isEqualToString:@"Showing playback in background"])
            {
              goto LABEL_23;
            }

            v22 = MEMORY[0x1E69E58C0];
            v23 = sel__updatePlayerVolume_;
            v25 = MEMORY[0x1E695E110];
          }

          selfCopy5 = self;
        }

        [v22 cancelPreviousPerformRequestsWithTarget:selfCopy5 selector:v23 object:v25];
        goto LABEL_23;
      }

      [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
    }

LABEL_23:
    [(VUIBackgroundMediaController *)self _configureAudioSessionForState:toStateCopy];
    [(VUIBackgroundMediaController *)self _configureLegibleContentInsetFromState:stateCopy toState:toStateCopy];
  }
}

- (void)_configureAudioSession
{
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  currentState = [stateMachine currentState];

  [(VUIBackgroundMediaController *)self _configureAudioSessionForState:currentState];
}

- (void)_configureAudioSessionForState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = [stateCopy isEqualToString:@"Showing playback in background"];
  if (v5 & 1) != 0 || (v5 = [stateCopy isEqualToString:@"Showing playback in foreground"], (v5))
  {
    v6 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [(VUIBackgroundMediaController *)self name];
      [(VUIBackgroundMediaController *)self isBackgrounded];
      v8 = VUIBoolLogString();
      v9 = VUIBoolLogString();
      v12 = 134218754;
      selfCopy2 = self;
      v14 = 2112;
      v15 = name;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) isBackgrounded:[%@] usingPlaybackCategory:[%@]", &v12, 0x2Au);
    }

    v10 = +[VUIPlaybackManager sharedInstance];
    [v10 configureAudioSessionForBackgroundPlayback:[(VUIBackgroundMediaController *)self isBackgrounded] usingPlaybackCategory:self->_useForegroundAudioSessionInBackgroundMode isMultiview:0];
  }

  else
  {
    v10 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(VUIBackgroundMediaController *)self name];
      v12 = 134218498;
      selfCopy2 = self;
      v14 = 2112;
      v15 = name2;
      v16 = 2112;
      v17 = stateCopy;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) state = %@, video isn't playing, skip audio session configuration", &v12, 0x20u);
    }
  }
}

- (void)_registerStateMachineHandlers
{
  v157[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke;
  aBlock[3] = &unk_1E8737850;
  objc_copyWeak(&v145, &location);
  v3 = _Block_copy(aBlock);
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_345;
  v141[3] = &unk_1E872E828;
  objc_copyWeak(&v143, &location);
  v4 = v3;
  v142 = v4;
  v61 = _Block_copy(v141);
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_346;
  v139[3] = &unk_1E872E4B8;
  objc_copyWeak(&v140, &location);
  v5 = _Block_copy(v139);
  stateMachine = [(VUIBackgroundMediaController *)self stateMachine];
  v157[0] = @"Showing playback in foreground";
  v157[1] = @"Showing playback in background";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:2];
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_348;
  v137[3] = &unk_1E872FAD8;
  objc_copyWeak(&v138, &location);
  [stateMachine registerHandlerForEvent:@"Set media info" onStates:v7 withBlock:v137];

  stateMachine2 = [(VUIBackgroundMediaController *)self stateMachine];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_353;
  v135[3] = &unk_1E872FAD8;
  objc_copyWeak(&v136, &location);
  [stateMachine2 registerDefaultHandlerForEvent:@"Set media info" withBlock:v135];

  stateMachine3 = [(VUIBackgroundMediaController *)self stateMachine];
  v156[0] = @"Not doing anything";
  v156[1] = @"Loading image";
  v156[2] = @"Showing image";
  v156[3] = @"Finished playback";
  v156[4] = @"Waiting to stop after showing image";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:5];
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_356;
  v133[3] = &unk_1E872FAD8;
  objc_copyWeak(&v134, &location);
  [stateMachine3 registerHandlerForEvent:@"Load image" onStates:v10 withBlock:v133];

  stateMachine4 = [(VUIBackgroundMediaController *)self stateMachine];
  v155[0] = @"Showing playback in background";
  v155[1] = @"Showing playback in foreground";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_357;
  v131[3] = &unk_1E872FAD8;
  objc_copyWeak(&v132, &location);
  [stateMachine4 registerHandlerForEvent:@"Load image" onStates:v12 withBlock:v131];

  stateMachine5 = [(VUIBackgroundMediaController *)self stateMachine];
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_359;
  v128[3] = &unk_1E872FAB0;
  objc_copyWeak(&v130, &location);
  v14 = v5;
  v129 = v14;
  [stateMachine5 registerHandlerForEvent:@"Show image" onState:@"Loading image" withBlock:v128];

  stateMachine6 = [(VUIBackgroundMediaController *)self stateMachine];
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_364;
  v126[3] = &unk_1E872FAD8;
  objc_copyWeak(&v127, &location);
  [stateMachine6 registerHandlerForEvent:@"Show image" onState:@"Finished playback" withBlock:v126];

  stateMachine7 = [(VUIBackgroundMediaController *)self stateMachine];
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_366;
  v124[3] = &unk_1E872FAD8;
  objc_copyWeak(&v125, &location);
  [stateMachine7 registerHandlerForEvent:@"Show image" onState:@"Waiting to stop after showing image" withBlock:v124];

  stateMachine8 = [(VUIBackgroundMediaController *)self stateMachine];
  v154[0] = @"Showing playback in foreground";
  v154[1] = @"Showing playback in background";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8;
  v122[3] = &unk_1E872FAD8;
  objc_copyWeak(&v123, &location);
  [stateMachine8 registerHandlerForEvent:@"Show image" onStates:v18 withBlock:v122];

  stateMachine9 = [(VUIBackgroundMediaController *)self stateMachine];
  v153[0] = @"Not doing anything";
  v153[1] = @"Showing image";
  v153[2] = @"Loading image";
  v153[3] = @"Loading playback";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:4];
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9;
  v119[3] = &unk_1E872FAB0;
  objc_copyWeak(&v121, &location);
  v21 = v4;
  v120 = v21;
  [stateMachine9 registerHandlerForEvent:@"Load playback" onStates:v20 withBlock:v119];

  stateMachine10 = [(VUIBackgroundMediaController *)self stateMachine];
  v152[0] = @"Showing playback in foreground";
  v152[1] = @"Showing playback in background";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:2];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_370;
  v116[3] = &unk_1E872FAB0;
  objc_copyWeak(&v118, &location);
  v24 = v21;
  v117 = v24;
  [stateMachine10 registerHandlerForEvent:@"Load playback" onStates:v23 withBlock:v116];

  stateMachine11 = [(VUIBackgroundMediaController *)self stateMachine];
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_372;
  v114[3] = &unk_1E872FAD8;
  objc_copyWeak(&v115, &location);
  [stateMachine11 registerHandlerForEvent:@"Show playback" onState:@"Loading playback" withBlock:v114];

  stateMachine12 = [(VUIBackgroundMediaController *)self stateMachine];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_377;
  v112[3] = &unk_1E872FAD8;
  objc_copyWeak(&v113, &location);
  [stateMachine12 registerHandlerForEvent:@"Show playback" onState:@"Showing image" withBlock:v112];

  stateMachine13 = [(VUIBackgroundMediaController *)self stateMachine];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_380;
  v110[3] = &unk_1E872FAD8;
  objc_copyWeak(&v111, &location);
  [stateMachine13 registerHandlerForEvent:@"Player state changed" onState:@"Waiting for player to start loading" withBlock:v110];

  stateMachine14 = [(VUIBackgroundMediaController *)self stateMachine];
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_382;
  v108[3] = &unk_1E872FAD8;
  objc_copyWeak(&v109, &location);
  [stateMachine14 registerHandlerForEvent:@"Player state changed" onState:@"Loading playback" withBlock:v108];

  stateMachine15 = [(VUIBackgroundMediaController *)self stateMachine];
  v151[0] = @"waiting for timeout while paused";
  v151[1] = @"Showing playback in background";
  v151[2] = @"Showing playback in foreground";
  v151[3] = @"waiting to stop playback";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:4];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_383;
  v106[3] = &unk_1E872FAD8;
  objc_copyWeak(&v107, &location);
  [stateMachine15 registerHandlerForEvent:@"Player state changed" onStates:v30 withBlock:v106];

  stateMachine16 = [(VUIBackgroundMediaController *)self stateMachine];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_384;
  v104[3] = &unk_1E872FAD8;
  objc_copyWeak(&v105, &location);
  [stateMachine16 registerHandlerForEvent:@"Player state changed" onState:@"Waiting to stop after showing image" withBlock:v104];

  stateMachine17 = [(VUIBackgroundMediaController *)self stateMachine];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_385;
  v102[3] = &unk_1E872FAD8;
  objc_copyWeak(&v103, &location);
  [stateMachine17 registerDefaultHandlerForEvent:@"Finished playback" withBlock:v102];

  stateMachine18 = [(VUIBackgroundMediaController *)self stateMachine];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_388;
  v100[3] = &unk_1E872FAD8;
  objc_copyWeak(&v101, &location);
  [stateMachine18 registerDefaultHandlerForEvent:@"Playback error occurred" withBlock:v100];

  stateMachine19 = [(VUIBackgroundMediaController *)self stateMachine];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_11;
  v98[3] = &unk_1E872FAD8;
  objc_copyWeak(&v99, &location);
  [stateMachine19 registerHandlerForEvent:@"Transition to foreground" onState:@"Loading image" withBlock:v98];

  stateMachine20 = [(VUIBackgroundMediaController *)self stateMachine];
  v150[0] = @"Showing playback in background";
  v150[1] = @"waiting for timeout while paused";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:2];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_12;
  v96[3] = &unk_1E872FAD8;
  objc_copyWeak(&v97, &location);
  [stateMachine20 registerHandlerForEvent:@"Transition to foreground" onStates:v36 withBlock:v96];

  stateMachine21 = [(VUIBackgroundMediaController *)self stateMachine];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_405;
  v94[3] = &unk_1E872FAD8;
  objc_copyWeak(&v95, &location);
  [stateMachine21 registerHandlerForEvent:@"Transition background" onState:@"Loading image" withBlock:v94];

  stateMachine22 = [(VUIBackgroundMediaController *)self stateMachine];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_406;
  v92[3] = &unk_1E872FAD8;
  objc_copyWeak(&v93, &location);
  [stateMachine22 registerHandlerForEvent:@"Transition background" onState:@"Loading playback" withBlock:v92];

  stateMachine23 = [(VUIBackgroundMediaController *)self stateMachine];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_407;
  v90[3] = &unk_1E872FAD8;
  objc_copyWeak(&v91, &location);
  [stateMachine23 registerHandlerForEvent:@"Transition background" onState:@"Showing playback in foreground" withBlock:v90];

  stateMachine24 = [(VUIBackgroundMediaController *)self stateMachine];
  v149[0] = @"Showing playback in background";
  v149[1] = @"Showing playback in foreground";
  v149[2] = @"Loading playback";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:3];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_409;
  v88[3] = &unk_1E872FAD8;
  objc_copyWeak(&v89, &location);
  [stateMachine24 registerHandlerForEvent:@"Play" onStates:v41 withBlock:v88];

  stateMachine25 = [(VUIBackgroundMediaController *)self stateMachine];
  v148[0] = @"waiting for timeout while paused";
  v148[1] = @"waiting to stop playback";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_410;
  v86[3] = &unk_1E872FAD8;
  objc_copyWeak(&v87, &location);
  [stateMachine25 registerHandlerForEvent:@"Play" onStates:v43 withBlock:v86];

  stateMachine26 = [(VUIBackgroundMediaController *)self stateMachine];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_412;
  v84[3] = &unk_1E872FAD8;
  objc_copyWeak(&v85, &location);
  [stateMachine26 registerHandlerForEvent:@"Pause" onState:@"Showing playback in background" withBlock:v84];

  stateMachine27 = [(VUIBackgroundMediaController *)self stateMachine];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_415;
  v82[3] = &unk_1E872FAD8;
  objc_copyWeak(&v83, &location);
  [stateMachine27 registerHandlerForEvent:@"Pause show image and stop" onState:@"Showing playback in background" withBlock:v82];

  stateMachine28 = [(VUIBackgroundMediaController *)self stateMachine];
  [stateMachine28 registerDefaultHandlerForEvent:@"Pause show image and stop" withBlock:&__block_literal_global_419];

  stateMachine29 = [(VUIBackgroundMediaController *)self stateMachine];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_421;
  v80[3] = &unk_1E872FAD8;
  objc_copyWeak(&v81, &location);
  [stateMachine29 registerDefaultHandlerForEvent:@"Stop" withBlock:v80];

  stateMachine30 = [(VUIBackgroundMediaController *)self stateMachine];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_422;
  v77[3] = &unk_1E872FAB0;
  objc_copyWeak(&v79, &location);
  v49 = v14;
  v78 = v49;
  [stateMachine30 registerHandlerForEvent:@"Replay" onState:@"Not doing anything" withBlock:v77];

  stateMachine31 = [(VUIBackgroundMediaController *)self stateMachine];
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_424;
  v73[3] = &unk_1E8730210;
  objc_copyWeak(&v76, &location);
  v51 = v49;
  v74 = v51;
  v52 = v61;
  v75 = v52;
  [stateMachine31 registerHandlerForEvent:@"Replay" onState:@"Showing image" withBlock:v73];

  stateMachine32 = [(VUIBackgroundMediaController *)self stateMachine];
  v147[0] = @"Waiting for player to start loading";
  v147[1] = @"Loading playback";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:2];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_426;
  v70[3] = &unk_1E872FAB0;
  objc_copyWeak(&v72, &location);
  v55 = v51;
  v71 = v55;
  [stateMachine32 registerHandlerForEvent:@"Replay" onStates:v54 withBlock:v70];

  stateMachine33 = [(VUIBackgroundMediaController *)self stateMachine];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_427;
  v67[3] = &unk_1E872FAB0;
  objc_copyWeak(&v69, &location);
  v57 = v24;
  v68 = v57;
  [stateMachine33 registerHandlerForEvent:@"Restore avPlayerViewController" onState:@"Not doing anything" withBlock:v67];

  stateMachine34 = [(VUIBackgroundMediaController *)self stateMachine];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_429;
  v64[3] = &unk_1E872FAB0;
  objc_copyWeak(&v66, &location);
  v59 = v57;
  v65 = v59;
  [stateMachine34 registerDefaultHandlerForEvent:@"Restore avPlayerViewController" withBlock:v64];

  stateMachine35 = [(VUIBackgroundMediaController *)self stateMachine];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_431;
  v62[3] = &unk_1E872FAD8;
  objc_copyWeak(&v63, &location);
  [stateMachine35 registerHandlerForEvent:@"AvPlayerViewController did exit fullscreen presentation" onState:@"Showing playback in foreground" withBlock:v62];

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v66);

  objc_destroyWeak(&v69);
  objc_destroyWeak(&v72);

  objc_destroyWeak(&v76);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v93);
  objc_destroyWeak(&v95);
  objc_destroyWeak(&v97);
  objc_destroyWeak(&v99);
  objc_destroyWeak(&v101);
  objc_destroyWeak(&v103);
  objc_destroyWeak(&v105);
  objc_destroyWeak(&v107);
  objc_destroyWeak(&v109);
  objc_destroyWeak(&v111);
  objc_destroyWeak(&v113);
  objc_destroyWeak(&v115);

  objc_destroyWeak(&v118);
  objc_destroyWeak(&v121);
  objc_destroyWeak(&v123);
  objc_destroyWeak(&v125);
  objc_destroyWeak(&v127);

  objc_destroyWeak(&v130);
  objc_destroyWeak(&v132);
  objc_destroyWeak(&v134);
  objc_destroyWeak(&v136);
  objc_destroyWeak(&v138);

  objc_destroyWeak(&v140);
  objc_destroyWeak(&v143);

  objc_destroyWeak(&v145);
  objc_destroyWeak(&location);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained name];
    v9 = [WeakRetained player];
    v51 = 134218754;
    v52 = WeakRetained;
    v53 = 2112;
    v54 = v8;
    v55 = 2112;
    v56 = v5;
    v57 = 2112;
    v58 = v9;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) will create a new playback view controller with player [%@], replacing [%@]", &v51, 0x2Au);
  }

  if (v5)
  {
    [v5 setAllowsConstrainedNetworkUsage:0];
    [v5 setAllowsCellularUsage:{objc_msgSend(WeakRetained, "allowsVideoCellularUsage")}];
    [v5 setAllowsExternalPlayback:{objc_msgSend(WeakRetained, "allowsExternalPlayback")}];
    v10 = [WeakRetained preferredAudioLanguageCode];
    if (v10)
    {
    }

    else
    {
      v11 = [WeakRetained prefersAudioDescriptions];

      if (!v11)
      {
LABEL_8:
        if ([WeakRetained mutePlaybackInBackground])
        {
          v14 = 1;
        }

        else
        {
          v14 = [WeakRetained isMuted];
        }

        [v5 setMuted:v14];
        v15 = [WeakRetained rateUsedForPlayback];

        if (v15)
        {
          v16 = [WeakRetained rateUsedForPlayback];
          [v16 doubleValue];
          [v5 setRateUsedForPlayback:?];
        }

        if (([WeakRetained mutePlaybackInBackground] & 1) != 0 || (objc_msgSend(WeakRetained, "backgroundVolume"), v17 == -1.0))
        {
          [WeakRetained player];
        }

        else
        {
          [WeakRetained backgroundVolume];
          [v5 setVolume:?];
        }

        v18 = +[VUIPlayerValidationManager sharedInstance];
        [v18 addReferenceForPlayer:v5];

        v19 = [WeakRetained player];

        if (v19)
        {
          [WeakRetained _unregisterPlayerNotifications];
          v20 = +[VUIPlayerValidationManager sharedInstance];
          v21 = [WeakRetained player];
          [v20 removeReferenceForPlayer:v21 stoppingIfNeeded:a3 ^ 1];
        }

        if ([WeakRetained isHapticsEnabled])
        {
          [VUIPlayerHapticManagerObjC setPlayer:v5];
        }

        [WeakRetained setPlayer:v5];
        [WeakRetained setDidWeCreatePlayer:1];
        [WeakRetained _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonInitialSetting"];
        v22 = [WeakRetained player];
        [v22 addObserver:WeakRetained forKeyPath:@"avPlayer" options:0 context:__PlayerAVPlayerKVOContext_1];

        v23 = [WeakRetained player];
        [v23 addObserver:WeakRetained forKeyPath:@"preferredAudioLanguageCode" options:0 context:__PlayerPreferredAudioLanguageCode];

        v24 = [WeakRetained player];
        [v24 addObserver:WeakRetained forKeyPath:@"prefersAudioDescriptions" options:0 context:__PlayerPrefersAudioDescriptions];

        if ([WeakRetained shouldPauseAtEnd])
        {
          [v5 setMediaItemEndAction:1];
        }

        v25 = [MEMORY[0x1E696AD88] defaultCenter];
        v26 = *MEMORY[0x1E69D5F28];
        v27 = [WeakRetained player];
        [v25 addObserver:WeakRetained selector:sel__didPlayMediaItemToEnd_ name:v26 object:v27];

        goto LABEL_24;
      }
    }

    v12 = [WeakRetained preferredAudioLanguageCode];
    [v5 setPreferredAudioLanguageCode:v12];

    v13 = [WeakRetained prefersAudioDescriptions];
    [v5 setPrefersAudioDescriptions:{objc_msgSend(v13, "BOOLValue")}];

    [v5 updateAudioSelectionCriteria];
    goto LABEL_8;
  }

LABEL_24:
  [WeakRetained _registerPlayerNotifications];
  v28 = [WeakRetained playbackContainerController];

  if (!v28)
  {
    v29 = objc_opt_new();
    v30 = [v29 view];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [v29 view];
    [v31 setVuiAutoresizingMask:18];

    [WeakRetained setPlaybackContainerController:v29];
    v32 = [WeakRetained avPlayerViewController];

    if (!v32)
    {
      v34 = VUIDefaultLogObject(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [WeakRetained name];
        v51 = 134218242;
        v52 = WeakRetained;
        v53 = 2112;
        v54 = v35;
        _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) creating avPlayerViewController because none was supplied.", &v51, 0x16u);
      }

      v36 = [WeakRetained _createPlayerViewController];
      if ([WeakRetained didWeCreatePlayer])
      {
        v37 = [WeakRetained player];
        [WeakRetained _updateAVPlayerViewControllerWithAVPlayerForPlayer:v37];
      }

      [WeakRetained setAvPlayerViewController:v36];
      [WeakRetained setShowsVideoControls:0];
    }

    v38 = [WeakRetained avPlayerViewController];
    v39 = [v38 vuiView];
    v40 = [v39 superview];

    if (v40)
    {
      v41 = [WeakRetained avPlayerViewController];
      v42 = [v41 vuiView];
      [v42 vui_removeFromSuperView];

      v43 = [WeakRetained avPlayerViewController];
      [v43 vui_removeFromParentViewController];

      v44 = [WeakRetained avPlayerViewController];
      [v44 vui_didMoveToParentViewController:0];
    }

    [WeakRetained _addPlaybackViewControllerForPlayback:1 restoringAVPlayerViewController:a3];
    [WeakRetained _updateVideoPlayerLegibleContentInsets:1];
  }

  v45 = [WeakRetained player];
  v46 = [v45 currentMediaItem];
  v47 = [v46 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

  v48 = [MEMORY[0x1E695DF00] date];
  [v47 addSingleShotEventWithName:*MEMORY[0x1E69D6018] value:@"Background"];
  [v47 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:v48];
  v49 = MEMORY[0x1E69D6058];
  [v47 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:v48];
  [v47 addEndEventWithName:*v49];
  if ((a3 & 1) == 0)
  {
    v50 = [WeakRetained player];
    [v50 pause];
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_345(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    v9 = 134218242;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) starting to load the playlist", &v9, 0x16u);
  }

  v5 = [WeakRetained player];

  if (v5)
  {
    [WeakRetained _postWillStopPlaybackNotification];
    v6 = [WeakRetained player];
    [v6 stop];
  }

  else
  {
    v7 = [WeakRetained mediaInfoFetchController];
    v6 = [v7 loadPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}];

    v8 = [WeakRetained playbackInitiatorForRTCReporting];
    [v6 setReportingValueWithString:v8 forKey:@"initiator"];

    (*(*(a1 + 32) + 16))();
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_346(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2;
  v20 = &unk_1E872F038;
  objc_copyWeak(&v22, (a1 + 32));
  v21 = WeakRetained;
  v3 = _Block_copy(&v17);
  if (([WeakRetained loadsPlayerWithFullscreenPlayback] & 1) == 0)
  {
    v4 = +[VUIPlaybackManager sharedInstance];
    v5 = [v4 isFullscreenPlaybackUIBeingShown];

    if (v5)
    {
      v7 = VUIDefaultLogObject(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained name];
        *buf = 134218242;
        v24 = WeakRetained;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) FullScreenPlayback is showing, not loading playback", buf, 0x16u);
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  v9 = [WeakRetained isBackgrounded];
  if (v9)
  {
    v10 = [WeakRetained isPlaybackEnabled];
    if (!v10)
    {
      v7 = VUIDefaultLogObject(v10);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [WeakRetained name];
        *buf = 134218242;
        v24 = WeakRetained;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is not enabled, not setting loading timer.", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v11 = VUIDefaultLogObject([WeakRetained _cleanUpPlaybackTimers]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained name];
      *buf = 134218242;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is enabled, loading playback.", buf, 0x16u);
    }

    v13 = [MEMORY[0x1E695DF00] date];
    [WeakRetained setPlaybackLoadingStartDate:v13];

    v3[2](v3);
  }

  else
  {
    v14 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [WeakRetained name];
      *buf = 134218242;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) controller is not backgrounded, loading playback.", buf, 0x16u);
    }

    v3[2](v3);
  }

LABEL_16:

  objc_destroyWeak(&v22);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E69DC668] vuiIsActive];
  if (v3)
  {
    v4 = [WeakRetained currentMediaInfo];
    v5 = [v4 tvpPlaylist];

    if (v5)
    {
      v6 = [WeakRetained stateMachine];
      [v6 postEvent:@"Load playback" withContext:0 userInfo:0];
    }
  }

  else
  {
    v5 = VUIDefaultLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [v7 name];
      v9 = 134218498;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2048;
      v14 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) not loading playlist isAppActive:<%ld>.", &v9, 0x20u);
    }
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v60 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
  v10 = [v8 objectForKeyedSubscript:@"ImageVideoSwapBehaviorKey"];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"ImageVideoSwapBehaviorKey"];
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 currentState];
  v14 = [WeakRetained player];
  v15 = [v14 playlist];

  v16 = [WeakRetained currentMediaInfo];
  v17 = [v16 tvpPlaylist];

  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) != 0 || (v18 = [WeakRetained prefetchesVideoFrame], !v18) || (objc_msgSend(WeakRetained, "mediaInfoFetchController"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "mediaInfoContainsPlayerAtIndex:", objc_msgSend(WeakRetained, "mediaInfoIndex")), v19, !v20))
  {
    if (v12 == 3)
    {
      v32 = VUIDefaultLogObject(v18);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [WeakRetained name];
        *buf = 134218498;
        v76 = WeakRetained;
        v77 = 2112;
        v78 = v33;
        v79 = 2112;
        v80 = v60;
        _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) set media info SwapBehaviorShowImageAndStop, animated %@", buf, 0x20u);
      }

      [WeakRetained _swapActiveMedia:1 animated:objc_msgSend(v60 completion:{"BOOLValue"), 0}];
      if (v8)
      {
        v34 = [v8 objectForKeyedSubscript:@"DirectionKey"];
        v35 = [v34 integerValue];
      }

      else
      {
        v35 = 0;
      }

      v36 = [WeakRetained currentMediaInfo];
      [WeakRetained setPendingMediaInfo:v36];

      [WeakRetained setPendingMediaInfoDirection:v35];
      v37 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
      [WeakRetained setPendingAnimated:v37];

      v73 = @"PlaybackStopReasonKey";
      v74 = &unk_1F5E5E790;
      v38 = MEMORY[0x1E695DF20];
      v39 = &v74;
      v40 = &v73;
    }

    else
    {
      if (v12 == 1)
      {
        v29 = [WeakRetained currentMediaInfo];
        [WeakRetained setPendingMediaInfo:v29];

        v30 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
        [WeakRetained setPendingAnimated:v30];

        v31 = [WeakRetained player];
        [v31 pause];

        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4;
        v61[3] = &unk_1E872D990;
        v62 = v7;
        v63 = v8;
        [v62 executeBlockAfterCurrentStateTransition:v61];

        v13 = @"Waiting to stop after showing image";
        goto LABEL_32;
      }

      if (!v17 || [WeakRetained _playlist:v15 contentMatchesPlaylist:v17])
      {
        [v7 postEvent:@"Load image" withContext:0 userInfo:v8];
        goto LABEL_32;
      }

      if (v8)
      {
        v41 = [v8 objectForKeyedSubscript:@"DirectionKey"];
        v42 = [v41 integerValue];
      }

      else
      {
        v42 = 0;
      }

      v54 = [WeakRetained currentMediaInfo];
      [WeakRetained setPendingMediaInfo:v54];

      [WeakRetained setPendingMediaInfoDirection:v42];
      v55 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
      [WeakRetained setPendingAnimated:v55];

      v71 = @"PlaybackStopReasonKey";
      v72 = &unk_1F5E5E790;
      v38 = MEMORY[0x1E695DF20];
      v39 = &v72;
      v40 = &v71;
    }

    v53 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
    [v7 postEvent:@"Stop" withContext:0 userInfo:v53];
LABEL_31:

    goto LABEL_32;
  }

  v21 = [WeakRetained avPlayerViewController];
  v59 = [v21 isPictureInPictureActive];

  v22 = [WeakRetained prefetchPlayer];
  v23 = [v22 playlist];
  v24 = [WeakRetained _playlist:v23 contentMatchesPlaylist:v17];

  v58 = v24;
  if ([WeakRetained isVideoFrameFallbackEnabled])
  {
    v25 = [WeakRetained prefetchPlayer];
    v26 = [v25 state];
    v27 = [MEMORY[0x1E69D5A40] paused];
    v28 = (v26 != v27) | v24 ^ 1;
  }

  else
  {
    v28 = 0;
  }

  v43 = [WeakRetained player];
  if (v43)
  {
    v44 = v43;
    v45 = [WeakRetained player];
    v57 = v28;
    v46 = v15;
    v47 = [v45 externalPlaybackType] != 0;

    v48 = v47 | v59;
    v15 = v46;
    v28 = v57;
    if (v48)
    {
LABEL_26:
      v49 = [WeakRetained player];
      v50 = [v49 playlist];
      v51 = [v50 activeListIndex];
      v52 = [WeakRetained mediaInfoIndex];

      if (v51 == v52)
      {
        goto LABEL_32;
      }

      v53 = [WeakRetained player];
      [v53 changeToMediaAtIndex:objc_msgSend(WeakRetained reason:{"mediaInfoIndex"), 0}];
      goto LABEL_31;
    }
  }

  else if (v59)
  {
    goto LABEL_26;
  }

  if (v28)
  {
    [WeakRetained _cleanUpEverythingPlaybackRelated];
    if ((v58 & 1) == 0)
    {
      [WeakRetained _cleanupPrefetchPlayback];
      [WeakRetained _swapActiveMedia:1 animated:objc_msgSend(v60 completion:{"BOOLValue"), 0}];
    }

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3;
    v64[3] = &unk_1E872D990;
    v65 = v7;
    v66 = v8;
    [v65 executeBlockAfterCurrentStateTransition:v64];

    v13 = @"Loading image";
  }

  else
  {
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_349;
    v67[3] = &unk_1E8737160;
    v70 = v12;
    v67[4] = WeakRetained;
    v68 = v7;
    v69 = v8;
    [v68 executeBlockAfterCurrentStateTransition:v67];

    v13 = @"Loading playback";
  }

LABEL_32:

  return v13;
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_349(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _cleanupPrefetchPlayback];
    v4 = [*(a1 + 32) player];
    v5 = [v4 state];
    v6 = [MEMORY[0x1E69D5A40] stopped];

    if (v5 != v6)
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E69D5A40] stopped];
      [v7 _recordBgAutoPlayMediaEventForPlaybackState:v8];
    }

    v9 = [*(a1 + 32) player];
    [v9 pause];
  }

  else
  {
    [v3 _cleanUpEverythingPlaybackRelated];
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);

  return [v10 postEvent:@"Load playback" withContext:0 userInfo:v11];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_353(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [WeakRetained mediaInfoFetchController];
  if (![v11 mediaInfoContainsPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}] || !objc_msgSend(WeakRetained, "prefetchesVideoFrame"))
  {
    goto LABEL_6;
  }

  v12 = [WeakRetained prefetchPlayer];
  v13 = [v12 state];
  v14 = [MEMORY[0x1E69D5A40] paused];
  if (v13 != v14 && ([WeakRetained isVideoFrameFallbackEnabled] & 1) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v25 = [WeakRetained isPlaybackEnabled];

  if (v25)
  {

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_354;
    v32[3] = &unk_1E872D990;
    v33 = v7;
    v34 = v8;
    [v33 executeBlockAfterCurrentStateTransition:v32];

    v10 = @"Loading playback";
    v24 = v33;
    goto LABEL_17;
  }

LABEL_7:
  v15 = [WeakRetained player];
  if (!v15 || (v16 = v15, [WeakRetained player], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "state"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69D5A40], "stopped"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v16, v18 == v19))
  {
    v22 = [WeakRetained mediaInfoFetchController];
    v23 = [v22 mediaInfoContainsImageAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}];

    if (!v23)
    {
      goto LABEL_18;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_355;
    v29[3] = &unk_1E872D990;
    v30 = v7;
    v31 = v8;
    [v30 executeBlockAfterCurrentStateTransition:v29];

    v10 = @"Loading image";
    v24 = v30;
  }

  else
  {
    if (v8)
    {
      v20 = [v8 objectForKeyedSubscript:@"DirectionKey"];
      v21 = [v20 integerValue];
    }

    else
    {
      v21 = 0;
    }

    v26 = [WeakRetained currentMediaInfo];
    [WeakRetained setPendingMediaInfo:v26];

    [WeakRetained setPendingMediaInfoDirection:v21];
    v27 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
    [WeakRetained setPendingAnimated:v27];

    v35 = @"PlaybackStopReasonKey";
    v36[0] = &unk_1F5E5E790;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [v7 postEvent:@"Stop" withContext:0 userInfo:v24];
  }

LABEL_17:

LABEL_18:

  return v10;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_356(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5;
  v18[3] = &unk_1E872D9B8;
  objc_copyWeak(&v21, (a1 + 32));
  v13 = v12;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  [v14 executeBlockAfterCurrentStateTransition:v18];
  v15 = [v14 currentState];
  if ([v15 isEqualToString:@"Waiting to stop after showing image"])
  {
    v16 = [v14 currentState];
  }

  else
  {
    v16 = @"Loading image";
  }

  objc_destroyWeak(&v21);

  return v16;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [WeakRetained currentMediaInfo];
    v5 = [v4 shouldDelayLoadingImage];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [WeakRetained currentMediaInfo];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6;
  aBlock[3] = &unk_1E87378A0;
  objc_copyWeak(&v18, a1 + 6);
  v8 = v7;
  v13 = v8;
  v14 = a1[4];
  v9 = v6;
  v15 = v9;
  v19 = v5;
  v16 = a1[5];
  v17 = WeakRetained;
  v10 = _Block_copy(aBlock);
  v11 = [WeakRetained imageDelayTimer];
  [v11 invalidate];

  [WeakRetained setImageDelayTimer:0];
  [WeakRetained _loadImage:v10];

  objc_destroyWeak(&v18);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6(uint64_t a1, void *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = [WeakRetained _currentMediaInfoImagesMatchesNewMediaInfoImage:*(a1 + 32)];
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = v9;
  [v9 setObject:v5 forKeyedSubscript:@"ImageKey"];

  v11 = [WeakRetained proxyImageView];
  v12 = [v11 image];

  if ((a3 & v7) == 1)
  {
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v15 = v14;

    if (*(a1 + 80) == 1 && v12 && (v16 = 5.0 - v15, v16 > 0.0))
    {
      v17 = MEMORY[0x1E695DFF0];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7;
      v29 = &unk_1E8737878;
      v30 = *(a1 + 56);
      v31 = v10;
      v18 = [v17 scheduledTimerWithTimeInterval:0 repeats:&v26 block:v16];
      v19 = [WeakRetained imageDelayTimer];
      [v19 invalidate];

      [WeakRetained setImageDelayTimer:0];
      [WeakRetained setImageDelayTimer:v18];
    }

    else
    {
      [*(a1 + 56) postEvent:@"Show image" withContext:0 userInfo:v10];
    }
  }

  else
  {
    v20 = [*(a1 + 32) imageProxies];

    if (!v20)
    {
      v21 = [*(a1 + 32) tvpPlaylist];
      v22 = v21;
      if (v21)
      {
        v23 = VUIDefaultLogObject(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 64);
          v25 = [v24 name];
          *buf = 134218242;
          v33 = v24;
          v34 = 2112;
          v35 = v25;
          _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) there're no imageProxies but have playlist; loading it.", buf, 0x16u);
        }

        [*(a1 + 56) postEvent:@"Show image" withContext:0 userInfo:v10];
      }
    }
  }
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_357(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_358;
  aBlock[3] = &unk_1E87378C8;
  objc_copyWeak(&v18, (a1 + 32));
  v14 = _Block_copy(aBlock);
  [WeakRetained _loadImage:v14];
  v15 = [v9 currentState];

  objc_destroyWeak(&v18);

  return v15;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_358(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v4 = [WeakRetained proxyImageView];
    v5 = [v6 uiImage];
    [v4 setImage:v5];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_359(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v25 = a2;
  v24 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:@"AnimatedKey"];
  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"AnimatedKey"];
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  v14 = [v10 objectForKeyedSubscript:@"ImageKey"];
  v15 = [v10 objectForKeyedSubscript:@"DirectionKey"];
  if (v15)
  {
    v16 = [v10 objectForKeyedSubscript:@"DirectionKey"];
    v17 = [v16 integerValue];
  }

  else
  {
    v17 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setState:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_360;
  aBlock[3] = &unk_1E872DE00;
  objc_copyWeak(v33, (a1 + 40));
  aBlock[4] = WeakRetained;
  v32 = *(a1 + 32);
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (v14)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_362;
    v26[3] = &unk_1E87378F0;
    objc_copyWeak(v29, (a1 + 40));
    v21 = v14;
    v30 = v13;
    v27 = v21;
    v29[1] = v17;
    v28 = v20;
    v22 = v25;
    [v25 executeBlockAfterCurrentStateTransition:v26];

    objc_destroyWeak(v29);
  }

  else
  {
    (*(v19 + 2))(v19);
    v22 = v25;
  }

  objc_destroyWeak(v33);
  return @"Showing image";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_361;
  block[3] = &unk_1E872DF40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  block[4] = WeakRetained;
  block[5] = v3;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_361(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentMediaInfo];
  v3 = [v2 tvpPlaylist];
  v4 = v3;
  if (v3)
  {
    v5 = VUIDefaultLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v6 name];
      v8 = 134218242;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) we have a pending playlist, starting loading timer.", &v8, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_362(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_363;
  v6[3] = &unk_1E872E828;
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 40);
  [WeakRetained _transitionToNewImage:v3 animated:v4 direction:v5 completion:v6];

  objc_destroyWeak(&v8);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_363(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v2 = [WeakRetained alphaImageProxy];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained alphaProxyImageView];
    v5 = [v4 image];

    if (v5)
    {
      [WeakRetained showAlphaImage:1 animated:0];
    }
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_364(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v12 objectForKeyedSubscript:@"ImageKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  if (v16)
  {
    v19 = [WeakRetained proxyImageView];
    v20 = [v16 uiImage];
    [v19 setImage:v20];
  }

  [v18 setState:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_365;
  v22[3] = &unk_1E872EDE0;
  objc_copyWeak(&v23, (a1 + 32));
  v24 = v15;
  [v9 executeBlockAfterCurrentStateTransition:v22];
  objc_destroyWeak(&v23);

  return @"Showing image";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_365(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _swapActiveMedia:1 animated:*(a1 + 40) completion:0];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_366(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v12 objectForKeyedSubscript:@"ImageKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  if (v16)
  {
    v19 = [WeakRetained proxyImageView];
    v20 = [v16 uiImage];
    [v19 setImage:v20];
  }

  [v18 setState:1];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_367;
  v27 = &unk_1E87301C0;
  v21 = v9;
  v28 = v21;
  objc_copyWeak(&v29, (a1 + 32));
  [v18 _swapActiveMedia:1 animated:v15 completion:&v24];
  v22 = [v21 currentState];
  objc_destroyWeak(&v29);

  return v22;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_367(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_368;
  v2[3] = &unk_1E872E4B8;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 executeBlockAfterCurrentStateTransition:v2];
  objc_destroyWeak(&v3);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  [v1 stop];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"ImageKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v8)
  {
    v11 = [WeakRetained proxyImageView];
    v12 = [v8 uiImage];
    [v11 setImage:v12];

    v13 = [v10 alphaImageProxy];
    if (v13)
    {
      v14 = v13;
      v15 = [v10 alphaProxyImageView];
      v16 = [v15 image];

      if (v16)
      {
        [v10 showAlphaImage:1 animated:1];
      }
    }
  }

  v17 = [v7 currentState];

  return v17;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v29 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained prefetchPlayer];
  if (v13)
  {
    v28 = v9;
    v14 = v11;
    v15 = v10;
    v16 = [WeakRetained currentMediaInfo];
    v17 = [v16 tvpPlaylist];
    v18 = [WeakRetained prefetchPlayer];
    v19 = [v18 playlist];
    if ([WeakRetained _playlist:v17 contentMatchesPlaylist:v19])
    {
      v20 = [WeakRetained prefetchesVideoFrame];
    }

    else
    {
      v20 = 0;
    }

    v10 = v15;
    v11 = v14;
    v9 = v28;
  }

  else
  {
    v20 = 0;
  }

  v21 = [WeakRetained prefetchPlayer];
  v22 = [v21 state];
  v23 = [MEMORY[0x1E69D5A40] paused];
  if (v22 == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = [WeakRetained isVideoFrameFallbackEnabled];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10;
  v30[3] = &unk_1E8737918;
  objc_copyWeak(&v32, (a1 + 40));
  v33 = v20;
  v30[4] = WeakRetained;
  v31 = *(a1 + 32);
  v34 = v24;
  [v9 executeBlockAfterCurrentStateTransition:v30];
  if ((v20 & (v24 ^ 1)) != 0)
  {
    v25 = @"Loading playback";
  }

  else
  {
    v25 = @"Waiting for player to start loading";
  }

  v26 = v25;

  objc_destroyWeak(&v32);
  return v25;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v4 = [WeakRetained prefetchPlayer];
    [v4 removeObserver:v3 forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    v5 = [v3 prefetchPlayer];
    v6 = [v3 prefetchPlayerViewController];
    v7 = VUIDefaultLogObject([v3 setAvPlayerViewController:v6]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 name];
      *buf = 134218498;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with prefetch player %@", buf, 0x20u);
    }
  }

  else
  {
    v10 = [WeakRetained mediaInfoFetchController];
    v5 = [v10 loadPlayerAtIndex:{objc_msgSend(v3, "mediaInfoIndex")}];

    v11 = [v3 playbackInitiatorForRTCReporting];
    [v5 setReportingValueWithString:v11 forKey:@"initiator"];

    v6 = VUIDefaultLogObject(v12);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) name];
    *buf = 134218242;
    v23 = v7;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with new player", buf, 0x16u);
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v13 = *(a1 + 32);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_369;
      v19 = &unk_1E872D990;
      v14 = v5;
      v15 = *(a1 + 32);
      v20 = v14;
      v21 = v15;
      [v13 _swapActiveMedia:0 animated:0 completion:&v16];
    }

    [v3 setPrefetchPlayer:{0, v16, v17, v18, v19}];
    [v3 setPrefetchPlayerViewController:0];
  }
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_369(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) videoAudioRampDuration];

  return [v1 playWithVolumeRampDuration:?];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_370(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _postWillStopPlaybackNotification];
  v5 = [WeakRetained prefetchPlayer];
  if (v5)
  {
    v6 = v5;
    v7 = [WeakRetained currentMediaInfo];
    v8 = [v7 tvpPlaylist];
    v9 = [WeakRetained prefetchPlayer];
    v10 = [v9 playlist];
    if ([WeakRetained _playlist:v8 contentMatchesPlaylist:v10])
    {
      v11 = [WeakRetained prefetchesVideoFrame];

      if (v11)
      {
        v12 = [WeakRetained prefetchPlayer];
        v13 = [WeakRetained prefetchPlayerViewController];
        v14 = VUIDefaultLogObject([WeakRetained setAvPlayerViewController:v13]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [WeakRetained name];
          *buf = 134218498;
          v35 = WeakRetained;
          v36 = 2112;
          v37 = v15;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with prefetch player %@", buf, 0x20u);
        }

        (*(*(a1 + 32) + 16))();
        v16 = [WeakRetained prefetchPlayer];
        v17 = [v16 state];
        v18 = [MEMORY[0x1E69D5A40] paused];
        v19 = v18;
        if (v17 == v18)
        {
        }

        else
        {
          v20 = [WeakRetained isVideoFrameFallbackEnabled];

          if (v20)
          {
            goto LABEL_18;
          }
        }

        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_371;
        v31 = &unk_1E872D990;
        v32 = v12;
        v33 = WeakRetained;
        [WeakRetained _swapActiveMedia:0 animated:0 completion:&v28];

LABEL_18:
        [WeakRetained setPrefetchPlayer:{0, v28, v29, v30, v31}];
        [WeakRetained setPrefetchPlayerViewController:0];

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v21 = [WeakRetained mediaInfoFetchController];
  v12 = [v21 loadPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}];

  v22 = [WeakRetained playbackInitiatorForRTCReporting];
  [v12 setReportingValueWithString:v22 forKey:@"initiator"];

  v24 = VUIDefaultLogObject(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [WeakRetained name];
    *buf = 134218242;
    v35 = v25;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with new player", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
  v26 = [v3 currentState];

  return v26;
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_371(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) videoAudioRampDuration];

  return [v1 playWithVolumeRampDuration:?];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_372(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isBackgrounded])
  {
    [WeakRetained _postWillStartPlaybackNotification:0];
    if ((v11 & 1) == 0)
    {
      v13 = [WeakRetained player];
      [WeakRetained videoAudioRampDuration];
      [v13 playWithVolumeRampDuration:?];
    }

    v14 = v11 ^ 1;
    [WeakRetained setState:3];
  }

  else
  {
    v14 = 0;
  }

  [WeakRetained _disableSubtitleIfNeeded];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_373;
  v19[3] = &unk_1E8730818;
  v21 = v14;
  v19[4] = WeakRetained;
  v20 = v7;
  v15 = v7;
  [WeakRetained _swapActiveMedia:0 animated:v11 completion:v19];
  if ([WeakRetained isBackgrounded])
  {
    v16 = @"Showing playback in background";
  }

  else
  {
    v16 = @"Showing playback in foreground";
  }

  v17 = v16;

  return v16;
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_373(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0 && [*(a1 + 32) isBackgrounded])
  {
    v2 = [*(a1 + 32) player];
    [*(a1 + 32) videoAudioRampDuration];
    [v2 playWithVolumeRampDuration:?];
  }

  v3 = *(a1 + 40);

  return [v3 executeBlockAfterCurrentStateTransition:&__block_literal_global_376];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_377(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"AnimatedKey"];
  if (v12)
  {
    v13 = [v11 objectForKeyedSubscript:@"AnimatedKey"];
    v14 = [v13 BOOLValue] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [WeakRetained player];
  v17 = [v16 state];
  v18 = [MEMORY[0x1E69D5A40] playing];
  v19 = v17 == v18;

  [WeakRetained _disableSubtitleIfNeeded];
  if (![WeakRetained isBackgrounded])
  {
    goto LABEL_10;
  }

  if (v17 == v18)
  {
    goto LABEL_8;
  }

  [WeakRetained _postWillStartPlaybackNotification:0];
  v19 = 0;
  if (v14)
  {
    v20 = [WeakRetained player];
    [WeakRetained videoAudioRampDuration];
    [v20 playWithVolumeRampDuration:?];

LABEL_8:
    v19 = 1;
  }

  [WeakRetained setState:3];
LABEL_10:
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_378;
  v26[3] = &unk_1E8736B08;
  v21 = v9;
  v27 = v21;
  objc_copyWeak(&v29, (a1 + 32));
  v30 = v19;
  v28 = WeakRetained;
  [WeakRetained _swapActiveMedia:0 animated:0 completion:v26];
  if ([WeakRetained isBackgrounded])
  {
    v22 = @"Showing playback in background";
  }

  else
  {
    v22 = @"Showing playback in foreground";
  }

  v23 = v22;
  objc_destroyWeak(&v29);

  return v22;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_378(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_379;
  v3[3] = &unk_1E872F708;
  objc_copyWeak(&v4, (a1 + 48));
  v5 = *(a1 + 56);
  v3[4] = *(a1 + 40);
  [v2 executeBlockAfterCurrentStateTransition:v3];
  objc_destroyWeak(&v4);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_379(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained isBackgrounded];
    v3 = v6;
    if (v4)
    {
      v5 = [v6 player];
      [*(a1 + 32) videoAudioRampDuration];
      [v5 playWithVolumeRampDuration:?];

      v3 = v6;
    }
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_380(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [WeakRetained name];
    *buf = 134218754;
    v34 = WeakRetained;
    v35 = 2112;
    v36 = v16;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v13;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) event %@, newPlaybackState: %@", buf, 0x2Au);
  }

  v17 = [v9 currentState];
  v18 = [MEMORY[0x1E69D5A40] loading];
  v19 = v13 == v18;

  if (v19)
  {

LABEL_11:
    v17 = @"Loading playback";
    goto LABEL_12;
  }

  v20 = [MEMORY[0x1E69D5A40] paused];
  v21 = v13 == v20;

  if (v21)
  {

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_381;
    v29[3] = &unk_1E872E4B8;
    objc_copyWeak(&v30, (a1 + 32));
    [v9 executeBlockAfterCurrentStateTransition:v29];
    objc_destroyWeak(&v30);
    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E69D5A40] stopped];
  v23 = v13 == v22;

  if (v23)
  {
    v31 = @"AnimatedKey";
    v32 = MEMORY[0x1E695E118];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v9 postEvent:@"Finished playback" withContext:0 userInfo:v28];
  }

  else
  {
    v25 = VUIDefaultLogObject(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [WeakRetained name];
      *buf = 134218498;
      v34 = WeakRetained;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) StateWaitingForPlayerToStartLoading unhandled newPlaybackState: %@", buf, 0x20u);
    }
  }

LABEL_12:

  return v17;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_381(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPlaybackIfPossible];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_382(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [MEMORY[0x1E69D5A40] paused];

  if (v8 == v11)
  {
    [WeakRetained _showPlaybackIfPossible];
  }

  else
  {
    v12 = [MEMORY[0x1E69D5A40] playing];

    if (v8 == v12)
    {
      [v7 postEvent:@"Show playback"];
      [WeakRetained _prefetchNextVideo];
    }

    else
    {
      v13 = [MEMORY[0x1E69D5A40] stopped];

      if (v8 == v13)
      {
        v24 = @"AnimatedKey";
        v25[0] = MEMORY[0x1E695E118];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        [v7 postEvent:@"Finished playback" withContext:0 userInfo:v15];
      }

      else
      {
        v15 = VUIDefaultLogObject(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [WeakRetained name];
          v18 = 134218498;
          v19 = WeakRetained;
          v20 = 2112;
          v21 = v16;
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) StateLoadingPlayback unhandled newPlaybackState: %@", &v18, 0x20u);
        }
      }
    }
  }

  return v10;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_383(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 currentState];
  v12 = [MEMORY[0x1E69D5A40] stopped];

  if (v9 == v12)
  {
    v17 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
    if (v17)
    {
      v18 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 1;
    }

    v23 = @"AnimatedKey";
    v20 = [MEMORY[0x1E696AD98] numberWithBool:v19];
    v24[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v7 postEvent:@"Finished playback" withContext:0 userInfo:v21];
  }

  else
  {
    v13 = [MEMORY[0x1E69D5A40] paused];

    if (v9 != v13)
    {
      v14 = [WeakRetained isBackgrounded];
      v15 = @"Showing playback in foreground";
      if (v14)
      {
        v15 = @"Showing playback in background";
      }

      v16 = v15;

      v11 = v16;
    }
  }

  return v11;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [MEMORY[0x1E69D5A40] stopped];

  if (v8 == v11)
  {
    [WeakRetained setPendingAnimated:0];
    v18 = @"AnimatedKey";
    v19[0] = MEMORY[0x1E695E110];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v7 postEvent:@"Finished playback" withContext:0 userInfo:v16];
  }

  else
  {
    v12 = [MEMORY[0x1E69D5A40] paused];

    if (v8 != v12)
    {
      v13 = [WeakRetained isBackgrounded];
      v14 = @"Showing playback in foreground";
      if (v13)
      {
        v14 = @"Showing playback in background";
      }

      v15 = v14;

      v10 = v15;
    }
  }

  return v10;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_385(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_386;
  v16[3] = &unk_1E872D9B8;
  objc_copyWeak(&v19, (a1 + 32));
  v13 = v12;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  [v14 executeBlockAfterCurrentStateTransition:v16];

  objc_destroyWeak(&v19);
  return @"Finished playback";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_386(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained pendingMediaInfoDirection];
  v3 = [*(a1 + 32) mutableCopy];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [v3 setObject:v4 forKey:@"DirectionKey"];

  v5 = [WeakRetained pendingAnimated];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"AnimatedKey"];
  }

  if (([WeakRetained prefetchesVideoFrame] & 1) == 0)
  {
    [WeakRetained _postDidStopPlaybackNotification];
    [WeakRetained _cleanUpEverythingPlaybackRelated];
  }

  if ([WeakRetained popWhenPlayerStops])
  {
    v6 = [WeakRetained vuiNavigationController];
    v7 = [v6 topViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [WeakRetained vuiNavigationController];
      v9 = [v8 popViewControllerAnimated:1];
    }

    else
    {
      v13 = [WeakRetained pendingMediaInfo];

      if (v13)
      {
        [WeakRetained setPendingMediaInfo:0];
        [WeakRetained setPendingMediaInfoDirection:0];
        [WeakRetained setPendingAnimated:0];
        v14 = *(a1 + 40);
        v15 = @"Set media info";
      }

      else
      {
        v14 = *(a1 + 40);
        v15 = @"Show image";
      }

      [v14 postEvent:v15 withContext:0 userInfo:v3];
    }
  }

  else
  {
    v10 = [WeakRetained pendingMediaInfo];

    if (v10)
    {
      [WeakRetained setPendingMediaInfo:0];
      [WeakRetained setPendingMediaInfoDirection:0];
      [WeakRetained setPendingAnimated:0];
      v11 = *(a1 + 40);
      v12 = @"Set media info";
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = @"Show image";
    }

    [v11 postEvent:v12 withContext:0 userInfo:v3];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_388(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:1];
  [WeakRetained _cleanUpEverythingPlaybackRelated];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_389;
  v23[3] = &unk_1E872D990;
  v14 = v9;
  v24 = v14;
  v15 = v12;
  v25 = v15;
  [v14 executeBlockAfterCurrentStateTransition:v23];
  if ([WeakRetained showAlertOnPlaybackFail])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 objectForKey:*MEMORY[0x1E69D5F30]];
      v17 = v11;
      v18 = +[VUIPlaybackErrorMessage sharedInstance];
      v19 = [v17 currentMediaItem];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_392;
      v21[3] = &unk_1E8737968;
      objc_copyWeak(&v22, (a1 + 32));
      [v18 getLocalizedErrorMessageFor:v19 withPlaybackMode:@"Monoscopic" withError:v16 completion:v21];

      objc_destroyWeak(&v22);
    }
  }

  return @"Finished playback";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_392(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_393;
  block[3] = &unk_1E8730F50;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v12);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_393(uint64_t a1)
{
  v2 = [VUIAlertController vui_alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"OK"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9_400;
  v11 = &unk_1E8737940;
  v5 = v2;
  v12 = v5;
  objc_copyWeak(&v13, (a1 + 48));
  v6 = [VUIAlertAction vui_actionWithTitle:v4 style:0 handler:&v8];
  [v5 vui_addAction:{v6, v8, v9, v10, v11}];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v5 vui_presentAlertFromPresentingController:WeakRetained animated:1 completion:0];

  objc_destroyWeak(&v13);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9_400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10_401;
  v5[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 vui_dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10_401(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"VUIBackgroundMediaControllerDidDismissPlaybackErrorAlert" object:WeakRetained];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained currentMediaInfo];
  v6 = [v5 tvpPlaylist];

  if (v6)
  {
    [v3 postEvent:@"Load playback"];
    v7 = [v3 currentState];
  }

  else
  {
    v7 = @"Showing playback in foreground";
  }

  return v7;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v12 objectForKeyedSubscript:@"ShowsPlaybackControlsKey"];
  if (v16)
  {
    v17 = [v12 objectForKeyedSubscript:@"ShowsPlaybackControlsKey"];
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = [WeakRetained player];
  [v20 setPreventsSleepDuringVideoPlayback:1];

  [WeakRetained setShowsVideoControls:v18];
  [WeakRetained _updateCurrentPlaybackViewFrameForPlaybackInBackground:0 animated:v15];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_13;
  v23[3] = &unk_1E872F038;
  objc_copyWeak(&v25, (a1 + 32));
  v21 = v12;
  v24 = v21;
  [v9 executeBlockAfterCurrentStateTransition:v23];

  objc_destroyWeak(&v25);
  return @"Showing playback in foreground";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_13(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonForegrounded"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"IsFullScreenPlayerKey"];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"IsFullScreenPlayerKey"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained name];
    *buf = 134218498;
    v26 = WeakRetained;
    v27 = 2112;
    v28 = v8;
    v29 = 1024;
    v30 = v5;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handle showPlaybackInForeground: isFullScreenPlayer = %d", buf, 0x1Cu);
  }

  if (v5)
  {
    v9 = [WeakRetained avPlayerViewController];
    v10 = [v9 view];
    [v10 layoutIfNeeded];

    v12 = VUIDefaultLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained name];
      *buf = 134218242;
      v26 = WeakRetained;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handle showPlaybackInForeground: enterFullScreenWithCompletion", buf, 0x16u);
    }

    v14 = [WeakRetained avPlayerViewController];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_404;
    v20 = &unk_1E87301C0;
    v21 = WeakRetained;
    objc_copyWeak(&v22, (a1 + 40));
    [v14 enterFullScreenWithCompletion:&v17];

    objc_destroyWeak(&v22);
  }

  v23 = @"VUIBackgroundMediaControllerIsForegroundedKey";
  v24 = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:{1, v17, v18, v19, v20, v21}];
  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotificationName:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:WeakRetained userInfo:v15];
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_404(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 name];
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback did enterFullScreen", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDidAVPlayerControllerEnterFullscreen:1];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_405(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  if (v5)
  {
    v6 = v5;
    v7 = [WeakRetained avPlayerViewController];

    if (v7)
    {

      v3 = @"Showing playback in background";
    }
  }

  return v3;
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_406(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowsVideoControls:0];

  return v3;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_407(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = [WeakRetained player];
  [v17 setPreventsSleepDuringVideoPlayback:0];

  [WeakRetained setShowsVideoControls:0];
  [WeakRetained _updateCurrentPlaybackViewFrameForPlaybackInBackground:1 animated:v15];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_408;
  v19[3] = &unk_1E872E4B8;
  objc_copyWeak(&v20, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v19];
  objc_destroyWeak(&v20);

  return @"Showing playback in background";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_408(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonBackgrounded"];
  v4 = @"VUIBackgroundMediaControllerIsForegroundedKey";
  v5[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:WeakRetained userInfo:v2];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_409(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  v6 = [v5 state];
  v7 = [MEMORY[0x1E69D5A40] playing];

  if (v6 != v7)
  {
    [WeakRetained _postWillStartPlaybackNotification:0];
    v8 = [v3 currentState];
    v9 = [(__CFString *)v8 isEqualToString:@"Showing playback in background"];
    v10 = v8;
    if ((v9 & 1) == 0)
    {
      v9 = [(__CFString *)v8 isEqualToString:@"Showing playback in foreground"];
      v10 = v8;
      if ((v9 & 1) == 0)
      {
        if ([WeakRetained isBackgrounded])
        {
          v11 = @"Showing playback in background";
        }

        else
        {
          v11 = @"Showing playback in foreground";
        }

        v10 = v11;
      }
    }

    v12 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained name];
      v17 = 134218754;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) configure audioSession before playing video, current: %@, future: %@", &v17, 0x2Au);
    }

    [WeakRetained _configureAudioSessionForState:v10];
    v14 = [WeakRetained player];
    [WeakRetained videoAudioRampDuration];
    [v14 playWithVolumeRampDuration:?];

    if ([WeakRetained prefetchesVideoFrame])
    {
      [WeakRetained _updateVideoPlayerLegibleContentInsets:1];
    }
  }

  v15 = [v3 currentState];

  return v15;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_410(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_411;
  v14[3] = &unk_1E872E4B8;
  objc_copyWeak(&v15, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v14];
  objc_destroyWeak(&v15);

  return @"Showing playback in background";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_411(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 state];
  v3 = [MEMORY[0x1E69D5A40] playing];

  if (v2 != v3)
  {
    v4 = [WeakRetained player];
    [WeakRetained videoAudioRampDuration];
    [v4 playWithVolumeRampDuration:?];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_412(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_413;
  v24 = &unk_1E872F038;
  objc_copyWeak(&v26, (a1 + 32));
  v14 = v9;
  v25 = v14;
  [v14 executeBlockAfterCurrentStateTransition:&v21];
  v15 = [WeakRetained prefetchesVideoFrame];
  if (v15)
  {
    v16 = VUIDefaultLogObject(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [WeakRetained name];
      v18 = [v14 currentState];
      *buf = 134218498;
      v28 = WeakRetained;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) remaining at %@ for paused state", buf, 0x20u);
    }

    v19 = [v14 currentState];
  }

  else
  {
    v19 = @"waiting for timeout while paused";
  }

  objc_destroyWeak(&v26);

  return v19;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_413(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained player];
  v4 = [v3 state];
  v5 = [MEMORY[0x1E69D5A40] paused];

  if (v4 != v5)
  {
    v6 = [WeakRetained player];
    [v6 pause];

    if (([WeakRetained prefetchesVideoFrame] & 1) == 0)
    {
      v7 = [WeakRetained pauseStateTimeoutTimer];
      [v7 invalidate];

      [WeakRetained setPauseStateTimeoutTimer:0];
      v8 = MEMORY[0x1E695DFF0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_414;
      v10[3] = &unk_1E8737828;
      objc_copyWeak(&v12, (a1 + 40));
      v10[4] = WeakRetained;
      v11 = *(a1 + 32);
      v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:480.0];
      [WeakRetained setPauseStateTimeoutTimer:v9];

      objc_destroyWeak(&v12);
    }
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_414(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [v4 name];
    v6 = [*(a1 + 40) currentState];
    v9 = 134218498;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) timedout while waiting in pause state, current state %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 40) currentState];
  v8 = [v7 isEqualToString:@"waiting for timeout while paused"];

  if (v8)
  {
    [WeakRetained setAutomaticPlaybackStop:1];
    [WeakRetained setVpafPlaybackStopReason:4];
    [*(a1 + 40) postEvent:@"Stop"];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_415(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained player];
  [v10 pause];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_416;
  v14[3] = &unk_1E872D990;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  [v12 executeBlockAfterCurrentStateTransition:v14];

  return @"Waiting to stop after showing image";
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_417(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_420;
  v11[3] = &unk_1E872D990;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [v9 executeBlockAfterCurrentStateTransition:v11];

  return @"Waiting to stop after showing image";
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_421(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  if (v8 && ([v8 objectForKeyedSubscript:@"PlaybackStopReasonKey"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v8 objectForKeyedSubscript:@"PlaybackStopReasonKey"];
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [WeakRetained playbackStopDelayReasons];
  if ((v14 & v13) <= 4 && ((1 << (v14 & v13)) & 0x16) != 0)
  {

    [WeakRetained playbackStopDelay];
    [WeakRetained performSelector:sel_stop withObject:0 afterDelay:?];
    v10 = @"waiting to stop playback";
    goto LABEL_17;
  }

  v16 = [WeakRetained player];

  if (!v16)
  {
    v25 = @"AnimatedKey";
    v26 = MEMORY[0x1E695E118];
    v21 = MEMORY[0x1E695DF20];
    v22 = &v26;
    v23 = &v25;
LABEL_15:
    v20 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    [v7 postEvent:@"Finished playback" withContext:0 userInfo:v20];
    goto LABEL_16;
  }

  v17 = [WeakRetained player];
  v18 = [v17 state];
  v19 = [MEMORY[0x1E69D5A40] stopped];

  if (v18 == v19)
  {
    v27 = @"AnimatedKey";
    v28[0] = MEMORY[0x1E695E118];
    v21 = MEMORY[0x1E695DF20];
    v22 = v28;
    v23 = &v27;
    goto LABEL_15;
  }

  [WeakRetained setAutomaticPlaybackStop:v13 == 0];
  [WeakRetained _postWillStopPlaybackNotification];
  v20 = [WeakRetained player];
  [v20 stop];
LABEL_16:

LABEL_17:

  return v10;
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_422(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [WeakRetained currentMediaInfo];
    v7 = [v6 tvpPlaylist];

    if (v7)
    {
      if ([WeakRetained isBackgrounded])
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_423;
        v12[3] = &unk_1E872D768;
        v12[4] = WeakRetained;
        [v3 executeBlockAfterCurrentStateTransition:v12];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = VUIDefaultLogObject(v8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [WeakRetained name];
    *buf = 134218242;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) No playlist has been set; ignoring replay event", buf, 0x16u);
  }

LABEL_9:

  v10 = [v3 currentState];

  return v10;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_423(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 postEvent:@"Load playback"];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_424(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 currentState];
  v6 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [WeakRetained currentMediaInfo];
    v8 = [v7 tvpPlaylist];

    if (v8)
    {
      if ([WeakRetained isBackgrounded])
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {

        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_425;
        v12[3] = &unk_1E872D7E0;
        v13 = *(a1 + 40);
        [v3 executeBlockAfterCurrentStateTransition:v12];

        v5 = @"Waiting for player to start loading";
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained name];
    *buf = 134218242;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) No playlist has been set; ignoring replay event", buf, 0x16u);
  }

LABEL_9:

  return v5;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_426(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [WeakRetained currentMediaInfo];
    v5 = [v4 tvpPlaylist];

    if (v5)
    {
      if ([WeakRetained isBackgrounded])
      {
        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained name];
    v10 = 134218242;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) No playlist has been set; ignoring replay event", &v10, 0x16u);
  }

  v5 = 0;
LABEL_9:

  return @"Showing image";
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_427(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 objectForKey:@"AVPlayerViewControllerKey"];
  [WeakRetained setAvPlayerViewController:v10];
  v11 = [v7 objectForKeyedSubscript:@"PlayerKey"];

  [WeakRetained setPlayer:v11];
  v12 = [WeakRetained player];
  [v12 setPreventsSleepDuringVideoPlayback:0];

  [WeakRetained setShowsVideoControls:0];
  [WeakRetained transitionToForeground:0 animated:0];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_428;
  v18 = &unk_1E872DC10;
  v13 = *(a1 + 32);
  v19 = WeakRetained;
  v20 = v13;
  [v8 executeBlockAfterCurrentStateTransition:&v15];

  if ([WeakRetained prefetchesVideoFrame])
  {
    [WeakRetained _prefetchNextVideo];
    [WeakRetained _populatePlayerWithMediaItemsIfNeeded:v11];
  }

  return @"Showing playback in background";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_428(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) player];
  (*(v1 + 16))(v1, v2, 1);
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_429(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanUpEverythingPlaybackRelated];
  v10 = [v7 objectForKey:@"AVPlayerViewControllerKey"];
  [WeakRetained setAvPlayerViewController:v10];
  v11 = [v7 objectForKeyedSubscript:@"PlayerKey"];

  v12 = [WeakRetained player];
  [v12 setPreventsSleepDuringVideoPlayback:0];

  [WeakRetained setShowsVideoControls:0];
  [WeakRetained transitionToForeground:0 animated:0];
  (*(*(a1 + 32) + 16))();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_430;
  v15[3] = &unk_1E872D990;
  v15[4] = WeakRetained;
  v16 = v11;
  v13 = v11;
  [v8 executeBlockAfterCurrentStateTransition:v15];

  return @"Showing playback in background";
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_430(uint64_t a1)
{
  [*(a1 + 32) _prefetchNextVideo];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _populatePlayerWithMediaItemsIfNeeded:v3];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_431(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_432;
  v14[3] = &unk_1E872E4B8;
  objc_copyWeak(&v15, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v14];
  objc_destroyWeak(&v15);

  return @"Showing playback in foreground";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_432(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained shouldStopPlayerWhenExitingFullScreen])
  {
    v3 = [WeakRetained player];
    v4 = [v3 state];

    v5 = [MEMORY[0x1E69D5A40] playing];
    v6 = v5;
    if (v4 == v5)
    {
    }

    else
    {
      v7 = [MEMORY[0x1E69D5A40] loading];

      if (v4 != v7)
      {
        [WeakRetained stop];
        v2 = 1;
LABEL_8:

        goto LABEL_9;
      }
    }

    [WeakRetained transitionToForeground:0 animated:1];
    v2 = 0;
    goto LABEL_8;
  }

  [WeakRetained stop];
  v2 = 1;
LABEL_9:
  [WeakRetained setDidAVPlayerControllerEnterFullscreen:0];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = @"VUIBackgroundMediaControllerInfoHasVideoStopped";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v8 postNotificationName:@"VUIBackgroundMediaControllerDidEndFullscreenPresentationNotification" object:WeakRetained userInfo:v10];
}

- (void)setState:(unint64_t)state
{
  [(VUIBackgroundMediaController *)self willChangeValueForKey:@"state"];
  self->_state = state;
  [(VUIBackgroundMediaController *)self didChangeValueForKey:@"state"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerDidChangeStateNotification" object:self];
}

- (BOOL)hasBackgroundVideo
{
  currentMediaInfo = [(VUIBackgroundMediaController *)self currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentMediaInfo2 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    tvpPlaylist = [currentMediaInfo2 tvpPlaylist];

    v6 = tvpPlaylist != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v8 = VUIDefaultLogObject(coordinatorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    *buf = 134218242;
    selfCopy = self;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playerViewController willEndFullScreenPresentationWithAnimationCoordinator", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__VUIBackgroundMediaController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v11[3] = &unk_1E8736308;
  objc_copyWeak(&v13, buf);
  v10 = controllerCopy;
  v12 = v10;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_438 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __107__VUIBackgroundMediaController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained stateMachine];
    [v3 postEvent:@"AvPlayerViewController did exit fullscreen presentation" withContext:*(a1 + 32)];
  }
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"VUIBackgroundMediaControllerControlVisibilityKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:controls];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerControlVisibilityChangedNotification" object:self userInfo:v7];
}

- (void)playerViewControllerDidStartPictureInPicture:(id)picture
{
  v20 = *MEMORY[0x1E69E9840];
  pictureCopy = picture;
  v5 = VUIDefaultLogObject(pictureCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v16 = 134218242;
    selfCopy = self;
    v18 = 2112;
    v19 = name;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) did start picture in picture", &v16, 0x16u);
  }

  presentedViewController = [pictureCopy presentedViewController];

  if (presentedViewController)
  {
    [pictureCopy dismissViewControllerAnimated:1 completion:0];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  player = [(VUIBackgroundMediaController *)self player];
  [dictionary vui_setObjectIfNotNil:player forKey:@"VUIBackgroundMediaControllerPlayerKey"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [dictionary copy];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerDidEnterPIPNotification" object:self userInfo:v11];

  if ([(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    player2 = [(VUIBackgroundMediaController *)self player];
    playlist = [player2 playlist];

    if (playlist)
    {
      mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      playlist2 = [player2 playlist];
      [mediaInfoFetchController populatePlaylistWithMediaItems:playlist2 atIndex:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];

      [player2 setMediaItemEndAction:0];
      [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
    }
  }
}

- (void)playerViewController:(id)controller failedToStartPictureInPictureWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = VUIDefaultLogObject(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) failed to start picture in picture with error %@", &v9, 0x20u);
  }

  v8 = +[VUIPlaybackManager sharedInstance];
  [v8 setBackgroundMediaControllerForPIP:0];
}

- (void)playerViewControllerDidStopPictureInPicture:(id)picture
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    player = [(VUIBackgroundMediaController *)self player];
    state = [player state];
    v18 = 134218498;
    selfCopy = self;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = state;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) did stop picture in picture %@", &v18, 0x20u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  player2 = [(VUIBackgroundMediaController *)self player];
  [dictionary vui_setObjectIfNotNil:player2 forKey:@"VUIBackgroundMediaControllerPlayerKey"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [dictionary copy];
  [defaultCenter postNotificationName:@"VUIBackgroundMediaControllerDidStopPIPNotification" object:self userInfo:v11];

  if ([(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    player3 = [(VUIBackgroundMediaController *)self player];
    playlist = [player3 playlist];

    if (playlist)
    {
      playlist2 = [player3 playlist];
      activeListIndex = [playlist2 activeListIndex];

      mediaInfoFetchController = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      playlist3 = [player3 playlist];
      [mediaInfoFetchController removePopulatedMediaItems:playlist3 atIndex:activeListIndex];

      [player3 setMediaItemEndAction:1];
    }
  }

  [(VUIBackgroundMediaController *)self performSelector:sel__cleanupPIPPlayback withObject:0 afterDelay:1.0];
}

- (void)playerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = VUIDefaultLogObject(handlerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [(VUIBackgroundMediaController *)self name];
    player = [(VUIBackgroundMediaController *)self player];
    state = [player state];
    *buf = 134218498;
    selfCopy = self;
    v18 = 2112;
    v19 = name;
    v20 = 2112;
    v21 = state;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) restore picture in picture %@", buf, 0x20u);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__cleanupPIPPlayback object:0];
  player2 = [(VUIBackgroundMediaController *)self player];
  state2 = [player2 state];
  stopped = [MEMORY[0x1E69D5A40] stopped];

  if (state2 == stopped)
  {
    [(VUIBackgroundMediaController *)self _cleanupPIPPlayback];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v13 = +[VUIPlaybackManager sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __118__VUIBackgroundMediaController_playerViewController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E872D7E0;
    v15 = handlerCopy;
    [v13 restoreBackgroundMediaControllerFromPIP:v14];
  }
}

- (void)_cleanupPIPPlayback
{
  v2 = +[VUIPlaybackManager sharedInstance];
  [v2 setBackgroundMediaControllerForPIP:0];
}

- (UIEdgeInsets)legibleContentInsets
{
  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSTimer)playbackLoadingTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackLoadingTimer);

  return WeakRetained;
}

- (NSTimer)playbackDelayTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDelayTimer);

  return WeakRetained;
}

- (NSTimer)imageDelayTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelayTimer);

  return WeakRetained;
}

- (NSTimer)pauseStateTimeoutTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_pauseStateTimeoutTimer);

  return WeakRetained;
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_3_cold_1(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_recordBgAutoPlayMediaEventForPlaybackState:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end