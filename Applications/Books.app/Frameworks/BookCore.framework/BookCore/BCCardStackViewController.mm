@interface BCCardStackViewController
+ (BOOL)_alwaysUseSlideAnimation;
+ (id)_pendingCardStackViewControllers;
+ (void)appendCardsWithData:(id)data fromViewController:(id)controller identifier:(id)identifier completion:(id)completion;
+ (void)pushCardsWithDataSource:(id)source focusedIndex:(unint64_t)index animated:(BOOL)animated fromViewController:(id)controller completion:(id)completion;
- (BCCardStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)bc_analyticsVisibilityOfChild:(id)child;
- (BOOL)isTopCardSetViewController:(id)controller;
- (BOOL)scrollCardForFeedOptionsVisible:(id)visible;
- (CGRect)initialFrame;
- (CGSize)lastLayoutStackSize;
- (Class)cardNavigationControllerForCardSet:(id)set;
- (NSSet)messagesAlreadyDisplayed;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)safeAreaInsetsFromWindowCorners;
- (id)_navigationControllerForViewController:(id)controller;
- (id)_popCardFrontAnimatorForCardSet:(id)set cardSetViewControllerToUnfade:(id)unfade duration:(double)duration;
- (id)_pushCardBackAnimatorForCardSet:(id)set cardSetViewControllerToFade:(id)fade duration:(double)duration;
- (id)_pushCardsWithDataSource:(id)source focusedIndex:(unint64_t)index animated:(BOOL)animated presentingViewController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)childViewControllerForStatusBarStyle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)contentViewControllerForCardSet:(id)set index:(unint64_t)index cardContentScrollManager:(id)manager;
- (id)effectiveAnalyticsTrackerForTopCard;
- (id)im_visibleChildViewControllers;
- (id)keyCommands;
- (id)topCardSetViewController;
- (int64_t)_animationTypeForDismissingCardSetViewController:(id)controller distanceToCoverSource:(double *)source;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_indexOfChildViewControllerToSuspendOrResume;
- (unint64_t)cardCountForCardSet:(id)set;
- (unint64_t)cardStackDepth;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addAdornmentViewsToParentView:(id)view;
- (void)_applyCardSetViewController:(id)controller withTransform:(unint64_t)transform;
- (void)_invalidateConfiguration;
- (void)_layoutAdornmentViews;
- (void)_layoutStackByChangingMode:(BOOL)mode newViewSize:(CGSize)size;
- (void)_layoutUnderlyingCardSetViewController:(id)controller animated:(BOOL)animated;
- (void)_popCardsAnimated:(BOOL)animated popAll:(BOOL)all animationType:(int64_t)type prefersCrossfade:(BOOL)crossfade velocity:(double)velocity reason:(int64_t)reason completion:(id)completion;
- (void)_resumeAndRebuildChildViewControllerAsNeeded;
- (void)_scaleBackCardSetViewController:(id)controller shiftUp:(BOOL)up cumulative:(BOOL)cumulative;
- (void)_suspendAndTeardownChildViewControllerAsNeeded;
- (void)_updateStatusBarBackgroundOpacity;
- (void)_updateStatusBarBackgroundOpacityForCardSetViewController:(id)controller;
- (void)cardSetViewController:(id)controller animatorForExpanding:(id)expanding;
- (void)cardSetViewController:(id)controller animatorForInteractiveDismiss:(id)dismiss;
- (void)cardSetViewController:(id)controller animatorForUnexpanding:(id)unexpanding;
- (void)cardSetViewController:(id)controller didCommitDismissWithVelocity:(double)velocity interactiveAnimator:(id)animator;
- (void)cardSetViewController:(id)controller prepareForNavigationTransitionWithContext:(id)context;
- (void)didReceiveMemoryWarning;
- (void)lockChildForStatusBarStyle;
- (void)notifyAllCardsAboutMessageDisplayed:(id)displayed from:(id)from;
- (void)popCardsAnimated:(BOOL)animated reason:(int64_t)reason;
- (void)presentingViewControllerSafeAreaInsetsDidChange:(id)change;
- (void)pushCardsWithDataSource:(id)source focusedIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setToolbarHeight:(double)height;
- (void)viewController:(id)controller didDisplayMessageWithId:(id)id;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillAppearFromTabChange;
- (void)viewWillDisappearFromTabChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BCCardStackViewController

- (BCCardStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = BCCardStackViewController;
  v4 = [(BCCardStackViewController *)&v18 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_presentingViewControllerIsFullScreen = 1;
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    dataSourceMap = v5->_dataSourceMap;
    v5->_dataSourceMap = v6;

    [(BCCardStackViewController *)v5 setModalPresentationStyle:6];
    [(BCCardStackViewController *)v5 setTransitioningDelegate:v5];
    v8 = [[BCLayoutConfigurationEnvironment alloc] initWithViewController:v5];
    v9 = [[BCCardStackConfiguration alloc] initWithEnvironment:v8];
    configuration = v5->_configuration;
    v5->_configuration = v9;

    v11 = +[NSMapTable weakToStrongObjectsMapTable];
    unhideBlocksByCardSet = v5->_unhideBlocksByCardSet;
    v5->_unhideBlocksByCardSet = v11;

    v5->_ignoreChildStatusBarStyle = 0;
    [(BCCardStackViewController *)v5 bc_setNavBarVisible:0];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("BCCardStackViewController.transitionSetupQueue", v14);
    transitionSetupQueue = v5->_transitionSetupQueue;
    v5->_transitionSetupQueue = v15;
  }

  return v5;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v25 viewDidLoad];
  v3 = [BCCardStackBarBackgroundContainingView alloc];
  statusBarBackgroundController = [(BCCardStackViewController *)self statusBarBackgroundController];
  v5 = [(BCCardStackBarBackgroundContainingView *)v3 initWithStatusBarBackgroundController:statusBarBackgroundController];

  [(BCCardStackViewController *)self initialFrame];
  [(BCCardStackBarBackgroundContainingView *)v5 setFrame:?];
  view = [(BCCardStackViewController *)self view];
  -[BCCardStackBarBackgroundContainingView setAutoresizingMask:](v5, "setAutoresizingMask:", [view autoresizingMask]);

  [(BCCardStackViewController *)self setView:v5];
  v7 = +[UIColor clearColor];
  view2 = [(BCCardStackViewController *)self view];
  [view2 setBackgroundColor:v7];

  v9 = [UIView alloc];
  view3 = [(BCCardStackViewController *)self view];
  [view3 bounds];
  v11 = [v9 initWithFrame:{0.0, 0.0}];
  safeAreaCornerInsetsCapturingView = self->_safeAreaCornerInsetsCapturingView;
  self->_safeAreaCornerInsetsCapturingView = v11;

  [(UIView *)self->_safeAreaCornerInsetsCapturingView setAutoresizingMask:2];
  [(UIView *)self->_safeAreaCornerInsetsCapturingView _setSafeAreaCornerAdaptation:3];
  [(UIView *)self->_safeAreaCornerInsetsCapturingView setHidden:1];
  view4 = [(BCCardStackViewController *)self view];
  [view4 addSubview:self->_safeAreaCornerInsetsCapturingView];

  v14 = [UIScrollView alloc];
  view5 = [(BCCardStackViewController *)self view];
  [view5 bounds];
  v16 = [v14 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v16;

  [(UIScrollView *)self->_backgroundView _setPocketsEnabled:0];
  [(UIScrollView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_backgroundView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_backgroundView setAlpha:0.0];
  v18 = [UIColor colorWithWhite:0.0 alpha:0.7];
  [(UIScrollView *)self->_backgroundView setBackgroundColor:v18];

  view6 = [(BCCardStackViewController *)self view];
  [view6 bounds];
  v21 = v20;
  v23 = v22;

  [(UIScrollView *)self->_backgroundView setContentSize:v21, v23 + 100.0];
  [(UIScrollView *)self->_backgroundView setContentOffset:0.0, 100.0];
  [(UIScrollView *)self->_backgroundView setDelegate:self];
  view7 = [(BCCardStackViewController *)self view];
  [(BCCardStackViewController *)self _addAdornmentViewsToParentView:view7];

  [(BCCardStackViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v4 viewWillAppear:appear];
  [(BCCardStackViewController *)self _updateStatusBarBackgroundOpacity];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v8 viewDidAppear:appear];
  v4 = UIAccessibilityLayoutChangedNotification;
  topCardSetViewController = [(BCCardStackViewController *)self topCardSetViewController];
  currentCardViewController = [topCardSetViewController currentCardViewController];
  auxiliaryNavigationBarView = [currentCardViewController auxiliaryNavigationBarView];
  UIAccessibilityPostNotification(v4, auxiliaryNavigationBarView);
}

- (UIEdgeInsets)safeAreaInsetsFromWindowCorners
{
  [(UIView *)self->_safeAreaCornerInsetsCapturingView safeAreaInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (int64_t)preferredStatusBarStyle
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  configuration = [(BCCardStackViewController *)self configuration];
  v4 = [configuration cardsCanExpand] ^ 1;

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad(self, a2))
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)lockChildForStatusBarStyle
{
  childViewControllerForStatusBarStyle = [(BCCardStackViewController *)self childViewControllerForStatusBarStyle];
  [(BCCardStackViewController *)self setLockedChildForStatusBarStyle:childViewControllerForStatusBarStyle];
}

- (id)childViewControllerForStatusBarStyle
{
  if ([(BCCardStackViewController *)self ignoreChildStatusBarStyle])
  {
    lockedChildForStatusBarStyle2 = 0;
  }

  else
  {
    lockedChildForStatusBarStyle = [(BCCardStackViewController *)self lockedChildForStatusBarStyle];

    if (lockedChildForStatusBarStyle)
    {
      lockedChildForStatusBarStyle2 = [(BCCardStackViewController *)self lockedChildForStatusBarStyle];
    }

    else
    {
      childViewControllers = [(BCCardStackViewController *)self childViewControllers];
      lastObject = [childViewControllers lastObject];

      if ([lastObject expanded])
      {
        v7 = lastObject;
      }

      else
      {
        v7 = 0;
      }

      lockedChildForStatusBarStyle2 = v7;
    }
  }

  return lockedChildForStatusBarStyle2;
}

- (void)_invalidateConfiguration
{
  configuration = [(BCCardStackViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  configuration2 = [(BCCardStackViewController *)self configuration];
  [configuration2 invalidate];

  configuration3 = [(BCCardStackViewController *)self configuration];
  cardsCanExpand2 = [configuration3 cardsCanExpand];

  view = [(BCCardStackViewController *)self view];
  [view bounds];
  [(BCCardStackViewController *)self _layoutStackByChangingMode:cardsCanExpand ^ cardsCanExpand2 newViewSize:v8, v9];
}

- (void)viewWillAppearFromTabChange
{
  [(BCCardStackViewController *)self _invalidateConfiguration];
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  [lastObject resumeAndRebuildForReason:@"card stack: card set will appear from tab change"];
  [(BCCardStackViewController *)self _updateStatusBarBackgroundOpacity];
  statusBarBackgroundController = [(BCCardStackViewController *)self statusBarBackgroundController];
  [statusBarBackgroundController updateParentViewOfCardStackBackgroundViewWithParentViewController:self];
}

- (void)viewWillDisappearFromTabChange
{
  statusBarBackgroundController = [(BCCardStackViewController *)self statusBarBackgroundController];
  [statusBarBackgroundController setOpacity:0.0];
}

- (void)presentingViewControllerSafeAreaInsetsDidChange:(id)change
{
  view = [change view];
  [view safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13 = isPad(v11, v12);
  v14 = 0.0;
  if (v13)
  {
    v14 = 22.0;
  }

  [(BCCardStackViewController *)self setContentInset:0.0, v6, v8 + v14, v10];
}

- (void)viewWillLayoutSubviews
{
  view = [(BCCardStackViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  if (!self->_transitionInProgress && (self->_lastLayoutStackSize.width != v5 || self->_lastLayoutStackSize.height != v7))
  {
    self->_lastLayoutStackSize.width = v5;
    self->_lastLayoutStackSize.height = v7;
    configuration = [(BCCardStackViewController *)self configuration];
    cardsCanExpand = [configuration cardsCanExpand];

    configuration2 = [(BCCardStackViewController *)self configuration];
    [configuration2 invalidate];

    configuration3 = [(BCCardStackViewController *)self configuration];
    cardsCanExpand2 = [configuration3 cardsCanExpand];

    [(BCCardStackViewController *)self _layoutStackByChangingMode:cardsCanExpand ^ cardsCanExpand2 newViewSize:v5, v7];
  }

  v14.receiver = self;
  v14.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v14 viewWillLayoutSubviews];
}

- (BOOL)scrollCardForFeedOptionsVisible:(id)visible
{
  visibleCopy = visible;
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (lastObject)
  {
    dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
    v8 = [dataSourceMap objectForKeyedSubscript:lastObject];

    v9 = [v8 cardIndexForFeedOptions:visibleCopy];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v9;
      focusedIndex = [lastObject focusedIndex];
      configuration = [(BCCardStackViewController *)self configuration];
      if ([configuration cardsCanExpand])
      {
        currentCardViewController = [lastObject currentCardViewController];
        itemPushedOnCard = [currentCardViewController itemPushedOnCard];
      }

      else
      {
        itemPushedOnCard = 0;
      }

      configuration2 = [(BCCardStackViewController *)self configuration];
      expanded = 0;
      if ([configuration2 cardsCanExpand] && v11 != focusedIndex)
      {
        currentCardViewController2 = [lastObject currentCardViewController];
        expanded = [currentCardViewController2 expanded];
      }

      v19 = [lastObject itemPushedOnCardAtIndex:v11];
      v10 = 0;
      if (((itemPushedOnCard | expanded) & 1) == 0 && (v19 & 1) == 0 && v11 >= (focusedIndex - 1) && v11 <= (focusedIndex + 1))
      {
        [lastObject clearSavedContentOffsetsForCardAtIndex:v11];
        v10 = 1;
        [lastObject setFocusedIndex:v11 animated:1];
        [lastObject scrollToTopCardAtIndex:v11 animated:1];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v18.receiver = self;
  v18.super_class = BCCardStackViewController;
  coordinatorCopy = coordinator;
  height = [(BCCardStackViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9 = BCCardModelLog(height);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v23.width = width;
    v23.height = height;
    v10 = NSStringFromCGSize(v23);
    view = [(BCCardStackViewController *)self view];
    [view size];
    v12 = NSStringFromCGSize(v24);
    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "BCCardStack viewWillTransitionToSize: %@ from: %@", buf, 0x16u);
  }

  configuration = [(BCCardStackViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2D770;
  v16[3] = &unk_2C8CF0;
  *&v16[5] = width;
  *&v16[6] = height;
  v16[4] = self;
  v17 = cardsCanExpand;
  [coordinatorCopy animateAlongsideTransition:v16 completion:&stru_2C8D10];

  configuration2 = [(BCCardStackViewController *)self configuration];
  [configuration2 invalidate];
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  if ((edge & 4) != 0)
  {
    topCardSetViewController = [(BCCardStackViewController *)self topCardSetViewController];
    currentCardViewController = [topCardSetViewController currentCardViewController];

    cardNavigationController = [currentCardViewController cardNavigationController];
    viewControllers = [cardNavigationController viewControllers];
    v9 = [viewControllers count];

    if (v9 < 2)
    {
      scrollView = [currentCardViewController scrollView];
    }

    else
    {
      cardNavigationController2 = [currentCardViewController cardNavigationController];
      topViewController = [cardNavigationController2 topViewController];
      scrollView = [topViewController contentScrollViewForEdge:edge];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BCCardStackViewController;
    scrollView = [(BCCardStackViewController *)&v13 contentScrollViewForEdge:edge];
  }

  return scrollView;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  left = inset.left;
  top = inset.top;
  v5 = self->_contentInset.left;
  right = self->_contentInset.right;
  if (v5 != inset.left || self->_contentInset.top != inset.top || right != inset.right || self->_contentInset.bottom != inset.bottom)
  {
    v10 = inset.right;
    bottom = inset.bottom;
    self->_contentInset = inset;
    v13 = BCCardModelLog(self);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "contentInset updated on BCCardStackViewController: %@", &v22, 0xCu);
    }

    topCardSetViewController = [(BCCardStackViewController *)self topCardSetViewController];
    [topCardSetViewController setContentInset:{top, left, bottom, v10}];

    if (left != v5 || v10 != right)
    {
      childViewControllers = [(BCCardStackViewController *)self childViewControllers];
      v17 = [childViewControllers count];

      if (v17 >= 2)
      {
        objc_opt_class();
        childViewControllers2 = [(BCCardStackViewController *)self childViewControllers];
        childViewControllers3 = [(BCCardStackViewController *)self childViewControllers];
        v20 = [childViewControllers2 objectAtIndexedSubscript:{objc_msgSend(childViewControllers3, "count") - 2}];
        v21 = BUDynamicCast();
        [v21 setContentInset:{top, left, bottom, v10}];
      }
    }
  }
}

- (void)setToolbarHeight:(double)height
{
  if (self->_toolbarHeight != height)
  {
    self->_toolbarHeight = height;
    presentedViewController = [(BCCardStackViewController *)self presentedViewController];
    [presentedViewController additionalSafeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    presentedViewController2 = [(BCCardStackViewController *)self presentedViewController];
    [presentedViewController2 setAdditionalSafeAreaInsets:{height, v7, v9, v11}];

    configuration = [(BCCardStackViewController *)self configuration];
    [configuration setToolbarHeight:height];

    if (![(BCCardStackViewController *)self transitionInProgress])
    {
      view = [(BCCardStackViewController *)self view];
      [view bounds];
      [(BCCardStackViewController *)self _layoutStackByChangingMode:1 newViewSize:v14, v15];
    }
  }
}

- (unint64_t)cardStackDepth
{
  dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
  v3 = [dataSourceMap count];

  return v3;
}

+ (id)_pendingCardStackViewControllers
{
  if (qword_342160 != -1)
  {
    sub_1E5A0C();
  }

  v3 = qword_342158;

  return v3;
}

+ (void)pushCardsWithDataSource:(id)source focusedIndex:(unint64_t)index animated:(BOOL)animated fromViewController:(id)controller completion:(id)completion
{
  animatedCopy = animated;
  sourceCopy = source;
  completionCopy = completion;
  bc_effectiveCardPresentingViewController = [controller bc_effectiveCardPresentingViewController];
  presentingViewController = [bc_effectiveCardPresentingViewController presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [bc_effectiveCardPresentingViewController presentingViewController];
    presentedViewController = [presentingViewController2 presentedViewController];
    modalPresentationStyle = [presentedViewController modalPresentationStyle];

    v18 = (modalPresentationStyle - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v18 = 1;
  }

  view = [bc_effectiveCardPresentingViewController view];
  window = [view window];
  firstResponder = [window firstResponder];
  [firstResponder resignFirstResponder];

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_2E2E0;
  v62 = sub_2E2F0;
  cardStackViewController = [bc_effectiveCardPresentingViewController cardStackViewController];
  v22 = v59[5];
  if (!v22)
  {
    v23 = [bc_effectiveCardPresentingViewController bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];
    v24 = v59[5];
    v59[5] = v23;

    v22 = v59[5];
  }

  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = bc_effectiveCardPresentingViewController;
  }

  [v25 bc_dismissIfSafeAnimated:0];
  v26 = v59[5];
  if (v26)
  {
    transitionInProgress = [v26 transitionInProgress];
    if (transitionInProgress)
    {
      v28 = BCCardModelLog(transitionInProgress);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *v46 = 0;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Failed to push cards - the existing BCCardStackViewController has a transition in progress", v46, 2u);
      }

      v29 = objc_retainBlock(completionCopy);
      v30 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29);
      }

      goto LABEL_34;
    }

    if ([sourceCopy numberOfCards:v59[5]] == &dword_0 + 1)
    {
      objc_opt_class();
      v37 = [sourceCopy representedObjectForCardAtIndex:0];
      v38 = BUDynamicCast();

      if ([sourceCopy alwaysPresentNewCardSetForFeedOptions:v38])
      {
      }

      else
      {
        v44 = [v59[5] scrollCardForFeedOptionsVisible:v38];

        if (v44)
        {
          goto LABEL_29;
        }
      }
    }

    [v59[5] pushCardsWithDataSource:sourceCopy focusedIndex:index animated:animatedCopy];
LABEL_29:
    v45 = objc_retainBlock(completionCopy);
    v30 = v45;
    if (v45)
    {
      (*(v45 + 2))(v45);
    }

    goto LABEL_34;
  }

  v30 = +[BCCardStackViewController _pendingCardStackViewControllers];
  v31 = [v30 objectForKeyedSubscript:bc_effectiveCardPresentingViewController];
  v32 = v59[5];
  v59[5] = v31;

  if (v59[5])
  {
    v34 = BCCardModelLog(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v46 = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Failed to push cards - a pending BCCardStackViewController exists", v46, 2u);
    }

    v35 = objc_retainBlock(completionCopy);
    v36 = v35;
    if (v35)
    {
      (*(v35 + 2))(v35);
    }
  }

  else
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_2E2F8;
    v49[3] = &unk_2C8DA8;
    v54 = &v58;
    v39 = bc_effectiveCardPresentingViewController;
    v50 = v39;
    v56 = v18;
    v51 = sourceCopy;
    indexCopy = index;
    v57 = animatedCopy;
    v52 = v30;
    v53 = completionCopy;
    v40 = objc_retainBlock(v49);
    if (isPhone(v40))
    {
      objc_opt_class();
      bc_windowForViewController = [v39 bc_windowForViewController];
      windowScene = [bc_windowForViewController windowScene];
      v43 = BUDynamicCast();

      if (v43)
      {
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_2E6F8;
        v47[3] = &unk_2C8548;
        v48 = v40;
        [v43 attemptRotateToPortraitWithCompletion:v47];
      }
    }

    else
    {
      (v40[2])(v40);
    }

    v36 = v50;
  }

LABEL_34:
  _Block_object_dispose(&v58, 8);
}

- (void)pushCardsWithDataSource:(id)source focusedIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  sourceCopy = source;
  presentingViewController = [(BCCardStackViewController *)self presentingViewController];
  v10 = [(BCCardStackViewController *)self _pushCardsWithDataSource:sourceCopy focusedIndex:index animated:animatedCopy presentingViewController:presentingViewController];

  [v10 waitUntilReadyThenAnimate];
}

+ (void)appendCardsWithData:(id)data fromViewController:(id)controller identifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  bc_effectiveCardPresentingViewController = [controller bc_effectiveCardPresentingViewController];
  cardStackViewController = [bc_effectiveCardPresentingViewController cardStackViewController];
  if (!cardStackViewController)
  {
    cardStackViewController = [bc_effectiveCardPresentingViewController bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];
  }

  childViewControllers = [cardStackViewController childViewControllers];
  v15 = [childViewControllers objectAtIndexedSubscript:0];

  dataSourceMap = [cardStackViewController dataSourceMap];
  v17 = [dataSourceMap objectForKeyedSubscript:v15];

  identifier = [v17 identifier];
  if (([identifierCopy length] || (v19 = objc_msgSend(identifier, "length")) != 0) && (v19 = objc_msgSend(identifier, "isEqualToString:", identifierCopy), (v19 & 1) == 0))
  {
  }

  else if (cardStackViewController)
  {
    [v17 appendNewDataToExistingDataSource:dataCopy cardStackViewController:cardStackViewController];
    [v15 updateWithAppendedCards];
    v20 = objc_retainBlock(completionCopy);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20);
    }

    goto LABEL_15;
  }

  v22 = BCCardModelLog(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1E5A98();
  }

  v23 = objc_retainBlock(completionCopy);
  cardStackViewController = v23;
  if (v23)
  {
    (*(v23 + 2))(v23);
  }

LABEL_15:
}

- (void)popCardsAnimated:(BOOL)animated reason:(int64_t)reason
{
  animatedCopy = animated;
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];
  v9 = [(BCCardStackViewController *)self _animationTypeForDismissingCardSetViewController:lastObject distanceToCoverSource:0];

  [(BCCardStackViewController *)self _popCardsAnimated:animatedCopy popAll:0 animationType:v9 prefersCrossfade:0 velocity:reason reason:0 completion:0.0];
}

- (void)_popCardsAnimated:(BOOL)animated popAll:(BOOL)all animationType:(int64_t)type prefersCrossfade:(BOOL)crossfade velocity:(double)velocity reason:(int64_t)reason completion:(id)completion
{
  crossfadeCopy = crossfade;
  allCopy = all;
  animatedCopy = animated;
  completionCopy = completion;
  v17 = completionCopy;
  if (self->_transitionInProgress)
  {
    v18 = BCCardModelLog(completionCopy);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1E5B0C();
    }
  }

  else
  {
    v125 = completionCopy;
    dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
    v20 = [dataSourceMap count];

    if (v20)
    {
      [(BCCardStackViewController *)self _resumeAndRebuildChildViewControllerAsNeeded];
      self->_transitionInProgress = 1;
      childViewControllers = [(BCCardStackViewController *)self childViewControllers];
      v23 = [childViewControllers count] == &dword_0 + 1 || allCopy;
      v126 = v23;

      v118 = allCopy;
      if (allCopy)
      {
        typeCopy = 2;
      }

      else
      {
        typeCopy = type;
      }

      childViewControllers2 = [(BCCardStackViewController *)self childViewControllers];
      lastObject = [childViewControllers2 lastObject];

      childViewControllers3 = [(BCCardStackViewController *)self childViewControllers];
      v116 = animatedCopy;
      v121 = typeCopy;
      if ([childViewControllers3 count] < 2)
      {
        v30 = 0;
      }

      else
      {
        childViewControllers4 = [(BCCardStackViewController *)self childViewControllers];
        childViewControllers5 = [(BCCardStackViewController *)self childViewControllers];
        v30 = [childViewControllers4 objectAtIndexedSubscript:{objc_msgSend(childViewControllers5, "count") - 2}];
      }

      if (v126)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v32 = v31;
      [v32 setLastNavigationType:0];
      presentingViewController = [(BCCardStackViewController *)self presentingViewController];
      v34 = [BCCardStackCoverSourceController coverHostFromPresentingViewController:presentingViewController previousCardSetViewController:v32];

      objc_opt_class();
      presentingViewController2 = [(BCCardStackViewController *)self presentingViewController];
      v114 = BUDynamicCast();

      reasonCopy = reason;
      if (v126)
      {
        childViewControllers6 = [(BCCardStackViewController *)self childViewControllers];
        v37 = [childViewControllers6 objectAtIndexedSubscript:0];
      }

      else
      {
        v37 = lastObject;
      }

      dataSourceMap2 = [(BCCardStackViewController *)self dataSourceMap];
      v39 = [dataSourceMap2 objectForKeyedSubscript:v37];

      v112 = v37;
      focusedIndex = [v37 focusedIndex];
      [lastObject prepareForDismiss];
      [lastObject willMoveToParentViewController:0];
      v124 = v30;
      if ((v126 & 1) == 0)
      {
        childViewControllers7 = [(BCCardStackViewController *)self childViewControllers];
        v42 = [childViewControllers7 count];

        if (v42 >= 3)
        {
          childViewControllers8 = [(BCCardStackViewController *)self childViewControllers];
          childViewControllers9 = [(BCCardStackViewController *)self childViewControllers];
          v45 = [childViewControllers8 objectAtIndexedSubscript:{objc_msgSend(childViewControllers9, "count") - 3}];

          v167[0] = _NSConcreteStackBlock;
          v167[1] = 3221225472;
          v167[2] = sub_2F92C;
          v167[3] = &unk_2C7BE8;
          v168 = v45;
          selfCopy = self;
          v46 = v45;
          v30 = v124;
          v47 = v46;
          [UIView performWithoutAnimation:v167];
        }
      }

      v48 = [[BCCardStackCoverSourceController alloc] initWithCardStackViewController:self isDismiss:1 cardSetViewController:lastObject focusedIndex:focusedIndex coverHost:v34 dataSource:v39];
      [(BCCardStackCoverSourceController *)v48 setIsDismissingCardStack:v126];
      [(BCCardStackCoverSourceController *)v48 setPreferSlideForDismiss:v121 == 2];
      if (v32)
      {
        v49 = [v32 expanded] ^ 1;
      }

      else
      {
        v49 = 0;
      }

      [(BCCardStackCoverSourceController *)v48 setCoversNeedClipping:v49];
      if (v126)
      {
        v50 = v30;
      }

      else
      {
        v50 = 0;
      }

      [(BCCardStackCoverSourceController *)v48 setUnderlyingCardSetViewController:v50];
      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_2F98C;
      v163[3] = &unk_2C8DD0;
      v166 = focusedIndex;
      v111 = v39;
      v164 = v111;
      v123 = v34;
      v165 = v123;
      v161[0] = _NSConcreteStackBlock;
      v161[1] = 3221225472;
      v161[2] = sub_2F9A4;
      v161[3] = &unk_2C7D40;
      v51 = v48;
      v162 = v51;
      v52 = *&CGAffineTransformIdentity.c;
      v158 = *&CGAffineTransformIdentity.a;
      v159 = v52;
      v160 = *&CGAffineTransformIdentity.tx;
      [(BCCardStackCoverSourceController *)v51 prepareForCoverSourceCapturingWithToViewController:v32 toViewTransform:&v158 revealCoverBlock:v163 captureCoverFrameBlock:v161];
      if ([(BCCardStackCoverSourceController *)v51 canUseCoverTransition])
      {
        v53 = v121;
      }

      else
      {
        v53 = 2;
      }

      v54 = [BCCardStackTransitionAnimator alloc];
      configuration = [(BCCardStackViewController *)self configuration];
      v56 = -[BCCardStackTransitionAnimator initWithType:allowsCardExpansion:](v54, "initWithType:allowsCardExpansion:", v53, [configuration cardsCanExpand]);

      [(BCCardStackTransitionAnimator *)v56 setPrefersCrossfade:crossfadeCopy];
      [(BCCardStackTransitionAnimator *)v56 setVelocityForPop:velocity];
      if (v53 == 3)
      {
        rangeRequiringCards = [(BCCardStackCoverSourceController *)v51 rangeRequiringCards];
        [lastObject beginTransitionUpdateModeForCardsAtRange:{rangeRequiringCards, v58}];
        [(BCCardStackCoverSourceController *)v51 performSecondHalfOfProcessing];
        coverMoveItems = [(BCCardStackCoverSourceController *)v51 coverMoveItems];
        [(BCCardStackTransitionAnimator *)v56 setCoverMoveItems:coverMoveItems];

        cardMoveItems = [(BCCardStackCoverSourceController *)v51 cardMoveItems];
        [(BCCardStackTransitionAnimator *)v56 setCardMoveItems:cardMoveItems];
      }

      else
      {
        [(BCCardStackCoverSourceController *)v51 performSecondHalfOfProcessing];
        cardMoveItems = [(BCCardStackCoverSourceController *)v51 cardSlideItems];
        [(BCCardStackTransitionAnimator *)v56 setCardSlideItems:cardMoveItems];
      }

      coverFadeItems = [(BCCardStackCoverSourceController *)v51 coverFadeItems];
      [(BCCardStackTransitionAnimator *)v56 setCoverFadeItems:coverFadeItems];

      visibleCardRange = [lastObject visibleCardRange];
      v64 = v63;
      v65 = [NSMutableArray arrayWithCapacity:v63];
      if (visibleCardRange < &visibleCardRange[v64])
      {
        do
        {
          v66 = [lastObject cardViewControllerAtIndex:visibleCardRange];
          transitioningCardContent = [v66 transitioningCardContent];

          if (transitioningCardContent)
          {
            [v65 addObject:transitioningCardContent];
          }

          ++visibleCardRange;
          --v64;
        }

        while (v64);
      }

      v155[0] = _NSConcreteStackBlock;
      v155[1] = 3221225472;
      v155[2] = sub_2F9AC;
      v155[3] = &unk_2C8DF8;
      v68 = v65;
      v156 = v68;
      v69 = v51;
      v157 = v69;
      v122 = objc_retainBlock(v155);
      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_2FAE0;
      v153[3] = &unk_2C7D40;
      v70 = v69;
      v154 = v70;
      v120 = objc_retainBlock(v153);
      v71 = [[BCCardStackTransitionContext alloc] initWithFromViewController:lastObject toViewController:v32 push:0];
      [(BCCardStackTransitionContext *)v71 setAnimated:v116];
      [(BCCardStackTransitionContext *)v71 setInteractive:0];
      backgroundView = [(BCCardStackViewController *)self backgroundView];
      [(BCCardStackTransitionContext *)v71 setBackgroundView:backgroundView];

      containerViewForHostingCoversDuringAnimation = [v123 containerViewForHostingCoversDuringAnimation];
      [(BCCardStackTransitionContext *)v71 setInnerContainerView:containerViewForHostingCoversDuringAnimation];

      objc_initWeak(&location, self);
      v141[0] = _NSConcreteStackBlock;
      v141[1] = 3221225472;
      v141[2] = sub_2FAE8;
      v141[3] = &unk_2C8E20;
      objc_copyWeak(&v150, &location);
      v110 = v68;
      v142 = v110;
      v117 = v70;
      v143 = v117;
      v18 = lastObject;
      v144 = v18;
      v74 = v32;
      v145 = v74;
      selfCopy2 = self;
      v115 = v114;
      v147 = v115;
      v75 = v56;
      v148 = v75;
      v151 = v118;
      v76 = v125;
      v149 = v76;
      [(BCCardStackTransitionContext *)v71 setCompletionBlock:v141];
      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_2FDF8;
      v138[3] = &unk_2C8E48;
      objc_copyWeak(&v140, &location);
      v77 = v74;
      v139 = v77;
      [(BCCardStackTransitionAnimator *)v75 addAnimations:v138];
      v119 = v76;
      configuration2 = [(BCCardStackViewController *)self configuration];
      LOBYTE(v76) = [configuration2 cardsCanExpand] | v126;

      if ((v76 & 1) == 0)
      {
        childViewControllers10 = [(BCCardStackViewController *)self childViewControllers];
        v80 = [childViewControllers10 count];

        if (v80 < 3)
        {
          v83 = 0;
        }

        else
        {
          childViewControllers11 = [(BCCardStackViewController *)self childViewControllers];
          childViewControllers12 = [(BCCardStackViewController *)self childViewControllers];
          v83 = [childViewControllers11 objectAtIndexedSubscript:{objc_msgSend(childViewControllers12, "count") - 3}];

          view = [v77 view];
          superview = [view superview];
          view2 = [v83 view];
          view3 = [v77 view];
          [superview insertSubview:view2 belowSubview:view3];

          view4 = [v83 view];
          [view4 setHidden:0];

          view5 = [v77 view];
          v90 = view5;
          if (view5)
          {
            objc_msgSend_transform(view5);
          }

          else
          {
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
          }

          view6 = [v83 view];
          v158 = v135;
          v159 = v136;
          v160 = v137;
          [view6 setTransform:&v158];

          view7 = [v77 view];
          [view7 center];
          v94 = v93;
          v96 = v95;
          view8 = [v83 view];
          [view8 setCenter:{v94, v96}];

          [(BCCardStackViewController *)self _applyCardSetViewController:v83 withTransform:1];
        }

        v132[0] = _NSConcreteStackBlock;
        v132[1] = 3221225472;
        v132[2] = sub_2FE94;
        v132[3] = &unk_2C8E70;
        v132[4] = self;
        v133 = v77;
        v98 = v83;
        v134 = v98;
        [(BCCardStackTransitionAnimator *)v75 addAnimations:v132];
      }

      [v18 currentCardViewController];
      v130[0] = _NSConcreteStackBlock;
      v130[1] = 3221225472;
      v130[2] = sub_2FEE0;
      v99 = v130[3] = &unk_2C8E98;
      v131 = v99;
      [(BCCardStackTransitionAnimator *)v75 addAnimations:v130];
      dataSourceMap3 = [(BCCardStackViewController *)self dataSourceMap];
      [dataSourceMap3 setObject:0 forKeyedSubscript:v18];

      [v18 setDataSource:0];
      [v18 setDelegate:0];
      currentCardViewController = [v18 currentCardViewController];
      topContentViewController = [currentCardViewController topContentViewController];
      v103 = BUProtocolCast();

      if (v124)
      {
        currentCardViewController2 = [v124 currentCardViewController];
        topContentViewController2 = [currentCardViewController2 topContentViewController];
      }

      else
      {
        topContentViewController2 = [(BCCardStackViewController *)self presentingViewController];
      }

      [v103 cardStackViewController:self parentCardWillDismissWithReason:reasonCopy targetViewController:topContentViewController2];
      v106 = v124;
      v107 = [[BCCardStackTransitionAnimatorWrapper alloc] initWithAnimator:v75 context:v71 waitUntilReadyBlock:v122 setupBeforeAnimationBlock:v120];
      v108 = v107;
      if (v126)
      {
        [(BCCardStackViewController *)self setPendingWrapper:v107];
        pendingWrapper = [(BCCardStackViewController *)self pendingWrapper];
        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_30020;
        v127[3] = &unk_2C8118;
        objc_copyWeak(&v129, &location);
        v128 = v119;
        [pendingWrapper waitUntilReady:v127];

        objc_destroyWeak(&v129);
        v106 = v124;
      }

      else
      {
        [(BCCardStackTransitionAnimatorWrapper *)v107 waitUntilReadyThenAnimate];
      }

      objc_destroyWeak(&v140);
      objc_destroyWeak(&v150);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = BCCardModelLog(v21);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1E5AD8();
      }
    }

    v17 = v125;
  }
}

- (void)_layoutStackByChangingMode:(BOOL)mode newViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  modeCopy = mode;
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  v9 = [childViewControllers count];

  childViewControllers2 = [(BCCardStackViewController *)self childViewControllers];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_30634;
  v45[3] = &unk_2C8EE0;
  *&v45[4] = width;
  *&v45[5] = height;
  v46 = modeCopy;
  [childViewControllers2 enumerateObjectsWithOptions:2 usingBlock:v45];

  childViewControllers3 = [(BCCardStackViewController *)self childViewControllers];
  v12 = [childViewControllers3 count];

  if (v12 >= 2)
  {
    configuration = [(BCCardStackViewController *)self configuration];
    cardsCanExpand = [configuration cardsCanExpand];

    if (cardsCanExpand)
    {
      if (!modeCopy)
      {
        goto LABEL_14;
      }

      childViewControllers4 = [(BCCardStackViewController *)self childViewControllers];
      v16 = v9 - 2;
      v17 = [childViewControllers4 objectAtIndexedSubscript:v9 - 2];

      [v17 setCovered:0 animated:0 duration:0.0];
      view = [v17 view];
      superview = [view superview];

      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          childViewControllers5 = [(BCCardStackViewController *)self childViewControllers];
          v22 = [childViewControllers5 objectAtIndexedSubscript:i];

          [v22 setCovered:0 animated:0 duration:0.0];
          view2 = [v22 view];
          [view2 setAlpha:1.0];

          view3 = [v22 view];
          [view3 setHidden:0];

          view4 = [v22 view];
          view5 = [v17 view];
          [superview insertSubview:view4 belowSubview:view5];
        }
      }
    }

    else
    {
      childViewControllers6 = [(BCCardStackViewController *)self childViewControllers];
      v28 = v9 - 2;
      v17 = [childViewControllers6 objectAtIndexedSubscript:v9 - 2];

      [(BCCardStackViewController *)self _applyCardSetViewController:v17 withTransform:1];
      [v17 setCovered:1 animated:0 duration:0.0];
      if (modeCopy)
      {
        childViewControllers7 = [(BCCardStackViewController *)self childViewControllers];
        v30 = [childViewControllers7 count];

        if (v30 >= 3)
        {
          if (v28)
          {
            for (j = 0; j != v28; ++j)
            {
              childViewControllers8 = [(BCCardStackViewController *)self childViewControllers];
              v33 = [childViewControllers8 objectAtIndexedSubscript:j];

              [v33 setCovered:1 animated:0 duration:0.0];
              view6 = [v33 view];
              [view6 setAlpha:0.0];

              view7 = [v33 view];
              [view7 removeFromSuperview];
            }
          }
        }
      }
    }
  }

LABEL_14:
  objc_opt_class();
  childViewControllers9 = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers9 lastObject];
  v38 = BUDynamicCast();

  if (modeCopy)
  {
    configuration2 = [(BCCardStackViewController *)self configuration];
    v40 = 0.0;
    if ([configuration2 cardsCanExpand])
    {
      expanded = [v38 expanded];

      if (!expanded)
      {
LABEL_19:
        statusBarBackgroundController = [(BCCardStackViewController *)self statusBarBackgroundController];
        [statusBarBackgroundController setOpacity:v40];

        [(BCCardStackViewController *)self setNeedsStatusBarAppearanceUpdate];
        [(BCCardStackViewController *)self _layoutAdornmentViews];
        goto LABEL_20;
      }

      configuration2 = [v38 currentCardViewController];
      currentState = [configuration2 currentState];
      [currentState cardViewControllerStatusBarBackgroundOpacity:configuration2];
      v40 = v43;
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_layoutAdornmentViews
{
  backgroundView = [(BCCardStackViewController *)self backgroundView];
  [backgroundView removeFromSuperview];

  configuration = [(BCCardStackViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if ((cardsCanExpand & 1) == 0)
  {
    view = [(BCCardStackViewController *)self view];
    backgroundView2 = [(BCCardStackViewController *)self backgroundView];
    [view insertSubview:backgroundView2 atIndex:0];

    backgroundView3 = [(BCCardStackViewController *)self backgroundView];
    leftAnchor = [backgroundView3 leftAnchor];
    view2 = [(BCCardStackViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v38 = [leftAnchor constraintEqualToAnchor:?];
    v42[0] = v38;
    backgroundView4 = [(BCCardStackViewController *)self backgroundView];
    rightAnchor = [backgroundView4 rightAnchor];
    view3 = [(BCCardStackViewController *)self view];
    [view3 rightAnchor];
    view7 = backgroundView9 = rightAnchor;
    v33 = [rightAnchor constraintEqualToAnchor:?];
    v42[1] = v33;
    backgroundView5 = [(BCCardStackViewController *)self backgroundView];
    topAnchor = [backgroundView5 topAnchor];
    view4 = [(BCCardStackViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    backgroundView10 = topAnchor;
    v14TopAnchor = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[2] = v14TopAnchor;
    backgroundView6 = [(BCCardStackViewController *)self backgroundView];
    bottomAnchor = [backgroundView6 bottomAnchor];
    view5 = [(BCCardStackViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v19BottomAnchor = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[3] = v19BottomAnchor;
    v21 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v21];
    goto LABEL_5;
  }

  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];
  backgroundView3 = [lastObject view];

  if (backgroundView3)
  {
    view6 = [(BCCardStackViewController *)self view];
    backgroundView7 = [(BCCardStackViewController *)self backgroundView];
    [view6 insertSubview:backgroundView7 belowSubview:backgroundView3];

    backgroundView8 = [(BCCardStackViewController *)self backgroundView];
    leftAnchor3 = [backgroundView8 leftAnchor];
    leftAnchor2 = [(BCCardStackViewController *)self view];
    [leftAnchor2 leftAnchor];
    v38 = view2 = leftAnchor3;
    backgroundView4 = [leftAnchor3 constraintEqualToAnchor:?];
    v41[0] = backgroundView4;
    backgroundView9 = [(BCCardStackViewController *)self backgroundView];
    rightAnchor2 = [backgroundView9 rightAnchor];
    view7 = [(BCCardStackViewController *)self view];
    [view7 rightAnchor];
    v33 = view3 = rightAnchor2;
    backgroundView5 = [rightAnchor2 constraintEqualToAnchor:?];
    v41[1] = backgroundView5;
    backgroundView10 = [(BCCardStackViewController *)self backgroundView];
    topAnchor3 = [backgroundView10 topAnchor];
    topAnchor2 = [(BCCardStackViewController *)self view];
    v14TopAnchor = [topAnchor2 topAnchor];
    view4 = topAnchor3;
    backgroundView6 = [topAnchor3 constraintEqualToAnchor:v14TopAnchor];
    v41[2] = backgroundView6;
    bottomAnchor = [(BCCardStackViewController *)self backgroundView];
    view5 = [bottomAnchor bottomAnchor];
    bottomAnchor2 = [(BCCardStackViewController *)self view];
    v19BottomAnchor = [bottomAnchor2 bottomAnchor];
    v21 = [view5 constraintEqualToAnchor:v19BottomAnchor];
    v41[3] = v21;
    [NSArray arrayWithObjects:v41 count:4];
    v23 = v22 = backgroundView3;
    [NSLayoutConstraint activateConstraints:v23];

    backgroundView3 = v22;
    leftAnchor = backgroundView8;
LABEL_5:
  }
}

- (void)_addAdornmentViewsToParentView:(id)view
{
  viewCopy = view;
  backgroundView = [(BCCardStackViewController *)self backgroundView];
  [backgroundView removeFromSuperview];

  backgroundView2 = [(BCCardStackViewController *)self backgroundView];
  [viewCopy insertSubview:backgroundView2 atIndex:0];

  backgroundView3 = [(BCCardStackViewController *)self backgroundView];
  leftAnchor = [backgroundView3 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v24[0] = v20;
  backgroundView4 = [(BCCardStackViewController *)self backgroundView];
  rightAnchor = [backgroundView4 rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v24[1] = v7;
  backgroundView5 = [(BCCardStackViewController *)self backgroundView];
  topAnchor = [backgroundView5 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v11;
  backgroundView6 = [(BCCardStackViewController *)self backgroundView];
  bottomAnchor = [backgroundView6 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];

  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

+ (BOOL)_alwaysUseSlideAnimation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BCCardStackTransitionForceSlideAnimation"];

  return v3;
}

- (void)_scaleBackCardSetViewController:(id)controller shiftUp:(BOOL)up cumulative:(BOOL)cumulative
{
  cumulativeCopy = cumulative;
  upCopy = up;
  controllerCopy = controller;
  view = [controllerCopy view];
  [view center];
  v10 = v9;

  v11 = *&CGAffineTransformIdentity.c;
  *&v19.a = *&CGAffineTransformIdentity.a;
  *&v19.c = v11;
  *&v19.tx = *&CGAffineTransformIdentity.tx;
  if (cumulativeCopy)
  {
    view2 = [controllerCopy view];
    v13 = view2;
    if (view2)
    {
      objc_msgSend_transform(view2);
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    CGAffineTransformTranslate(&v19, &v18, 0.0, -v10);
  }

  else
  {
    CGAffineTransformMakeTranslation(&v19, 0.0, -v10);
  }

  v17 = v19;
  CGAffineTransformScale(&v18, &v17, 0.95, 0.95);
  v19 = v18;
  v14 = -9.0;
  if (upCopy)
  {
    v14 = 9.0;
  }

  v17 = v18;
  CGAffineTransformTranslate(&v18, &v17, 0.0, v14 + v10);
  v19 = v18;
  v16 = v18;
  view3 = [controllerCopy view];
  v18 = v16;
  [view3 setTransform:&v18];
}

- (id)_pushCardsWithDataSource:(id)source focusedIndex:(unint64_t)index animated:(BOOL)animated presentingViewController:(id)controller
{
  animatedCopy = animated;
  sourceCopy = source;
  controllerCopy = controller;
  v11 = controllerCopy;
  if (self->_transitionInProgress)
  {
    v12 = BCCardModelLog(controllerCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1E5B40();
    }

    v13 = 0;
    goto LABEL_49;
  }

  [(BCCardStackViewController *)self lockChildForStatusBarStyle];
  self->_transitionInProgress = 1;
  v14 = [BCStatusBarBackgroundController backgroundControllerForViewController:v11];
  [(BCCardStackViewController *)self setStatusBarBackgroundController:v14];

  if ([(BCCardStackViewController *)self presentingViewControllerIsFullScreen])
  {
    [v11 view];
  }

  else
  {
    [v11 bc_windowForViewController];
  }
  v15 = ;
  [v15 bounds];
  [(BCCardStackViewController *)self setInitialFrame:?];

  [v11 additionalSafeAreaInsets];
  [(BCCardStackViewController *)self setToolbarHeight:?];
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (lastObject)
  {
    view = [(BCCardStackViewController *)self view];
    window = [view window];
    [window setUserInteractionEnabled:0];
  }

  configuration = [lastObject configuration];
  if ([configuration cardsCanExpand])
  {
    currentCardViewController = [lastObject currentCardViewController];
    currentState = [currentCardViewController currentState];
    v23 = +[BCCardSetState expandedState];

    if (currentState == v23)
    {
      goto LABEL_14;
    }

    configuration = [lastObject currentCardViewController];
    [configuration goExpanded];
  }

LABEL_14:
  [lastObject bc_analyticsVisibilitySubtreeWillDisappear];
  v24 = objc_alloc_init(BCCardSetViewController);
  [(BCCardSetViewController *)v24 setDataSource:self];
  [(BCCardSetViewController *)v24 setDelegate:self];
  dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
  [dataSourceMap setObject:sourceCopy forKeyedSubscript:v24];

  view2 = [(BCCardStackViewController *)self view];
  [view2 bounds];
  [(BCCardSetViewController *)v24 setInitialFrame:?];

  configuration2 = [(BCCardStackViewController *)self configuration];
  [(BCCardSetViewController *)v24 setConfiguration:configuration2];

  [(BCCardStackViewController *)self contentInset];
  [(BCCardSetViewController *)v24 setContentInset:?];
  configuration3 = [(BCCardStackViewController *)self configuration];
  if ([configuration3 cardsCanExpand])
  {
    v100 = 0;
  }

  else
  {
    childViewControllers2 = [(BCCardStackViewController *)self childViewControllers];
    v30 = [childViewControllers2 count];

    if (v30 < 2)
    {
      v100 = 0;
      goto LABEL_20;
    }

    configuration3 = [(BCCardStackViewController *)self childViewControllers];
    childViewControllers3 = [(BCCardStackViewController *)self childViewControllers];
    v100 = [configuration3 objectAtIndexedSubscript:{objc_msgSend(childViewControllers3, "count") - 2}];
  }

LABEL_20:
  v96 = lastObject == 0;
  [(BCCardStackViewController *)self addChildViewController:v24];
  statusBarBackgroundController = [(BCCardStackViewController *)self statusBarBackgroundController];
  [(BCCardSetViewController *)v24 setStatusBarBackgroundController:statusBarBackgroundController];

  view3 = [(BCCardStackViewController *)self view];
  [view3 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  view4 = [(BCCardSetViewController *)v24 view];
  [view4 setFrame:{v35, v37, v39, v41}];

  [(BCCardSetViewController *)v24 setFocusedIndex:index];
  if ((lastObject || -[BCCardStackViewController presentingViewControllerIsFullScreen](self, "presentingViewControllerIsFullScreen") || [v11 bc_alwaysUseCoverTransitionForCardPresenting]) && (objc_msgSend(objc_opt_class(), "_alwaysUseSlideAnimation") & 1) == 0)
  {
    v45 = [BCCardStackCoverSourceController coverHostFromPresentingViewController:v11 previousCardSetViewController:lastObject];
    if (v45)
    {
      v144[0] = _NSConcreteStackBlock;
      v144[1] = 3221225472;
      v144[2] = sub_31D6C;
      v144[3] = &unk_2C7D40;
      v46 = v24;
      v145 = v46;
      [UIView performWithoutAnimation:v144];
      [(BCCardSetViewController *)v46 setLastNavigationType:1];
      v44 = [[BCCardStackCoverSourceController alloc] initWithCardStackViewController:self isDismiss:0 cardSetViewController:v46 focusedIndex:index coverHost:v45 dataSource:sourceCopy];
      [(BCCardStackCoverSourceController *)v44 performFirstHalfOfProcessing];
      canUseCoverTransition = [(BCCardStackCoverSourceController *)v44 canUseCoverTransition];
      containerViewForHostingCoversDuringAnimation = [v45 containerViewForHostingCoversDuringAnimation];
    }

    else
    {
      containerViewForHostingCoversDuringAnimation = 0;
      canUseCoverTransition = 0;
      v44 = 0;
    }
  }

  else
  {
    containerViewForHostingCoversDuringAnimation = 0;
    canUseCoverTransition = 0;
    v44 = 0;
  }

  v97 = sourceCopy;
  v47 = canUseCoverTransition;
  v48 = canUseCoverTransition;
  v49 = [BCCardStackTransitionAnimator alloc];
  configuration4 = [(BCCardStackViewController *)self configuration];
  v98 = -[BCCardStackTransitionAnimator initWithType:allowsCardExpansion:](v49, "initWithType:allowsCardExpansion:", v48, [configuration4 cardsCanExpand]);

  v105 = objc_opt_new();
  v101 = v11;
  v99 = v47;
  if (v47)
  {
    v95 = lastObject;
    v51 = objc_opt_new();
    v103 = objc_opt_new();
    v52 = dispatch_group_create();
    v94 = v44;
    rangeRequiringCards = [(BCCardStackCoverSourceController *)v44 rangeRequiringCards];
    [(BCCardSetViewController *)v24 beginTransitionUpdateModeForCardsAtRange:rangeRequiringCards, v54];
    [(BCCardSetViewController *)v24 didBecomeTopCardSet];
    visibleCardRange = [(BCCardSetViewController *)v24 visibleCardRange];
    v57 = v56;
    v58 = [NSMutableArray arrayWithCapacity:v56];
    if (visibleCardRange < &visibleCardRange[v57])
    {
      do
      {
        v59 = [(BCCardSetViewController *)v24 cardViewControllerAtIndex:visibleCardRange];
        transitioningCardContent = [v59 transitioningCardContent];

        if (transitioningCardContent)
        {
          [v58 addObject:transitioningCardContent];
          dispatch_group_enter(v52);
          v142[0] = _NSConcreteStackBlock;
          v142[1] = 3221225472;
          v142[2] = sub_31DB0;
          v142[3] = &unk_2C7D40;
          v143 = v52;
          v61 = [transitioningCardContent cardStackTransitionSuspendUpdatesAssertionUntilContentExceedsHeightWithCompletion:v142];
          [v51 addObject:v61];

          cardStackTransitionSuspendLayoutAssertion = [transitioningCardContent cardStackTransitionSuspendLayoutAssertion];
          [v105 addObject:cardStackTransitionSuspendLayoutAssertion];

          if (index != visibleCardRange)
          {
            [v103 addObject:transitioningCardContent];
            cardStackTransitionSuspendUpdatesAssertion = [transitioningCardContent cardStackTransitionSuspendUpdatesAssertion];
            [v51 addObject:cardStackTransitionSuspendUpdatesAssertion];
          }
        }

        ++visibleCardRange;
        --v57;
      }

      while (v57);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_31DB8;
    block[3] = &unk_2C7BE8;
    v140 = v103;
    v141 = v51;
    v93 = v51;
    v64 = v103;
    dispatch_group_notify(v52, &_dispatch_main_q, block);
    v66 = BCCardStackSignpost(v65);
    if (os_signpost_enabled(v66))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v66, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Display product cards", "", buf, 2u);
    }

    v68 = BCCardStackSignpost(v67);
    v69 = os_signpost_id_generate(v68);

    v71 = BCCardStackSignpost(v70);
    v72 = v71;
    animatedCopy = animatedCopy;
    v73 = v98;
    if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v72, OS_SIGNPOST_INTERVAL_BEGIN, v69, "Timeout: Display product cards", "", buf, 2u);
    }

    kdebug_trace();
    v130[0] = _NSConcreteStackBlock;
    v130[1] = 3221225472;
    v130[2] = sub_31F98;
    v130[3] = &unk_2C8F58;
    v74 = v58;
    v131 = v74;
    v138 = v96;
    v132 = v101;
    selfCopy = self;
    v134 = v24;
    v137 = v69;
    v44 = v94;
    v75 = v94;
    v135 = v75;
    v136 = v98;
    v107 = objc_retainBlock(v130);
    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_32810;
    v128[3] = &unk_2C7D40;
    v129 = v75;
    v76 = objc_retainBlock(v128);

    lastObject = v95;
  }

  else
  {
    v76 = 0;
    v107 = 0;
    v74 = 0;
    v73 = v98;
  }

  v104 = v76;
  v77 = [[BCCardStackTransitionContext alloc] initWithFromViewController:lastObject toViewController:v24 push:1];
  [(BCCardStackTransitionContext *)v77 setAnimated:animatedCopy];
  [(BCCardStackTransitionContext *)v77 setInteractive:0];
  backgroundView = [(BCCardStackViewController *)self backgroundView];
  [(BCCardStackTransitionContext *)v77 setBackgroundView:backgroundView];

  [(BCCardStackTransitionContext *)v77 setInnerContainerView:containerViewForHostingCoversDuringAnimation];
  objc_initWeak(buf, self);
  v117[0] = _NSConcreteStackBlock;
  v117[1] = 3221225472;
  v117[2] = sub_3281C;
  v117[3] = &unk_2C8F80;
  v79 = v105;
  v118 = v79;
  objc_copyWeak(&v125, buf);
  v126 = v99;
  v80 = v74;
  v119 = v80;
  v81 = v44;
  v120 = v81;
  v82 = v24;
  v121 = v82;
  v83 = v73;
  v84 = lastObject;
  v85 = v83;
  v122 = v83;
  selfCopy2 = self;
  v86 = v84;
  v87 = v84;
  v124 = v87;
  [(BCCardStackTransitionContext *)v77 setCompletionBlock:v117];
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_329E0;
  v114[3] = &unk_2C8E48;
  objc_copyWeak(&v116, buf);
  v12 = v87;
  v115 = v12;
  [(BCCardStackTransitionAnimator *)v85 addAnimations:v114];
  configuration5 = [(BCCardStackViewController *)self configuration];
  cardsCanExpand = [configuration5 cardsCanExpand];
  if (v86)
  {
    v90 = cardsCanExpand;
  }

  else
  {
    v90 = 1;
  }

  if ((v90 & 1) == 0)
  {
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_32A80;
    v110[3] = &unk_2C8FA8;
    objc_copyWeak(&v113, buf);
    v111 = v12;
    v112 = v100;
    [(BCCardStackTransitionAnimator *)v85 addAnimations:v110];

    objc_destroyWeak(&v113);
  }

  [(BCCardSetViewController *)v82 currentCardViewController];
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_32AF0;
  v91 = v108[3] = &unk_2C8E98;
  v109 = v91;
  [(BCCardStackTransitionAnimator *)v85 addAnimations:v108];
  v13 = [[BCCardStackTransitionAnimatorWrapper alloc] initWithAnimator:v85 context:v77 waitUntilReadyBlock:v107 setupBeforeAnimationBlock:v104];

  objc_destroyWeak(&v116);
  objc_destroyWeak(&v125);

  objc_destroyWeak(buf);
  sourceCopy = v97;
  v11 = v101;
LABEL_49:

  return v13;
}

- (id)_pushCardBackAnimatorForCardSet:(id)set cardSetViewControllerToFade:(id)fade duration:(double)duration
{
  setCopy = set;
  fadeCopy = fade;
  v9 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.33 controlPoint2:{0.0, 0.2, 1.0}];
  v10 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.28];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_32DC8;
  v16[3] = &unk_2C89F8;
  v16[4] = self;
  v11 = setCopy;
  v17 = v11;
  v12 = fadeCopy;
  v18 = v12;
  [v10 addAnimations:v16];
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_32E50;
    v14[3] = &unk_2C8FD0;
    v15 = v12;
    [v10 addCompletion:v14];
  }

  return v10;
}

- (void)_applyCardSetViewController:(id)controller withTransform:(unint64_t)transform
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view center];
  v8 = v7;

  v9 = *&CGAffineTransformIdentity.c;
  *&v22.a = *&CGAffineTransformIdentity.a;
  *&v22.c = v9;
  *&v22.tx = *&CGAffineTransformIdentity.tx;
  if (transform == 1)
  {
    view2 = [controllerCopy view];
    v13 = view2;
    if (view2)
    {
      objc_msgSend_transform(view2);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    CGAffineTransformTranslate(&v22, &v21, 0.0, -v8);

    goto LABEL_12;
  }

  if (transform != 2)
  {
    CGAffineTransformMakeTranslation(&v22, 0.0, -v8);
LABEL_12:
    v20 = v22;
    CGAffineTransformScale(&v21, &v20, 0.95, 0.95);
    v15 = *&v21.c;
    v14 = *&v21.tx;
    v22 = v21;
    v16 = *&v21.a;
    v17 = -9.0;
    goto LABEL_13;
  }

  view3 = [controllerCopy view];
  v11 = view3;
  if (view3)
  {
    objc_msgSend_transform(view3);
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CGAffineTransformTranslate(&v22, &v21, 0.0, -v8);

  v20 = v22;
  CGAffineTransformScale(&v21, &v20, 1.05263158, 1.05263158);
  v15 = *&v21.c;
  v14 = *&v21.tx;
  v22 = v21;
  v16 = *&v21.a;
  v17 = 9.0;
LABEL_13:
  *&v20.a = v16;
  *&v20.c = v15;
  *&v20.tx = v14;
  CGAffineTransformTranslate(&v21, &v20, 0.0, v8 + v17);
  v22 = v21;
  v19 = v21;
  view4 = [controllerCopy view];
  v21 = v19;
  [view4 setTransform:&v21];
}

- (void)_layoutUnderlyingCardSetViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(BCCardStackViewController *)self _applyCardSetViewController:controllerCopy withTransform:0];
  [controllerCopy setCovered:1 animated:animatedCopy duration:0.28];
}

- (id)_popCardFrontAnimatorForCardSet:(id)set cardSetViewControllerToUnfade:(id)unfade duration:(double)duration
{
  setCopy = set;
  unfadeCopy = unfade;
  v9 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.33 controlPoint2:{0.0, 0.2, 1.0}];
  v10 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.28];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_33244;
  v14[3] = &unk_2C89F8;
  v15 = setCopy;
  v16 = unfadeCopy;
  selfCopy = self;
  v11 = unfadeCopy;
  v12 = setCopy;
  [v10 addAnimations:v14];

  return v10;
}

- (id)_navigationControllerForViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    presentingViewController = [(BCCardStackViewController *)self presentingViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    presentingViewController2 = [(BCCardStackViewController *)self presentingViewController];
    v6 = presentingViewController2;
    if (isKindOfClass)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = v5;
  if (!v5)
  {
    presentingViewController2 = controllerCopy;
LABEL_7:
    navigationController = [presentingViewController2 navigationController];
    goto LABEL_8;
  }

  expandedCardViewController = [v5 expandedCardViewController];
  navigationController = [expandedCardViewController cardNavigationController];

LABEL_8:
  v6 = navigationController;
LABEL_9:

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  pendingWrapper = [(BCCardStackViewController *)self pendingWrapper];

  if (!pendingWrapper)
  {
    v6 = BCCardModelLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E5BF0();
    }
  }

  pendingWrapper2 = [(BCCardStackViewController *)self pendingWrapper];

  return pendingWrapper2;
}

- (unint64_t)cardCountForCardSet:(id)set
{
  setCopy = set;
  dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
  v6 = [dataSourceMap objectForKeyedSubscript:setCopy];

  v7 = [v6 numberOfCards:self];
  return v7;
}

- (BOOL)isTopCardSetViewController:(id)controller
{
  controllerCopy = controller;
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject == controllerCopy;
}

- (id)contentViewControllerForCardSet:(id)set index:(unint64_t)index cardContentScrollManager:(id)manager
{
  managerCopy = manager;
  setCopy = set;
  dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
  v11 = [dataSourceMap objectForKeyedSubscript:setCopy];

  v12 = [v11 contentViewControllerForCardAtIndex:index cardContentScrollManager:managerCopy];

  objc_opt_class();
  v13 = BUClassAndProtocolCast();

  return v13;
}

- (Class)cardNavigationControllerForCardSet:(id)set
{
  setCopy = set;
  dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
  v6 = [dataSourceMap objectForKeyedSubscript:setCopy];

  v7 = [v6 cardNavigationControllerClass:self];

  return v7;
}

- (void)cardSetViewController:(id)controller prepareForNavigationTransitionWithContext:(id)context
{
  containerView = [context containerView];
  [(BCCardStackViewController *)self _addAdornmentViewsToParentView:containerView];

  self->_transitionInProgress = 1;
}

- (void)cardSetViewController:(id)controller animatorForExpanding:(id)expanding
{
  controllerCopy = controller;
  expandingCopy = expanding;
  objc_msgSend_duration(expandingCopy);
  v9 = v8;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_337E4;
  v10[3] = &unk_2C9048;
  v11[1] = v9;
  objc_copyWeak(v11, &location);
  [expandingCopy addAnimations:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)cardSetViewController:(id)controller animatorForUnexpanding:(id)unexpanding
{
  controllerCopy = controller;
  unexpandingCopy = unexpanding;
  objc_msgSend_duration(unexpandingCopy);
  v9 = v8;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_33BE0;
  v12[3] = &unk_2C9048;
  v13[1] = v9;
  objc_copyWeak(v13, &location);
  [unexpandingCopy addAnimations:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_33DA8;
  v10[3] = &unk_2C90B0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [unexpandingCopy addCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)cardSetViewController:(id)controller animatorForInteractiveDismiss:(id)dismiss
{
  v11 = NAN;
  dismissCopy = dismiss;
  [dismissCopy setFinalAnimationType:{-[BCCardStackViewController _animationTypeForDismissingCardSetViewController:distanceToCoverSource:](self, "_animationTypeForDismissingCardSetViewController:distanceToCoverSource:", controller, &v11)}];
  [dismissCopy setDistanceToCoverSource:v11];
  backgroundView = [(BCCardStackViewController *)self backgroundView];
  [dismissCopy setBackgroundView:backgroundView];

  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  v9 = [childViewControllers count] > 1;

  configuration = [(BCCardStackViewController *)self configuration];
  [dismissCopy setShouldRetainBackgroundAndTitleState:{v9 & ~objc_msgSend(configuration, "cardsCanExpand")}];
}

- (int64_t)_animationTypeForDismissingCardSetViewController:(id)controller distanceToCoverSource:(double *)source
{
  controllerCopy = controller;
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  if ([childViewControllers count] <= 1)
  {
  }

  else
  {
    childViewControllers2 = [(BCCardStackViewController *)self childViewControllers];
    childViewControllers3 = [(BCCardStackViewController *)self childViewControllers];
    v10 = [childViewControllers2 objectAtIndexedSubscript:{objc_msgSend(childViewControllers3, "count") - 2}];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (![(BCCardStackViewController *)self presentingViewControllerIsFullScreen])
  {
    presentingViewController = [(BCCardStackViewController *)self presentingViewController];
    bc_alwaysUseCoverTransitionForCardPresenting = [presentingViewController bc_alwaysUseCoverTransitionForCardPresenting];

    if (!bc_alwaysUseCoverTransitionForCardPresenting)
    {
      v21 = 2;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_8:
  presentingViewController2 = [(BCCardStackViewController *)self presentingViewController];
  v14 = [BCCardStackCoverSourceController coverHostFromPresentingViewController:presentingViewController2 previousCardSetViewController:v10];

  currentCardViewController = [controllerCopy currentCardViewController];
  view = [currentCardViewController view];
  superview = [view superview];

  dataSourceMap = [(BCCardStackViewController *)self dataSourceMap];
  v19 = [dataSourceMap objectForKeyedSubscript:controllerCopy];
  v20 = [BCCardStackCoverSourceController canUseCoverTransitionForDismissingCardSetViewController:controllerCopy dataSource:v19 coverHost:v14 coverYOffset:source inCoordinatesOfView:superview];

  if ([objc_opt_class() _alwaysUseSlideAnimation] & 1 | ((v20 & 1) == 0))
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

LABEL_12:
  return v21;
}

- (void)cardSetViewController:(id)controller didCommitDismissWithVelocity:(double)velocity interactiveAnimator:(id)animator
{
  finalAnimationType = [animator finalAnimationType];

  [(BCCardStackViewController *)self _popCardsAnimated:1 popAll:0 animationType:finalAnimationType prefersCrossfade:0 velocity:2 reason:0 completion:velocity];
}

- (id)topCardSetViewController
{
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (id)effectiveAnalyticsTrackerForTopCard
{
  topCardSetViewController = [(BCCardStackViewController *)self topCardSetViewController];
  currentCardViewController = [topCardSetViewController currentCardViewController];
  topContentViewController = [currentCardViewController topContentViewController];
  ba_effectiveAnalyticsTracker = [topContentViewController ba_effectiveAnalyticsTracker];

  return ba_effectiveAnalyticsTracker;
}

- (id)im_visibleChildViewControllers
{
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (lastObject)
  {
    v6 = lastObject;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)child
{
  childCopy = child;
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject == childCopy;
}

- (void)_updateStatusBarBackgroundOpacity
{
  topCardSetViewController = [(BCCardStackViewController *)self topCardSetViewController];
  [(BCCardStackViewController *)self _updateStatusBarBackgroundOpacityForCardSetViewController:topCardSetViewController];
}

- (void)_updateStatusBarBackgroundOpacityForCardSetViewController:(id)controller
{
  controllerCopy = controller;
  v4 = _os_feature_enabled_impl();
  if (controllerCopy && (v4 & 1) == 0)
  {
    currentCardViewController = [controllerCopy currentCardViewController];
    cardNavigationController = [currentCardViewController cardNavigationController];
    isNavigationBarHidden = [cardNavigationController isNavigationBarHidden];

    currentCardViewController2 = [controllerCopy currentCardViewController];
    currentState = [currentCardViewController2 currentState];
    v10 = +[BCCardSetState expandedState];

    if (currentState == v10)
    {
      v11 = isNavigationBarHidden;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    statusBarBackgroundController = [(BCCardStackViewController *)self statusBarBackgroundController];
    [statusBarBackgroundController setOpacity:v12];
  }

  _objc_release_x1(v4);
}

- (unint64_t)_indexOfChildViewControllerToSuspendOrResume
{
  childViewControllers = [(BCCardStackViewController *)self childViewControllers];
  v3 = [childViewControllers count];
  if (v3 <= 2)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = v3 - 3;
  }

  return v4;
}

- (void)_suspendAndTeardownChildViewControllerAsNeeded
{
  _indexOfChildViewControllerToSuspendOrResume = [(BCCardStackViewController *)self _indexOfChildViewControllerToSuspendOrResume];
  if (_indexOfChildViewControllerToSuspendOrResume != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = _indexOfChildViewControllerToSuspendOrResume;
    objc_opt_class();
    childViewControllers = [(BCCardStackViewController *)self childViewControllers];
    v6 = [childViewControllers objectAtIndexedSubscript:v4];
    v7 = BUDynamicCast();

    [v7 suspendAndTeardownForReason:@"card stack: card set not displayed"];
  }
}

- (void)_resumeAndRebuildChildViewControllerAsNeeded
{
  _indexOfChildViewControllerToSuspendOrResume = [(BCCardStackViewController *)self _indexOfChildViewControllerToSuspendOrResume];
  if (_indexOfChildViewControllerToSuspendOrResume != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = _indexOfChildViewControllerToSuspendOrResume;
    objc_opt_class();
    childViewControllers = [(BCCardStackViewController *)self childViewControllers];
    v6 = [childViewControllers objectAtIndexedSubscript:v4];
    v7 = BUDynamicCast();

    [v7 resumeAndRebuildForReason:@"card stack: card set will display"];
  }
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v3 didReceiveMemoryWarning];
  [(BCCardStackViewController *)self _suspendAndTeardownChildViewControllerAsNeeded];
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"_dismissCardStack:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)initialFrame
{
  x = self->_initialFrame.origin.x;
  y = self->_initialFrame.origin.y;
  width = self->_initialFrame.size.width;
  height = self->_initialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)lastLayoutStackSize
{
  width = self->_lastLayoutStackSize.width;
  height = self->_lastLayoutStackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSSet)messagesAlreadyDisplayed
{
  objc_opt_class();
  v3 = objc_getAssociatedObject(self, off_33CFB8);
  v4 = BUDynamicCast();

  return v4;
}

- (void)viewController:(id)controller didDisplayMessageWithId:(id)id
{
  idCopy = id;
  controllerCopy = controller;
  messagesAlreadyDisplayed = [(BCCardStackViewController *)self messagesAlreadyDisplayed];
  if (!messagesAlreadyDisplayed)
  {
    messagesAlreadyDisplayed = objc_alloc_init(NSSet);
  }

  v9 = [messagesAlreadyDisplayed setByAddingObject:idCopy];

  [(BCCardStackViewController *)self setMessagesAlreadyDisplayed:v9];
  [(BCCardStackViewController *)self notifyAllCardsAboutMessageDisplayed:idCopy from:controllerCopy];
}

- (void)notifyAllCardsAboutMessageDisplayed:(id)displayed from:(id)from
{
  displayedCopy = displayed;
  fromCopy = from;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(BCCardStackViewController *)self childViewControllers];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v12 = BUDynamicCast();
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_3DA0C;
        v14[3] = &unk_2C95C8;
        v15 = fromCopy;
        v16 = displayedCopy;
        [v12 enumerateAllCardsUsingBlock:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

@end