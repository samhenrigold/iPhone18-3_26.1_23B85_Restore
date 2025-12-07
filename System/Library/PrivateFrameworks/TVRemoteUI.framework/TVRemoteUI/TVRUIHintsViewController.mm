@interface TVRUIHintsViewController
- (BOOL)_shouldAllowHintsToPresent;
- (BOOL)_siriHintEnabled;
- (BOOL)_volumeHintEnabled;
- (BOOL)hasPresentedContent;
- (CGAffineTransform)_gylphTransformForOrientation:(SEL)orientation;
- (CGRect)_frameForUserIntentButtonPresented:(BOOL)presented;
- (CGRect)_frameForVolumeButtonsPresented:(BOOL)presented;
- (CGRect)tipSourceRect;
- (TVRUIHintsViewController)init;
- (int64_t)currentInterfaceOrientation;
- (unint64_t)_permittedArrowDirectionsForDevice:(id)device;
- (unint64_t)permittedArrowDirections;
- (void)_applyTransformForOrientation:(int64_t)orientation;
- (void)_cleanupHints;
- (void)_dismissHintsWithCompletion:(id)completion;
- (void)_largeTextEnabledStatusChanged:(id)changed;
- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation;
- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation volumeImage:(id)image;
- (void)_setupDebugUIIfEnabled;
- (void)_setupTipsControllerIfNeeded;
- (void)_setupUserIntentButtonHintWithPresentation:(unint64_t)presentation;
- (void)_setupVolumeButtonsHintWithPresentation:(unint64_t)presentation volumeImage:(id)image;
- (void)_siriActivated:(id)activated;
- (void)_siriDeactivated:(id)deactivated;
- (void)_updateUserIntentButtonHintFrameForPresentation:(unint64_t)presentation;
- (void)_updateVolumeButtonsHintFrameWithPresentation:(unint64_t)presentation volumeImage:(id)image;
- (void)_volumeDownButtonPressed:(id)pressed;
- (void)_volumeUpButtonPressed:(id)pressed;
- (void)dealloc;
- (void)device:(id)device supportsSiri:(BOOL)siri volume:(BOOL)volume;
- (void)device:(id)device supportsVolume:(BOOL)volume;
- (void)dismissHints;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)remoteWillBeDismissed;
- (void)replayHints;
- (void)requestHintsForSiri:(BOOL)siri volumeMode:(unint64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TVRUIHintsViewController

- (TVRUIHintsViewController)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TVRUIHintsViewController;
  v2 = [(TVRUIHintsViewController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    currentInterfaceOrientation = 1;
    v2->_allowSiriHint = 1;
    v2->_allowVolumeHint = 1;
    v2->_allowTips = 1;
    v5 = +[TVRUIDeviceInfo currentDeviceInfo];
    if ([v5 isPad])
    {
      currentInterfaceOrientation = [(TVRUIHintsViewController *)v3 currentInterfaceOrientation];
    }

    v6 = +[TVRUIHintsStyle styleProviderForUserInterfaceIdiom:hasHomeButton:](TVRUIHintsStyle, "styleProviderForUserInterfaceIdiom:hasHomeButton:", [v5 isPad], objc_msgSend(v5, "hasHomeButton"));
    styleProvider = v3->_styleProvider;
    v3->_styleProvider = v6;

    v9 = _TVRUIHintsLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v3->_styleProvider;
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Style provider: %@", buf, 0xCu);
    }

    v11 = [v5 hardwareInfoForOrientation:currentInterfaceOrientation];
    [(TVRUIHintsViewController *)v3 setHardwareInfo:v11];

    v13 = _TVRUIHintsLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      hardwareInfo = [(TVRUIHintsViewController *)v3 hardwareInfo];
      v15 = [hardwareInfo description];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Current hardwareInfo for device: %@", buf, 0xCu);
    }

    [(TVRUIHintsViewController *)v3 setLastAnimatedTimeInterval:0.0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v9 viewDidLoad];
  view = [(TVRUIHintsViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(TVRUIHintsViewController *)self setDefinesPresentationContext:1];
  [(TVRUIHintsViewController *)self _applyTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
  [(TVRUIHintsViewController *)self _setupDebugUIIfEnabled];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__largeTextEnabledStatusChanged_ name:*MEMORY[0x277D76810] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__siriActivated_ name:@"TVRUISiriManagerSiriActivated" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__siriDeactivated_ name:@"TVRUISiriManagerSiriDeactivated" object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__volumeUpButtonPressed_ name:@"TVRUIVolumeUpEventGenerated" object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__volumeDownButtonPressed_ name:@"TVRUIVolumeDownEventGenerated" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v4 viewWillAppear:appear];
  [(TVRUIHintsViewController *)self _applyTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v4 viewDidAppear:appear];
  if (+[TVRUIFeatures persistHintsUIEnabled])
  {
    [(TVRUIHintsViewController *)self requestHintsForSiri:1 volume:1];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(TVRUIHintsViewController *)self dismissHints];
  [(TVRUIHintsViewController *)self dismissPresentedContentAnimated:0 completion:0];
  [(TVRUIHintsViewController *)self _applyTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
}

- (void)dealloc
{
  [(TVRUIHintsViewController *)self dismissPresentedContentAnimated:0 completion:0];
  v3.receiver = self;
  v3.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v3 dealloc];
}

- (void)device:(id)device supportsSiri:(BOOL)siri volume:(BOOL)volume
{
  volumeCopy = volume;
  siriCopy = siri;
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [(TVRUIHintsViewController *)self setSupportsSiri:siriCopy];
  [(TVRUIHintsViewController *)self setSupportsVolume:volumeCopy];
  name = [deviceCopy name];

  v11 = _TVRUIHintsLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = name;
    v14 = 1024;
    v15 = siriCopy;
    v16 = 1024;
    v17 = volumeCopy;
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewControllerDelegate callback deviceName='%@', supportsSiri=%{BOOL}d, supportsVolume=%{BOOL}d", &v12, 0x18u);
  }

  [(TVRUIHintsViewController *)self _setupTipsControllerIfNeeded];
  [(TVRUIHintsViewController *)self requestHintsForSiri:siriCopy volume:volumeCopy];
}

- (void)device:(id)device supportsVolume:(BOOL)volume
{
  volumeCopy = volume;
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [(TVRUIHintsViewController *)self setSupportsVolume:volumeCopy];
  v7 = CACurrentMediaTime();
  lastAnimatedTimeInterval = [(TVRUIHintsViewController *)self lastAnimatedTimeInterval];
  v9 = 0.0;
  if (v10 >= 0.0)
  {
    lastAnimatedTimeInterval = [(TVRUIHintsViewController *)self lastAnimatedTimeInterval];
    v9 = v7 - v11;
  }

  v12 = _TVRUIHintsLog(lastAnimatedTimeInterval);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v9;
    _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Elapsed time: %f", &v16, 0xCu);
  }

  if (volumeCopy && v9 > 1.0)
  {
    v14 = _TVRUIHintsLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [deviceCopy name];
      v16 = 138412546;
      v17 = *&name;
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewControllerDelegate callback deviceName='%@', supportsVolume=%{BOOL}d", &v16, 0x12u);
    }

    [(TVRUIHintsViewController *)self requestHintsForSiri:0 volume:1];
  }
}

- (void)requestHintsForSiri:(BOOL)siri volumeMode:(unint64_t)mode
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider animationPresentationDelay];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke;
  block[3] = &unk_279D88958;
  siriCopy = siri;
  block[4] = self;
  block[5] = mode;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

void __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _shouldAllowHintsToPresent];
  if (v2)
  {
    if (*(a1 + 48) == 1)
    {
      v2 = [*(a1 + 32) _siriHintEnabled];
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a1 + 40))
    {
      v2 = [*(a1 + 32) _volumeHintEnabled];
      v4 = v2;
      if (v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
      if (v3)
      {
        goto LABEL_12;
      }
    }

    v5 = _TVRUIHintsLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) allowSiriHint];
      v8 = [*(a1 + 32) styleProvider];
      *buf = 67109632;
      *v58 = v6;
      *&v58[4] = 1024;
      *&v58[6] = v7;
      *v59 = 1024;
      *&v59[2] = [v8 shouldShowSiriHint];
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Siri button hint not enabled, showSiri=%{BOOL}d, allowSiriHint=%{BOOL}d, shouldShowSiriHint=%{BOOL}d", buf, 0x14u);
    }

LABEL_12:
    if ((v4 & 1) == 0)
    {
      v9 = _TVRUIHintsLog(v2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = [*(a1 + 32) allowVolumeHint];
        v12 = [*(a1 + 32) styleProvider];
        v13 = [v12 shouldShowVolumeHint];
        *buf = 134218496;
        *v58 = v10;
        *&v58[8] = 1024;
        *v59 = v11;
        *&v59[4] = 1024;
        v60 = v13;
        _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Volume button hint not enabled, volumeMode=%ld, allowVolumeHint=%{BOOL}d, shouldShowVolumeHint=%{BOOL}d", buf, 0x18u);
      }

      if ((v3 & 1) == 0)
      {
        v20 = _TVRUIHintsLog(v14);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v20, OS_LOG_TYPE_DEFAULT, "Siri and Volume are not supported so don't show the hints", buf, 2u);
        }

        goto LABEL_27;
      }
    }

    v15 = [*(a1 + 32) styleProvider];
    [v15 animationDuration];
    v17 = v16;

    v18 = *(a1 + 40);
    if (v18 == 2)
    {
      v19 = [*(a1 + 32) styleProvider];
      v20 = [v19 micVolumeImage];
      v17 = 3.0;
    }

    else
    {
      if (v18 != 1)
      {
        v20 = 0;
        goto LABEL_24;
      }

      v19 = [*(a1 + 32) styleProvider];
      v20 = [v19 volumeImage];
    }

LABEL_24:
    [*(a1 + 32) _updateUserIntentButtonHintFrameForPresentation:0];
    v21 = _TVRUIHintsLog([*(a1 + 32) _updateVolumeButtonsHintFrameWithPresentation:0 volumeImage:v20]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v58 = v3;
      *&v58[4] = 1024;
      *&v58[6] = v4;
      _os_log_impl(&dword_26CFEB000, v21, OS_LOG_TYPE_DEFAULT, "Animating hints siri=%{BOOL}d, volume=%{BOOL}d", buf, 0xEu);
    }

    v22 = +[TVRUICubicSpringAnimator standardSpringAnimator];
    [*(a1 + 32) setPresentationAnimator:v22];

    v23 = [*(a1 + 32) userIntentButtonHint];
    [v23 setHidden:0];

    v24 = [*(a1 + 32) userIntentButtonHint];
    [v24 setAlpha:0.0];

    [*(a1 + 32) _frameForUserIntentButtonPresented:0];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [*(a1 + 32) userIntentButtonHint];
    [v33 setFrame:{v26, v28, v30, v32}];

    v34 = [*(a1 + 32) volumeButtonsHint];
    [v34 setHidden:0];

    v35 = [*(a1 + 32) volumeButtonsHint];
    [v35 setAlpha:0.0];

    [*(a1 + 32) _frameForVolumeButtonsPresented:0];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [*(a1 + 32) volumeButtonsHint];
    [v44 setFrame:{v37, v39, v41, v43}];

    objc_initWeak(buf, *(a1 + 32));
    v45 = [*(a1 + 32) presentationAnimator];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_25;
    v53[3] = &unk_279D88908;
    objc_copyWeak(&v54, buf);
    v55 = v4;
    v56 = v3;
    [v45 addAnimations:v53];

    v46 = [*(a1 + 32) presentationAnimator];
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_2;
    v51 = &unk_279D88930;
    objc_copyWeak(v52, buf);
    v52[1] = *&v17;
    [v46 addCompletion:&v48];

    v47 = [*(a1 + 32) presentationAnimator];
    [v47 startAnimation];

    [*(a1 + 32) setLastAnimatedTimeInterval:CACurrentMediaTime()];
    objc_destroyWeak(v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(buf);
LABEL_27:
  }
}

void __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v23 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      v3 = [WeakRetained volumeButtonsHint];
      [v3 setAlpha:1.0];

      [v23 _frameForVolumeButtonsPresented:1];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v23 volumeButtonsHint];
      [v12 setFrame:{v5, v7, v9, v11}];

      WeakRetained = v23;
    }

    if (*(a1 + 41) == 1)
    {
      v13 = [v23 userIntentButtonHint];
      [v13 setAlpha:1.0];

      [v23 _frameForUserIntentButtonPresented:1];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v23 userIntentButtonHint];
      [v22 setFrame:{v15, v17, v19, v21}];

      WeakRetained = v23;
    }
  }
}

void __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (a2)
    {
      [WeakRetained _cleanupHints];
    }

    else
    {
      [WeakRetained performSelector:sel__dismissHintsWithCompletion_ withObject:0 afterDelay:*(a1 + 40)];
    }

    WeakRetained = v5;
  }
}

- (void)dismissHints
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIHintsLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TVRUIHintsViewController dismissHints]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(TVRUIHintsViewController *)self _dismissHintsWithCompletion:0];
}

- (void)remoteWillBeDismissed
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIHintsLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TVRUIHintsViewController remoteWillBeDismissed]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(TVRUIHintsViewController *)self dismissPresentedContentAnimated:0 completion:0];
  siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];

  if (siriTipManager)
  {
    v6 = _TVRUITipsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [TVRUIHintsViewController remoteWillBeDismissed];
    }

    siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
    [siriTipManager2 invalidate:0 didPerformAction:0 completion:0];
  }

  [(TVRUIHintsViewController *)self setLastAnimatedTimeInterval:0.0];
}

- (void)replayHints
{
  supportsSiri = [(TVRUIHintsViewController *)self supportsSiri];
  supportsVolume = [(TVRUIHintsViewController *)self supportsVolume];

  [(TVRUIHintsViewController *)self requestHintsForSiri:supportsSiri volume:supportsVolume];
}

- (void)_updateUserIntentButtonHintFrameForPresentation:(unint64_t)presentation
{
  userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];

  if (userIntentButtonHint)
  {
    userIntentButtonHint2 = [(TVRUIHintsViewController *)self userIntentButtonHint];
    [userIntentButtonHint2 setPresentation:presentation];
  }

  else
  {

    [(TVRUIHintsViewController *)self _setupUserIntentButtonHintWithPresentation:presentation];
  }
}

- (void)_setupUserIntentButtonHintWithPresentation:(unint64_t)presentation
{
  userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];

  if (!userIntentButtonHint)
  {
    v7 = _TVRUIHintsLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26[0]) = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Setting up UserIntent button hint", v26, 2u);
    }

    hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo userIntentButtonRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v17 = CGRectEqualToRect(v27, *MEMORY[0x277CBF3A0]);
    if (v17)
    {
      view = _TVRUIHintsLog(v17);
      if (os_log_type_enabled(view, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26[0]) = 0;
        _os_log_impl(&dword_26CFEB000, view, OS_LOG_TYPE_DEFAULT, "userIntentButtonRect is CGRectZero", v26, 2u);
      }
    }

    else
    {
      v19 = [TVRUIHintsUserIntentButtonView alloc];
      styleProvider = [(TVRUIHintsViewController *)self styleProvider];
      hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
      v22 = -[TVRUIHintsUserIntentButtonView initWithPresentation:styleProvider:buttonEdge:](v19, "initWithPresentation:styleProvider:buttonEdge:", presentation, styleProvider, [hardwareInfo2 userIntentButtonEdge]);
      [(TVRUIHintsViewController *)self setUserIntentButtonHint:v22];

      [(TVRUIHintsViewController *)self currentInterfaceOrientation];
      objc_msgSend__gylphTransformForOrientation_(self);
      userIntentButtonHint2 = [(TVRUIHintsViewController *)self userIntentButtonHint];
      glyphView = [userIntentButtonHint2 glyphView];
      v26[0] = v26[3];
      v26[1] = v26[4];
      v26[2] = v26[5];
      [glyphView setTransform:v26];

      view = [(TVRUIHintsViewController *)self view];
      userIntentButtonHint3 = [(TVRUIHintsViewController *)self userIntentButtonHint];
      [view addSubview:userIntentButtonHint3];
    }
  }
}

- (void)_updateVolumeButtonsHintFrameWithPresentation:(unint64_t)presentation volumeImage:(id)image
{
  v26 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];

  if (volumeButtonsHint)
  {
    volumeButtonsHint2 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    [volumeButtonsHint2 updateGlyphImage:imageCopy];

    volumeButtonsHint3 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    [volumeButtonsHint3 setPresentation:presentation];
  }

  else
  {
    [(TVRUIHintsViewController *)self _setupVolumeButtonsHintWithPresentation:presentation volumeImage:imageCopy];
  }

  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  volumeButtonsEdge = [hardwareInfo volumeButtonsEdge];

  if (volumeButtonsEdge == 1)
  {
    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo2 volumeUpButtonRect];
    MinY = CGRectGetMinY(v29);
    v15 = 0.0;
  }

  else if (volumeButtonsEdge == 2)
  {
    view = [(TVRUIHintsViewController *)self view];
    [view bounds];
    MinY = CGRectGetWidth(v27);

    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo2 volumeUpButtonRect];
    v15 = CGRectGetMinY(v28);
  }

  else
  {
    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo2 volumeUpButtonRect];
    v15 = CGRectGetMinY(v30);
    MinY = 0.0;
  }

  v17 = _TVRUIHintsLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 67109120;
    v25[1] = volumeButtonsEdge;
    _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Volume button hints presenting edge: %u", v25, 8u);
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider volumeHintContainerWidth];
  v20 = v19;

  hardwareInfo3 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo3 totalHeight];
  v23 = v22;
  volumeButtonsHint4 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint4 setFrame:{MinY, v15, v20, v23}];
}

- (void)_setupVolumeButtonsHintWithPresentation:(unint64_t)presentation volumeImage:(id)image
{
  v27 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v7 = _TVRUIHintsLog(imageCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[TVRUIHintsViewController _setupVolumeButtonsHintWithPresentation:volumeImage:]";
    *&buf[12] = 2048;
    *&buf[14] = presentation;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s, presentation=%ld", buf, 0x16u);
  }

  volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];

  if (!volumeButtonsHint)
  {
    v10 = _TVRUIHintsLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Setting up volume buttons hint", buf, 2u);
    }

    hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo volumeUpButtonRect];
    Height = CGRectGetHeight(v28);

    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    volumeButtonsEdge = [hardwareInfo2 volumeButtonsEdge];

    v15 = [TVRUIHintsVolumeButtonsView alloc];
    styleProvider = [(TVRUIHintsViewController *)self styleProvider];
    v17 = [(TVRUIHintsVolumeButtonsView *)v15 initWithPresentation:presentation image:imageCopy styleProvider:styleProvider buttonEdge:volumeButtonsEdge buttonHeight:Height];
    [(TVRUIHintsViewController *)self setVolumeButtonsHint:v17];

    [(TVRUIHintsViewController *)self currentInterfaceOrientation];
    objc_msgSend__gylphTransformForOrientation_(self);
    volumeButtonsHint2 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    glyphView = [volumeButtonsHint2 glyphView];
    *buf = v22;
    *&buf[16] = v23;
    v26 = v24;
    [glyphView setTransform:buf];

    view = [(TVRUIHintsViewController *)self view];
    volumeButtonsHint3 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    [view addSubview:volumeButtonsHint3];
  }
}

- (void)_volumeUpButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIHintsLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRUIHintsViewController _volumeUpButtonPressed:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRUIHintsViewController *)self _cleanupHints];
  [(TVRUIHintsViewController *)self _presentVolumeButtonPressWithPresentation:1];
}

- (void)_volumeDownButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIHintsLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRUIHintsViewController _volumeDownButtonPressed:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRUIHintsViewController *)self _cleanupHints];
  [(TVRUIHintsViewController *)self _presentVolumeButtonPressWithPresentation:2];
}

- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  volumeImage = [styleProvider volumeImage];
  [(TVRUIHintsViewController *)self _presentVolumeButtonPressWithPresentation:presentation volumeImage:volumeImage];
}

- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation volumeImage:(id)image
{
  v76 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v7 = _TVRUIHintsLog(imageCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v73 = "[TVRUIHintsViewController _presentVolumeButtonPressWithPresentation:volumeImage:]";
    v74 = 2048;
    presentationCopy = presentation;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s, presentation=%ld", buf, 0x16u);
  }

  [(TVRUIHintsViewController *)self _cleanupHints];
  _shouldAllowHintsToPresent = [(TVRUIHintsViewController *)self _shouldAllowHintsToPresent];
  if ((_shouldAllowHintsToPresent & 1) == 0)
  {
    v14 = _TVRUIHintsLog(_shouldAllowHintsToPresent);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Not showing volume button activated hint because _shouldAllowHintsToPresent returned NO", buf, 2u);
    }

    goto LABEL_24;
  }

  view = [(TVRUIHintsViewController *)self view];
  window = [view window];
  if ([window interfaceOrientation] != 3)
  {

    goto LABEL_13;
  }

  v11 = +[TVRUIDeviceInfo currentDeviceInfo];
  isPad = [v11 isPad];

  presentationCopy3 = presentation;
  if (isPad)
  {
    if (presentation == 1)
    {
      presentationCopy3 = 2;
      goto LABEL_14;
    }

    if (presentation == 2)
    {
      presentationCopy3 = 1;
      goto LABEL_14;
    }

LABEL_13:
    presentationCopy3 = presentation;
  }

LABEL_14:
  [(TVRUIHintsViewController *)self _updateVolumeButtonsHintFrameWithPresentation:presentationCopy3 volumeImage:imageCopy];
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider activationAnimationDismissalDelay];
  v17 = v16;

  styleProvider2 = [(TVRUIHintsViewController *)self styleProvider];
  supportsSBHints = [styleProvider2 supportsSBHints];

  if (supportsSBHints)
  {
    if (presentation)
    {
      if (presentation == 2)
      {
        volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
        volumeDownButtonView = [volumeButtonsHint volumeDownButtonView];
        v45 = SBSUIRegisterHardwareButtonHintView();
        volumeHintVisibilityController = self->_volumeHintVisibilityController;
        self->_volumeHintVisibilityController = v45;
      }

      else
      {
        if (presentation != 1)
        {
LABEL_23:
          [(TVRUIHintsViewController *)self _frameForVolumeButtonsPresented:1];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;
          volumeButtonsHint2 = [(TVRUIHintsViewController *)self volumeButtonsHint];
          [volumeButtonsHint2 setFrame:{v49, v51, v53, v55}];

          volumeButtonsHint3 = [(TVRUIHintsViewController *)self volumeButtonsHint];
          [volumeButtonsHint3 setHidden:0];

          [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_volumeHintVisibilityController setContentVisibility:1 animationSettings:0];
          objc_initWeak(buf, self);
          v58 = dispatch_time(0, (*&v17 * 1000000000.0));
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke;
          block[3] = &unk_279D87F18;
          objc_copyWeak(&v71, buf);
          dispatch_after(v58, MEMORY[0x277D85CD0], block);
          objc_destroyWeak(&v71);
          objc_destroyWeak(buf);
          goto LABEL_24;
        }

        volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
        volumeDownButtonView = [volumeButtonsHint volumeUpButtonView];
        v22 = SBSUIRegisterHardwareButtonHintView();
        v23 = self->_volumeHintVisibilityController;
        self->_volumeHintVisibilityController = v22;
      }
    }

    else
    {
      volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
      v47 = SBSUIRegisterHardwareButtonHintView();
      volumeDownButtonView = self->_volumeHintVisibilityController;
      self->_volumeHintVisibilityController = v47;
    }

    goto LABEL_23;
  }

  styleProvider3 = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider3 activationAnimationDuration];
  v26 = v25;

  volumeButtonsHint4 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint4 setHidden:0];

  volumeButtonsHint5 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint5 setAlpha:1.0];

  [(TVRUIHintsViewController *)self _frameForVolumeButtonsPresented:0];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  volumeButtonsHint6 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint6 setFrame:{v30, v32, v34, v36}];

  objc_initWeak(buf, self);
  v38 = objc_alloc(MEMORY[0x277D75D40]);
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_2;
  v68[3] = &unk_279D87F18;
  objc_copyWeak(&v69, buf);
  v39 = [v38 initWithDuration:2 curve:v68 animations:v26];
  [(TVRUIHintsViewController *)self setPresentationAnimator:v39];

  v40 = objc_alloc(MEMORY[0x277D75D40]);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_3;
  v66[3] = &unk_279D87F18;
  objc_copyWeak(&v67, buf);
  v41 = [v40 initWithDuration:2 curve:v66 animations:v26];
  [(TVRUIHintsViewController *)self setDismissalAnimator:v41];

  dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_4;
  v64[3] = &unk_279D88980;
  objc_copyWeak(&v65, buf);
  [dismissalAnimator addCompletion:v64];

  presentationAnimator = [(TVRUIHintsViewController *)self presentationAnimator];
  v59 = MEMORY[0x277D85DD0];
  v60 = 3221225472;
  v61 = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_5;
  v62 = &unk_279D88930;
  objc_copyWeak(v63, buf);
  v63[1] = v17;
  [presentationAnimator addCompletion:&v59];

  v44 = [(TVRUIHintsViewController *)self presentationAnimator:v59];
  [v44 startAnimation];

  objc_destroyWeak(v63);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(buf);
LABEL_24:
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupHints];
    WeakRetained = v2;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    [WeakRetained _frameForVolumeButtonsPresented:1];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [v11 volumeButtonsHint];
    [v10 setFrame:{v3, v5, v7, v9}];

    WeakRetained = v11;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained volumeButtonsHint];
    [v2 setAlpha:0.0];

    WeakRetained = v3;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupHints];
    WeakRetained = v2;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dismissalAnimator];
    [v3 startAnimationAfterDelay:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_siriActivated:(id)activated
{
  v19 = *MEMORY[0x277D85DE8];
  activatedCopy = activated;
  v5 = _TVRUIHintsLog(activatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[TVRUIHintsViewController _siriActivated:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  _shouldAllowHintsToPresent = [(TVRUIHintsViewController *)self _shouldAllowHintsToPresent];
  if ((_shouldAllowHintsToPresent & 1) == 0)
  {
    v14 = _TVRUIHintsLog(_shouldAllowHintsToPresent);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Not showing user intent activated hint because _shouldAllowHintsToPresent returned NO", buf, 2u);
    }

    goto LABEL_9;
  }

  _siriHintEnabled = [(TVRUIHintsViewController *)self _siriHintEnabled];
  if ((_siriHintEnabled & 1) == 0)
  {
    v14 = _TVRUIHintsLog(_siriHintEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Not showing user intent activated hint because _siriHintEnabled returned NO", buf, 2u);
    }

LABEL_9:

    goto LABEL_14;
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  supportsSBHints = [styleProvider supportsSBHints];

  if (supportsSBHints)
  {
    [(TVRUIHintsViewController *)self _updateUserIntentButtonHintFrameForPresentation:1];
    userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];
    [userIntentButtonHint setHidden:0];

    userIntentButtonHint2 = [(TVRUIHintsViewController *)self userIntentButtonHint];
    v12 = SBSUIRegisterHardwareButtonHintView();
    siriHintVisibilityController = self->_siriHintVisibilityController;
    self->_siriHintVisibilityController = v12;

    [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_siriHintVisibilityController setContentVisibility:1 animationSettings:0];
  }

  else
  {
    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__TVRUIHintsViewController__siriActivated___block_invoke;
    v15[3] = &unk_279D87F18;
    objc_copyWeak(&v16, buf);
    [(TVRUIHintsViewController *)self _dismissHintsWithCompletion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

LABEL_14:
}

void __43__TVRUIHintsViewController__siriActivated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateUserIntentButtonHintFrameForPresentation:1];
    v4 = [v3 styleProvider];
    [v4 activationAnimationDuration];
    v6 = v5;

    v7 = [v3 userIntentButtonHint];
    [v7 setHidden:0];

    v8 = [v3 userIntentButtonHint];
    [v8 setAlpha:1.0];

    [v3 _frameForUserIntentButtonPresented:0];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v3 userIntentButtonHint];
    [v17 setFrame:{v10, v12, v14, v16}];

    v18 = objc_alloc(MEMORY[0x277D75D40]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__TVRUIHintsViewController__siriActivated___block_invoke_2;
    v21[3] = &unk_279D87F18;
    objc_copyWeak(&v22, (a1 + 32));
    v19 = [v18 initWithDuration:2 curve:v21 animations:v6];
    [v3 setPresentationAnimator:v19];

    v20 = [v3 presentationAnimator];
    [v20 startAnimation];

    objc_destroyWeak(&v22);
  }
}

void __43__TVRUIHintsViewController__siriActivated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _frameForUserIntentButtonPresented:1];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [WeakRetained userIntentButtonHint];
  [v9 setFrame:{v2, v4, v6, v8}];
}

- (void)_siriDeactivated:(id)deactivated
{
  v24 = *MEMORY[0x277D85DE8];
  deactivatedCopy = deactivated;
  v5 = _TVRUIHintsLog(deactivatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[TVRUIHintsViewController _siriDeactivated:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  supportsSBHints = [styleProvider supportsSBHints];

  if (supportsSBHints)
  {
    [(TVRUIHintsViewController *)self _cleanupHints];
  }

  else
  {
    styleProvider2 = [(TVRUIHintsViewController *)self styleProvider];
    [styleProvider2 activationAnimationDuration];
    v10 = v9;

    objc_initWeak(buf, self);
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__TVRUIHintsViewController__siriDeactivated___block_invoke;
    v20[3] = &unk_279D87F18;
    objc_copyWeak(&v21, buf);
    v12 = [v11 initWithDuration:2 curve:v20 animations:v10];
    [(TVRUIHintsViewController *)self setDismissalAnimator:v12];

    dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __45__TVRUIHintsViewController__siriDeactivated___block_invoke_2;
    v18 = &unk_279D88980;
    objc_copyWeak(&v19, buf);
    [dismissalAnimator addCompletion:&v15];

    v14 = [(TVRUIHintsViewController *)self dismissalAnimator:v15];
    [v14 startAnimation];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __45__TVRUIHintsViewController__siriDeactivated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained userIntentButtonHint];
    [v2 setAlpha:0.0];

    WeakRetained = v3;
  }
}

void __45__TVRUIHintsViewController__siriDeactivated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupHints];
    WeakRetained = v2;
  }
}

- (void)_largeTextEnabledStatusChanged:(id)changed
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  siriImage = [styleProvider siriImage];
  siriGlyphView = [(TVRUIHintsViewController *)self siriGlyphView];
  imageView = [siriGlyphView imageView];
  [imageView setImage:siriImage];

  styleProvider2 = [(TVRUIHintsViewController *)self styleProvider];
  volumeImage = [styleProvider2 volumeImage];
  volumeGlyphView = [(TVRUIHintsViewController *)self volumeGlyphView];
  imageView2 = [volumeGlyphView imageView];
  [imageView2 setImage:volumeImage];
}

- (void)_applyTransformForOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = +[TVRUIDeviceInfo currentDeviceInfo];
  isPad = [v5 isPad];

  if (!isPad)
  {
    return;
  }

  view = [(TVRUIHintsViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v20);
  view2 = [(TVRUIHintsViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v21);

  if (orientation == 2)
  {
    v12 = 3.14159265;
LABEL_10:
    v13 = Height;
    goto LABEL_11;
  }

  if (orientation == 3)
  {
    v12 = -1.57079633;
    goto LABEL_7;
  }

  if (orientation != 4)
  {
    v12 = 0.0;
    goto LABEL_10;
  }

  v12 = 1.57079633;
LABEL_7:
  v13 = Width;
  Width = Height;
LABEL_11:
  v14 = _TVRUIHintsLog(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 134218240;
    *(&buf.a + 4) = orientation;
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = v12;
    _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Applying transform if needed for orientation=%ld, angle=%0.2frad", &buf, 0x16u);
  }

  CGAffineTransformMakeRotation(&v17, v12);
  view3 = [(TVRUIHintsViewController *)self view];
  buf = v17;
  [view3 setTransform:&buf];

  view4 = [(TVRUIHintsViewController *)self view];
  [view4 setBounds:{0.0, 0.0, Width, v13}];
}

- (CGAffineTransform)_gylphTransformForOrientation:(SEL)orientation
{
  v4 = 0.0;
  if ((a4 - 2) <= 2)
  {
    v4 = dbl_26D0D2700[a4 - 2];
  }

  return CGAffineTransformMakeRotation(retstr, v4);
}

- (void)_dismissHintsWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[TVRUIFeatures persistHintsUIEnabled];
  v6 = v5;
  v7 = _TVRUIHintsLog(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315138;
      v22 = "[TVRUIHintsViewController _dismissHintsWithCompletion:]";
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s, persistHintsUIEnabled is on so hints will not be dismissed", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v22 = "[TVRUIHintsViewController _dismissHintsWithCompletion:]";
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__dismissHintsWithCompletion_ object:0];
    styleProvider = [(TVRUIHintsViewController *)self styleProvider];
    [styleProvider activationAnimationDuration];
    v11 = v10;

    objc_initWeak(buf, self);
    v12 = objc_alloc(MEMORY[0x277D75D40]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke;
    v19[3] = &unk_279D87F18;
    objc_copyWeak(&v20, buf);
    v13 = [v12 initWithDuration:2 curve:v19 animations:v11];
    [(TVRUIHintsViewController *)self setDismissalAnimator:v13];

    dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke_2;
    v16[3] = &unk_279D889A8;
    objc_copyWeak(&v18, buf);
    v17 = completionCopy;
    [dismissalAnimator addCompletion:v16];

    dismissalAnimator2 = [(TVRUIHintsViewController *)self dismissalAnimator];
    [dismissalAnimator2 startAnimation];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    v2 = [WeakRetained volumeButtonsHint];
    [v2 setAlpha:0.0];

    [v22 _frameForVolumeButtonsPresented:0];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v22 volumeButtonsHint];
    [v11 setFrame:{v4, v6, v8, v10}];

    v12 = [v22 userIntentButtonHint];
    [v12 setAlpha:0.0];

    [v22 _frameForUserIntentButtonPresented:0];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v22 userIntentButtonHint];
    [v21 setFrame:{v14, v16, v18, v20}];

    WeakRetained = v22;
  }
}

uint64_t __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained _cleanupHints];
    v4 = [v9 volumeButtonsHint];
    [v4 setHidden:1];

    v5 = [v9 userIntentButtonHint];
    [v5 setHidden:1];

    v6 = [v9 volumeButtonsHint];
    [v6 setAlpha:1.0];

    v7 = [v9 userIntentButtonHint];
    [v7 setAlpha:1.0];

    v3 = v9;
    WeakRetained = *(a1 + 32);
    if (WeakRetained)
    {
      WeakRetained = (*(WeakRetained + 2))(WeakRetained, v9);
      v3 = v9;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_cleanupHints
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__dismissHintsWithCompletion_ object:0];
  presentationAnimator = [(TVRUIHintsViewController *)self presentationAnimator];
  [presentationAnimator stopAnimation:1];

  dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
  [dismissalAnimator stopAnimation:1];

  siriHintVisibilityController = [(TVRUIHintsViewController *)self siriHintVisibilityController];
  [siriHintVisibilityController invalidate];

  [(TVRUIHintsViewController *)self setSiriHintVisibilityController:0];
  volumeHintVisibilityController = [(TVRUIHintsViewController *)self volumeHintVisibilityController];
  [volumeHintVisibilityController invalidate];

  [(TVRUIHintsViewController *)self setVolumeHintVisibilityController:0];
  volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint setHidden:1];

  userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];
  [userIntentButtonHint setHidden:1];
}

- (int64_t)currentInterfaceOrientation
{
  view = [(TVRUIHintsViewController *)self view];
  window = [view window];
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  return _windowInterfaceOrientation;
}

- (CGRect)_frameForUserIntentButtonPresented:(BOOL)presented
{
  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo userIntentButtonRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v38.origin.x = v7;
  v38.origin.y = v9;
  v38.size.width = v11;
  v38.size.height = v13;
  v42.origin.x = *MEMORY[0x277CBF3A0];
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  if (CGRectEqualToRect(v38, v42))
  {
    goto LABEL_21;
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider siriHintContainerWidth];
  v34 = v19;

  v35 = *MEMORY[0x277CBF3A8];
  v36 = *(MEMORY[0x277CBF3A8] + 8);
  hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
  userIntentButtonEdge = [hardwareInfo2 userIntentButtonEdge];

  if (userIntentButtonEdge > 1)
  {
    if (userIntentButtonEdge == 3)
    {
      v26 = +[TVRUIDeviceInfo currentDeviceInfo];
      hasHomeButton = [v26 hasHomeButton];

      v29 = _TVRUIHintsLog(v28);
      v25 = v29;
      if (hasHomeButton)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v25, OS_LOG_TYPE_DEFAULT, "Device has a home button. Skip showing the Siri hint", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [TVRUIHintsViewController _frameForUserIntentButtonPresented:];
      }

      goto LABEL_18;
    }

    if (userIntentButtonEdge == 2)
    {
      width = v34;
      x = v7 - v34;
      v23 = 0.0;
      v24 = v34;
      height = v13;
      y = v9;
      goto LABEL_19;
    }
  }

  else
  {
    if (!userIntentButtonEdge)
    {
      v25 = _TVRUIHintsLog(v22);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [TVRUIHintsViewController _frameForUserIntentButtonPresented:];
      }

      goto LABEL_18;
    }

    if (userIntentButtonEdge == 1)
    {
      height = v34;
      v23 = -v34;
      v24 = 0.0;
      width = v11;
      y = -v34;
      x = v7;
      goto LABEL_19;
    }
  }

  v25 = _TVRUIHintsLog(v22);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [TVRUIHintsViewController _frameForUserIntentButtonPresented:];
  }

LABEL_18:

  v24 = v35;
  v23 = v36;
LABEL_19:
  if (!presented)
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v40 = CGRectOffset(v39, v24, v23);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
  }

LABEL_21:
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)_frameForVolumeButtonsPresented:(BOOL)presented
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider volumeHintContainerWidth];
  v7 = v6;

  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo volumeUpButtonRect];
  MinY = CGRectGetMinY(v27);

  hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo2 totalHeight];
  height = v11;

  hardwareInfo3 = [(TVRUIHintsViewController *)self hardwareInfo];
  volumeButtonsEdge = [hardwareInfo3 volumeButtonsEdge];

  if (volumeButtonsEdge != 1)
  {
    if (volumeButtonsEdge == 2)
    {
      view = [(TVRUIHintsViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v28);

      v17 = 0.0;
      v18 = v7;
      if (presented)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = -v7;
      v17 = 0.0;
      Width = 0.0;
      if (presented)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  hardwareInfo4 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo4 volumeUpButtonRect];
  Width = CGRectGetMinX(v29);

  hardwareInfo5 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo5 totalHeight];
  v22 = v21;

  v17 = -v7;
  v18 = 0.0;
  height = 0.0;
  v7 = v22;
  MinY = 0.0;
  if (!presented)
  {
LABEL_6:
    v30.origin.x = Width;
    v30.origin.y = MinY;
    v30.size.width = v7;
    v30.size.height = height;
    v31 = CGRectOffset(v30, v18, v17);
    Width = v31.origin.x;
    MinY = v31.origin.y;
    v7 = v31.size.width;
    height = v31.size.height;
  }

LABEL_7:
  v23 = Width;
  v24 = MinY;
  v25 = v7;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_setupDebugUIIfEnabled
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = +[TVRUIFeatures isHintsDebugUIEnabled];
  if (v3)
  {
    v4 = _TVRUIHintsLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Hints Debug UI is enabled", buf, 2u);
    }

    v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.5 blue:0.0 alpha:0.25];
    v32[0] = v5;
    v6 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.25];
    v32[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

    view = [(TVRUIHintsViewController *)self view];
    [view bounds];
    v9 = (CGRectGetHeight(v33) / 10.0);

    v10 = [v7 count];
    if (v9 >= 1)
    {
      v11 = v10;
      v12 = 0;
      selfCopy = self;
      v30 = v10;
      do
      {
        view2 = [(TVRUIHintsViewController *)self view];
        [view2 bounds];
        Width = CGRectGetWidth(v34);

        v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, v12 * 10.0, Width, 10.0}];
        v16 = [v7 objectAtIndexedSubscript:v12 % v11];
        [v15 setBackgroundColor:v16];

        view3 = [(TVRUIHintsViewController *)self view];
        [view3 addSubview:v15];

        if ((v12 & 1) == 0)
        {
          [v15 bounds];
          v18 = CGRectGetWidth(v35) + -20.0;
          [v15 bounds];
          Height = CGRectGetHeight(v36);
          v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{10.0, 0.0, v18, Height}];
          [v20 setAutoresizingMask:18];
          [MEMORY[0x277CCACA8] stringWithFormat:@"%0.f", v12 * 10.0];
          v22 = v21 = v9;
          [v20 setText:v22];

          v23 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
          [v20 setFont:v23];

          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [v20 setTextColor:whiteColor];

          [v15 addSubview:v20];
          v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{10.0, 0.0, v18, Height}];
          [v25 setAutoresizingMask:18];
          [v25 setTextAlignment:2];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.f", v12 * 10.0];
          [v25 setText:v26];

          v27 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
          [v25 setFont:v27];

          whiteColor2 = [MEMORY[0x277D75348] whiteColor];
          [v25 setTextColor:whiteColor2];

          [v15 addSubview:v25];
          v9 = v21;
          self = selfCopy;
          v11 = v30;
        }

        ++v12;
      }

      while (v9 != v12);
    }
  }
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _TVRUITipsLog(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[TVRUIHintsViewController dismissPresentedContentAnimated:completion:]";
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];

  v9 = _TVRUITipsLog(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (siriTipManager)
  {
    if (v10)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating Siri tip", &v12, 2u);
    }

    siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
    [siriTipManager2 invalidate:1 didPerformAction:0 completion:completionCopy];
  }

  else
  {
    if (v10)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "No siri tip manager, calling completion block", &v12, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (BOOL)hasPresentedContent
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRUITipsLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];
    v8 = 136315394;
    v9 = "[TVRUIHintsViewController hasPresentedContent]";
    v10 = 1024;
    isPresentingTip = [siriTipManager isPresentingTip];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %d", &v8, 0x12u);
  }

  siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
  isPresentingTip2 = [siriTipManager2 isPresentingTip];

  return isPresentingTip2;
}

- (BOOL)_shouldAllowHintsToPresent
{
  _volumeHintEnabled = [(TVRUIHintsViewController *)self _volumeHintEnabled];
  if (_volumeHintEnabled)
  {
    presentationAnimator = [(TVRUIHintsViewController *)self presentationAnimator];
    isRunning = [presentationAnimator isRunning];

    if (isRunning)
    {
      v7 = _TVRUIHintsLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "Animation is already running, will not show hints";
        v9 = &v13;
LABEL_7:
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      isPresentingTip = [(TVRUIHintsViewController *)self isPresentingTip];
      if (!isPresentingTip)
      {
        return 1;
      }

      v7 = _TVRUIHintsLog(isPresentingTip);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "Tip is currently being presented, will not show hints";
        v9 = &v12;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = _TVRUIHintsLog(_volumeHintEnabled);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Volume hints are disabled, will not show hints";
      v9 = buf;
      goto LABEL_7;
    }
  }

  return 0;
}

- (BOOL)_siriHintEnabled
{
  if ([(TVRUIHintsViewController *)self allowSiriHint])
  {
    styleProvider = [(TVRUIHintsViewController *)self styleProvider];
    shouldShowSiriHint = [styleProvider shouldShowSiriHint];
  }

  else
  {
    shouldShowSiriHint = 0;
  }

  v5 = +[TVRUIFeatures persistHintsUIEnabled];
  if (v5)
  {
    v6 = _TVRUIHintsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "persistHintsUIEnabled is enabled so hints will always show", v8, 2u);
    }

    return 1;
  }

  return shouldShowSiriHint;
}

- (BOOL)_volumeHintEnabled
{
  v3 = +[TVRUIFeatures persistHintsUIEnabled];
  if (v3)
  {
    v4 = _TVRUIHintsLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "persistHintsUIEnabled is enabled so hints will always show", v9, 2u);
    }

    LOBYTE(allowVolumeHint) = 1;
  }

  else
  {
    allowVolumeHint = [(TVRUIHintsViewController *)self allowVolumeHint];
    if (allowVolumeHint)
    {
      styleProvider = [(TVRUIHintsViewController *)self styleProvider];
      shouldShowVolumeHint = [styleProvider shouldShowVolumeHint];

      LOBYTE(allowVolumeHint) = shouldShowVolumeHint;
    }
  }

  return allowVolumeHint;
}

- (void)_setupTipsControllerIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(TVRUIHintsViewController *)self allowTips])
  {
    if ([(TVRUIHintsViewController *)self allowSiriHint])
    {
      siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];

      if (!siriTipManager)
      {
        v5 = _TVRUITipsLog(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v10 = 138412290;
          v11 = bundleIdentifier;
          _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Creating Siri Tip Manager for: %@", &v10, 0xCu);
        }

        v8 = [[TVRUITipManager alloc] initWithTipSourceViewProvider:self tipType:1];
        [(TVRUIHintsViewController *)self setSiriTipManager:v8];

        siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
        [siriTipManager2 activate];
      }
    }
  }
}

- (CGRect)tipSourceRect
{
  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo userIntentButtonRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)_permittedArrowDirectionsForDevice:(id)device
{
  if ([device isPad])
  {
    return 15;
  }

  else
  {
    return 10;
  }
}

- (unint64_t)permittedArrowDirections
{
  v3 = +[TVRUIDeviceInfo currentDeviceInfo];
  v4 = [(TVRUIHintsViewController *)self _permittedArrowDirectionsForDevice:v3];

  return v4;
}

@end