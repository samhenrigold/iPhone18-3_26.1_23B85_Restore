@interface BKUIPearlEnrollController
+ (BOOL)isDisplayZoomEnabled;
+ (BOOL)isPearlAvailable;
+ (BOOL)isPearlInterlocked;
- (BKUIPearlEnrollController)initWithPreloadedState:(id)state;
- (BKUIPearlEnrollControllerDelegate)delegate;
- (BOOL)doesNeedFullscreenInstructingView;
- (BOOL)inBuddy;
- (BOOL)isModalInPresentation;
- (BOOL)mustShowFullscreenInstructingView;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (CGSize)preferredContentSize;
- (id)navigationItem;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)enrollmentConfiguration;
- (void)_copyAndShowInternalNavBar;
- (void)_startObserving;
- (void)coachingSkipped;
- (void)dealloc;
- (void)deviceOrientationChanged:(int64_t)changed duration:(double)duration;
- (void)deviceOrientationDidChange:(id)change;
- (void)diffSystemAndForcedRotationOrientations;
- (void)pearlEnrollControllerCompleted:(id)completed;
- (void)pearlEnrollViewController:(id)controller finishedEnrollWithError:(id)error;
- (void)pearlEnrollViewControllerStateChanged:(int)changed;
- (void)primeWithExternalizedAuthContext:(id)context;
- (void)primeWithPasscode:(id)passcode;
- (void)removeFullscreenInstructingViewIfNeeded;
- (void)resetLayout;
- (void)setCoachingHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setCustomDetailString:(id)string forState:(int)state;
- (void)setCustomInstructionString:(id)string forState:(int)state;
- (void)setEnrollmentConfiguration:(unint64_t)configuration;
- (void)setExistingIdentity:(id)identity;
- (void)setInBuddy:(BOOL)buddy;
- (void)setInSheet:(BOOL)sheet;
- (void)setTransparencyForCoachingController;
- (void)setupFullscreenInstructingViewIfNeeded;
- (void)showFullscreenInstructingView:(BOOL)view;
- (void)showOrHideFullscreenInstructingViewIfNeeded;
- (void)startInternalGlassesFlow;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation BKUIPearlEnrollController

- (BKUIPearlEnrollController)initWithPreloadedState:(id)state
{
  stateCopy = state;
  v16.receiver = self;
  v16.super_class = BKUIPearlEnrollController;
  v6 = [(BKUIPearlEnrollController *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(BKUIOrientationStateHandler);
    orientationStateHandler = v6->_orientationStateHandler;
    v6->_orientationStateHandler = v7;

    v9 = objc_alloc_init(BKUIPearlCoachingController);
    coachingController = v6->_coachingController;
    v6->_coachingController = v9;

    [(BKUIPearlCoachingController *)v6->_coachingController setDelegate:v6];
    -[BKUIPearlCoachingController setIsDisplayZoomEnabled:](v6->_coachingController, "setIsDisplayZoomEnabled:", [objc_opt_class() isDisplayZoomEnabled]);
    [(BKUIPearlEnrollController *)v6 addChildViewController:v6->_coachingController];
    objc_storeStrong(&v6->_preloadState, state);
    v11 = +[BKUIUtils containerEnrollmentStyleEnabled];
    v12 = off_278D09220;
    if (!v11)
    {
      v12 = off_278D09210;
    }

    v13 = [objc_alloc(*v12) initWithPreloadedState:stateCopy];
    enrollViewController = v6->_enrollViewController;
    v6->_enrollViewController = v13;

    [(BKUIPearlEnrollViewController *)v6->_enrollViewController setDelegate:v6];
    -[BKUIPearlEnrollViewController setIsDisplayZoomEnabled:](v6->_enrollViewController, "setIsDisplayZoomEnabled:", [objc_opt_class() isDisplayZoomEnabled]);
    [(BKUIPearlEnrollController *)v6 addChildViewController:v6->_enrollViewController];
    [(BKUIPearlEnrollController *)v6 setEnrollmentConfiguration:0];
  }

  return v6;
}

- (BOOL)isModalInPresentation
{
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  isModalInPresentation = [enrollViewController isModalInPresentation];

  return isModalInPresentation;
}

- (void)startInternalGlassesFlow
{
  v3 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearl: startInternalGlassesFlow", buf, 2u);
  }

  v4 = +[BKUIUtils containerEnrollmentStyleEnabled];
  v5 = off_278D09220;
  if (!v4)
  {
    v5 = off_278D09210;
  }

  v6 = [objc_alloc(*v5) initWithPreloadedState:self->_preloadState];
  [v6 setEnrollmentConfiguration:4];
  [v6 setDelegate:self];
  [v6 setIsDisplayZoomEnabled:{objc_msgSend(objc_opt_class(), "isDisplayZoomEnabled")}];
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [v6 setInBuddy:{objc_msgSend(enrollViewController, "inBuddy")}];

  [v6 setGlassesMidFlowUpsell:1];
  enrollViewController2 = [(BKUIPearlEnrollController *)self enrollViewController];
  currentOperationHandler = [enrollViewController2 currentOperationHandler];
  externalizedAuthContext = [currentOperationHandler externalizedAuthContext];
  [v6 primeWithExternalizedAuthContext:externalizedAuthContext];

  enrollViewController3 = [(BKUIPearlEnrollController *)self enrollViewController];
  currentOperationHandler2 = [enrollViewController3 currentOperationHandler];
  credential = [currentOperationHandler2 credential];
  [v6 primeWithPasscode:credential];

  [(BKUIPearlEnrollController *)self addChildViewController:v6];
  view = [(BKUIPearlEnrollController *)self view];
  [view bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  view2 = [v6 view];
  [view2 setFrame:{v16, v18, v20, v22}];

  view3 = [(BKUIPearlEnrollController *)self view];
  view4 = [v6 view];
  [view3 addSubview:view4];

  [v6 didMoveToParentViewController:self];
  [v6 setInBuddyGlassesFollowUp:{-[BKUIPearlEnrollController inBuddy](self, "inBuddy")}];
  v26 = +[BKUIPearlEnrollAnimationManager sharedManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__BKUIPearlEnrollController_startInternalGlassesFlow__block_invoke;
  v28[3] = &unk_278D09A38;
  v28[4] = self;
  v29 = v6;
  v27 = v6;
  [v26 transitionTo:v27 completion:v28];
}

uint64_t __53__BKUIPearlEnrollController_startInternalGlassesFlow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollViewController];
  [v2 removeFromParentViewController];

  v3 = [*(a1 + 32) enrollViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 setEnrollViewController:v6];
}

- (void)viewDidLoad
{
  v3 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Main enroll controller: viewDidLoad", buf, 2u);
  }

  v52.receiver = self;
  v52.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v52 viewDidLoad];
  view = [(BKUIPearlEnrollController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view2 = [(BKUIPearlEnrollController *)self view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view2 setBackgroundColor:blackColor];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(BKUIPearlEnrollController *)self _startObserving];
    orientationStateHandler = [(BKUIPearlEnrollController *)self orientationStateHandler];
    rotationLockStatusIsLocked = [orientationStateHandler rotationLockStatusIsLocked];

    orientationStateHandler2 = [(BKUIPearlEnrollController *)self orientationStateHandler];
    rawDeviceOrientationIgnoringOrientationLocks = [orientationStateHandler2 rawDeviceOrientationIgnoringOrientationLocks];

    v21 = [(UIViewController *)self bkui_uiforDeviceOrientation:rawDeviceOrientationIgnoringOrientationLocks];
    v22 = [BKUIUtils activeInterfaceOrientationForView:0];
    v23 = [MEMORY[0x277D75D28] bkui_reverseLeftRight:v22];
    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v23;
    }

    if (!rotationLockStatusIsLocked)
    {
      v24 = v23;
    }

    self->_orientation = v24;
    coachingController = [(BKUIPearlEnrollController *)self coachingController];
    [coachingController setOrientation:self->_orientation];

    coachingController2 = [(BKUIPearlEnrollController *)self coachingController];
    [coachingController2 deviceOrientationChanged];

    view3 = [(BKUIPearlEnrollController *)self view];
    v28 = [BKUIUtils activeInterfaceOrientationForView:view3];

    if (v28 == 1)
    {
      [(BKUIPearlEnrollController *)self setHasBeenPortrait:1];
    }
  }

  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  view4 = [enrollViewController view];
  [view4 setFrame:{v6, v8, v10, v12}];

  view5 = [(BKUIPearlEnrollController *)self view];
  enrollViewController2 = [(BKUIPearlEnrollController *)self enrollViewController];
  view6 = [enrollViewController2 view];
  [view5 addSubview:view6];

  enrollViewController3 = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController3 didMoveToParentViewController:self];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
    view7 = [(BKUIPearlEnrollController *)self view];
    coachingController3 = [(BKUIPearlEnrollController *)self coachingController];
    view8 = [coachingController3 view];
    [view7 addSubview:view8];

    coachingController4 = [(BKUIPearlEnrollController *)self coachingController];
    [coachingController4 didMoveToParentViewController:self];

    [(BKUIPearlEnrollController *)self setTransparencyForCoachingController];
    coachingController5 = [(BKUIPearlEnrollController *)self coachingController];
    view9 = [coachingController5 view];
    [view9 setFrame:{v6, v8, v10, v12}];

    view10 = [(BKUIPearlEnrollController *)self view];
    navbarCopy = [(BKUIPearlEnrollController *)self navbarCopy];
    [view10 bringSubviewToFront:navbarCopy];
  }

  if (![(BKUIPearlEnrollController *)self inBuddy])
  {
    objc_initWeak(buf, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v47 = *MEMORY[0x277D76660];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __40__BKUIPearlEnrollController_viewDidLoad__block_invoke;
    v49[3] = &unk_278D0A050;
    objc_copyWeak(&v50, buf);
    v48 = [defaultCenter addObserverForName:v47 object:0 queue:mainQueue usingBlock:v49];

    [(BKUIPearlEnrollController *)self setupFullscreenInstructingViewIfNeeded];
    objc_destroyWeak(&v50);
    objc_destroyWeak(buf);
  }
}

void __40__BKUIPearlEnrollController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)setTransparencyForCoachingController
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[BKUIDevice sharedInstance];
  isRestrictedToLandscapeEnrollment = [v3 isRestrictedToLandscapeEnrollment];

  orientation = self->_orientation;
  coachingController = [(BKUIPearlEnrollController *)self coachingController];
  view = [coachingController view];
  v8 = view;
  v9 = 4;
  if (!isRestrictedToLandscapeEnrollment)
  {
    v9 = 1;
  }

  v10 = 0.0;
  if (orientation != v9)
  {
    v10 = 1.0;
  }

  [view setAlpha:v10];

  v12 = _BKUILoggingFacility(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    coachingController2 = [(BKUIPearlEnrollController *)self coachingController];
    view2 = [coachingController2 view];
    [view2 alpha];
    v15 = self->_orientation;
    v17 = 134218240;
    v18 = v16;
    v19 = 2048;
    v20 = v15;
    _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, "Coaching controller transparency: %f for orientation: %ld", &v17, 0x16u);
  }
}

- (unint64_t)enrollmentConfiguration
{
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  enrollmentConfiguration = [enrollViewController enrollmentConfiguration];

  return enrollmentConfiguration;
}

- (void)setEnrollmentConfiguration:(unint64_t)configuration
{
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController setEnrollmentConfiguration:configuration];
}

+ (BOOL)isDisplayZoomEnabled
{
  v2 = MGCopyAnswer();
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v5 = v4;
  v7 = v6;

  if (v2)
  {
    v8 = [v2 objectForKeyedSubscript:@"zoomed"];
    if ([v8 count] < 4)
    {
      v12 = 0;
    }

    else
    {
      v9 = [v8 objectAtIndexedSubscript:1];
      v10 = [v8 objectAtIndexedSubscript:3];
      v11 = v10;
      v12 = 0;
      if (v9 && v10)
      {
        [v10 floatValue];
        v14 = v13;
        [v9 floatValue];
        v12 = v7 == v15 && v5 == v14;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25[0]) = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Main enroll controller: viewWillAppear", v25, 2u);
  }

  v26.receiver = self;
  v26.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v26 viewWillAppear:appearCopy];
  view = [(BKUIPearlEnrollController *)self view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(BKUIPearlEnrollController *)self _copyAndShowInternalNavBar];
    navbarCopy = [(BKUIPearlEnrollController *)self navbarCopy];
    view2 = [(BKUIPearlEnrollController *)self view];
    v12 = navbarCopy;
    [view2 bounds];
    v14 = v13;
    [v12 bounds];
    [v12 setFrame:{0.0, 10.0, v14}];

    navbarCopy2 = [(BKUIPearlEnrollController *)self navbarCopy];
    magentaColor = [MEMORY[0x277D75348] magentaColor];
    v17 = [navbarCopy2 bkui_debugBorder:magentaColor withWidth:1];

    view3 = [(BKUIPearlEnrollController *)self view];
    layer = [view3 layer];
    v20 = *(MEMORY[0x277CD9DE8] + 80);
    v25[4] = *(MEMORY[0x277CD9DE8] + 64);
    v25[5] = v20;
    v21 = *(MEMORY[0x277CD9DE8] + 112);
    v25[6] = *(MEMORY[0x277CD9DE8] + 96);
    v25[7] = v21;
    v22 = *(MEMORY[0x277CD9DE8] + 16);
    v25[0] = *MEMORY[0x277CD9DE8];
    v25[1] = v22;
    v23 = *(MEMORY[0x277CD9DE8] + 48);
    v25[2] = *(MEMORY[0x277CD9DE8] + 32);
    v25[3] = v23;
    [layer setTransform:v25];

    coachingController = [(BKUIPearlEnrollController *)self coachingController];
    LODWORD(layer) = [coachingController needsToShow];

    [(BKUIPearlEnrollController *)self setCoachingHidden:layer ^ 1 animated:appearCopy];
    [(BKUIPearlEnrollController *)self diffSystemAndForcedRotationOrientations];
  }

  [(BKUIPearlEnrollController *)self showOrHideFullscreenInstructingViewIfNeeded];
}

- (id)navigationItem
{
  navbarCopy = [(BKUIPearlEnrollController *)self navbarCopy];
  v8.receiver = self;
  v8.super_class = BKUIPearlEnrollController;
  navigationItem = [(BKUIPearlEnrollController *)&v8 navigationItem];
  [navbarCopy _pushNavigationItem:navigationItem transition:0];

  v7.receiver = self;
  v7.super_class = BKUIPearlEnrollController;
  navigationItem2 = [(BKUIPearlEnrollController *)&v7 navigationItem];

  return navigationItem2;
}

- (void)viewWillLayoutSubviews
{
  v38 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v31 viewWillLayoutSubviews];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [MEMORY[0x277D37610] preferredContentSize];
    v6 = v5;
    v8 = v7;
    v9 = +[BKUIDevice sharedInstance];
    isRestrictedToLandscapeEnrollment = [v9 isRestrictedToLandscapeEnrollment];

    inSheet = [(BKUIPearlEnrollController *)self inSheet];
    if (inSheet)
    {
      if (isRestrictedToLandscapeEnrollment)
      {
        v8 = v8 + -70.0;
      }

      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
      [fixedCoordinateSpace bounds];
      v13 = v16;
      v12 = v17;
      v6 = v18;
      v8 = v19;
    }

    v20 = _BKUILoggingFacility(inSheet);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v39.origin.x = v13;
      v39.origin.y = v12;
      v39.size.width = v6;
      v39.size.height = v8;
      v21 = NSStringFromCGRect(v39);
      view = [(BKUIPearlEnrollController *)self view];
      [view bounds];
      v23 = NSStringFromCGRect(v40);
      v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[BKUIPearlEnrollController inSheet](self, "inSheet")}];
      *buf = 138412802;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_241B0A000, v20, OS_LOG_TYPE_DEFAULT, "PearlEnrollController: viewWillLayoutSubviews: enrollViewController bounds = %@, self bound = %@, inSheet = %@", buf, 0x20u);
    }

    view2 = [(BKUIPearlEnrollController *)self view];
    [view2 bounds];
    MidX = CGRectGetMidX(v41);
    view3 = [(BKUIPearlEnrollController *)self view];
    [view3 bounds];
    MidY = CGRectGetMidY(v42);

    enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
    view4 = [enrollViewController view];
    [view4 setFrame:{MidX - v6 * 0.5, MidY - v8 * 0.5, v6, v8}];

    [(BKUIPearlEnrollController *)self showOrHideFullscreenInstructingViewIfNeeded];
  }
}

- (CGSize)preferredContentSize
{
  [MEMORY[0x277D37698] preferredContentSize];
  v4 = v3;
  v6 = v5;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {

    goto LABEL_14;
  }

  orientationStateHandler = [(BKUIPearlEnrollController *)self orientationStateHandler];
  rotationLockStatusIsLocked = [orientationStateHandler rotationLockStatusIsLocked];

  if (rotationLockStatusIsLocked)
  {
    v10 = +[BKUIDevice sharedInstance];
    if ([v10 isRestrictedToLandscapeEnrollment])
    {
      view = [(BKUIPearlEnrollController *)self view];
      window = [view window];
      windowScene = [window windowScene];
      v14 = [windowScene interfaceOrientation] - 1;

      if (v14 <= 1)
      {
        v15 = v4;
        v4 = v6;
        v6 = v15;
        goto LABEL_14;
      }
    }

    else
    {
    }

    view2 = [(BKUIPearlEnrollController *)self view];
    window2 = [view2 window];
    windowScene2 = [window2 windowScene];
    v19 = [windowScene2 interfaceOrientation] - 3;

    if (v19 <= 1)
    {
      v20 = v6;
    }

    else
    {
      v20 = v4;
    }

    if (v19 <= 1)
    {
      v6 = v4;
    }

    v4 = v20;
  }

LABEL_14:
  v21 = v4;
  v22 = v6;
  result.height = v22;
  result.width = v21;
  return result;
}

- (BOOL)doesNeedFullscreenInstructingView
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v4 = ![(BKUIPearlEnrollController *)self inBuddy];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setupFullscreenInstructingViewIfNeeded
{
  if ([(BKUIPearlEnrollController *)self doesNeedFullscreenInstructingView])
  {
    v3 = objc_alloc_init(BKUIFullscreenInstructingViewController);
    fullscreenInstructingVC = self->_fullscreenInstructingVC;
    self->_fullscreenInstructingVC = v3;

    [(BKUIPearlEnrollController *)self addChildViewController:self->_fullscreenInstructingVC];
    view = [(BKUIPearlEnrollController *)self view];
    view2 = [(BKUIFullscreenInstructingViewController *)self->_fullscreenInstructingVC view];
    [view addSubview:view2];

    v7 = _BKUILoggingFacility([(BKUIFullscreenInstructingViewController *)self->_fullscreenInstructingVC didMoveToParentViewController:self]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Added subview: FullscreenInstructing view", buf, 2u);
    }

    objc_initWeak(buf, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v10 = *MEMORY[0x277D776B8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__BKUIPearlEnrollController_setupFullscreenInstructingViewIfNeeded__block_invoke;
    v12[3] = &unk_278D0A050;
    objc_copyWeak(&v13, buf);
    v11 = [defaultCenter addObserverForName:v10 object:0 queue:mainQueue usingBlock:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __67__BKUIPearlEnrollController_setupFullscreenInstructingViewIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _BKUILoggingFacility(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Resized!", v3, 2u);
  }

  [WeakRetained showOrHideFullscreenInstructingViewIfNeeded];
}

- (void)showOrHideFullscreenInstructingViewIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  fullscreenInstructingVC = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];

  if (!fullscreenInstructingVC)
  {
    return;
  }

  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  state = [enrollViewController state];

  if (state >= 8)
  {
    v7 = _BKUILoggingFacility(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      enrollViewController2 = [(BKUIPearlEnrollController *)self enrollViewController];
      v19[0] = 67109120;
      v19[1] = [enrollViewController2 state];
      _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Ignoring evaluating showing/hiding FullScreenView as enrollment state [%u] is past state: SubsequentScanComplete", v19, 8u);
    }

    return;
  }

  fullscreenInstructingVC2 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
  view = [fullscreenInstructingVC2 view];
  if (view)
  {
    v11 = view;
    fullscreenInstructingVC3 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
    view2 = [fullscreenInstructingVC3 view];
    view3 = [(BKUIPearlEnrollController *)self view];
    v15 = [view2 isDescendantOfView:view3];

    if (v15)
    {
      mustShowFullscreenInstructingView = [(BKUIPearlEnrollController *)self mustShowFullscreenInstructingView];

      [(BKUIPearlEnrollController *)self showFullscreenInstructingView:mustShowFullscreenInstructingView];
      return;
    }
  }

  else
  {
  }

  v18 = _BKUILoggingFacility(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&dword_241B0A000, v18, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Ignoring evaluating showing/hiding FullScreenView as we no longer have the view", v19, 2u);
  }
}

- (BOOL)mustShowFullscreenInstructingView
{
  v33 = *MEMORY[0x277D85DE8];
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  view = [enrollViewController view];
  window = [view window];
  [window bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  v22 = CGRectEqualToRect(v34, v38);
  v23 = v22;
  v24 = _BKUILoggingFacility(v22);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      v35.origin.x = v15;
      v35.origin.y = v17;
      v35.size.width = v19;
      v35.size.height = v21;
      v26 = NSStringFromRect(v35);
      v29 = 138412290;
      v30 = v26;
      _os_log_impl(&dword_241B0A000, v24, OS_LOG_TYPE_DEFAULT, "Main enroll controller: We are full screen: %@", &v29, 0xCu);
LABEL_6:
    }
  }

  else if (v25)
  {
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v26 = NSStringFromRect(v36);
    v37.origin.x = v15;
    v37.origin.y = v17;
    v37.size.width = v19;
    v37.size.height = v21;
    v27 = NSStringFromRect(v37);
    v29 = 138412546;
    v30 = v26;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_241B0A000, v24, OS_LOG_TYPE_DEFAULT, "Main enroll controller: We are not full screen: %@ vs %@", &v29, 0x16u);

    goto LABEL_6;
  }

  return !v23;
}

- (void)showFullscreenInstructingView:(BOOL)view
{
  viewCopy = view;
  v11 = *MEMORY[0x277D85DE8];
  v5 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:viewCopy];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Showing FullScreenView: %@", &v9, 0xCu);
  }

  fullscreenInstructingVC = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
  view = [fullscreenInstructingVC view];
  [view setHidden:viewCopy ^ 1];
}

- (void)removeFullscreenInstructingViewIfNeeded
{
  fullscreenInstructingVC = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];

  if (fullscreenInstructingVC)
  {
    v5 = _BKUILoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Removed subview: FullscreenInstructing as enrollment is past state: SubsequentScanComplete", v9, 2u);
    }

    fullscreenInstructingVC2 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
    view = [fullscreenInstructingVC2 view];
    [view removeFromSuperview];

    fullscreenInstructingVC3 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
    [fullscreenInstructingVC3 setView:0];
  }
}

- (void)deviceOrientationChanged:(int64_t)changed duration:(double)duration
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].f64[0]) = 134218240;
    *(buf[0].f64 + 4) = changed;
    WORD2(buf[0].f64[1]) = 2048;
    *(&buf[0].f64[1] + 6) = duration;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "deviceOrientationChanged: orientation = %lu, duration = %f", buf, 0x16u);
  }

  coachingController = [(BKUIPearlEnrollController *)self coachingController];
  [coachingController setOrientation:changed];

  coachingController2 = [(BKUIPearlEnrollController *)self coachingController];
  needsToShow = [coachingController2 needsToShow];

  orientation = self->_orientation;
  self->_orientation = changed;
  coachingController3 = [(BKUIPearlEnrollController *)self coachingController];
  [coachingController3 setOrientation:changed];

  orientationStateHandler = [(BKUIPearlEnrollController *)self orientationStateHandler];
  if ([orientationStateHandler rotationLockStatusIsLocked])
  {
    systemRotationAnimating = self->_systemRotationAnimating;

    if (!systemRotationAnimating)
    {
      v15 = [(UIViewController *)self bkui_deviceOrientationForIterfaceOrientation:orientation];
      v16 = [(UIViewController *)self bkui_deviceOrientationForIterfaceOrientation:self->_orientation];
      objc_initWeak(buf, self);
      navigationController = [(BKUIPearlEnrollController *)self navigationController];
      view = [navigationController view];
      [view bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      view2 = [(BKUIPearlEnrollController *)self view];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke;
      v56[3] = &unk_278D0A078;
      v56[4] = self;
      v57 = needsToShow;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_2;
      v53[3] = &unk_278D0A0A0;
      objc_copyWeak(&v54, buf);
      v53[4] = self;
      v55 = needsToShow;
      [(UIViewController *)self bkui_rotateView:view2 fromOrientation:v15 toOrientation:v16 containerBounds:v56 animatedDuration:v53 alongSide:v20 completion:v22, v24, v26, duration];

      objc_destroyWeak(&v54);
      objc_destroyWeak(buf);
      return;
    }
  }

  else
  {
  }

  [(BKUIPearlEnrollController *)self resetLayout];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v29 = [currentDevice userInterfaceIdiom] == 1;

  if (v29)
  {
    orientationStateHandler2 = [(BKUIPearlEnrollController *)self orientationStateHandler];
    v31 = -[UIViewController bkui_uiforDeviceOrientation:](self, "bkui_uiforDeviceOrientation:", [orientationStateHandler2 rawDeviceOrientationIgnoringOrientationLocks]);
    coachingController4 = [(BKUIPearlEnrollController *)self coachingController];
    [coachingController4 setOrientation:v31];

    coachingController5 = [(BKUIPearlEnrollController *)self coachingController];
    needsToShow2 = [coachingController5 needsToShow];

    enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
    coachingController6 = [(BKUIPearlEnrollController *)self coachingController];
    [enrollViewController animateWithOrientation:{objc_msgSend(coachingController6, "orientation")}];

    if ((needsToShow2 & 1) == 0)
    {
      enrollViewController2 = [(BKUIPearlEnrollController *)self enrollViewController];
      [enrollViewController2 setEnrollMovieViewHidden:0];
    }

    v39 = _BKUILoggingFacility(v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].f64[0]) = 0;
      _os_log_impl(&dword_241B0A000, v39, OS_LOG_TYPE_DEFAULT, "Enroll controller completed size transition", buf, 2u);
    }

    if ([(BKUIPearlEnrollController *)self hasBeenPortrait])
    {
      v59 = 0u;
      memset(buf, 0, sizeof(buf));
      enrollViewController3 = [(BKUIPearlEnrollController *)self enrollViewController];
      view3 = [enrollViewController3 view];
      v42 = view3;
      if (view3)
      {
        objc_msgSend_transform(view3);
      }

      else
      {
        v59 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      buf[0] = vrndaq_f64(buf[0]);
      buf[1] = vrndaq_f64(buf[1]);
      v51 = buf[1];
      v52 = v59;
      v50 = buf[0];
      enrollViewController4 = [(BKUIPearlEnrollController *)self enrollViewController];
      view4 = [enrollViewController4 view];
      v49[0] = v50;
      v49[1] = v51;
      v49[2] = v52;
      [view4 setTransform:v49];
    }

    objc_initWeak(buf, self);
    if (needsToShow2)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_31;
      v47[3] = &unk_278D09950;
      objc_copyWeak(&v48, buf);
      [(BKUIPearlEnrollController *)self setCoachingHidden:0 animated:1 completion:v47];
      objc_destroyWeak(&v48);
    }

    else
    {
      [(BKUIPearlEnrollController *)self setCoachingHidden:1 animated:1];
    }

    view5 = [(BKUIPearlEnrollController *)self view];
    v46 = [BKUIUtils activeInterfaceOrientationForView:view5]== 1;

    if (v46)
    {
      [(BKUIPearlEnrollController *)self setHasBeenPortrait:1];
    }

    self->_systemRotationAnimating = 0;
    objc_destroyWeak(buf);
  }
}

void __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [MEMORY[0x277D75348] redColor];
  v4 = [v2 bkui_debugBorder:v3 withWidth:1];

  v5 = [*(a1 + 32) coachingController];
  [v5 stopCoachingAnimation];

  [*(a1 + 32) setCoachingHidden:(*(a1 + 40) & 1) == 0 animated:1];
  v6 = [*(a1 + 32) enrollViewController];
  [v6 animateWithOrientation:*(*(a1 + 32) + 1064)];

  if ((*(a1 + 40) & 1) == 0)
  {
    v7 = [*(a1 + 32) enrollViewController];
    [v7 setEnrollMovieViewHidden:0];
  }

  v9 = [*(a1 + 32) navigationController];
  v8 = [v9 view];
  [v8 layoutIfNeeded];
}

void __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _BKUILoggingFacility(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Enroll controller completed size transition", buf, 2u);
  }

  if ([*(a1 + 32) hasBeenPortrait])
  {
    v18 = 0u;
    v19 = 0u;
    *buf = 0u;
    v4 = [*(a1 + 32) enrollViewController];
    v5 = [v4 view];
    v6 = v5;
    if (v5)
    {
      objc_msgSend_transform(v5);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      *buf = 0u;
    }

    *buf = vrndaq_f64(*buf);
    v18 = vrndaq_f64(v18);
    v15 = v18;
    v16 = v19;
    v14 = *buf;
    v7 = [*(a1 + 32) enrollViewController];
    v8 = [v7 view];
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    [v8 setTransform:v13];
  }

  if (*(a1 + 48) == 1)
  {
    v9 = [*(a1 + 32) enrollViewController];
    [v9 setEnrollMovieViewHidden:1];
  }

  v10 = [*(a1 + 32) view];
  v11 = [BKUIUtils activeInterfaceOrientationForView:v10];

  if (v11 == 1)
  {
    [*(a1 + 32) setHasBeenPortrait:1];
  }

  v12 = [*(a1 + 32) coachingController];
  [v12 deviceOrientationChanged];
}

void __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 center];
  v3 = v2;
  v5 = v4;
  v6 = [WeakRetained coachingController];
  v7 = [v6 view];
  [v7 setCenter:{v3, v5}];

  v8 = [WeakRetained enrollViewController];
  [v8 setEnrollMovieViewHidden:1];

  v9 = [WeakRetained coachingController];
  [v9 deviceOrientationChanged];
}

- (void)_startObserving
{
  objc_initWeak(&location, self);
  orientationStateHandler = [(BKUIPearlEnrollController *)self orientationStateHandler];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __44__BKUIPearlEnrollController__startObserving__block_invoke;
  v8 = &unk_278D0A0C8;
  objc_copyWeak(&v9, &location);
  [orientationStateHandler registerRotationObserver:&v5];

  v4 = [(BKUIPearlEnrollController *)self orientationStateHandler:v5];
  [v4 registerRotationLockObserver:&__block_literal_global_3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__BKUIPearlEnrollController__startObserving__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained bkui_uiforDeviceOrientation:a2];
  v5 = _BKUILoggingFacility(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    v13 = a2;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "ForcedRotation: orientation changed: deviceOrientation = %lu, orientation = %lu", &v12, 0x16u);
  }

  if (!a2 || (a2 - 5) < 2 || (a2 - 5) < 2 == a2 || ([MEMORY[0x277D75128] sharedApplication], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "applicationState"), v7, v8))
  {
    v9 = _BKUILoggingFacility(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277D75128] sharedApplication];
      v11 = [v10 applicationState];
      v12 = 134218240;
      v13 = v11;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "ForcedRotration:[orientation stat change callback pruned] - application state %li, orientation %li", &v12, 0x16u);
    }
  }

  else
  {
    [WeakRetained deviceOrientationChanged:v4];
    [WeakRetained setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

void __44__BKUIPearlEnrollController__startObserving__block_invoke_34(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = _BKUILoggingFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "ForcedRotration:[rotation lock status changed] - locked:%i", v4, 8u);
  }
}

- (void)resetLayout
{
  view = [(BKUIPearlEnrollController *)self view];
  orangeColor = [MEMORY[0x277D75348] orangeColor];
  v5 = [view bkui_debugBorder:orangeColor withWidth:1];

  coachingController = [(BKUIPearlEnrollController *)self coachingController];
  [coachingController stopCoachingAnimation];

  view2 = [(BKUIPearlEnrollController *)self view];
  layer = [view2 layer];
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v13[4] = *(MEMORY[0x277CD9DE8] + 64);
  v13[5] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v13[6] = *(MEMORY[0x277CD9DE8] + 96);
  v13[7] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v13[0] = *MEMORY[0x277CD9DE8];
  v13[1] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v13[2] = *(MEMORY[0x277CD9DE8] + 32);
  v13[3] = v12;
  [layer setTransform:v13];
}

- (void)diffSystemAndForcedRotationOrientations
{
  view = [(BKUIPearlEnrollController *)self view];
  self->_orientation = [(UIViewController *)self bkui_reverseLeftRight:[BKUIUtils activeInterfaceOrientationForView:view]];

  orientationStateHandler = [(BKUIPearlEnrollController *)self orientationStateHandler];
  v5 = -[UIViewController bkui_uiforDeviceOrientation:](self, "bkui_uiforDeviceOrientation:", [orientationStateHandler rawDeviceOrientationIgnoringOrientationLocks]);

  if (v5)
  {

    [(BKUIPearlEnrollController *)self deviceOrientationChanged:v5 duration:0.0];
  }
}

- (void)_copyAndShowInternalNavBar
{
  navigationController = [(BKUIPearlEnrollController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v5 = [BKUITypeSafeCopier copy:navigationBar];
  navbarCopy = self->_navbarCopy;
  self->_navbarCopy = v5;

  navbarCopy = [(BKUIPearlEnrollController *)self navbarCopy];
  navigationItem = [(BKUIPearlEnrollController *)self navigationItem];
  [navbarCopy _pushNavigationItem:navigationItem transition:0];

  navigationController2 = [(BKUIPearlEnrollController *)self navigationController];
  [navigationController2 setNavigationBarHidden:1 animated:0];

  view = [(BKUIPearlEnrollController *)self view];
  navbarCopy2 = [(BKUIPearlEnrollController *)self navbarCopy];
  [view addSubview:navbarCopy2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v6 viewWillDisappear:disappear];
  navbarCopy = [(BKUIPearlEnrollController *)self navbarCopy];
  [navbarCopy removeFromSuperview];

  navigationController = [(BKUIPearlEnrollController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v7 viewDidDisappear:disappear];
  [(BKUIPearlEnrollController *)self setRotationLockToken:0];
  v4 = _BKUILoggingFacility([(BKUIPearlEnrollController *)self setRotationChangeToken:0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Stop observing", v6, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    orientationStateHandler = [(BKUIPearlEnrollController *)self orientationStateHandler];
    rotationLockStatusIsLocked = [orientationStateHandler rotationLockStatusIsLocked];
  }

  else
  {
    rotationLockStatusIsLocked = 0;
  }

  return rotationLockStatusIsLocked;
}

- (void)deviceOrientationDidChange:(id)change
{
  coachingController = [(BKUIPearlEnrollController *)self coachingController];
  needsToShow = [coachingController needsToShow];

  [(BKUIPearlEnrollController *)self setCoachingHidden:needsToShow ^ 1u animated:1];
}

- (void)coachingSkipped
{
  delegate = [(BKUIPearlEnrollController *)self delegate];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
  [delegate pearlEnrollController:self finishedEnrollWithError:v3];
}

- (void)setCoachingHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = _BKUILoggingFacility(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v19 = hiddenCopy;
    v20 = 1024;
    v21 = animatedCopy;
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Setting coaching hidden: %i animated: %i", buf, 0xEu);
  }

  if (animatedCopy)
  {
    v10 = 0.389999986;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke;
  v16[3] = &unk_278D0A110;
  v16[4] = self;
  v17 = hiddenCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke_2;
  v13[3] = &unk_278D0A138;
  v15 = hiddenCopy;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(UIView *)v11 bkui_animateWithDuration:v16 animations:v13 completion:v10];
}

void __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v3 = [*(a1 + 32) coachingController];
  v2 = [v3 view];
  [v2 setAlpha:v1];
}

uint64_t __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) enrollViewController];
    [v2 restartEnroll];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (int64_t)preferredStatusBarStyle
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childViewControllers = [(BKUIPearlEnrollController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(childViewControllers);
      }

      enrollViewController = *(*(&v11 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
    childViewControllers = enrollViewController;
  }

  preferredStatusBarStyle = [enrollViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (BOOL)inBuddy
{
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  inBuddy = [enrollViewController inBuddy];

  return inBuddy;
}

- (void)setInBuddy:(BOOL)buddy
{
  buddyCopy = buddy;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController setInBuddy:buddyCopy];

  coachingController = [(BKUIPearlEnrollController *)self coachingController];
  [coachingController setInBuddy:buddyCopy];
}

- (void)setInSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  self->_inSheet = sheet;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController setInSheet:sheetCopy];

  coachingController = [(BKUIPearlEnrollController *)self coachingController];
  [coachingController setInSheet:sheetCopy];
}

- (void)setExistingIdentity:(id)identity
{
  identityCopy = identity;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController setExistingIdentity:identityCopy];
}

- (void)setCustomInstructionString:(id)string forState:(int)state
{
  v4 = *&state;
  stringCopy = string;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController setCustomInstructionString:stringCopy forState:v4];
}

- (void)setCustomDetailString:(id)string forState:(int)state
{
  v4 = *&state;
  stringCopy = string;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController setCustomDetailString:stringCopy forState:v4];
}

- (void)primeWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController primeWithPasscode:passcodeCopy];
}

- (void)primeWithExternalizedAuthContext:(id)context
{
  contextCopy = context;
  enrollViewController = [(BKUIPearlEnrollController *)self enrollViewController];
  [enrollViewController primeWithExternalizedAuthContext:contextCopy];
}

- (void)pearlEnrollViewController:(id)controller finishedEnrollWithError:(id)error
{
  errorCopy = error;
  delegate = [(BKUIPearlEnrollController *)self delegate];
  [delegate pearlEnrollController:self finishedEnrollWithError:errorCopy];
}

- (void)pearlEnrollControllerCompleted:(id)completed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BKUIPearlEnrollController_pearlEnrollControllerCompleted___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__BKUIPearlEnrollController_pearlEnrollControllerCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navbarCopy];
  [v2 _setHidesShadow:1];

  v3 = [*(a1 + 32) coachingController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = *(a1 + 32);

  return [v5 removeFullscreenInstructingViewIfNeeded];
}

- (void)pearlEnrollViewControllerStateChanged:(int)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    changedCopy = changed;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Enroll state changed to: %i", buf, 8u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__BKUIPearlEnrollController_pearlEnrollViewControllerStateChanged___block_invoke;
  v6[3] = &unk_278D09FB0;
  changedCopy2 = changed;
  v6[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

id *__67__BKUIPearlEnrollController_pearlEnrollViewControllerStateChanged___block_invoke(id *result)
{
  if (*(result + 10) >= 8u)
  {
    return [result[4] showFullscreenInstructingView:0];
  }

  return result;
}

+ (BOOL)isPearlAvailable
{
  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v9 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

+ (BOOL)isPearlInterlocked
{
  v24 = *MEMORY[0x277D85DE8];
  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v15 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v15];
  v5 = v15;

  if (v4)
  {
    v14 = 0;
    v13 = 0;
    v6 = [v4 bioLockoutState:&v14 forUser:getuid() error:&v13];
    v7 = v13;
    v8 = _BKUILoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      *buf = 138413058;
      v17 = v4;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "Biolockout state for device: %@, state: %@, error: %@, success: %@", buf, 0x2Au);
    }

    v11 = v14 == 7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  coachingController = self->_coachingController;
  self->_coachingController = 0;

  enrollViewController = self->_enrollViewController;
  self->_enrollViewController = 0;

  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v5 dealloc];
}

- (BKUIPearlEnrollControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end