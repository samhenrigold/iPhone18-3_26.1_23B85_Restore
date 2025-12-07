@interface SBActivityViewController
- (CGSize)preferredActivityContentSize;
- (NSSet)audioCategoriesDisablingVolumeHUD;
- (SBActivityViewController)initWithActivityItem:(id)item;
- (SBActivityViewController)initWithActivityItem:(id)item sceneType:(int64_t)type payloadID:(id)d targetBundleIdentifier:(id)identifier;
- (SBActivityViewController)initWithActivityItem:(id)item viewController:(id)controller;
- (SBActivityViewControllerDelegate)delegate;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
- (void)_unlockAndLaunchAppIfPossible:(id)possible withAction:(id)action;
- (void)_viewWillLayoutSubviews;
- (void)activityHostViewController:(id)controller didSetIdleTimerDisabled:(BOOL)disabled;
- (void)activityHostViewController:(id)controller requestsLaunchWithAction:(id)action;
- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)change;
- (void)activityHostViewControllerHostShouldCancelTouches:(id)touches;
- (void)dealloc;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setVisibility:(unint64_t)visibility;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityViewController

- (SBActivityViewController)initWithActivityItem:(id)item sceneType:(int64_t)type payloadID:(id)d targetBundleIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  itemCopy = item;
  descriptor = [itemCopy descriptor];
  contentType = [descriptor contentType];
  if (type == 3)
  {
    if (contentType == 1)
    {
      ambientCompactDefaultMetrics = [MEMORY[0x277D67D08] ambientCompactDefaultMetrics];
      goto LABEL_17;
    }

    if (!contentType)
    {
      v16 = MEMORY[0x277D67D08];
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (type == 2)
  {
    if (contentType == 1)
    {
      v16 = MEMORY[0x277D67D08];
LABEL_15:
      ambientCompactDefaultMetrics = [v16 ambientDefaultMetrics];
      goto LABEL_17;
    }

    if (!contentType)
    {
      v15 = [identifierCopy isEqualToString:@"com.apple.chrono.WidgetRenderer-Activities"];
      v16 = MEMORY[0x277D67D08];
      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_10:
      ambientCompactDefaultMetrics = [v16 ambientWidgetMetrics];
LABEL_17:
      defaultMetrics = ambientCompactDefaultMetrics;
      goto LABEL_18;
    }

LABEL_13:
    defaultMetrics = 0;
    goto LABEL_18;
  }

  defaultMetrics = [MEMORY[0x277D67D08] defaultMetrics];
  if (type != 1)
  {
LABEL_18:
    v19 = [MEMORY[0x277CE9570] activityHostViewControllerWithDescriptor:descriptor sceneType:type metricsRequest:defaultMetrics targetBundleIdentifier:identifierCopy];
    goto LABEL_19;
  }

  v19 = [MEMORY[0x277CE9570] activityHostViewControllerWithDescriptor:descriptor metricsRequest:defaultMetrics payloadID:dCopy targetBundleIdentifier:identifierCopy];
LABEL_19:
  v20 = v19;
  v21 = [(SBActivityViewController *)self initWithActivityItem:itemCopy viewController:v19];

  return v21;
}

- (SBActivityViewController)initWithActivityItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBActivityViewController;
  v6 = [(SBActivityViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityItem, item);
  }

  return v7;
}

- (SBActivityViewController)initWithActivityItem:(id)item viewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SBActivityViewController;
  v9 = [(SBActivityViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityItem, item);
    objc_storeStrong(&v10->_activityHostViewController, controller);
  }

  return v10;
}

- (void)dealloc
{
  [(SBActivityViewController *)self bs_removeChildViewController:self->_activityHostViewController];
  [(ACUISActivityHostViewController *)self->_activityHostViewController invalidate];
  activityHostViewController = self->_activityHostViewController;
  self->_activityHostViewController = 0;

  [(BSInvalidatable *)self->_activeIdleTimerAssertion invalidate];
  activeIdleTimerAssertion = self->_activeIdleTimerAssertion;
  self->_activeIdleTimerAssertion = 0;

  v5.receiver = self;
  v5.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v5 dealloc];
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = SBActivityViewController;
  controllerCopy = controller;
  [(SBActivityViewController *)&v7 _preferredContentSizeDidChangeForChildViewController:controllerCopy];
  activityHostViewController = self->_activityHostViewController;

  if (activityHostViewController == controllerCopy)
  {
    [(ACUISActivityHostViewController *)activityHostViewController preferredContentSize:v7.receiver];
    [(SBActivityViewController *)self setPreferredContentSize:?];
    view = [(SBActivityViewController *)self view];
    [view layoutIfNeeded];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v5 viewDidLoad];
  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  [activityHostViewController setDelegate:self];

  activityHostViewController2 = [(SBActivityViewController *)self activityHostViewController];
  [(SBActivityViewController *)self bs_addChildViewController:activityHostViewController2];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v3 viewWillLayoutSubviews];
  [(SBActivityViewController *)self _viewWillLayoutSubviews];
}

- (void)_viewWillLayoutSubviews
{
  v24 = *MEMORY[0x277D85DE8];
  view = [(SBActivityViewController *)self view];
  [view bounds];
  v5 = v4;

  [(SBActivityViewController *)self preferredActivityContentSize];
  v7 = v6;
  v9 = v8;
  traitCollection = [(SBActivityViewController *)self traitCollection];
  [traitCollection displayScale];

  BSFloatRoundForScale();
  v12 = v11;
  v13 = BSFloatRoundForScale();
  v15 = v14;
  if (v7 < v5)
  {
    v5 = v7;
  }

  v16 = SBLogActivity(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    activityIdentifier = [(ACUISActivityHostViewController *)self->_activityHostViewController activityIdentifier];
    v25.origin.x = v12;
    v25.origin.y = v15;
    v25.size.width = v5;
    v25.size.height = v9;
    v18 = NSStringFromCGRect(v25);
    v20 = 138543618;
    v21 = activityIdentifier;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Activity[%{public}@] Setting host view controller frame: %@", &v20, 0x16u);
  }

  view2 = [(ACUISActivityHostViewController *)self->_activityHostViewController view];
  [view2 setFrame:{v12, v15, v5, v9}];
}

- (CGSize)preferredActivityContentSize
{
  [(ACUISActivityHostViewController *)self->_activityHostViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v4 viewWillAppear:appear];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setVisibility:1];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setPresentationMode:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v4 viewDidDisappear:disappear];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setVisibility:0];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setPresentationMode:0];
}

- (void)setPresentationMode:(unint64_t)mode
{
  if (self->_presentationMode != mode)
  {
    self->_presentationMode = mode;
    [(ACUISActivityHostViewController *)self->_activityHostViewController setPresentationMode:?];
  }
}

- (void)setVisibility:(unint64_t)visibility
{
  if (self->_visibility != visibility)
  {
    self->_visibility = visibility;
    [(ACUISActivityHostViewController *)self->_activityHostViewController setVisibility:?];
  }
}

- (NSSet)audioCategoriesDisablingVolumeHUD
{
  audioCategoriesDisablingVolumeHUD = [(ACUISActivityHostViewController *)self->_activityHostViewController audioCategoriesDisablingVolumeHUD];
  if (audioCategoriesDisablingVolumeHUD)
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:audioCategoriesDisablingVolumeHUD];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_unlockAndLaunchAppIfPossible:(id)possible withAction:(id)action
{
  v29[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  possibleCopy = possible;
  BSDispatchQueueAssertMain();
  activityIdentifier = [possibleCopy activityIdentifier];
  activitySceneDescriptor = [possibleCopy activitySceneDescriptor];

  activityDescriptor = [activitySceneDescriptor activityDescriptor];
  platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];

  if (platterTargetBundleIdentifier)
  {
    v12 = MEMORY[0x277D0AD60];
    v28[0] = *MEMORY[0x277D0ABD0];
    if (actionCopy)
    {
      v27 = actionCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    v15 = *MEMORY[0x277D0AC58];
    v29[0] = v13;
    v29[1] = MEMORY[0x277CBEC38];
    v16 = *MEMORY[0x277D0AC70];
    v28[1] = v15;
    v28[2] = v16;
    v29[2] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v14 = [v12 optionsWithDictionary:v17];

    if (actionCopy)
    {
    }

    v19 = SBLogActivity(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v24 = activityIdentifier;
      v25 = 2113;
      v26 = actionCopy;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Activity[%{public}@] Sending open application request for %{private}@", buf, 0x16u);
    }

    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke;
    v21[3] = &unk_2783B49B8;
    v22 = activityIdentifier;
    [serviceWithDefaultShellEndpoint openApplication:platterTargetBundleIdentifier withOptions:v14 completion:v21];
  }

  else
  {
    v14 = SBLogActivity(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [SBActivityViewController _unlockAndLaunchAppIfPossible:activityIdentifier withAction:v14];
    }
  }
}

void __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Activity[%{public}@] Open application from banner succeeded.", &v8, 0xCu);
  }
}

- (void)activityHostViewController:(id)controller requestsLaunchWithAction:(id)action
{
  controllerCopy = controller;
  actionCopy = action;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SBActivityViewController_activityHostViewController_requestsLaunchWithAction___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v11 = controllerCopy;
  v12 = actionCopy;
  v8 = actionCopy;
  v9 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)activityHostViewControllerHostShouldCancelTouches:(id)touches
{
  delegate = [(SBActivityViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate activityViewControllerContentRequestsCancellingGesture:self];
  }
}

- (void)activityHostViewController:(id)controller didSetIdleTimerDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  delegate = [(SBActivityViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate activityViewController:self didSetIdleTimerDisabled:disabledCopy];
  }

  else
  {
    activeIdleTimerAssertion = [(SBActivityViewController *)self activeIdleTimerAssertion];

    if (disabledCopy)
    {
      if (!activeIdleTimerAssertion)
      {
        v7 = +[SBIdleTimerGlobalCoordinator sharedInstance];
        v8 = MEMORY[0x277CCACA8];
        activityItem = [(SBActivityViewController *)self activityItem];
        v10 = [v8 stringWithFormat:@"requested by %@", activityItem];
        v11 = [v7 acquireIdleTimerDisableAssertionForReason:v10];

        [(SBActivityViewController *)self setActiveIdleTimerAssertion:v11];
      }
    }

    else if (activeIdleTimerAssertion)
    {
      activeIdleTimerAssertion2 = [(SBActivityViewController *)self activeIdleTimerAssertion];
      [activeIdleTimerAssertion2 invalidate];

      [(SBActivityViewController *)self setActiveIdleTimerAssertion:0];
    }
  }
}

- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)change
{
  delegate = [(SBActivityViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate activityViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
  }
}

- (SBActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_unlockAndLaunchAppIfPossible:(uint64_t)a1 withAction:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "Activity[%{public}@] Unable to resolve container bundle identifier", &v2, 0xCu);
}

void __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Activity[%{public}@] Open application from banner failed: %{public}@", &v4, 0x16u);
}

@end