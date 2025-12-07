@interface AXLiveListenModuleViewController
- (AXLiveListenModuleViewController)init;
- (BOOL)canDismissPresentedContent;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)_updateSelectedStatus;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)buttonTouchDown:(id)down forEvent:(id)event;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)expandLiveListenModule;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)setPlatterContentAlpha:(double)alpha;
- (void)shortcutDidChangeSize:(id)size;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation AXLiveListenModuleViewController

- (AXLiveListenModuleViewController)init
{
  v22.receiver = self;
  v22.super_class = AXLiveListenModuleViewController;
  v2 = [(AXLiveListenModuleViewController *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x29EDC50A8]);
    v5 = objc_msgSend_initWithDelegate_andAvailableModules_(v3, v4, v2, &unk_2A23DF3E0);
    v6 = *(v2 + 130);
    *(v2 + 130) = v5;

    objc_msgSend_addChildViewController_(v2, v7, *(v2 + 130));
    objc_msgSend_didMoveToParentViewController_(*(v2 + 130), v8, v2);
    *(v2 + 132) = 0x3FF0000000000000;
    v10 = objc_msgSend_systemImageNamed_(MEMORY[0x29EDC7AC8], v9, @"mic.fill");
    v13 = objc_msgSend_configurationWithPointSize_(MEMORY[0x29EDC7AD0], v11, v12, 30.0);
    v15 = objc_msgSend_imageByApplyingSymbolConfiguration_(v10, v14, v13);
    objc_msgSend_setGlyphImage_(v2, v16, v15);

    v19 = objc_msgSend_systemRedColor(MEMORY[0x29EDC7A00], v17, v18);
    objc_msgSend_setSelectedGlyphColor_(v2, v20, v19);
  }

  return v2;
}

- (void)_updateSelectedStatus
{
  isLiveListenEnabled = objc_msgSend_isLiveListenEnabled(self, a2, v2);

  MEMORY[0x2A1C70FE8](self, sel_setSelected_, isLiveListenEnabled);
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v41 viewDidLoad];
  v5 = objc_msgSend_view(self, v3, v4);
  v8 = objc_msgSend_view(self->_shortcutController, v6, v7);
  objc_msgSend_addSubview_(v5, v9, v8);

  objc_initWeak(&location, self);
  v12 = objc_msgSend_buttonView(self, v10, v11);
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 3221225472;
  v38[2] = sub_29C9256A0;
  v38[3] = &unk_29F333E28;
  objc_copyWeak(&v39, &location);
  objc_msgSend__setAccessibilityTraitsBlock_(v12, v13, v38);

  v16 = objc_msgSend_buttonView(self, v14, v15);
  v17 = hearingLocString();
  objc_msgSend_setAccessibilityLabel_(v16, v18, v17);

  v21 = objc_msgSend_buttonView(self, v19, v20);
  objc_msgSend_setAccessibilityIdentifier_(v21, v22, @"AX_LIVE_LISTEN");

  v25 = objc_msgSend_buttonView(self, v23, v24);
  v26 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  objc_msgSend_setAccessibilityHint_(v25, v27, v26);

  v28 = hearingLocString();
  objc_msgSend_setTitle_(self, v29, v28);

  v32 = objc_msgSend_sharedInstance(MEMORY[0x29EDC50D0], v30, v31);
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = sub_29C925700;
  v36[3] = &unk_29F333E78;
  objc_copyWeak(&v37, &location);
  objc_msgSend_registerListener_forLiveListenLevelsHandler_(v32, v33, self, v36);

  objc_msgSend__updateSelectedStatus(self, v34, v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v5 viewWillLayoutSubviews];
  objc_msgSend__updateAlphas(self, v3, v4);
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v12 willTransitionToExpandedContentMode:?];
  if (modeCopy)
  {
    objc_msgSend_pauseSoundRecognitionIfNecessary(self, v5, v6);
  }

  else
  {
    objc_msgSend_restartSoundRecognitionIfNecessary(self, v5, v6);
  }

  v9 = objc_msgSend_contentModuleContext(self->_shortcutController, v7, v8);
  objc_msgSend_invalidateContainerViewsForPlatterTreatment(v9, v10, v11);
}

- (BOOL)canDismissPresentedContent
{
  v3 = objc_msgSend_expandedController(self->_shortcutController, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (void)shortcutDidChangeSize:(id)size
{
  v4 = objc_msgSend_view(self, a2, size);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  objc_msgSend_preferredExpandedContentHeight(self, v9, v10);
  v12 = v11;

  if (objc_msgSend_isExpanded(self, v13, v14))
  {
    objc_msgSend_setPreferredContentSize_(self, v15, v16, v8, v12);
  }

  v19 = objc_msgSend_contentModuleContext(self->_shortcutController, v15, v16);
  objc_msgSend_invalidateContainerViewsForPlatterTreatment(v19, v17, v18);
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = HCLogHearing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_29C924000, v7, OS_LOG_TYPE_DEFAULT, "Dismissing Control Center", v12, 2u);
  }

  v10 = objc_msgSend_presentedViewController(self, v8, v9);
  objc_msgSend_dismissViewControllerAnimated_completion_(v10, v11, animatedCopy, completionCopy);
}

- (void)expandLiveListenModule
{
  v5 = objc_msgSend_contentModuleContext(self->_shortcutController, a2, v2);
  objc_msgSend_requestExpandModule(v5, v3, v4);
}

- (void)pauseSoundRecognitionIfNecessary
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], a2, v2);
  v7 = objc_msgSend_soundDetectionState(v4, v5, v6);

  if (v7 == 2)
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_29C924000, v8, OS_LOG_TYPE_DEFAULT, "Pausing Sound Recognition for Live Listen UI", v13, 2u);
    }

    v11 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], v9, v10);
    objc_msgSend_setSoundDetectionState_(v11, v12, 1);

    self->_pausedSoundRecognition = 1;
  }
}

- (void)restartSoundRecognitionIfNecessary
{
  if (self->_pausedSoundRecognition)
  {
    v4 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], a2, v2);
    v7 = objc_msgSend_soundDetectionState(v4, v5, v6);

    if (v7 == 1)
    {
      v8 = AXLogUltron();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_29C924000, v8, OS_LOG_TYPE_DEFAULT, "Resuming Sound Recognition for Live Listen UI", v13, 2u);
      }

      v11 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], v9, v10);
      objc_msgSend_setSoundDetectionState_(v11, v12, 2);

      self->_pausedSoundRecognition = 0;
    }
  }
}

- (void)buttonTouchDown:(id)down forEvent:(id)event
{
  v6 = objc_msgSend_now(MEMORY[0x29EDB8DB0], a2, down, event);
  objc_msgSend_setTouchDownTime_(self, v5, v6);
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v5 = objc_msgSend_touchDownTime(self, a2, tapped, event);
  if (v5 && (v8 = v5, objc_msgSend_touchDownTime(self, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceNow(v9, v10, v11), v13 = fabs(v12), v9, v8, v13 <= 0.4))
  {
    objc_msgSend_setTouchDownTime_(self, v6, 0);
    if (liveListenStreamSelected())
    {
      isLiveListenEnabled = objc_msgSend_isLiveListenEnabled(self, v14, v15);
      v19 = objc_msgSend_sharedInstance(MEMORY[0x29EDC50D0], v17, v18);
      v22 = v19;
      if (isLiveListenEnabled)
      {
        objc_msgSend_stopLiveListen(v19, v20, v21);
      }

      else
      {
        objc_msgSend_startLiveListen(v19, v20, v21);
      }
    }

    else
    {

      MEMORY[0x2A1C70FE8](self, sel_expandLiveListenModule, v15);
    }
  }

  else
  {

    objc_msgSend_setTouchDownTime_(self, v6, 0);
  }
}

- (id)containerViewsForPlatterTreatment
{
  v10[1] = *MEMORY[0x29EDCA608];
  if (objc_msgSend_isExpanded(self, a2, v2))
  {
    v6 = objc_msgSend_containerViewsForPlatterTreatment(self->_shortcutController, v4, v5);
  }

  else
  {
    v7 = objc_msgSend_buttonView(self, v4, v5);
    v10[0] = v7;
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v8, v10, 1);
  }

  return v6;
}

- (void)setPlatterContentAlpha:(double)alpha
{
  if (self->_platterContentAlpha != alpha)
  {
    self->_platterContentAlpha = alpha;
    objc_msgSend__updateAlphas(self, a2, v3);
  }
}

- (void)_updateAlphas
{
  isExpanded = objc_msgSend_isExpanded(self, a2, v2);
  v7 = objc_msgSend_view(self->_shortcutController, v5, v6);
  v10 = v7;
  if (isExpanded)
  {
    objc_msgSend_platterContentAlpha(self, v8, v9);
    objc_msgSend_setAlpha_(v10, v11, v12);

    v24 = objc_msgSend_buttonView(self, v13, v14);
    objc_msgSend_setAlpha_(v24, v15, v16, 0.0);
  }

  else
  {
    objc_msgSend_setAlpha_(v7, v8, v9, 0.0);

    v24 = objc_msgSend_buttonView(self, v17, v18);
    objc_msgSend_platterContentAlpha(self, v19, v20);
    objc_msgSend_setAlpha_(v24, v21, v22, v23);
  }
}

@end