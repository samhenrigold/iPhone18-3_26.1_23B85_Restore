@interface SBCoverSheetSystemGesturesDelegate
- (BOOL)_areAnyGesturesRecognizedInSet:(id)set;
- (BOOL)_canDismissGestureBegin;
- (BOOL)_canPresentGestureBegin;
- (BOOL)_isGestureActivelyRecognized:(id)recognized;
- (BOOL)_isGestureAllowedByTransientOverlaysOrTopmostApp;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isAnyGestureActivelyRecognized;
- (BOOL)isDismissGestureActive;
- (BOOL)isDismissGestureAllowedToBegin;
- (BOOL)isPresentGestureActive;
- (BOOL)isPresentGestureAllowedToBegin;
- (SBCoverSheetSystemGestureDelegateContextProviding)contextProvider;
- (SBCoverSheetSystemGesturesDelegate)initWithViewController:(id)controller dismissGestureRecognizer:(id)recognizer dismissAddendumGestureRecognizer:(id)gestureRecognizer dismissalPreemptingGestureRecognizer:(id)preemptingGestureRecognizer;
- (UIGestureRecognizer)dismissAddendumGestureRecognizer;
- (UIGestureRecognizer)dismissGestureRecognizer;
- (UIGestureRecognizer)preemptingGestureRecognizer;
- (UIViewController)viewController;
- (id)dismissGestures;
- (id)presentGestures;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (void)setPresentGestureRecognizer:(id)recognizer;
@end

@implementation SBCoverSheetSystemGesturesDelegate

- (BOOL)isAnyGestureActivelyRecognized
{
  presentGestures = [(SBCoverSheetSystemGesturesDelegate *)self presentGestures];
  if ([(SBCoverSheetSystemGesturesDelegate *)self _areAnyGesturesRecognizedInSet:presentGestures])
  {
    v4 = 1;
  }

  else
  {
    dismissGestures = [(SBCoverSheetSystemGesturesDelegate *)self dismissGestures];
    v4 = [(SBCoverSheetSystemGesturesDelegate *)self _areAnyGesturesRecognizedInSet:dismissGestures];
  }

  return v4;
}

- (id)dismissGestures
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  WeakRetained = objc_loadWeakRetained(&self->_dismissGestureRecognizer);
  v11[0] = WeakRetained;
  v5 = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);
  indirectDismissGestureRecognizer = self->_indirectDismissGestureRecognizer;
  scrunchDismissGestureRecognizer = self->_scrunchDismissGestureRecognizer;
  v11[1] = v5;
  v11[2] = indirectDismissGestureRecognizer;
  v11[3] = scrunchDismissGestureRecognizer;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v9 = [v3 initWithArray:v8];

  return v9;
}

- (id)presentGestures
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 bs_safeAddObject:self->_presentGestureRecognizer];
  [v3 bs_safeAddObject:self->_indirectPresentGestureRecognizer];

  return v3;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (SBCoverSheetSystemGesturesDelegate)initWithViewController:(id)controller dismissGestureRecognizer:(id)recognizer dismissAddendumGestureRecognizer:(id)gestureRecognizer dismissalPreemptingGestureRecognizer:(id)preemptingGestureRecognizer
{
  controllerCopy = controller;
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  preemptingGestureRecognizerCopy = preemptingGestureRecognizer;
  v20.receiver = self;
  v20.super_class = SBCoverSheetSystemGesturesDelegate;
  v14 = [(SBCoverSheetSystemGesturesDelegate *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(SBCoverSheetSystemGesturesDelegate *)v14 setViewController:controllerCopy];
    [(SBCoverSheetSystemGesturesDelegate *)v15 setDismissGestureRecognizer:recognizerCopy];
    [(SBCoverSheetSystemGesturesDelegate *)v15 setDismissAddendumGestureRecognizer:gestureRecognizerCopy];
    [(SBCoverSheetSystemGesturesDelegate *)v15 setPreemptingGestureRecognizer:preemptingGestureRecognizerCopy];
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    coverSheetDismissGestureSettings = [rootSettings coverSheetDismissGestureSettings];
    dismissGestureSettings = v15->_dismissGestureSettings;
    v15->_dismissGestureSettings = coverSheetDismissGestureSettings;
  }

  return v15;
}

- (BOOL)isPresentGestureActive
{
  selfCopy = self;
  _canPresentGestureBegin = [(SBCoverSheetSystemGesturesDelegate *)self _canPresentGestureBegin];
  presentGestures = [(SBCoverSheetSystemGesturesDelegate *)selfCopy presentGestures];
  LOBYTE(selfCopy) = [(SBCoverSheetSystemGesturesDelegate *)selfCopy _areAnyGesturesRecognizedInSet:presentGestures];

  return (_canPresentGestureBegin | selfCopy) & 1;
}

- (BOOL)isPresentGestureAllowedToBegin
{
  self->_checkingGestureAvailabilityForNoninteractiveReason = 1;
  result = [(SBCoverSheetSystemGesturesDelegate *)self gestureRecognizerShouldBegin:self->_presentGestureRecognizer];
  self->_checkingGestureAvailabilityForNoninteractiveReason = 0;
  return result;
}

- (BOOL)isDismissGestureActive
{
  selfCopy = self;
  _canDismissGestureBegin = [(SBCoverSheetSystemGesturesDelegate *)self _canDismissGestureBegin];
  dismissGestures = [(SBCoverSheetSystemGesturesDelegate *)selfCopy dismissGestures];
  LOBYTE(selfCopy) = [(SBCoverSheetSystemGesturesDelegate *)selfCopy _areAnyGesturesRecognizedInSet:dismissGestures];

  return (_canDismissGestureBegin | selfCopy) & 1;
}

- (BOOL)isDismissGestureAllowedToBegin
{
  self->_checkingGestureAvailabilityForNoninteractiveReason = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dismissGestureRecognizer);
  v4 = [(SBCoverSheetSystemGesturesDelegate *)self gestureRecognizerShouldBegin:WeakRetained];

  self->_checkingGestureAvailabilityForNoninteractiveReason = 0;
  return v4;
}

- (void)setPresentGestureRecognizer:(id)recognizer
{
  p_presentGestureRecognizer = &self->_presentGestureRecognizer;
  recognizerCopy = recognizer;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_presentGestureRecognizer, recognizer);
  }
}

- (BOOL)_areAnyGesturesRecognizedInSet:(id)set
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SBCoverSheetSystemGesturesDelegate__areAnyGesturesRecognizedInSet___block_invoke;
  v6[3] = &unk_2783BF5C8;
  v6[4] = self;
  v3 = [set bs_filter:v6];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  viewController = [(SBCoverSheetSystemGesturesDelegate *)self viewController];
  view = [viewController view];

  return view;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);

  if (WeakRetained != recognizerCopy)
  {
    return 1;
  }

  dismissGestureSettings = self->_dismissGestureSettings;

  return [(CSCoverSheetDismissGestureSettings *)dismissGestureSettings extendSwipeUpRegion];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v75 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  v5 = SBLogSystemGestureCoverSheet(beginCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sb_briefDescription = [(UIPanGestureRecognizer *)beginCopy sb_briefDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = sb_briefDescription;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBCoverSheetSystemGesturesDelegate gestureRecognizerShouldBegin - %{public}@", &buf, 0xCu);
  }

  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v7 policyAggregator];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__106;
  v73 = __Block_byref_object_dispose__106;
  v74 = 0;
  view = [(UIPanGestureRecognizer *)beginCopy view];
  _sbWindowScene = [view _sbWindowScene];

  if (!_sbWindowScene)
  {
    windowSceneManager = [SBApp windowSceneManager];
    _sbWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  }

  controlCenterController = [_sbWindowScene controlCenterController];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __67__SBCoverSheetSystemGesturesDelegate_gestureRecognizerShouldBegin___block_invoke;
  v67[3] = &unk_2783BF5F0;
  v67[4] = &buf;
  v11 = MEMORY[0x223D6F7F0](v67);
  presentGestures = [(SBCoverSheetSystemGesturesDelegate *)self presentGestures];
  v13 = objc_msgSend_containsObject_(presentGestures);

  if (v13)
  {
    v66 = 0;
    v14 = [policyAggregator allowsCapability:13 explanation:&v66];
    v15 = v66;
    if (v14)
    {
      v16 = +[SBSystemGestureManager mainDisplayManager];
      v17 = [v16 isGestureWithTypeAllowed:1];

      _canPresentGestureBegin = [(SBCoverSheetSystemGesturesDelegate *)self _canPresentGestureBegin];
      _isGestureAllowedByTransientOverlaysOrTopmostApp = [(SBCoverSheetSystemGesturesDelegate *)self _isGestureAllowedByTransientOverlaysOrTopmostApp];
      allowGestureForContentBelow = [controlCenterController allowGestureForContentBelow];
      menuBarManager = [_sbWindowScene menuBarManager];
      if (menuBarManager && !self->_checkingGestureAvailabilityForNoninteractiveReason)
      {
        indirectPresentGestureRecognizer = self->_indirectPresentGestureRecognizer;
        if (indirectPresentGestureRecognizer == beginCopy)
        {
          [(SBIndirectPanGestureRecognizer *)indirectPresentGestureRecognizer origin];
          v39 = v54;
          v41 = v55;
        }

        else
        {
          statusBarManager = [_sbWindowScene statusBarManager];
          statusBar = [statusBarManager statusBar];
          _UISystemGestureLocationInView();
          v39 = v38;
          v41 = v40;
        }

        v21 = [menuBarManager shouldAllowCoverSheetPresentationGestureAtLocation:self->_presentGestureRecognizer == beginCopy isTouchGesture:{v39, v41}];
      }

      else
      {
        v21 = 1;
      }

      if ((_canPresentGestureBegin && _isGestureAllowedByTransientOverlaysOrTopmostApp) & allowGestureForContentBelow & v17) == 1 && (v21)
      {

LABEL_43:
        v56 = 1;
        goto LABEL_59;
      }

      if ((v17 & 1) == 0)
      {
        (v11)[2](v11, @"gesture with type SBSystemGestureTypeShowCoverSheet is not allowed by SBSystemGestureManager");
      }

      if (!_canPresentGestureBegin)
      {
        (v11)[2](v11, @"_canPresentGestureBegin is NO");
      }

      if (!_isGestureAllowedByTransientOverlaysOrTopmostApp)
      {
        (v11)[2](v11, @"Not allowed by transient overlays or topmost app");
      }

      if ((allowGestureForContentBelow & 1) == 0)
      {
        (v11)[2](v11, @"Not allowed by control center");
      }

      if ((v21 & 1) == 0)
      {
        (v11)[2](v11, @"Not allowed by menu bar");
      }
    }

    else
    {
      menuBarManager = [MEMORY[0x277CCACA8] stringWithFormat:@"CoverSheet capability disallowed by policy aggregator: %@", v15];
      (v11)[2](v11, menuBarManager);
    }

    goto LABEL_54;
  }

  dismissGestures = [(SBCoverSheetSystemGesturesDelegate *)self dismissGestures];
  v23 = objc_msgSend_containsObject_(dismissGestures);

  if (v23)
  {
    v65 = 0;
    v25 = [policyAggregator allowsCapability:14 explanation:&v65];
    v15 = v65;
    if (v25)
    {
      extendSwipeUpRegion = [(CSCoverSheetDismissGestureSettings *)self->_dismissGestureSettings extendSwipeUpRegion];
      WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);
      v28 = WeakRetained == beginCopy;

      if ((v28 & extendSwipeUpRegion) == 1)
      {
        [(CSCoverSheetDismissGestureSettings *)self->_dismissGestureSettings extendedRegionInsetX];
        v30 = v29;
        v31 = [(SBCoverSheetSystemGesturesDelegate *)self viewForSystemGestureRecognizer:beginCopy];
        [v31 bounds];
        v77 = CGRectInset(v76, v30, 0.0);
        x = v77.origin.x;
        y = v77.origin.y;
        width = v77.size.width;
        height = v77.size.height;
        _UISystemGestureLocationInView();
        v78.origin.x = x;
        v78.origin.y = y;
        v78.size.width = width;
        v78.size.height = height;
        CGRectGetMinX(v78);
        if (BSFloatGreaterThanOrEqualToFloat())
        {
          v79.origin.x = x;
          v79.origin.y = y;
          v79.size.width = width;
          v79.size.height = height;
          CGRectGetMaxX(v79);
          v62 = BSFloatLessThanOrEqualToFloat();
        }

        else
        {
          v62 = 0;
        }
      }

      else
      {
        v62 = 1;
      }

      v42 = +[SBSystemGestureManager mainDisplayManager];
      v60 = [v42 isGestureWithTypeAllowed:2];

      v43 = +[SBWorkspace mainWorkspace];
      transientOverlayPresentationManager = [v43 transientOverlayPresentationManager];
      hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

      isPresented = [controlCenterController isPresented];
      if ((self->_indirectDismissGestureRecognizer != beginCopy) | isPresented & 1)
      {
        isVisible = (self->_indirectDismissGestureRecognizer == beginCopy) | isPresented;
      }

      else
      {
        isVisible = [controlCenterController isVisible];
      }

      v48 = +[SBCoverSheetPresentationManager sharedInstance];
      hasBeenDismissedSinceKeybagLock = [v48 hasBeenDismissedSinceKeybagLock];

      v50 = SBHomeGestureEnabled();
      _canDismissGestureBegin = [(SBCoverSheetSystemGesturesDelegate *)self _canDismissGestureBegin];
      if (!(v50 & 1 | ((_canDismissGestureBegin & 1) == 0)))
      {
        authenticationController = [SBApp authenticationController];
        isAuthenticated = [authenticationController isAuthenticated];

        _canDismissGestureBegin = isAuthenticated & hasBeenDismissedSinceKeybagLock;
      }

      if (_canDismissGestureBegin & v60 & (isVisible ^ 1) & (hasActivePresentation ^ 1) & v62)
      {
        goto LABEL_43;
      }

      if (!(_canDismissGestureBegin & 1 | ((v50 & 1) == 0)))
      {
        (v11)[2](v11, @"either _canDismissGestureBegin is NO or can't pull up when not authenticated and not in notification center mode");
      }

      if ((v60 & 1) == 0)
      {
        (v11)[2](v11, @"gesture with type SBSystemGestureTypeDismissCoverSheet is not allowed by SBSystemGestureManager");
      }

      if (hasActivePresentation)
      {
        (v11)[2](v11, @"transient overlay is visible");
      }

      if (isVisible)
      {
        (v11)[2](v11, @"control center is visible");
      }

      if ((v62 & 1) == 0)
      {
        (v11)[2](v11, @"isn't within X margin");
      }

      goto LABEL_55;
    }

    menuBarManager = [MEMORY[0x277CCACA8] stringWithFormat:@"Dismiss CoverSheet capability disallowed by policy aggregator: %@", v15];
    (v11)[2](v11, menuBarManager);
LABEL_54:

LABEL_55:
  }

  v15 = SBLogSystemGestureCoverSheet(v24);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v57 = *(*(&buf + 1) + 40);
    *v68 = 138543362;
    v69 = v57;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "should not begin for reason: %{public}@", v68, 0xCu);
  }

  v56 = 0;
LABEL_59:

  _Block_object_dispose(&buf, 8);
  return v56;
}

void __67__SBCoverSheetSystemGesturesDelegate_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  if (v3)
  {
    [v3 appendFormat:@" | "];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  [*(*(*(a1 + 32) + 8) + 40) appendString:a2];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  dismissGestureRecognizer = [(SBCoverSheetSystemGesturesDelegate *)self dismissGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);

  if (WeakRetained == recognizerCopy && dismissGestureRecognizer == gestureRecognizerCopy)
  {
    v10 = 1;
  }

  else if (dismissGestureRecognizer == recognizerCopy)
  {
    v11 = objc_loadWeakRetained(&self->_preemptingGestureRecognizer);
    v10 = v11 == gestureRecognizerCopy;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isGestureAllowedByTransientOverlaysOrTopmostApp
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v2 transientOverlayPresentationManager];

  shouldDisableCoverSheetGesture = [transientOverlayPresentationManager shouldDisableCoverSheetGesture];
  if (shouldDisableCoverSheetGesture)
  {
    v5 = SBLogSystemGestureCoverSheet(shouldDisableCoverSheetGesture);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Not allowing transition because transient overlays suppress CoverSheet.", buf, 2u);
    }

LABEL_18:
    v8 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v6 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  isAnySwitcherVisible = [v6 isAnySwitcherVisible];

  if ((isAnySwitcherVisible & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
    v9 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v5);
          }

          application = [*(*(&v18 + 1) + 8 * i) application];
          suppressesCoverSheetGesture = [application suppressesCoverSheetGesture];

          if (suppressesCoverSheetGesture)
          {
            v16 = SBLogSystemGestureCoverSheet(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Not allowing transition because the top app suppresses CoverSheet.", buf, 2u);
            }

            goto LABEL_18;
          }
        }

        v10 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
        v8 = 1;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_19;
  }

  v8 = 1;
LABEL_20:

  return v8;
}

- (BOOL)_canDismissGestureBegin
{
  if ([(SBCoverSheetSystemGesturesDelegate *)self syntheticAppearState]- 3 > 0xFFFFFFFD)
  {
    return ![(SBCoverSheetSystemGesturesDelegate *)self isAnyGestureActivelyRecognized];
  }

  else
  {
    contextProvider = [(SBCoverSheetSystemGesturesDelegate *)self contextProvider];
    if ([contextProvider isPresentingDismissableOffScreenInterstitial])
    {
      v4 = ![(SBCoverSheetSystemGesturesDelegate *)self isAnyGestureActivelyRecognized];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)_canPresentGestureBegin
{
  syntheticAppearState = [(SBCoverSheetSystemGesturesDelegate *)self syntheticAppearState];
  if (syntheticAppearState != 3 && syntheticAppearState)
  {
    return 0;
  }

  else
  {
    return ![(SBCoverSheetSystemGesturesDelegate *)self isAnyGestureActivelyRecognized];
  }
}

- (BOOL)_isGestureActivelyRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v4 = [recognizedCopy state] == 1 || objc_msgSend(recognizedCopy, "state") == 2;

  return v4;
}

- (SBCoverSheetSystemGestureDelegateContextProviding)contextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contextProvider);

  return WeakRetained;
}

- (UIGestureRecognizer)dismissGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissGestureRecognizer);

  return WeakRetained;
}

- (UIGestureRecognizer)dismissAddendumGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);

  return WeakRetained;
}

- (UIGestureRecognizer)preemptingGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_preemptingGestureRecognizer);

  return WeakRetained;
}

@end