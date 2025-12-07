@interface HUCCSmartGridContentViewController
- (BOOL)_shouldDisplayHomeControlService;
- (BOOL)isDeviceUnlockedForGridViewController:(id)controller;
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldPerformClickInteraction;
- (CCUIModuleLayoutSize)moduleLayoutSizeForOrientation:(int64_t)orientation;
- (CGRect)_homeNameLabelInHomeGridCellFrame;
- (CGRect)_homeNameLabelInNavigationHeaderViewFrame;
- (CGRect)_iconViewInHomeGridCellFrame;
- (CGRect)_iconViewInNavigationHeaderViewFrame;
- (CGRect)_roomNameLabelInHomeGridCellFrame;
- (CGRect)_roomNameLabelInNavigationHeaderViewFrame;
- (CGRect)transitionCompressedViewFrame;
- (HUCCAccessoryControlsHosting)accessoryControlsViewController;
- (HUCCSmartGridContentViewController)initWithDelegate:(id)delegate;
- (HUCCSmartGridContentViewControllerDelegate)delegate;
- (UIViewPropertyAnimator)customAnimator;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)prepareForActionRequiringDeviceUnlockForGridViewController:(id)controller;
- (void)_cleanupTransitionSubviews;
- (void)_openHomeApp;
- (void)_prepareTransitionSubviews;
- (void)_setUpSmartGridContent;
- (void)_showLockSecurityView:(BOOL)view;
- (void)_tearDownSmartGridContent;
- (void)dealloc;
- (void)didTransitionToExpandedContentMode:(BOOL)mode;
- (void)displayHome:(id)home;
- (void)displayWillTurnOff;
- (void)gridSizeMayHaveChanged;
- (void)loadView;
- (void)propertyAnimatorDidStartAnimating:(id)animating;
- (void)quickControlsPresentationDidUpdate:(BOOL)update;
- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error;
- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)handler;
- (void)requestDismissal;
- (void)setURLHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissAccessoryControlsViewController:(id)controller;
- (void)willPresentAccessoryControlsViewController:(id)controller;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation HUCCSmartGridContentViewController

- (HUCCSmartGridContentViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HUCCSmartGridContentViewController;
  v5 = [(HUCCSmartGridContentViewController *)&v12 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_expandedContentMode = 0;
    v7 = [HUCCSmartGridViewController alloc];
    v9 = objc_msgSend_initWithItemType_delegate_(v7, v8, 0, v6);
    smartGridViewController = v6->_smartGridViewController;
    v6->_smartGridViewController = v9;
  }

  return v6;
}

- (void)loadView
{
  v50 = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(HUCCSmartContainerView);
  objc_msgSend_setView_(self, v4, v3);

  v7 = objc_msgSend_systemWhiteColor(MEMORY[0x29EDC7A00], v5, v6);
  v10 = objc_msgSend_view(self, v8, v9);
  objc_msgSend_setTintColor_(v10, v11, v7);

  v14 = objc_msgSend_smartGridViewController(self, v12, v13);
  objc_msgSend_beginAppearanceTransition_animated_(v14, v15, 1, 0);

  v18 = objc_msgSend_smartGridViewController(self, v16, v17);
  objc_msgSend_addChildViewController_(self, v19, v18);

  v22 = objc_msgSend_smartGridViewController(self, v20, v21);
  v25 = objc_msgSend_view(v22, v23, v24);
  v28 = objc_msgSend_view(self, v26, v27);
  objc_msgSend_setCompressedView_(v28, v29, v25);

  v32 = objc_msgSend_smartGridViewController(self, v30, v31);
  objc_msgSend_didMoveToParentViewController_(v32, v33, self);

  v36 = objc_msgSend_smartGridViewController(self, v34, v35);
  objc_msgSend_beginAppearanceTransition_animated_(v36, v37, 0, 0);

  v40 = objc_msgSend_smartGridViewController(self, v38, v39);
  objc_msgSend_endAppearanceTransition(v40, v41, v42);

  v43 = HFLogForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = 138412546;
    v47 = v45;
    v48 = 2080;
    v49 = "[HUCCSmartGridContentViewController loadView]";
    _os_log_impl(&dword_29C992000, v43, OS_LOG_TYPE_DEFAULT, "%@:%s", &v46, 0x16u);
  }
}

- (void)viewDidLoad
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v16 = v5;
    v17 = 2080;
    v18 = "[HUCCSmartGridContentViewController viewDidLoad]";
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s", buf, 0x16u);
  }

  v14.receiver = self;
  v14.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v14 viewDidLoad];
  v6 = objc_alloc_init(MEMORY[0x29EDC7B78]);
  v9 = objc_msgSend_largeTitleTextAttributes(v6, v7, v8);
  objc_msgSend_setTransitionLargeTitleTextAttributes_(self, v10, v9);

  MGGetFloat32Answer();
  objc_msgSend_setTransitionDeviceCornerRadius_(self, v12, v13, v11);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v33 = *MEMORY[0x29EDCA608];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v30 = v7;
    v31 = 2080;
    v32 = "[HUCCSmartGridContentViewController viewWillAppear:]";
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s", buf, 0x16u);
  }

  v10 = objc_msgSend_delegate(self, v8, v9);
  objc_msgSend_smartGridContentViewController_viewWillAppear_(v10, v11, self, appearCopy);

  v28.receiver = self;
  v28.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v28 viewWillAppear:appearCopy];
  v14 = objc_msgSend_view(self, v12, v13);
  v17 = objc_msgSend_frame(v14, v15, v16);
  v21 = HUCCSizeSubclassForModuleViewWidth(v20, v17, v18, v19);

  v24 = objc_msgSend_smartGridViewController(self, v22, v23);
  objc_msgSend_setSizeSubclass_(v24, v25, v21);

  objc_msgSend__setUpSmartGridContent(self, v26, v27);
}

- (void)viewDidAppear:(BOOL)appear
{
  v21 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v14 viewDidAppear:appear];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = objc_msgSend_view(self, v7, v8);
    v12 = objc_msgSend_window(v9, v10, v11);
    v13 = @"yes";
    if (!v12)
    {
      v13 = @"no";
    }

    *buf = 138412802;
    v16 = v6;
    v17 = 2080;
    v18 = "[HUCCSmartGridContentViewController viewDidAppear:]";
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_29C992000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s — has window: %@", buf, 0x20u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v27 = *MEMORY[0x29EDCA608];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v24 = v7;
    v25 = 2080;
    v26 = "[HUCCSmartGridContentViewController viewWillDisappear:]";
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s", buf, 0x16u);
  }

  v10 = objc_msgSend_accessoryControlsViewController(self, v8, v9);

  if (v10)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_accessoryControlsViewController(self, v14, v15);
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_29C992000, v11, OS_LOG_TYPE_DEFAULT, "%@ was asked to dismiss while accessory controls were still presented: %@", buf, 0x16u);
    }

    v19 = objc_msgSend_accessoryControlsViewController(self, v17, v18);
    objc_msgSend_dismissAccessoryControlsAnimated_completion_(v19, v20, disappearCopy, 0);

    objc_msgSend_setAccessoryControlsViewController_(self, v21, 0);
  }

  v22.receiver = self;
  v22.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v22 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v34 = *MEMORY[0x29EDCA608];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v31 = v7;
    v32 = 2080;
    v33 = "[HUCCSmartGridContentViewController viewDidDisappear:]";
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s", buf, 0x16u);
  }

  objc_msgSend__tearDownSmartGridContent(self, v8, v9);
  v12 = objc_msgSend_accessoryControlsViewController(self, v10, v11);

  if (v12)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v19 = objc_msgSend_accessoryControlsViewController(self, v17, v18);
      *buf = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_29C992000, v14, OS_LOG_TYPE_DEFAULT, "%@ disappeared while accessory controls were still presented: %@", buf, 0x16u);
    }

    v22 = objc_msgSend_accessoryControlsViewController(self, v20, v21);
    objc_msgSend_dismissAccessoryControlsAnimated_completion_(v22, v23, 0, 0);

    objc_msgSend_setAccessoryControlsViewController_(self, v24, 0);
  }

  objc_msgSend_setExpandedContentMode_(self, v13, 0);
  v29.receiver = self;
  v29.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v29 viewDidDisappear:disappearCopy];
  v27 = objc_msgSend_delegate(self, v25, v26);
  objc_msgSend_smartGridContentViewController_viewDidDisappear_(v27, v28, self, disappearCopy);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (objc_msgSend_expandedContentMode(self, v8, v9) == 1)
  {
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = sub_29C99F1A4;
    v11[3] = &unk_29F33ABF8;
    v11[4] = self;
    objc_msgSend_animateAlongsideTransition_completion_(coordinatorCopy, v10, v11, 0);
  }
}

- (void)dealloc
{
  objc_msgSend__tearDownSmartGridContent(self, a2, v2);
  v4.receiver = self;
  v4.super_class = HUCCSmartGridContentViewController;
  [(HUCCSmartGridContentViewController *)&v4 dealloc];
}

- (CCUIModuleLayoutSize)moduleLayoutSizeForOrientation:(int64_t)orientation
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HUCCStringForOrientation(orientation);
    v19 = 138412290;
    v20 = v7;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "Computing module layout size for orientiation: %@", &v19, 0xCu);
  }

  v10 = objc_msgSend_smartGridViewController(self, v8, v9);
  v12 = objc_msgSend_occupiedGridSizeForOrientation_(v10, v11, orientation);
  v14 = v13;

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    v19 = 138412802;
    v20 = v16;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&dword_29C992000, v15, OS_LOG_TYPE_DEFAULT, "%@ - height: %ld, width: %ld", &v19, 0x20u);
  }

  v17 = v14;
  v18 = v12;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (BOOL)shouldPerformClickInteraction
{
  v3 = objc_msgSend_view(self, a2, v2);
  isShowingLockSecurity = objc_msgSend_isShowingLockSecurity(v3, v4, v5);

  return isShowingLockSecurity;
}

- (UIViewPropertyAnimator)customAnimator
{
  if (objc_msgSend_expandedContentMode(self, a2, v2) == 1)
  {
    v6 = 0;
  }

  else
  {
    objc_msgSend__prepareTransitionSubviews(self, v4, v5);
    if (objc_msgSend_isExpanded(self, v7, v8))
    {
      v15 = objc_alloc(MEMORY[0x29EDC7C88]);
      v18 = objc_msgSend_initWithMass_stiffness_damping_initialVelocity_(v15, v16, v17, 1.0, 205.7182, 22.85739, 0.0, 0.0);
      v19 = [HUCCSmartGridPropertyAnimator alloc];
      v6 = objc_msgSend_initWithDuration_timingParameters_(v19, v20, v18, 0.0);
      objc_msgSend_setDelegate_(v6, v21, self);
      v41[0] = MEMORY[0x29EDCA5F8];
      v41[1] = 3221225472;
      v41[2] = sub_29C99F714;
      v41[3] = &unk_29F33AC20;
      v41[4] = self;
      objc_msgSend_addAnimations_(v6, v22, v41);
      v40[0] = MEMORY[0x29EDCA5F8];
      v40[1] = 3221225472;
      v40[2] = sub_29C99FBCC;
      v40[3] = &unk_29F33AC20;
      v40[4] = self;
      objc_msgSend_addAnimations_(v6, v23, v40);
    }

    else
    {
      LODWORD(v11) = 1048168144;
      LODWORD(v12) = 1053104274;
      LODWORD(v13) = 1057634019;
      LODWORD(v14) = 1064730781;
      v18 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x29EDBBAB0], v9, v10, v11, v12, v13, v14);
      v24 = objc_alloc(MEMORY[0x29EDC7A38]);
      v26 = objc_msgSend_initWithCustomCurve_(v24, v25, v18);
      v27 = objc_alloc(MEMORY[0x29EDC7C88]);
      v30 = objc_msgSend_initWithMass_stiffness_damping_initialVelocity_(v27, v28, v29, 3.0, 500.0, 1000.0, 0.0, 0.0);
      objc_msgSend_setSpringTimingParameters_(v26, v31, v30);

      v32 = [HUCCSmartGridPropertyAnimator alloc];
      v6 = objc_msgSend_initWithDuration_timingParameters_(v32, v33, v26, 0.45);
      objc_msgSend_setDelegate_(v6, v34, self);
      v39[0] = MEMORY[0x29EDCA5F8];
      v39[1] = 3221225472;
      v39[2] = sub_29C9A04AC;
      v39[3] = &unk_29F33AC20;
      v39[4] = self;
      objc_msgSend_addAnimations_(v6, v35, v39);
      v38[0] = MEMORY[0x29EDCA5F8];
      v38[1] = 3221225472;
      v38[2] = sub_29C9A093C;
      v38[3] = &unk_29F33AC20;
      v38[4] = self;
      objc_msgSend_addAnimations_(v6, v36, v38);
    }
  }

  return v6;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v4 = objc_msgSend_expandedContentMode(self, a2, v2);
  if (v4 != 1)
  {
    if (objc_msgSend_isTransitioningToHomeControlService(self, v5, v6))
    {
LABEL_10:
      LOBYTE(v4) = 0;
      return v4;
    }

    v9 = objc_msgSend_view(self, v7, v8);
    isShowingLockSecurity = objc_msgSend_isShowingLockSecurity(v9, v10, v11);

    if (isShowingLockSecurity)
    {
      objc_initWeak(&location, self);
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 3221225472;
      v35[2] = sub_29C9A1284;
      v35[3] = &unk_29F33A8F8;
      objc_copyWeak(&v36, &location);
      dispatch_async(MEMORY[0x29EDCA578], v35);
      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
      goto LABEL_10;
    }

    if (!objc_msgSend__shouldDisplayHomeControlService(self, v13, v14))
    {
      objc_msgSend__openHomeApp(self, v15, v16);
      goto LABEL_10;
    }

    v17 = objc_msgSend_view(self, v15, v16);
    objc_msgSend_hu_frameInGlobalCoordinateSpace(v17, v18, v19);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    isAnIPad = objc_msgSend_isAnIPad(MEMORY[0x29EDC53F0], v28, v29);
    v33 = 0.0;
    if (!isAnIPad)
    {
      v33 = v21;
    }

    objc_msgSend_setTransitionCompressedViewFrame_(self, v31, v32, v33, v23, v25, v27);
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  objc_msgSend_setIsExpanded_(self, a2, mode);
  v7 = modeCopy && objc_msgSend_expandedContentMode(self, v5, v6) != 1;
  v8 = objc_msgSend_delegate(self, v5, v6);
  v11 = objc_msgSend_contentModuleContext(v8, v9, v10);
  objc_msgSend_setHomeGestureDismissalAllowed_(v11, v12, v7);

  if (objc_msgSend_expandedContentMode(self, v13, v14) != 1 && UIAccessibilityIsReduceMotionEnabled())
  {
    isExpanded = objc_msgSend_isExpanded(self, v15, v16);
    v20 = objc_msgSend_view(self, v18, v19);
    v23 = objc_msgSend_compressedView(v20, v21, v22);
    objc_msgSend_setHidden_(v23, v24, isExpanded);

    v27 = objc_msgSend_isExpanded(self, v25, v26);
    v30 = objc_msgSend_smartGridViewController(self, v28, v29);
    v33 = objc_msgSend_homeCell(v30, v31, v32);
    objc_msgSend_setHidden_(v33, v34, v27);

    LODWORD(v27) = objc_msgSend_isExpanded(self, v35, v36);
    v39 = objc_msgSend_view(self, v37, v38);
    v42 = objc_msgSend_animationView(v39, v40, v41);
    objc_msgSend_setHidden_(v42, v43, v27 ^ 1);

    LODWORD(v27) = objc_msgSend_isExpanded(self, v44, v45);
    v48 = objc_msgSend_view(self, v46, v47);
    v51 = objc_msgSend_expandedView(v48, v49, v50);
    objc_msgSend_setHidden_(v51, v52, v27 ^ 1);

    v55 = objc_msgSend_dashboardContainerViewController(self, v53, v54);
    objc_msgSend_expandedContentFrame(v55, v56, v57);
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v68 = objc_msgSend_view(self, v66, v67);
    v71 = objc_msgSend_expandedView(v68, v69, v70);
    objc_msgSend_setFrame_(v71, v72, v73, v59, v61, v63, v65);

    if (objc_msgSend_isAnIPad(MEMORY[0x29EDC53F0], v74, v75))
    {
      CCUIExpandedModuleContinuousCornerRadius();
    }

    else
    {
      objc_msgSend_transitionDeviceCornerRadius(self, v76, v77);
    }

    v81 = v80;
    v82 = objc_msgSend_view(self, v78, v79);
    v85 = objc_msgSend_expandedView(v82, v83, v84);
    objc_msgSend__setContinuousCornerRadius_(v85, v86, v87, v81);

    v90 = objc_msgSend_view(self, v88, v89);
    v93 = objc_msgSend_expandedView(v90, v91, v92);
    objc_msgSend_frame(v93, v94, v95);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v106 = objc_msgSend_view(self, v104, v105);
    v109 = objc_msgSend_animationView(v106, v107, v108);
    objc_msgSend_setFrame_(v109, v110, v111, v97, v99, v101, v103);

    v114 = objc_msgSend_view(self, v112, v113);
    v117 = objc_msgSend_expandedView(v114, v115, v116);
    objc_msgSend__continuousCornerRadius(v117, v118, v119);
    v121 = v120;
    v124 = objc_msgSend_view(self, v122, v123);
    v127 = objc_msgSend_animationView(v124, v125, v126);
    objc_msgSend__setContinuousCornerRadius_(v127, v128, v129, v121);

    if (objc_msgSend_isExpanded(self, v130, v131))
    {
      v134 = 0.0;
    }

    else
    {
      v134 = 1.0;
    }

    v135 = objc_msgSend_view(self, v132, v133);
    v138 = objc_msgSend_compressedView(v135, v136, v137);
    objc_msgSend_setAlpha_(v138, v139, v140, v134);

    if (objc_msgSend_isExpanded(self, v141, v142))
    {
      v145 = 1.0;
    }

    else
    {
      v145 = 0.0;
    }

    v146 = objc_msgSend_view(self, v143, v144);
    v149 = objc_msgSend_animationView(v146, v147, v148);
    objc_msgSend_setAlpha_(v149, v150, v151, v145);

    if (objc_msgSend_isExpanded(self, v152, v153))
    {
      v156 = 1.0;
    }

    else
    {
      v156 = 0.0;
    }

    v157 = objc_msgSend_view(self, v154, v155);
    v160 = objc_msgSend_expandedView(v157, v158, v159);
    objc_msgSend_setAlpha_(v160, v161, v162, v156);

    v165 = objc_msgSend_dashboardContainerViewController(self, v163, v164);
    v168 = objc_msgSend_isExpanded(self, v166, v167);
    objc_msgSend_willBeginTransition_forCompactModule_(v165, v169, v168, 0);

    v176 = objc_msgSend_dashboardContainerViewController(self, v170, v171);
    v174 = objc_msgSend_isExpanded(self, v172, v173);
    objc_msgSend_willFinishTransition_forCompactModule_(v176, v175, v174, 0);
  }
}

- (void)didTransitionToExpandedContentMode:(BOOL)mode
{
  if (!mode)
  {
    objc_msgSend_setExpandedContentMode_(self, a2, 0);
  }
}

- (void)displayWillTurnOff
{
  v4 = *MEMORY[0x29EDB90B8];
  v5 = *(MEMORY[0x29EDB90B8] + 8);
  v6 = objc_msgSend_view(self, a2, v2);
  v9 = objc_msgSend_compressedView(v6, v7, v8);
  objc_msgSend_setFrameOrigin_(v9, v10, v11, v4, v5);

  v14 = objc_msgSend_view(self, v12, v13);
  v17 = objc_msgSend_compressedView(v14, v15, v16);
  objc_msgSend_setAlpha_(v17, v18, v19, 1.0);

  v22 = objc_msgSend_view(self, v20, v21);
  v25 = objc_msgSend_animationView(v22, v23, v24);
  objc_msgSend_setHidden_(v25, v26, 1);

  v33 = objc_msgSend_smartGridViewController(self, v27, v28);
  v31 = objc_msgSend_homeCell(v33, v29, v30);
  objc_msgSend_setHidden_(v31, v32, 0);
}

- (void)propertyAnimatorDidStartAnimating:(id)animating
{
  v8 = objc_msgSend_dashboardContainerViewController(self, a2, animating);
  isExpanded = objc_msgSend_isExpanded(self, v4, v5);
  objc_msgSend_willBeginTransition_forCompactModule_(v8, v7, isExpanded, 0);
}

- (void)_prepareTransitionSubviews
{
  v4 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, a2, v2);

  if (!v4)
  {
    v7 = objc_alloc(MEMORY[0x29EDC7DC0]);
    v10 = objc_msgSend_controlCenterSecondaryVibrancyEffect(MEMORY[0x29EDC7D98], v8, v9);
    v12 = objc_msgSend_initWithEffect_(v7, v11, v10);
    objc_msgSend_setTransitionNavigationHeaderHomeNameLabelEffectView_(self, v13, v12);

    v16 = objc_msgSend_view(self, v14, v15);
    v19 = objc_msgSend_animationView(v16, v17, v18);
    v22 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, v20, v21);
    objc_msgSend_addSubview_(v19, v23, v22);

    v24 = objc_opt_new();
    objc_msgSend_setTransitionNavigationHeaderHomeNameLabel_(self, v25, v24);

    v28 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, v26, v27);
    v31 = objc_msgSend_contentView(v28, v29, v30);
    v34 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v32, v33);
    objc_msgSend_addSubview_(v31, v35, v34);

    v37 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x29EDC76B0], v36, *MEMORY[0x29EDC8100]);
    v40 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v38, v39);
    objc_msgSend_setFont_(v40, v41, v37);

    v44 = objc_msgSend_smartGridViewController(self, v42, v43);
    v47 = objc_msgSend_homeCell(v44, v45, v46);
    v50 = objc_msgSend_primaryLabel(v47, v48, v49);
    v53 = objc_msgSend_text(v50, v51, v52);
    v56 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v54, v55);
    objc_msgSend_setText_(v56, v57, v53);

    v60 = objc_msgSend_systemWhiteColor(MEMORY[0x29EDC7A00], v58, v59);
    v63 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v61, v62);
    objc_msgSend_setTextColor_(v63, v64, v60);

    if (objc_msgSend_isExpanded(self, v65, v66))
    {
      objc_msgSend__homeNameLabelInHomeGridCellFrame(self, v67, v68);
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v79 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, v77, v78);
      objc_msgSend_setFrame_(v79, v80, v81, v70, v72, v74, v76);

      objc_msgSend__homeNameLabelInHomeGridCellFrame(self, v82, v83);
      v85 = v84;
      objc_msgSend__homeNameLabelInHomeGridCellFrame(self, v86, v87);
      v91 = v90;
      v92 = 0.0;
    }

    else
    {
      objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(self, v67, v68);
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v103 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, v101, v102);
      objc_msgSend_setFrame_(v103, v104, v105, v94, v96, v98, v100);

      objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(self, v106, v107);
      v85 = v108;
      objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(self, v109, v110);
      v91 = v111;
      v92 = 1.0;
    }

    v112 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v88, v89);
    objc_msgSend_setFrame_(v112, v113, v114, 0.0, 0.0, v85, v91);

    v117 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, v115, v116);
    objc_msgSend_setAlpha_(v117, v118, v119, v92);

    v122 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v120, v121);
    objc_msgSend_setAlpha_(v122, v123, v124, v92);
  }

  v125 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v5, v6);

  if (!v125)
  {
    v128 = objc_alloc(MEMORY[0x29EDC7DC0]);
    v131 = objc_msgSend_controlCenterPrimaryVibrancyEffect(MEMORY[0x29EDC7D98], v129, v130);
    v133 = objc_msgSend_initWithEffect_(v128, v132, v131);
    objc_msgSend_setTransitionGridCellHomeNameLabelEffectView_(self, v134, v133);

    v137 = objc_msgSend_view(self, v135, v136);
    v140 = objc_msgSend_animationView(v137, v138, v139);
    v143 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v141, v142);
    objc_msgSend_addSubview_(v140, v144, v143);

    v145 = objc_opt_new();
    objc_msgSend_setTransitionGridCellHomeNameLabel_(self, v146, v145);

    v149 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v147, v148);
    v152 = objc_msgSend_contentView(v149, v150, v151);
    v155 = objc_msgSend_transitionGridCellHomeNameLabel(self, v153, v154);
    objc_msgSend_addSubview_(v152, v156, v155);

    v159 = objc_msgSend_smartGridViewController(self, v157, v158);
    v162 = objc_msgSend_homeCell(v159, v160, v161);
    v165 = objc_msgSend_primaryLabel(v162, v163, v164);
    v168 = objc_msgSend_font(v165, v166, v167);
    v171 = objc_msgSend_transitionGridCellHomeNameLabel(self, v169, v170);
    objc_msgSend_setFont_(v171, v172, v168);

    v175 = objc_msgSend_smartGridViewController(self, v173, v174);
    v178 = objc_msgSend_homeCell(v175, v176, v177);
    v181 = objc_msgSend_primaryLabel(v178, v179, v180);
    v184 = objc_msgSend_text(v181, v182, v183);
    v187 = objc_msgSend_transitionGridCellHomeNameLabel(self, v185, v186);
    objc_msgSend_setText_(v187, v188, v184);

    v191 = objc_msgSend_systemWhiteColor(MEMORY[0x29EDC7A00], v189, v190);
    v194 = objc_msgSend_transitionGridCellHomeNameLabel(self, v192, v193);
    objc_msgSend_setTextColor_(v194, v195, v191);

    if (objc_msgSend_isExpanded(self, v196, v197))
    {
      objc_msgSend__homeNameLabelInHomeGridCellFrame(self, v198, v199);
      v201 = v200;
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v210 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v208, v209);
      objc_msgSend_setFrame_(v210, v211, v212, v201, v203, v205, v207);

      objc_msgSend__homeNameLabelInHomeGridCellFrame(self, v213, v214);
      v216 = v215;
      objc_msgSend__homeNameLabelInHomeGridCellFrame(self, v217, v218);
      v222 = v221;
      v223 = 1.0;
    }

    else
    {
      objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(self, v198, v199);
      v225 = v224;
      v227 = v226;
      v229 = v228;
      v231 = v230;
      v234 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v232, v233);
      objc_msgSend_setFrame_(v234, v235, v236, v225, v227, v229, v231);

      objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(self, v237, v238);
      v216 = v239;
      objc_msgSend__homeNameLabelInNavigationHeaderViewFrame(self, v240, v241);
      v222 = v242;
      v223 = 0.0;
    }

    v243 = objc_msgSend_transitionGridCellHomeNameLabel(self, v219, v220);
    objc_msgSend_setFrame_(v243, v244, v245, 0.0, 0.0, v216, v222);

    v248 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v246, v247);
    objc_msgSend_setAlpha_(v248, v249, v250, v223);

    v253 = objc_msgSend_transitionGridCellHomeNameLabel(self, v251, v252);
    objc_msgSend_setAlpha_(v253, v254, v255, v223);
  }

  v256 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v126, v127);

  if (!v256)
  {
    v259 = objc_alloc(MEMORY[0x29EDC7DC0]);
    v262 = objc_msgSend_controlCenterSecondaryVibrancyEffect(MEMORY[0x29EDC7D98], v260, v261);
    v264 = objc_msgSend_initWithEffect_(v259, v263, v262);
    objc_msgSend_setTransitionGridCellRoomNameLabelEffectView_(self, v265, v264);

    v268 = objc_msgSend_view(self, v266, v267);
    v271 = objc_msgSend_animationView(v268, v269, v270);
    v274 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v272, v273);
    objc_msgSend_addSubview_(v271, v275, v274);

    v276 = objc_opt_new();
    objc_msgSend_setTransitionGridCellRoomNameLabel_(self, v277, v276);

    v280 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v278, v279);
    v283 = objc_msgSend_contentView(v280, v281, v282);
    v286 = objc_msgSend_transitionGridCellRoomNameLabel(self, v284, v285);
    objc_msgSend_addSubview_(v283, v287, v286);

    v290 = objc_msgSend_smartGridViewController(self, v288, v289);
    v293 = objc_msgSend_homeCell(v290, v291, v292);
    v296 = objc_msgSend_secondaryLabel(v293, v294, v295);
    v299 = objc_msgSend_font(v296, v297, v298);
    v302 = objc_msgSend_transitionGridCellRoomNameLabel(self, v300, v301);
    objc_msgSend_setFont_(v302, v303, v299);

    v306 = objc_msgSend_smartGridViewController(self, v304, v305);
    v309 = objc_msgSend_homeCell(v306, v307, v308);
    v312 = objc_msgSend_secondaryLabel(v309, v310, v311);
    v315 = objc_msgSend_text(v312, v313, v314);
    v318 = objc_msgSend_transitionGridCellRoomNameLabel(self, v316, v317);
    objc_msgSend_setText_(v318, v319, v315);

    v322 = objc_msgSend_systemWhiteColor(MEMORY[0x29EDC7A00], v320, v321);
    v325 = objc_msgSend_transitionGridCellRoomNameLabel(self, v323, v324);
    objc_msgSend_setTextColor_(v325, v326, v322);

    if (objc_msgSend_isExpanded(self, v327, v328))
    {
      objc_msgSend__roomNameLabelInHomeGridCellFrame(self, v329, v330);
      v332 = v331;
      v334 = v333;
      v336 = v335;
      v338 = v337;
      v341 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v339, v340);
      objc_msgSend_setFrame_(v341, v342, v343, v332, v334, v336, v338);

      objc_msgSend__roomNameLabelInHomeGridCellFrame(self, v344, v345);
      v347 = v346;
      objc_msgSend__roomNameLabelInHomeGridCellFrame(self, v348, v349);
      v353 = v352;
      v354 = 1.0;
    }

    else
    {
      objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(self, v329, v330);
      v356 = v355;
      v358 = v357;
      v360 = v359;
      v362 = v361;
      v365 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v363, v364);
      objc_msgSend_setFrame_(v365, v366, v367, v356, v358, v360, v362);

      objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(self, v368, v369);
      v347 = v370;
      objc_msgSend__roomNameLabelInNavigationHeaderViewFrame(self, v371, v372);
      v353 = v373;
      v354 = 0.0;
    }

    v374 = objc_msgSend_transitionGridCellRoomNameLabel(self, v350, v351);
    objc_msgSend_setFrame_(v374, v375, v376, 0.0, 0.0, v347, v353);

    v379 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v377, v378);
    objc_msgSend_setAlpha_(v379, v380, v381, v354);

    v384 = objc_msgSend_transitionGridCellRoomNameLabel(self, v382, v383);
    objc_msgSend_setAlpha_(v384, v385, v386, v354);
  }

  v387 = objc_msgSend_transitionIconView(self, v257, v258);

  if (!v387)
  {
    v390 = objc_msgSend_smartGridViewController(self, v388, v389);
    v393 = objc_msgSend_homeCell(v390, v391, v392);
    v396 = objc_msgSend_iconView(v393, v394, v395);
    v398 = objc_msgSend_snapshotViewAfterScreenUpdates_(v396, v397, 0);
    objc_msgSend_setTransitionIconView_(self, v399, v398);

    v402 = objc_msgSend_view(self, v400, v401);
    v405 = objc_msgSend_animationView(v402, v403, v404);
    v408 = objc_msgSend_transitionIconView(self, v406, v407);
    objc_msgSend_addSubview_(v405, v409, v408);

    if (objc_msgSend_isExpanded(self, v410, v411))
    {
      objc_msgSend__iconViewInHomeGridCellFrame(self, v412, v413);
    }

    else
    {
      objc_msgSend__iconViewInNavigationHeaderViewFrame(self, v412, v413);
    }

    v420 = v416;
    v421 = v417;
    v422 = v418;
    v423 = v419;
    v424 = objc_msgSend_transitionIconView(self, v414, v415);
    objc_msgSend_setFrame_(v424, v425, v426, v420, v421, v422, v423);
  }

  if ((objc_msgSend_isExpanded(self, v388, v389) & 1) == 0)
  {
    v429 = objc_msgSend_view(self, v427, v428);
    v432 = objc_msgSend_compressedView(v429, v430, v431);
    objc_msgSend_frame(v432, v433, v434);
    v436 = v435;
    v438 = v437;

    objc_msgSend_transitionCompressedViewFrame(self, v439, v440);
    v442 = v441;
    v444 = v443;
    v452 = objc_msgSend_view(self, v445, v446);
    v449 = objc_msgSend_compressedView(v452, v447, v448);
    objc_msgSend_setFrame_(v449, v450, v451, v442, v444, v436, v438);
  }
}

- (void)_cleanupTransitionSubviews
{
  v4 = objc_msgSend_transitionIconView(self, a2, v2);
  objc_msgSend_removeFromSuperview(v4, v5, v6);

  objc_msgSend_setTransitionIconView_(self, v7, 0);
  v10 = objc_msgSend_transitionGridCellRoomNameLabel(self, v8, v9);
  objc_msgSend_removeFromSuperview(v10, v11, v12);

  objc_msgSend_setTransitionGridCellRoomNameLabel_(self, v13, 0);
  v16 = objc_msgSend_transitionGridCellRoomNameLabelEffectView(self, v14, v15);
  objc_msgSend_removeFromSuperview(v16, v17, v18);

  objc_msgSend_setTransitionGridCellRoomNameLabelEffectView_(self, v19, 0);
  v22 = objc_msgSend_transitionGridCellHomeNameLabel(self, v20, v21);
  objc_msgSend_removeFromSuperview(v22, v23, v24);

  objc_msgSend_setTransitionGridCellHomeNameLabel_(self, v25, 0);
  v28 = objc_msgSend_transitionGridCellHomeNameLabelEffectView(self, v26, v27);
  objc_msgSend_removeFromSuperview(v28, v29, v30);

  objc_msgSend_setTransitionGridCellHomeNameLabelEffectView_(self, v31, 0);
  v34 = objc_msgSend_transitionNavigationHeaderRoomNameLabel(self, v32, v33);
  objc_msgSend_removeFromSuperview(v34, v35, v36);

  objc_msgSend_setTransitionNavigationHeaderRoomNameLabel_(self, v37, 0);
  v40 = objc_msgSend_transitionNavigationHeaderRoomNameLabelEffectView(self, v38, v39);
  objc_msgSend_removeFromSuperview(v40, v41, v42);

  objc_msgSend_setTransitionNavigationHeaderRoomNameLabelEffectView_(self, v43, 0);
  v46 = objc_msgSend_transitionNavigationHeaderHomeNameLabel(self, v44, v45);
  objc_msgSend_removeFromSuperview(v46, v47, v48);

  objc_msgSend_setTransitionNavigationHeaderHomeNameLabel_(self, v49, 0);
  v52 = objc_msgSend_transitionNavigationHeaderHomeNameLabelEffectView(self, v50, v51);
  objc_msgSend_removeFromSuperview(v52, v53, v54);

  objc_msgSend_setTransitionNavigationHeaderHomeNameLabelEffectView_(self, v55, 0);
}

- (CGRect)_iconViewInHomeGridCellFrame
{
  v3 = objc_msgSend_smartGridViewController(self, a2, v2);
  v6 = objc_msgSend_homeCell(v3, v4, v5);
  v9 = objc_msgSend_iconView(v6, v7, v8);
  objc_msgSend_frame(v9, v10, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_homeNameLabelInHomeGridCellFrame
{
  v57 = objc_msgSend_smartGridViewController(self, a2, v2);
  v56 = objc_msgSend_homeCell(v57, v4, v5);
  v8 = objc_msgSend_verticalStackView(v56, v6, v7);
  objc_msgSend_frame(v8, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_smartGridViewController(self, v13, v14);
  v18 = objc_msgSend_homeCell(v15, v16, v17);
  v21 = objc_msgSend_verticalStackView(v18, v19, v20);
  objc_msgSend_frame(v21, v22, v23);
  v25 = v24;
  v28 = objc_msgSend_smartGridViewController(self, v26, v27);
  v31 = objc_msgSend_homeCell(v28, v29, v30);
  v34 = objc_msgSend_primaryLabel(v31, v32, v33);
  objc_msgSend_frame(v34, v35, v36);
  v38 = v37;
  v41 = objc_msgSend_smartGridViewController(self, v39, v40);
  v44 = objc_msgSend_homeCell(v41, v42, v43);
  v47 = objc_msgSend_primaryLabel(v44, v45, v46);
  objc_msgSend_frame(v47, v48, v49);
  v51 = v50;

  v52 = v12;
  v53 = v25;
  v54 = v38;
  v55 = v51;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)_roomNameLabelInHomeGridCellFrame
{
  v4 = objc_msgSend_smartGridViewController(self, a2, v2);
  v7 = objc_msgSend_homeCell(v4, v5, v6);
  v10 = objc_msgSend_verticalStackView(v7, v8, v9);
  objc_msgSend_frame(v10, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_smartGridViewController(self, v15, v16);
  v20 = objc_msgSend_homeCell(v17, v18, v19);
  v23 = objc_msgSend_verticalStackView(v20, v21, v22);
  objc_msgSend_spacing(v23, v24, v25);
  v27 = v14 + v26;
  v30 = objc_msgSend_smartGridViewController(self, v28, v29);
  v33 = objc_msgSend_homeCell(v30, v31, v32);
  v36 = objc_msgSend_primaryLabel(v33, v34, v35);
  objc_msgSend_frame(v36, v37, v38);
  v40 = v27 + v39;

  v43 = objc_msgSend_smartGridViewController(self, v41, v42);
  v46 = objc_msgSend_homeCell(v43, v44, v45);
  v49 = objc_msgSend_verticalStackView(v46, v47, v48);
  objc_msgSend_frame(v49, v50, v51);
  v53 = v52;
  v56 = objc_msgSend_smartGridViewController(self, v54, v55);
  v59 = objc_msgSend_homeCell(v56, v57, v58);
  v62 = objc_msgSend_secondaryLabel(v59, v60, v61);
  objc_msgSend_frame(v62, v63, v64);
  v66 = v65;
  v69 = objc_msgSend_smartGridViewController(self, v67, v68);
  v72 = objc_msgSend_homeCell(v69, v70, v71);
  v75 = objc_msgSend_secondaryLabel(v72, v73, v74);
  objc_msgSend_frame(v75, v76, v77);
  v79 = v78;

  v80 = v53;
  v81 = v40;
  v82 = v66;
  v83 = v79;
  result.size.height = v83;
  result.size.width = v82;
  result.origin.y = v81;
  result.origin.x = v80;
  return result;
}

- (CGRect)_iconViewInNavigationHeaderViewFrame
{
  v3 = objc_msgSend_dashboardContainerViewController(self, a2, v2);
  v6 = objc_msgSend_transitionSubviewFrames(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x29EDC5448]);
  objc_msgSend_CGRectValue(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_roomNameLabelInNavigationHeaderViewFrame
{
  v3 = objc_msgSend_dashboardContainerViewController(self, a2, v2);
  v6 = objc_msgSend_transitionSubviewFrames(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x29EDC5458]);
  objc_msgSend_CGRectValue(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_homeNameLabelInNavigationHeaderViewFrame
{
  v3 = objc_msgSend_dashboardContainerViewController(self, a2, v2);
  v6 = objc_msgSend_transitionSubviewFrames(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x29EDC5450]);
  objc_msgSend_CGRectValue(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)setURLHandler:(id)handler
{
  objc_storeStrong(&self->_URLHandler, handler);
  handlerCopy = handler;
  v9 = objc_msgSend_smartGridViewController(self, v6, v7);
  objc_msgSend_setURLHandler_(v9, v8, handlerCopy);
}

- (BOOL)isDeviceUnlockedForGridViewController:(id)controller
{
  selfCopy = self;
  v4 = objc_msgSend_delegate(self, a2, controller);
  LOBYTE(selfCopy) = objc_msgSend_isDeviceUnlockedForSmartGridContentViewController_(v4, v5, selfCopy);

  return selfCopy;
}

- (id)prepareForActionRequiringDeviceUnlockForGridViewController:(id)controller
{
  v4 = objc_alloc_init(MEMORY[0x29EDC5E50]);
  v7 = objc_msgSend_delegate(self, v5, v6);
  v10 = objc_msgSend_contentModuleContext(v7, v8, v9);

  if (v10)
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = sub_29C9A2D20;
    v15[3] = &unk_29F33ABD0;
    v16 = v4;
    objc_msgSend_requestAuthenticationWithCompletionHandler_(v10, v11, v15);
  }

  else
  {
    v12 = NAEmptyResult();
    objc_msgSend_finishWithResult_(v4, v13, v12);
  }

  return v4;
}

- (BOOL)_shouldDisplayHomeControlService
{
  v3 = objc_msgSend_smartGridViewController(self, a2, v2);
  v6 = objc_msgSend_itemManager(v3, v4, v5);
  v9 = objc_msgSend_allDisplayedItems(v6, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11) > 1;

  return v12;
}

- (void)displayHome:(id)home
{
  v44 = *MEMORY[0x29EDCA608];
  homeCopy = home;
  shouldDisplayHomeControlService = objc_msgSend__shouldDisplayHomeControlService(self, v5, v6);
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (shouldDisplayHomeControlService)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v38 = 138412802;
      v39 = v11;
      v40 = 2080;
      v41 = "[HUCCSmartGridContentViewController displayHome:]";
      v42 = 2112;
      v43 = homeCopy;
      _os_log_impl(&dword_29C992000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s displaying Home Control Service for %@", &v38, 0x20u);
    }

    objc_msgSend_setExpandedContentMode_(self, v12, 2);
    v15 = objc_msgSend_view(self, v13, v14);
    v18 = objc_msgSend_smartGridViewController(self, v16, v17);
    v21 = objc_msgSend_homeCell(v18, v19, v20);
    objc_msgSend_frame(v21, v22, v23);
    objc_msgSend_willMoveToExpandedStateWithAnimationStartFrame_(v15, v24, v25);

    v28 = objc_msgSend_delegate(self, v26, v27);
    v31 = objc_msgSend_contentModuleContext(v28, v29, v30);
    objc_msgSend_requestExpandModule(v31, v32, v33);
  }

  else
  {
    if (v9)
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v38 = 138412802;
      v39 = v35;
      v40 = 2080;
      v41 = "[HUCCSmartGridContentViewController displayHome:]";
      v42 = 2112;
      v43 = homeCopy;
      _os_log_impl(&dword_29C992000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s Opening Home app for %@", &v38, 0x20u);
    }

    objc_msgSend__openHomeApp(self, v36, v37);
  }
}

- (void)gridSizeMayHaveChanged
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "Requesting layout size update", v12, 2u);
  }

  v6 = objc_msgSend_delegate(self, v4, v5);
  v9 = objc_msgSend_contentModuleContext(v6, v7, v8);
  objc_msgSend_requestLayoutSizeUpdate(v9, v10, v11);
}

- (void)willPresentAccessoryControlsViewController:(id)controller
{
  v18 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = controllerCopy;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "Accessory controls will present: %@", &v16, 0xCu);
  }

  objc_msgSend_setExpandedContentMode_(self, v6, 1);
  objc_msgSend_setAccessoryControlsViewController_(self, v7, controllerCopy);
  v10 = objc_msgSend_delegate(self, v8, v9);
  v13 = objc_msgSend_contentModuleContext(v10, v11, v12);
  objc_msgSend_requestExpandModule(v13, v14, v15);
}

- (void)willDismissAccessoryControlsViewController:(id)controller
{
  v17 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = controllerCopy;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "Accessory controls will dismiss: %@", &v15, 0xCu);
  }

  objc_msgSend_setAccessoryControlsViewController_(self, v6, 0);
  v9 = objc_msgSend_delegate(self, v7, v8);
  v12 = objc_msgSend_contentModuleContext(v9, v10, v11);
  objc_msgSend_dismissModule(v12, v13, v14);
}

- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error
{
  v8 = objc_msgSend_delegate(self, a2, dashboard, error);
  v6 = objc_msgSend_contentModuleContext(v8, v4, v5);
  objc_msgSend_setHomeGestureDismissalAllowed_(v6, v7, 1);
}

- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_delegate(self, v5, v6);
  isDeviceUnlockedForSmartGridContentViewController = objc_msgSend_isDeviceUnlockedForSmartGridContentViewController_(v7, v8, self);

  if (isDeviceUnlockedForSmartGridContentViewController)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v12 = objc_msgSend_delegate(self, v10, v11);
    v15 = objc_msgSend_contentModuleContext(v12, v13, v14);

    if (v15)
    {
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 3221225472;
      v17[2] = sub_29C9A33FC;
      v17[3] = &unk_29F33A920;
      v18 = handlerCopy;
      objc_msgSend_requestAuthenticationWithCompletionHandler_(v15, v16, v17);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)requestDismissal
{
  v8 = objc_msgSend_delegate(self, a2, v2);
  v5 = objc_msgSend_contentModuleContext(v8, v3, v4);
  objc_msgSend_dismissModule(v5, v6, v7);
}

- (void)quickControlsPresentationDidUpdate:(BOOL)update
{
  updateCopy = update;
  v8 = objc_msgSend_delegate(self, a2, update);
  v6 = objc_msgSend_contentModuleContext(v8, v4, v5);
  objc_msgSend_setHomeGestureDismissalAllowed_(v6, v7, !updateCopy);
}

- (void)_setUpSmartGridContent
{
  v4 = objc_msgSend_activeAssertion(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v5, v6);
    v10 = objc_msgSend_homeManager(v7, v8, v9);
    v12 = objc_msgSend__beginActiveAssertionWithReason_(v10, v11, @"HUCCSmartGridModuleVisible");
    objc_msgSend_setActiveAssertion_(self, v13, v12);

    v16 = objc_msgSend_activeAssertion(self, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_sharedInstance(MEMORY[0x29EDC54D8], v17, v18);
      objc_msgSend_launchServiceSuspendedWithUserInfo_(v19, v20, MEMORY[0x29EDB8EA0]);

      v22 = objc_msgSend_policyWithDecision_(MEMORY[0x29EDC53E8], v21, 1);
      v25 = objc_msgSend_smartGridViewController(self, v23, v24);
      v28 = objc_msgSend_itemManager(v25, v26, v27);
      objc_msgSend_setReadPolicy_(v28, v29, v22);

      v30 = [HUCCDashboardContainerViewController alloc];
      v32 = objc_msgSend_initWithDelegate_(v30, v31, self);
      objc_msgSend_setDashboardContainerViewController_(self, v33, v32);

      v36 = objc_msgSend_dashboardContainerViewController(self, v34, v35);
      v39 = objc_msgSend_view(v36, v37, v38);
      v42 = objc_msgSend_view(self, v40, v41);
      objc_msgSend_setExpandedView_(v42, v43, v39);

      v46 = objc_msgSend_dashboardContainerViewController(self, v44, v45);
      objc_msgSend_addChildViewController_(self, v47, v46);

      v50 = objc_msgSend_dashboardContainerViewController(self, v48, v49);
      objc_msgSend_didMoveToParentViewController_(v50, v51, self);

      v54 = objc_msgSend_smartGridViewController(self, v52, v53);
      v57 = objc_msgSend_homeCell(v54, v55, v56);
      objc_msgSend_setHidden_(v57, v58, 0);

      objc_msgSend_setIsTransitioningToHomeControlService_(self, v59, 0);
    }
  }
}

- (void)_tearDownSmartGridContent
{
  v4 = objc_msgSend_activeAssertion(self, a2, v2);

  if (v4)
  {
    objc_msgSend_setIsExpanded_(self, v5, 0);
    v8 = objc_msgSend_dashboardContainerViewController(self, v6, v7);
    objc_msgSend_stopRemoteViewController(v8, v9, v10);

    v13 = objc_msgSend_view(self, v11, v12);
    objc_msgSend_resetToInitialState(v13, v14, v15);

    v18 = objc_msgSend_dashboardContainerViewController(self, v16, v17);
    objc_msgSend_removeFromParentViewController(v18, v19, v20);

    objc_msgSend_setDashboardContainerViewController_(self, v21, 0);
    objc_msgSend_setIsTransitioningToHomeControlService_(self, v22, 0);
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v64 = 0;
      _os_log_impl(&dword_29C992000, v23, OS_LOG_TYPE_DEFAULT, "Terminating HomeControlService", v64, 2u);
    }

    v26 = objc_msgSend_sharedInstance(MEMORY[0x29EDC54D8], v24, v25);
    objc_msgSend_dismissService(v26, v27, v28);

    v30 = objc_msgSend_policyWithDecision_(MEMORY[0x29EDC53E8], v29, 0);
    v33 = objc_msgSend_smartGridViewController(self, v31, v32);
    v36 = objc_msgSend_itemManager(v33, v34, v35);
    objc_msgSend_setReadPolicy_(v36, v37, v30);

    v40 = objc_msgSend_smartGridViewController(self, v38, v39);
    v42 = objc_msgSend_dismissQuickControlAnimated_wasDismissed_(v40, v41, 0, 0);

    v45 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v43, v44);
    v48 = objc_msgSend_homeManager(v45, v46, v47);
    v51 = objc_msgSend_homes(v48, v49, v50);
    objc_msgSend_na_each_(v51, v52, &unk_2A23EA6E8);

    v55 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v53, v54);
    v58 = objc_msgSend_homeManager(v55, v56, v57);
    v61 = objc_msgSend_activeAssertion(self, v59, v60);
    objc_msgSend__endActiveAssertion_(v58, v62, v61);

    objc_msgSend_setActiveAssertion_(self, v63, 0);
  }
}

- (double)preferredExpandedContentHeight
{
  v3 = objc_msgSend_dashboardContainerViewController(self, a2, v2);
  objc_msgSend_preferredExpandedSize(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)preferredExpandedContentWidth
{
  v3 = objc_msgSend_dashboardContainerViewController(self, a2, v2);
  objc_msgSend_preferredExpandedSize(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)_openHomeApp
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C9A3A68;
  v2[3] = &unk_29F33A8F8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x29EDCA578], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_showLockSecurityView:(BOOL)view
{
  viewCopy = view;
  v5 = objc_msgSend_view(self, a2, view);
  isShowingLockSecurity = objc_msgSend_isShowingLockSecurity(v5, v6, v7);

  if (viewCopy)
  {
    if (isShowingLockSecurity)
    {
      return;
    }

    v20 = objc_msgSend_view(self, v9, v10);
    v13 = objc_msgSend_smartGridViewController(self, v11, v12);
    v16 = objc_msgSend_mosaicLayout(v13, v14, v15);
    objc_msgSend_showLockSecurityWithFrameDelegate_(v20, v17, v16);
  }

  else
  {
    if (!isShowingLockSecurity)
    {
      return;
    }

    v20 = objc_msgSend_view(self, v9, v10);
    objc_msgSend_hideLockSecurity(v20, v18, v19);
  }
}

- (HUCCSmartGridContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUCCAccessoryControlsHosting)accessoryControlsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryControlsViewController);

  return WeakRetained;
}

- (CGRect)transitionCompressedViewFrame
{
  x = self->_transitionCompressedViewFrame.origin.x;
  y = self->_transitionCompressedViewFrame.origin.y;
  width = self->_transitionCompressedViewFrame.size.width;
  height = self->_transitionCompressedViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end