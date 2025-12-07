@interface SBRecordingIndicatorViewController
- (BOOL)_needsBacklightBehaviorChanges;
- (BOOL)_secureRenderingSupported;
- (BOOL)_shouldForceViewToShowForCurrentBacklightLuminance;
- (CGFloat)_sizeForStateIdleOn;
- (SBFluidSwitcherViewController)_screenTypeForcesFastFadeAnimations;
- (SBFluidSwitcherViewController)_updateIndicatorVisibilityWithFastFadeAnimation:(SBFluidSwitcherViewController *)result;
- (SBFluidSwitcherViewController)_usesSpringAnimationsWithContainerView;
- (SBRecordingIndicatorViewControllerDelegate)delegate;
- (SBWindowScene)windowScene;
- (double)_alphaForStateIdleOn;
- (double)_centerForOrientation:(uint64_t)orientation;
- (id)_hasMedinaPadBehaviors;
- (id)_ignoresActiveInterfaceOrientation;
- (id)_isSuppressingFlipbookRendering;
- (id)_requiresSecondIndicatorView;
- (id)_screen;
- (id)_setUpContext;
- (id)_springAnimationForKeyPath:(void *)path fromValue:(void *)value toValue:(double)toValue duration:;
- (id)_stopAllAnimations;
- (id)initForLocation:(unint64_t)location windowScene:(id)scene minimumOnTimeCoordinator:(id)coordinator;
- (uint64_t)_hasProminentIdleState;
- (uint64_t)_interchangesViewAndLayer;
- (uint64_t)_isInMinimumOnTime;
- (uint64_t)_isOnExtendedDesktop;
- (uint64_t)_requiresLayerUpdateForBacklightTransition;
- (uint64_t)_shouldReverseScaleWhenDisplayZoomedInLocation:(uint64_t)location;
- (uint64_t)_usesSpringAnimations;
- (unint64_t)_isIndicatorOnOrAnimatingToOn;
- (void)_addBlurFilterToLayer:(double)layer withBlurRadius:;
- (void)_animateLayer:(void *)layer forKeyPath:(void *)path fromValue:(void *)value toValue:(int)toValue persistingToValue:(double)persistingToValue duration:;
- (void)_animateWithOverlappingFadeFromOrientation:(uint64_t)orientation toOrientation:(double)toOrientation duration:;
- (void)_animateWithTwoPartFadeToOrientation:(void *)orientation duration:(double)duration;
- (void)_areAnimationsHandledBySystemApertureElement;
- (void)_calculateInitialIndicatorPositionAndSize;
- (void)_configureRootLayer;
- (void)_requiresIndicatorPortalViews;
- (void)_setUpIndicatorViews;
- (void)_updateBacklightCoordinatorAssertionForIndicatorVisible:(uint64_t)visible;
- (void)_updateCenterWithoutAnimationForOrientation:(void *)result;
- (void)_updateIndicatorForBacklightLuminance:(uint64_t)luminance previousBacklightLuminance:;
- (void)_updateIndicatorLayerSize:(double)size opacity:;
- (void)_updateIndicatorLayerWithSize:(double)size andCenter:(double)center;
- (void)_updateIndicatorViewSize:(double)size alpha:;
- (void)_updateIndicatorVisibilityWithNoAnimation:(__n128)animation;
- (void)_updateIndicatorVisibilityWithNormalAnimation:(uint64_t)animation;
- (void)_updateIndicatorVisibilityWithSpringAnimation:(uint64_t)animation;
- (void)_updateIndicatorVisualRepresentationsWithBlock:(uint64_t)block;
- (void)_updateToOrientation:(double)orientation withDuration:;
- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)dealloc;
- (void)setIndicatorState:(uint64_t)state;
- (void)traitCollectionDidChange:(id)change;
- (void)updateIndicatorType:(unint64_t)type;
- (void)updateIndicatorVisibility:(BOOL)visibility;
- (void)updateIndicatorVisibilityWithFastFadeAnimation:(BOOL)animation;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SBRecordingIndicatorViewController

- (SBRecordingIndicatorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_requiresLayerUpdateForBacklightTransition
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1192);
    LODWORD(result) = [(SBRecordingIndicatorViewController *)result _hasMedinaPadBehaviors];
    if (result)
    {
      LODWORD(result) = [*(v1 + 1120) allowsBacklightChanges];
    }

    if (v2 == 4)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

- (id)_hasMedinaPadBehaviors
{
  selfCopy = self;
  if (self)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && +[SBRecordingIndicatorManager _supportsSecureIndicator])
    {
      WeakRetained = objc_loadWeakRetained(selfCopy + 150);
      if ([WeakRetained isMainDisplayWindowScene])
      {
        selfCopy = ([selfCopy location] == 0);
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (uint64_t)_hasProminentIdleState
{
  if (result)
  {
    v2 = result;
    if ((SBSIsSystemApertureAvailable() & 1) != 0 || ([(SBRecordingIndicatorViewController *)&v2->super.super.super.isa _hasMedinaPadBehaviors]& 1) != 0)
    {
      return 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&v2->_dismissTapGestureRecognizer);
      isExternalDisplayWindowScene = [WeakRetained isExternalDisplayWindowScene];

      return isExternalDisplayWindowScene;
    }
  }

  return result;
}

- (id)initForLocation:(unint64_t)location windowScene:(id)scene minimumOnTimeCoordinator:(id)coordinator
{
  sceneCopy = scene;
  coordinatorCopy = coordinator;
  v23.receiver = self;
  v23.super_class = SBRecordingIndicatorViewController;
  v10 = [(SBRecordingIndicatorViewController *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_location = location;
    v10->_activeInterfaceOrientation = 1;
    v10->_indicatorState = 0;
    objc_storeWeak(&v10->_windowScene, sceneCopy);
    v13 = +[SBBacklightController sharedInstance];
    v14 = *(v11 + 1136);
    *(v11 + 1136) = v13;

    [(SBRecordingIndicatorViewController *)v11 _setUpContext];
    [(SBRecordingIndicatorViewController *)v11 _setUpIndicatorViews];
    [(SBRecordingIndicatorViewController *)v11 _calculateInitialIndicatorPositionAndSize];
    objc_storeStrong((v11 + 1208), coordinator);
    if ([(SBRecordingIndicatorViewController *)v11 _needsBacklightBehaviorChanges])
    {
      v15 = [SBSecureIndicatorBacklightCoordinator alloc];
      v16 = *(v11 + 1136);
      hIDUISensorController = [SBApp HIDUISensorController];
      proximitySensorManager = [SBApp proximitySensorManager];
      v19 = [(SBSecureIndicatorBacklightCoordinator *)v15 initWithBacklightController:v16 sensorModeController:hIDUISensorController proximitySensorManager:proximitySensorManager minimumOnTimeCoordinator:coordinatorCopy windowScene:sceneCopy];
      v20 = *(v11 + 1120);
      *(v11 + 1120) = v19;
    }

    v21 = objc_alloc_init(SBRecordingIndicatorRotationRateLimiter);
    v22 = *(v11 + 1112);
    *(v11 + 1112) = v21;
  }

  [*(v11 + 1136) addObserver:v11];

  return v11;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_backlightCoordinatorAssertion invalidate];
  [(SBBacklightController *)self->_backlightController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBRecordingIndicatorViewController;
  [(SBRecordingIndicatorViewController *)&v3 dealloc];
}

- (void)updateIndicatorType:(unint64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SBRecordingIndicatorViewController_updateIndicatorType___block_invoke;
  v3[3] = &__block_descriptor_40_e50_v16__0__SBRecordingIndicatorVisualRepresentation_8l;
  v3[4] = type;
  [(SBRecordingIndicatorViewController *)self _updateIndicatorVisualRepresentationsWithBlock:v3];
}

- (void)_updateIndicatorVisibilityWithSpringAnimation:(uint64_t)animation
{
  v35 = *MEMORY[0x277D85DE8];
  if (animation)
  {
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      location = [animation location];
      if ((location - 1) > 3)
      {
        v7 = @"Standalone";
      }

      else
      {
        v7 = off_2783BCC98[location - 1];
      }

      *buf = 138543618;
      v32 = v5;
      v33 = 2114;
      v34 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (spring animation)", buf, 0x16u);
    }

    [(SBRecordingIndicatorViewController *)animation _stopAllAnimations];
    objc_initWeak(buf, animation);
    contentView = [*(animation + 1152) contentView];
    layer = [contentView layer];
    v10 = *(animation + 1192);
    _hasMedinaPadBehaviors = [(SBRecordingIndicatorViewController *)animation _hasMedinaPadBehaviors];
    if (v10 == 4)
    {
      v12 = 1;
    }

    else
    {
      v12 = _hasMedinaPadBehaviors;
    }

    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        [(SBRecordingIndicatorViewController *)animation _addBlurFilterToLayer:layer withBlurRadius:6.0];
        [(SBRecordingIndicatorViewController *)animation _animateLayer:layer forKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:&unk_28336F520 toValue:&unk_28336F530 persistingToValue:1 duration:0.8];
      }

      v13 = objc_alloc(MEMORY[0x277D75D40]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke;
      v30[3] = &unk_2783A8C18;
      v30[4] = animation;
      v14 = [v13 initWithDuration:v30 dampingRatio:1.9 animations:0.35];
      v15 = *(animation + 1032);
      *(animation + 1032) = v14;

      v16 = *(animation + 1032);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2;
      v28[3] = &unk_2783BCC50;
      v17 = &v29;
      objc_copyWeak(&v29, buf);
      [v16 addCompletion:v28];
      [SBRecordingIndicatorViewController setIndicatorState:animation];
      [*(animation + 1032) startAnimation];
    }

    else
    {
      if (v12)
      {
        [(SBRecordingIndicatorViewController *)animation _updateIndicatorLayerSize:0.0 opacity:?];
      }

      else
      {
        [(SBRecordingIndicatorViewController *)animation _addBlurFilterToLayer:layer withBlurRadius:0.0];
        [(SBRecordingIndicatorViewController *)animation _animateLayer:layer forKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:&unk_28336F540 toValue:&unk_28336F550 persistingToValue:0 duration:1.0];
      }

      v18 = objc_alloc(MEMORY[0x277D75D40]);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_45;
      v27[3] = &unk_2783A8C18;
      v27[4] = animation;
      v19 = [v18 initWithDuration:v27 dampingRatio:1.5 animations:1.02];
      v20 = *(animation + 1040);
      *(animation + 1040) = v19;

      v21 = *(animation + 1040);
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2_46;
      v25 = &unk_2783BCC50;
      v17 = &v26;
      objc_copyWeak(&v26, buf);
      [v21 addCompletion:&v22];
      [SBRecordingIndicatorViewController setIndicatorState:animation];
      [*(animation + 1040) startAnimation];
    }

    objc_destroyWeak(v17);

    objc_destroyWeak(buf);
  }
}

- (void)_updateIndicatorVisibilityWithNormalAnimation:(uint64_t)animation
{
  v47 = *MEMORY[0x277D85DE8];
  if (animation)
  {
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      location = [animation location];
      if ((location - 1) > 3)
      {
        v7 = @"Standalone";
      }

      else
      {
        v7 = off_2783BCC98[location - 1];
      }

      *buf = 138543618;
      v44 = v5;
      v45 = 2114;
      v46 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (normal animation)", buf, 0x16u);
    }

    [(SBRecordingIndicatorViewController *)animation _stopAllAnimations];
    if (a2)
    {
      objc_initWeak(buf, animation);
      v8 = objc_alloc(MEMORY[0x277D75D40]);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke;
      v42[3] = &unk_2783A8C18;
      v42[4] = animation;
      v9 = [v8 initWithDuration:0 curve:v42 animations:0.7];
      v10 = *(animation + 992);
      *(animation + 992) = v9;

      v11 = objc_alloc(MEMORY[0x277D75D40]);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_2;
      v41[3] = &unk_2783A8C18;
      v41[4] = animation;
      v12 = [v11 initWithDuration:0 curve:v41 animations:0.7];
      v13 = *(animation + 1000);
      *(animation + 1000) = v12;

      v14 = objc_alloc(MEMORY[0x277D75D40]);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_3;
      v40[3] = &unk_2783A8C18;
      v40[4] = animation;
      v15 = [v14 initWithDuration:0 curve:v40 animations:2.0];
      v16 = *(animation + 1008);
      *(animation + 1008) = v15;

      v17 = *(animation + 992);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_4;
      v38[3] = &unk_2783BCC50;
      objc_copyWeak(&v39, buf);
      [v17 addCompletion:v38];
      v18 = *(animation + 1000);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_5;
      v36[3] = &unk_2783BCC50;
      objc_copyWeak(&v37, buf);
      [v18 addCompletion:v36];
      v19 = *(animation + 1008);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6;
      v34[3] = &unk_2783BCC50;
      objc_copyWeak(&v35, buf);
      [v19 addCompletion:v34];
      [SBRecordingIndicatorViewController setIndicatorState:animation];
      [*(animation + 992) startAnimation];
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);
      objc_destroyWeak(&v39);
      objc_destroyWeak(buf);
    }

    else
    {
      [*(animation + 1096) opacity];
      if ((BSFloatIsZero() & 1) == 0 && [(SBRecordingIndicatorViewController *)animation _interchangesViewAndLayer])
      {
        [(SBRecordingIndicatorViewController *)animation _updateIndicatorLayerSize:0.0 opacity:?];
        if ([(SBRecordingIndicatorViewController *)animation _hasProminentIdleState])
        {
          v22 = *(animation + 1048);
        }

        else
        {
          v22 = *(animation + 1048) * 0.8;
        }

        if ([(SBRecordingIndicatorViewController *)animation _hasProminentIdleState])
        {
          v23 = 1.0;
        }

        else
        {
          v23 = 0.8;
        }

        [(SBRecordingIndicatorViewController *)animation _updateIndicatorViewSize:v22 alpha:v23];
      }

      v24 = objc_alloc(MEMORY[0x277D75D40]);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_7;
      v33[3] = &unk_2783A8C18;
      v33[4] = animation;
      v25 = [v24 initWithDuration:0 curve:v33 animations:1.0];
      v26 = *(animation + 1016);
      *(animation + 1016) = v25;

      objc_initWeak(buf, animation);
      v27 = *(animation + 1016);
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_8;
      v31 = &unk_2783BCC50;
      objc_copyWeak(&v32, buf);
      [v27 addCompletion:&v28];
      [SBRecordingIndicatorViewController setIndicatorState:animation];
      [*(animation + 1016) startAnimation];
      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }
}

- (void)updateIndicatorVisibilityWithFastFadeAnimation:(BOOL)animation
{
  if (self->_location != 4)
  {
    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithFastFadeAnimation:animation];
  }
}

- (SBFluidSwitcherViewController)_updateIndicatorVisibilityWithFastFadeAnimation:(SBFluidSwitcherViewController *)result
{
  v30 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      location = [(SBFluidSwitcherViewController *)v3 location];
      if ((location - 1) > 3)
      {
        v7 = @"Standalone";
      }

      else
      {
        v7 = off_2783BCC98[location - 1];
      }

      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (fast fade animation)", buf, 0x16u);
    }

    [(SBRecordingIndicatorViewController *)&v3->super.super.super.isa _stopAllAnimations];
    if (a2)
    {
      v8 = objc_alloc(MEMORY[0x277D75D40]);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke;
      v25[3] = &unk_2783A8C18;
      v25[4] = v3;
      v9 = [v8 initWithDuration:0 curve:v25 animations:0.2];
      liveContentOverlayCoordinator = v3->_liveContentOverlayCoordinator;
      v3->_liveContentOverlayCoordinator = v9;

      objc_initWeak(buf, v3);
      v11 = v3->_liveContentOverlayCoordinator;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2;
      v23[3] = &unk_2783BCC78;
      objc_copyWeak(&v24, buf);
      v23[4] = v3;
      [(SBSwitcherLiveContentOverlayCoordinating *)v11 addCompletion:v23];
      [SBRecordingIndicatorViewController setIndicatorState:v3];
      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      if ([(SBRecordingIndicatorViewController *)v3 _interchangesViewAndLayer])
      {
        [(SBRecordingIndicatorViewController *)v3 _updateIndicatorLayerSize:0.0 opacity:?];
        if ([(SBRecordingIndicatorViewController *)v3 _hasProminentIdleState])
        {
          y = v3->_scrollViewLastContentOffset.y;
        }

        else
        {
          y = v3->_scrollViewLastContentOffset.y * 0.8;
        }

        if ([(SBRecordingIndicatorViewController *)v3 _hasProminentIdleState])
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 0.8;
        }

        [(SBRecordingIndicatorViewController *)v3 _updateIndicatorViewSize:v15 alpha:?];
      }

      v16 = objc_alloc(MEMORY[0x277D75D40]);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_3;
      v22[3] = &unk_2783A8C18;
      v22[4] = v3;
      v17 = [v16 initWithDuration:0 curve:v22 animations:0.2];
      v18 = v3->_liveContentOverlayCoordinator;
      v3->_liveContentOverlayCoordinator = v17;

      objc_initWeak(buf, v3);
      v19 = v3->_liveContentOverlayCoordinator;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_4;
      v20[3] = &unk_2783BCC50;
      objc_copyWeak(&v21, buf);
      [(SBSwitcherLiveContentOverlayCoordinating *)v19 addCompletion:v20];
      [SBRecordingIndicatorViewController setIndicatorState:v3];
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    return [(SBSwitcherLiveContentOverlayCoordinating *)v3->_liveContentOverlayCoordinator startAnimation];
  }

  return result;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = SBRecordingIndicatorViewController;
  collectionCopy = collection;
  [(SBRecordingIndicatorViewController *)&v12 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  traitCollection = [(SBRecordingIndicatorViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  _backlightLuminance2 = [collectionCopy _backlightLuminance];
  if (_backlightLuminance2 != _backlightLuminance)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __96__SBRecordingIndicatorViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_2783B50F8;
    v11[4] = self;
    v11[5] = _backlightLuminance2;
    v11[6] = _backlightLuminance;
    [coordinatorCopy animateAlongsideTransition:v11 completion:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  _backlightLuminance = [change _backlightLuminance];
  traitCollection = [(SBRecordingIndicatorViewController *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance2 != _backlightLuminance)
  {
    [(SBRecordingIndicatorViewController *)self traitCollectionDidChange:_backlightLuminance2, _backlightLuminance];
  }
}

- (id)_screen
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  screen = [WeakRetained screen];
  v5 = screen;
  if (screen)
  {
    _screen = screen;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBRecordingIndicatorViewController;
    _screen = [(SBRecordingIndicatorViewController *)&v9 _screen];
  }

  v7 = _screen;

  return v7;
}

void __58__SBRecordingIndicatorViewController__setUpIndicatorViews__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [v8 highLevelLayer];
  [v3 addSublayer:v4];

  v5 = *(a1 + 40);
  v6 = [v8 containerView];
  if (v6)
  {
    [v5 addSubview:v6];
  }

  else
  {
    v7 = [v8 contentView];
    [v5 addSubview:v7];
  }
}

void __79__SBRecordingIndicatorViewController__calculateInitialIndicatorPositionAndSize__block_invoke(double *a1, void *a2)
{
  v3 = a2;
  if ([v3 viewType] == 2)
  {
    [v3 containerView];
  }

  else
  {
    [v3 contentView];
  }
  v4 = ;

  [v4 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
}

- (void)_animateWithTwoPartFadeToOrientation:(void *)orientation duration:(double)duration
{
  if (orientation)
  {
    v3 = +[SBRecordingIndicatorDomain rootSettings];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      [v3 delayBeforeFadeOut180];
      v5 = v4;
      [v3 fadeOutDuration180];
      v7 = v6;
      [v3 delayBeforeFadeIn180];
      v9 = v8;
      [v3 fadeInDuration180];
    }

    else
    {
      [v3 delayBeforeFadeOut90];
      v5 = v11;
      [v3 fadeOutDuration90];
      v7 = v12;
      [v3 delayBeforeFadeIn90];
      v9 = v13;
      [v3 fadeInDuration90];
    }

    v14 = v10;
    objc_initWeak(&location, orientation);
    v15 = objc_alloc(MEMORY[0x277D75D40]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke;
    v28[3] = &unk_2783A8C68;
    objc_copyWeak(&v29, &location);
    v16 = [v15 initWithDuration:0 curve:v28 animations:v7];
    v17 = objc_alloc(MEMORY[0x277D75D40]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_2;
    v26[3] = &unk_2783A8C68;
    objc_copyWeak(&v27, &location);
    v18 = [v17 initWithDuration:0 curve:v26 animations:v14];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3;
    v23 = &unk_2783BCB60;
    objc_copyWeak(v25, &location);
    v19 = v18;
    v24 = v19;
    v25[1] = v9;
    [v16 addCompletion:&v20];
    [v16 startAnimationAfterDelay:{v5, v20, v21, v22, v23}];

    objc_destroyWeak(v25);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

void __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setAlpha:0.0];

    [v3[137] setOpacity:0.0];
    WeakRetained = v3;
  }
}

void __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setAlpha:1.0];

    LODWORD(v3) = 1.0;
    [v4[137] setOpacity:v3];
    WeakRetained = v4;
  }
}

void __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3_cold_1(WeakRetained, a1);
    WeakRetained = v3;
  }
}

void __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 64;
  if (*(*(a1 + 32) + 1152) == v3)
  {
    v4 = 48;
  }

  v5 = 56;
  if (*(*(a1 + 32) + 1152) == v3)
  {
    v5 = 40;
  }

  v6 = *(a1 + v5);
  v7 = *(a1 + v4);
  v10 = v3;
  if ([v3 viewType] == 2)
  {
    [v10 containerView];
  }

  else
  {
    [v10 contentView];
  }
  v8 = ;
  [v8 setCenter:{v6, v7}];
  v9 = *(a1 + 32);
  if (!v9 || [v9 location] != 4)
  {
    __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_cold_1(v10, v6, v7);
  }
}

uint64_t __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setOpacity:0.0];
}

uint64_t __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  LODWORD(v3) = 1.0;

  return [v2 setOpacity:v3];
}

void __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 viewType] == 2)
  {
    [v6 containerView];
  }

  else
  {
    [v6 contentView];
  }
  v3 = ;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v3 setCenter:{*(v5 + 1072), *(v5 + 1080)}];
  if (!*v4 || [*v4 location] != 4)
  {
    __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke_cold_1(v6, v4);
  }
}

void __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 highLevelLayer];
  BSRectWithSize();
  [v3 setBounds:?];

  v4 = *(a1 + 32);
  if (!v4 || [v4 location] != 4)
  {
    __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke_cold_1(v5, a1);
  }
}

void __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3 && [v3 location] == 4)
  {
    if (*(a1 + 40) <= 0.0)
    {
      goto LABEL_6;
    }

    v4 = [v5 highLevelLayer];
    BSRectWithSize();
    [v4 setBounds:?];
  }

  else
  {
    __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke_cold_1(v5, a1, a1 + 32, &v6);
    v4 = v6;
  }

LABEL_6:
}

void __69__SBRecordingIndicatorViewController__updateIndicatorViewSize_alpha___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 contentView];
  v4 = v3;
  if ((*(a1 + 80) & 1) == 0)
  {
    [v3 setAlpha:*(a1 + 40)];
  }

  [v4 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v5 = [v16 viewType];
  if (v5 < 2)
  {
    [v4 setCenter:{*(*(a1 + 32) + 1072), *(*(a1 + 32) + 1080)}];
  }

  else if (v5 - 2 <= 1)
  {
    v6 = [v16 containerView];
    [v6 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    [v6 setCenter:{*(*(a1 + 32) + 1072), *(*(a1 + 32) + 1080)}];
    [v6 center];
    v8 = v7;
    v10 = v9;
    v11 = [v6 superview];
    [v6 convertPoint:v11 fromView:{v8, v10}];
    v13 = v12;
    v15 = v14;

    [v4 setCenter:{v13, v15}];
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[125] startAnimation];
    WeakRetained = v2;
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[126] startAnimationAfterDelay:2.0];
    WeakRetained = v2;
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6_cold_1(WeakRetained);
    WeakRetained = v2;
  }
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2_cold_1();
    WeakRetained = v2;
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained indicatorState] == 1)
  {
    [SBRecordingIndicatorViewController setIndicatorState:?];
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_2_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained indicatorState] == 3)
  {
    [SBRecordingIndicatorViewController setIndicatorState:?];
  }
}

- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  v11 = *MEMORY[0x277D85DE8];
  IsActive = SBBacklightStateIsActive(state);
  _requiresLayerUpdateForBacklightTransition = 0;
  if (self && IsActive)
  {
    if ([(SBRecordingIndicatorViewController *)self indicatorState]== 2 || [(SBRecordingIndicatorViewController *)self indicatorState]== 1)
    {
      _requiresLayerUpdateForBacklightTransition = [(SBRecordingIndicatorViewController *)self _requiresLayerUpdateForBacklightTransition];
    }

    else
    {
      _requiresLayerUpdateForBacklightTransition = 0;
    }
  }

  [(CALayer *)self->_highLevelContextRootLayer opacity];
  if ((BSFloatApproximatelyEqualToFloat() & 1) == 0 && _requiresLayerUpdateForBacklightTransition || ([(CALayer *)self->_highLevelContextRootLayer opacity], [(SBRecordingIndicatorViewController *)self _hasProminentIdleState], ((BSFloatApproximatelyEqualToFloat() | _requiresLayerUpdateForBacklightTransition) & 1) == 0))
  {
    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = _requiresLayerUpdateForBacklightTransition;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Should force high level layer off... forceOff: %{BOOL}u", v10, 8u);
    }
  }

  if (_requiresLayerUpdateForBacklightTransition)
  {
    [SBRecordingIndicatorViewController backlightController:&self->_highLevelContextRootLayer didTransitionToBacklightState:? source:?];
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (id)_setUpContext
{
  if (result)
  {
    v1 = result;
    if ((-[SBRecordingIndicatorViewController _interchangesViewAndLayer](result) & 1) != 0 || (result = -[SBRecordingIndicatorViewController _hasMedinaPadBehaviors](v1), result) && (result = [v1[140] allowsBacklightChanges], result))
    {

      return [(SBRecordingIndicatorViewController *)v1 _configureRootLayer];
    }
  }

  return result;
}

- (void)_setUpIndicatorViews
{
  if (self)
  {
    if ([self location] <= 2)
    {
      if (SBSIsSystemApertureAvailable() && [self location] == 3 || objc_msgSend(self, "location") == 4)
      {
        v2 = 2;
      }

      else if ([(SBRecordingIndicatorViewController *)self _hasMedinaPadBehaviors])
      {
        v2 = 2;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 3;
    }

    OUTLINED_FUNCTION_24([[SBRecordingIndicatorVisualRepresentation alloc] initWithViewType:v2], 1152);
    if ((-[SBRecordingIndicatorViewController _hasMedinaPadBehaviors](self) & 1) != 0 || [self location] == 4)
    {
      OUTLINED_FUNCTION_24([[SBRecordingIndicatorVisualRepresentation alloc] initWithViewType:v2], 1160);
    }

    [self[136] layer];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_5_6() view];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_29();
    v6[1] = 3221225472;
    v6[2] = __58__SBRecordingIndicatorViewController__setUpIndicatorViews__block_invoke;
    v6[3] = &unk_2783BCB18;
    v7 = v2;
    v8 = v3;
    v4 = v3;
    v5 = v2;
    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisualRepresentationsWithBlock:v6];
  }
}

- (void)_calculateInitialIndicatorPositionAndSize
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _screen = [self _screen];
    v7 = SBHScreenTypeForCurrentDevice();
    location = [self location];
    switch(location)
    {
      case 0:
        if ([(SBRecordingIndicatorViewController *)self _isOnExtendedDesktop])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        break;
      case 1:
        v9 = 3;
        break;
      case 2:
        v9 = 1;
        break;
      case 3:
      case 4:
        v9 = 4;
        break;
      default:
        v9 = 0;
        break;
    }

    [SBRecordingIndicatorVisualRepresentation indicatorFrameForScreenType:v7 screen:_screen style:v9];
    v10 = OUTLINED_FUNCTION_17_1(v21);
    self[131] = v10;
    if (v10 == 0.0)
    {
      v11 = SBLogStatusBarish();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = SBHStringForScreenType();
        *buf = 138412290;
        v19 = v12;
        _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "[Recording Indicator] no layout info for screen type: %@", buf, 0xCu);
      }
    }

    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v22.origin.x = OUTLINED_FUNCTION_3_23();
      MinX = CGRectGetMinX(v22);
    }

    else
    {
      [_screen bounds];
      Width = CGRectGetWidth(v23);
      v24.origin.x = OUTLINED_FUNCTION_3_23();
      MinX = Width - CGRectGetMaxX(v24);
    }

    self[132] = MinX;
    v25.origin.x = OUTLINED_FUNCTION_3_23();
    self[133] = CGRectGetMinY(v25);
    OUTLINED_FUNCTION_3_23();
    UIRectGetCenter();
    *(self + 134) = v15;
    *(self + 135) = v16;
    [(SBRecordingIndicatorViewController *)self _updateIndicatorLayerWithSize:self[134] andCenter:self[135]];
    OUTLINED_FUNCTION_0_29();
    v17[1] = 3221225472;
    v17[2] = __79__SBRecordingIndicatorViewController__calculateInitialIndicatorPositionAndSize__block_invoke;
    v17[3] = &__block_descriptor_64_e50_v16__0__SBRecordingIndicatorVisualRepresentation_8l;
    v17[4] = v1;
    v17[5] = v2;
    v17[6] = v3;
    v17[7] = v4;
    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisualRepresentationsWithBlock:v17];
    if (location != 2)
    {
      [(SBRecordingIndicatorViewController *)self _updateIndicatorLayerSize:0.0 opacity:?];
      [(SBRecordingIndicatorViewController *)self _updateIndicatorViewSize:0.0 alpha:?];
    }
  }
}

- (BOOL)_needsBacklightBehaviorChanges
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 1200));
  if ([WeakRetained isMainDisplayWindowScene])
  {
    v2 = +[SBRecordingIndicatorManager _supportsSecureIndicator];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setIndicatorState:(uint64_t)state
{
  if (state)
  {
    OUTLINED_FUNCTION_19();
    if (*(v3 + 1168) != v4)
    {
      v1[146] = v2;
      delegate = [v1 delegate];
      [delegate recordingIndicatorViewController:v1 didUpdateIndicatorState:v2];
      if (!v2)
      {
        [(SBRecordingIndicatorViewController *)v1 _updateBacklightCoordinatorAssertionForIndicatorVisible:?];
      }
    }
  }
}

- (void)_updateBacklightCoordinatorAssertionForIndicatorVisible:(uint64_t)visible
{
  if (visible)
  {
    if (a2)
    {
      if (*(visible + 1128))
      {
        return;
      }

      v3 = *(visible + 1120);
      v4 = objc_opt_class();
      v7 = NSStringFromClass(v4);
      v5 = [v3 acquireBacklightCoordinatorAssertionForReason:v7];
      OUTLINED_FUNCTION_24(v5, 1128);
      v6 = v7;
    }

    else
    {
      if (*(visible + 1168))
      {
        return;
      }

      [*(visible + 1128) invalidate];
      v6 = *(visible + 1128);
      *(visible + 1128) = 0;
    }
  }
}

- (void)_updateToOrientation:(double)orientation withDuration:
{
  if (self && (v5 = *(self + 1176), v5 != a2))
  {
    *(self + 1176) = a2;
    _hasMedinaPadBehaviors = [(SBRecordingIndicatorViewController *)self _hasMedinaPadBehaviors];
    if (![*(self + 1112) shouldAllowRotationUnderRateLimits] || (v8 = -[SBRecordingIndicatorViewController _isInMinimumOnTime](self), orientation <= 0.0) || ((_hasMedinaPadBehaviors ^ 1) & 1) != 0 || (v8 & 1) != 0)
    {
      OUTLINED_FUNCTION_18_1();

      [SBRecordingIndicatorViewController _updateCenterWithoutAnimationForOrientation:v12];
    }

    else
    {
      v9 = +[SBRecordingIndicatorDomain rootSettings];
      if (*(self + 1160) && [v9 useOverlappingCrossfade])
      {
        [(SBRecordingIndicatorViewController *)self _animateWithOverlappingFadeFromOrientation:v5 toOrientation:a2 duration:orientation];
      }

      else
      {
        [SBRecordingIndicatorViewController _animateWithTwoPartFadeToOrientation:self duration:orientation];
      }

      OUTLINED_FUNCTION_18_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

- (void)_updateIndicatorVisualRepresentationsWithBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    v4 = v3;
    (*(v3 + 2))(v3, *(block + 1152));
    v3 = v4;
    if (*(block + 1160))
    {
      (*(v4 + 2))(v4);
      v3 = v4;
    }
  }
}

- (void)updateIndicatorVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  [(SBRecordingIndicatorViewController *)self _updateBacklightCoordinatorAssertionForIndicatorVisible:visibility];
  if (self)
  {
    if ([(SBRecordingIndicatorViewController *)self location]== 4)
    {

      [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithNoAnimation:v5, v6];
      return;
    }

    if ([(SBRecordingIndicatorViewController *)self _usesSpringAnimations])
    {
      goto LABEL_7;
    }

    if (SBSIsSystemApertureAvailable())
    {

      [(SBRecordingIndicatorViewController *)self updateIndicatorVisibilityWithFastFadeAnimation:visibilityCopy];
      return;
    }
  }

  else if (([(SBRecordingIndicatorViewController *)0 _usesSpringAnimations]& 1) != 0)
  {
LABEL_7:

    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithSpringAnimation:visibilityCopy];
    return;
  }

  [(SBRecordingIndicatorViewController *)self _updateIndicatorVisibilityWithNormalAnimation:visibilityCopy];
}

- (void)_areAnimationsHandledBySystemApertureElement
{
  if (result)
  {
    return ([result location] == 4);
  }

  return result;
}

- (void)_updateIndicatorVisibilityWithNoAnimation:(__n128)animation
{
  if (self)
  {
    [(SBRecordingIndicatorViewController *)self _updateIndicatorViewSize:1.0 alpha:?];

    [SBRecordingIndicatorViewController setIndicatorState:self];
  }
}

- (uint64_t)_usesSpringAnimations
{
  if (result)
  {
    v1 = result;
    if (([(SBRecordingIndicatorViewController *)result _hasMedinaPadBehaviors]& 1) != 0)
    {
      return 1;
    }

    else
    {
      result = SBSIsSystemApertureAvailable();
      if (result)
      {
        return [v1 location] == 3;
      }
    }
  }

  return result;
}

- (SBFluidSwitcherViewController)_screenTypeForcesFastFadeAnimations
{
  if (result)
  {
    return SBSIsSystemApertureAvailable();
  }

  return result;
}

- (void)_updateIndicatorForBacklightLuminance:(uint64_t)luminance previousBacklightLuminance:
{
  if (self && ((OUTLINED_FUNCTION_19(), !-[SBRecordingIndicatorViewController _hasProminentIdleState](v6, v7)) ? (v8 = 0.8) : (v8 = 1.0), ([v3[140] isSuppressingFlipbookRendering] & 1) == 0 && objc_msgSend(v3, "indicatorState") == 2 && -[SBRecordingIndicatorViewController _interchangesViewAndLayer](v3) && objc_msgSend(v3, "location") != 4 && (v4 != 1 ? (v9 = luminance == 1) : (v9 = 1), v9)))
  {
    contentView = [v3[144] contentView];
    v11 = contentView;
    if (v4 != 1)
    {
      v8 = 0.0;
    }

    [contentView setAlpha:v8];

    [v3[145] contentView];
    [objc_claimAutoreleasedReturnValue() setAlpha:v8];
    OUTLINED_FUNCTION_18_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

- (uint64_t)_interchangesViewAndLayer
{
  if (result)
  {
    v1 = result;
    if ([MEMORY[0x277D0ACD8] isEmulatedDevice] && (objc_msgSend(MEMORY[0x277D0ACD8], "hasEmulatedDeviceBounds") & 1) != 0)
    {
      return 0;
    }

    location = [v1 location];
    if ((location - 2) < 2)
    {
      return 0;
    }

    else if (location)
    {
      return 1;
    }

    else
    {
      return [(SBRecordingIndicatorViewController *)v1 _hasMedinaPadBehaviors]^ 1;
    }
  }

  return result;
}

- (void)_configureRootLayer
{
  v41[4] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    WeakRetained = objc_loadWeakRetained(v1 + 150);
    screen = [WeakRetained screen];
    _display = [screen _display];
    [screen scale];
    v6 = v5;
    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeScale(&v39, v5, v5);
    v7 = *(v1 + 149);
    if (v7 > 3 || v7 == 1)
    {
      memset(&v38, 0, sizeof(v38));
      SBReverseScaleTransformForScreen(screen, &v38);
      t1 = v39;
      t2 = v38;
      CGAffineTransformConcat(&v37, &t1, &t2);
      v39 = v37;
    }

    isExternalDisplayWindowScene = [WeakRetained isExternalDisplayWindowScene];
    v10 = *MEMORY[0x277CBED28];
    v11 = *MEMORY[0x277CDA120];
    v40[0] = *MEMORY[0x277CDA100];
    v40[1] = v11;
    v41[0] = v10;
    v41[1] = v10;
    v40[2] = *MEMORY[0x277CDA0F0];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(_display, "displayId")}];
    v40[3] = @"canRenderAboveBlankingContext";
    v41[2] = v12;
    v41[3] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];

    LODWORD(v12) = +[SBRecordingIndicatorManager _supportsSecureIndicator];
    v14 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v13];
    OUTLINED_FUNCTION_24(v14, 1088);
    LODWORD(v15) = 1148846080;
    if (v12)
    {
      *&v15 = INFINITY;
    }

    [*(v1 + 136) setLevel:v15];
    [OUTLINED_FUNCTION_6_8(1088) setSecure:?];
    layer = [MEMORY[0x277CD9ED0] layer];
    OUTLINED_FUNCTION_24(layer, 1096);
    v17 = OUTLINED_FUNCTION_9_4();
    v38 = v39;
    [v17 setAffineTransform:&v38];
    if (isExternalDisplayWindowScene)
    {
      [screen nativeBounds];
    }

    else
    {
      GSMainScreenPixelSize();
      BSRectWithSize();
    }

    OUTLINED_FUNCTION_14();
    [OUTLINED_FUNCTION_9_4() setFrame:?];
    _hasMedinaPadBehaviors = [(SBRecordingIndicatorViewController *)v1 _hasMedinaPadBehaviors];
    location = [v1 location];
    if (location == 4 || _hasMedinaPadBehaviors)
    {
      [OUTLINED_FUNCTION_9_4() setOpacity:0.0];
    }

    GSMainScreenOrientation();
    if (!((v20 == 0.0) | isExternalDisplayWindowScene & 1))
    {
      v21 = v20;
      v22 = *(v1 + 137);
      v42.origin.x = OUTLINED_FUNCTION_13();
      MidY = CGRectGetMidY(v42);
      v43.origin.x = OUTLINED_FUNCTION_13();
      [v22 setPosition:{MidY, CGRectGetMidX(v43)}];
      v24 = *(v1 + 137);
      if (v24)
      {
        objc_msgSend_affineTransform(v24);
      }

      else
      {
        memset(&v37, 0, sizeof(v37));
      }

      CGAffineTransformRotate(&v38, &v37, -v21);
      [v24 setAffineTransform:&v38];
    }

    if (location == 4)
    {
      mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
      [mEMORY[0x277D67E28] sensorRegionSize];
      BSRectWithSize();
      [mEMORY[0x277D67E28] minimumScreenEdgeInsets];
      [OUTLINED_FUNCTION_9_4() bounds];
      UIRectCenteredXInRectScale();
      v26 = OUTLINED_FUNCTION_17_1(v44);
      v45.origin.x = OUTLINED_FUNCTION_3_23();
      Height = CGRectGetHeight(v45);
      if (v26 < Height)
      {
        Height = v26;
      }

      v28 = Height * 0.5;
      OUTLINED_FUNCTION_24(objc_alloc_init(MEMORY[0x277CD9EA8]), 1104);
      v29 = OUTLINED_FUNCTION_3_23();
      [v30 setFrame:{v29, *&v6}];
      [*(v1 + 138) setRenderMode:*MEMORY[0x277CDA688]];
      v31 = [*(v1 + 138) setCornerRadius:v28];
      v32 = *(v1 + 138);
      v34 = SBCALayerCornerCurveForRadius(v31, v33, v28);
      [v32 setCornerCurve:v34];

      [OUTLINED_FUNCTION_9_4() addSublayer:*(v1 + 138)];
    }

    [*(v1 + 136) setLayer:*(v1 + 137)];

    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (void)_requiresIndicatorPortalViews
{
  if (result)
  {
    return ([result location] > 2);
  }

  return result;
}

- (SBFluidSwitcherViewController)_usesSpringAnimationsWithContainerView
{
  if (result)
  {
    v2 = result;
    result = SBSIsSystemApertureAvailable();
    if (result)
    {
      return ([(SBFluidSwitcherViewController *)v2 location]== 3);
    }
  }

  return result;
}

- (id)_requiresSecondIndicatorView
{
  if (result)
  {
    v1 = result;
    if (([(SBRecordingIndicatorViewController *)result _hasMedinaPadBehaviors]& 1) != 0)
    {
      return 1;
    }

    else
    {
      return ([v1 location] == 4);
    }
  }

  return result;
}

- (uint64_t)_shouldReverseScaleWhenDisplayZoomedInLocation:(uint64_t)location
{
  if (a2 <= 3)
  {
    v2 = 2u >> (a2 & 0xF);
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  if (!location)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (BOOL)_secureRenderingSupported
{
  if (result)
  {
    return +[SBRecordingIndicatorManager _supportsSecureIndicator];
  }

  return result;
}

- (uint64_t)_isOnExtendedDesktop
{
  selfCopy = self;
  if (self)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      WeakRetained = objc_loadWeakRetained((selfCopy + 1200));
      selfCopy = [WeakRetained isMainDisplayWindowScene] ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (void)_updateIndicatorLayerWithSize:(double)size andCenter:(double)center
{
  if (result)
  {
    v7 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    OUTLINED_FUNCTION_0_29();
    v8[1] = 3221225472;
    v8[2] = __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke;
    v8[3] = &unk_2783BCBD8;
    v8[4] = v7;
    *&v8[5] = a2;
    *&v8[6] = size;
    *&v8[7] = center;
    [(SBRecordingIndicatorViewController *)v7 _updateIndicatorVisualRepresentationsWithBlock:v8];
    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (void)_updateIndicatorLayerSize:(double)size opacity:
{
  if (result)
  {
    v5 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    OUTLINED_FUNCTION_1_4();
    v7 = 3221225472;
    v8 = __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke;
    v9 = &unk_2783BCC00;
    v10 = v5;
    v11 = a2;
    sizeCopy = size;
    [(SBRecordingIndicatorViewController *)v5 _updateIndicatorVisualRepresentationsWithBlock:v6];
    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (void)_updateIndicatorViewSize:(double)size alpha:
{
  if (self)
  {
    BSRectWithSize();
    OUTLINED_FUNCTION_14();
    [self location];
    OUTLINED_FUNCTION_1_4();
    v11 = 3221225472;
    v12 = __69__SBRecordingIndicatorViewController__updateIndicatorViewSize_alpha___block_invoke;
    v13 = &unk_2783BCC28;
    v20 = v9 == 4;
    sizeCopy = size;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    selfCopy = self;
    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisualRepresentationsWithBlock:v10];
  }
}

- (uint64_t)_isInMinimumOnTime
{
  if (!self)
  {
    return 0;
  }

  minimumOnTimeCoordinator = [self minimumOnTimeCoordinator];
  v2 = [minimumOnTimeCoordinator isMinimumOnTimeSatisfiedForIndicators:3] ^ 1;

  return v2;
}

- (void)_animateWithOverlappingFadeFromOrientation:(uint64_t)orientation toOrientation:(double)toOrientation duration:
{
  if (self)
  {
    v5 = +[SBRecordingIndicatorDomain rootSettings];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      [v5 delayBeforeFadeOut180WhenOverlapping];
      v38 = v6;
      [v5 fadeOutDuration180WhenOverlapping];
      v8 = v7;
      [v5 delayBeforeFadeIn180WhenOverlapping];
      v10 = v9;
      [v5 fadeInDuration180WhenOverlapping];
    }

    else
    {
      [v5 delayBeforeFadeOut90WhenOverlapping];
      v38 = v12;
      [v5 fadeOutDuration90WhenOverlapping];
      v8 = v13;
      [v5 delayBeforeFadeIn90WhenOverlapping];
      v10 = v14;
      [v5 fadeInDuration90WhenOverlapping];
    }

    v15 = v11;
    containerView = [*(self + 1160) containerView];
    v17 = containerView;
    if (containerView)
    {
      view = containerView;
    }

    else
    {
      view = [self view];
    }

    v19 = view;

    containerView2 = [*(self + 1152) containerView];
    v21 = containerView2;
    if (containerView2)
    {
      view2 = containerView2;
    }

    else
    {
      view2 = [self view];
    }

    v23 = view2;

    v24 = *(self + 1096);
    v25 = [SBRecordingIndicatorViewController _centerForOrientation:self];
    v27 = v26;
    v28 = [SBRecordingIndicatorViewController _centerForOrientation:self];
    v30 = v29;
    *(self + 1072) = v28;
    *(self + 1080) = v29;
    [MEMORY[0x277CD9FF0] begin];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke;
    v48[3] = &unk_2783BCB88;
    v48[4] = self;
    *&v48[5] = v28;
    v48[6] = v30;
    *&v48[7] = v25;
    v48[8] = v27;
    [(SBRecordingIndicatorViewController *)self _updateIndicatorVisualRepresentationsWithBlock:v48];
    [v23 alpha];
    [v19 setAlpha:?];
    [v24 opacity];
    [0 setOpacity:?];
    [v23 setAlpha:0.0];
    [v24 setOpacity:0.0];
    [MEMORY[0x277CD9FF0] commit];
    v31 = objc_alloc(MEMORY[0x277D75D40]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_2;
    v45[3] = &unk_2783A92D8;
    v46 = v19;
    v47 = 0;
    v32 = v19;
    v33 = [v31 initWithDuration:0 curve:v45 animations:v8];
    v34 = objc_alloc(MEMORY[0x277D75D40]);
    OUTLINED_FUNCTION_1_4();
    v40 = 3221225472;
    v41 = __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_3;
    v42 = &unk_2783A92D8;
    v43 = v23;
    v44 = v24;
    v35 = v24;
    v36 = v23;
    v37 = [v34 initWithDuration:0 curve:v39 animations:v15];
    [v33 startAnimationAfterDelay:v38];
    [v37 startAnimationAfterDelay:v10];
  }
}

- (void)_updateCenterWithoutAnimationForOrientation:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_19();
    WeakRetained = objc_loadWeakRetained((v2 + 1200));
    [WeakRetained isExternalDisplayWindowScene];

    *(v1 + 1072) = [SBRecordingIndicatorViewController _centerForOrientation:v1];
    *(v1 + 1080) = v4;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    OUTLINED_FUNCTION_1_4();
    v6 = 3221225472;
    v7 = __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke;
    v8 = &unk_2783BCBB0;
    v9 = v1;
    [(SBRecordingIndicatorViewController *)v1 _updateIndicatorVisualRepresentationsWithBlock:v5];
    return [MEMORY[0x277CD9FF0] commit];
  }

  return result;
}

- (double)_centerForOrientation:(uint64_t)orientation
{
  if (orientation)
  {
    OUTLINED_FUNCTION_19();
    _screen = [v2 _screen];
    [_screen _referenceBounds];

    if (v1 == 4)
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v1 != 3)
      {
        if (v1 == 2)
        {
          if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
          {
            v8.origin.x = OUTLINED_FUNCTION_2_26();
            Width = CGRectGetWidth(v8);
            OUTLINED_FUNCTION_15_1(1048, Width);
          }

          v11.origin.x = OUTLINED_FUNCTION_2_26();
          CGRectGetHeight(v11);
        }

        else if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
        {
          v12.origin.x = OUTLINED_FUNCTION_2_26();
          CGRectGetWidth(v12);
        }

        goto LABEL_17;
      }

      v9.origin.x = OUTLINED_FUNCTION_2_26();
      v5 = CGRectGetWidth(v9);
      OUTLINED_FUNCTION_15_1(1064, v5);
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
LABEL_17:
        UIRectGetCenter();
        return result;
      }
    }

    v10.origin.x = OUTLINED_FUNCTION_2_26();
    Height = CGRectGetHeight(v10);
    OUTLINED_FUNCTION_15_1(1056, Height);
    goto LABEL_17;
  }

  return 0.0;
}

- (id)_ignoresActiveInterfaceOrientation
{
  if (result)
  {
    WeakRetained = objc_loadWeakRetained(result + 150);
    isExternalDisplayWindowScene = [WeakRetained isExternalDisplayWindowScene];

    return isExternalDisplayWindowScene;
  }

  return result;
}

- (id)_stopAllAnimations
{
  if (result)
  {
    [result[124] stopAnimation:1];
    [OUTLINED_FUNCTION_6_8(1000) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1008) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1016) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1024) stopAnimation:?];
    [OUTLINED_FUNCTION_6_8(1032) stopAnimation:?];
    v1 = OUTLINED_FUNCTION_6_8(1040);

    return [v1 stopAnimation:?];
  }

  return result;
}

double __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = *(a1 + 32);
  a3.n128_u64[0] = 0x3FF3333333333333;
  a2.n128_f64[0] = v3[131] * 1.2;
  OUTLINED_FUNCTION_5_9(v3, a2, a3);
  return result;
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_2(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = *(a1 + 32);
  a2.n128_u64[0] = v3[131];
  OUTLINED_FUNCTION_5_9(v3, a2, a3);
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_5_6();
    [(SBRecordingIndicatorViewController *)v4 _hasProminentIdleState];
    v6 = OUTLINED_FUNCTION_11_3();
    if (v6)
    {
      if ([(SBRecordingIndicatorViewController *)v6 _hasProminentIdleState])
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.8;
      }
    }
  }

  else
  {
    v1 = 0.0;
  }

  [(SBRecordingIndicatorViewController *)v2 _updateIndicatorViewSize:v1 alpha:v3];
}

- (CGFloat)_sizeForStateIdleOn
{
  if (!self)
  {
    return 0.0;
  }

  hasProminentIdle = [(SBRecordingIndicatorViewController *)self _hasProminentIdleState];
  result = self->_scrollViewLastContentOffset.y;
  if (!hasProminentIdle)
  {
    return result * 0.8;
  }

  return result;
}

- (double)_alphaForStateIdleOn
{
  if (!self)
  {
    return 0.0;
  }

  hasProminentIdle = [(SBRecordingIndicatorViewController *)self _hasProminentIdleState];
  result = 0.8;
  if (hasProminentIdle)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)_shouldForceViewToShowForCurrentBacklightLuminance
{
  if (!self)
  {
    return 0;
  }

  traitCollection = [self traitCollection];
  v2 = [traitCollection _backlightLuminance] == 1;

  return v2;
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [SBRecordingIndicatorViewController setIndicatorState:?];
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_5_6();
    [(SBRecordingIndicatorViewController *)v4 _hasProminentIdleState];
    v6 = OUTLINED_FUNCTION_11_3();
    if (v6)
    {
      if ([(SBRecordingIndicatorViewController *)v6 _hasProminentIdleState])
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.8;
      }
    }
  }

  else
  {
    v1 = 0.0;
  }

  [(SBRecordingIndicatorViewController *)v2 _updateIndicatorViewSize:v1 alpha:v3];
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [SBRecordingIndicatorViewController setIndicatorState:?];
}

- (void)_addBlurFilterToLayer:(double)layer withBlurRadius:
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = *MEMORY[0x277CDA328];
    v6 = a2;
    v7 = [OUTLINED_FUNCTION_5_6() filterWithType:v5];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:@"high" forKey:@"inputQuality"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:layer];
    [v7 setValue:v8 forKey:@"inputRadius"];

    v10[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v3 setFilters:v9];
  }

  OUTLINED_FUNCTION_18_1();
}

- (void)_animateLayer:(void *)layer forKeyPath:(void *)path fromValue:(void *)value toValue:(int)toValue persistingToValue:(double)persistingToValue duration:
{
  v16 = a2;
  layerCopy = layer;
  valueCopy = value;
  if (self)
  {
    v15 = [(SBRecordingIndicatorViewController *)self _springAnimationForKeyPath:layerCopy fromValue:path toValue:valueCopy duration:persistingToValue];
    [v16 addAnimation:v15 forKey:layerCopy];
    if (toValue)
    {
      [v16 setValue:valueCopy forKeyPath:layerCopy];
    }
  }
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = *(a1 + 32);
  a2.n128_u64[0] = v3[131];
  OUTLINED_FUNCTION_5_9(v3, a2, a3);
}

double __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithSpringAnimation___block_invoke_45(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = *(a1 + 32);
  a3.n128_u64[0] = 0.5;
  a2.n128_f64[0] = v3[131] * 0.5;
  OUTLINED_FUNCTION_4_11(v3, a2, a3);
  return result;
}

- (id)_springAnimationForKeyPath:(void *)path fromValue:(void *)value toValue:(double)toValue duration:
{
  if (self)
  {
    v8 = MEMORY[0x277CD9FA0];
    valueCopy = value;
    pathCopy = path;
    v11 = [v8 animationWithKeyPath:a2];
    [v11 setBeginTime:CACurrentMediaTime()];
    [v11 setFillMode:*MEMORY[0x277CDA228]];
    [v11 setFromValue:pathCopy];

    [v11 setToValue:valueCopy];
    [v11 setMass:2.0];
    [v11 setStiffness:300.0];
    [v11 setDamping:50.0];
    [v11 setDuration:toValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_isSuppressingFlipbookRendering
{
  if (result)
  {
    return [result[140] isSuppressingFlipbookRendering];
  }

  return result;
}

- (unint64_t)_isIndicatorOnOrAnimatingToOn
{
  if (result)
  {
    v1 = result;
    return [result indicatorState] == 2 || objc_msgSend(v1, "indicatorState") == 1;
  }

  return result;
}

- (void)traitCollectionDidChange:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  [(SBRecordingIndicatorViewController *)a1 _updateIndicatorForBacklightLuminance:a2 previousBacklightLuminance:a3];
  if ([(SBRecordingIndicatorViewController *)a1 _requiresLayerUpdateForBacklightTransition])
  {
    if (a2)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = MEMORY[0x277CDA678];
    if (a2)
    {
      v7 = MEMORY[0x277CDA688];
    }

    v8 = *v7;
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = v6;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Changed high level layer opacity to %f for backlightLuminance update %lu from: %lu", &v11, 0x20u);
    }

    *&v10 = v6;
    [*(a1 + 1096) setOpacity:v10];
    [*(a1 + 1104) setRenderMode:v8];
  }
}

uint64_t __84__SBRecordingIndicatorViewController__animateWithTwoPartFadeToOrientation_duration___block_invoke_3_cold_1(void *a1, uint64_t a2)
{
  [SBRecordingIndicatorViewController _updateCenterWithoutAnimationForOrientation:a1];
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);

  return [v3 startAnimationAfterDelay:v4];
}

void __104__SBRecordingIndicatorViewController__animateWithOverlappingFadeFromOrientation_toOrientation_duration___block_invoke_cold_1(void *a1, double a2, double a3)
{
  v5 = [a1 highLevelLayer];
  [v5 setPosition:{a2, a3}];
}

void __82__SBRecordingIndicatorViewController__updateCenterWithoutAnimationForOrientation___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 highLevelLayer];
  [v3 setPosition:{*(*a2 + 1072), *(*a2 + 1080)}];
}

void __78__SBRecordingIndicatorViewController__updateIndicatorLayerWithSize_andCenter___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 highLevelLayer];
  [v3 setPosition:{*(a2 + 48), *(a2 + 56)}];
}

uint64_t __72__SBRecordingIndicatorViewController__updateIndicatorLayerSize_opacity___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [a1 highLevelLayer];
  BSRectWithSize();
  [v8 setBounds:?];

  v9 = [a1 highLevelLayer];
  v10 = *(a2 + 48);
  *&v10 = v10;
  [v9 setOpacity:v10];

  v11 = [a1 highLevelLayer];
  *a4 = v11;
  v12 = *(*a3 + 1072);
  v13 = *(*a3 + 1080);

  return [v11 setPosition:{v12, v13}];
}

void __84__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithNormalAnimation___block_invoke_6_cold_1(SBFluidSwitcherViewController *a1)
{
  if ([(SBRecordingIndicatorViewController *)a1 _interchangesViewAndLayer])
  {
    hasProminentIdle = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
    if (OUTLINED_FUNCTION_16_1(hasProminentIdle, v5))
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.8;
    }

    [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:v1 opacity:v6];
    v7 = [(SBFluidSwitcherViewController *)a1 traitCollection];
    v8 = [v7 _backlightLuminance];

    if (v8 == 1)
    {
      [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
    }

    v10 = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
    OUTLINED_FUNCTION_7_3(v10, 1048);
  }

  [SBRecordingIndicatorViewController setIndicatorState:a1];
}

void __86__SBRecordingIndicatorViewController__updateIndicatorVisibilityWithFastFadeAnimation___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_19();
  if ([(SBRecordingIndicatorViewController *)v3 _interchangesViewAndLayer])
  {
    hasProminentIdle = [(SBRecordingIndicatorViewController *)v0 _hasProminentIdleState];
    if (OUTLINED_FUNCTION_16_1(hasProminentIdle, v6))
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.8;
    }

    [(SBRecordingIndicatorViewController *)v0 _updateIndicatorLayerSize:v2 opacity:v7];
    v8 = [v0 traitCollection];
    v9 = [v8 _backlightLuminance];

    if (v9 == 1)
    {
      v11 = *(v1 + 32);
      if (v11)
      {
        [(SBRecordingIndicatorViewController *)v11 _hasProminentIdleState];
      }
    }

    v12 = [(SBRecordingIndicatorViewController *)v0 _hasProminentIdleState];
    OUTLINED_FUNCTION_7_3(v12, 1048);
  }

  [SBRecordingIndicatorViewController setIndicatorState:v0];
}

- (uint64_t)backlightController:(SBFluidSwitcherViewController *)a1 didTransitionToBacklightState:(const char *)a2 source:.cold.1(SBFluidSwitcherViewController *a1, const char *a2)
{
  hasProminentIdle = [(SBRecordingIndicatorViewController *)a1 _hasProminentIdleState];
  y = a1->_scrollViewLastContentOffset.y;
  if (!hasProminentIdle)
  {
    y = y * 0.8;
  }

  [(SBRecordingIndicatorViewController *)a1 _updateIndicatorLayerSize:0.0 opacity:?];
  [*a2 setOpacity:0.0];
  return [(SBFluidSwitcherSheetMetricsCache *)a1->_sheetMetricsCache setRenderMode:*MEMORY[0x277CDA688]];
}

@end