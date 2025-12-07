@interface SPUINavigationController
+ (id)backgroundColorForViewController:(id)controller;
+ (id)viewControllerWithBackgroundColorForViewController:(id)controller;
- (SPUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (SPUINavigationController)initWithRootViewController:(id)controller;
- (SPUINavigationController)initWithSearchViewController:(id)controller;
- (SPUINavigationControllerDelegate)sizingDelegate;
- (SPUIUnifiedFieldNavigationDelegate)unifiedFieldDelegate;
- (double)contentHeightIncludingCardViewController;
- (double)contentHeightIncludingSearchView;
- (double)heightOfNavigationBar;
- (id)footerGeneratorForProactive:(BOOL)proactive;
- (id)generateFooterViewForProactive:(BOOL)proactive cache:(BOOL)cache;
- (void)applyCardHeightAnimated:(BOOL)animated;
- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)dealloc;
- (void)didInvalidateSizeAnimated:(BOOL)animated;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentPrivacyView;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)resetSearchFieldContentWithSearchToken:(id)token text:(id)text wantsBackButton:(BOOL)button transitionCoordinator:(id)coordinator;
- (void)setContentHeight:(double)height animated:(BOOL)animated;
- (void)setNavigationMode:(int64_t)mode;
- (void)setupConstraintsForBackgroundView:(id)view;
- (void)tapToRadarPressed;
- (void)updateBackButton:(BOOL)button;
- (void)updateBackgroundColorWithViewControllerToBeShown:(id)shown;
- (void)updateFooterViewForViewController:(id)controller;
- (void)updateFooterViewsIfNecessary;
- (void)updateScrollPocketForViewController:(id)controller;
- (void)updateSearchFieldForViewController:(id)controller;
- (void)updateVibrancyForViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SPUINavigationController

- (void)updateFooterViewsIfNecessary
{
  topViewController = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateFooterViewForViewController:topViewController];
}

+ (id)viewControllerWithBackgroundColorForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    childViewControllers = [controllerCopy childViewControllers];
    firstObject = [childViewControllers firstObject];
  }

  else
  {
    firstObject = controllerCopy;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = firstObject;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)backgroundColorForViewController:(id)controller
{
  v3 = [self viewControllerWithBackgroundColorForViewController:controller];
  searchUIBackgroundColor = [v3 searchUIBackgroundColor];

  return searchUIBackgroundColor;
}

- (SPUINavigationController)initWithSearchViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SPUINavigationController *)self initWithRootViewController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationController *)v5 setSearchViewController:controllerCopy];
    searchViewController = [(SPUINavigationController *)v6 searchViewController];
    [searchViewController setSizingDelegate:v6];

    v6->_navigationMode = 0;
    view = [(SPUINavigationController *)v6 view];
    LODWORD(v9) = 1148846080;
    [view setContentCompressionResistancePriority:1 forAxis:v9];

    searchViewController2 = [(SPUINavigationController *)v6 searchViewController];
    headerView = [searchViewController2 headerView];
    navigationBar = [(SPUINavigationController *)v6 navigationBar];
    [navigationBar setHeader:headerView];
  }

  return v6;
}

- (SPUINavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SPUINavigationController *)self initWithNavigationBarClass:0 toolbarClass:0];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationController *)v5 pushViewController:controllerCopy animated:0];
  }

  return v6;
}

- (SPUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    class = objc_opt_class();
  }

  v26.receiver = self;
  v26.super_class = SPUINavigationController;
  v7 = [(SPUINavigationController *)&v26 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v8 = v7;
  if (v7)
  {
    [(SPUINavigationController *)v7 setDelegate:v7];
    [(SPUINavigationController *)v8 _setBuiltinTransitionStyle:1];
    view = [(SPUINavigationController *)v8 view];
    layer = [view layer];
    [layer setHitTestsAsOpaque:1];

    v11 = objc_opt_new();
    [(SPUINavigationController *)v8 setBackgroundView:v11];

    backgroundView = [(SPUINavigationController *)v8 backgroundView];
    [backgroundView setShowsPlaceholderPlatterView:0];

    backgroundView2 = [(SPUINavigationController *)v8 backgroundView];
    [backgroundView2 setDelegate:v8];

    view2 = [(SPUINavigationController *)v8 view];
    backgroundView3 = [(SPUINavigationController *)v8 backgroundView];
    [view2 insertSubview:backgroundView3 atIndex:0];

    view3 = [(SPUINavigationController *)v8 view];
    [view3 setClipsToBounds:0];

    backgroundView4 = [(SPUINavigationController *)v8 backgroundView];
    [(SPUINavigationController *)v8 setupConstraintsForBackgroundView:backgroundView4];

    v18 = objc_opt_new();
    [(SPUINavigationController *)v8 setTransitioningBackgroundView:v18];

    transitioningBackgroundView = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [transitioningBackgroundView setShowsPlaceholderPlatterView:0];

    transitioningBackgroundView2 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [transitioningBackgroundView2 setAlpha:0.0];

    view4 = [(SPUINavigationController *)v8 view];
    transitioningBackgroundView3 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [view4 insertSubview:transitioningBackgroundView3 atIndex:0];

    transitioningBackgroundView4 = [(SPUINavigationController *)v8 transitioningBackgroundView];
    [(SPUINavigationController *)v8 setupConstraintsForBackgroundView:transitioningBackgroundView4];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, lockStateChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
    [(SPUINavigationController *)v8 setIsFirstInitialization:1];
  }

  return v8;
}

- (void)setupConstraintsForBackgroundView:(id)view
{
  viewCopy = view;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [MEMORY[0x277D4C828] fillContainerWithView:viewCopy];
  }

  else
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [viewCopy leadingAnchor];
    view = [(SPUINavigationController *)self view];
    leadingAnchor2 = [view leadingAnchor];
    v7 = *&SPUIExtendedEdgesDimensionConstant;
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&SPUIExtendedEdgesDimensionConstant * -2.0];
    [v8 setActive:1];

    trailingAnchor = [viewCopy trailingAnchor];
    view2 = [(SPUINavigationController *)self view];
    trailingAnchor2 = [view2 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v7 + v7];
    [v12 setActive:1];

    topAnchor = [viewCopy topAnchor];
    view3 = [(SPUINavigationController *)self view];
    topAnchor2 = [view3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7 * -6.0];
    [v16 setActive:1];

    bottomAnchor = [viewCopy bottomAnchor];
    view4 = [(SPUINavigationController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v7 + v7];
    [v20 setActive:1];
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v4.receiver = self;
  v4.super_class = SPUINavigationController;
  [(SPUINavigationController *)&v4 dealloc];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationBar = [(SPUINavigationController *)self navigationBar];
  navigationItem = [controllerCopy navigationItem];
  [navigationBar reconfigureNavigationBarForItem:navigationItem];

  v9.receiver = self;
  v9.super_class = SPUINavigationController;
  [(SPUINavigationController *)&v9 pushViewController:controllerCopy animated:animatedCopy];
}

- (void)updateBackgroundColorWithViewControllerToBeShown:(id)shown
{
  shownCopy = shown;
  v5 = [objc_opt_class() backgroundColorForViewController:shownCopy];

  transitioningBackgroundView = [(SPUINavigationController *)self transitioningBackgroundView];
  [transitioningBackgroundView setAlpha:0.0];

  transitioningBackgroundView2 = [(SPUINavigationController *)self transitioningBackgroundView];
  [transitioningBackgroundView2 setColor:v5];

  transitionCoordinator = [(SPUINavigationController *)self transitionCoordinator];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke;
  aBlock[3] = &unk_279D06EC0;
  aBlock[4] = self;
  v9 = v5;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_2;
  v18[3] = &unk_279D06EE8;
  v18[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_3;
  v16[3] = &unk_279D06F10;
  v11 = v10;
  v17 = v11;
  if (([transitionCoordinator animateAlongsideTransition:v18 completion:v16] & 1) == 0)
  {
    v12 = MEMORY[0x277D4C898];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_4;
    v14[3] = &unk_279D06F38;
    v15 = v11;
    [v12 performAnimatableChanges:v14];
  }

  if (!transitionCoordinator)
  {
    backgroundView = [(SPUINavigationController *)self backgroundView];
    [backgroundView setColor:v9];
  }
}

void __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 32) visibleViewController];
    v8 = [v3 backgroundColorForViewController:v4];
  }

  else
  {
    v8 = *(a1 + 40);
  }

  v5 = [*(a1 + 32) backgroundView];
  [v5 setColor:v8];

  v6 = [*(a1 + 32) backgroundView];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) transitioningBackgroundView];
  [v7 setAlpha:0.0];
}

void __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitioningBackgroundView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) backgroundView];
  [v3 setAlpha:0.0];
}

uint64_t __77__SPUINavigationController_updateBackgroundColorWithViewControllerToBeShown___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [(SPUINavigationController *)self setSui_isTransitioning:1];
  viewControllers = [controllerCopy viewControllers];

  firstObject = [viewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [viewControllerCopy setEdgesForExtendedLayout:{objc_msgSend(viewControllerCopy, "edgesForExtendedLayout") & 0xFFFFFFFFFFFFFFFELL}];
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  if (v13)
  {
    v14 = viewControllerCopy;
    [v14 setDelegate:self];
    [v14 setShouldDrawBackgroundColor:0];
  }

  if ((v12 & 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SPUINavigationController_navigationController_willShowViewController_animated___block_invoke;
    v16[3] = &unk_279D06D40;
    v17 = v13 & 1;
    v16[4] = self;
    [MEMORY[0x277D4C898] performAnimatableChanges:v16];
  }

  [(SPUINavigationController *)self updateBackgroundColorWithViewControllerToBeShown:viewControllerCopy];
  [(SPUINavigationController *)self updateFooterViewForViewController:viewControllerCopy];
  [(SPUINavigationController *)self updateSearchFieldForViewController:viewControllerCopy];
  [(SPUINavigationController *)self updateVibrancyForViewController:viewControllerCopy];
  [(SPUINavigationController *)self updateScrollPocketForViewController:viewControllerCopy];
  navigationBar = [(SPUINavigationController *)self navigationBar];
  [navigationBar updateBackgroundViewVisibility];
}

uint64_t __81__SPUINavigationController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  return [*(a1 + 32) setNavigationMode:v1];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  [(SPUINavigationController *)self updateFooterViewsIfNecessary:controller];

  [(SPUINavigationController *)self setSui_isTransitioning:0];
}

- (void)updateSearchFieldForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = 0x277D4C000uLL;
  if ([MEMORY[0x277D4C898] isIpad])
  {
    navigationBar = [(SPUINavigationController *)self navigationBar];
    header = [navigationBar header];
    [header unfocusSearchFieldWithReason:5];
  }

  transitionCoordinator = [controllerCopy transitionCoordinator];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(SPUINavigationController *)self isFirstInitialization])
    {
      searchViewController = [(SPUINavigationController *)self searchViewController];
      lastSearchToken = [searchViewController lastSearchToken];
      searchViewController2 = [(SPUINavigationController *)self searchViewController];
      lastSearchString = [searchViewController2 lastSearchString];
      [(SPUINavigationController *)self resetSearchFieldContentWithSearchToken:lastSearchToken text:lastSearchString wantsBackButton:0 transitionCoordinator:transitionCoordinator];
    }

    [(SPUINavigationController *)self setIsFirstInitialization:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      searchToken = controllerCopy;
      card = [searchToken card];
      titleImage = [card titleImage];

      if (titleImage && (v15 = MEMORY[0x277D4C868], [searchToken card], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "titleImage"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "imageWithSFImage:", v17), v18 = objc_claimAutoreleasedReturnValue(), -[SPUINavigationController view](self, "view"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "effectiveScreenScale"), v21 = v20, v22 = MEMORY[0x277D6F1A0], -[SPUINavigationController view](self, "view"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "bestAppearanceForView:", v23), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "loadImageWithScale:isDarkStyle:", objc_msgSend(v24, "isDark"), v21), v25 = objc_claimAutoreleasedReturnValue(), v24, v23, v19, v4 = 0x277D4C000, v18, v17, v16, v25) && (v26 = MEMORY[0x277D75A00], objc_msgSend(searchToken, "card"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "title"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "tokenWithIcon:text:", v25, v28), title = objc_claimAutoreleasedReturnValue(), v28, v27, objc_msgSend(searchToken, "card"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "title"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(title, "setRepresentedObject:", v31), v31, v30, v25, title))
      {
        selfCopy2 = self;
        v33 = title;
        v34 = 0;
      }

      else
      {
        title = [searchToken title];
        selfCopy2 = self;
        v33 = 0;
        v34 = title;
      }

      [(SPUINavigationController *)selfCopy2 resetSearchFieldContentWithSearchToken:v33 text:v34 wantsBackButton:1 transitionCoordinator:transitionCoordinator];

      searchViewController3 = [(SPUINavigationController *)self searchViewController];
      headerView = [searchViewController3 headerView];
      searchField = [headerView searchField];
      [searchToken setTextField:searchField];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchToken = [controllerCopy searchToken];
        selfCopy4 = self;
        v36 = searchToken;
        v37 = 0;
      }

      else
      {
        searchToken = [controllerCopy title];
        selfCopy4 = self;
        v36 = 0;
        v37 = searchToken;
      }

      [(SPUINavigationController *)selfCopy4 resetSearchFieldContentWithSearchToken:v36 text:v37 wantsBackButton:1 transitionCoordinator:transitionCoordinator];
    }
  }

  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    searchViewController4 = [(SPUINavigationController *)self searchViewController];
    headerView2 = [searchViewController4 headerView];
    [headerView2 frame];
    if (v43 == 0.0)
    {
      searchViewController5 = [(SPUINavigationController *)self searchViewController];
      headerView3 = [searchViewController5 headerView];
      [headerView3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
      v47 = v46;
    }

    else
    {
      v47 = v43;
    }

    [controllerCopy setAdditionalKeyboardHeight:v47];
  }

  if ([*(v4 + 2200) isIpad])
  {
    viewControllers = [(SPUINavigationController *)self viewControllers];
    firstObject = [viewControllers firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      viewControllers2 = [(SPUINavigationController *)self viewControllers];
      firstObject2 = [viewControllers2 firstObject];
      [firstObject2 updateResponderChainIfNeeded];
    }
  }
}

- (void)updateScrollPocketForViewController:(id)controller
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (_UISolariumEnabled())
  {
    v4 = objc_opt_new();
    view = [controllerCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [controllerCopy view];
      [v4 addObject:view2];
    }

    if (objc_opt_respondsToSelector())
    {
      scrollViewForPocketInteraction = [controllerCopy scrollViewForPocketInteraction];
      if (scrollViewForPocketInteraction)
      {
        [v4 addObject:scrollViewForPocketInteraction];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = controllerCopy;
      searchResultViewController = [v9 searchResultViewController];
      scrollViewForPocketInteraction2 = [searchResultViewController scrollViewForPocketInteraction];

      if (scrollViewForPocketInteraction2)
      {
        [v4 addObject:scrollViewForPocketInteraction2];
      }

      proactiveResultViewController = [v9 proactiveResultViewController];
      scrollViewForPocketInteraction3 = [proactiveResultViewController scrollViewForPocketInteraction];

      if (scrollViewForPocketInteraction3)
      {
        [v4 addObject:scrollViewForPocketInteraction3];
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v4;
    v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
          {
            v19 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:v18 edge:4 style:1];
            navigationBar = [(SPUINavigationController *)self navigationBar];
            header = [navigationBar header];
            backgroundBlurView = [header backgroundBlurView];
            [backgroundBlurView addInteraction:v19];

            v23 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:v18 edge:1 style:4];
            searchViewController = [(SPUINavigationController *)self searchViewController];
            topPocketView = [searchViewController topPocketView];
            [topPocketView addInteraction:v23];
          }

          else if ([MEMORY[0x277D65D28] enableFloatingWindow])
          {
            [v18 _setHiddenPocketEdges:15];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }
  }
}

- (void)resetSearchFieldContentWithSearchToken:(id)token text:(id)text wantsBackButton:(BOOL)button transitionCoordinator:(id)coordinator
{
  buttonCopy = button;
  v10 = MEMORY[0x277D65D28];
  coordinatorCopy = coordinator;
  textCopy = text;
  tokenCopy = token;
  if ([v10 bottomSearchFieldEnabled])
  {
    unifiedFieldDelegate = [(SPUINavigationController *)self unifiedFieldDelegate];
    [unifiedFieldDelegate resetSearchFieldContentWithSearchToken:tokenCopy text:textCopy wantsBackButton:buttonCopy transitionCoordinator:coordinatorCopy];
  }

  else
  {
    navigationBar = [(SPUINavigationController *)self navigationBar];
    header = [navigationBar header];

    [header setUseClearTokens:1];
    searchField = [header searchField];
    v17 = searchField;
    if (tokenCopy)
    {
      v18 = 0;
    }

    else
    {
      v18 = textCopy;
    }

    [searchField updateTextRange:v18];

    searchField2 = [header searchField];
    [searchField2 updateToken:tokenCopy];

    v20 = MEMORY[0x277D75D18];
    searchField3 = [header searchField];
    leftView = [searchField3 leftView];
    [coordinatorCopy transitionDuration];
    v24 = v23;

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __110__SPUINavigationController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke;
    v30[3] = &unk_279D06D40;
    v30[4] = self;
    v31 = buttonCopy;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __110__SPUINavigationController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_2;
    v27[3] = &unk_279D06F60;
    v29 = buttonCopy;
    v28 = header;
    v25 = header;
    [v20 transitionWithView:leftView duration:5242880 options:v30 animations:v27 completion:v24];
  }
}

uint64_t __110__SPUINavigationController_resetSearchFieldContentWithSearchToken_text_wantsBackButton_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 unfocusSearchFieldWithReason:5 afterCommit:0];
  }

  else
  {
    return [v2 focusSearchFieldAndSelectAll:0 withReason:3];
  }
}

- (void)updateBackButton:(BOOL)button
{
  buttonCopy = button;
  navigationBar = [(SPUINavigationController *)self navigationBar];
  header = [navigationBar header];
  searchField = [header searchField];

  [searchField setShowsBackButton:buttonCopy];
  leftView = [searchField leftView];
  [leftView setUserInteractionEnabled:buttonCopy];
}

- (void)setContentHeight:(double)height animated:(BOOL)animated
{
  if (self->_contentHeight != height)
  {
    animatedCopy = animated;
    self->_contentHeight = height;
    sizingDelegate = [(SPUINavigationController *)self sizingDelegate];
    [sizingDelegate navigationViewDidInvalidateSizeAnimated:animatedCopy];
  }
}

- (void)setNavigationMode:(int64_t)mode
{
  navigationMode = self->_navigationMode;
  self->_navigationMode = mode;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    if (mode <= 2)
    {
      if ((mode - 1) < 2)
      {
        [(SPUINavigationController *)self contentHeightIncludingSearchView];
        v6 = navigationMode == 3;
        selfCopy2 = self;
LABEL_13:
        [(SPUINavigationController *)selfCopy2 setContentHeight:v6 animated:?];
        goto LABEL_14;
      }

      if (mode)
      {
        goto LABEL_14;
      }

      [(SPUINavigationController *)self heightOfNavigationBar];
LABEL_12:
      selfCopy2 = self;
      v6 = 0;
      goto LABEL_13;
    }

    if (mode == 3)
    {
      goto LABEL_12;
    }

    if (mode != 4)
    {
      if (mode != 5)
      {
        goto LABEL_14;
      }

      [(SPUINavigationController *)self contentHeightIncludingSearchView];
      [(SPUINavigationController *)self setContentHeight:navigationMode == 0 animated:?];
    }

    [(SPUINavigationController *)self applyCardHeightAnimated:1];
  }

LABEL_14:
  searchViewController = [(SPUINavigationController *)self searchViewController];
  [searchViewController updateResponderChainIfNeeded];
}

- (double)contentHeightIncludingSearchView
{
  [(SPUINavigationController *)self heightOfNavigationBar];
  v4 = v3;
  searchViewController = [(SPUINavigationController *)self searchViewController];
  [searchViewController contentHeight];
  v7 = v4 + v6;

  return v7;
}

- (double)contentHeightIncludingCardViewController
{
  topViewController = [(SPUINavigationController *)self topViewController];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    topViewController2 = [(SPUINavigationController *)self topViewController];
    [topViewController2 preferredContentSize];
    v4 = v6;
  }

  [(SPUINavigationController *)self heightOfNavigationBar];
  result = v4 + v7;
  if (result < 250.0)
  {
    view = [(SPUINavigationController *)self view];
    superview = [view superview];
    [superview frame];
    Height = CGRectGetHeight(v12);

    return Height;
  }

  return result;
}

- (double)heightOfNavigationBar
{
  navigationBar = [(SPUINavigationController *)self navigationBar];
  [navigationBar intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (void)applyCardHeightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SPUINavigationController *)self contentHeightIncludingCardViewController];
  v6 = v5;
  [(SPUINavigationController *)self heightOfNavigationBar];
  if (v7 != v6)
  {

    [(SPUINavigationController *)self setContentHeight:animatedCopy animated:v6];
  }
}

- (void)didInvalidateSizeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ((-[SPUINavigationController navigationMode](self, "navigationMode") == 1 || -[SPUINavigationController navigationMode](self, "navigationMode") == 5) && [MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUINavigationController *)self contentHeightIncludingSearchView];

    [(SPUINavigationController *)self setContentHeight:animatedCopy animated:?];
  }
}

- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(SPUINavigationController *)self navigationMode]== 4)
  {
    topViewController = [(SPUINavigationController *)self topViewController];

    if (topViewController == controllerCopy)
    {
      [(SPUINavigationController *)self applyCardHeightAnimated:animatedCopy];
    }
  }
}

- (void)updateFooterViewForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = controllerCopy;
    v5 = [(SPUINavigationController *)self generateFooterViewForProactive:1 cache:1];
    v6 = [(SPUINavigationController *)self generateFooterViewForProactive:0 cache:1];
    [v4 setFooterViewsForProactive:v5 forResults:v6];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [(SPUINavigationController *)self generateFooterViewForProactive:0 cache:0];
    [controllerCopy performSelector:sel_setFooterView_ withObject:v5];
  }

LABEL_6:
}

- (id)generateFooterViewForProactive:(BOOL)proactive cache:(BOOL)cache
{
  cacheCopy = cache;
  proactiveCopy = proactive;
  v6 = [(SPUINavigationController *)self footerGeneratorForProactive:?];
  v7 = v6;
  if (v6)
  {
    if (cacheCopy)
    {
      if (generateFooterViewForProactive_cache__onceToken != -1)
      {
        [SPUINavigationController generateFooterViewForProactive:cache:];
      }

      v8 = MEMORY[0x277CCACA8];
      reuseIdentifier = [v7 reuseIdentifier];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:proactiveCopy];
      buttonGenerator2 = [v8 stringWithFormat:@"%@, %@", reuseIdentifier, v10];

      v12 = [generateFooterViewForProactive_cache__footerViewCache objectForKeyedSubscript:buttonGenerator2];
      if (v12)
      {
        goto LABEL_14;
      }

      buttonGenerator = [v7 buttonGenerator];
      v14 = buttonGenerator[2]();
      [generateFooterViewForProactive_cache__footerViewCache setObject:v14 forKeyedSubscript:buttonGenerator2];

      v15 = [generateFooterViewForProactive_cache__footerViewCache objectForKeyedSubscript:buttonGenerator2];
    }

    else
    {
      buttonGenerator2 = [v6 buttonGenerator];
      v15 = buttonGenerator2[2]();
    }

    v12 = v15;
LABEL_14:

    goto LABEL_15;
  }

  v16 = MEMORY[0x277D65D40];
  v17 = *MEMORY[0x277D65D40];
  if (!*MEMORY[0x277D65D40])
  {
    SPUIInitLogging();
    v17 = *v16;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPUINavigationController generateFooterViewForProactive:v17 cache:?];
  }

  v12 = 0;
LABEL_15:

  return v12;
}

uint64_t __65__SPUINavigationController_generateFooterViewForProactive_cache___block_invoke()
{
  generateFooterViewForProactive_cache__footerViewCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)footerGeneratorForProactive:(BOOL)proactive
{
  proactiveCopy = proactive;
  v5 = MEMORY[0x277D4C898];
  view = [(SPUINavigationController *)self view];
  LOBYTE(v5) = [v5 deviceIsAuthenticatedForView:view];

  if ((v5 & 1) == 0)
  {
    v11 = [[SPUIFooterButtonGenerator alloc] initWithReuseIdentifier:@"lockScreenFooter" buttonGenerator:&__block_literal_global_158];
    goto LABEL_13;
  }

  if (+[SPUISearchFirstTimeViewController needsDisplay])
  {
    v7 = !proactiveCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && +[SPUISearchFirstTimeViewController useZKWFTE])
  {
    objc_initWeak(&location, self);
    v8 = [SPUIFooterButtonGenerator alloc];
    v9 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_2;
    v16[3] = &unk_279D06FD0;
    objc_copyWeak(&v17, &location);
    v10 = [(SPUIFooterButtonGenerator *)v8 initWithReuseIdentifier:@"fteView" buttonGenerator:v16];
LABEL_11:
    v11 = v10;
    objc_destroyWeak(v9 + 4);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  if (+[SPUITapToRadarView shouldDisplayTapToRadar])
  {
    objc_initWeak(&location, self);
    v12 = [SPUIFooterButtonGenerator alloc];
    v9 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_5;
    v14[3] = &unk_279D06FD0;
    objc_copyWeak(&v15, &location);
    v10 = [(SPUIFooterButtonGenerator *)v12 initWithReuseIdentifier:@"ttr" buttonGenerator:v14];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

SPUILockScreenFooterView *__56__SPUINavigationController_footerGeneratorForProactive___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

SPUIFTEView *__56__SPUINavigationController_footerGeneratorForProactive___block_invoke_2(uint64_t a1)
{
  v2 = [SPUIFTEView alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_3;
  v7[3] = &unk_279D06FA8;
  objc_copyWeak(&v8, (a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_4;
  v5[3] = &unk_279D06FA8;
  objc_copyWeak(&v6, (a1 + 32));
  v3 = [(SPUIFTEView *)v2 initWithPrivacyPresentation:v7 ttr:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);

  return v3;
}

void __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentPrivacyView];
}

void __56__SPUINavigationController_footerGeneratorForProactive___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tapToRadarPressed];
}

SPUITapToRadarView *__56__SPUINavigationController_footerGeneratorForProactive___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [[SPUITapToRadarView alloc] initWithTarget:WeakRetained action:sel_tapToRadarPressed];

  return v2;
}

- (void)presentPrivacyView
{
  v3 = objc_alloc_init(MEMORY[0x277D4C880]);
  [v3 setModalPresentationStyle:2];
  [(SPUINavigationController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)tapToRadarPressed
{
  v10 = +[SPUISearchModel sharedGeneralInstance];
  searchViewController = [(SPUINavigationController *)self searchViewController];
  currentQuery = [searchViewController currentQuery];
  sections = [v10 sections];
  rankingDebugLog = [v10 rankingDebugLog];
  [SPUITapToRadarView openTapToRadarWithQuery:currentQuery sections:sections rankingDebugLog:rankingDebugLog];

  v7 = objc_opt_new();
  [v7 setIdentifier:*MEMORY[0x277D4BF18]];
  v8 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v7 triggerEvent:2 destination:0];
  v9 = +[SPUIFeedbackManager feedbackListener];
  [v9 didEngageResult:v8];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = SPUINavigationController;
  [(SPUINavigationController *)&v7 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  topViewController = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateBackgroundColorWithViewControllerToBeShown:topViewController];

  topViewController2 = [(SPUINavigationController *)self topViewController];
  [(SPUINavigationController *)self updateVibrancyForViewController:topViewController2];
}

- (void)updateVibrancyForViewController:(id)controller
{
  controllerCopy = controller;
  if (_UISolariumEnabled() && [MEMORY[0x277D65D28] enableFloatingWindow])
  {
    view = [controllerCopy view];
    [view _setOverrideVibrancyTrait:1];
  }
}

- (SPUINavigationControllerDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (SPUIUnifiedFieldNavigationDelegate)unifiedFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unifiedFieldDelegate);

  return WeakRetained;
}

@end