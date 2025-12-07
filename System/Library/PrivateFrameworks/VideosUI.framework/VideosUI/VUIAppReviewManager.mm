@interface VUIAppReviewManager
+ (id)sharedInstance;
- (BOOL)_isYouthAccount;
- (BOOL)_shouldAttemptToPrompt;
- (VUIAppReviewManager)init;
- (void)_attemptToPrompt;
- (void)_handleIsPlaybackUIBeingShownDidChange:(id)change;
- (void)dealloc;
- (void)isFeatureEnabled:(id)enabled;
- (void)processAddToUpNext;
- (void)setMostRecentPlaybackProgressForNonTrailerContent:(double)content;
@end

@implementation VUIAppReviewManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[VUIAppReviewManager sharedInstance];
  }

  v3 = sharedInstance_singleton_0;

  return v3;
}

void __37__VUIAppReviewManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIAppReviewManager);
  v1 = sharedInstance_singleton_0;
  sharedInstance_singleton_0 = v0;
}

- (VUIAppReviewManager)init
{
  v24.receiver = self;
  v24.super_class = VUIAppReviewManager;
  v2 = [(VUIAppReviewManager *)&v24 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_numberOfAddToUpNexts = [standardUserDefaults integerForKey:@"AppReviewNumberOfAddToUpNexts"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_numberOfPlaybacks = [standardUserDefaults2 integerForKey:@"AppReviewNumberOfPlaybacks"];

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults3 integerForKey:@"AppReviewAfterNthAddToUpNext"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 3;
    }

    v2->_numberOfAddToUpNextsBeforePrompting = v7;

    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [standardUserDefaults4 integerForKey:@"AppReviewAfterNthPlaybacks"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    v2->_numberOfPlaybacksBeforePrompting = v10;

    standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults5 doubleForKey:@"AppReviewMinCompletionThreshold"];
    v2->_completionThreshold = v12;

    completionThreshold = v2->_completionThreshold;
    if (completionThreshold <= 0.0 || completionThreshold > 1.0)
    {
      v2->_completionThreshold = 0.7;
    }

    v2->_lastPlaybackEvent = 0;
    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v16 = [objc_alloc(MEMORY[0x1E698CB20]) initWithBag:vui_defaultBag];
    sharedStoreReview = v2->_sharedStoreReview;
    v2->_sharedStoreReview = v16;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
    v20 = +[VUIPlaybackManager sharedInstance];
    [defaultCenter addObserver:v2 selector:sel__handleIsPlaybackUIBeingShownDidChange_ name:v19 object:v20];

    v21 = dispatch_queue_create("com.apple.tv.appreviewmanager", 0);
    queue = v2->_queue;
    v2->_queue = v21;
  }

  return v2;
}

- (void)isFeatureEnabled:(id)enabled
{
  enabledCopy = enabled;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VUIAppReviewManager_isFeatureEnabled___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = enabledCopy;
  v6 = enabledCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__VUIAppReviewManager_isFeatureEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[7] isEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __40__VUIAppReviewManager_isFeatureEnabled___block_invoke_2;
  v7 = &unk_1E872FFC0;
  v8 = *(a1 + 32);
  v9 = v4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)processAddToUpNext
{
  v17 = *MEMORY[0x1E69E9840];
  _isYouthAccount = [(VUIAppReviewManager *)self _isYouthAccount];
  if (_isYouthAccount)
  {
    v4 = VUIDefaultLogObject(_isYouthAccount);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Skip Add to Up Next -- Ineligible Account", buf, 2u);
    }
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    ++self->_numberOfAddToUpNexts;
    [standardUserDefaults setInteger:? forKey:?];

    v7 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      numberOfAddToUpNexts = self->_numberOfAddToUpNexts;
      numberOfAddToUpNextsBeforePrompting = self->_numberOfAddToUpNextsBeforePrompting;
      *buf = 134218240;
      v14 = numberOfAddToUpNexts;
      v15 = 2048;
      v16 = numberOfAddToUpNextsBeforePrompting;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Add to Up Next -- up next: %lu/%lu", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v10 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__VUIAppReviewManager_processAddToUpNext__block_invoke;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v12, buf);
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __41__VUIAppReviewManager_processAddToUpNext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _shouldAttemptToPrompt];
  if (v2)
  {
    v3 = VUIDefaultLogObject(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: initiate user prompt triggered by Add to Up Next", v4, 2u);
    }

    [WeakRetained _attemptToPrompt];
  }
}

- (void)setMostRecentPlaybackProgressForNonTrailerContent:(double)content
{
  if (self->_highestPlaybackProgress < content)
  {
    self->_highestPlaybackProgress = content;
  }
}

- (void)_handleIsPlaybackUIBeingShownDidChange:(id)change
{
  _isYouthAccount = [(VUIAppReviewManager *)self _isYouthAccount];
  if (_isYouthAccount)
  {
    v5 = VUIDefaultLogObject(_isYouthAccount);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Skip Playback -- Ineligible Account", buf, 2u);
    }
  }

  else
  {
    v6 = +[VUIAppReviewManager sharedInstance];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke;
    v7[3] = &unk_1E872F758;
    v7[4] = self;
    [v6 isFeatureEnabled:v7];
  }
}

void __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[VUIPlaybackManager sharedInstance];
    v4 = [v3 isPlaybackUIBeingShown];

    if ((v4 & 1) == 0)
    {
      objc_initWeak(&location, *(a1 + 32));
      v5 = dispatch_time(0, 1000000000);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke_2;
      v6[3] = &unk_1E872E4B8;
      objc_copyWeak(&v7, &location);
      dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  +[_TtC8VideosUI8VideosUI handlePlaybackDidEndForTCC];
  v2 = +[_TtC8VideosUI8VideosUI getFullorHalfSheetPromptedAt];

  if (!v2)
  {
    v3 = +[VUIPlaybackManager sharedInstance];
    v4 = [v3 isPlaybackUIBeingShown];

    if (v4)
    {
      v6 = VUIDefaultLogObject(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v7 = "VUIAppReviewManager: Skip Playback -- Playback UI being shown";
LABEL_8:
        v9 = v6;
        v10 = 2;
LABEL_9:
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, v7, &v20, v10);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v8 = [WeakRetained lastPlaybackEvent];
    if (v8 == 1)
    {
      v6 = VUIDefaultLogObject(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v7 = "VUIAppReviewManager: Skip Playback -- There was an error";
        goto LABEL_8;
      }

LABEL_10:

      [WeakRetained _resetStates];
      goto LABEL_11;
    }

    if (*(WeakRetained + 6) < *(WeakRetained + 5))
    {
      v6 = VUIDefaultLogObject(v8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v11 = WeakRetained[5];
      v12 = WeakRetained[6];
      v20 = 134218240;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v7 = "VUIAppReviewManager: Skip Playback -- live events or less than completion threshold %.02f -- progress %.02f";
      v9 = v6;
      v10 = 22;
      goto LABEL_9;
    }

    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    ++WeakRetained[2];
    [v13 setInteger:? forKey:?];

    v15 = VUIDefaultLogObject(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = WeakRetained[2];
      v17 = WeakRetained[4];
      v20 = 134218240;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Playback did end -- playback: %lu/%lu", &v20, 0x16u);
    }

    if ([WeakRetained lastPlaybackEvent] == 2)
    {
      v6 = VUIDefaultLogObject(2);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v20) = 0;
      v7 = "VUIAppReviewManager: Skip Playback -- Upsell presented";
      goto LABEL_8;
    }

    [WeakRetained _resetStates];
    v18 = [WeakRetained _shouldAttemptToPrompt];
    if (v18)
    {
      v19 = VUIDefaultLogObject(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Initiate prompt. Triggered by playback", &v20, 2u);
      }

      [WeakRetained _attemptToPrompt];
    }
  }

LABEL_11:
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAppReviewManager;
  [(VUIAppReviewManager *)&v4 dealloc];
}

- (BOOL)_isYouthAccount
{
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  v3 = [activeAccount ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C4B8]];
  v4 = v3;
  v5 = v3 && ([v3 BOOLValue] & 1) != 0;

  return v5;
}

- (void)_attemptToPrompt
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  date = [MEMORY[0x1E695DF00] date];
  [standardUserDefaults setValue:date forKey:@"AppReviewLastPromptedAt"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  systemVersion = [currentDevice systemVersion];
  [standardUserDefaults2 setValue:systemVersion forKey:@"AppReviewLastPromptedOSVersion"];

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults3 setInteger:0 forKey:@"AppReviewNumberOfPlaybacks"];

  standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults4 setInteger:0 forKey:@"AppReviewNumberOfAddToUpNexts"];

  self->_numberOfAddToUpNexts = 0;
  self->_numberOfPlaybacks = 0;
  [(AMSSharedStoreReview *)self->_sharedStoreReview didAttemptPromptReview];
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  windowScene = [vui_keyWindow windowScene];
  [_TtC8VideosUI8VideosUI requestAppStoreReview:windowScene];

  v13 = VUIDefaultLogObject(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Attempted to prompt", v14, 2u);
  }
}

- (BOOL)_shouldAttemptToPrompt
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[VUITVAppLauncher sharedInstance];
  appController = [v3 appController];

  v5 = +[VUIApplicationRouter topPresentedViewController];
  presentedViewController = [v5 presentedViewController];
  if (presentedViewController)
  {
    goto LABEL_4;
  }

  presentedViewController = +[VUIApplicationRouter currentNavigationController];
  v6PresentedViewController = [presentedViewController presentedViewController];
  if (v6PresentedViewController)
  {

LABEL_4:
LABEL_5:
    v9 = VUIDefaultLogObject(v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }

    LOWORD(v24) = 0;
    v10 = "VUIAppReviewManager: Already presenting";
    goto LABEL_7;
  }

  navigationController = [appController navigationController];
  presentedViewController2 = [navigationController presentedViewController];

  if (presentedViewController2)
  {
    goto LABEL_5;
  }

  if (self->_numberOfAddToUpNexts < self->_numberOfAddToUpNextsBeforePrompting && self->_numberOfPlaybacks < self->_numberOfPlaybacksBeforePrompting)
  {
    v9 = VUIDefaultLogObject(v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    numberOfAddToUpNexts = self->_numberOfAddToUpNexts;
    numberOfPlaybacks = self->_numberOfPlaybacks;
    numberOfAddToUpNextsBeforePrompting = self->_numberOfAddToUpNextsBeforePrompting;
    numberOfPlaybacksBeforePrompting = self->_numberOfPlaybacksBeforePrompting;
    v24 = 134218752;
    v25 = numberOfAddToUpNexts;
    v26 = 2048;
    v27 = numberOfAddToUpNextsBeforePrompting;
    v28 = 2048;
    v29 = numberOfPlaybacks;
    v30 = 2048;
    v31 = numberOfPlaybacksBeforePrompting;
    v10 = "VUIAppReviewManager: -- conditions not met -- up next: %lu/%lu -- playback: %lu/%lu";
    v11 = v9;
    v12 = 42;
    goto LABEL_8;
  }

  shouldAttemptPromptReview = [(AMSSharedStoreReview *)self->_sharedStoreReview shouldAttemptPromptReview];
  v22 = shouldAttemptPromptReview;
  v9 = VUIDefaultLogObject(shouldAttemptPromptReview);
  v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_9;
    }

    LOWORD(v24) = 0;
    v10 = "VUIAppReviewManager: [AMSSharedStoreReview shouldAttemptPromptReview] returned NO";
LABEL_7:
    v11 = v9;
    v12 = 2;
LABEL_8:
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, v10, &v24, v12);
    goto LABEL_9;
  }

  if (v23)
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: [AMSSharedStoreReview shouldAttemptPromptReview] returned YES", &v24, 2u);
  }

  v13 = 1;
LABEL_10:

  return v13;
}

@end