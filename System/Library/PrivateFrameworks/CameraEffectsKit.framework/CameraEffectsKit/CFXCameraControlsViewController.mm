@interface CFXCameraControlsViewController
- (CFXCameraControlsViewController)init;
- (CFXCameraControlsViewController)initWithDelegate:(id)delegate captureMode:(int64_t)mode;
- (CFXCameraControlsViewControllerDelegate)delegate;
- (NSLayoutConstraint)appStripBackgroundContainerViewBottomConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewHeightConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewLeadingConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewTopConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewTrailingConstraint;
- (NSLayoutConstraint)backgroundViewHeightConstraint;
- (NSLayoutConstraint)bottomBlackViewHeightConstraint;
- (NSLayoutConstraint)bottomBlackViewTopConstraint;
- (NSLayoutConstraint)bottomBlackViewTrailingConstraint;
- (NSLayoutConstraint)bottomBlackViewWidthConstraint;
- (UIColor)backgroundColor;
- (UIView)appStripBackgroundContainerView;
- (UIView)backgroundView;
- (UIView)bottomBlackView;
- (UIView)effectButtonContainerPad;
- (UIView)flipButtonContainerPad;
- (UIView)shutterButtonContainerPad;
- (double)CFX_smallPhoneDockHeightAdjustment;
- (void)configureUIForOrientation;
- (void)effectsButtonTapped:(id)tapped;
- (void)setBackgroundColor:(id)color;
- (void)setShutterButtonAlpha:(double)alpha;
- (void)setShutterButtonEnabled:(BOOL)enabled;
- (void)shutterButtonTapped:(id)tapped;
- (void)switchCameraButtonTapped:(id)tapped;
- (void)updateUIForDockMagnify:(BOOL)magnify dockHeightDelta:(double)delta;
- (void)updateUIForVideoRecording:(BOOL)recording;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CFXCameraControlsViewController

- (CFXCameraControlsViewController)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = MEMORY[0x277D75AC8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = [v5 storyboardWithName:v4 bundle:jfxBundle];

  v8 = [v7 instantiateViewControllerWithIdentifier:v4];

  return v8;
}

- (CFXCameraControlsViewController)initWithDelegate:(id)delegate captureMode:(int64_t)mode
{
  delegateCopy = delegate;
  v7 = [(CFXCameraControlsViewController *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_captureMode = mode;
  }

  return v8;
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v55 viewDidLoad];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  LODWORD(currentDevice) = CFXCaptureCapabilitiesIsCTMSupported(v7);
  v8 = objc_alloc(MEMORY[0x277CF7E88]);
  if (currentDevice)
  {
    initForOverContent = [v8 initForOverContent];
    [(CFXCameraControlsViewController *)self setEffectButton:initForOverContent];
  }

  else
  {
    v10 = [v8 initWithLayoutStyle:cam_initialLayoutStyle];
    [(CFXCameraControlsViewController *)self setEffectButton:v10];

    effectButton = [(CFXCameraControlsViewController *)self effectButton];
    [effectButton setTappableEdgeInsets:{20.0, 20.0, 20.0, 20.0}];

    initForOverContent = [(CFXCameraControlsViewController *)self effectButton];
    [initForOverContent setFrame:{0.0, 0.0, 60.0, 60.0}];
  }

  effectButton2 = [(CFXCameraControlsViewController *)self effectButton];
  [effectButton2 setActive:1];

  effectButton3 = [(CFXCameraControlsViewController *)self effectButton];
  [effectButton3 addTarget:self action:sel_effectsButtonTapped_ forControlEvents:64];

  effectButton4 = [(CFXCameraControlsViewController *)self effectButton];
  [effectButton4 setExclusiveTouch:1];

  shutterButton = [MEMORY[0x277CF7EF0] shutterButton];
  [(CFXCameraControlsViewController *)self setShutterButton:shutterButton];

  shutterButton2 = [(CFXCameraControlsViewController *)self shutterButton];
  [shutterButton2 setFrame:{0.0, 0.0, 80.0, 80.0}];

  shutterButton3 = [(CFXCameraControlsViewController *)self shutterButton];
  [shutterButton3 addTarget:self action:sel_shutterButtonTapped_ forControlEvents:64];

  shutterButton4 = [(CFXCameraControlsViewController *)self shutterButton];
  [shutterButton4 setExclusiveTouch:1];

  if ((CFXCaptureCapabilitiesIsCTMSupported(v19) & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "userInterfaceIdiom"), v20, v21 == 1))
  {
    flipButtonOverContent = [MEMORY[0x277CF7EA8] flipButtonOverContent];
    [(CFXCameraControlsViewController *)self setFlipButton:flipButtonOverContent];
  }

  else
  {
    v23 = [MEMORY[0x277CF7EA8] flipButtonWithLayoutStyle:cam_initialLayoutStyle];
    [(CFXCameraControlsViewController *)self setFlipButton:v23];

    flipButtonOverContent = [(CFXCameraControlsViewController *)self flipButton];
    [flipButtonOverContent setFrame:{0.0, 0.0, 60.0, 60.0}];
  }

  flipButton = [(CFXCameraControlsViewController *)self flipButton];
  [flipButton addTarget:self action:sel_switchCameraButtonTapped_ forControlEvents:64];

  flipButton2 = [(CFXCameraControlsViewController *)self flipButton];
  v26 = 1;
  [flipButton2 setExclusiveTouch:1];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];
  if (userInterfaceIdiom)
  {
    v29 = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    if (v30 <= 811)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v26 = v31 < 812;
      v29 = 1;
    }

    else
    {
      v29 = 0;
      v26 = 0;
    }
  }

  bottomBlackView = [(CFXCameraControlsViewController *)self bottomBlackView];
  [bottomBlackView setHidden:v26];

  if (v29)
  {
  }

  if (!userInterfaceIdiom)
  {
  }

  v33 = objc_alloc_init(MEMORY[0x277CF7E68]);
  [(CFXCameraControlsViewController *)self setBottomBar:v33];

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice3 userInterfaceIdiom];

  if (userInterfaceIdiom2)
  {
    view = [(CFXCameraControlsViewController *)self view];
    bottomBar = [(CFXCameraControlsViewController *)self bottomBar];
    [view addSubview:bottomBar];

    delegate = [(CFXCameraControlsViewController *)self delegate];
    v39 = [delegate doneButtonForCameraControlsViewController:self];
    bottomBar2 = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar2 setDoneButton:v39];

    delegate2 = [(CFXCameraControlsViewController *)self delegate];
    v42 = [delegate2 flashButtonForCameraControlsViewController:self];
    bottomBar3 = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar3 setFlashButton:v42];

    bottomBar4 = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar4 setBackgroundStyle:1];
  }

  else
  {
    v45 = isStreamingMode([(CFXCameraControlsViewController *)self captureMode]);
    if (v45)
    {
      bottomBar4 = [(CFXCameraControlsViewController *)self backgroundView];
      bottomBar5 = [(CFXCameraControlsViewController *)self bottomBar];
      [bottomBar4 addSubview:bottomBar5];
    }

    else
    {
      if (CFXCaptureCapabilitiesIsCTMSupported(v45))
      {
        goto LABEL_25;
      }

      bottomBar4 = [(CFXCameraControlsViewController *)self delegate];
      bottomBar5 = [(CFXCameraControlsViewController *)self bottomBar];
      [bottomBar4 insertCamBottomBar:bottomBar5];
    }
  }

LABEL_25:
  bottomBar6 = [(CFXCameraControlsViewController *)self bottomBar];
  [bottomBar6 setLayoutStyle:cam_initialLayoutStyle];

  if ((CFXCaptureCapabilitiesIsCTMSupported(v48) & 1) == 0)
  {
    effectButton5 = [(CFXCameraControlsViewController *)self effectButton];
    bottomBar7 = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar7 setCreativeCameraButton:effectButton5];

    shutterButton5 = [(CFXCameraControlsViewController *)self shutterButton];
    bottomBar8 = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar8 setShutterButton:shutterButton5];

    flipButton3 = [(CFXCameraControlsViewController *)self flipButton];
    bottomBar9 = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar9 setFlipButton:flipButton3];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v10 viewWillAppear:appear];
  v4 = [(CFXCameraControlsViewController *)self captureMode]== 2;
  shutterButton = [(CFXCameraControlsViewController *)self shutterButton];
  [shutterButton setMode:v4 animated:0];

  v6 = [CFXFeedbackController alloc];
  shutterButton2 = [(CFXCameraControlsViewController *)self shutterButton];
  v8 = [(CFXFeedbackController *)v6 initWithShutterButton:shutterButton2];
  [(CFXCameraControlsViewController *)self setFeedbackController:v8];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_JFX_orientationMonitorInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v17 viewDidAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    appStripBackgroundView = [(CFXCameraControlsViewController *)self appStripBackgroundView];

    if (!appStripBackgroundView)
    {
      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(CFXCameraControlsViewController *)self setAppStripBackgroundView:v7];

      captureMode = [(CFXCameraControlsViewController *)self captureMode];
      if (captureMode)
      {
        appStripBackgroundView = [(CFXCameraControlsViewController *)self bottomBar];
        backgroundView = [appStripBackgroundView backgroundView];
        [backgroundView backgroundColor];
      }

      else
      {
        [MEMORY[0x277D75348] blackColor];
      }
      v9 = ;
      appStripBackgroundView2 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
      [appStripBackgroundView2 setBackgroundColor:v9];

      if (captureMode)
      {

        v9 = appStripBackgroundView;
      }

      if (CFXCaptureCapabilitiesIsCTMSupported(v11))
      {
        delegate = [(CFXCameraControlsViewController *)self delegate];
        if ([delegate needsBlackBackgroundForCTMControls])
        {
          [MEMORY[0x277D75348] blackColor];
        }

        else
        {
          [MEMORY[0x277D75348] clearColor];
        }
        v13 = ;
        appStripBackgroundView3 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
        [appStripBackgroundView3 setBackgroundColor:v13];
      }

      appStripBackgroundContainerView = [(CFXCameraControlsViewController *)self appStripBackgroundContainerView];
      appStripBackgroundView4 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
      [appStripBackgroundContainerView addSubview:appStripBackgroundView4];

      [(CFXCameraControlsViewController *)self configureUIForOrientation];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v5 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v3 viewWillLayoutSubviews];
  [(CFXCameraControlsViewController *)self configureUIForOrientation];
}

- (void)configureUIForOrientation
{
  if ([(CFXCameraControlsViewController *)self captureMode]!= 1)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      v5 = +[JFXOrientationMonitor keyWindow];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = +[JFXOrientationMonitor interfaceOrientation];
      v15 = [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{v7, v9, v11, v13}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      if (CFXCaptureCapabilitiesIsCTMSupported(v15))
      {
        delegate = [(CFXCameraControlsViewController *)self delegate];
        [delegate bottomBarCTMControlsFrameForWindowOrientation:v14 bounds:{v7, v9, v11, v13}];
        v17 = v25;
        v19 = v26;
        v21 = v27;
        v23 = v28;
      }

      [(CFXCameraControlsViewController *)self CFX_smallPhoneDockHeightAdjustment];
      v30 = v29;
      bottomBar = [(CFXCameraControlsViewController *)self bottomBar];
      [bottomBar frame];
      Width = CGRectGetWidth(v68);

      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      v34 = 0.0;
      if (![currentDevice2 userInterfaceIdiom])
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v34 = v30;
        if (v36 != 568)
        {
          mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen2 bounds];
          if (v38 == 568)
          {
            v34 = v30;
          }

          else
          {
            v34 = 0.0;
          }
        }
      }

      v39 = v14 - 3;

      v69.origin.x = v17;
      v69.origin.y = v19;
      v69.size.width = v21;
      v69.size.height = v23;
      Height = CGRectGetHeight(v69);
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if (![currentDevice3 userInterfaceIdiom])
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 bounds];
        if (v43 == 568)
        {
          Height = Height - v30;
        }

        else
        {
          mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen4 bounds];
          if (v45 == 568)
          {
            Height = Height - v30;
          }
        }
      }

      v46 = 0.0;
      if ([(CFXCameraControlsViewController *)self dockIsMagnified])
      {
        v47 = -31.0;
      }

      else
      {
        v47 = 0.0;
      }

      appStripBackgroundContainerViewTopConstraint = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTopConstraint];
      v50 = appStripBackgroundContainerViewTopConstraint;
      if (v39 >= 2)
      {
        *&v49 = 250.0;
      }

      else
      {
        *&v49 = 750.0;
      }

      if (v39 >= 2)
      {
        v51 = 750.0;
      }

      else
      {
        v51 = 250.0;
      }

      [appStripBackgroundContainerViewTopConstraint setPriority:v49];

      appStripBackgroundContainerViewHeightConstraint = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewHeightConstraint];
      *&v53 = v51;
      [appStripBackgroundContainerViewHeightConstraint setPriority:v53];

      if (v14 == 1)
      {
        v46 = -Height;
      }

      appStripBackgroundContainerViewBottomConstraint = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewBottomConstraint];
      [appStripBackgroundContainerViewBottomConstraint setConstant:v46];

      appStripBackgroundContainerViewLeadingConstraint = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewLeadingConstraint];
      [appStripBackgroundContainerViewLeadingConstraint setConstant:0.0];

      appStripBackgroundContainerViewTrailingConstraint = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTrailingConstraint];
      [appStripBackgroundContainerViewTrailingConstraint setConstant:0.0];

      if (CFXCaptureCapabilitiesIsCTMSupported(v57))
      {
        appStripBackgroundContainerViewLeadingConstraint2 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewLeadingConstraint];
        [appStripBackgroundContainerViewLeadingConstraint2 setActive:0];

        appStripBackgroundContainerViewTrailingConstraint2 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTrailingConstraint];
        [appStripBackgroundContainerViewTrailingConstraint2 setActive:0];
      }

      if (v39 > 1)
      {
        appStripBackgroundContainerViewHeightConstraint2 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewHeightConstraint];
        [appStripBackgroundContainerViewHeightConstraint2 setConstant:v34];

        if ([(CFXCameraControlsViewController *)self dockIsMagnified])
        {
          v34 = v34 + 31.0;
        }

        v65 = 0.0;
        v30 = Width;
      }

      else
      {
        bottomBar2 = [(CFXCameraControlsViewController *)self bottomBar];
        [bottomBar2 frame];
        v34 = CGRectGetWidth(v70);

        if (v14 == 4)
        {
          appStripBackgroundContainerViewLeadingConstraint3 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewLeadingConstraint];
          v62 = appStripBackgroundContainerViewLeadingConstraint3;
          v63 = Height;
        }

        else
        {
          appStripBackgroundContainerViewLeadingConstraint3 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTrailingConstraint];
          v62 = appStripBackgroundContainerViewLeadingConstraint3;
          v63 = -Height;
        }

        [appStripBackgroundContainerViewLeadingConstraint3 setConstant:v63];

        v47 = 0.0;
        if ([(CFXCameraControlsViewController *)self dockIsMagnified])
        {
          v30 = v30 + 31.0;
          if (v14 == 3)
          {
            v65 = -31.0;
          }

          else
          {
            v65 = 0.0;
          }
        }

        else
        {
          v65 = 0.0;
        }
      }

      appStripBackgroundView = [(CFXCameraControlsViewController *)self appStripBackgroundView];
      [appStripBackgroundView setFrame:{v65, v47, v30, v34}];
    }
  }
}

- (UIColor)backgroundColor
{
  [(CFXCameraControlsViewController *)self loadViewIfNeeded];
  backgroundView = [(CFXCameraControlsViewController *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  [(CFXCameraControlsViewController *)self loadViewIfNeeded];
  if (isStreamingMode(-[CFXCameraControlsViewController captureMode](self, "captureMode")) || ([MEMORY[0x277D75418] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 == 1))
  {
    backgroundView = [(CFXCameraControlsViewController *)self backgroundView];
    [backgroundView setBackgroundColor:colorCopy];
  }
}

- (void)updateUIForVideoRecording:(BOOL)recording
{
  recordingCopy = recording;
  v5 = !recording;
  effectButton = [(CFXCameraControlsViewController *)self effectButton];
  [effectButton setAlpha:v5];

  flipButton = [(CFXCameraControlsViewController *)self flipButton];
  [flipButton setAlpha:v5];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    bottomBar = [(CFXCameraControlsViewController *)self bottomBar];
    [bottomBar setBackgroundStyle:recordingCopy];
  }
}

- (void)updateUIForDockMagnify:(BOOL)magnify dockHeightDelta:(double)delta
{
  [(CFXCameraControlsViewController *)self setDockIsMagnified:magnify];
  [(CFXCameraControlsViewController *)self setDockMagnifiedHeightDelta:delta];
  [(CFXCameraControlsViewController *)self configureUIForOrientation];
  backgroundView = [(CFXCameraControlsViewController *)self backgroundView];
  [backgroundView layoutIfNeeded];
}

- (void)setShutterButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  shutterButton = [(CFXCameraControlsViewController *)self shutterButton];
  [shutterButton setEnabled:enabledCopy];
}

- (void)setShutterButtonAlpha:(double)alpha
{
  shutterButton = [(CFXCameraControlsViewController *)self shutterButton];
  [shutterButton setAlpha:alpha];
}

- (void)effectsButtonTapped:(id)tapped
{
  effectButton = [(CFXCameraControlsViewController *)self effectButton];
  [effectButton setActive:0];

  delegate = [(CFXCameraControlsViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXCameraControlsViewController *)self delegate];
    [delegate2 cameraControlsViewControllerEffectsButtonWasTapped:self];
  }
}

- (void)shutterButtonTapped:(id)tapped
{
  if (![(CFXCameraControlsViewController *)self captureMode])
  {
    [(CFXCameraControlsViewController *)self setShutterButtonEnabled:0];
  }

  delegate = [(CFXCameraControlsViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXCameraControlsViewController *)self delegate];
    [delegate2 cameraControlsViewControllerShutterButtonWasTapped:self];

    if ([(CFXCameraControlsViewController *)self captureMode]== 2)
    {
      shutterButton = [(CFXCameraControlsViewController *)self shutterButton];
      mode = [shutterButton mode];

      shutterButton2 = [(CFXCameraControlsViewController *)self shutterButton];
      v10 = shutterButton2;
      if (mode == 6)
      {
        v9 = 1;
      }

      else
      {
        v9 = 6;
      }

      [shutterButton2 setMode:v9 animated:1];
    }
  }
}

- (void)switchCameraButtonTapped:(id)tapped
{
  delegate = [(CFXCameraControlsViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXCameraControlsViewController *)self delegate];
    [delegate2 cameraControlsViewControllerSwitchCameraButtonWasTapped:self];
  }
}

- (double)CFX_smallPhoneDockHeightAdjustment
{
  v2 = +[JFXOrientationMonitor keyWindow];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [MEMORY[0x277D3D080] cameraBottomBarFrameForReferenceBounds:{v4, v6, v8, v10}];
  v12 = v11;
  [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{v4, v6, v8, v10}];
  return v12 - v13;
}

- (CFXCameraControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (UIView)effectButtonContainerPad
{
  WeakRetained = objc_loadWeakRetained(&self->_effectButtonContainerPad);

  return WeakRetained;
}

- (UIView)shutterButtonContainerPad
{
  WeakRetained = objc_loadWeakRetained(&self->_shutterButtonContainerPad);

  return WeakRetained;
}

- (UIView)flipButtonContainerPad
{
  WeakRetained = objc_loadWeakRetained(&self->_flipButtonContainerPad);

  return WeakRetained;
}

- (UIView)bottomBlackView
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackView);

  return WeakRetained;
}

- (UIView)appStripBackgroundContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerView);

  return WeakRetained;
}

- (NSLayoutConstraint)backgroundViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewTrailingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewLeadingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewTrailingConstraint);

  return WeakRetained;
}

@end