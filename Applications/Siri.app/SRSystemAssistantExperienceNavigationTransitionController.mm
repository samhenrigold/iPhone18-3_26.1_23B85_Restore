@interface SRSystemAssistantExperienceNavigationTransitionController
- (BOOL)_isDrillIn;
- (SRSystemAssistantExperienceNavigationTransitionController)init;
- (SiriUINavigationController)_navigationController;
- (UIButton)_closeButton;
- (UIViewControllerAnimatedTransitioning)animationController;
- (id)_platterViewOfViewController:(id)controller;
- (id)_saeContainerViewFromViewController:(id)controller;
- (id)_snippetContainerViewOfView:(id)view;
- (void)_addDrillOutSwipeRecognizerToView:(id)view forDirection:(unint64_t)direction;
- (void)_createCloseButton:(id)button;
- (void)_moveCloseButtonToView:(id)view;
- (void)_popToRootViewControllerForDrillOut;
- (void)_removeCloseButton;
- (void)_setCloseButtonConstraintsForView:(id)view;
- (void)animateDrillInTransitionWithContext:(id)context;
- (void)animatePopToRootViewControllerWithContext:(id)context;
- (void)animateTransition:(id)transition;
- (void)configureWithNavigationController:(id)controller;
@end

@implementation SRSystemAssistantExperienceNavigationTransitionController

- (SRSystemAssistantExperienceNavigationTransitionController)init
{
  v6.receiver = self;
  v6.super_class = SRSystemAssistantExperienceNavigationTransitionController;
  v2 = [(SRSystemAssistantExperienceNavigationTransitionController *)&v6 init];
  if (v2)
  {
    v3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.75 response:0.628318531];
    springAnimationBehavior = v2->_springAnimationBehavior;
    v2->_springAnimationBehavior = v3;
  }

  return v2;
}

- (void)configureWithNavigationController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setNavigationController:controllerCopy];
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC0F0(v5);
    }
  }
}

- (UIViewControllerAnimatedTransitioning)animationController
{
  if (-[SRSystemAssistantExperienceNavigationTransitionController _isDrillIn](self, "_isDrillIn") && -[SRSystemAssistantExperienceNavigationTransitionController operation](self, "operation") == 1 || (-[SRSystemAssistantExperienceNavigationTransitionController _navigationController](self, "_navigationController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 popToRootViewController], v3, v4))
  {
    WeakRetained = self;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_closeButton);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      SiriUIDeviceIsPad(WeakRetained, v6);
      v9 = v8;

      if (v9)
      {
        _isDrillIn = [(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn];
        v11 = objc_loadWeakRetained(&self->_closeButton);
        v12 = v11;
        if (_isDrillIn)
        {
          [v11 setHidden:0];

          v12 = objc_loadWeakRetained(&self->_navigationController);
          view = [v12 view];
          [(SRSystemAssistantExperienceNavigationTransitionController *)self _moveCloseButtonToView:view];
        }

        else
        {
          [v11 setHidden:1];
        }
      }

      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  operation = [(SRSystemAssistantExperienceNavigationTransitionController *)self operation];
  switch(operation)
  {
    case 2:
      _navigationController = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
      popToRootViewController = [_navigationController popToRootViewController];

      if (popToRootViewController)
      {
        _navigationController2 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
        [_navigationController2 setPopToRootViewController:0];

        [(SRSystemAssistantExperienceNavigationTransitionController *)self animatePopToRootViewControllerWithContext:transitionCopy];
      }

      break;
    case 1:
      [(SRSystemAssistantExperienceNavigationTransitionController *)self animateDrillInTransitionWithContext:transitionCopy];
      break;
    case 0:
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
      {
        sub_1000CC174(self, v6);
      }

      break;
  }
}

- (void)animateDrillInTransitionWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  [containerView setClipsToBounds:1];
  v3 = +[UIScreen mainScreen];
  traitCollection = [v3 traitCollection];
  [traitCollection displayCornerRadius];
  v91 = v5;

  layer = [containerView layer];
  [layer setCornerRadius:v91];

  v89 = [contextCopy viewForKey:UITransitionContextFromViewKey];
  v100 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [contextCopy viewForKey:UITransitionContextToViewKey];
  v97 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  IsPad = SiriSharedUIDeviceIsPad();
  if (IsPad)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 2.0;
  }

  if (IsPad)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 + 2.0;
  }

  v87 = v18;
  v88 = v17;
  v98 = v11;
  v99 = v9;
  if (IsPad)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + -1.0;
  }

  if (IsPad)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + -1.0;
  }

  v102 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _platterViewOfViewController:v100, *&v20, *&v19];
  v90 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _snippetContainerViewOfView:v102];
  v21 = [UIVisualEffectView alloc];
  v22 = [UIBlurEffect effectWithStyle:4];
  v23 = [v21 initWithEffect:v22];

  v105 = v23;
  layer2 = [v23 layer];
  v25 = SiriSharedUISmartDialogPlatterCornerRadius;
  [layer2 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

  [v7 bounds];
  [v105 setFrame:?];
  layer3 = [v105 layer];
  [layer3 setMasksToBounds:1];

  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v105 setUserInteractionEnabled:0];
  [v7 addSubview:v105];
  leadingAnchor = [v105 leadingAnchor];
  leadingAnchor2 = [v7 leadingAnchor];
  v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v139[0] = v93;
  trailingAnchor = [v105 trailingAnchor];
  trailingAnchor2 = [v7 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v139[1] = v28;
  topAnchor = [v105 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v139[2] = v31;
  bottomAnchor = [v105 bottomAnchor];
  bottomAnchor2 = [v7 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v139[3] = v34;
  v35 = [NSArray arrayWithObjects:v139 count:4];
  [NSLayoutConstraint activateConstraints:v35];

  v36 = [PLPlatterView platterViewWithBlurEffectStyle:9];
  SiriUIDeviceIsPad(v36, v37);
  if (v38)
  {
    v39 = objc_alloc_init(UIView);

    [(SRSystemAssistantExperienceViewController *)v39 siriSharedUI_setGlassBackground];
  }

  else
  {
    v39 = v36;
  }

  _navigationController = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  [_navigationController setAnimatingBackgroundView:v39];

  layer4 = [(SRSystemAssistantExperienceViewController *)v39 layer];
  [layer4 setMasksToBounds:1];

  [v102 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  superview = [v102 superview];
  [containerView convertRect:superview fromView:{v43, v45, v47, v49}];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  [(SRSystemAssistantExperienceViewController *)v39 setFrame:v52, v54, v56, v58];
  layer5 = [(SRSystemAssistantExperienceViewController *)v39 layer];
  [layer5 setCornerRadius:v25];

  [(SRSystemAssistantExperienceViewController *)v39 setAutoresizingMask:18];
  v104 = objc_alloc_init(UIView);
  _navigationController2 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  [_navigationController2 setBlurrableView:v104];

  [containerView frame];
  [v104 setFrame:?];
  [v104 setAutoresizingMask:18];
  [v104 addSubview:v39];
  [v90 frame];
  MinY = CGRectGetMinY(v140);
  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  [v7 setFrame:{v52, v54, v56, v58}];
  layer6 = [v7 layer];
  [layer6 setCornerRadius:v25];

  layer7 = [v7 layer];
  [layer7 setMasksToBounds:1];

  [containerView insertSubview:v7 belowSubview:v89];
  [containerView insertSubview:v104 belowSubview:v7];
  if ([(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn])
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _createCloseButton:v7];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _addDrillOutSwipeRecognizerToView:v7 forDirection:1];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _addDrillOutSwipeRecognizerToView:v7 forDirection:8];
  }

  v141.origin.y = v98;
  v141.origin.x = v99;
  v141.size.width = v13;
  v141.size.height = v15;
  MidX = CGRectGetMidX(v141);
  v142.origin.y = v98;
  v142.origin.x = v99;
  v142.size.width = v13;
  v142.size.height = v15;
  [v7 setCenter:{MidX, MinY + CGRectGetMidY(v142)}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = v97;
  }

  else
  {
    v65 = 0;
  }

  v96 = v65;
  [v65 prepareForDrillInAnimation];
  v66 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:v100];
  [v66 prepareForDrillinAnimation];
  resultViewContainer = [v66 resultViewContainer];
  [resultViewContainer frame];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  objc_initWeak(&location, self);
  [v66 resultViewContainer];
  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_1000513AC;
  v137 = v136[3] = &unk_100167010;
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_1000513B4;
  v130[3] = &unk_100167B38;
  v76 = v137;
  v131 = v76;
  v132 = v69;
  v133 = v71;
  v134 = v73;
  v135 = v75;
  [UIView animateWithDuration:v136 animations:v130 completion:0.5];
  springAnimationBehavior = self->_springAnimationBehavior;
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_1000513C8;
  v114[3] = &unk_100167B60;
  v94 = v7;
  v115 = v94;
  v120 = v99;
  v121 = v98;
  v122 = v13;
  v123 = v15;
  v124 = v91;
  v78 = v39;
  v116 = v78;
  v125 = v85;
  v126 = v86;
  v127 = v87;
  v128 = v88;
  v79 = v90;
  v117 = v79;
  v80 = v66;
  v118 = v80;
  v81 = v105;
  v119 = v81;
  v129 = MinY;
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_100051584;
  v108[3] = &unk_100167B88;
  objc_copyWeak(&v113, &location);
  v82 = v89;
  v109 = v82;
  v83 = v81;
  v110 = v83;
  v84 = contextCopy;
  v111 = v84;
  selfCopy = self;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v114 completion:v108];
  if (objc_opt_respondsToSelector())
  {
    [v102 performSelector:"animateForDrillIn"];
  }

  objc_destroyWeak(&v113);
  objc_destroyWeak(&location);
}

- (void)animatePopToRootViewControllerWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  [containerView setClipsToBounds:0];
  layer = [containerView layer];
  [layer setCornerRadius:0.0];

  _navigationController = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  popAnimationType = [_navigationController popAnimationType];

  v96 = [contextCopy viewForKey:UITransitionContextFromViewKey];
  v86 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v100 = [contextCopy viewForKey:UITransitionContextToViewKey];
  v91 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v90 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:v91];
  v93 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _platterViewOfViewController:v91];
  v84 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _snippetContainerViewOfView:v93];
  _navigationController2 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  blurrableView = [_navigationController2 blurrableView];

  _navigationController3 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
  animatingBackgroundView = [_navigationController3 animatingBackgroundView];

  v9 = blurrableView;
  if (popAnimationType)
  {
    if (popAnimationType != 1)
    {
      goto LABEL_5;
    }

    v9 = v96;
  }

  v7 = [containerView insertSubview:v100 belowSubview:v9];
LABEL_5:
  SiriUIDeviceIsPad(v7, v8);
  if (v10)
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _moveCloseButtonToView:v96];
  }

  v94 = [[UIVisualEffectView alloc] initWithEffect:0];
  v11 = [UIVisualEffectView alloc];
  v12 = [UIBlurEffect effectWithStyle:4];
  v13 = [v11 initWithEffect:v12];

  if (popAnimationType == 1)
  {
    layer2 = [v94 layer];
    v15 = SiriSharedUISmartDialogPlatterCornerRadius;
    [layer2 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

    [v96 bounds];
    [v94 setFrame:?];
    layer3 = [v94 layer];
    [layer3 setMasksToBounds:1];

    [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v94 setUserInteractionEnabled:0];
    [v96 addSubview:v94];
    leadingAnchor = [v94 leadingAnchor];
    leadingAnchor2 = [v96 leadingAnchor];
    v77 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v131[0] = v77;
    trailingAnchor = [v94 trailingAnchor];
    trailingAnchor2 = [v96 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v131[1] = v18;
    topAnchor = [v94 topAnchor];
    topAnchor2 = [v96 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v131[2] = v21;
    bottomAnchor = [v94 bottomAnchor];
    bottomAnchor2 = [v96 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v131[3] = v24;
    v25 = [NSArray arrayWithObjects:v131 count:4];
    [NSLayoutConstraint activateConstraints:v25];

    layer4 = [v13 layer];
    [layer4 setCornerRadius:v15];

    [v100 bounds];
    [v13 setFrame:?];
    layer5 = [v13 layer];
    [layer5 setMasksToBounds:1];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setUserInteractionEnabled:0];
    [v100 addSubview:v13];
    leadingAnchor3 = [v13 leadingAnchor];
    leadingAnchor4 = [v100 leadingAnchor];
    v78 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v130[0] = v78;
    trailingAnchor3 = [v13 trailingAnchor];
    trailingAnchor4 = [v100 trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v130[1] = v29;
    topAnchor3 = [v13 topAnchor];
    topAnchor4 = [v100 topAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v130[2] = v32;
    bottomAnchor3 = [v13 bottomAnchor];
    bottomAnchor4 = [v100 bottomAnchor];
    v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v130[3] = v35;
    v36 = [NSArray arrayWithObjects:v130 count:4];
    [NSLayoutConstraint activateConstraints:v36];

    [v13 setHidden:1];
  }

  [v100 setHidden:0];
  [v90 prepareForPopAnimationOfType:popAnimationType];
  resultViewContainer = [v90 resultViewContainer];
  [resultViewContainer setAlpha:1.0];
  [resultViewContainer siriSharedUI_setGlassBackground];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v86;
  }

  else
  {
    v37 = 0;
  }

  v81 = v37;
  [v37 prepareForPopAnimationOfType:popAnimationType];
  [v93 frame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  superview = [v93 superview];
  [containerView convertRect:superview fromView:{v39, v41, v43, v45}];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  objc_initWeak(&location, self);
  springAnimationBehavior = self->_springAnimationBehavior;
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_10005222C;
  v112[3] = &unk_100167BD8;
  v122 = popAnimationType;
  v56 = v96;
  v113 = v56;
  v57 = animatingBackgroundView;
  v114 = v57;
  v123 = v48;
  v124 = v50;
  v125 = v52;
  v126 = v54;
  v58 = v13;
  v115 = v58;
  v83 = v100;
  v116 = v83;
  v59 = v94;
  v117 = v59;
  v97 = v84;
  v118 = v97;
  v95 = v93;
  v119 = v95;
  v101 = v90;
  v120 = v101;
  v60 = blurrableView;
  v121 = v60;
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_100052488;
  v104[3] = &unk_100167C00;
  objc_copyWeak(&v111, &location);
  v61 = v56;
  v105 = v61;
  v62 = v59;
  v106 = v62;
  v63 = v57;
  v107 = v63;
  v64 = v60;
  v108 = v64;
  v65 = v58;
  v109 = v65;
  v99 = contextCopy;
  v110 = v99;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v112 completion:v104];
  if (popAnimationType)
  {
    if (popAnimationType == 1)
    {
      _navigationController4 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _navigationController];
      [_navigationController4 setPopAnimationType:0];

      [v101 performAnimatedBlur:0 usingSpringWithMass:2.0 stiffness:200.0 damping:30.0];
    }
  }

  else
  {
    v67 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v67 setName:@"gaussianBlur"];
    [v67 setValue:&off_10016E5A8 forKey:kCAFilterInputRadius];
    v68 = [CASpringAnimation animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v68 setMass:2.0];
    [v68 setStiffness:200.0];
    [v68 setDamping:30.0];
    [v68 setAdditive:1];
    [v68 setFromValue:&off_10016E5A8];
    [v68 setToValue:&off_10016E4C0];
    [v68 setDuration:1.0];
    layer6 = [v61 layer];
    v129 = v67;
    v70 = [NSArray arrayWithObjects:&v129 count:1];
    [layer6 setFilters:v70];

    layer7 = [v64 layer];
    v128 = v67;
    v72 = [NSArray arrayWithObjects:&v128 count:1];
    [layer7 setFilters:v72];

    layer8 = [v61 layer];
    [layer8 addAnimation:v68 forKey:@"filters.gaussianBlur.inputRadius"];

    layer9 = [v64 layer];
    [layer9 addAnimation:v68 forKey:@"filters.gaussianBlur.inputRadius"];
  }

  objc_destroyWeak(&v111);
  objc_destroyWeak(&location);
}

- (BOOL)_isDrillIn
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  viewControllers = [WeakRetained viewControllers];
  v4 = [viewControllers count] == 2;

  return v4;
}

- (id)_saeContainerViewFromViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containerView = [controllerCopy containerView];
  }

  else
  {
    containerView = 0;
  }

  return containerView;
}

- (id)_platterViewOfViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SRSystemAssistantExperienceNavigationTransitionController *)self _saeContainerViewFromViewController:controllerCopy];
  v6 = v5;
  if (v5 && ([v5 resultContentView], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    resultContentView = [v6 resultContentView];
  }

  else
  {
    resultContentView = [controllerCopy view];
  }

  v10 = resultContentView;

  return v10;
}

- (id)_snippetContainerViewOfView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentContainerView = [viewCopy contentContainerView];
  }

  else
  {
    contentContainerView = viewCopy;
  }

  v5 = contentContainerView;

  return v5;
}

- (void)_createCloseButton:(id)button
{
  if (button)
  {
    buttonCopy = button;
    v5 = [UIButton buttonWithType:7];
    [v5 siriSharedUI_setGlassBackgroundWithCornerRadius:22.0];
    layer = [v5 layer];
    [layer setCornerRadius:22.0];

    [v5 addTarget:self action:"_popToRootViewControllerForDrillOut"];
    [buttonCopy addSubview:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setClipsToBounds:1];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButton:v5];
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButtonConstraintsForView:buttonCopy];

    heightAnchor = [v5 heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:44.0];
    v12[0] = v8;
    widthAnchor = [v5 widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:44.0];
    v12[1] = v10;
    v11 = [NSArray arrayWithObjects:v12 count:2];
    [NSLayoutConstraint activateConstraints:v11];
  }
}

- (void)_setCloseButtonConstraintsForView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (viewCopy && WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_closeButton);
    trailingAnchor = [v6 trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];

    v10 = objc_loadWeakRetained(&self->_closeButton);
    topAnchor = [v10 topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];

    v15[0] = v9;
    v15[1] = v13;
    v14 = [NSArray arrayWithObjects:v15 count:2];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

- (void)_removeCloseButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_closeButton);
    [v4 removeFromSuperview];
  }
}

- (void)_moveCloseButtonToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  if (viewCopy && WeakRetained)
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self _removeCloseButton];
    v5 = objc_loadWeakRetained(&self->_closeButton);
    [viewCopy addSubview:v5];

    [(SRSystemAssistantExperienceNavigationTransitionController *)self _setCloseButtonConstraintsForView:viewCopy];
  }
}

- (void)_popToRootViewControllerForDrillOut
{
  if ([(SRSystemAssistantExperienceNavigationTransitionController *)self _isDrillIn]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SRSystemAssistantExperienceNavigationTransitionController *)self setOperation:2];
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    [WeakRetained setPopToRootViewController:1];

    v4 = objc_loadWeakRetained(&self->_navigationController);
    [v4 setPopAnimationType:1];

    v6 = objc_loadWeakRetained(&self->_navigationController);
    v5 = [v6 popToRootViewControllerAnimated:1];
  }
}

- (void)_addDrillOutSwipeRecognizerToView:(id)view forDirection:(unint64_t)direction
{
  viewCopy = view;
  v7 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_popToRootViewControllerForDrillOut"];
  [v7 setDirection:direction];
  [viewCopy addGestureRecognizer:v7];
}

- (SiriUINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (UIButton)_closeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  return WeakRetained;
}

@end