@interface AMUIPosterSwitcherViewController
- (AMUIPosterSwitcherViewControllerDelegate)delegate;
- (BOOL)handleDismiss;
- (BOOL)posterCategoryViewController:(id)controller wantsBiometricAuthenticationBlockedForDeepUserInteraction:(BOOL)interaction;
- (BOOL)posterCategoryViewControllerHasInlineAuthenticated:(id)authenticated;
- (BOOL)posterCategoryViewControllerIsAuthenticated:(id)authenticated;
- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings;
- (BOOL)viewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier;
- (NSDictionary)activeConfigurationMetadata;
- (PRSPosterConfiguration)mostVisibleConfiguration;
- (UIView)backgroundView;
- (UIView)contentView;
- (id)_switcherItemForConfiguration:(id)configuration;
- (id)_unsettledSentinel;
- (id)ambientDefaultsForViewController:(id)controller;
- (id)createUnlockRequestForViewController:(id)controller;
- (id)defaultWidgetDescriptorStacksForViewController:(id)controller;
- (id)posterCategoryViewControllerAuthenticationHandler:(id)handler;
- (id)widgetHostManagerForViewController:(id)controller;
- (void)dealloc;
- (void)invalidate;
- (void)noteAmbientViewControllingDelegateDidUpdate;
- (void)posterCategoryViewController:(id)controller didSetBiometricAuthenticationDisabled:(BOOL)disabled;
- (void)posterCategoryViewController:(id)controller didSetInlineAuthenticationViewVisible:(BOOL)visible;
- (void)posterCategoryViewController:(id)controller didSetPasscodeVisible:(BOOL)visible;
- (void)posterCategoryViewController:(id)controller didSettleOnConfiguration:(id)configuration interactive:(BOOL)interactive;
- (void)posterCategoryViewControllerDidSuccessfulyCompleteInlineAuthentication:(id)authentication;
- (void)requestUnlockForViewController:(id)controller withRequest:(id)request completion:(id)completion;
- (void)setConfigurations:(id)configurations;
- (void)setDateProvider:(id)provider;
- (void)switcher:(id)switcher didSettleOnItem:(id)item interactive:(BOOL)interactive;
- (void)switcher:(id)switcher transitionDidBegin:(id)begin;
- (void)switcher:(id)switcher transitionDidEnd:(id)end;
- (void)switcher:(id)switcher transitioningFromItem:(id)item toItem:(id)toItem progress:(double)progress;
- (void)switcher:(id)switcher updateItem:(id)item view:(id)view forPresentationProgress:(double)progress;
- (void)viewController:(id)controller didUpdateActiveConfigurationMetadata:(id)metadata;
- (void)viewControllerWillBeginConfiguration:(id)configuration;
- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)overlay;
- (void)viewControllerWillEndConfiguration:(id)configuration;
- (void)viewControllerWillEndShowingTemporaryOverlay:(id)overlay;
- (void)viewDidLoad;
@end

@implementation AMUIPosterSwitcherViewController

- (void)dealloc
{
  [(AMUIPosterSwitcherViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = AMUIPosterSwitcherViewController;
  [(AMUIPosterSwitcherViewController *)&v3 dealloc];
}

- (void)setConfigurations:(id)configurations
{
  v104 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = configurationsCopy;
  v4 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v92;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v92 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v91 + 1) + 8 * i);
        providerBundleIdentifier = [v8 providerBundleIdentifier];
        v10 = [providerBundleIdentifier isEqual:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"];

        if (v10)
        {
          v90 = 0;
          v11 = [v8 pr_loadAmbientConfigurationWithError:&v90];
          v12 = v90;
          v13 = v12;
          if (v11)
          {
            if (([v11 hidden] & 1) == 0)
            {
              [v73 addObject:v8];
            }
          }

          else
          {
            v14 = AMUILogSwitcher(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v100 = v8;
              v101 = 2112;
              v102 = v13;
              _os_log_error_impl(&dword_23F38B000, v14, OS_LOG_TYPE_ERROR, "Failed to load ambient configuration from configuration %@ with error %@", buf, 0x16u);
            }
          }
        }

        else
        {
          [v73 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
    }

    while (v5);
  }

  v15 = [v73 copy];
  configurations = self->_configurations;
  self->_configurations = v15;

  v17 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v18 = self->_configurations;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v86 objects:v98 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v87;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v87 != v21)
        {
          objc_enumerationMutation(v18);
        }

        providerBundleIdentifier2 = [*(*(&v86 + 1) + 8 * j) providerBundleIdentifier];
        [v17 addObject:providerBundleIdentifier2];
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v86 objects:v98 count:16];
    }

    while (v20);
  }

  v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v25 = self->_configurations;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v82 objects:v97 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v83;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v83 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v82 + 1) + 8 * k);
        providerBundleIdentifier3 = [v30 providerBundleIdentifier];
        array = [v24 objectForKeyedSubscript:providerBundleIdentifier3];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v24 setObject:array forKeyedSubscript:providerBundleIdentifier3];
        }

        [array addObject:v30];
      }

      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v82 objects:v97 count:16];
    }

    while (v27);
  }

  selfCopy2 = self;
  v34 = [(NSArray *)self->_items bs_map:&__block_literal_global_2];
  v35 = v34;
  v36 = MEMORY[0x277CBEBF8];
  if (v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = MEMORY[0x277CBEBF8];
  }

  v38 = v37;

  array2 = [v17 array];
  v40 = [array2 differenceFromArray:v38];

  v69 = v40;
  if ([v40 hasChanges])
  {
    v67 = v38;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v42 = self->_items;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v78 objects:v96 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v79;
      do
      {
        v46 = 0;
        do
        {
          if (*v79 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v78 + 1) + 8 * v46);
          if (v47)
          {
            v48 = *(v47 + 32);
          }

          else
          {
            v48 = 0;
          }

          [dictionary setObject:v47 forKeyedSubscript:v48];
          ++v46;
        }

        while (v44 != v46);
        v49 = [(NSArray *)v42 countByEnumeratingWithState:&v78 objects:v96 count:16];
        v44 = v49;
      }

      while (v49);
    }

    v68 = v17;

    if (self->_items)
    {
      items = self->_items;
    }

    else
    {
      items = v36;
    }

    v51 = [(NSArray *)items mutableCopy];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v71 = v69;
    v52 = [v71 countByEnumeratingWithState:&v74 objects:v95 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v75;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v75 != v54)
          {
            objc_enumerationMutation(v71);
          }

          v56 = *(*(&v74 + 1) + 8 * m);
          changeType = [v56 changeType];
          if (changeType == 1)
          {
            [v51 removeObjectAtIndex:{objc_msgSend(v56, "index")}];
          }

          else if (!changeType)
          {
            object = [v56 object];
            v59 = [v24 objectForKeyedSubscript:object];
            v60 = [dictionary objectForKeyedSubscript:object];
            if (!v60)
            {
              v60 = [AMUIPosterExtensionSwitcherItem itemWithProviderBundleIdentifier:object configurations:v59 posterCategoryViewControllerDelegate:self dateProvider:self->_dateProvider];
            }

            [v51 insertObject:v60 atIndex:{objc_msgSend(v56, "index")}];
          }
        }

        v53 = [v71 countByEnumeratingWithState:&v74 objects:v95 count:16];
      }

      while (v53);
    }

    v61 = [v51 copy];
    selfCopy2 = self;
    v62 = self->_items;
    self->_items = v61;

    [(AMUISwitcherViewController *)self->_extensionSwitcherViewController reload];
    v17 = v68;
    v38 = v67;
  }

  if ([(NSArray *)selfCopy2->_items count])
  {
    v63 = 0;
    do
    {
      v64 = [v17 objectAtIndexedSubscript:v63];
      v65 = [(NSArray *)selfCopy2->_items objectAtIndexedSubscript:v63];
      v66 = [v24 objectForKeyedSubscript:v64];
      [(AMUIPosterExtensionSwitcherItem *)v65 setConfigurations:v66];

      ++v63;
    }

    while (v63 < [(NSArray *)selfCopy2->_items count]);
  }
}

- (UIView)contentView
{
  visibleItems = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController visibleItems];
  if ([visibleItems count] == 1)
  {
    firstObject = [visibleItems firstObject];
    v4 = objc_opt_class();
    v5 = firstObject;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (v8)
    {
      posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)v8 posterCategoryViewController];
      contentView = [posterCategoryViewController contentView];
    }

    else
    {
      contentView = 0;
    }
  }

  else
  {
    contentView = 0;
  }

  return contentView;
}

- (UIView)backgroundView
{
  view = [(AMUIPosterSwitcherViewController *)self view];
  visibleItems = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController visibleItems];
  if ([visibleItems count] == 1)
  {
    firstObject = [visibleItems firstObject];
    v6 = objc_opt_class();
    v7 = firstObject;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)v9 posterCategoryViewController];
      backgroundView = [posterCategoryViewController backgroundView];

      view = backgroundView;
    }
  }

  return view;
}

- (void)setDateProvider:(id)provider
{
  v16 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  objc_storeStrong(&self->_dateProvider, provider);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AMUIPosterExtensionSwitcherItem *)*(*(&v11 + 1) + 8 * v10++) setDateProvider:?];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = AMUIPosterSwitcherViewController;
  [(AMUIPosterSwitcherViewController *)&v17 viewDidLoad];
  v3 = +[AMUIPosterSwitcherDomain rootSettings];
  settings = self->_settings;
  self->_settings = v3;

  view = [(AMUIPosterSwitcherViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [[AMUISwitcherViewController alloc] initWithLayout:self];
  extensionSwitcherViewController = self->_extensionSwitcherViewController;
  self->_extensionSwitcherViewController = v14;

  [(AMUISwitcherViewController *)self->_extensionSwitcherViewController setDataSource:self];
  [(AMUISwitcherViewController *)self->_extensionSwitcherViewController setDelegate:self];
  view2 = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController view];
  [view2 setFrame:{v7, v9, v11, v13}];
  [view2 setAutoresizingMask:18];
  [(AMUIPosterSwitcherViewController *)self bs_addChildViewController:self->_extensionSwitcherViewController];
}

- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings
{
  v15 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  settingsCopy = settings;
  [(AMUIPosterSwitcherViewController *)self loadViewIfNeeded];
  isScrollingInteractively = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController isScrollingInteractively];
  if (!isScrollingInteractively)
  {
    v9 = [(AMUIPosterSwitcherViewController *)self _switcherItemForConfiguration:configurationCopy];
    if (v9)
    {
      [(AMUIPosterSwitcherViewController *)settingsCopy updatePosterConfiguration:&v9->isa withAnimationSettings:configurationCopy];
      v11 = 1;
      goto LABEL_9;
    }

    serverUUID = AMUILogSwitcher(0);
    if (os_log_type_enabled(serverUUID, OS_LOG_TYPE_ERROR))
    {
      [AMUIPosterSwitcherViewController updatePosterConfiguration:configurationCopy withAnimationSettings:serverUUID];
    }

    goto LABEL_7;
  }

  v9 = AMUILogSwitcher(isScrollingInteractively);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    serverUUID = [configurationCopy serverUUID];
    v13 = 138543362;
    v14 = serverUUID;
    _os_log_impl(&dword_23F38B000, v9, OS_LOG_TYPE_INFO, "horizontal switcher ignoring update to %{public}@ due to interactive scroll", &v13, 0xCu);
LABEL_7:
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)invalidate
{
  [(AMUIPosterSwitcherViewController *)self setConfigurations:MEMORY[0x277CBEBF8]];
  unsettledAssertion = self->_unsettledAssertion;

  [(BSInvalidatable *)unsettledAssertion invalidate];
}

- (NSDictionary)activeConfigurationMetadata
{
  visibleItems = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController visibleItems];
  if ([visibleItems count] == 1)
  {
    firstObject = [visibleItems firstObject];
    v4 = objc_opt_class();
    v5 = firstObject;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (v8)
    {
      posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)v8 posterCategoryViewController];
      activeConfigurationMetadata = [posterCategoryViewController activeConfigurationMetadata];
    }

    else
    {
      activeConfigurationMetadata = 0;
    }
  }

  else
  {
    activeConfigurationMetadata = 0;
  }

  return activeConfigurationMetadata;
}

- (void)noteAmbientViewControllingDelegateDidUpdate
{
  v8 = **(self + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(self + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)*(*(self + 8) + 8 * v9) posterCategoryViewController];
      [posterCategoryViewController noteAmbientViewControllingDelegateDidUpdate];

      v9 = v9 + 1;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:self objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (BOOL)handleDismiss
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)*(*(&v10 + 1) + 8 * i) posterCategoryViewController];
        v5 |= [posterCategoryViewController handleDismiss];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

void __64__AMUIPosterSwitcherViewController_switcher_transitionDidBegin___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 serverUUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)switcher:(id)switcher transitioningFromItem:(id)item toItem:(id)toItem progress:(double)progress
{
  v8 = [(AMUIPosterSwitcherViewController *)self delegate:switcher];
  [v8 posterSwitcherViewController:self isTransitioningSettled:progress == 1.0];
}

- (void)switcher:(id)switcher transitionDidEnd:(id)end
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [end userInfoObjectForKey:@"cancelTouchesAssertions"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)posterCategoryViewController:(id)controller didSettleOnConfiguration:(id)configuration interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  v13[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v8 = [(AMUIPosterSwitcherViewController *)self _switcherItemForConfiguration:configurationCopy];
  visibleItems = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController visibleItems];
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = BSEqualArrays();

  if (v11)
  {
    delegate = [(AMUIPosterSwitcherViewController *)self delegate];
    [delegate posterSwitcherViewController:self didSettleOnConfiguration:configurationCopy interactive:interactiveCopy];
  }
}

- (id)createUnlockRequestForViewController:(id)controller
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v5 = [delegate createUnlockRequestForViewController:self];

  return v5;
}

- (void)requestUnlockForViewController:(id)controller withRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate requestUnlockForViewController:self withRequest:requestCopy completion:completionCopy];
}

- (void)viewControllerWillBeginConfiguration:(id)configuration
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate viewControllerWillBeginConfiguration:self];
}

- (void)viewControllerWillEndConfiguration:(id)configuration
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate viewControllerWillEndConfiguration:self];
}

- (void)viewController:(id)controller didUpdateActiveConfigurationMetadata:(id)metadata
{
  metadataCopy = metadata;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate viewController:self didUpdateActiveConfigurationMetadata:metadataCopy];
}

- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate viewControllerWillBeginShowingTemporaryOverlay:overlayCopy];
}

- (void)viewControllerWillEndShowingTemporaryOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate viewControllerWillEndShowingTemporaryOverlay:overlayCopy];
}

- (id)widgetHostManagerForViewController:(id)controller
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v5 = [delegate widgetHostManagerForViewController:self];

  return v5;
}

- (id)ambientDefaultsForViewController:(id)controller
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v5 = [delegate ambientDefaultsForViewController:self];

  return v5;
}

- (BOOL)viewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v9 = [delegate viewController:controllerCopy isApplicationVisibleWithBundleIdentifier:identifierCopy];

  return v9;
}

- (id)defaultWidgetDescriptorStacksForViewController:(id)controller
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v5 = [delegate defaultWidgetDescriptorStacksForViewController:self];

  return v5;
}

- (BOOL)posterCategoryViewControllerIsAuthenticated:(id)authenticated
{
  selfCopy = self;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate posterSwitcherViewControllerIsAuthenticated:selfCopy];

  return selfCopy;
}

- (id)posterCategoryViewControllerAuthenticationHandler:(id)handler
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v5 = [delegate posterSwitcherViewControllerAuthenticationHandler:self];

  return v5;
}

- (void)posterCategoryViewController:(id)controller didSetPasscodeVisible:(BOOL)visible
{
  visibleCopy = visible;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate posterSwitcherViewController:self didSetPasscodeVisible:visibleCopy];
}

- (void)posterCategoryViewController:(id)controller didSetInlineAuthenticationViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate posterSwitcherViewController:self didSetInlineAuthenticationViewVisible:visibleCopy];
}

- (void)posterCategoryViewControllerDidSuccessfulyCompleteInlineAuthentication:(id)authentication
{
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate posterSwitcherViewControllerDidSuccessfullyCompleteInlineAuthentication:self];
}

- (BOOL)posterCategoryViewControllerHasInlineAuthenticated:(id)authenticated
{
  selfCopy = self;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate posterSwitcherViewControllerHasInlineAuthenticated:selfCopy];

  return selfCopy;
}

- (void)posterCategoryViewController:(id)controller didSetBiometricAuthenticationDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  [delegate posterSwitcherViewController:self didSetBiometricAuthenticationDisabled:disabledCopy];
}

- (BOOL)posterCategoryViewController:(id)controller wantsBiometricAuthenticationBlockedForDeepUserInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  LOBYTE(interactionCopy) = [delegate posterSwitcherViewController:self wantsBiometricAuthenticationBlockedForDeepUserInteraction:interactionCopy];

  return interactionCopy;
}

- (void)switcher:(id)switcher updateItem:(id)item view:(id)view forPresentationProgress:(double)progress
{
  switcherCopy = switcher;
  itemCopy = item;
  viewCopy = view;
  exitingCardBehaviorScaleDownOnly = [(AMUIPosterSwitcherSettings *)self->_settings exitingCardBehaviorScaleDownOnly];
  _unsettledSentinel = [(AMUIPosterSwitcherViewController *)self _unsettledSentinel];
  [(AMUICountingSentinel *)_unsettledSentinel increment];
  if (!self->_unsettledAssertion)
  {
    v16 = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController acquireUnsettledAssertionForReason:@"posterExtensionSwitcherTransition"];
    unsettledAssertion = self->_unsettledAssertion;
    self->_unsettledAssertion = v16;

    objc_initWeak(&location, self);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __85__AMUIPosterSwitcherViewController_switcher_updateItem_view_forPresentationProgress___block_invoke;
    v39[3] = &unk_278C75D88;
    objc_copyWeak(&v40, &location);
    [(AMUICountingSentinel *)_unsettledSentinel performWhenCountAtZero:v39];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  v18 = fabs(progress + -0.5);
  v19 = v18 + v18;
  if (exitingCardBehaviorScaleDownOnly)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = v19;
  }

  v21 = self->_settings;
  location = 0;
  v38 = 0.0;
  [(AMUIPosterSwitcherSettings *)v21 horizontalScaleDampingRatio];
  v23 = v22;
  [(AMUIPosterSwitcherSettings *)v21 horizontalScaleResponse];
  AMUIConvertSpringDampingRatioAndResponseToTensionAndFriction(&location, &v38, v23, v24);
  v25 = MEMORY[0x277D75D18];
  v26 = location;
  v27 = v38;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __85__AMUIPosterSwitcherViewController_switcher_updateItem_view_forPresentationProgress___block_invoke_2;
  v33[3] = &unk_278C75F80;
  v34 = v21;
  v35 = viewCopy;
  v36 = progressCopy;
  progressCopy2 = progress;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __85__AMUIPosterSwitcherViewController_switcher_updateItem_view_forPresentationProgress___block_invoke_3;
  v31[3] = &unk_278C75FA8;
  v32 = _unsettledSentinel;
  v28 = _unsettledSentinel;
  v29 = viewCopy;
  v30 = v21;
  [v25 _animateUsingSpringWithTension:1 friction:v33 interactive:v31 animations:*&v26 completion:v27];
}

void __85__AMUIPosterSwitcherViewController_switcher_updateItem_view_forPresentationProgress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[128] invalidate];
    v2 = v3[128];
    v3[128] = 0;

    WeakRetained = v3;
  }
}

uint64_t __85__AMUIPosterSwitcherViewController_switcher_updateItem_view_forPresentationProgress___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) horizontalExitingCardTargetScale];
  BSFloatByLinearlyInterpolatingFloats();
  v2 = *(a1 + 40);
  CGAffineTransformMakeScale(&v5, v3, v3);
  [v2 setTransform:&v5];
  [*(a1 + 32) exitingCardTargetOpacity];
  BSFloatByLinearlyInterpolatingFloats();
  return [*(a1 + 40) setAlpha:?];
}

- (id)_switcherItemForConfiguration:(id)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = v9[2];
        }

        else
        {
          v10 = 0;
        }

        if ([v10 containsObject:{configurationCopy, v13}])
        {
          v6 = v9;
          goto LABEL_15;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v11;
    }

    while (v11);
  }

LABEL_15:

  return v6;
}

- (id)_unsettledSentinel
{
  lazy_unsettledSentinel = self->_lazy_unsettledSentinel;
  if (!lazy_unsettledSentinel)
  {
    v4 = objc_alloc_init(AMUICountingSentinel);
    v5 = self->_lazy_unsettledSentinel;
    self->_lazy_unsettledSentinel = v4;

    lazy_unsettledSentinel = self->_lazy_unsettledSentinel;
  }

  return lazy_unsettledSentinel;
}

- (AMUIPosterSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

id __54__AMUIPosterSwitcherViewController_setConfigurations___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

- (PRSPosterConfiguration)mostVisibleConfiguration
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  visibleItems = [(AMUISwitcherViewController *)self->_extensionSwitcherViewController visibleItems];
  v4 = [visibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v5 = 0;
    v7 = *v18;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(visibleItems);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [(AMUISwitcherViewController *)self->_extensionSwitcherViewController presentationProgressForItem:v10];
        if (v11 > v8)
        {
          v12 = v11;
          v13 = v10;

          v8 = v12;
          v5 = v13;
        }
      }

      v6 = [visibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)v5 posterCategoryViewController];
  mostVisibleConfiguration = [posterCategoryViewController mostVisibleConfiguration];

  return mostVisibleConfiguration;
}

- (void)switcher:(id)switcher didSettleOnItem:(id)item interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  itemCopy = item;
  delegate = [(AMUIPosterSwitcherViewController *)self delegate];
  v9 = objc_opt_class();
  v15 = itemCopy;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)v11 posterCategoryViewController];

  visibleConfigurations = [posterCategoryViewController visibleConfigurations];

  if ([visibleConfigurations count] == 1)
  {
    firstObject = [visibleConfigurations firstObject];
    [delegate posterSwitcherViewController:self didSettleOnConfiguration:firstObject interactive:interactiveCopy];
  }
}

- (void)switcher:(id)switcher transitionDidBegin:(id)begin
{
  v49 = *MEMORY[0x277D85DE8];
  switcherCopy = switcher;
  beginCopy = begin;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = self->_items;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v9);
        }

        posterCategoryViewController = [(AMUIPosterExtensionSwitcherItem *)*(*(&v40 + 1) + 8 * v12) posterCategoryViewController];
        cancelTouchesForCurrentEventInHostedContent = [posterCategoryViewController cancelTouchesForCurrentEventInHostedContent];
        if (cancelTouchesForCurrentEventInHostedContent)
        {
          [v8 addObject:cancelTouchesForCurrentEventInHostedContent];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);
  }

  [beginCopy setUserInfoObject:v8 forKey:@"cancelTouchesAssertions"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  fromItem = [beginCopy fromItem];
  v17 = objc_opt_class();
  v18 = fromItem;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  posterCategoryViewController2 = [(AMUIPosterExtensionSwitcherItem *)v20 posterCategoryViewController];
  mostVisibleConfiguration = [posterCategoryViewController2 mostVisibleConfiguration];

  if (mostVisibleConfiguration)
  {
    [WeakRetained posterSwitcherViewController:self willSwitchFromConfiguration:mostVisibleConfiguration interactive:{objc_msgSend(beginCopy, "isInteractive")}];
  }

  if ([beginCopy isInteractive])
  {
    toItem = [beginCopy toItem];
    v24 = objc_opt_class();
    v25 = toItem;
    if (v24)
    {
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      v29 = v27[4];
      v30 = [WeakRetained posterSwitcherViewController:self requestsLastSelectedConfigurationUUIDForProviderBundleIdentifier:v29];

      if (v30)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v45 = __Block_byref_object_copy_;
        v46 = __Block_byref_object_dispose_;
        v47 = 0;
        v31 = v27[2];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __64__AMUIPosterSwitcherViewController_switcher_transitionDidBegin___block_invoke;
        v37[3] = &unk_278C75F58;
        v38 = v30;
        v39 = buf;
        [v31 enumerateObjectsUsingBlock:v37];

        v32 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = AMUILogSwitcher(v28);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      if (v27)
      {
        v34 = v27[4];
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      *buf = 138412546;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v32;
      _os_log_impl(&dword_23F38B000, v33, OS_LOG_TYPE_DEFAULT, "Interactive transition beginning to provider %@. Pre-selecting configuration %@", buf, 0x16u);
    }

    if (v32)
    {
      posterCategoryViewController3 = [(AMUIPosterExtensionSwitcherItem *)v27 posterCategoryViewController];
      [posterCategoryViewController3 updatePosterConfiguration:v32 withAnimationSettings:0];
    }
  }
}

- (uint64_t)updatePosterConfiguration:(id *)a3 withAnimationSettings:(uint64_t)a4 .cold.1(uint64_t a1, id *a2, id *a3, uint64_t a4)
{
  v8 = a1 != 0;
  v9 = [*a2 visibleItems];
  v10 = [v9 containsObject:a3];

  v11 = [(AMUIPosterExtensionSwitcherItem *)a3 posterCategoryViewController];
  v12 = v11;
  if (v10)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  [v11 updatePosterConfiguration:a4 withAnimationSettings:v13];

  v14 = *a2;

  return [v14 scrollToItem:a3 animated:v8];
}

- (void)updatePosterConfiguration:(void *)a1 withAnimationSettings:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 serverUUID];
  v5 = [a1 providerBundleIdentifier];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "failed to find configuration with UUID %{public}@ bundle ID %{public}@", &v6, 0x16u);
}

@end