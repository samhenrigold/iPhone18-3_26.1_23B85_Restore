@interface SBFluidSwitcherGestureManager
- (BOOL)_areContinuousExposeStripsAvailableWithReason:(id *)reason;
- (BOOL)_areContinuousExposeStripsOccludedOrHiddenWithOutReason:(id *)reason;
- (BOOL)_edgeLocationIsOutsideFloatingApplicationGrabberFreeRegion:(double)region;
- (BOOL)_hasActiveModalFloatingApplication;
- (BOOL)_isBannerOccludingRegionAtReferencePoint:(CGPoint)point;
- (BOOL)_isEdgeLocationInHomeAffordanceRegion:(double)region;
- (BOOL)_isHomeAffordanceDoubleTapGestureEnabled;
- (BOOL)_isHomeAffordanceHitTestRectForAppLayoutRelevant:(id)relevant;
- (BOOL)_isHomeAffordanceSingleTapGatingEnabled;
- (BOOL)_isLiveResizeGestureWithinPreferredLiveResizeRegion;
- (BOOL)_isLiveResizeGestureWithinTopEdgeResizeRegionForTouch;
- (BOOL)_isTouchLocationInSplitViewGutter:(CGPoint)gutter;
- (BOOL)_isTouchLocationInWindowControlsFrame:(CGPoint)frame;
- (BOOL)_isTransactionRunningForGestureRecognizer:(id)recognizer;
- (BOOL)_isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:(CGPoint)space withinUnstashLocationOnHomeScreen:(BOOL)screen;
- (BOOL)_shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges:(unint64_t)edges;
- (BOOL)_shouldAllowFloatingApplicationGesture:(id)gesture gestureType:(unint64_t)type failureReason:(id *)reason;
- (BOOL)_shouldBeginBottomEdgePanGesture:(id)gesture;
- (BOOL)_shouldBeginBringItemContainerForwardGesture:(id)gesture type:(unint64_t)type;
- (BOOL)_shouldBeginClickAndDragHomeGesture:(id)gesture;
- (BOOL)_shouldBeginClickDownToBringItemContainerForwardGesture:(id)gesture;
- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)gesture;
- (BOOL)_shouldBeginContinuousExposeStripOverflowPanGesture:(id)gesture;
- (BOOL)_shouldBeginContinuousExposeStripRevealGesture:(id)gesture;
- (BOOL)_shouldBeginDeckInSwitcherPanGesture:(id)gesture;
- (BOOL)_shouldBeginFloatingApplicationMoveGesture:(id)gesture;
- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)gesture;
- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)gesture;
- (BOOL)_shouldBeginFloatingApplicationSwipeUpGesture:(id)gesture;
- (BOOL)_shouldBeginFluidScrunchGesture:(id)gesture;
- (BOOL)_shouldBeginHoverGesture:(id)gesture;
- (BOOL)_shouldBeginIndirectFloatingAppScrunchGesture:(id)gesture;
- (BOOL)_shouldBeginIndirectHomePanGesture:(id)gesture;
- (BOOL)_shouldBeginLiveWindowResizeGesture:(id)gesture;
- (BOOL)_shouldBeginSplitViewApplicationUnpinGesture:(id)gesture;
- (BOOL)_shouldBringItemContainerForwardGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldClickAndDragHomeGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldClickDownToBringItemContainerForward:(id)forward receiveTouch:(id)touch;
- (BOOL)_shouldContinuousExposeStripOverflowPanGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldDeckInSwitcherPanGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldFlexibleWindowingSceneResizeGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldFloatingApplicationMoveGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldFloatingApplicationPinGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldFloatingApplicationSwipeUpGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldIndirectFloatingAppScrunchGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldLiveResizeGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldLiveResizeItemContainerGestureWithPointer:(id)pointer receiveTouch:(id)touch;
- (BOOL)_shouldLiveResizeItemContainerGestureWithTouch:(id)touch receiveTouch:(id)receiveTouch allowedCorners:(unint64_t)corners requiresVisibleCorner:(BOOL)corner allowedEdges:(unint64_t)edges;
- (BOOL)_shouldMedusaSceneResizeGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldProtectEdgeLocation:(double)location edge:(unint64_t)edge;
- (BOOL)_shouldSceneResizeGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldSplitViewApplicationUnpinGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_shouldSuppressEdgeProtect;
- (BOOL)_shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition;
- (BOOL)_shouldUserClickInAppInteractionGesture:(id)gesture receiveTouch:(id)touch;
- (BOOL)_touchIsWithinUnstashRegionOnHomeScreen:(id)screen;
- (BOOL)_touchLocationIsWithinSlideOverTongue:(double)tongue;
- (BOOL)_touchLocationIsWithinUnstashRegion:(CGPoint)region;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)grabberTongue:(id)tongue shouldAllowSecondSwipeWithEdgeLocation:(double)location;
- (BOOL)grabberTongue:(id)tongue shouldReceiveTouch:(id)touch;
- (BOOL)grabberTongue:(id)tongue shouldShowTongueOnFirstSwipeWithEdgeLocation:(double)location;
- (BOOL)grabberTongueOrPullEnabled:(id)enabled forGestureRecognizer:(id)recognizer;
- (BOOL)shouldAllowThinStyleForHomeGrabberView:(id)view;
- (BOOL)shouldSuppressTongueViewForGrabberTongue:(id)tongue;
- (CGRect)_edgeSwipeHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch;
- (CGRect)_floatingApplicationBounds;
- (CGRect)_innerLeftEdgeDragHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch;
- (CGRect)_innerRightEdgeDragHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch;
- (CGRect)_paddedHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch;
- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)interaction;
- (Class)_fluidSwitcherGestureTransactionClassForGestureType:(int64_t)type;
- (SBDisplayItemSlideOverConfiguration)_currentSlideOverConfiguration;
- (SBFluidSwitcherGestureManager)initWithSwitcherController:(id)controller delegate:(id)delegate;
- (SBFluidSwitcherGestureManagerDelegate)delegate;
- (SBFluidSwitcherViewController)switcherContentController;
- (SBSwitcherContentViewControlling)contentViewController;
- (SBSwitcherController)switcherController;
- (UINotificationFeedbackGenerator)edgeProtectFeedbackGenerator;
- (double)additionalEdgeSpacingForHomeGrabberView:(id)view;
- (id)_appLayoutForHomeGrabberView:(id)view;
- (id)_currentFlexibleWindowingAutoLayoutSpace;
- (id)_currentFloatingAppLayout;
- (id)_currentLayoutState;
- (id)_deviceApplicationSceneEntityForFloatingApplicationGrabberTongue;
- (id)_firstFloatingAppLayout;
- (id)_grabberTongueForGestureRecognizer:(id)recognizer;
- (id)_hitTestStageItemContainerForUnpinGestureWithTouch:(id)touch atGestureLocation:(CGPoint)location;
- (id)_indirectPresentFloatingAppGestureRecognizerForEdge:(unint64_t)edge;
- (id)_scenesForAppLayout:(id)layout;
- (id)_scenesForHomeGrabberView:(id)view;
- (id)_slideOverDisplayItem;
- (id)_slideOverLeafAppLayout;
- (id)acquireSystemApertureSuppressionAssertionForBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier;
- (id)customGestureRecognizerForGrabberTongue:(id)tongue;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dragAndDropManager:(id)manager displayItemForDraggingWindowWithGestureRecognizer:(id)recognizer;
- (id)dragAndDropManager:(id)manager sourceViewProviderForDraggingWindowWithGestureRecognizer:(id)recognizer;
- (id)indirectPanGestureRecognizerForGrabberTongue:(id)tongue;
- (id)succinctDescription;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (int64_t)_currentUnlockedEnvironmentMode;
- (int64_t)_gestureTypeForGestureRecognizer:(id)recognizer;
- (unint64_t)_continuousExposeStripEdge;
- (unint64_t)indirectPanSystemGestureTypeForGrabberTongue:(id)tongue;
- (void)_configureTransitionRequest:(id)request forGestureBegin:(id)begin;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handleClickDownToBringItemContainerForward:(id)forward;
- (void)_handleContinuousExposeStripRevealGesture:(id)gesture;
- (void)_handleDeckSwitcherPanGesture:(id)gesture;
- (void)_handleFloatingAppPresentGesture:(id)gesture;
- (void)_handleFluidGesture:(id)gesture;
- (void)_handleHoverGesture:(id)gesture;
- (void)_handleScrunchGesture:(id)gesture;
- (void)_handleSwitcherGestureBegan:(id)began;
- (void)_handleSwitcherPanGestureBegan:(id)began;
- (void)_handleSwitcherPanGestureChanged:(id)changed;
- (void)_handleSwitcherPanGestureEnded:(id)ended;
- (void)_handleTapToBringItemContainerForward:(id)forward;
- (void)_handleWindowDragGestureRecognizer:(id)recognizer;
- (void)_setUpChamoisGestureRecognizers;
- (void)_setUpFloatingApplicationGestureRecognizers;
- (void)_setUpGestureRecognizers;
- (void)_setUpScrunchGestureRecognizerIfNeeded;
- (void)_startFluidSwitcherTransactionForGestureRecognizer:(id)recognizer;
- (void)_tearDownChamoisGestureRecognizers;
- (void)_tearDownFloatingApplicationGestureRecognizers;
- (void)_updateChamoisGestureRecognizerPresenceForWindowManagementContext:(id)context;
- (void)_updateCurrentHomeGrabberViews;
- (void)_updateDeckSwitcherInSwitcherGesturePresence;
- (void)_updateExclusionTrapezoidDebugView;
- (void)_updateFloatingApplicationGestureRecognizerPresenceForWindowManagementContext:(id)context;
- (void)_updateFluidDragAndDropManagerPresenceForWindowManagementContext:(id)context;
- (void)_updateGestureDefaults;
- (void)_updateHomeAffordanceHitTestRects;
- (void)_updateHomeAffordanceInteraction;
- (void)_updateHomeGrabberViewsWithAnimationMode:(int64_t)mode;
- (void)_updateIndirectBottomEdgePanGesturePresence;
- (void)_updateSwitcherBottomEdgeGesturePresence;
- (void)_updateZStackPolicyAssistantsWithLayoutState:(id)state;
- (void)bannerManager:(id)manager willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)bannerManager:(id)manager willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)dealloc;
- (void)dragAndDropManager:(id)manager didBeginDraggingWindowWithSceneIdentifier:(id)identifier;
- (void)dragAndDropManager:(id)manager didBeginGesture:(id)gesture;
- (void)dragAndDropManager:(id)manager didEndGesture:(id)gesture;
- (void)dragAndDropManager:(id)manager didPlatterizeWindowDragWithSceneIdentifier:(id)identifier;
- (void)dragAndDropManager:(id)manager didUpdateGesture:(id)gesture;
- (void)dragAndDropManager:(id)manager willEndDraggingWindowWithSceneIdentifier:(id)identifier;
- (void)failMultitaskingGesturesForReason:(id)reason;
- (void)fluidSwitcherGestureTransaction:(id)transaction didBeginGesture:(id)gesture;
- (void)fluidSwitcherGestureTransaction:(id)transaction didEndGesture:(id)gesture;
- (void)fluidSwitcherGestureTransaction:(id)transaction didUpdateGesture:(id)gesture;
- (void)grabberTongueBeganPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueCanceledPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueDidPresentInteractively:(id)interactively withDistance:(double)distance andVelocity:(double)velocity;
- (void)grabberTongueEndedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueUpdatedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueWillDismiss:(id)dismiss;
- (void)grabberTongueWillPresent:(id)present;
- (void)grabberTongueWillPresentInteractively:(id)interactively withDistance:(double)distance andVelocity:(double)velocity;
- (void)handleTransitionRequestForGestureComplete:(id)complete;
- (void)homeGrabberViewDidFailToRecognizeDoubleTap:(id)tap;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)homeGrabberViewDidRecognizeDoubleTap:(id)tap;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)relinquishHiddenAssertionForHomeGrabber:(id)grabber;
- (void)setActiveGestureTransaction:(id)transaction;
- (void)setCurrentHomeGrabberViews:(id)views;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)takeHiddenAssertionForHomeGrabber:(id)grabber;
- (void)tickleContinuousExposeStripRevealGrabberTongueIfVisible;
- (void)updateForWindowManagementContext:(id)context;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBFluidSwitcherGestureManager

- (void)_updateHomeAffordanceHitTestRects
{
  v75 = *MEMORY[0x277D85DE8];
  if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceDoubleTapGestureEnabled])
  {
    if ([MEMORY[0x277D75FC8] instancesRespondToSelector:sel_setHomeAffordanceScreenFixedFrame_])
    {
      v69 = 0uLL;
      v70 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      obj = [(SBFluidSwitcherGestureManager *)self currentHomeGrabberViews];
      v3 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v68;
        v6 = *MEMORY[0x277CBF3A0];
        v7 = *(MEMORY[0x277CBF3A0] + 8);
        v8 = *(MEMORY[0x277CBF3A0] + 16);
        v9 = *(MEMORY[0x277CBF3A0] + 24);
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v68 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v67 + 1) + 8 * i);
            v12 = [(SBFluidSwitcherGestureManager *)self _appLayoutForHomeGrabberView:v11];
            v13 = v9;
            v14 = v8;
            v15 = v7;
            v16 = v6;
            if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceHitTestRectForAppLayoutRelevant:v12])
            {
              _screen = [v11 _screen];
              fixedCoordinateSpace = [_screen fixedCoordinateSpace];

              [v11 grabberHitTestRect];
              [v11 convertRect:fixedCoordinateSpace toCoordinateSpace:?];
              v16 = v19;
              v15 = v20;
              v14 = v21;
              v13 = v22;
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v23 = [(SBFluidSwitcherGestureManager *)self _scenesForAppLayout:v12];
            v24 = [v23 countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v64;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v64 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  _homeAffordanceHostSceneComponent = [*(*(&v63 + 1) + 8 * j) _homeAffordanceHostSceneComponent];
                  [_homeAffordanceHostSceneComponent setHomeAffordanceScreenFixedFrame:{v16, v15, v14, v13}];
                }

                v25 = [v23 countByEnumeratingWithState:&v63 objects:v73 count:16];
              }

              while (v25);
            }
          }

          v4 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        }

        while (v4);
      }
    }

    else
    {
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      obj = [(SBFluidSwitcherGestureManager *)self currentHomeGrabberViews];
      v29 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v60;
        v32 = *MEMORY[0x277CBF3A0];
        v33 = *(MEMORY[0x277CBF3A0] + 8);
        v34 = *(MEMORY[0x277CBF3A0] + 16);
        v35 = *(MEMORY[0x277CBF3A0] + 24);
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v60 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v59 + 1) + 8 * k);
            v38 = [(SBFluidSwitcherGestureManager *)self _appLayoutForHomeGrabberView:v37];
            v39 = v35;
            v40 = v34;
            v41 = v33;
            v42 = v32;
            if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceHitTestRectForAppLayoutRelevant:v38])
            {
              window = [v37 window];
              [v37 grabberHitTestRect];
              [v37 convertRect:window toView:?];
              [window _convertRectToSceneReferenceSpace:?];
              v42 = v44;
              v41 = v45;
              v40 = v46;
              v39 = v47;
            }

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v48 = [(SBFluidSwitcherGestureManager *)self _scenesForAppLayout:v38];
            v49 = [v48 countByEnumeratingWithState:&v55 objects:v71 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v56;
              do
              {
                for (m = 0; m != v50; ++m)
                {
                  if (*v56 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  _homeAffordanceHostSceneComponent2 = [*(*(&v55 + 1) + 8 * m) _homeAffordanceHostSceneComponent];
                  [_homeAffordanceHostSceneComponent2 setHomeAffordanceSceneReferenceFrame:{v42, v41, v40, v39}];
                }

                v50 = [v48 countByEnumeratingWithState:&v55 objects:v71 count:16];
              }

              while (v50);
            }
          }

          v30 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v30);
      }
    }
  }
}

- (id)_currentLayoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  layoutState = [WeakRetained layoutState];

  return layoutState;
}

- (void)_updateHomeAffordanceInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];
    appLayout = [_currentLayoutState appLayout];
    isChamoisOrFlexibleWindowing = 0;
    if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]&& unlockedEnvironmentMode == 3)
    {
      v9 = objc_loadWeakRetained(&self->_switcherContentController);
      isChamoisOrFlexibleWindowing = [v9 appLayoutContainsAnUnoccludedMaximizedDisplayItem:appLayout] ^ 1;
    }
  }

  [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction setEnabled:isChamoisOrFlexibleWindowing];
  homeAffordanceInteraction = self->_homeAffordanceInteraction;

  [(SBFHomeAffordanceInteraction *)homeAffordanceInteraction setNeedsUpdate];
}

- (BOOL)_isHomeAffordanceDoubleTapGestureEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  assistantController = [windowScene assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];

  return isHomeAffordanceDoubleTapGestureEnabled;
}

- (void)_updateExclusionTrapezoidDebugView
{
  exclusionTrapezoidDebugView = self->_exclusionTrapezoidDebugView;
  v4 = MEMORY[0x277D76BA0];
  v5 = MEMORY[0x277D76BA8];
  if (exclusionTrapezoidDebugView)
  {
    [(UIView *)exclusionTrapezoidDebugView removeFromSuperview];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*v4 object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*v5 object:0];
  }

  exclusionTrapezoidSettings = [(SBHomeGestureSettings *)self->_homeGestureSettings exclusionTrapezoidSettings];
  showExclusionTrapezoidDebugView = [exclusionTrapezoidSettings showExclusionTrapezoidDebugView];

  if (showExclusionTrapezoidDebugView)
  {
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__updateExclusionTrapezoidDebugView name:*v4 object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__updateExclusionTrapezoidDebugView name:*v5 object:0];

    v12 = objc_opt_class();
    edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
    v20 = SBSafeCast(v12, edgePullGestureRecognizer);

    [v20 _touchInterfaceOrientation];
    v14 = [v20 _currentExclusionShapeForEdge:_screenRegionGivenInterfaceOrientedRegion()];
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    view = [WeakRetained view];

    debugView = [v14 debugView];
    v18 = self->_exclusionTrapezoidDebugView;
    self->_exclusionTrapezoidDebugView = debugView;

    v19 = self->_exclusionTrapezoidDebugView;
    [view bounds];
    [(UIView *)v19 setFrame:?];
    [(UIView *)self->_exclusionTrapezoidDebugView setAutoresizingMask:18];
    [view addSubview:self->_exclusionTrapezoidDebugView];
  }
}

- (void)_updateCurrentHomeGrabberViews
{
  ownsHomeGesture = [(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture];
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  floatingAppLayout = [_currentLayoutState floatingAppLayout];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [WeakRetained homeGrabberViewForAppLayout:appLayout];
  v8 = [WeakRetained homeGrabberViewForAppLayout:floatingAppLayout];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  if (v7)
  {
    [v7 setHomeAffordanceInteractionEnabled:ownsHomeGesture];
    [weakObjectsHashTable addObject:v7];
  }

  if (v8)
  {
    [v8 setHomeAffordanceInteractionEnabled:ownsHomeGesture];
    [weakObjectsHashTable addObject:v8];
  }

  [(SBFluidSwitcherGestureManager *)self setCurrentHomeGrabberViews:weakObjectsHashTable];
}

- (BOOL)_shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  layoutContext = [WeakRetained layoutContext];

  [layoutContext secondsSinceLastTransitionCompletion];
  v6 = v5;
  [(SBHomeGestureSettings *)selfCopy->_homeGestureSettings secondsToAllowMultipleEdges];
  LOBYTE(selfCopy) = v6 < v7;

  return selfCopy;
}

- (int64_t)_currentUnlockedEnvironmentMode
{
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

  return unlockedEnvironmentMode;
}

- (BOOL)_shouldSuppressEdgeProtect
{
  activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];

  if (activeGestureTransaction)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  layoutContext = [WeakRetained layoutContext];
  activeTransitionContext = [layoutContext activeTransitionContext];

  if (activeTransitionContext)
  {
    return 1;
  }

  v9 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v9 transientOverlayPresentationManager];

  v7 = ([transientOverlayPresentationManager hasActivePresentation] & 1) != 0 || -[SBFluidSwitcherGestureManager _shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition](self, "_shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition");
  return v7;
}

- (SBFluidSwitcherGestureManager)initWithSwitcherController:(id)controller delegate:(id)delegate
{
  v56[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  delegateCopy = delegate;
  v54.receiver = self;
  v54.super_class = SBFluidSwitcherGestureManager;
  v7 = [(SBFluidSwitcherGestureManager *)&v54 init];
  if (v7)
  {
    windowScene = [controllerCopy windowScene];
    contentViewController = [controllerCopy contentViewController];
    v9 = objc_opt_class();
    v10 = contentViewController;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    obj = v11;

    objc_storeWeak(&v7->_switcherController, controllerCopy);
    objc_storeWeak(&v7->_switcherContentController, obj);
    objc_storeWeak(&v7->_delegate, delegateCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    currentHomeGrabberViews = v7->_currentHomeGrabberViews;
    v7->_currentHomeGrabberViews = weakObjectsHashTable;

    homeAffordanceInteractionManager = [windowScene homeAffordanceInteractionManager];
    newHomeAffordanceInteraction = [homeAffordanceInteractionManager newHomeAffordanceInteraction];
    homeAffordanceInteraction = v7->_homeAffordanceInteraction;
    v7->_homeAffordanceInteraction = newHomeAffordanceInteraction;

    [(SBFHomeAffordanceInteraction *)v7->_homeAffordanceInteraction setDelegate:v7];
    view = [obj view];
    [view addInteraction:v7->_homeAffordanceInteraction];

    layoutStateTransitionCoordinator = [windowScene layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = v7->_layoutStateTransitionCoordinator;
    v7->_layoutStateTransitionCoordinator = layoutStateTransitionCoordinator;

    [(SBLayoutStateTransitionCoordinator *)v7->_layoutStateTransitionCoordinator addObserver:v7];
    v20 = +[SBAppSwitcherDomain rootSettings];
    appSwitcherSettings = v7->_appSwitcherSettings;
    v7->_appSwitcherSettings = v20;

    v22 = +[SBHomeGestureDomain rootSettings];
    homeGestureSettings = v7->_homeGestureSettings;
    v7->_homeGestureSettings = v22;

    [(PTSettings *)v7->_homeGestureSettings addKeyObserver:v7];
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v7->_homeGrabberSettings;
    v7->_homeGrabberSettings = rootSettings;

    v26 = +[SBIndirectPanGestureDomain rootSettings];
    indirectPanGestureSettings = v7->_indirectPanGestureSettings;
    v7->_indirectPanGestureSettings = v26;

    objc_initWeak(&location, v7);
    v28 = +[SBDefaults localDefaults];
    appSwitcherDefaults = [v28 appSwitcherDefaults];
    appSwitcherDefaults = v7->_appSwitcherDefaults;
    v7->_appSwitcherDefaults = appSwitcherDefaults;

    v31 = v7->_appSwitcherDefaults;
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"trackpadSwitcherGesturesEnabled"];
    v56[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    v34 = MEMORY[0x277D85CD0];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke;
    v51[3] = &unk_2783A8C68;
    objc_copyWeak(&v52, &location);
    v35 = [(SBAppSwitcherDefaults *)v31 observeDefaults:v33 onQueue:MEMORY[0x277D85CD0] withBlock:v51];

    v36 = +[SBDefaults localDefaults];
    gestureDefaults = [v36 gestureDefaults];

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"multitaskingGesturesRequireEducation"];
    v55[0] = v38;
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"systemGesturesAllowed"];
    v55[1] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke_2;
    v49[3] = &unk_2783A8C68;
    objc_copyWeak(&v50, &location);
    v41 = [gestureDefaults observeDefaults:v40 onQueue:MEMORY[0x277D85CD0] withBlock:v49];

    [(SBFluidSwitcherGestureManager *)v7 _updateGestureDefaults];
    v42 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    displayItemLayoutAttributesCalculator = v7->_displayItemLayoutAttributesCalculator;
    v7->_displayItemLayoutAttributesCalculator = v42;

    if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
    {
      bannerManager = [SBApp bannerManager];
      [bannerManager addTransitionObserver:v7];
    }

    [(SBFluidSwitcherGestureManager *)v7 _setUpGestureRecognizers];
    [(SBFluidSwitcherGestureManager *)v7 _updateZStackParticipantWithReason:@"init"];
    objc_destroyWeak(&v50);

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIndirectBottomEdgePanGesturePresence];
}

void __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestureDefaults];
}

- (void)dealloc
{
  [(SBFluidSwitcherGestureManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherGestureManager;
  [(SBFluidSwitcherGestureManager *)&v3 dealloc];
}

- (void)_setUpGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  zStackResolver = [windowScene zStackResolver];
  v5 = [zStackResolver acquireParticipantWithIdentifier:1 delegate:self];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = v5;

  v7 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBAudioCategoryZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
  zStackAudioCategoryPolicyAssistant = self->_zStackAudioCategoryPolicyAssistant;
  self->_zStackAudioCategoryPolicyAssistant = v7;

  v9 = [[SBSystemApertureZStackPolicyAssistant alloc] initWithParticipant:?];
  zStackSystemAperturePolicyAssistant = self->_zStackSystemAperturePolicyAssistant;
  self->_zStackSystemAperturePolicyAssistant = v9;

  v11 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
  zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
  self->_zStackPhysicalButtonPolicyAssistant = v11;

  v13 = [MEMORY[0x277CBEB58] set];
  suppressionAssertions = self->_suppressionAssertions;
  self->_suppressionAssertions = v13;

  [(SBFluidSwitcherGestureManager *)self _updateSwitcherBottomEdgeGesturePresence];
  [(SBFluidSwitcherGestureManager *)self _updateDeckSwitcherInSwitcherGesturePresence];
  [(SBFluidSwitcherGestureManager *)self _setUpScrunchGestureRecognizerIfNeeded];
  [(SBFluidSwitcherGestureManager *)self _updateIndirectBottomEdgePanGesturePresence];
  windowManagementContext = [WeakRetained windowManagementContext];
  [(SBFluidSwitcherGestureManager *)self updateForWindowManagementContext:windowManagementContext];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  controlCenterController = [windowScene controlCenterController];
  _presentGestureRecognizers = [controlCenterController _presentGestureRecognizers];
  v26 = objc_msgSend_containsObject_(_presentGestureRecognizers);

  v12 = +[SBCoverSheetPresentationManager sharedInstance];
  coverSheetSlidingViewController = [v12 coverSheetSlidingViewController];
  systemGesturesDelegate = [coverSheetSlidingViewController systemGesturesDelegate];
  presentGestureRecognizer = [systemGesturesDelegate presentGestureRecognizer];
  v16 = [(SBFluidSwitcherPanGestureRecognizer *)gestureRecognizerCopy isEqual:presentGestureRecognizer];

  menuBarManager = [windowScene menuBarManager];
  presentGestureRecognizer2 = [menuBarManager presentGestureRecognizer];
  v19 = [(SBFluidSwitcherPanGestureRecognizer *)gestureRecognizerCopy isEqual:presentGestureRecognizer2];

  if (self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy)
  {
    windowManagementContext = [WeakRetained windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if ((isChamoisOrFlexibleWindowing & 1) == 0)
    {
      v23 = v26 | v19 | v16;
      goto LABEL_15;
    }
  }

  if (self->_liveWindowResizeGestureRecognizer == recognizerCopy)
  {
    edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];

    if (edgePullGestureRecognizer == gestureRecognizerCopy)
    {
      _isLiveResizeGestureWithinPreferredLiveResizeRegion = [(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinPreferredLiveResizeRegion];
LABEL_13:
      v23 = _isLiveResizeGestureWithinPreferredLiveResizeRegion;
      goto LABEL_15;
    }
  }

  if (self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy && self->_liveWindowResizeGestureRecognizer == gestureRecognizerCopy)
  {
    _isLiveResizeGestureWithinPreferredLiveResizeRegion = [(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinTopEdgeResizeRegionForTouch];
    goto LABEL_13;
  }

  v23 = self->_sceneResizePanGestureRecognizer == recognizerCopy && self->_liveWindowResizeGestureRecognizer == gestureRecognizerCopy;
LABEL_15:

  return v23 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  v95 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v88 = objc_loadWeakRetained(&self->_switcherContentController);
  windowScene = [WeakRetained windowScene];
  floatingDockController = [windowScene floatingDockController];
  presentFloatingDockIndirectPanGestureRecognizer = [floatingDockController presentFloatingDockIndirectPanGestureRecognizer];
  controlCenterController = [windowScene controlCenterController];
  _presentGestureRecognizers = [controlCenterController _presentGestureRecognizers];
  v86 = objc_msgSend_containsObject_(_presentGestureRecognizers);

  v13 = +[SBCoverSheetPresentationManager sharedInstance];
  coverSheetSlidingViewController = [v13 coverSheetSlidingViewController];
  systemGesturesDelegate = [coverSheetSlidingViewController systemGesturesDelegate];
  presentGestureRecognizer = [systemGesturesDelegate presentGestureRecognizer];
  v85 = [(SBFluidSwitcherPanGestureRecognizer *)gestureRecognizerCopy isEqual:presentGestureRecognizer];

  windowMoveClientGateRelationshipGestureRecognizer = self->_windowMoveClientGateRelationshipGestureRecognizer;
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  menuBarManager = [windowScene menuBarManager];
  presentGestureRecognizer2 = [menuBarManager presentGestureRecognizer];
  v83 = [(SBFluidSwitcherPanGestureRecognizer *)gestureRecognizerCopy isEqual:presentGestureRecognizer2];

  windowManagementContext = [WeakRetained windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (self->_indirectBottomEdgePanGestureRecognizer == recognizerCopy && presentFloatingDockIndirectPanGestureRecognizer == gestureRecognizerCopy || self->_hoverGestureRecognizer == recognizerCopy)
  {
    LOBYTE(v25) = 1;
    goto LABEL_11;
  }

  if (self->_moveFloatingApplicationGestureRecognizer == recognizerCopy)
  {
    LOBYTE(v25) = v86 | v85;
    goto LABEL_11;
  }

  if (self->_pinFloatingApplicationGestureRecognizer == recognizerCopy)
  {
    LOBYTE(v25) = v86 | v85;
    goto LABEL_11;
  }

  v22 = self->_liveWindowResizeGestureRecognizer;
  if (v22 != recognizerCopy || ((isFlexibleWindowingEnabled ^ 1) & 1) != 0 || ((v86 ^ 1) & 1) != 0)
  {
    if (v22 == recognizerCopy)
    {
      edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];

      if (edgePullGestureRecognizer == gestureRecognizerCopy)
      {
        LOBYTE(v25) = ![(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinPreferredLiveResizeRegion];
        goto LABEL_11;
      }
    }

    if (self->_unpinSplitViewApplicationGestureRecognizer != recognizerCopy)
    {
      LOBYTE(v25) = 0;
      goto LABEL_11;
    }

    if (windowMoveClientGateRelationshipGestureRecognizer == gestureRecognizerCopy)
    {
      v82 = presentFloatingDockIndirectPanGestureRecognizer;
      v26 = v88;
      view = [v88 view];
      v76 = [(SBIndirectPanGestureRecognizer *)recognizerCopy _activeEventOfType:0];
      v33 = [v76 touchesForGestureRecognizer:recognizerCopy];
      anyObject = [v33 anyObject];

      v78 = view;
      _UISystemGestureLocationForTouchInView();
      v36 = v35;
      v38 = v37;
      v39 = [(SBFluidSwitcherGestureManager *)self _hitTestStageItemContainerForUnpinGestureWithTouch:anyObject atGestureLocation:?];
      if (v39)
      {
        v80 = v39;
        _isPointerTouch = [anyObject _isPointerTouch];
        [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:v80 forPointerTouch:_isPointerTouch];
        v72.origin.x = v41;
        v72.origin.y = v42;
        v72.size.width = v43;
        v72.size.height = v44;
        [(SBFluidSwitcherGestureManager *)self _edgeSwipeHitTestRectForItemContainer:v80 forPointerTouch:_isPointerTouch];
        v73.origin.x = v45;
        v73.origin.y = v46;
        v73.size.width = v47;
        v73.size.height = v48;
        [(SBFluidSwitcherGestureManager *)self _innerLeftEdgeDragHitTestRectForItemContainer:v80 forPointerTouch:_isPointerTouch];
        v49 = _isPointerTouch;
        v39 = v80;
        [(SBFluidSwitcherGestureManager *)self _innerRightEdgeDragHitTestRectForItemContainer:v80 forPointerTouch:v49];
        objc_msgSend_frame(v80);
        v98.x = v36;
        v98.y = v38;
        v50 = CGRectContainsPoint(v99, v98);
        if (v50)
        {
          v50 = SBRectContainsPoint();
          if ((v50 & 1) == 0)
          {
            v50 = [(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinUnstashRegion:v36, v38];
            if ((v50 & 1) == 0)
            {
              v50 = SBRectContainsPoint();
              if ((v50 & 1) == 0)
              {
                v50 = SBRectContainsPoint();
                if ((v50 & 1) == 0)
                {
                  v67 = SBLogSystemGestureAppSwitcher(v50);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                  {
                    v97.x = v36;
                    v97.y = v38;
                    v68 = NSStringFromCGPoint(v97);
                    v69 = NSStringFromCGRect(v72);
                    NSStringFromCGRect(v73);
                    v70 = v75 = anyObject;
                    *buf = 138412802;
                    v90 = v68;
                    v91 = 2112;
                    v92 = v69;
                    v93 = 2112;
                    v94 = v70;
                    _os_log_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer requiring failure of _windowMoveClientGateRelationshipGestureRecognizer: touch (%@) hit-tested to item container (%@) and was outside edge swipe hit test rect (%@)", buf, 0x20u);

                    anyObject = v75;
                    v39 = v80;

                    v26 = v88;
                  }

LABEL_22:
                  LOBYTE(v25) = 1;
LABEL_56:
                  presentFloatingDockIndirectPanGestureRecognizer = v82;
                  goto LABEL_12;
                }
              }
            }
          }
        }

        v51 = SBLogSystemGestureAppSwitcher(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v96.x = v36;
          v96.y = v38;
          v71 = NSStringFromCGPoint(v96);
          v52 = NSStringFromCGRect(v72);
          NSStringFromCGRect(v73);
          v53 = v74 = anyObject;
          *buf = 138412802;
          v90 = v71;
          v91 = 2112;
          v92 = v52;
          v93 = 2112;
          v94 = v53;
          _os_log_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer not requiring failure of _windowMoveClientGateRelationshipGestureRecognizer: touch (%@) hit-tested to item container (%@) but was inside edge swipe hit test rect (%@)", buf, 0x20u);

          anyObject = v74;
          v39 = v80;
        }
      }

      else
      {
        v51 = SBLogSystemGestureAppSwitcher(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer not requiring failure of _windowMoveClientGateRelationshipGestureRecognizer: did not hit-test to item container", buf, 2u);
        }
      }
    }

    else
    {
      edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
      v30 = edgePullGestureRecognizer2;
      v26 = v88;
      if (edgePullGestureRecognizer2 == gestureRecognizerCopy)
      {

        LOBYTE(v25) = 1;
        goto LABEL_12;
      }

      v82 = presentFloatingDockIndirectPanGestureRecognizer;
      edgePullGestureRecognizer3 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];

      if (edgePullGestureRecognizer3 == gestureRecognizerCopy)
      {
        goto LABEL_22;
      }
    }

    windowManagementContext2 = [WeakRetained windowManagementContext];
    LODWORD(v25) = [windowManagementContext2 isFlexibleWindowingEnabled];

    if (!v25)
    {
      goto LABEL_56;
    }

    if (liveWindowResizeGestureRecognizer == gestureRecognizerCopy)
    {
      _slideOverDisplayItem = [WeakRetained _slideOverDisplayItem];
      if (_slideOverDisplayItem && ([v26 view], v79 = objc_claimAutoreleasedReturnValue(), -[SBIndirectPanGestureRecognizer _activeEventOfType:](recognizerCopy, "_activeEventOfType:", 0), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "touchesForGestureRecognizer:", recognizerCopy), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "anyObject"), v60 = objc_claimAutoreleasedReturnValue(), v59, _UISystemGestureLocationForTouchInView(), -[SBFluidSwitcherGestureManager _hitTestStageItemContainerForUnpinGestureWithTouch:atGestureLocation:](self, "_hitTestStageItemContainerForUnpinGestureWithTouch:atGestureLocation:", v60), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "appLayout"), v62 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v62, "containsItem:", _slideOverDisplayItem), v62, v61, v60, v81, v79, v77))
      {
      }

      else
      {
        _isLiveResizeGestureWithinTopEdgeResizeRegionForTouch = [(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinTopEdgeResizeRegionForTouch];

        v56 = v85;
        v55 = v86;
        v57 = v83;
        if (!_isLiveResizeGestureWithinTopEdgeResizeRegionForTouch)
        {
LABEL_45:
          v64 = @"(unexpected gesture recognizer)";
          if (v57)
          {
            v64 = @"(Menu Bar presentation gesture recognizer)";
          }

          if (liveWindowResizeGestureRecognizer == gestureRecognizerCopy)
          {
            v64 = @"_liveWindowResizeGestureRecognizer";
          }

          if (v56)
          {
            v64 = @"(Cover Sheet presentation gesture recognizer)";
          }

          if (v55)
          {
            v64 = @"(some Control Center presentation gesture recognizer)";
          }

          v65 = v64;
          v66 = SBLogSystemGestureAppSwitcher(v65);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v90 = v65;
            _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer requiring failure of %{public}@", buf, 0xCu);
          }

          LOBYTE(v25) = 1;
          v26 = v88;
          goto LABEL_56;
        }
      }
    }

    else
    {
      v56 = v85;
      v55 = v86;
      v57 = v83;
      if ((v86 | v85 | v83))
      {
        goto LABEL_45;
      }
    }

    LOBYTE(v25) = 0;
    goto LABEL_56;
  }

  v23 = [(SBIndirectPanGestureRecognizer *)recognizerCopy _activeEventOfType:0];
  v25 = [v23 touchesForGestureRecognizer:recognizerCopy];
  anyObject2 = [v25 anyObject];

  LOBYTE(v25) = [anyObject2 type] == 0;
LABEL_11:
  v26 = v88;
LABEL_12:

  return v25 & 1;
}

- (void)_setUpScrunchGestureRecognizerIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];

  systemGestureManager = [windowScene systemGestureManager];
  if ([(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 2)
  {
    v5 = [SBFluidScrunchGestureRecognizer alloc];
    _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
    v7 = [(SBFluidScrunchGestureRecognizer *)v5 initWithTarget:self action:sel__handleScrunchGesture_ displayConfiguration:_fbsDisplayConfiguration];
    fluidScrunchGestureRecognizer = self->_fluidScrunchGestureRecognizer;
    self->_fluidScrunchGestureRecognizer = v7;

    [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setName:@"fluidScrunch"];
    [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setDelegate:self];
    [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setAllowedTouchTypes:&unk_28336ED60];
    [systemGestureManager addGestureRecognizer:self->_fluidScrunchGestureRecognizer withType:12];
  }
}

- (void)_updateFluidDragAndDropManagerPresenceForWindowManagementContext:(id)context
{
  baseStyle = [context baseStyle];
  fluidDragAndDropManager = self->_fluidDragAndDropManager;
  if (!baseStyle || fluidDragAndDropManager)
  {
    if (baseStyle || !fluidDragAndDropManager)
    {
      return;
    }

    self->_fluidDragAndDropManager = 0;
  }

  else
  {
    v6 = [SBFluidSwitcherDragAndDropManager alloc];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v7 = [(SBFluidSwitcherDragAndDropManager *)v6 initWithSwitcherController:WeakRetained delegate:self];
    v8 = self->_fluidDragAndDropManager;
    self->_fluidDragAndDropManager = v7;

    fluidDragAndDropManager = WeakRetained;
  }
}

- (void)_updateIndirectBottomEdgePanGesturePresence
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];

  areTrackpadSwitcherGesturesEnabled = [(SBAppSwitcherDefaults *)self->_appSwitcherDefaults areTrackpadSwitcherGesturesEnabled];
  indirectBottomEdgePanGestureRecognizer = self->_indirectBottomEdgePanGestureRecognizer;
  if (areTrackpadSwitcherGesturesEnabled)
  {
    if (!indirectBottomEdgePanGestureRecognizer)
    {
      v7 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_ edges:4];
      v8 = self->_indirectBottomEdgePanGestureRecognizer;
      self->_indirectBottomEdgePanGestureRecognizer = v7;

      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setName:@"indirectHomePanGestureRecognizer"];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setShouldInvertYAxis:1];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setDelegate:self];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setHysteresis:0 forInputType:10.0];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setHysteresis:1 forInputType:10.0];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setTranslationAdjustmentBlock:&__block_literal_global_401];
      [systemGestureManager addGestureRecognizer:self->_indirectBottomEdgePanGestureRecognizer withType:35];
    }
  }

  else if (indirectBottomEdgePanGestureRecognizer)
  {
    [systemGestureManager removeGestureRecognizer:?];
    [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setDelegate:0];
    v9 = self->_indirectBottomEdgePanGestureRecognizer;
    self->_indirectBottomEdgePanGestureRecognizer = 0;
  }
}

double __76__SBFluidSwitcherGestureManager__updateIndirectBottomEdgePanGesturePresence__block_invoke(double result, double a2, double a3, double a4)
{
  v4 = a2 - fabs(result);
  if (a4 == 0.0 && v4 < 0.0)
  {
    return *MEMORY[0x277CBF348];
  }

  return result;
}

- (void)_updateFloatingApplicationGestureRecognizerPresenceForWindowManagementContext:(id)context
{
  baseStyle = [context baseStyle];
  unpinSplitViewApplicationGestureRecognizer = self->_unpinSplitViewApplicationGestureRecognizer;
  if (!baseStyle || unpinSplitViewApplicationGestureRecognizer)
  {
    if (!baseStyle && unpinSplitViewApplicationGestureRecognizer)
    {

      [(SBFluidSwitcherGestureManager *)self _tearDownFloatingApplicationGestureRecognizers];
    }
  }

  else
  {

    [(SBFluidSwitcherGestureManager *)self _setUpFloatingApplicationGestureRecognizers];
  }
}

- (void)_setUpFloatingApplicationGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  v4 = objc_loadWeakRetained(&self->_switcherContentController);
  systemGestureManager = [windowScene systemGestureManager];
  v6 = [SBGrabberTongue alloc];
  v7 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  v9 = [(SBGrabberTongue *)v6 initWithDelegate:self edge:v8 type:19 windowScene:windowScene];
  rightEdgeFloatingAppGrabberTongue = self->_rightEdgeFloatingAppGrabberTongue;
  self->_rightEdgeFloatingAppGrabberTongue = v9;

  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue setName:@"RightEdgeFloatingAppGrabberTongue"];
  v11 = self->_rightEdgeFloatingAppGrabberTongue;
  view = [v4 view];
  [(SBGrabberTongue *)v11 installInView:view withColorStyle:0];

  v13 = [SBGrabberTongue alloc];
  if ([*v7 userInterfaceLayoutDirection] == 1)
  {
    v14 = 8;
  }

  else
  {
    v14 = 2;
  }

  v15 = [(SBGrabberTongue *)v13 initWithDelegate:self edge:v14 type:20 windowScene:windowScene];
  leftEdgeFloatingAppGrabberTongue = self->_leftEdgeFloatingAppGrabberTongue;
  self->_leftEdgeFloatingAppGrabberTongue = v15;

  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue setName:@"LeftEdgeFloatingAppGrabberTongue"];
  v17 = self->_leftEdgeFloatingAppGrabberTongue;
  view2 = [v4 view];
  [(SBGrabberTongue *)v17 installInView:view2 withColorStyle:0];

  v19 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setName:@"_swipeUpFloatingAppGestureRecognizer"];
  swipeUpFloatingAppGestureRecognizer = self->_swipeUpFloatingAppGestureRecognizer;
  self->_swipeUpFloatingAppGestureRecognizer = v19;
  v21 = v19;

  [systemGestureManager addGestureRecognizer:self->_swipeUpFloatingAppGestureRecognizer withType:26];
  v22 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setName:@"_moveFloatingApplicationGestureRecognizer"];
  [(SBPanSystemGestureRecognizer *)v22 setFailsPastMaximumPressDurationWithoutHysteresis:1];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setMaximumNumberOfTouches:1];
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v22 setMaximumPressDuration:?];
  moveFloatingApplicationGestureRecognizer = self->_moveFloatingApplicationGestureRecognizer;
  self->_moveFloatingApplicationGestureRecognizer = v22;
  v24 = v22;

  [systemGestureManager addGestureRecognizer:self->_moveFloatingApplicationGestureRecognizer withType:23];
  v25 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleWindowDragGestureRecognizer_];
  pinFloatingApplicationGestureRecognizer = self->_pinFloatingApplicationGestureRecognizer;
  self->_pinFloatingApplicationGestureRecognizer = v25;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer _setHysteresis:10.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setMaximumNumberOfTouches:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setName:@"_pinFloatingApplicationGestureRecognizer"];
  [systemGestureManager addGestureRecognizer:self->_pinFloatingApplicationGestureRecognizer withType:24];
  v27 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleWindowDragGestureRecognizer_];
  unpinSplitViewApplicationGestureRecognizer = self->_unpinSplitViewApplicationGestureRecognizer;
  self->_unpinSplitViewApplicationGestureRecognizer = v27;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer _setHysteresis:10.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setMaximumNumberOfTouches:1];
  v29 = self->_unpinSplitViewApplicationGestureRecognizer;
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v29 setMaximumPressDuration:?];
  [(SBPanSystemGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setName:@"_unpinSplitViewApplicationGestureRecognizer"];
  [systemGestureManager addGestureRecognizer:self->_unpinSplitViewApplicationGestureRecognizer withType:18];
  v30 = _os_feature_enabled_impl();
  v31 = [(SBPanSystemGestureRecognizer *)[SBSplitViewResizePanSystemGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  sceneResizePanGestureRecognizer = self->_sceneResizePanGestureRecognizer;
  self->_sceneResizePanGestureRecognizer = v31;

  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer _setHysteresis:10.0];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setAllowedTouchTypes:&unk_28336ED78];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer sbf_setPencilTouchesAllowed:v30];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setDelegate:self];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setMaximumNumberOfTouches:1];
  v33 = self->_sceneResizePanGestureRecognizer;
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v33 setMaximumPressDuration:?];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setName:@"_sceneResizePanGestureRecognizer"];
  [systemGestureManager addGestureRecognizer:self->_sceneResizePanGestureRecognizer withType:16];
  v34 = [[SBFluidScrunchGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  indirectFloatingAppScrunchGestureRecognizer = self->_indirectFloatingAppScrunchGestureRecognizer;
  self->_indirectFloatingAppScrunchGestureRecognizer = v34;

  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setName:@"floatingApplicationScrunchGestureRecognizer"];
  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setDelegate:self];
  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setAllowedTouchTypes:&unk_28336ED90];
  [systemGestureManager addGestureRecognizer:self->_indirectFloatingAppScrunchGestureRecognizer withType:13];
  v36 = [(SBIndirectPanGestureRecognizer *)[SBFluidSwitcherIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_ edges:10];
  indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;
  self->_indirectDismissFloatingApplicationGestureRecognizer = v36;

  [(SBFluidSwitcherIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setName:@"indirectDismissFloatingApplicationGestureRecognizer"];
  [(SBFluidSwitcherIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setDelegate:self];
  [(SBIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
  [(SBIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setShouldActivateWithThresholdForTrackpad:1];
  v38 = self->_indirectDismissFloatingApplicationGestureRecognizer;
  [(SBIndirectPanGestureSettings *)self->_indirectPanGestureSettings trackpadHysteresis];
  [(SBIndirectPanGestureRecognizer *)v38 setHysteresis:0 forInputType:?];
  v39 = self->_indirectDismissFloatingApplicationGestureRecognizer;
  [(SBIndirectPanGestureSettings *)self->_indirectPanGestureSettings mouseHysteresis];
  [(SBIndirectPanGestureRecognizer *)v39 setHysteresis:1 forInputType:?];
  v40 = self->_indirectDismissFloatingApplicationGestureRecognizer;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __76__SBFluidSwitcherGestureManager__setUpFloatingApplicationGestureRecognizers__block_invoke;
  v53[3] = &unk_2783B7868;
  v53[4] = self;
  [(SBIndirectPanGestureRecognizer *)v40 setTranslationAdjustmentBlock:v53];
  [systemGestureManager addGestureRecognizer:self->_indirectDismissFloatingApplicationGestureRecognizer withType:38];
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [edgePullGestureRecognizer requireGestureRecognizerToFail:self->_swipeUpFloatingAppGestureRecognizer];

  edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:123 shouldBeRequiredToFailByGestureRecognizer:edgePullGestureRecognizer2];

  edgePullGestureRecognizer3 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:122 shouldBeRequiredToFailByGestureRecognizer:edgePullGestureRecognizer3];

  edgePullGestureRecognizer4 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:108 shouldBeRequiredToFailByGestureRecognizer:edgePullGestureRecognizer4];

  edgePullGestureRecognizer5 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:107 shouldBeRequiredToFailByGestureRecognizer:edgePullGestureRecognizer5];

  v46 = self->_moveFloatingApplicationGestureRecognizer;
  edgePullGestureRecognizer6 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)v46 requireGestureRecognizerToFail:edgePullGestureRecognizer6];

  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer requireGestureRecognizerToFail:self->_swipeUpFloatingAppGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer requireGestureRecognizerToFail:self->_pinFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer requireGestureRecognizerToFail:self->_unpinSplitViewApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer requireGestureRecognizerToFail:self->_pinFloatingApplicationGestureRecognizer];
  v48 = self->_unpinSplitViewApplicationGestureRecognizer;
  edgePullGestureRecognizer7 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)v48 requireGestureRecognizerToFail:edgePullGestureRecognizer7];

  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer requireGestureRecognizerToFail:self->_sceneResizePanGestureRecognizer];
  [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer requireGestureRecognizerToFail:self->_indirectFloatingAppScrunchGestureRecognizer];
  scrollView = [v4 scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];

  [panGestureRecognizer _setRequiresSystemGesturesToFail:1];
  [panGestureRecognizer requireGestureRecognizerToFail:self->_unpinSplitViewApplicationGestureRecognizer];
}

double __76__SBFluidSwitcherGestureManager__setUpFloatingApplicationGestureRecognizers__block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = fabs(a3);
  [*(*(a1 + 32) + 88) orthogonalTranslationAdjustmentFactor];
  return a2 - v4 * v5;
}

- (void)_tearDownFloatingApplicationGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue uninstall];
  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue invalidate];
  rightEdgeFloatingAppGrabberTongue = self->_rightEdgeFloatingAppGrabberTongue;
  self->_rightEdgeFloatingAppGrabberTongue = 0;

  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue uninstall];
  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue invalidate];
  leftEdgeFloatingAppGrabberTongue = self->_leftEdgeFloatingAppGrabberTongue;
  self->_leftEdgeFloatingAppGrabberTongue = 0;

  [systemGestureManager removeGestureRecognizer:self->_swipeUpFloatingAppGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_swipeUpFloatingAppGestureRecognizer setDelegate:0];
  swipeUpFloatingAppGestureRecognizer = self->_swipeUpFloatingAppGestureRecognizer;
  self->_swipeUpFloatingAppGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_moveFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer setDelegate:0];
  moveFloatingApplicationGestureRecognizer = self->_moveFloatingApplicationGestureRecognizer;
  self->_moveFloatingApplicationGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_pinFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setDelegate:0];
  pinFloatingApplicationGestureRecognizer = self->_pinFloatingApplicationGestureRecognizer;
  self->_pinFloatingApplicationGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_unpinSplitViewApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setDelegate:0];
  unpinSplitViewApplicationGestureRecognizer = self->_unpinSplitViewApplicationGestureRecognizer;
  self->_unpinSplitViewApplicationGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_sceneResizePanGestureRecognizer];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setDelegate:0];
  sceneResizePanGestureRecognizer = self->_sceneResizePanGestureRecognizer;
  self->_sceneResizePanGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_indirectFloatingAppScrunchGestureRecognizer];
  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setDelegate:0];
  indirectFloatingAppScrunchGestureRecognizer = self->_indirectFloatingAppScrunchGestureRecognizer;
  self->_indirectFloatingAppScrunchGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_indirectDismissFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setDelegate:0];
  indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;
  self->_indirectDismissFloatingApplicationGestureRecognizer = 0;
}

- (void)_updateChamoisGestureRecognizerPresenceForWindowManagementContext:(id)context
{
  isChamoisOrFlexibleWindowing = [context isChamoisOrFlexibleWindowing];
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  if (!isChamoisOrFlexibleWindowing || liveWindowResizeGestureRecognizer)
  {
    if (liveWindowResizeGestureRecognizer)
    {
      v6 = isChamoisOrFlexibleWindowing;
    }

    else
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {

      [(SBFluidSwitcherGestureManager *)self _tearDownChamoisGestureRecognizers];
    }
  }

  else
  {

    [(SBFluidSwitcherGestureManager *)self _setUpChamoisGestureRecognizers];
  }
}

- (void)_setUpChamoisGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v6 = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  self->_liveWindowResizeGestureRecognizer = v7;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer _setHysteresis:0.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setMaximumNumberOfTouches:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setName:@"_liveWindowResizeGestureRecognizer"];
  v9 = self->_liveWindowResizeGestureRecognizer;
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v9 setMaximumPressDuration:?];
  [systemGestureManager addGestureRecognizer:self->_liveWindowResizeGestureRecognizer withType:31];
  v10 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__handleHoverGesture_];
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  self->_hoverGestureRecognizer = v10;

  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setCancelsTouchesInView:0];
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:self->_hoverGestureRecognizer withType:47];
  _continuousExposeStripEdge = [(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge];
  v13 = [[SBGrabberTongue alloc] initWithDelegate:self edge:_continuousExposeStripEdge type:51 windowScene:windowScene];
  continuousExposeStripRevealGrabberTongue = self->_continuousExposeStripRevealGrabberTongue;
  self->_continuousExposeStripRevealGrabberTongue = v13;

  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue setName:@"ContinuousExposeStripRevealGrabberTongue"];
  v15 = self->_continuousExposeStripRevealGrabberTongue;
  view = [v6 view];
  [(SBGrabberTongue *)v15 installInView:view withColorStyle:0];

  v17 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_ edges:_continuousExposeStripEdge];
  indirectContinuousExposeStripOverflowGestureRecognizer = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  self->_indirectContinuousExposeStripOverflowGestureRecognizer = v17;

  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setPausedUntilTouchedUpOrMovedAwayFromEdge:1];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setName:@"_indirectContinuousExposeStripOverflowGestureRecognizer"];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setDelegate:self];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setHysteresis:0 forInputType:30.0];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setHysteresis:1 forInputType:10.0];
  objc_initWeak(&location, v6);
  v19 = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __64__SBFluidSwitcherGestureManager__setUpChamoisGestureRecognizers__block_invoke;
  v35 = &unk_2783C1F08;
  objc_copyWeak(&v36, &location);
  [(SBIndirectPanGestureRecognizer *)v19 setTranslationAdjustmentBlock:&v32];
  v20 = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  v21 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue indirectEdgePullGestureRecognizer:v32];
  [(SBIndirectPanGestureRecognizer *)v20 requireGestureRecognizerToFail:v21];

  [systemGestureManager addGestureRecognizer:self->_indirectContinuousExposeStripOverflowGestureRecognizer withType:49];
  v22 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  dragContinuousExposeStripOverflowGestureRecognizer = self->_dragContinuousExposeStripOverflowGestureRecognizer;
  self->_dragContinuousExposeStripOverflowGestureRecognizer = v22;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setSwitcherViewController:v6];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer _setHysteresis:10.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setMaximumNumberOfTouches:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setName:@"_dragContinuousExposeStripOverflowGestureRecognizer"];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer requireGestureRecognizerToFail:self->_liveWindowResizeGestureRecognizer];
  [systemGestureManager addGestureRecognizer:self->_dragContinuousExposeStripOverflowGestureRecognizer withType:50];
  v24 = [objc_alloc(MEMORY[0x277D76148]) initWithTarget:self action:sel__handleTapToBringItemContainerForward_];
  tapToBringItemContainerForwardGestureRecognizer = self->_tapToBringItemContainerForwardGestureRecognizer;
  self->_tapToBringItemContainerForwardGestureRecognizer = v24;

  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setDelegate:self];
  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setAllowedTouchTypes:&unk_28336EDA8];
  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setName:@"tapToBringItemContainerForwardGestureRecognizer"];
  [systemGestureManager addGestureRecognizer:self->_tapToBringItemContainerForwardGestureRecognizer withType:14];
  v26 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleClickDownToBringItemContainerForward_];
  clickDownToBringItemContainerForwardGestureRecognizer = self->_clickDownToBringItemContainerForwardGestureRecognizer;
  self->_clickDownToBringItemContainerForwardGestureRecognizer = v26;

  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setMinimumPressDuration:0.0];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setAllowedTouchTypes:&unk_28336EDC0];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setName:@"clickDownToBringItemContainerForwardGestureRecognizer"];
  [systemGestureManager addGestureRecognizer:self->_clickDownToBringItemContainerForwardGestureRecognizer withType:15];
  v28 = objc_alloc_init(SBFailingSystemGestureRecognizer);
  userClickInAppInteractionGestureRecognizer = self->_userClickInAppInteractionGestureRecognizer;
  self->_userClickInAppInteractionGestureRecognizer = v28;

  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer setAllowedTouchTypes:&unk_28336EDD8];
  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer setDelegate:self];
  [systemGestureManager addGestureRecognizer:self->_userClickInAppInteractionGestureRecognizer withType:52];
  v30 = [MEMORY[0x277D75E50] hostGestureRecognizerForFailureRelationshipsWithIdentifier:*MEMORY[0x277D77640]];
  windowMoveClientGateRelationshipGestureRecognizer = self->_windowMoveClientGateRelationshipGestureRecognizer;
  self->_windowMoveClientGateRelationshipGestureRecognizer = v30;

  [(UIGestureRecognizer *)self->_windowMoveClientGateRelationshipGestureRecognizer setAllowedTouchTypes:&unk_28336EDF0];
  [(UIGestureRecognizer *)self->_windowMoveClientGateRelationshipGestureRecognizer setName:@"_windowMoveClientGateRelationshipGestureRecognizer"];
  [systemGestureManager addGestureRecognizer:self->_windowMoveClientGateRelationshipGestureRecognizer withType:25];
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

double __64__SBFluidSwitcherGestureManager__setUpChamoisGestureRecognizers__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained view];
    [v11 bounds];
    v13 = v12;

    v14 = a2 - fabs(a3);
    if (a6 >= v13 * 0.5)
    {
      a2 = fmax(v14, 0.0);
    }

    else if (v14 <= 0.0)
    {
      a2 = v14;
    }

    else
    {
      a2 = 0.0;
    }
  }

  return a2;
}

- (void)_tearDownChamoisGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  [systemGestureManager removeGestureRecognizer:self->_liveWindowResizeGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setDelegate:0];
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  self->_liveWindowResizeGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_hoverGestureRecognizer];
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setDelegate:0];
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  self->_hoverGestureRecognizer = 0;

  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue uninstall];
  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue invalidate];
  continuousExposeStripRevealGrabberTongue = self->_continuousExposeStripRevealGrabberTongue;
  self->_continuousExposeStripRevealGrabberTongue = 0;

  [systemGestureManager removeGestureRecognizer:self->_indirectContinuousExposeStripOverflowGestureRecognizer];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setDelegate:0];
  indirectContinuousExposeStripOverflowGestureRecognizer = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  self->_indirectContinuousExposeStripOverflowGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_dragContinuousExposeStripOverflowGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setDelegate:0];
  dragContinuousExposeStripOverflowGestureRecognizer = self->_dragContinuousExposeStripOverflowGestureRecognizer;
  self->_dragContinuousExposeStripOverflowGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_tapToBringItemContainerForwardGestureRecognizer];
  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setDelegate:0];
  tapToBringItemContainerForwardGestureRecognizer = self->_tapToBringItemContainerForwardGestureRecognizer;
  self->_tapToBringItemContainerForwardGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_clickDownToBringItemContainerForwardGestureRecognizer];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setDelegate:0];
  clickDownToBringItemContainerForwardGestureRecognizer = self->_clickDownToBringItemContainerForwardGestureRecognizer;
  self->_clickDownToBringItemContainerForwardGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_userClickInAppInteractionGestureRecognizer];
  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer setDelegate:0];
  userClickInAppInteractionGestureRecognizer = self->_userClickInAppInteractionGestureRecognizer;
  self->_userClickInAppInteractionGestureRecognizer = 0;

  [systemGestureManager removeGestureRecognizer:self->_windowMoveClientGateRelationshipGestureRecognizer];
  windowMoveClientGateRelationshipGestureRecognizer = self->_windowMoveClientGateRelationshipGestureRecognizer;
  self->_windowMoveClientGateRelationshipGestureRecognizer = 0;
}

- (void)_updateDeckSwitcherInSwitcherGesturePresence
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  if ([(SBHomeGestureSettings *)self->_homeGestureSettings isHomeGestureEnabled]&& [(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 1)
  {
    if (self->_deckInSwitcherPanGestureRecognizer)
    {
      goto LABEL_8;
    }

    v3 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleDeckSwitcherPanGesture_];
    deckInSwitcherPanGestureRecognizer = self->_deckInSwitcherPanGestureRecognizer;
    self->_deckInSwitcherPanGestureRecognizer = v3;

    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer setName:@"deckInSwitcherPan"];
    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer setSwitcherViewController:WeakRetained];
    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer setDelegate:self];
    view = [WeakRetained view];
    [view addGestureRecognizer:self->_deckInSwitcherPanGestureRecognizer];

    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer _setRequiresSystemGesturesToFail:0];
    scrollView = [WeakRetained scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    [panGestureRecognizer requireGestureRecognizerToFail:self->_deckInSwitcherPanGestureRecognizer];
  }

  else
  {
    if (!self->_deckInSwitcherPanGestureRecognizer)
    {
      goto LABEL_8;
    }

    view2 = [WeakRetained view];
    [view2 removeGestureRecognizer:self->_deckInSwitcherPanGestureRecognizer];

    scrollView = self->_deckInSwitcherPanGestureRecognizer;
    self->_deckInSwitcherPanGestureRecognizer = 0;
  }

LABEL_8:
}

- (void)_updateSwitcherBottomEdgeGesturePresence
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v3 = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [v3 windowScene];

  systemGestureManager = [windowScene systemGestureManager];
  isHomeGestureEnabled = [(SBHomeGestureSettings *)self->_homeGestureSettings isHomeGestureEnabled];
  deckGrabberTongue = self->_deckGrabberTongue;
  if (isHomeGestureEnabled)
  {
    if (!deckGrabberTongue)
    {
      self->_usesHomeAffordanceRulesForGrabberTongue = SBFEffectiveHomeButtonType() == 2;
      v8 = [[SBGrabberTongue alloc] initWithDelegate:self edge:4 type:39 windowScene:windowScene];
      v9 = self->_deckGrabberTongue;
      self->_deckGrabberTongue = v8;

      [(SBGrabberTongue *)self->_deckGrabberTongue setName:@"DeckGrabberTongue"];
      v10 = self->_deckGrabberTongue;
      view = [WeakRetained view];
      [(SBGrabberTongue *)v10 installInView:view withColorStyle:0];

      v12 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleClickAndDragHomeGesture_];
      clickAndDragHomeGestureRecognizer = self->_clickAndDragHomeGestureRecognizer;
      self->_clickAndDragHomeGestureRecognizer = v12;

      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setSwitcherViewController:WeakRetained];
      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setInstalledAsSystemGesture:1];
      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setDelegate:self];
      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setAllowedTouchTypes:&unk_28336EE08];
      [systemGestureManager addGestureRecognizer:self->_clickAndDragHomeGestureRecognizer withType:42];
    }
  }

  else
  {
    if (deckGrabberTongue)
    {
      [(SBGrabberTongue *)deckGrabberTongue invalidate];
      v14 = self->_deckGrabberTongue;
      self->_deckGrabberTongue = 0;
    }

    if (self->_clickAndDragHomeGestureRecognizer)
    {
      [systemGestureManager removeGestureRecognizer:?];
      v15 = self->_clickAndDragHomeGestureRecognizer;
      self->_clickAndDragHomeGestureRecognizer = 0;
    }
  }
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  [view removeInteraction:self->_homeAffordanceInteraction];

  [(SBLayoutStateTransitionCoordinator *)self->_layoutStateTransitionCoordinator removeObserver:self];
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = 0;

  [(SBGrabberTongue *)self->_deckGrabberTongue invalidate];
  v6 = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [v6 windowScene];
  systemGestureManager = [windowScene systemGestureManager];

  [systemGestureManager removeGestureRecognizer:self->_fluidScrunchGestureRecognizer];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76478] object:0];

  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue invalidate];
  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue invalidate];
  [(SBGrabberTongue *)self->_deckGrabberTongue invalidate];
  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue invalidate];
  bannerManager = [SBApp bannerManager];
  [bannerManager removeTransitionObserver:self];
}

- (void)failMultitaskingGesturesForReason:(id)reason
{
  v8 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = SBLogSystemGesture(reasonCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Failing multitasking gestures for reason: %{public}@", &v6, 0xCu);
  }

  [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setEnabled:0];
  [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setEnabled:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setEnabled:0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setEnabled:1];
}

- (void)setActiveGestureTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (self->_activeGestureTransaction != transactionCopy)
  {
    objc_storeStrong(&self->_activeGestureTransaction, transaction);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_currentHomeGrabberViews;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [*(*(&v11 + 1) + 8 * v10++) updateStyle];
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)handleTransitionRequestForGestureComplete:(id)complete
{
  completeCopy = complete;
  appLayout = [completeCopy appLayout];
  v5 = +[SBAppLayout homeScreenAppLayout];
  v6 = [appLayout isEqual:v5];

  if (v6)
  {
    [(SBFluidSwitcherGestureManager *)self _clearSystemApertureZStackPolicyAssistantSuppression];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self->_activeGestureTransaction handleTransitionRequestForGestureComplete:completeCopy fromGestureManager:self];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  [(NSTimer *)self->_delayedHomeGrabberUpdateTimer invalidate];
  delayedHomeGrabberUpdateTimer = self->_delayedHomeGrabberUpdateTimer;
  self->_delayedHomeGrabberUpdateTimer = 0;

  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceInteraction];
  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceHitTestRects];
  [(SBFluidSwitcherGestureManager *)self _updateExclusionTrapezoidDebugView];
  toLayoutState = [contextCopy toLayoutState];
  elements = [toLayoutState elements];
  v8 = [elements count];

  if (v8 >= 2)
  {
    _UIInitializeDraggingSystem();
  }

  toLayoutState2 = [contextCopy toLayoutState];
  v10 = objc_opt_self();
  v11 = toLayoutState2;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [(SBFluidSwitcherGestureManager *)self _updateZStackPolicyAssistantsWithLayoutState:v13];
  [(SBFluidSwitcherGestureManager *)self _updateZStackParticipantWithReason:@"layout state transition did begin"];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  if (([contextCopy isInterrupted] & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = self->_currentHomeGrabberViews;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = *v29;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v28 + 1) + 8 * v12++) updateStyle];
        }

        while (v10 != v12);
        v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    if ([(SBFluidSwitcherGestureManager *)self _shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition])
    {
      objc_initWeak(&location, self);
      v13 = MEMORY[0x277CBEBB8];
      [(SBHomeGestureSettings *)self->_homeGestureSettings secondsToAllowMultipleEdges];
      v15 = v14;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __104__SBFluidSwitcherGestureManager_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
      v25 = &unk_2783AA438;
      objc_copyWeak(&v26, &location);
      v16 = [v13 scheduledTimerWithTimeInterval:0 repeats:&v22 block:v15];
      delayedHomeGrabberUpdateTimer = self->_delayedHomeGrabberUpdateTimer;
      self->_delayedHomeGrabberUpdateTimer = v16;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    v18 = objc_opt_self();
    v19 = toLayoutState;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [(SBFluidSwitcherGestureManager *)self _updateZStackPolicyAssistantsWithLayoutState:v21];
  }

  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceInteraction:v22];
  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceHitTestRects];
  [(SBFluidSwitcherGestureManager *)self _updateExclusionTrapezoidDebugView];
}

void __104__SBFluidSwitcherGestureManager_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentHomeGrabberViews];

  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateStyle];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCurrentHomeGrabberViews:(id)views
{
  v53 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  _isHomeAffordanceDoubleTapGestureEnabled = [(SBFluidSwitcherGestureManager *)self _isHomeAffordanceDoubleTapGestureEnabled];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = self->_currentHomeGrabberViews;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(viewsCopy) & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = viewsCopy;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v41 + 1) + 8 * j);
        if ((objc_msgSend_containsObject_(self->_currentHomeGrabberViews) & 1) == 0)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v16);
  }

  objc_storeStrong(&self->_currentHomeGrabberViews, views);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v37 + 1) + 8 * k);
        if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) == 0)
        {
          [(SBFluidSwitcherGestureManager *)self relinquishHiddenAssertionForHomeGrabber:v25];
          [(SBFluidSwitcherGestureManager *)self takeHiddenAssertionForHomeGrabber:v25];
        }

        [v25 setDelegate:0];
        [v25 setPointerClickDelegate:0];
        if (_isHomeAffordanceDoubleTapGestureEnabled)
        {
          [v25 removeObserver:self];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v22);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v33 + 1) + 8 * m);
        [v31 setDelegate:self];
        [v31 setPointerClickDelegate:self];
        if (_isHomeAffordanceDoubleTapGestureEnabled)
        {
          [v31 addObserver:self];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v28);
  }
}

- (void)_handleDeckSwitcherPanGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) < 3)
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureEnded:gestureCopy];
LABEL_8:
    v6 = gestureCopy;
    goto LABEL_9;
  }

  if (state == 2)
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureChanged:gestureCopy];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = gestureCopy;
  if (v5)
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureBegan:gestureCopy];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleSwitcherPanGestureBegan:(id)began
{
  beganCopy = began;
  v5 = SBLogSystemGestureAppSwitcher(beganCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFluidSwitcherGestureManager *)beganCopy _handleSwitcherPanGestureBegan:?];
  }

  kdebug_trace();
  v6 = +[SBReachabilityManager sharedInstance];
  reachabilityGestureRecognizer = [v6 reachabilityGestureRecognizer];

  [reachabilityGestureRecognizer setEnabled:0];
  [reachabilityGestureRecognizer setEnabled:1];
  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:beganCopy])
  {
    activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];

    if (activeGestureTransaction)
    {
      activeGestureTransaction2 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
      transitionRequest = [activeGestureTransaction2 transitionRequest];

      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      [WeakRetained _configureTransitionRequestForGestureBegin:transitionRequest];
    }
  }

  else
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherGestureBegan:beganCopy];
  }

  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:beganCopy])
  {
    activeGestureTransaction3 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    [activeGestureTransaction3 systemGestureStateChanged:beganCopy];
  }
}

- (void)_handleSwitcherPanGestureChanged:(id)changed
{
  changedCopy = changed;
  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:?])
  {
    activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    if (!self->_shouldRubberbandGrabberViewForReduceMotion)
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      self->_shouldRubberbandGrabberViewForReduceMotion = [WeakRetained shouldRubberbandFullScreenHomeGrabberView];
    }

    [activeGestureTransaction systemGestureStateChanged:changedCopy];
  }

  if (self->_shouldRubberbandGrabberViewForReduceMotion)
  {
    [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:5];
  }
}

- (void)_handleSwitcherPanGestureEnded:(id)ended
{
  endedCopy = ended;
  v5 = SBLogSystemGestureAppSwitcher(endedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFluidSwitcherGestureManager *)endedCopy _handleSwitcherPanGestureEnded:?];
  }

  if ([endedCopy state] == 3)
  {
    kdebug_trace();
  }

  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:endedCopy])
  {
    activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    [activeGestureTransaction systemGestureStateChanged:endedCopy];
  }

  else
  {
    if ([endedCopy state] == 4)
    {
      goto LABEL_10;
    }

    [endedCopy setEnabled:0];
    [endedCopy setEnabled:1];
    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SBFluidSwitcherGestureManager__handleSwitcherPanGestureEnded___block_invoke;
    v8[3] = &unk_2783AC3E8;
    v9 = endedCopy;
    [mEMORY[0x277D6A798] logBlock:v8];

    activeGestureTransaction = v9;
  }

LABEL_10:
  if (self->_shouldRubberbandGrabberViewForReduceMotion)
  {
    self->_shouldRubberbandGrabberViewForReduceMotion = 0;
    [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:5];
  }
}

id __64__SBFluidSwitcherGestureManager__handleSwitcherPanGestureEnded___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"[SBFluidSwitcherGestureManager _handleSwitcherPanGestureEnded:]";
  v9[0] = @"address";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v10[0] = v2;
  v9[1] = @"name";
  v3 = [*(a1 + 32) name];
  v4 = v3;
  v5 = &stru_283094718;
  if (v3)
  {
    v5 = v3;
  }

  v9[2] = @"failureReason";
  v10[1] = v5;
  v10[2] = @"GestureCancelledByOverlappingExistingTransaction";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v7;
}

- (void)_handleScrunchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 1)
  {
    if ([gestureCopy state] == 3)
    {
      kdebug_trace();
    }

    goto LABEL_7;
  }

  kdebug_trace();
  if ([gestureCopy recognizedTouchType])
  {
    goto LABEL_7;
  }

  if (self->_multitaskingGesturesRequireEducation)
  {
    v5 = @"requires education";
    goto LABEL_11;
  }

  if (!self->_multitaskingGesturesUserPreferenceIsOff)
  {
LABEL_7:
    [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:gestureCopy];
    goto LABEL_8;
  }

  v5 = @"user preference off";
LABEL_11:
  v6 = [(SBFluidSwitcherGestureManager *)self failMultitaskingGesturesForReason:v5];
  if (self->_multitaskingGesturesRequireEducation)
  {
    v7 = SBLogSystemGesture(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Suggesting education for multitasking gesture instead of actually performing it", v9, 2u);
    }

    productivityGestureEducationController = [SBApp productivityGestureEducationController];
    [productivityGestureEducationController gestureActivatedForType:6];
  }

LABEL_8:
}

- (void)_handleFloatingAppPresentGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [(SBFluidSwitcherGestureManager *)self _grabberTongueForGestureRecognizer:gestureCopy];
  [v5 dismissWithStyle:0 animated:1];
  [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:gestureCopy];
}

- (void)_handleTapToBringItemContainerForward:(id)forward
{
  v11 = *MEMORY[0x277D85DE8];
  forwardCopy = forward;
  v5 = SBLogSystemGestureAppSwitcher(forwardCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    tapWasCommandModified = [forwardCopy tapWasCommandModified];
    v7 = @"NO";
    if (tapWasCommandModified)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Tap was command modified:%@", &v9, 0xCu);
  }

  if (([forwardCopy tapWasCommandModified] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [WeakRetained handleTapToBringItemContainerForward:forwardCopy];
  }
}

- (void)_handleClickDownToBringItemContainerForward:(id)forward
{
  forwardCopy = forward;
  if ([forwardCopy state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [WeakRetained handleClickDownToBringItemContainerForward:forwardCopy];

    [forwardCopy setEnabled:0];
    [forwardCopy setEnabled:1];
  }
}

- (void)_handleHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained handleContinuousExposeHoverGesture:gestureCopy];
}

- (void)_handleContinuousExposeStripRevealGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [(SBFluidSwitcherGestureManager *)self _grabberTongueForGestureRecognizer:gestureCopy];
  [v5 dismissWithStyle:0 animated:1];
  [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:gestureCopy];
}

- (void)_handleWindowDragGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v7 = recognizerCopy;
  if (self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy)
  {
    clickDownToBringItemContainerForwardGestureRecognizer = self->_clickDownToBringItemContainerForwardGestureRecognizer;
    if (clickDownToBringItemContainerForwardGestureRecognizer)
    {
      isEnabled = [(UILongPressGestureRecognizer *)clickDownToBringItemContainerForwardGestureRecognizer isEnabled];
      [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setEnabled:0];
      [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setEnabled:isEnabled];
      recognizerCopy = v7;
    }
  }

  [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:recognizerCopy];
}

- (BOOL)_shouldSceneResizeGesture:(id)gesture receiveTouch:(id)touch
{
  touchCopy = touch;
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v11 = [(SBFluidSwitcherGestureManager *)self _shouldFlexibleWindowingSceneResizeGesture:gestureCopy receiveTouch:touchCopy];
  }

  else
  {
    v11 = [(SBFluidSwitcherGestureManager *)self _shouldMedusaSceneResizeGesture:gestureCopy receiveTouch:touchCopy];
  }

  v12 = v11;

  return v12;
}

- (BOOL)_shouldFlexibleWindowingSceneResizeGesture:(id)gesture receiveTouch:(id)touch
{
  v53 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  touchCopy = touch;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  _UISystemGestureLocationForTouchInView();
  v13 = v12;
  v15 = v14;

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      *(v48 + 24) = 0;
      v23 = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because the switcher doesn't own the home gesture.", buf, 2u);
      }

      goto LABEL_10;
    }
  }

  _currentUnlockedEnvironmentMode = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
  if (_currentUnlockedEnvironmentMode != 3)
  {
    *(v48 + 24) = 0;
    v23 = SBLogSystemGestureAppSwitcher(_currentUnlockedEnvironmentMode);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      _currentUnlockedEnvironmentMode2 = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
      *buf = 134217984;
      v52 = _currentUnlockedEnvironmentMode2;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because the switcher's unlocked environment mode is: %li", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_17;
  }

  allItems = [appLayout allItems];
  v20 = [allItems count] < 2;

  if (v20)
  {
    v22 = SBLogSystemGestureAppSwitcher(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because there are not multiple app scenes on stage.", buf, 2u);
    }

    *(v48 + 24) = 0;
  }

  else
  {
    visibleSplitViewHandleNubViews = [WeakRetained visibleSplitViewHandleNubViews];
    if ([visibleSplitViewHandleNubViews count])
    {
      +[SBSplitViewHandleNubView nubHitTestSize];
      SBRectWithSize();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __89__SBFluidSwitcherGestureManager__shouldFlexibleWindowingSceneResizeGesture_receiveTouch___block_invoke;
      v37[3] = &unk_2783C1F30;
      v41 = v26;
      v42 = v27;
      v43 = v28;
      v44 = v29;
      v40 = &v47;
      v45 = v13;
      v46 = v15;
      v38 = appLayout;
      selfCopy = self;
      [visibleSplitViewHandleNubViews enumerateKeysAndObjectsUsingBlock:v37];
    }
  }

LABEL_17:
  if (*(v48 + 24) == 1)
  {
    -[SBPanSystemGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:](self->_sceneResizePanGestureRecognizer, "setFailsPastMaximumPressDurationWithoutHysteresis:", [touchCopy _isPointerTouch] ^ 1);
  }

  else
  {
    v30 = MEMORY[0x277CCACA8];
    v54.x = v13;
    v54.y = v15;
    v31 = NSStringFromPoint(v54);
    v32 = [v30 stringWithFormat:@"didn't find an SBSplitViewHandleNubView at location %@", v31];

    v34 = SBLogSystemGestureAppSwitcher(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v32;
      _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because %@", buf, 0xCu);
    }
  }

  v35 = *(v48 + 24);

  _Block_object_dispose(&v47, 8);
  return v35 & 1;
}

void __89__SBFluidSwitcherGestureManager__shouldFlexibleWindowingSceneResizeGesture_receiveTouch___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 center];
  UIRectCenteredAboutPoint();
  *(*(*(a1 + 48) + 8) + 24) = CGRectContainsPoint(v18, *(a1 + 88));
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v8 = [v7 displayItems];
    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__SBFluidSwitcherGestureManager__shouldFlexibleWindowingSceneResizeGesture_receiveTouch___block_invoke_2;
    v16[3] = &unk_2783A8C90;
    v10 = v8;
    v17 = v10;
    v11 = [v9 appLayoutWithItemsPassingTest:v16];
    v12 = [v10 firstObject];
    v13 = [v11 itemForLayoutRole:1];
    v14 = [(SBDisplayItem *)v12 isEqualToItem:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [v11 flippedAppLayout];

      v11 = v15;
    }

    [*(*(a1 + 40) + 312) setSplitPairAppLayout:v11];
    *a4 = 1;
  }
}

- (BOOL)_shouldMedusaSceneResizeGesture:(id)gesture receiveTouch:(id)touch
{
  v50 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  gestureCopy = gesture;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  _UISystemGestureLocationForTouchInView();
  v12 = v11;
  v14 = v13;

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      v21 = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Preventing the switcher resize gesture because the switcher doesn't own the home gesture.";
        goto LABEL_18;
      }

LABEL_19:

      goto LABEL_20;
    }
  }

  _currentUnlockedEnvironmentMode = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
  if (_currentUnlockedEnvironmentMode != 3)
  {
    v23 = SBLogSystemGestureAppSwitcher(_currentUnlockedEnvironmentMode);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      _currentUnlockedEnvironmentMode2 = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because the switcher's unlocked environment mode is: %li", buf, 0xCu);
    }

    goto LABEL_9;
  }

  _currentLayoutState2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  isFloatingSwitcherVisible = [_currentLayoutState2 isFloatingSwitcherVisible];

  if (isFloatingSwitcherVisible)
  {
    v21 = SBLogSystemGestureAppSwitcher(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "Preventing the switcher resize gesture because the floating switcher is visible.";
LABEL_18:
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v24 = [_currentLayoutState layoutContainsRole:2];
  if ((v24 & 1) == 0)
  {
    v21 = SBLogSystemGestureAppSwitcher(v24);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "Preventing the switcher resize gesture because there isn't a side app.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  _hasActiveModalFloatingApplication = [(SBFluidSwitcherGestureManager *)self _hasActiveModalFloatingApplication];
  if (_hasActiveModalFloatingApplication)
  {
    v21 = SBLogSystemGestureAppSwitcher(_hasActiveModalFloatingApplication);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "Preventing the switcher resize gesture because there is an modal floating application presented.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  appLayout = [_currentLayoutState appLayout];
  v23 = [appLayout leafAppLayoutForRole:1];

  appLayout2 = [_currentLayoutState appLayout];
  v30 = [appLayout2 leafAppLayoutForRole:2];

  visibleItemContainers = [WeakRetained visibleItemContainers];
  v32 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v33 = v23;
  }

  else
  {
    v33 = v30;
  }

  v34 = [visibleItemContainers objectForKey:v33];

  visibleItemContainers2 = [WeakRetained visibleItemContainers];
  if ([*v32 userInterfaceLayoutDirection] == 1)
  {
    v36 = v30;
  }

  else
  {
    v36 = v23;
  }

  v37 = [visibleItemContainers2 objectForKey:v36];

  objc_msgSend_frame(v37);
  CGRectGetMaxX(v53);
  objc_msgSend_frame(v34);
  CGRectGetMinX(v54);
  +[SBSeparatorView nubHitTestSize];
  SBRectWithSize();
  switcherContentController = [(SBFluidSwitcherGestureManager *)self switcherContentController];
  [switcherContentController keyboardHeight];

  objc_msgSend_frame(v37);
  CGRectGetMaxX(v55);
  objc_msgSend_frame(v37);
  objc_msgSend_frame(v37);
  UIRectCenteredAboutPoint();
  v52.x = v12;
  v52.y = v14;
  if (!CGRectContainsPoint(v56, v52))
  {
    v42 = MEMORY[0x277CCACA8];
    v51.x = v12;
    v51.y = v14;
    v43 = NSStringFromPoint(v51);
    v44 = [v42 stringWithFormat:@"didn't find a SBSeparatorView at location %@", v43];

    v46 = SBLogSystemGestureAppSwitcher(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      _currentUnlockedEnvironmentMode2 = v44;
      _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![_currentLayoutState layoutContainsRole:3] || (objc_msgSend(WeakRetained, "_itemContainerAtLocation:environment:", 2, v12, v14), (v39 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![_currentLayoutState layoutContainsRole:4] || (objc_msgSend(WeakRetained, "_itemContainerAtLocation:environment:", 3, v12, v14), (v47 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      -[SBPanSystemGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:](self->_sceneResizePanGestureRecognizer, "setFailsPastMaximumPressDurationWithoutHysteresis:", [touchCopy _isPointerTouch] ^ 1);
      v26 = 1;
      goto LABEL_21;
    }

    v23 = v47;
    v40 = SBLogSystemGestureAppSwitcher(v47);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v41 = "Preventing the switcher resize gesture because the separator nub is occluded by a center window application.";
    goto LABEL_40;
  }

  v23 = v39;
  v40 = SBLogSystemGestureAppSwitcher(v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v41 = "Preventing the switcher resize gesture because the separator nub is occluded by a floating application.";
LABEL_40:
    _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
  }

LABEL_41:

LABEL_9:
LABEL_20:
  v26 = 0;
LABEL_21:

  return v26;
}

- (BOOL)_hasActiveModalFloatingApplication
{
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  if ([_currentLayoutState layoutContainsRole:3])
  {
    v3 = +[SBPlatformController sharedInstance];
    medusaCapabilities = [v3 medusaCapabilities];

    v5 = medusaCapabilities == 1 && SBSpaceConfigurationIsSplitView([_currentLayoutState spaceConfiguration]);
    v6 = [_currentLayoutState elementWithRole:1];
    v7 = v6;
    if (v6)
    {
      v5 |= ([v6 layoutAttributes] >> 1) & 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (id)dragAndDropManager:(id)manager displayItemForDraggingWindowWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self->_pinFloatingApplicationGestureRecognizer == recognizerCopy)
  {
    WeakRetained = [(SBFluidSwitcherGestureManager *)self _currentFloatingAppLayout];
    v13 = [WeakRetained itemForLayoutRole:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    view = [WeakRetained view];
    [(SBFluidSwitcherPanGestureRecognizer *)recognizerCopy locationInView:view];
    v9 = v8;
    v11 = v10;

    v12 = [WeakRetained _leafAppLayoutForItemContainerAtLocation:1 environment:{v9, v11}];
    v13 = [v12 itemForLayoutRole:1];
  }

  return v13;
}

- (id)dragAndDropManager:(id)manager sourceViewProviderForDraggingWindowWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = WeakRetained;
  if (self->_pinFloatingApplicationGestureRecognizer != recognizerCopy)
  {
    view = [WeakRetained view];
    [(SBFluidSwitcherPanGestureRecognizer *)recognizerCopy locationInView:view];
    v10 = v9;
    v12 = v11;

    _currentFloatingAppLayout = [v7 _leafAppLayoutForItemContainerAtLocation:1 environment:{v10, v12}];
LABEL_4:
    visibleItemContainers = [v7 visibleItemContainers];
    v15 = [visibleItemContainers objectForKey:_currentFloatingAppLayout];

    goto LABEL_5;
  }

  _currentFloatingAppLayout = [(SBFluidSwitcherGestureManager *)self _currentFloatingAppLayout];
  if (_currentFloatingAppLayout)
  {
    goto LABEL_4;
  }

  v15 = 0;
LABEL_5:

  return v15;
}

- (void)dragAndDropManager:(id)manager didBeginDraggingWindowWithSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBFluidSwitcherGestureManager *)self delegate];
  [delegate fluidSwitcherGestureManager:self didBeginDraggingWindowWithSceneIdentifier:identifierCopy];
}

- (void)dragAndDropManager:(id)manager didPlatterizeWindowDragWithSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBFluidSwitcherGestureManager *)self delegate];
  [delegate fluidSwitcherGestureManager:self didPlatterizeWindowDragWithSceneIdentifier:identifierCopy];
}

- (void)dragAndDropManager:(id)manager willEndDraggingWindowWithSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBFluidSwitcherGestureManager *)self delegate];
  [delegate fluidSwitcherGestureManager:self willEndDraggingWindowWithSceneIdentifier:identifierCopy];
}

- (void)dragAndDropManager:(id)manager didBeginGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(SBFluidSwitcherGestureManager *)self delegate];
  [delegate fluidSwitcherGestureManager:self didBeginGesture:gestureCopy];
}

- (void)dragAndDropManager:(id)manager didUpdateGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(SBFluidSwitcherGestureManager *)self delegate];
  [delegate fluidSwitcherGestureManager:self didUpdateGesture:gestureCopy];
}

- (void)dragAndDropManager:(id)manager didEndGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(SBFluidSwitcherGestureManager *)self delegate];
  [delegate fluidSwitcherGestureManager:self didEndGesture:gestureCopy];
}

- (void)_handleFluidGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:?])
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherGestureBegan:gestureCopy];
  }

  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:gestureCopy])
  {
    activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    [activeGestureTransaction systemGestureStateChanged:gestureCopy];
  }
}

- (void)_handleSwitcherGestureBegan:(id)began
{
  beganCopy = began;
  [(SBFluidSwitcherGestureManager *)self _hideGrabberAnimated:1];
  [(SBFluidSwitcherGestureManager *)self _startFluidSwitcherTransactionForGestureRecognizer:beganCopy];
}

- (void)_startFluidSwitcherTransactionForGestureRecognizer:(id)recognizer
{
  v29 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  if (![(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:recognizerCopy])
  {
    activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    v6 = SBLogSystemGestureAppSwitcher(activeGestureTransaction);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = SBSystemGestureRecognizerStateDescription([recognizerCopy state]);
      *buf = 138544130;
      v22 = v8;
      v23 = 2050;
      v24 = recognizerCopy;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = activeGestureTransaction;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Requesting fluid switcher gesture transaction for gesture recognizer: <%{public}@:%{public}p> (%{public}@), active gesture transaction:%{public}@", buf, 0x2Au);
    }

    if (activeGestureTransaction)
    {
      gestureRecognizer = [activeGestureTransaction gestureRecognizer];

      if (gestureRecognizer == recognizerCopy)
      {
        [activeGestureTransaction setShouldCancelGestureUponInterruption:0];
      }
    }

    mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
    [mEMORY[0x277D0AB20] cancelEventsWithName:@"SBFluidSwitcherGesture"];

    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [WeakRetained windowScene];
    _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];

    v15 = +[SBWorkspace mainWorkspace];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke;
    v19[3] = &unk_2783AAA48;
    v19[4] = self;
    v20 = recognizerCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_2;
    v16[3] = &unk_2783B3CF0;
    v17 = v20;
    selfCopy = self;
    [v15 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v19 validator:v16];
  }
}

void __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:11];
  [v3 setEventLabel:@"SBFluidSwitcherGesture"];
  [*(a1 + 32) _configureTransitionRequest:v3 forGestureBegin:*(a1 + 40)];
}

BOOL __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) state];
  v5 = v4 - 1;
  if ((v4 - 1) > 1)
  {
    v7 = v4;
    v8 = SBLogSystemGestureAppSwitcher(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v12 = SBSystemGestureRecognizerStateDescription(v7);
      *buf = 138543874;
      v18 = v10;
      v19 = 2050;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "No longer creating transaction for gesture recognizer since it has ended since the request was enqueued: <%{public}@:%{public}p> (%{public}@)", buf, 0x20u);
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_3;
    v15[3] = &unk_2783B40C0;
    v14 = *(a1 + 32);
    v6 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    [v3 setTransactionProvider:v15];
  }

  return v5 < 2;
}

id __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [*(a1 + 32) _fluidSwitcherGestureTransactionClassForGestureType:{objc_msgSend(v3, "_gestureTypeForGestureRecognizer:", v4)}];
  v7 = SBLogSystemGestureAppSwitcher(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromClass(v6);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 40);
    v12 = SBSystemGestureRecognizerStateDescription([v11 state]);
    v19 = 138544130;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    v23 = 2050;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Creating %{public}@ for gesture recognizer: <%{public}@:%{public}p> (%{public}@)", &v19, 0x2Au);
  }

  v13 = [v6 alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v15 = [v13 initWithTransitionRequest:v5 switcherController:WeakRetained delegate:*(a1 + 32)];

  [v15 setGestureRecognizer:*(a1 + 40)];
  v16 = [*(a1 + 32) switcherController];
  v17 = [v16 switcherCoordinator];
  [v17 setActiveGestureTransaction:v15];

  return v15;
}

- (void)_configureTransitionRequest:(id)request forGestureBegin:(id)begin
{
  requestCopy = request;
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained _configureTransitionRequestForGestureBegin:requestCopy];

  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  if (edgePullGestureRecognizer == beginCopy)
  {
    goto LABEL_8;
  }

  indirectEdgePullGestureRecognizer = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
  if (indirectEdgePullGestureRecognizer == beginCopy)
  {
LABEL_7:

LABEL_8:
LABEL_9:
    _firstFloatingAppLayout = [(SBFluidSwitcherGestureManager *)self _firstFloatingAppLayout];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SBFluidSwitcherGestureManager__configureTransitionRequest_forGestureBegin___block_invoke;
    v16[3] = &unk_2783A96A0;
    v17 = _firstFloatingAppLayout;
    selfCopy = self;
    v15 = _firstFloatingAppLayout;
    [requestCopy modifyApplicationContext:v16];

    goto LABEL_10;
  }

  edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  v12 = edgePullGestureRecognizer2;
  if (edgePullGestureRecognizer2 == beginCopy)
  {

    goto LABEL_7;
  }

  indirectEdgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (indirectEdgePullGestureRecognizer2 == beginCopy)
  {
    goto LABEL_9;
  }

LABEL_10:
}

void __77__SBFluidSwitcherGestureManager__configureTransitionRequest_forGestureBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v5 = [*(a1 + 32) itemForLayoutRole:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v7 = [v4 _entityForDisplayItem:v5 switcherController:WeakRetained];

  [v3 setEntity:v7 forLayoutRole:3];
}

- (void)fluidSwitcherGestureTransaction:(id)transaction didBeginGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureManager:self didBeginGesture:gestureCopy];
}

- (void)fluidSwitcherGestureTransaction:(id)transaction didUpdateGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureManager:self didUpdateGesture:gestureCopy];
}

- (void)fluidSwitcherGestureTransaction:(id)transaction didEndGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureManager:self didEndGesture:gestureCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v34 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  touchCopy = touch;
  zStackParticipant = self->_zStackParticipant;
  if (!zStackParticipant || (zStackParticipant = [zStackParticipant ownsHomeGesture], (zStackParticipant & 1) == 0))
  {
    v20 = SBLogSystemGestureAppSwitcher(zStackParticipant);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      Name = class_getName(v21);
      v23 = objc_opt_class();
      v26 = 136446978;
      v27 = Name;
      v28 = 2050;
      v29 = recognizerCopy;
      v30 = 2082;
      v31 = class_getName(v23);
      v32 = 2048;
      v33 = touchCopy;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Preventing <%{public}s: %{public}p> from receiving <%{public}s: %p> because the switcher does not own the home gesture.", &v26, 0x2Au);
    }

    goto LABEL_25;
  }

  if (self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy || self->_liveWindowResizeGestureRecognizer == recognizerCopy || self->_tapToBringItemContainerForwardGestureRecognizer == recognizerCopy || self->_clickDownToBringItemContainerForwardGestureRecognizer == recognizerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    view = [WeakRetained view];

    _UISystemGestureLocationForTouchInView();
    v12 = v11;
    v14 = v13;
    v15 = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [v15 windowScene];
    menuBarManager = [windowScene menuBarManager];
    v18 = [menuBarManager isPointInsideMenuBarContent:view fromCoordinateSpace:{v12, v14}];

    if (v18)
    {
LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  if (self->_deckInSwitcherPanGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldDeckInSwitcherPanGesture:recognizerCopy receiveTouch:touchCopy];
LABEL_40:
    v19 = v25;
    goto LABEL_26;
  }

  if (self->_swipeUpFloatingAppGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldFloatingApplicationSwipeUpGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_moveFloatingApplicationGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldFloatingApplicationMoveGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_pinFloatingApplicationGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldFloatingApplicationPinGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy)
  {
    v25 = [SBFluidSwitcherGestureManager _shouldSplitViewApplicationUnpinGesture:"_shouldSplitViewApplicationUnpinGesture:receiveTouch:" receiveTouch:?];
    goto LABEL_40;
  }

  if (self->_sceneResizePanGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldSceneResizeGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_indirectFloatingAppScrunchGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldIndirectFloatingAppScrunchGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_clickAndDragHomeGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldClickAndDragHomeGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_liveWindowResizeGestureRecognizer == recognizerCopy)
  {
    v25 = [SBFluidSwitcherGestureManager _shouldLiveResizeGesture:"_shouldLiveResizeGesture:receiveTouch:" receiveTouch:?];
    goto LABEL_40;
  }

  if (self->_tapToBringItemContainerForwardGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldTapToBringItemContainerForward:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_clickDownToBringItemContainerForwardGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldClickDownToBringItemContainerForward:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_dragContinuousExposeStripOverflowGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldContinuousExposeStripOverflowPanGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  if (self->_userClickInAppInteractionGestureRecognizer == recognizerCopy)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldUserClickInAppInteractionGesture:recognizerCopy receiveTouch:touchCopy];
    goto LABEL_40;
  }

  v19 = 1;
LABEL_26:

  return v19;
}

- (BOOL)_shouldDeckInSwitcherPanGesture:(id)gesture receiveTouch:(id)touch
{
  touchCopy = touch;
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  _UISystemGestureLocationForTouchInView();
  v11 = v10;
  v13 = v12;

  v14 = [WeakRetained _itemContainerAtLocation:1 environment:{v11, v13}];

  if (v14)
  {
    v16 = SBLogSystemGestureAppSwitcher(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Preventing the in switcher gesture because the touch is on top of an item container.", v18, 2u);
    }
  }

  return v14 == 0;
}

- (BOOL)_shouldFloatingApplicationSwipeUpGesture:(id)gesture receiveTouch:(id)touch
{
  touchCopy = touch;
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];

  _UISystemGestureLocationForTouchInView();
  v11 = v10;
  v13 = v12;

  [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sb_floatingApplicationDisplayEdgeInfo = [MEMORY[0x277D77750] sb_floatingApplicationDisplayEdgeInfo];
  v31.origin.x = v15;
  v31.origin.y = v17;
  v31.size.width = v19;
  v31.size.height = v21;
  MaxY = CGRectGetMaxY(v31);
  safeAreaInsetsPortrait = [sb_floatingApplicationDisplayEdgeInfo safeAreaInsetsPortrait];
  [safeAreaInsetsPortrait bottomInset];
  v26 = MaxY - v25;
  v27 = v13 > v26;

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  LOBYTE(safeAreaInsetsPortrait) = [_currentLayoutState isFloatingSwitcherVisible];

  if ((safeAreaInsetsPortrait & 1) == 0)
  {
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    if (v11 >= CGRectGetMinX(v32))
    {
      v33.origin.x = v15;
      v33.origin.y = v17;
      v33.size.width = v19;
      v33.size.height = v21;
      v29 = v11 < CGRectGetMaxX(v33);
      v27 = v13 > v26 && v29;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (BOOL)_shouldFloatingApplicationMoveGesture:(id)gesture receiveTouch:(id)touch
{
  gestureCopy = gesture;
  touchCopy = touch;
  if ([touchCopy _isPointerTouch])
  {
    v8 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    view = [WeakRetained view];

    _UISystemGestureLocationForTouchInView();
    [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    [touchCopy locationInView:0];
    v21 = v20;
    v23 = v22;
    v24 = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [v24 windowScene];

    systemGestureManager = [windowScene systemGestureManager];
    v27 = [systemGestureManager shouldSystemGestureReceiveTouchWithLocation:{v21, v23}];
    v28 = SBIsSystemGestureAllowed(windowScene, 23);
    v29 = [_currentLayoutState layoutContainsRole:3];
    v8 = 0;
    if (v27 && v28)
    {
      v30 = 0;
      if (v29)
      {
        +[SBNubView height];
        UIRectInset();
        v44 = v12;
        v43 = v16;
        UIRectInset();
        v32 = v31;
        v34 = v33;
        v41 = v35;
        v42 = v36;
        if (SBRectContainsPoint() && (SBRectContainsPoint() & 1) == 0)
        {
          floatingConfiguration = [_currentLayoutState floatingConfiguration];
          userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
          v39 = 1;
          if (userInterfaceLayoutDirection == 1)
          {
            v39 = 2;
          }

          if (floatingConfiguration == v39)
          {
            v45.origin.x = v41;
            v45.origin.y = v32;
            v45.size.width = v34;
            v45.size.height = v42;
            CGRectGetMaxX(v45);
          }

          v46.origin.x = v44;
          v46.origin.y = v14;
          v46.size.width = v43;
          v46.size.height = v18;
          CGRectGetMaxX(v46);
          if ((SBRectContainsPoint() & 1) != 0 || (SBRectContainsPoint() & 1) != 0 || SBRectContainsPoint())
          {
            v8 = 1;
            v30 = 1;
          }

          else
          {
            v30 = 0;
            v8 = 1;
          }
        }

        else
        {
          v8 = 0;
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    [(SBPanSystemGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:v30];
  }

  return v8;
}

- (BOOL)_shouldFloatingApplicationPinGesture:(id)gesture receiveTouch:(id)touch
{
  touchCopy = touch;
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];

  _UISystemGestureLocationForTouchInView();
  [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  [touchCopy locationInView:0];
  v20 = v19;
  v22 = v21;

  v23 = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [v23 windowScene];

  systemGestureManager = [windowScene systemGestureManager];
  v26 = [systemGestureManager shouldSystemGestureReceiveTouchWithLocation:{v20, v22}];
  v27 = SBIsSystemGestureAllowed(windowScene, 24);
  v28 = [_currentLayoutState layoutContainsRole:3];
  v29 = [(SBFluidSwitcherGestureManager *)self _isBannerOccludingRegionAtReferencePoint:v20, v22];
  v30 = 0;
  if (v26 && v27 && v28 && !v29)
  {
    v31 = +[SBMedusaDomain rootSettings];
    [v31 narrowEdgeSwipeHitTestWidth];

    +[SBNubView height];
    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    CGRectGetMidX(v33);
    v30 = SBRectContainsPoint();
  }

  return v30;
}

- (BOOL)_shouldSplitViewApplicationUnpinGesture:(id)gesture receiveTouch:(id)touch
{
  v106 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  touchCopy = touch;
  [touchCopy locationInView:0];
  if (![(SBFluidSwitcherGestureManager *)self _isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:[(SBFluidSwitcherGestureManager *)self _touchIsWithinUnstashRegionOnHomeScreen:touchCopy] withinUnstashLocationOnHomeScreen:v7, v8])
  {
    v23 = 0;
    goto LABEL_61;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v10 = objc_loadWeakRetained(&self->_switcherContentController);
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  view = [v10 view];
  _UISystemGestureLocationForTouchInView();
  v12 = v11;
  v14 = v13;
  windowManagementContext = [WeakRetained windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    visibleItemContainers = [v10 visibleItemContainers];
    allValues = [visibleItemContainers allValues];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke;
    v89[3] = &unk_2783C1F58;
    v19 = appLayout;
    v90 = v19;
    v91 = view;
    v92 = v12;
    v93 = v14;
    v20 = [allValues bs_firstObjectPassingTest:v89];

    if (v20)
    {
      appLayout2 = [v20 appLayout];
      if ([v19 containsAnyItemFromAppLayout:appLayout2])
      {
        _slideOverLeafAppLayout = 0;
      }

      else
      {
        v24 = [v10 adjustedAppLayoutForLeafAppLayout:appLayout2];
        if (v24)
        {
          v78 = v10;
          v25 = WeakRetained;
          _currentFlexibleWindowingAutoLayoutSpace = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
          isStripVisible = [_currentFlexibleWindowingAutoLayoutSpace isStripVisible];

          _slideOverLeafAppLayout = (isStripVisible & 1) != 0 ? 0 : v20;
          WeakRetained = v25;
          v10 = v78;
        }

        else
        {
          _slideOverLeafAppLayout = 0;
        }
      }
    }

    else
    {
      _slideOverLeafAppLayout = 0;
    }

    if (_slideOverLeafAppLayout)
    {
      goto LABEL_24;
    }
  }

  windowManagementContext2 = [WeakRetained windowManagementContext];
  if ([windowManagementContext2 isFlexibleWindowingEnabled])
  {
    _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
    if (_slideOverDisplayItem)
    {
      v30 = _slideOverDisplayItem;
      _slideOverDisplayItem2 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
      if (![appLayout containsItem:_slideOverDisplayItem2])
      {
        if ([(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinUnstashRegion:v12, v14])
        {
        }

        else
        {
          v63 = [(SBFluidSwitcherGestureManager *)self _touchIsWithinUnstashRegionOnHomeScreen:touchCopy];

          if (!v63)
          {
            goto LABEL_22;
          }
        }

        _slideOverLeafAppLayout = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
        [gestureCopy setInitialTouchLeafAppLayout:_slideOverLeafAppLayout];
        v62 = 1;
        goto LABEL_50;
      }
    }
  }

LABEL_22:
  _slideOverLeafAppLayout = [(SBFluidSwitcherGestureManager *)self _hitTestStageItemContainerForUnpinGestureWithTouch:touchCopy atGestureLocation:v12, v14];
  if (_slideOverLeafAppLayout && !self->_windowMoveClientGateRelationshipGestureRecognizer)
  {
    -[SBFluidSwitcherGestureManager _edgeSwipeHitTestRectForItemContainer:forPointerTouch:](self, "_edgeSwipeHitTestRectForItemContainer:forPointerTouch:", _slideOverLeafAppLayout, [touchCopy _isPointerTouch]);
    v62 = 0;
    v32 = 0;
    if (SBRectContainsPoint())
    {
      goto LABEL_25;
    }

LABEL_50:

    _slideOverLeafAppLayout = 0;
    v32 = v62;
    goto LABEL_25;
  }

LABEL_24:
  v32 = 0;
LABEL_25:
  windowManagementContext3 = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext3 isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing && !_slideOverLeafAppLayout)
  {
    visibleItemContainers2 = [v10 visibleItemContainers];
    allValues2 = [visibleItemContainers2 allValues];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke_2;
    v84[3] = &unk_2783C1F58;
    v85 = appLayout;
    v86 = view;
    v87 = v12;
    v88 = v14;
    _slideOverLeafAppLayout = [allValues2 bs_firstObjectPassingTest:v84];
  }

  if (_slideOverLeafAppLayout)
  {
    v77 = v32;
    v79 = v10;
    appLayout3 = [_slideOverLeafAppLayout appLayout];
    [gestureCopy setInitialTouchLeafAppLayout:appLayout3];

    _isPointerTouch = [touchCopy _isPointerTouch];
    windowManagementContext4 = [WeakRetained windowManagementContext];
    isChamoisOrFlexibleWindowing2 = [windowManagementContext4 isChamoisOrFlexibleWindowing];

    [(SBFluidSwitcherGestureManager *)self _edgeSwipeHitTestRectForItemContainer:_slideOverLeafAppLayout forPointerTouch:_isPointerTouch];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = SBRectContainsPoint();
    appLayout4 = [_slideOverLeafAppLayout appLayout];
    v52 = [appLayout isOrContainsAppLayout:appLayout4];

    if (_isPointerTouch & [(SBFluidSwitcherGestureManager *)self _isTouchLocationInWindowControlsFrame:v12, v14]& 1 | ((isChamoisOrFlexibleWindowing2 & v52 & (_isPointerTouch | v50) & 1) == 0))
    {
      v53 = 10.0;
    }

    else
    {
      v53 = 1.0;
    }

    [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer _setHysteresis:v53];
    v54 = 0;
    if (!isChamoisOrFlexibleWindowing2 || (_isPointerTouch & 1) != 0)
    {
      goto LABEL_54;
    }

    _slideOverDisplayItem3 = [WeakRetained _slideOverDisplayItem];
    if (_slideOverDisplayItem3)
    {
      v75 = WeakRetained;
      appLayout5 = [_slideOverLeafAppLayout appLayout];
      v57 = [appLayout5 containsItem:_slideOverDisplayItem3];

      if (!v57 || (*v95 = 0, memset(buf, 0, sizeof(buf)), objc_msgSend__currentSlideOverConfiguration(self), (v95[1] & 1) != 0))
      {
        v54 = 0;
        WeakRetained = v75;
LABEL_53:

LABEL_54:
        v58 = SBLogSystemGestureAppSwitcher([(SBPanSystemGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:v54]);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v109.x = v12;
          v109.y = v14;
          v64 = NSStringFromCGPoint(v109);
          [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:_slideOverLeafAppLayout forPointerTouch:_isPointerTouch & 1];
          v65 = NSStringFromCGRect(v110);
          v66 = NSStringFromBOOL();
          NSStringFromBOOL();
          v67 = v74 = touchCopy;
          v68 = NSStringFromBOOL();
          v69 = NSStringFromBOOL();
          v111.origin.x = v43;
          v111.origin.y = v45;
          v111.size.width = v47;
          v111.size.height = v49;
          v70 = NSStringFromCGRect(v111);
          NSStringFromBOOL();
          v71 = v76 = WeakRetained;
          *buf = 138414338;
          *&buf[4] = v64;
          *&buf[12] = 2112;
          *&buf[14] = v65;
          *&buf[22] = 2112;
          *&buf[24] = v66;
          *v95 = 2112;
          *&v95[2] = v67;
          v96 = 2112;
          v97 = v68;
          v98 = 2112;
          v99 = v69;
          v100 = 2112;
          v101 = v70;
          v102 = 2112;
          v103 = v71;
          v104 = 2048;
          v105 = v53;
          _os_log_impl(&dword_21ED4E000, v58, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer receiving touch (%@): hit-tested to item container (%@); isChamoisWindowingUIEnabled: %@; isSelectedAppLayoutOnStage: %@; isPointerTouch: %@; isTouchWithinEdgeSwipeHitTestRect: %@ (%@); isTouchLocationInWindowControlsFrame: %@; hysteresis: %f", buf, 0x5Cu);

          WeakRetained = v76;
          touchCopy = v74;
        }

        v10 = v79;
        LOBYTE(v32) = v77;
        goto LABEL_57;
      }

      WeakRetained = v75;
      if ((SBRectContainsPoint() & 1) == 0)
      {
        [(SBFluidSwitcherGestureManager *)self _innerLeftEdgeDragHitTestRectForItemContainer:_slideOverLeafAppLayout forPointerTouch:0];
        [(SBFluidSwitcherGestureManager *)self _innerRightEdgeDragHitTestRectForItemContainer:_slideOverLeafAppLayout forPointerTouch:0];
        v73 = (SBRectContainsPoint() & 1) != 0 || SBRectContainsPoint();
        [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:_slideOverLeafAppLayout forPointerTouch:1];
        v54 = v73 | SBRectContainsPoint() ^ 1;
        goto LABEL_53;
      }
    }

    v54 = 0;
    goto LABEL_53;
  }

  v58 = SBLogSystemGestureAppSwitcher(v35);
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v59)
    {
      v107.x = v12;
      v107.y = v14;
      v60 = NSStringFromCGPoint(v107);
      *buf = 138412290;
      *&buf[4] = v60;
      v61 = "_unpinSplitViewApplicationGestureRecognizer receiving touch (%@): hit-tested to slideover tongue region with a stashed slideover item";
LABEL_43:
      _os_log_impl(&dword_21ED4E000, v58, OS_LOG_TYPE_DEFAULT, v61, buf, 0xCu);
    }
  }

  else if (v59)
  {
    v108.x = v12;
    v108.y = v14;
    v60 = NSStringFromCGPoint(v108);
    *buf = 138412290;
    *&buf[4] = v60;
    v61 = "_unpinSplitViewApplicationGestureRecognizer not receiving touch (%@): did not hit-test to item container";
    goto LABEL_43;
  }

LABEL_57:

  if (_slideOverLeafAppLayout)
  {
    v23 = 1;
  }

  else
  {
    v23 = v32;
  }

LABEL_61:
  return v23;
}

BOOL __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 appLayout];
  v6 = [v5 itemForLayoutRole:1];
  v7 = [v4 layoutRoleForItem:v6];

  v10 = 0;
  if (!v7)
  {
    v8 = [*(a1 + 40) hitTest:0 withEvent:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 isDescendantOfView:v3];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

BOOL __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 appLayout];
  v6 = [v5 itemForLayoutRole:1];
  v7 = [v4 layoutRoleForItem:v6];

  v10 = 0;
  if (!v7)
  {
    v8 = [*(a1 + 40) hitTest:0 withEvent:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 isDescendantOfView:v3];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)_shouldIndirectFloatingAppScrunchGesture:(id)gesture receiveTouch:(id)touch
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  isFloatingSwitcherVisible = [_currentLayoutState isFloatingSwitcherVisible];

  if (isFloatingSwitcherVisible)
  {
    v17 = 1;
  }

  else
  {
    v18 = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [v18 windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    indirectTouchLifecycleMonitor = [systemGestureManager indirectTouchLifecycleMonitor];
    [indirectTouchLifecycleMonitor systemGestureHoverLocationInView:view];
    v23 = v22;
    v25 = v24;

    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    v27.x = v23;
    v27.y = v25;
    v17 = CGRectContainsPoint(v28, v27);
  }

  return v17;
}

- (BOOL)_shouldClickAndDragHomeGesture:(id)gesture receiveTouch:(id)touch
{
  v19 = *MEMORY[0x277D85DE8];
  if ([touch _isPointerTouch])
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [WeakRetained windowScene];
    systemPointerInteractionManager = [windowScene systemPointerInteractionManager];
    activePointerRegionView = [systemPointerInteractionManager activePointerRegionView];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_currentHomeGrabberViews;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if (*(*(&v14 + 1) + 8 * i) == activePointerRegionView)
          {
            LOBYTE(v10) = 1;
            goto LABEL_13;
          }
        }

        v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_shouldLiveResizeItemContainerGestureWithTouch:(id)touch receiveTouch:(id)receiveTouch allowedCorners:(unint64_t)corners requiresVisibleCorner:(BOOL)corner allowedEdges:(unint64_t)edges
{
  v78 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  receiveTouchCopy = receiveTouch;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v14 = objc_loadWeakRetained(&self->_switcherContentController);
  view = [v14 view];
  v55 = receiveTouchCopy;
  _UISystemGestureLocationForTouchInView();
  v17 = v16;
  v19 = v18;

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  v22 = +[SBApplicationController sharedInstance];
  LOBYTE(receiveTouchCopy) = [v22 _appLayoutContainsOnlyResizableApps:appLayout];

  if (receiveTouchCopy)
  {
    cornerCopy = corner;
    edgesCopy = edges;
    v24 = [v14 _itemContainerAtLocation:0 environment:{v17, v19}];
    [touchCopy initialTouchLeafAppLayout];
    v51 = v54 = WeakRetained;
    if (!v51 || ![appLayout containsAnyItemFromAppLayout:v51] || (objc_msgSend(v14, "visibleItemContainers"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKey:", v51), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26) || (v75 = v26, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v75, 1), v27 = objc_claimAutoreleasedReturnValue(), v26, !v27))
    {
      displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
      interfaceOrientation = [_currentLayoutState interfaceOrientation];
      if ((interfaceOrientation - 1) < 2)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2 * ((interfaceOrientation - 3) < 2);
      }

      v31 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:appLayout orientation:v30];

      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke;
      v72[3] = &unk_2783B9DC8;
      v73 = appLayout;
      v74 = v14;
      v32 = [v31 bs_compactMap:v72];
      v27 = v32;
      if (v24 && objc_msgSend_containsObject_(v32))
      {
        v33 = [v27 sb_arrayByInsertingOrMovingObject:v24 toIndex:0];

        v27 = v33;
      }

      WeakRetained = v54;
    }

    _slideOverDisplayItem = [WeakRetained _slideOverDisplayItem];
    if (_slideOverDisplayItem && (objc_msgSend__currentSlideOverConfiguration(self), (v71 & 1) == 0))
    {
      v34 = [(SBFluidSwitcherGestureManager *)self _hitTestStageItemContainerForUnpinGestureWithTouch:v55 atGestureLocation:v17, v19];
    }

    else
    {
      v34 = 0;
    }

    _currentFlexibleWindowingAutoLayoutSpace = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke_2;
    v56[3] = &unk_2783C1F80;
    v57 = v34;
    v58 = _currentFlexibleWindowingAutoLayoutSpace;
    v59 = v24;
    cornersCopy = corners;
    v70 = cornerCopy;
    v67 = v17;
    v68 = v19;
    v60 = appLayout;
    selfCopy = self;
    v62 = v54;
    v69 = edgesCopy;
    v37 = touchCopy;
    v63 = v37;
    v38 = v55;
    v64 = v38;
    v65 = v14;
    v53 = v24;
    v50 = _currentFlexibleWindowingAutoLayoutSpace;
    v48 = v34;
    v39 = [v27 bs_firstObjectPassingTest:v56];
    v40 = v39;
    v35 = v39 != 0;
    if (v39)
    {
      appLayout2 = [v39 appLayout];
      [v37 setInitialTouchLeafAppLayout:appLayout2];

      if (![v37 selectedEdge] || (objc_msgSend(v37, "hasEdgeResizeSeenTouchOutsideHittestedView") & 1) != 0 || (objc_msgSend(v38, "_isPointerTouch") & 1) != 0)
      {
        [v37 _setHysteresis:0.0];
        v42 = v37;
        v43 = 0;
      }

      else
      {
        [v37 _setHysteresis:10.0];
        v42 = v37;
        v43 = 1;
      }

      [v42 setFailsPastMaximumPressDurationWithoutHysteresis:v43];
    }

    else
    {
      v44 = SBLogSystemGestureAppSwitcher(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize touch gesture because no item container.", buf, 2u);
      }
    }

    WeakRetained = v54;
  }

  else
  {
    v27 = SBLogSystemGestureAppSwitcher(v23);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = appLayout;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize touch gesture because app layout doesn't contain only resizable apps. %@", buf, 0xCu);
    }

    v35 = 0;
  }

  return v35;
}

id __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) leafAppLayoutForItem:a2];
  v4 = [*(a1 + 40) visibleItemContainers];
  v5 = [v4 objectForKey:v3];

  return v5;
}

uint64_t __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 appLayout];
    v8 = [v7 itemForLayoutRole:1];

    v9 = [*(a1 + 40) flexibleAutoLayoutItemForDisplayItem:v8];
    v10 = v9;
    if (v9)
    {
      if (([v9 isFullyOccluded] & 1) == 0)
      {
        if (![v10 isOverlapped] || (v13 = *(a1 + 48)) == 0 || v13 == v4 || (v14 = *(a1 + 56), objc_msgSend(v13, "appLayout"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "containsAnyItemFromAppLayout:", v15), v15, (v14 & 1) == 0))
        {
          objc_msgSend_frame(v4);
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = *(a1 + 104) & [v4 allowedTouchResizeCorners];
          if (*(a1 + 136) == 1)
          {
            LOBYTE(v24) = [v4 visibleTouchResizeCorners] & v24;
          }

          SBRectWithSize();
          if ((v24 & 8) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v43, *(a1 + 112));
            if (v26)
            {
              v25 = 8;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
            v26 = 0;
          }

          if (!v26 && (v24 & 4) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v44, *(a1 + 112));
            v27 = 4;
            if (!v26)
            {
              v27 = 0;
            }

            v25 |= v27;
          }

          if (!v26 && (v24 & 2) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v45, *(a1 + 112));
            v28 = 2;
            if (!v26)
            {
              v28 = 0;
            }

            v25 |= v28;
          }

          if (!v26 && (v24 & 1) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v46, *(a1 + 112));
            v25 |= v26;
          }

          WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 16));
          v30 = [WeakRetained _isDisplayItemFullScreen:v8 preferredAttributes:0];

          v31 = [*(a1 + 72) _slideOverDisplayItem];
          v32 = BSEqualObjects();

          if (v26 || (v30 & 1) != 0 || (v32 & 1) != 0)
          {
            if (v26)
            {
LABEL_56:
              v36 = +[SBMainSwitcherControllerCoordinator sharedInstance];
              v37 = [v36 _entityForDisplayItem:v8 switcherController:*(a1 + 72)];

              v38 = [v37 deviceApplicationSceneEntity];
              v39 = [v38 sceneHandle];

              LOBYTE(v38) = [*(a1 + 96) isHintingResizeGrabberForDisplayItem:v8 corner:v25 inAppLayout:*(a1 + 56)];
              [v39 screenEdgesDeferringSystemGestures];
              v40 = UIRectCornersAtEdges();
              if ((v38 & 1) != 0 || (((~v40 & v25) == 0) & v30) != 1)
              {
                v11 = 1;
              }

              else
              {
                v41 = SBLogSystemGestureAppSwitcher(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *v42 = 0;
                  _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because of edge protect.", v42, 2u);
                }

                [*(a1 + 96) noteDidEdgeProtectResizeGrabberForDisplayItem:v8 inCorner:v25];
                v11 = 0;
              }

              goto LABEL_9;
            }
          }

          else
          {
            if ((*(a1 + 128) & 2) != 0 && ([*(a1 + 64) _touchLocationIsWithinUnstashRegion:{*(a1 + 112), *(a1 + 120)}] & 1) == 0)
            {
              v47.origin.x = v17 + -32.0;
              v47.size.width = 64.0;
              v47.origin.y = v19;
              v47.size.height = v23;
              if (CGRectContainsPoint(v47, *(a1 + 112)))
              {
                v33 = 2;
                goto LABEL_51;
              }
            }

            if ((*(a1 + 128) & 8) != 0 && ([*(a1 + 64) _touchLocationIsWithinUnstashRegion:{*(a1 + 112), *(a1 + 120)}] & 1) == 0)
            {
              v48.origin.x = v17 + v21 + -32.0;
              v48.size.width = 64.0;
              v48.origin.y = v19;
              v48.size.height = v23;
              if (CGRectContainsPoint(v48, *(a1 + 112)))
              {
                v33 = 8;
                goto LABEL_51;
              }
            }

            if ((*(a1 + 128) & 4) != 0)
            {
              v49.origin.y = v19 + v23 + -32.0;
              v49.size.height = 64.0;
              v49.origin.x = v17;
              v49.size.width = v21;
              if (CGRectContainsPoint(v49, *(a1 + 112)))
              {
                v33 = 4;
LABEL_51:
                [*(a1 + 80) setSelectedEdge:v33];
                if (([*(a1 + 80) hasEdgeResizeSeenTouchOutsideHittestedView] & 1) == 0)
                {
                  v34 = *(a1 + 80);
                  v50.origin.x = v17;
                  v50.origin.y = v19;
                  v50.size.width = v21;
                  v50.size.height = v23;
                  if (CGRectContainsPoint(v50, *(a1 + 112)))
                  {
                    v35 = [*(a1 + 88) _isPointerTouch];
                  }

                  else
                  {
                    v35 = 1;
                  }

                  [v34 setHasEdgeResizeSeenTouchOutsideHittestedView:v35];
                }

                goto LABEL_56;
              }
            }
          }
        }
      }
    }

    v11 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)_shouldLiveResizeItemContainerGestureWithPointer:(id)pointer receiveTouch:(id)touch
{
  v26 = *MEMORY[0x277D85DE8];
  if ([touch _isPointerTouch])
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    itemContainerToResizeUsingPointer = [WeakRetained itemContainerToResizeUsingPointer];
    v7 = itemContainerToResizeUsingPointer;
    if (!itemContainerToResizeUsingPointer)
    {
      appLayout = SBLogSystemGestureAppSwitcher(0);
      if (os_log_type_enabled(appLayout, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_21ED4E000, appLayout, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize pointer gesture because no item container.", &v22, 2u);
      }

      v17 = 0;
      goto LABEL_16;
    }

    appLayout = [itemContainerToResizeUsingPointer appLayout];
    v9 = [WeakRetained adjustedAppLayoutForLeafAppLayout:appLayout];
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    appLayout2 = [_currentLayoutState appLayout];
    v12 = [appLayout2 isOrContainsAppLayout:appLayout];

    if (v12)
    {
      v14 = +[SBApplicationController sharedInstance];
      v15 = [v14 _appLayoutContainsOnlyResizableApps:v9];

      if (v15)
      {
        v17 = 1;
LABEL_15:

LABEL_16:
        return v17;
      }

      v18 = SBLogSystemGestureAppSwitcher(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v9;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize pointer gesture because app layout doesn't contain only resizable apps. %@", &v22, 0xCu);
      }
    }

    else
    {
      v18 = SBLogSystemGestureAppSwitcher(v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        _currentLayoutState2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
        appLayout3 = [_currentLayoutState2 appLayout];
        v22 = 138412546;
        v23 = appLayout3;
        v24 = 2112;
        v25 = appLayout;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize pointer gesture because current layout state doesn't contain leaf app layout. %@ %@", &v22, 0x16u);
      }
    }

    v17 = 0;
    goto LABEL_15;
  }

  return 0;
}

- (BOOL)_shouldLiveResizeGesture:(id)gesture receiveTouch:(id)touch
{
  gestureCopy = gesture;
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  floatingDockController = [windowScene floatingDockController];
  screen = [windowScene screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  [touchCopy locationInView:0];
  v13 = [floatingDockController containsPoint:fixedCoordinateSpace fromCoordinateSpace:?];
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    v19 = SBLogSystemGestureAppSwitcher(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 0;
      v20 = "Preventing the switcher live resize gesture because neither Stage Manager nor Flexible Windowing was enabled.";
      v21 = &v55;
      goto LABEL_11;
    }

LABEL_12:

    v22 = 0;
    v23 = gestureCopy;
    goto LABEL_13;
  }

  [touchCopy locationInView:0];
  v17 = [systemGestureManager shouldSystemGestureReceiveTouchWithLocation:?];
  if ((v17 & 1) == 0)
  {
    v19 = SBLogSystemGestureAppSwitcher(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "Preventing the switcher live resize gesture because covered by keyboard or PiP.";
      v21 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v18 = [systemGestureManager isGestureWithTypeAllowed:31];
  if ((v18 & 1) == 0)
  {
    v25 = SBLogSystemGestureAppSwitcher(v18);
    v23 = gestureCopy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because not allowed.", v53, 2u);
    }

    goto LABEL_31;
  }

  if (v13)
  {
    v19 = SBLogSystemGestureAppSwitcher(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v52 = 0;
      v20 = "Preventing the switcher live resize gesture because touch is inside floating dock.";
      v21 = &v52;
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v26 = objc_loadWeakRetained(&self->_switcherContentController);
  itemContainerToResizeUsingPointer = [v26 itemContainerToResizeUsingPointer];
  if (!itemContainerToResizeUsingPointer)
  {
    view = [v26 view];
    v23 = gestureCopy;
    _UISystemGestureLocationInView();
    v30 = v29;
    v32 = v31;

    itemContainerToResizeUsingPointer = [v26 _itemContainerNearestLocation:1 environment:1 prioritizeForegroundedItemContainers:{v30, v32}];
    if (!itemContainerToResizeUsingPointer)
    {
      v42 = SBLogSystemGestureAppSwitcher(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because no item container.", v51, 2u);
      }

      goto LABEL_30;
    }
  }

  v46 = itemContainerToResizeUsingPointer;
  appLayout = [itemContainerToResizeUsingPointer appLayout];
  v47 = v26;
  v44 = [v26 adjustedAppLayoutForLeafAppLayout:appLayout];
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout2 = [_currentLayoutState appLayout];
  v45 = appLayout;
  LOBYTE(appLayout) = [appLayout2 isOrContainsAppLayout:appLayout];

  if ((appLayout & 1) == 0)
  {
    v38 = v44;
    v41 = SBLogSystemGestureAppSwitcher(v36);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because item container isn't on stage.", v50, 2u);
    }

    v26 = v47;
    v23 = gestureCopy;
    goto LABEL_29;
  }

  v37 = +[SBApplicationController sharedInstance];
  v38 = v44;
  v39 = [v37 _appLayoutContainsOnlyResizableApps:v44];

  if ((v39 & 1) == 0)
  {
    v41 = SBLogSystemGestureAppSwitcher(v40);
    v26 = v47;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because app layout contains non resizable items.", v49, 2u);
    }

    v23 = gestureCopy;
LABEL_29:

LABEL_30:
LABEL_31:
    v22 = 0;
    goto LABEL_13;
  }

  v23 = gestureCopy;
  if ([(SBFluidSwitcherGestureManager *)self _shouldLiveResizeItemContainerGestureWithPointer:gestureCopy receiveTouch:touchCopy])
  {
    v22 = 1;
  }

  else
  {
    if ([touchCopy _isPointerTouch])
    {
      v43 = 0;
    }

    else
    {
      v43 = 15;
    }

    v22 = [(SBFluidSwitcherGestureManager *)self _shouldLiveResizeItemContainerGestureWithTouch:gestureCopy receiveTouch:touchCopy allowedCorners:-1 requiresVisibleCorner:0 allowedEdges:v43];
  }

LABEL_13:

  return v22;
}

- (BOOL)_shouldClickDownToBringItemContainerForward:(id)forward receiveTouch:(id)touch
{
  forwardCopy = forward;
  v10 = [v7 _isPointerTouch] && (-[SBAppSwitcherSettings windowingSettings](self->_appSwitcherSettings, "windowingSettings"), v8 = v7 = touch;

  return v10;
}

- (BOOL)_shouldBringItemContainerForwardGesture:(id)gesture receiveTouch:(id)touch
{
  v88 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v9 = objc_loadWeakRetained(&self->_switcherContentController);
    [touchCopy locationInView:0];
    v11 = v10;
    v13 = v12;
    windowScene = [WeakRetained windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    v59 = [systemGestureManager shouldSystemGestureReceiveTouchWithLocation:{v11, v13}];

    view = [v9 view];
    _UISystemGestureLocationForTouchInView();
    v18 = v17;
    v20 = v19;

    v21 = [v9 _itemContainerAtLocation:1 environment:{v18, v20}];
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    appLayout = [v21 appLayout];
    v66 = [v9 adjustedAppLayoutForLeafAppLayout:appLayout];
    liveContentOverlays = [v9 liveContentOverlays];
    v67 = appLayout;
    v25 = [liveContentOverlays objectForKey:appLayout];

    v63 = v25;
    [v25 touchBehavior];
    appLayout2 = [v21 appLayout];
    v27 = [appLayout2 itemForLayoutRole:1];

    v62 = WeakRetained;
    displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
    appLayout3 = [_currentLayoutState appLayout];
    v65 = _currentLayoutState;
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v32 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemsInAppLayout:appLayout3 orientation:v31];
    firstObject = [v32 firstObject];

    v56 = [(NSHashTable *)self->_presentedSceneBackedBanners count];
    screen = [windowScene screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];

    floatingDockController = [windowScene floatingDockController];
    v58 = [floatingDockController containsPoint:fixedCoordinateSpace fromCoordinateSpace:{v11, v13}];
    v36 = [(SBFluidSwitcherGestureManager *)self _isTouchLocationInSplitViewGutter:v18, v20];
    v37 = [(SBFluidSwitcherGestureManager *)self _isTouchLocationInWindowControlsFrame:v18, v20];
    v55 = v37;
    v64 = v21;
    if (v21)
    {
      v37 = BSEqualObjects();
      LOBYTE(v21) = 0;
      v38 = v27;
      if ((v37 & 1) == 0 && ((v59 ^ 1) & 1) == 0)
      {
        v39 = fixedCoordinateSpace;
        appLayout4 = [v65 appLayout];
        if ([appLayout4 isOrContainsAppLayout:v67])
        {
          v41 = +[SBApplicationController sharedInstance];
          v42 = [v41 _appLayoutContainsOnlyResizableApps:v66] ^ 1;
          if (v56)
          {
            LOBYTE(v42) = 1;
          }

          LOBYTE(v21) = (v42 | v55 | v58 | v36) ^ 1;

          v38 = v27;
        }

        else
        {
          LOBYTE(v21) = 0;
        }

        fixedCoordinateSpace = v39;
      }
    }

    else
    {
      v38 = v27;
    }

    v43 = SBLogSystemGestureAppSwitcher(v37);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v52 = NSStringFromBOOL();
      v51 = NSStringFromBOOL();
      v44 = NSStringFromBOOL();
      succinctDescription = [v66 succinctDescription];
      [v67 succinctDescription];
      v21 = v53 = v21;
      NSStringFromBKSSceneHostTouchBehavior();
      v46 = v57 = fixedCoordinateSpace;
      NSStringFromBOOL();
      v47 = v54 = firstObject;
      NSStringFromBOOL();
      v48 = v60 = v9;
      v49 = NSStringFromBOOL();
      *buf = 138414338;
      v71 = v52;
      v72 = 2112;
      v73 = v51;
      v74 = 2112;
      v75 = v44;
      v76 = 2112;
      v77 = succinctDescription;
      v78 = 2112;
      v79 = v21;
      v80 = 2112;
      v81 = v46;
      v82 = 2112;
      v83 = v47;
      v84 = 2112;
      v85 = v48;
      v86 = 2112;
      v87 = v49;
      _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_DEFAULT, "Should bring item container forward:%@ TouchAllowedAtLocation:%@ SceneBackedBannersPresented:%@ AppLayout:%@ LeafAppLayoutToBringForward:%@ TouchBehavior:%@ ItemAlreadyOnTop:%@ TouchInsideWindowControls:%@ TouchInsideDock:%@", buf, 0x5Cu);

      v9 = v60;
      firstObject = v54;

      fixedCoordinateSpace = v57;
      LOBYTE(v21) = v53;
    }

    WeakRetained = v62;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

- (BOOL)_isTouchLocationInWindowControlsFrame:(CGPoint)frame
{
  y = frame.y;
  x = frame.x;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = [WeakRetained _leafAppLayoutForItemContainerAtLocation:1 environment:{x, y}];
  if (v6)
  {
    v7 = [WeakRetained liveContentOverlayForAppLayout:v6];
    windowControlsView = [v7 windowControlsView];
    v9 = windowControlsView;
    if (windowControlsView)
    {
      [windowControlsView bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      view = [WeakRetained view];
      [v9 convertRect:view toView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v30.origin.x = v20;
      v30.origin.y = v22;
      v30.size.width = v24;
      v30.size.height = v26;
      v29.x = x;
      v29.y = y;
      v27 = CGRectContainsPoint(v30, v29);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_isTouchLocationInSplitViewGutter:(CGPoint)gutter
{
  y = gutter.y;
  x = gutter.x;
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  visibleSplitViewHandleDimmingViews = [WeakRetained visibleSplitViewHandleDimmingViews];
  objectEnumerator = [visibleSplitViewHandleDimmingViews objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        [v11 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        view = [WeakRetained view];
        [v11 convertRect:view toView:{v13, v15, v17, v19}];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v37.origin.x = v22;
        v37.origin.y = v24;
        v37.size.width = v26;
        v37.size.height = v28;
        v36.x = x;
        v36.y = y;
        if (CGRectContainsPoint(v37, v36))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)_shouldContinuousExposeStripOverflowPanGesture:(id)gesture receiveTouch:(id)touch
{
  gestureCopy = gesture;
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v37 = touchCopy;
  [touchCopy locationInView:0];
  v9 = v8;
  v11 = v10;
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v13 = [systemGestureManager shouldSystemGestureReceiveTouchWithLocation:{v9, v11}];
  v14 = [systemGestureManager isGestureWithTypeAllowed:50];
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];
  peekConfiguration = [_currentLayoutState peekConfiguration];
  windowManagementContext = [WeakRetained windowManagementContext];
  v19 = 0;
  if (![windowManagementContext isChamoisOrFlexibleWindowing] || !v13 || !v14 || unlockedEnvironmentMode != 3)
  {
    v22 = v37;
    v21 = gestureCopy;
    v23 = windowScene;
LABEL_14:

    goto LABEL_15;
  }

  IsValid = SBPeekConfigurationIsValid(peekConfiguration);

  if (!IsValid)
  {
    windowManagementContext = objc_loadWeakRetained(&self->_switcherContentController);
    view = [windowManagementContext view];
    v22 = v37;
    v21 = gestureCopy;
    _UISystemGestureLocationForTouchInView();
    v26 = v25;
    v28 = v27;

    windowingConfiguration = [windowManagementContext windowingConfiguration];
    [windowingConfiguration stripWidth];
    v31 = v30;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      view2 = [windowManagementContext view];
      objc_msgSend_frame(view2);
      v33 = CGRectGetMaxX(v39) - v31;

      if (v26 < v33)
      {
LABEL_10:
        v19 = 0;
LABEL_13:
        v23 = windowScene;

        goto LABEL_14;
      }
    }

    else if (v26 > v31)
    {
      goto LABEL_10;
    }

    v34 = [windowManagementContext _itemContainerAtLocation:0 environment:{v26, v28}];
    v19 = v34 == 0;

    goto LABEL_13;
  }

  v19 = 0;
  v22 = v37;
  v21 = gestureCopy;
  v23 = windowScene;
LABEL_15:

  return v19;
}

- (CGRect)_paddedHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch
{
  touchCopy = touch;
  containerCopy = container;
  objc_msgSend_frame(containerCopy);
  x = v6;
  y = v8;
  v11 = v10;
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  appLayout2 = [containerCopy appLayout];
  v20 = [appLayout2 itemForLayoutRole:1];
  v21 = [appLayout layoutRoleForItem:v20];

  v22 = +[SBMedusaDomain rootSettings];
  switcherController = [(SBFluidSwitcherGestureManager *)self switcherController];
  _slideOverDisplayItem = [switcherController _slideOverDisplayItem];
  if (isChamoisOrFlexibleWindowing)
  {
    appLayout3 = [containerCopy appLayout];
    v26 = [appLayout3 itemForLayoutRole:1];
    v27 = [(SBDisplayItem *)_slideOverDisplayItem isEqualToItem:v26];

    if (v27)
    {
      v28 = objc_loadWeakRetained(&self->_switcherContentController);
      windowingConfiguration = [v28 windowingConfiguration];
      [windowingConfiguration slideOverBorderWidth];
      v31 = v30;

      if (touchCopy)
      {
        v32 = -v31;
        v33 = x;
        v34 = y;
        v35 = v11;
        v36 = v13;
        v37 = -v31;
      }

      else
      {
        [v22 wideEdgeSwipeHitTestWidth];
        v42 = v41 * 0.5;
        if (v31 >= v42)
        {
          v42 = v31;
        }

        v32 = v42 * -0.5;
        v37 = -v31;
        v33 = x;
        v34 = y;
        v35 = v11;
        v36 = v13;
      }

      v50 = CGRectInset(*&v33, v32, v37);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      v13 = v50.size.height;
      v11 = v50.size.width;
    }

    else
    {
      height = v13;
      width = v11;
    }
  }

  else
  {
    height = *(MEMORY[0x277CBF3A8] + 8);
    if (v21 == 4)
    {
      [v22 wideEdgeSwipeHitTestWidth];
      width = v39;
    }

    else
    {
      width = *MEMORY[0x277CBF3A8];
    }
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v11;
  v51.size.height = v13;
  v43 = CGRectGetMidX(v51) - width * 0.5;
  v52.origin.x = v43;
  v52.origin.y = y;
  v52.size.width = v11;
  v52.size.height = v13;
  v44 = CGRectGetMidY(v52) - height * 0.5;

  v45 = v43;
  v46 = v44;
  v47 = width;
  v48 = height;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (CGRect)_edgeSwipeHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch
{
  touchCopy = touch;
  containerCopy = container;
  objc_msgSend_frame(containerCopy);
  v8 = v7;
  +[SBNubView height];
  v10 = v9;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];

  appLayout2 = [containerCopy appLayout];
  v14 = [appLayout2 itemForLayoutRole:1];
  v15 = [appLayout layoutRoleForItem:v14];

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:containerCopy forPointerTouch:touchCopy];
  v20 = v19;
  v22 = v21;

  if (v15 == 4)
  {
    v23 = v10 + v10;
    v8 = v8 - v10;
  }

  else if (isChamoisOrFlexibleWindowing)
  {
    if (touchCopy)
    {
      v23 = v10;
    }

    else
    {
      v23 = v10 + v10;
    }

    if (!touchCopy)
    {
      v8 = v8 - v10;
    }
  }

  else
  {
    v23 = v10;
  }

  v24 = v20;
  v25 = v8;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_innerLeftEdgeDragHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch
{
  containerCopy = container;
  v7 = containerCopy;
  if (containerCopy && !touch && ([containerCopy appLayout], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "allItems"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), -[SBFluidSwitcherGestureManager _slideOverDisplayItem](self, "_slideOverDisplayItem"), v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v9, v8, (v12 & 1) != 0))
  {
    v13 = +[SBMedusaDomain rootSettings];
    objc_msgSend_frame(v7);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v13 narrowEdgeSwipeHitTestWidth];
    v21 = v20 * 0.5;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    windowingConfiguration = [WeakRetained windowingConfiguration];
    [windowingConfiguration slideOverBorderWidth];
    v25 = v21 - v24;

    if (v25 < 0.0)
    {
      v25 = 0.0;
    }
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v25 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v26 = v15;
  v27 = v17;
  v28 = v25;
  v29 = v19;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_innerRightEdgeDragHitTestRectForItemContainer:(id)container forPointerTouch:(BOOL)touch
{
  containerCopy = container;
  v7 = containerCopy;
  if (containerCopy && !touch && ([containerCopy appLayout], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "allItems"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), -[SBFluidSwitcherGestureManager _slideOverDisplayItem](self, "_slideOverDisplayItem"), v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v9, v8, (v12 & 1) != 0))
  {
    v13 = +[SBMedusaDomain rootSettings];
    objc_msgSend_frame(v7);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v13 narrowEdgeSwipeHitTestWidth];
    v23 = v22 * 0.5;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    windowingConfiguration = [WeakRetained windowingConfiguration];
    [windowingConfiguration slideOverBorderWidth];
    v27 = v23 - v26;

    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v28 = v15 + v19 - v27;
  }

  else
  {
    v28 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v29 = v28;
  v30 = v17;
  v31 = v27;
  v32 = v21;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)_isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:(CGPoint)space withinUnstashLocationOnHomeScreen:(BOOL)screen
{
  screenCopy = screen;
  y = space.y;
  x = space.x;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)selfCopy _currentLayoutState];
  v11 = [systemGestureManager shouldSystemGestureReceiveTouchWithLocation:{x, y}];
  v12 = SBIsSystemGestureAllowed(windowScene, 18);
  v13 = [(SBFluidSwitcherGestureManager *)selfCopy _isBannerOccludingRegionAtReferencePoint:x, y];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];
  peekConfiguration = [_currentLayoutState peekConfiguration];
  LOBYTE(selfCopy) = 0;
  v17 = unlockedEnvironmentMode == 3 || screenCopy;
  if (v11 && v12 && !v13 && v17)
  {
    LODWORD(selfCopy) = !SBPeekConfigurationIsValid(peekConfiguration);
  }

  return selfCopy;
}

- (id)_hitTestStageItemContainerForUnpinGestureWithTouch:(id)touch atGestureLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v78 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v10 = objc_loadWeakRetained(&self->_switcherContentController);
  view = [v10 view];
  appLayout = [_currentLayoutState appLayout];
  [touchCopy locationInView:0];
  v13 = v12;
  v15 = v14;
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v62 = touchCopy;
  v17 = [(SBFluidSwitcherGestureManager *)self _touchIsWithinUnstashRegionOnHomeScreen:touchCopy];
  selfCopy = self;
  v18 = [(SBFluidSwitcherGestureManager *)self _isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:v17 withinUnstashLocationOnHomeScreen:v13, v15];
  if (v17 && v18)
  {
    v19 = objc_loadWeakRetained(&self->_switcherContentController);
    visibleItemContainers = [v19 visibleItemContainers];
    allValues = [visibleItemContainers allValues];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke;
    v76[3] = &unk_2783A8FD0;
    v76[4] = selfCopy;
    v22 = [allValues bs_firstObjectPassingTest:v76];

LABEL_41:
    goto LABEL_42;
  }

  if (!v18)
  {
    v22 = 0;
LABEL_42:
    v22 = v22;
    v53 = v22;
    goto LABEL_43;
  }

  v19 = objc_loadWeakRetained(&self->_switcherContentController);
  windowManagementContext2 = [WeakRetained windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext2 isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    v22 = 0;
    goto LABEL_11;
  }

  visibleItemContainers2 = [v19 visibleItemContainers];
  allValues2 = [visibleItemContainers2 allValues];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_2;
  v71[3] = &unk_2783C1F58;
  v27 = appLayout;
  v72 = v27;
  v73 = view;
  v74 = x;
  v75 = y;
  v22 = [allValues2 bs_firstObjectPassingTest:v71];

  if (!v22 || ([v22 appLayout], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "containsAnyItemFromAppLayout:", v28), v28, v29))
  {

LABEL_11:
    displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v33 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:appLayout orientation:v32];

    centerItem = [appLayout centerItem];
    if (centerItem)
    {
      v35 = isChamoisOrFlexibleWindowing;
    }

    else
    {
      v35 = 1;
    }

    v59 = centerItem;
    if ((v35 & 1) == 0)
    {
      v36 = centerItem;
      firstObject = [v33 firstObject];
      v38 = BSEqualObjects();

      if ((v38 & 1) == 0)
      {
        v39 = [v33 mutableCopy];
        [v39 removeObject:v36];
        [v39 insertObject:v36 atIndex:0];

        v33 = v39;
      }
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v33;
    v40 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v40)
    {
      v41 = v40;
      v55 = v22;
      v56 = view;
      v57 = _currentLayoutState;
      v58 = WeakRetained;
      v42 = 0;
      v63 = *v68;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v68 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v67 + 1) + 8 * i);
          visibleItemContainers3 = [v19 visibleItemContainers];
          allValues3 = [visibleItemContainers3 allValues];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_3;
          v66[3] = &unk_2783A8FD0;
          v66[4] = v44;
          v22 = [allValues3 bs_firstObjectPassingTest:v66];

          objc_msgSend_frame(v22);
          appLayout2 = [v22 appLayout];
          v48 = [appLayout2 itemForLayoutRole:1];
          v49 = [appLayout layoutRoleForItem:v48];

          if (v49)
          {
            -[SBFluidSwitcherGestureManager _paddedHitTestRectForItemContainer:forPointerTouch:](selfCopy, "_paddedHitTestRectForItemContainer:forPointerTouch:", v22, [v62 _isPointerTouch]);
            v50 = SBRectContainsPoint();
            if ((v50 & isChamoisOrFlexibleWindowing) == 1 && v42)
            {
              if ((CGRegionContainsPoint() & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            else if (v50)
            {
LABEL_38:

              goto LABEL_39;
            }

            if (isChamoisOrFlexibleWindowing)
            {
              v51 = SBSafeAutoreleasedRegionFromCGRect();
              if (v42)
              {
                UnionWithRegion = CGRegionCreateUnionWithRegion();
                v42 = CFAutorelease(UnionWithRegion);
              }

              else
              {
                v42 = v51;
              }
            }
          }
        }

        v41 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }

      v22 = v55;
LABEL_39:
      _currentLayoutState = v57;
      WeakRetained = v58;
      view = v56;
    }

    goto LABEL_41;
  }

  v53 = 0;
LABEL_43:

  return v53;
}

uint64_t __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appLayout];
  v4 = [*(a1 + 32) _slideOverDisplayItem];
  v5 = [v3 containsItem:v4];

  return v5;
}

BOOL __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 appLayout];
  v6 = [v5 itemForLayoutRole:1];
  v7 = [v4 layoutRoleForItem:v6];

  v10 = 0;
  if (!v7)
  {
    v8 = [*(a1 + 40) hitTest:0 withEvent:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 isDescendantOfView:v3];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

uint64_t __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 appLayout];
  v4 = [v3 containsItem:*(a1 + 32)];

  return v4;
}

- (CGRect)_floatingApplicationBounds
{
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  interfaceOrientation = [_currentLayoutState interfaceOrientation];
  floatingConfiguration = [_currentLayoutState floatingConfiguration];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  dataSource = [WeakRetained dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource switcherContentController:WeakRetained frameForFloatingAppLayoutInInterfaceOrientation:interfaceOrientation floatingConfiguration:floatingConfiguration];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_shouldUserClickInAppInteractionGesture:(id)gesture receiveTouch:(id)touch
{
  gestureCopy = gesture;
  touchCopy = touch;
  if ([touchCopy _isPointerTouch])
  {
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    if ([_currentLayoutState unlockedEnvironmentMode] == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      if ([WeakRetained wantsUserClickInAppInteractionEvent])
      {
        view = [WeakRetained view];
        _UISystemGestureLocationForTouchInView();
        v12 = v11;
        v14 = v13;

        v15 = [WeakRetained _itemContainerAtLocation:1 environment:{v12, v14}];
        appLayout = [v15 appLayout];
        appLayout2 = [_currentLayoutState appLayout];
        v18 = [appLayout2 isOrContainsAppLayout:appLayout];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
  gestureRecognizer = [activeGestureTransaction gestureRecognizer];
  state = [gestureRecognizer state];
  if (!activeGestureTransaction || !gestureRecognizer || (state - 1) > 1)
  {
    multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
    activeTouchDownOriginatedWindowScene = [multiDisplayUserInteractionCoordinator activeTouchDownOriginatedWindowScene];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (activeTouchDownOriginatedWindowScene)
      {
        WeakRetained = objc_loadWeakRetained(&self->_switcherController);
        windowScene = [WeakRetained windowScene];
        v14 = [windowScene isEqual:activeTouchDownOriginatedWindowScene];

        if (!v14)
        {
          goto LABEL_28;
        }
      }
    }

    edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];

    if (edgePullGestureRecognizer == beginCopy)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginBottomEdgePanGesture:beginCopy];
    }

    else if (self->_deckInSwitcherPanGestureRecognizer == beginCopy)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginDeckInSwitcherPanGesture:beginCopy];
    }

    else if (self->_fluidScrunchGestureRecognizer == beginCopy)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFluidScrunchGesture:beginCopy];
    }

    else if (self->_swipeUpFloatingAppGestureRecognizer == beginCopy)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationSwipeUpGesture:beginCopy];
    }

    else
    {
      if (self->_moveFloatingApplicationGestureRecognizer == beginCopy)
      {
        goto LABEL_33;
      }

      if (self->_pinFloatingApplicationGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationPinGesture:beginCopy];
        goto LABEL_46;
      }

      if (self->_unpinSplitViewApplicationGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginSplitViewApplicationUnpinGesture:?];
        goto LABEL_46;
      }

      if (self->_indirectBottomEdgePanGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginIndirectHomePanGesture:beginCopy];
        goto LABEL_46;
      }

      if (self->_sceneResizePanGestureRecognizer == beginCopy)
      {
        v9 = 1;
        goto LABEL_47;
      }

      if (self->_indirectFloatingAppScrunchGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginIndirectFloatingAppScrunchGesture:beginCopy];
        goto LABEL_46;
      }

      if (self->_indirectDismissFloatingApplicationGestureRecognizer == beginCopy)
      {
LABEL_33:
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationMoveGesture:beginCopy];
      }

      else if (self->_clickAndDragHomeGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginClickAndDragHomeGesture:beginCopy];
      }

      else if (self->_liveWindowResizeGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginLiveWindowResizeGesture:?];
      }

      else if (self->_hoverGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginHoverGesture:?];
      }

      else if (self->_tapToBringItemContainerForwardGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginTapToBringItemContainerForwardGesture:beginCopy];
      }

      else if (self->_clickDownToBringItemContainerForwardGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginClickDownToBringItemContainerForwardGesture:beginCopy];
      }

      else if (self->_indirectContinuousExposeStripOverflowGestureRecognizer == beginCopy)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripOverflowGesture:?];
      }

      else
      {
        if (self->_dragContinuousExposeStripOverflowGestureRecognizer != beginCopy)
        {
LABEL_28:
          v9 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripOverflowPanGesture:?];
      }
    }

LABEL_46:
    v9 = v16;
    goto LABEL_47;
  }

  v8 = SBLogSystemGestureAppSwitcher(state);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(SBFluidSwitcherGestureManager *)beginCopy gestureRecognizerShouldBegin:gestureRecognizer, v8];
  }

  v9 = 0;
LABEL_48:

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  v9 = hoverGestureRecognizer == recognizerCopy || hoverGestureRecognizer == gestureRecognizerCopy;
  v10 = v9 || (self->_tapToBringItemContainerForwardGestureRecognizer == recognizerCopy || self->_clickDownToBringItemContainerForwardGestureRecognizer == recognizerCopy) && self->_windowMoveClientGateRelationshipGestureRecognizer == gestureRecognizerCopy || self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy && self->_clickDownToBringItemContainerForwardGestureRecognizer == gestureRecognizerCopy;

  return v10;
}

- (BOOL)_shouldBeginBottomEdgePanGesture:(id)gesture
{
  v31 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  _currentUnlockedEnvironmentMode = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
  v6 = objc_opt_class();
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  v8 = SBSafeCast(v6, edgePullGestureRecognizer);

  touchedEdges = [v8 touchedEdges];
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && (v11 = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture], (v11 & 1) == 0))
  {
    v19 = SBLogSystemGestureAppSwitcher(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because switcher doesn't own the home gesture.", buf, 2u);
    }

    v20 = @"DeckSwitcherBottomEdgeGestureNotOwned";
  }

  else
  {
    v12 = [(SBFluidSwitcherGestureManager *)self _shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges:touchedEdges];
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherController);
      windowScene = [WeakRetained windowScene];
      systemGestureManager = [windowScene systemGestureManager];
      v16 = [systemGestureManager isGestureWithTypeAllowed:39];

      if (v16)
      {
        if (_currentUnlockedEnvironmentMode != 2 || !(v18 = SBReduceMotion()))
        {
          v20 = 0;
          v21 = 1;
          goto LABEL_20;
        }

        v19 = SBLogSystemGestureAppSwitcher(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because we're in the app switcher in Reduce Motion.", buf, 2u);
        }

        v20 = @"SwitcherBottomEdgeGesturePreventedInAppSwitcherInReduceMotion";
      }

      else
      {
        v19 = SBLogSystemGestureAppSwitcher(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because it's not allowed by the system gesture manager.", buf, 2u);
        }

        v20 = @"SwitcherBottomEdgeGestureNotAllowedBySystemGestureManager";
      }
    }

    else
    {
      v19 = SBLogSystemGestureAppSwitcher(v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = touchedEdges;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because the recognized edges (%ld) aren't supported.", buf, 0xCu);
      }

      v20 = @"DeckSwitcherRecognizedEdgesNotSupported";
    }
  }

  v21 = 0;
LABEL_20:
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__SBFluidSwitcherGestureManager__shouldBeginBottomEdgePanGesture___block_invoke;
  v25[3] = &unk_2783B77A8;
  v28 = v21;
  v26 = gestureCopy;
  v27 = v20;
  v23 = gestureCopy;
  [mEMORY[0x277D6A798] logBlock:v25];

  return v21;
}

id __66__SBFluidSwitcherGestureManager__shouldBeginBottomEdgePanGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginBottomEdgePanGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginDeckInSwitcherPanGesture:(id)gesture
{
  v4 = SBReduceMotion();
  if (v4)
  {
    v5 = SBLogSystemGestureAppSwitcher(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v20 = 0;
      v6 = "Preventing the in switcher gesture because reduce motion is enabled.";
      v7 = &v20;
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    }
  }

  else
  {
    _currentUnlockedEnvironmentMode = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
    if (_currentUnlockedEnvironmentMode == 2)
    {
      deckInSwitcherPanGestureRecognizer = self->_deckInSwitcherPanGestureRecognizer;
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      view = [WeakRetained view];
      [(SBFluidSwitcherPanGestureRecognizer *)deckInSwitcherPanGestureRecognizer velocityInView:view];
      v13 = v12;
      v15 = v14;

      if (fabs(v15) > fabs(v13))
      {
        return 1;
      }

      v5 = SBLogSystemGestureAppSwitcher(v16);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v6 = "Preventing the in switcher gesture because we're scrolling horizontally.";
        v7 = buf;
        goto LABEL_11;
      }
    }

    else
    {
      v5 = SBLogSystemGestureAppSwitcher(_currentUnlockedEnvironmentMode);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v18 = 0;
        v6 = "Preventing the in switcher gesture because we're not in in the app switcher.";
        v7 = &v18;
        goto LABEL_11;
      }
    }
  }

  return 0;
}

- (BOOL)_shouldBeginClickAndDragHomeGesture:(id)gesture
{
  gestureCopy = gesture;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      v13 = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Preventing the click and drag home gesture because switcher doesn't own the home gesture.";
        v15 = buf;
        goto LABEL_9;
      }

LABEL_10:

      v12 = 0;
      goto LABEL_11;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v10 = [systemGestureManager isGestureWithTypeAllowed:42];

  if ((v10 & 1) == 0)
  {
    v13 = SBLogSystemGestureAppSwitcher(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v14 = "Preventing the click and drag home gesture because it's not allowed by the system gesture manager.";
      v15 = &v17;
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)_shouldBeginLiveWindowResizeGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    v15 = SBLogSystemGestureAppSwitcher(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v41 = 0;
      v19 = "Preventing the live window resize gesture because neither Chamois nor FlexibleWindowing is enabled.";
      v20 = &v41;
LABEL_13:
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, v19, v20, 2u);
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      v15 = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v19 = "Preventing the live window resize gesture because switcher doesn't own the home gesture.";
        v20 = buf;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v13 = [systemGestureManager isGestureWithTypeAllowed:42];

  if ((v13 & 1) == 0)
  {
    v15 = SBLogSystemGestureAppSwitcher(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v39 = 0;
      v19 = "Preventing the live window resize gesture because it's not allowed by the system gesture manager.";
      v20 = &v39;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v15 = objc_loadWeakRetained(&self->_switcherContentController);
  itemContainerToResizeUsingPointer = [v15 itemContainerToResizeUsingPointer];
  if (itemContainerToResizeUsingPointer)
  {
    v17 = itemContainerToResizeUsingPointer;
    v18 = 1;
  }

  else
  {
    view = [v15 view];
    _UISystemGestureLocationInView();
    v24 = v23;
    v26 = v25;

    v18 = 1;
    v27 = [v15 _itemContainerNearestLocation:1 environment:1 prioritizeForegroundedItemContainers:v24, v26];
    if (v27)
    {
      v17 = v27;
    }

    else
    {
      v28 = SBLogSystemGestureAppSwitcher(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *v38 = 0;
        _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_INFO, "Preventing the live window resize gesture because no item container.", v38, 2u);
      }

      v17 = 0;
      v18 = 0;
    }
  }

  selectedEdge = [gestureCopy selectedEdge];
  if (selectedEdge)
  {
    v30 = selectedEdge;
    if ([gestureCopy hasEdgeResizeSeenTouchOutsideHittestedView])
    {
      v18 = 1;
    }

    else
    {
      view2 = [v15 view];
      _UISystemGestureTranslationInView();
      v33 = v32;
      v35 = v34;

      if (v30 == 8 || v30 == 2)
      {
        v36 = fabs(v33);
        v37 = fabs(v35);
      }

      else
      {
        v36 = fabs(v35);
        v37 = fabs(v33);
      }

      v18 = v36 >= v37;
    }
  }

LABEL_15:
  return v18;
}

- (BOOL)_shouldBeginClickDownToBringItemContainerForwardGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(SBFluidSwitcherGestureManager *)self _shouldBeginBringItemContainerForwardGesture:gestureCopy type:15])
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  modifierFlags = [gestureCopy modifierFlags];
  if ((modifierFlags & 0x100000) != 0)
  {
    v7 = SBLogSystemGestureAppSwitcher(modifierFlags);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Preventing the click down to bring item container forward gesture because the command key is pressed.", v9, 2u);
    }

    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (BOOL)_shouldBeginBringItemContainerForwardGesture:(id)gesture type:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  homeScreenController = [windowScene homeScreenController];
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    v18 = SBLogSystemGestureAppSwitcher(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      v19 = "Preventing the bring item container forward gesture because neither Chamois nor FlexibleWindowing is enabled.";
      goto LABEL_14;
    }

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      v18 = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        v19 = "Preventing the bring item container forward gesture because switcher doesn't own the home gesture.";
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  systemGestureManager = [windowScene systemGestureManager];
  v15 = [systemGestureManager isGestureWithTypeAllowed:type];

  if ((v15 & 1) == 0)
  {
    v18 = SBLogSystemGestureAppSwitcher(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      v19 = "Preventing the bring item container forward gesture because it's not allowed by the system gesture manager.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  areAnyIconViewContextMenusShowing = [homeScreenController areAnyIconViewContextMenusShowing];
  if (areAnyIconViewContextMenusShowing)
  {
    v18 = SBLogSystemGestureAppSwitcher(areAnyIconViewContextMenusShowing);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      v19 = "Preventing the bring item container forward gesture because icon is showing context menu.";
LABEL_14:
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, v19, &v26, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];
  v20 = unlockedEnvironmentMode == 3;

  v18 = SBLogSystemGestureAppSwitcher(v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (unlockedEnvironmentMode == 3)
    {
      v25 = @"YES";
    }

    v26 = 138412290;
    v27 = v25;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Should begin bring item container forward:%@", &v26, 0xCu);
  }

LABEL_16:

  return v20;
}

- (BOOL)_shouldBeginHoverGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    v16 = SBLogSystemGestureAppSwitcher(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      v17 = "Preventing the hover gesture because neither Chamois nor FlexibleWindowing is enabled.";
      v18 = &v22;
LABEL_12:
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, v17, v18, 2u);
    }

LABEL_13:

    v15 = 0;
    goto LABEL_14;
  }

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      v16 = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v17 = "Preventing the hover gesture because switcher doesn't own the home gesture.";
        v18 = buf;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v12 = [systemGestureManager isGestureWithTypeAllowed:47];

  if ((v12 & 1) == 0)
  {
    v16 = SBLogSystemGestureAppSwitcher(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 0;
      v17 = "Preventing the hover gesture because it's not allowed by the system gesture manager.";
      v18 = &v20;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v15 = [_currentLayoutState unlockedEnvironmentMode] == 3;

LABEL_14:
  return v15;
}

- (BOOL)_shouldBeginIndirectHomePanGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];

  floatingDockController = [windowScene floatingDockController];
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    if ((ownsHomeGesture & 1) == 0)
    {
      presentFloatingDockIndirectPanGestureRecognizer = SBLogSystemGestureAppSwitcher(ownsHomeGesture);
      if (os_log_type_enabled(presentFloatingDockIndirectPanGestureRecognizer, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "Preventing the indirect home pan gesture because switcher doesn't own the home gesture.";
        v19 = buf;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  systemGestureManager = [windowScene systemGestureManager];
  v11 = [systemGestureManager isGestureWithTypeAllowed:35];

  if (v11)
  {
    v13 = +[SBSetupManager sharedInstance];
    if ([v13 isInSetupMode])
    {
      v14 = +[SBSetupManager sharedInstance];
      isInSetupModeReadyToExit = [v14 isInSetupModeReadyToExit];

      if ((isInSetupModeReadyToExit & 1) == 0)
      {
        presentFloatingDockIndirectPanGestureRecognizer = SBLogSystemGestureAppSwitcher(v16);
        if (os_log_type_enabled(presentFloatingDockIndirectPanGestureRecognizer, OS_LOG_TYPE_INFO))
        {
          v43 = 0;
          v18 = "Preventing the indirect home pan gesture because Buddy is not ready to exit.";
          v19 = &v43;
LABEL_12:
          _os_log_impl(&dword_21ED4E000, presentFloatingDockIndirectPanGestureRecognizer, OS_LOG_TYPE_INFO, v18, v19, 2u);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (([floatingDockController isFloatingDockFullyPresented] & 1) == 0)
    {
      _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
      if ([_currentLayoutState isFloatingSwitcherVisible])
      {
      }

      else
      {
        v23 = +[SBSetupManager sharedInstance];
        isInSetupMode = [v23 isInSetupMode];

        if ((isInSetupMode & 1) == 0)
        {
          presentFloatingDockIndirectPanGestureRecognizer = SBLogSystemGestureAppSwitcher(v25);
          if (!os_log_type_enabled(presentFloatingDockIndirectPanGestureRecognizer, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          v42 = 0;
          v18 = "Preventing the indirect home pan gesture because the floating dock is not fully presented.";
          v19 = &v42;
          goto LABEL_12;
        }
      }
    }

    if ([gestureCopy currentInputType] != 1)
    {
      v20 = 1;
      goto LABEL_15;
    }

    presentFloatingDockIndirectPanGestureRecognizer = [floatingDockController presentFloatingDockIndirectPanGestureRecognizer];
    BSContinuousMachTimeNow();
    v27 = v26;
    [presentFloatingDockIndirectPanGestureRecognizer lastMouseActivationTimestamp];
    v29 = v27 - v28;
    v30 = +[SBCoverSheetPresentationManager sharedInstance];
    coverSheetSlidingViewController = [v30 coverSheetSlidingViewController];
    indirectDismissGestureRecognizer = [coverSheetSlidingViewController indirectDismissGestureRecognizer];

    BSContinuousMachTimeNow();
    v34 = v33;
    lastMouseActivationTimestamp = [indirectDismissGestureRecognizer lastMouseActivationTimestamp];
    if (v29 >= 0.25)
    {
      if (v34 - v36 >= 0.5)
      {
        v20 = 1;
        goto LABEL_34;
      }

      v37 = SBLogSystemGestureAppSwitcher(lastMouseActivationTimestamp);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v40 = 0;
        v38 = "Preventing the indirect home pan gesture because the dismiss cover sheet gesture was recently activated by a mouse.";
        v39 = &v40;
        goto LABEL_29;
      }
    }

    else
    {
      v37 = SBLogSystemGestureAppSwitcher(lastMouseActivationTimestamp);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v41 = 0;
        v38 = "Preventing the indirect home pan gesture because the dock gesture was recently activated by a mouse.";
        v39 = &v41;
LABEL_29:
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_INFO, v38, v39, 2u);
      }
    }

    v20 = 0;
LABEL_34:

    goto LABEL_14;
  }

  presentFloatingDockIndirectPanGestureRecognizer = SBLogSystemGestureAppSwitcher(v12);
  if (os_log_type_enabled(presentFloatingDockIndirectPanGestureRecognizer, OS_LOG_TYPE_INFO))
  {
    v44 = 0;
    v18 = "Preventing the indirect home pan gesture because it's not allowed by the system gesture manager.";
    v19 = &v44;
    goto LABEL_12;
  }

LABEL_13:
  v20 = 0;
LABEL_14:

LABEL_15:
  return v20;
}

- (BOOL)_shouldBeginIndirectFloatingAppScrunchGesture:(id)gesture
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:gesture gestureType:13 failureReason:&v18];
  v5 = v18;
  v6 = v5;
  if (!v4)
  {
    v13 = SBLogSystemGestureAppSwitcher(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v6;
      v14 = "Preventing the floating app scrunch gesture because: %@.";
      v15 = v13;
      v16 = 12;
LABEL_8:
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    }

LABEL_9:

    v12 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v10 = [systemGestureManager isGestureWithTypeAllowed:13];

  if ((v10 & 1) == 0)
  {
    v13 = SBLogSystemGestureAppSwitcher(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Preventing the floating app scrunch gesture because it's not allowed by the system gesture manager.";
      v15 = v13;
      v16 = 2;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (BOOL)_shouldBeginFluidScrunchGesture:(id)gesture
{
  gestureCopy = gesture;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && (v6 = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture], (v6 & 1) == 0))
  {
    v13 = SBLogSystemGestureAppSwitcher(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Preventing the scrunch gesture because switcher doesn't own the home gesture.";
      v15 = buf;
      goto LABEL_11;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [WeakRetained windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    v10 = [systemGestureManager isGestureWithTypeAllowed:12];

    if (v10)
    {
      isTypingActive = [SBApp isTypingActive];
      if (!isTypingActive)
      {
        v16 = 1;
        goto LABEL_13;
      }

      v13 = SBLogSystemGestureAppSwitcher(isTypingActive);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 0;
        v14 = "Preventing the scrunch gesture because typing is active.";
        v15 = &v18;
LABEL_11:
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
      }
    }

    else
    {
      v13 = SBLogSystemGestureAppSwitcher(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v19 = 0;
        v14 = "Preventing the scrunch gesture because it's not allowed by the system gesture manager.";
        v15 = &v19;
        goto LABEL_11;
      }
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)_shouldAllowFloatingApplicationGesture:(id)gesture gestureType:(unint64_t)type failureReason:(id *)reason
{
  v7 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState:gesture];
  _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];

  if (!_slideOverDisplayItem)
  {
    v9 = 0;
    v10 = @"NoSlideOverDisplayItem";
    if (!reason)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([v7 unlockedEnvironmentMode] == 2)
  {
    v9 = 0;
    v10 = @"InAppSwitcher";
    if (!reason)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SBPeekConfigurationIsValid([v7 peekConfiguration]))
  {
    v9 = 0;
    v10 = @"InPeekState";
    if (!reason)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  zStackParticipant = self->_zStackParticipant;
  if (!zStackParticipant)
  {
    v10 = 0;
    v9 = 1;
    if (!reason)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  activationState = [(SBFZStackParticipant *)zStackParticipant activationState];
  v9 = activationState == 0;
  v10 = @"NotForegroundActiveInZStack";
  if (!activationState)
  {
    v10 = 0;
  }

  if (reason)
  {
LABEL_14:
    *reason = v10;
  }

LABEL_15:

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationSwipeUpGesture:(id)gesture
{
  v29 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v26 = 0;
  v5 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:gestureCopy gestureType:26 failureReason:&v26];
  v6 = v26;
  v7 = v6;
  if (!v5)
  {
    v14 = SBLogSystemGestureAppSwitcher(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v7;
      v15 = "Preventing the floating app swipe up gesture because: %@.";
      v16 = v14;
      v17 = 12;
LABEL_8:
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
    }

LABEL_9:

    v13 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  systemGestureManager = [windowScene systemGestureManager];
  v11 = [systemGestureManager isGestureWithTypeAllowed:26];

  if ((v11 & 1) == 0)
  {
    v14 = SBLogSystemGestureAppSwitcher(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "Preventing the floating app swipe up gesture because it's not allowed by the system gesture manager.";
      v16 = v14;
      v17 = 2;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v13 = 1;
LABEL_10:
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationSwipeUpGesture___block_invoke;
  v22[3] = &unk_2783B77A8;
  v25 = v13;
  v23 = gestureCopy;
  v24 = v7;
  v19 = v7;
  v20 = gestureCopy;
  [mEMORY[0x277D6A798] logBlock:v22];

  return v13;
}

id __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationSwipeUpGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginFloatingApplicationSwipeUpGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)gesture
{
  v62 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  indirectEdgePullGestureRecognizer = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (indirectEdgePullGestureRecognizer == gestureCopy)
  {
    v6 = 36;
  }

  else
  {
    v6 = 19;
  }

  v58 = 0;
  v7 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:gestureCopy gestureType:v6 failureReason:&v58];
  v8 = v58;
  v9 = v8;
  if (!v7)
  {
    v10 = SBLogSystemGestureAppSwitcher(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Preventing the right floating app present gesture because: %@.", buf, 0xCu);
    }
  }

  indirectEdgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (!v7)
  {
    v14 = v9;
LABEL_21:
    v61 = 0;
    v60 = 0u;
    *buf = 0u;
    objc_msgSend__currentSlideOverConfiguration(self);
LABEL_22:
    LOBYTE(v23) = 0;
    goto LABEL_23;
  }

  if (indirectEdgePullGestureRecognizer2 == gestureCopy)
  {
    v12 = 37;
  }

  else
  {
    v12 = 20;
  }

  v57 = v9;
  v13 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:gestureCopy gestureType:v12 failureReason:&v57];
  v14 = v57;

  if (!v13)
  {
    v19 = SBLogSystemGestureAppSwitcher(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      v20 = "Preventing the left floating app present gesture because: %@.";
      v21 = v19;
      v22 = 12;
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  isFloatingSwitcherVisible = [_currentLayoutState isFloatingSwitcherVisible];

  if (isFloatingSwitcherVisible)
  {
    v19 = SBLogSystemGestureAppSwitcher(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v20 = "Preventing the floating app present gesture because the floating switcher is presented.";
      v21 = v19;
      v22 = 2;
LABEL_19:
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v61 = 0;
  v60 = 0u;
  *buf = 0u;
  v28 = objc_msgSend__currentSlideOverConfiguration(self);
  if ((v61 & 0x100) == 0)
  {
    v40 = SBLogSystemGestureAppSwitcher(v28);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *v54 = 0;
      v41 = "Preventing the floating app present gesture because the slideover app is not stashed.";
LABEL_46:
      _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_INFO, v41, v54, 2u);
    }

LABEL_47:

    goto LABEL_22;
  }

  if (indirectEdgePullGestureRecognizer2 == gestureCopy)
  {
LABEL_28:
    *v54 = *buf;
    v55 = v60;
    v56 = v61;
    IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v54);
    if (IsLeftSided)
    {
      goto LABEL_29;
    }

LABEL_44:
    v40 = SBLogSystemGestureAppSwitcher(IsLeftSided);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *v54 = 0;
      v41 = "Preventing the floating app present gesture from the left edge because the slideover app is not stashed on the left.";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];

  if (edgePullGestureRecognizer == gestureCopy)
  {
    if ((v61 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_28;
  }

LABEL_29:
  if (indirectEdgePullGestureRecognizer != gestureCopy)
  {
    edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];

    if (edgePullGestureRecognizer2 != gestureCopy)
    {
      goto LABEL_31;
    }
  }

  if (BYTE1(v61) != 1 || (*v54 = *buf, v55 = v60, v56 = v61, IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v54)))
  {
    v40 = SBLogSystemGestureAppSwitcher(IsLeftSided);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *v54 = 0;
      v41 = "Preventing the floating app present gesture from the right edge because the slideover app is not stashed on the right.";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (indirectEdgePullGestureRecognizer != gestureCopy)
  {
LABEL_31:
    LOBYTE(v23) = 1;
LABEL_32:
    if (indirectEdgePullGestureRecognizer2 == gestureCopy)
    {
      indirectEdgePullGestureRecognizer3 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
      if ([indirectEdgePullGestureRecognizer3 currentInputType] == 1)
      {
        v33 = self->_indirectDismissFloatingApplicationGestureRecognizer;
        BSContinuousMachTimeNow();
        v35 = v34;
        [(SBIndirectPanGestureRecognizer *)v33 lastMouseActivationTimestamp];
        v37 = v36;

        LOBYTE(v23) = v35 - v37 >= 0.75;
        if (v35 - v37 < 0.75)
        {
          v39 = SBLogSystemGestureAppSwitcher(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *v54 = 0;
            _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_INFO, "Preventing the left indirect floating app present gesture because the dismiss gesture was very recently activated with a mouse.", v54, 2u);
          }

          LOBYTE(v23) = 0;
        }
      }

      else
      {
        LOBYTE(v23) = 1;
      }
    }

    goto LABEL_23;
  }

  indirectEdgePullGestureRecognizer4 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
  if ([indirectEdgePullGestureRecognizer4 currentInputType] == 1)
  {
    v43 = self->_indirectDismissFloatingApplicationGestureRecognizer;
    BSContinuousMachTimeNow();
    v45 = v44;
    [(SBIndirectPanGestureRecognizer *)v43 lastMouseActivationTimestamp];
    v47 = v46;

    v23 = v45 - v47 >= 0.75;
    if (v45 - v47 < 0.75)
    {
      v49 = SBLogSystemGestureAppSwitcher(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *v54 = 0;
        _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_INFO, "Preventing the right indirect floating app present gesture because the dismiss gesture was very recently activated with a mouse.", v54, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    goto LABEL_32;
  }

LABEL_23:
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationPresentGesture___block_invoke;
  v50[3] = &unk_2783B77A8;
  v53 = v23;
  v51 = gestureCopy;
  v52 = v14;
  v25 = v14;
  v26 = gestureCopy;
  [mEMORY[0x277D6A798] logBlock:v50];

  return v23;
}

id __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationPresentGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginFloatingApplicationPresentGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationMoveGesture:(id)gesture
{
  v44 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v40 = 0;
  v5 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:gestureCopy gestureType:23 failureReason:&v40];
  v6 = v40;
  v7 = v6;
  if (!v5)
  {
    v11 = SBLogSystemGestureAppSwitcher(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Preventing the floating app move gesture because: %@.", buf, 0xCu);
    }

    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    goto LABEL_9;
  }

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  isFloatingSwitcherVisible = [_currentLayoutState isFloatingSwitcherVisible];
  if (isFloatingSwitcherVisible)
  {
    v10 = SBLogSystemGestureAppSwitcher(isFloatingSwitcherVisible);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Preventing the floating app present move because the floating switcher is presented.", buf, 2u);
    }

LABEL_9:
    LOBYTE(v12) = 0;
LABEL_10:
    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __76__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationMoveGesture___block_invoke;
    v33[3] = &unk_2783B77A8;
    v36 = v12;
    v34 = gestureCopy;
    v35 = v7;
    [mEMORY[0x277D6A798] logBlock:v33];

    v14 = v34;
    goto LABEL_11;
  }

  _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];

  if (_slideOverDisplayItem)
  {
    indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;
    if (indirectDismissFloatingApplicationGestureRecognizer != gestureCopy)
    {
      LOBYTE(v12) = 1;
      goto LABEL_10;
    }

    if ([(SBIndirectPanGestureRecognizer *)indirectDismissFloatingApplicationGestureRecognizer currentInputType]== 1)
    {
      v19 = [(SBFluidSwitcherGestureManager *)self _indirectPresentFloatingAppGestureRecognizerForEdge:[(SBIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer activatedEdge]];
      BSContinuousMachTimeNow();
      v21 = v20;
      lastMouseActivationTimestamp = [v19 lastMouseActivationTimestamp];
      v24 = v21 - v23;
      LODWORD(v12) = v24 >= 0.75;
      if (v24 < 0.75)
      {
        v25 = SBLogSystemGestureAppSwitcher(lastMouseActivationTimestamp);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "Preventing the indirect floating app dismiss gesture because the present gesture was very recently activated with a mouse.", buf, 2u);
        }
      }
    }

    else
    {
      LODWORD(v12) = 1;
    }

    v26 = objc_opt_class();
    v27 = SBSafeCast(v26, gestureCopy);
    v28 = v27;
    if (v12 && v27)
    {
      v43 = 0;
      *buf = 0u;
      v42 = 0u;
      objc_msgSend__currentSlideOverConfiguration(self);
      *v37 = *buf;
      v38 = v42;
      v39 = v43;
      IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v37);
      activatedEdge = [v28 activatedEdge];
      if (activatedEdge == 2 && !IsLeftSided || (activatedEdge = [v28 activatedEdge], activatedEdge == 8 && IsLeftSided))
      {
        _slideOverLeafAppLayout = SBLogSystemGestureAppSwitcher(activatedEdge);
        if (os_log_type_enabled(_slideOverLeafAppLayout, OS_LOG_TYPE_INFO))
        {
          *v37 = 0;
          _os_log_impl(&dword_21ED4E000, _slideOverLeafAppLayout, OS_LOG_TYPE_INFO, "Preventing the indirect floating app dismiss gesture because it is at the opposite end of the visible SlideOver.", v37, 2u);
        }

        LOBYTE(v12) = 0;
      }

      else
      {
        v32 = self->_indirectDismissFloatingApplicationGestureRecognizer;
        if (v32 != gestureCopy)
        {
          LOBYTE(v12) = 1;
          goto LABEL_34;
        }

        [(SBIndirectPanGestureRecognizer *)v32 setShouldInvertXAxis:BYTE1(v43)];
        v12 = self->_indirectDismissFloatingApplicationGestureRecognizer;
        _slideOverLeafAppLayout = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
        [(SBFluidSwitcherIndirectPanGestureRecognizer *)v12 setLeafAppLayout:_slideOverLeafAppLayout];
        LOBYTE(v12) = 1;
      }
    }

LABEL_34:

    goto LABEL_10;
  }

  v14 = SBLogSystemGestureAppSwitcher(v17);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Preventing the floating app move gesture because there's no slideover app.", buf, 2u);
  }

  LOBYTE(v12) = 0;
LABEL_11:

  return v12;
}

id __76__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationMoveGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginFloatingApplicationMoveGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)gesture
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:gesture gestureType:24 failureReason:&v17];
  v5 = v17;
  v6 = v5;
  if (!v4)
  {
    v10 = SBLogSystemGestureAppSwitcher(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v6;
      v11 = "Preventing the floating app pin gesture because: %@.";
      v12 = v10;
      v13 = 12;
LABEL_12:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  isFloatingSwitcherVisible = [_currentLayoutState isFloatingSwitcherVisible];

  if (isFloatingSwitcherVisible)
  {
    v10 = SBLogSystemGestureAppSwitcher(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "Preventing the floating app pin gesture because the floating switcher is presented.";
LABEL_11:
      v12 = v10;
      v13 = 2;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  shouldBeginWindowDragGesture = [(SBFluidSwitcherDragAndDropManager *)self->_fluidDragAndDropManager shouldBeginWindowDragGesture];
  if ((shouldBeginWindowDragGesture & 1) == 0)
  {
    v10 = SBLogSystemGestureAppSwitcher(shouldBeginWindowDragGesture);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "Preventing the floating app pin gesture because the drag and drop interaction manager prevents it.";
      goto LABEL_11;
    }

LABEL_13:

    v15 = 0;
    goto LABEL_14;
  }

  v15 = 1;
LABEL_14:

  return v15;
}

- (BOOL)_shouldBeginSplitViewApplicationUnpinGesture:(id)gesture
{
  gestureCopy = gesture;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v60 = gestureCopy;
  initialTouchLeafAppLayout = [gestureCopy initialTouchLeafAppLayout];
  v8 = [WeakRetained adjustedAppLayoutForLeafAppLayout:initialTouchLeafAppLayout];
  v9 = 0;
  if (initialTouchLeafAppLayout && v8)
  {
    v54 = v8;
    v10 = [initialTouchLeafAppLayout itemForLayoutRole:1];
    v11 = +[SBApplicationController sharedInstance];
    bundleIdentifier = [v10 bundleIdentifier];
    v13 = [v11 applicationWithBundleIdentifier:bundleIdentifier];

    v59 = v10;
    uniqueIdentifier = [v10 uniqueIdentifier];
    v15 = [_currentLayoutState elementWithIdentifier:uniqueIdentifier];

    v52 = v15;
    workspaceEntity = [v15 workspaceEntity];
    deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];

    v51 = deviceApplicationSceneEntity;
    [deviceApplicationSceneEntity sceneHandle];
    v19 = v18 = _currentLayoutState;
    v20 = WeakRetained;
    v21 = objc_loadWeakRetained(&self->_switcherController);
    appLayout = [v18 appLayout];
    [v21 windowScene];
    v49 = v58 = v18;
    v50 = appLayout;
    -[SBDisplayItemLayoutAttributesCalculator frameForLayoutRole:inAppLayout:containerOrientation:windowScene:](self->_displayItemLayoutAttributesCalculator, "frameForLayoutRole:inAppLayout:containerOrientation:windowScene:", 1, appLayout, [v18 interfaceOrientation], v49);
    v56 = v20;
    view = [v20 view];
    [view bounds];

    v24 = BSSizeEqualToSize();
    windowManagementContext = [v21 windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];
    v57 = v21;
    displayIdentity = [v21 displayIdentity];
    v53 = v13;
    v55 = windowManagementContext;
    LODWORD(windowManagementContext) = [v13 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:windowManagementContext displayIdentity:displayIdentity];

    v29 = v19;
    if (!windowManagementContext)
    {
      goto LABEL_7;
    }

    IsActive = [v19 screenEdgesDeferringSystemGestures];
    if (IsActive & 1) != 0 && ((isChamoisOrFlexibleWindowing ^ 1 | v24))
    {
      goto LABEL_7;
    }

    IsActive = SBGuidedAccessIsActive();
    if (IsActive)
    {
      goto LABEL_7;
    }

    v33 = v55;
    if (![v55 isFlexibleWindowingEnabled])
    {
      v9 = 1;
      _currentLayoutState = v58;
      v31 = v59;
      WeakRetained = v56;
      v32 = v57;
      goto LABEL_11;
    }

    v32 = v21;
    _slideOverDisplayItem = [v21 _slideOverDisplayItem];
    v31 = v59;
    _currentLayoutState = v58;
    WeakRetained = v56;
    if (([(SBDisplayItem *)_slideOverDisplayItem isEqualToItem:v59]& 1) != 0)
    {
      v63 = 0;
      *buf = 0u;
      v62 = 0u;
      objc_msgSend__currentSlideOverConfiguration(self);
      v48 = _slideOverDisplayItem;
      visibleItemContainers = [v56 visibleItemContainers];
      v37 = [visibleItemContainers objectForKey:initialTouchLeafAppLayout];

      v47 = v37;
      if (v37)
      {
        v46 = [v60 _activeEventOfType:0];
        v38 = [v46 touchesForGestureRecognizer:v60];
        anyObject = [v38 anyObject];

        if (([anyObject _isPointerTouch] & 1) == 0)
        {
          view2 = [v56 view];
          _UISystemGestureLocationForTouchInView();

          [(SBFluidSwitcherGestureManager *)self _edgeSwipeHitTestRectForItemContainer:v47 forPointerTouch:0];
          [(SBFluidSwitcherGestureManager *)self _innerLeftEdgeDragHitTestRectForItemContainer:v47 forPointerTouch:0];
          [(SBFluidSwitcherGestureManager *)self _innerRightEdgeDragHitTestRectForItemContainer:v47 forPointerTouch:0];
          if ((SBRectContainsPoint() & 1) == 0 && ((SBRectContainsPoint() & 1) != 0 || SBRectContainsPoint()))
          {
            view3 = [v56 view];
            _UISystemGestureTranslationInView();
            v43 = v42;
            v45 = v44;

            if (fabs(v43) > fabs(v45))
            {
              v9 = 1;
LABEL_10:
              _currentLayoutState = v58;
              v31 = v59;
              WeakRetained = v56;
              v32 = v57;
              v33 = v55;
LABEL_11:

              v8 = v54;
              goto LABEL_12;
            }

LABEL_7:
            v30 = SBLogSystemGestureAppSwitcher(IsActive);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_INFO, "Preventing the split view unpin gesture because the drag and drop interaction manager prevents it.", buf, 2u);
            }

            v9 = 0;
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
    }

    v9 = 1;
    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

- (BOOL)_shouldBeginContinuousExposeStripRevealGesture:(id)gesture
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsAvailableWithReason:&v13];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    v12 = 0;
    v7 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsOccludedOrHiddenWithOutReason:&v12];
    v8 = v12;
    v9 = SBLogSystemGestureAppSwitcher(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromBOOL();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Begin continuous expose strip reveal gesture '%{public}@' because '%{public}@'", buf, 0x16u);
    }
  }

  else
  {
    v8 = SBLogSystemGestureAppSwitcher(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Won't begin continuous expose strip reveal gesture because '%{public}@'", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)gesture
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsAvailableWithReason:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v13 = 0;
    v7 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsOccludedOrHiddenWithOutReason:&v13];
    v8 = v13;
    v9 = !v7;
    v10 = SBLogSystemGestureAppSwitcher(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromBOOL();
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Begin continuous expose strip overflow gesture '%{public}@' because '%{public}@'", buf, 0x16u);
    }
  }

  else
  {
    v8 = SBLogSystemGestureAppSwitcher(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Won't begin continuous expose strip overflow gesture because '%{public}@'", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldBeginContinuousExposeStripOverflowPanGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];

  [gestureCopy velocityInView:view];
  v8 = v7;
  v10 = v9;
  [gestureCopy locationInView:view];
  [view size];
  v11 = BSFloatLessThanOrEqualToFloat();
  LOBYTE(self) = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripOverflowGesture:gestureCopy];

  if (self)
  {
    if (((v8 < 0.0) & v11) == 0 && (v8 <= 0.0) | v11 & 1 && fabs(v10) <= fabs(v8))
    {
      v15 = 1;
      goto LABEL_11;
    }

    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v13 = "Preventing the reveal overflow pan gesture because we're moving out or vertically.";
      v14 = &v17;
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, v13, v14, 2u);
    }
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "Preventing the reveal overflow pan gesture because the reveal overflow gesture is disabled.";
      v14 = buf;
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (int64_t)_gestureTypeForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  if (edgePullGestureRecognizer == recognizerCopy || self->_deckInSwitcherPanGestureRecognizer == recognizerCopy || self->_fluidScrunchGestureRecognizer == recognizerCopy || self->_indirectBottomEdgePanGestureRecognizer == recognizerCopy)
  {
  }

  else
  {
    clickAndDragHomeGestureRecognizer = self->_clickAndDragHomeGestureRecognizer;

    if (clickAndDragHomeGestureRecognizer != recognizerCopy)
    {
      if (self->_swipeUpFloatingAppGestureRecognizer == recognizerCopy || self->_indirectFloatingAppScrunchGestureRecognizer == recognizerCopy)
      {
        _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
        isFloatingSwitcherVisible = [_currentLayoutState isFloatingSwitcherVisible];

        if (isFloatingSwitcherVisible)
        {
          v17 = 5;
        }

        else
        {
          v17 = 3;
        }

        goto LABEL_30;
      }

      edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
      if (edgePullGestureRecognizer2 != recognizerCopy)
      {
        edgePullGestureRecognizer3 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
        if (edgePullGestureRecognizer3 != recognizerCopy && self->_moveFloatingApplicationGestureRecognizer != recognizerCopy)
        {
          indirectEdgePullGestureRecognizer = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
          v11 = indirectEdgePullGestureRecognizer;
          if (indirectEdgePullGestureRecognizer != recognizerCopy)
          {
            indirectEdgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

            if (indirectEdgePullGestureRecognizer2 != recognizerCopy)
            {
              if (self->_sceneResizePanGestureRecognizer == recognizerCopy)
              {
                v17 = 7;
                goto LABEL_30;
              }

              if (self->_unpinSplitViewApplicationGestureRecognizer == recognizerCopy || self->_pinFloatingApplicationGestureRecognizer == recognizerCopy || self->_indirectDismissFloatingApplicationGestureRecognizer == recognizerCopy)
              {
                v17 = 8;
                goto LABEL_30;
              }

              if (self->_liveWindowResizeGestureRecognizer == recognizerCopy)
              {
                v17 = 9;
                goto LABEL_30;
              }

              edgePullGestureRecognizer4 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue edgePullGestureRecognizer];
              v14 = edgePullGestureRecognizer4;
              if (edgePullGestureRecognizer4 == recognizerCopy)
              {
              }

              else
              {
                indirectEdgePullGestureRecognizer3 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue indirectEdgePullGestureRecognizer];

                if (indirectEdgePullGestureRecognizer3 != recognizerCopy)
                {
                  if (self->_indirectContinuousExposeStripOverflowGestureRecognizer == recognizerCopy || self->_dragContinuousExposeStripOverflowGestureRecognizer == recognizerCopy)
                  {
                    v17 = 11;
                  }

                  else
                  {
                    currentHandler = [MEMORY[0x277CCA890] currentHandler];
                    [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherGestureManager.m" lineNumber:3187 description:{@"Gesture recognizer (%@) doesn't correspond to a valid SBFluidSwitcherGestureType.", recognizerCopy}];

                    v17 = 0;
                  }

                  goto LABEL_30;
                }
              }

              v17 = 10;
              goto LABEL_30;
            }

LABEL_37:
            v17 = 4;
            goto LABEL_30;
          }
        }
      }

      goto LABEL_37;
    }
  }

  if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]== 2 && [(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 2)
  {
    v17 = 2;
  }

  else
  {
    _currentLayoutState2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    isFloatingSwitcherVisible2 = [_currentLayoutState2 isFloatingSwitcherVisible];

    if (isFloatingSwitcherVisible2)
    {
      v17 = 5;
    }

    else
    {
      v17 = 1;
    }
  }

LABEL_30:

  return v17;
}

- (Class)_fluidSwitcherGestureTransactionClassForGestureType:(int64_t)type
{
  v4 = 0;
  if (type <= 5)
  {
    if (type > 2 || type == 1 || type == 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (type <= 8)
    {
      if (type == 6)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherGestureManager.m" lineNumber:3211 description:@"SBFluidSwitcherGestureTypeDragAndDrop is handled by the SBFluidSwitcherDragAndDropManager."];

        v4 = 0;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (type == 9 || type == 10 || type == 11)
    {
LABEL_17:
      v4 = objc_opt_class();
    }
  }

LABEL_18:

  return v4;
}

- (BOOL)_isTransactionRunningForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(SBFluidSwitcherGestureManager *)self _fluidSwitcherGestureTransactionClassForGestureType:[(SBFluidSwitcherGestureManager *)self _gestureTypeForGestureRecognizer:recognizerCopy]];
  activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
  v6 = activeGestureTransaction;
  if (activeGestureTransaction)
  {
    gestureRecognizer = [activeGestureTransaction gestureRecognizer];
    if (gestureRecognizer == recognizerCopy)
    {
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldProtectEdgeLocation:(double)location edge:(unint64_t)edge
{
  if ([(SBFluidSwitcherGestureManager *)self _shouldSuppressEdgeProtect])
  {
    return 0;
  }

  [(SBFHomeGrabberSettings *)self->_homeGrabberSettings edgeProtectOverride];
  if (BSSettingFlagIsYes())
  {
    return 1;
  }

  if (BSSettingFlagIsExplicitNo())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained isEdgeProtectedForHomeGestureAtEdgeLocation:edge edge:location];

  return v9;
}

- (BOOL)_isEdgeLocationInHomeAffordanceRegion:(double)region
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_currentHomeGrabberViews;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
        [WeakRetained containerViewBoundsForHomeGrabberView:{v10, v27}];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v33.origin.x = v13;
        v33.origin.y = v15;
        v33.size.width = v17;
        v33.size.height = v19;
        Width = CGRectGetWidth(v33);
        [v10 suggestedSizeForContentWidth:?];
        v22 = (Width - v21) * 0.5;
        v23 = (Width + v21) * 0.5;
        if (v22 <= region && v23 >= region)
        {
          v25 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16, v23];
    }

    while (v7);
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (id)_deviceApplicationSceneEntityForFloatingApplicationGrabberTongue
{
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  IsSplitView = SBSpaceConfigurationIsSplitView([_currentLayoutState spaceConfiguration]);
  v4 = &SBLayoutRoleSide;
  if (!IsSplitView)
  {
    v4 = &SBLayoutRolePrimary;
  }

  v5 = [_currentLayoutState elementWithRole:*v4];
  workspaceEntity = [v5 workspaceEntity];
  deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];

  return deviceApplicationSceneEntity;
}

- (BOOL)_edgeLocationIsOutsideFloatingApplicationGrabberFreeRegion:(double)region
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  [view bounds];
  MidY = CGRectGetMidY(v8);

  return MidY + 125.0 < region || MidY + -125.0 > region;
}

- (BOOL)_touchLocationIsWithinSlideOverTongue:(double)tongue
{
  _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  objc_msgSend__currentSlideOverConfiguration(self, 0, 0, 0, 0, 0);
  if (_slideOverDisplayItem && v23 == 1)
  {
    displayItemLayoutAttributesCalculator = self->_displayItemLayoutAttributesCalculator;
    _slideOverLeafAppLayout = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    windowScene = [WeakRetained windowScene];
    [(SBDisplayItemLayoutAttributesCalculator *)displayItemLayoutAttributesCalculator frameForLayoutRole:1 inAppLayout:_slideOverLeafAppLayout containerOrientation:interfaceOrientation windowScene:windowScene];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    MidY = CGRectGetMidY(v24);
    v21 = MidY + 125.0 > tongue && MidY + -125.0 < tongue;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_touchLocationIsWithinUnstashRegion:(CGPoint)region
{
  x = region.x;
  v5 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem:region.x];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  objc_msgSend__currentSlideOverConfiguration(self);
  if (v5 && BYTE1(v16) == 1)
  {
    v12[0] = v14;
    v12[1] = v15;
    v13 = v16;
    if (SBDisplayItemSlideOverIsLeftSided(v12))
    {
      v6 = fabs(x);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      view = [WeakRetained view];
      [view bounds];
      v6 = vabdd_f64(x, v10);
    }

    v7 = v6 < 28.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_touchIsWithinUnstashRegionOnHomeScreen:(id)screen
{
  screenCopy = screen;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  if ([_currentLayoutState unlockedEnvironmentMode] == 1 && (objc_msgSend__currentSlideOverConfiguration(self), v14 == 1))
  {
    [screenCopy locationInView:0];
    window = [screenCopy window];
    [window bounds];
    window2 = [screenCopy window];
    [window2 interfaceOrientation];
    [_currentLayoutState interfaceOrientation];
    _UIConvertPointFromOrientationToOrientation();
    v9 = v8;
    v11 = v10;

    v12 = [(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinUnstashRegion:v9, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges:(unint64_t)edges
{
  edgesCopy = edges;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if ((edges & 4) != 0)
  {
    v6 = 1;
    v27 = 1;
  }

  else if (edges)
  {
    v6 = 0;
  }

  else
  {
    _currentFloatingAppLayout = [(SBFluidSwitcherGestureManager *)self _currentFloatingAppLayout];
    if (_currentFloatingAppLayout && (_currentFloatingAppLayout, (edgesCopy & 0xA) != 0))
    {
      v6 = 0;
      *(v25 + 24) = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      layoutContext = [WeakRetained layoutContext];
      supportedOrientationsForGesture = [layoutContext supportedOrientationsForGesture];

      v10 = objc_opt_class();
      edgePullGestureRecognizer = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
      v12 = SBSafeCast(v10, edgePullGestureRecognizer);

      [v12 _touchInterfaceOrientation];
      v13 = _screenRegionGivenInterfaceOrientedRegion();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v20 = __87__SBFluidSwitcherGestureManager__shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges___block_invoke;
      v21 = &unk_2783AD898;
      v22 = &v24;
      v23 = v13;
      v14 = v19;
      if (supportedOrientationsForGesture)
      {
        v15 = 0;
        v28 = 0;
        v16 = vcnt_s8(supportedOrientationsForGesture);
        v16.i16[0] = vaddlv_u8(v16);
        v17 = v16.i32[0];
        do
        {
          if (((1 << v15) & *&supportedOrientationsForGesture) != 0)
          {
            v20(v14);
            if (v28)
            {
              break;
            }

            --v17;
          }

          if (v15 > 0x3E)
          {
            break;
          }

          ++v15;
        }

        while (v17 > 0);
      }

      if ((v25[3] & 1) == 0 && [WeakRetained homeAffordanceOrientationIfMismatchedFromCurrentLayoutState])
      {
        *(v25 + 24) = (_interfaceOrientedRegionGivenScreenRegion() & 4) != 0;
      }

      v6 = *(v25 + 24);
    }
  }

  _Block_object_dispose(&v24, 8);
  return v6 & 1;
}

uint64_t __87__SBFluidSwitcherGestureManager__shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges___block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  result = _interfaceOrientedRegionGivenScreenRegion();
  if ((result & 4) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)takeHiddenAssertionForHomeGrabber:(id)grabber
{
  v3 = MEMORY[0x277D65E80];
  grabberCopy = grabber;
  rootSettings = [v3 rootSettings];
  hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  [grabberCopy setHomeAffordanceInteractionEnabled:0];
  [grabberCopy setHidden:1 forReason:@"SBFluidSwitcherHomeGestureNotOwnedGrabberHiddenReason" withAnimationSettings:bSAnimationSettings];
}

- (void)relinquishHiddenAssertionForHomeGrabber:(id)grabber
{
  v3 = MEMORY[0x277D65E80];
  grabberCopy = grabber;
  rootSettings = [v3 rootSettings];
  unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  [grabberCopy setHomeAffordanceInteractionEnabled:1];
  [grabberCopy setHidden:0 forReason:@"SBFluidSwitcherHomeGestureNotOwnedGrabberHiddenReason" withAnimationSettings:bSAnimationSettings];
}

- (void)zStackParticipantDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_currentHomeGrabberViews;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
        {
          [(SBFluidSwitcherGestureManager *)self relinquishHiddenAssertionForHomeGrabber:v9];
        }

        else
        {
          [(SBFluidSwitcherGestureManager *)self takeHiddenAssertionForHomeGrabber:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained zStackActivationStateUpdated];

  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceInteraction];
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  v44 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v7 = _currentLayoutState;
  if (!_currentLayoutState)
  {
LABEL_5:
    v10 = 0;
    v9 = 1;
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];
  v9 = unlockedEnvironmentMode;
  v10 = 0;
  if (unlockedEnvironmentMode <= 1)
  {
    if (unlockedEnvironmentMode)
    {
      v11 = 0;
      if (unlockedEnvironmentMode != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

LABEL_27:
    activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    if (activeGestureTransaction)
    {
      v34 = activeGestureTransaction;
      activeGestureTransaction2 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
      isComplete = [activeGestureTransaction2 isComplete];

      v11 = 0;
      if (isComplete)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v11 = 0;
      v10 = 2;
    }

    goto LABEL_7;
  }

  if (unlockedEnvironmentMode == 2)
  {
    v10 = 1;
    goto LABEL_6;
  }

  if (unlockedEnvironmentMode == 3)
  {
    goto LABEL_27;
  }

  v11 = 0;
LABEL_7:
  [preferencesCopy setHomeGestureConsumption:{1, v9}];
  v38 = v7;
  if ([v7 isFloatingSwitcherVisible])
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [preferencesCopy setHomeAffordanceDrawingSuppression:v12];
  [preferencesCopy setActivationPolicyForParticipantsBelow:v10];
  [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_zStackSystemAperturePolicyAssistant)];
  v13 = MEMORY[0x277CBEB58];
  foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_zStackSystemAperturePolicyAssistant foregroundCameraShutterButtonPIDs];
  v15 = [v13 setWithSet:foregroundCameraShutterButtonPIDs];

  v16 = MEMORY[0x277CBEB58];
  allCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_zStackSystemAperturePolicyAssistant allCameraShutterButtonPIDs];
  v18 = [v16 setWithSet:allCameraShutterButtonPIDs];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = self->_suppressionAssertions;
  v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        sceneID = [v24 sceneID];
        bundleID = [v24 bundleID];
        if (sceneID)
        {
          [v15 addObject:sceneID];
        }

        if (bundleID)
        {
          [v18 addObject:bundleID];
        }
      }

      v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v21);
  }

  [preferencesCopy setAssociatedSceneIdentifiersToSuppressInSystemAperture:v15];
  [preferencesCopy setAssociatedBundleIdentifiersToSuppressInSystemAperture:v18];
  physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant physicalButtonSceneTargets];
  [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

  captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];

  foregroundCaptureSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant foregroundCaptureSceneTargets];
  [preferencesCopy setForegroundCaptureSceneTargets:foregroundCaptureSceneTargets];

  audioCategoriesDisablingVolumeHUD = [(SBAudioCategoryZStackPolicyAssistant *)self->_zStackAudioCategoryPolicyAssistant audioCategoriesDisablingVolumeHUD];
  [preferencesCopy setAudioCategoriesDisablingVolumeHUD:audioCategoriesDisablingVolumeHUD];

  if (v37 == 3)
  {
    v31 = v38;
    if ([(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 2)
    {
      v32 = 1;
    }

    else if (([v38 interfaceOrientation] - 3) < 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }
  }

  else
  {
    v32 = 0;
    v31 = v38;
  }

  [preferencesCopy setAllowsDimmingWhenForegroundInactive:v32];
}

- (void)_updateZStackPolicyAssistantsWithLayoutState:(id)state
{
  stateCopy = state;
  activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];

  if (!stateCopy && activeGestureTransaction)
  {
    [(SBFluidSwitcherGestureManager *)self _clearAudioCategoryZStackPolicyAssistant];
    [(SBFluidSwitcherGestureManager *)self _clearSystemApertureZStackPolicyAssistantSuppression];
    [(SBFluidSwitcherGestureManager *)self _clearPhysicalButtonZStackPolicyAssistant];
    goto LABEL_19;
  }

  v24 = a2;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  dataSource = [WeakRetained dataSource];
  unlockedEnvironmentMode = [stateCopy unlockedEnvironmentMode];
  appLayout = [stateCopy appLayout];
  v11 = appLayout;
  if (self->_zStackSystemAperturePolicyAssistant)
  {
    v12 = dataSource;
    v13 = [appLayout itemForLayoutRole:1];
    elements = [stateCopy elements];
    if ([elements count] == 1 && v13)
    {
      type = [v13 type];

      v16 = 0;
      v17 = 0;
      if (unlockedEnvironmentMode != 3 || type)
      {
        goto LABEL_14;
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v12 switcherContentController:WeakRetained deviceApplicationSceneHandleForDisplayItem:v13];
        if (v17)
        {
          v16 = [WeakRetained homeGrabberViewForAppLayout:v11];
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    v16 = 0;
    v17 = 0;
LABEL_14:
    [(SBSystemApertureZStackPolicyAssistant *)self->_zStackSystemAperturePolicyAssistant setForegroundExclusiveSceneHandle:v17 homeGrabberView:v16];

    dataSource = v12;
  }

  v18 = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [v18 windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__129;
  v41 = __Block_byref_object_dispose__129;
  v42 = 0;
  if (unlockedEnvironmentMode == 3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke;
    v28 = &unk_2783C1FA8;
    v36 = isChamoisOrFlexibleWindowing;
    v29 = v18;
    v21 = stateCopy;
    v35 = v24;
    v30 = v21;
    selfCopy = self;
    v32 = dataSource;
    v33 = WeakRetained;
    v34 = &v37;
    v22 = MEMORY[0x223D6F7F0](&v25);
    floatingAppLayout = [v21 floatingAppLayout];
    (v22)[2](v22, floatingAppLayout);

    (v22)[2](v22, v11);
  }

  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_zStackAudioCategoryPolicyAssistant setForegroundScenes:v38[5], v24, v25, v26, v27, v28];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant setForegroundScenes:v38[5]];
  _Block_object_dispose(&v37, 8);

LABEL_19:
}

void __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_14;
  }

  if (*(a1 + 88) == 1)
  {
    v4 = [*(a1 + 32) displayItemLayoutAttributesProvider];
    v5 = [*(a1 + 40) interfaceOrientation];
    if ((v5 - 1) < 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * ((v5 - 3) < 2);
    }

    v7 = [v4 zOrderedItemsInAppLayout:v3 orientation:v6];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [v3 itemForLayoutRole:4];
    [v7 bs_safeAddObject:v8];

    v9 = [v3 itemForLayoutRole:1];
    [v7 bs_safeAddObject:v9];

    v10 = [v3 itemForLayoutRole:2];
    [v7 bs_safeAddObject:v10];

    v11 = [v7 count];
    v12 = [v3 allItems];
    v13 = [v12 count];

    if (v11 == v13)
    {
      goto LABEL_9;
    }

    __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_cold_1(a1, &v22);
    v4 = v22;
  }

LABEL_9:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_2;
  v19[3] = &unk_2783B9DC8;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v14 = [v7 bs_compactMap:v19];
  if ([v14 count])
  {
    v15 = *(*(*(a1 + 72) + 8) + 40);
    if (!v15)
    {
      v16 = [MEMORY[0x277CBEB18] array];
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v15 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v15 addObjectsFromArray:v14];
  }

LABEL_14:
}

id __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) switcherContentController:*(a1 + 40) deviceApplicationSceneHandleForDisplayItem:v3];
  }

  return v4;
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  clickCopy = click;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && (v6 = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture], (v6 & 1) == 0))
  {
    v8 = SBLogSystemGesture(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Preventing the switcher from dismissing due to a home grabber click because it doesn't own the home gesture.", v9, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fluidSwitcherGestureManager:self clickReceivedForHomeGrabberView:clickCopy];
  }
}

- (BOOL)grabberTongueOrPullEnabled:(id)enabled forGestureRecognizer:(id)recognizer
{
  enabledCopy = enabled;
  recognizerCopy = recognizer;
  if (self->_deckGrabberTongue == enabledCopy)
  {
    v9 = [(SBFluidSwitcherGestureManager *)self _shouldBeginBottomEdgePanGesture:recognizerCopy];
    goto LABEL_8;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == enabledCopy || self->_leftEdgeFloatingAppGrabberTongue == enabledCopy)
  {
    v9 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationPresentGesture:recognizerCopy];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == enabledCopy)
  {
    v9 = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripRevealGesture:recognizerCopy];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)grabberTongue:(id)tongue shouldShowTongueOnFirstSwipeWithEdgeLocation:(double)location
{
  v69 = *MEMORY[0x277D85DE8];
  tongueCopy = tongue;
  v7 = tongueCopy;
  if (self->_deckGrabberTongue == tongueCopy)
  {
    LOBYTE(v20) = [(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)tongueCopy screenEdge] edge:location];
    goto LABEL_42;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue != tongueCopy && self->_leftEdgeFloatingAppGrabberTongue != tongueCopy)
  {
    if (self->_continuousExposeStripRevealGrabberTongue == tongueCopy && [(SBFluidSwitcherGestureManager *)self _edgeLocationIsOutsideFloatingApplicationGrabberFreeRegion:location])
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      _continuousExposeStripEdge = [(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge];
      _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
      appLayout = [_currentLayoutState appLayout];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = [appLayout leafAppLayouts];
      v11 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v11)
      {
        v12 = v11;
        v50 = appLayout;
        v52 = _currentLayoutState;
        v13 = *v59;
LABEL_8:
        v14 = 0;
        while (1)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v58 + 1) + 8 * v14);
          visibleItemContainers = [WeakRetained visibleItemContainers];
          v17 = [visibleItemContainers objectForKey:v15];

          if (_continuousExposeStripEdge == 8)
          {
            objc_msgSend_frame(v17);
            view = [WeakRetained view];
            objc_msgSend_frame(view);
            v19 = BSFloatEqualToFloat();

            if (v19)
            {
              goto LABEL_43;
            }
          }

          else if (_continuousExposeStripEdge == 2)
          {
            objc_msgSend_frame(v17);
            if (BSFloatIsZero())
            {
LABEL_43:
              v43 = [v15 itemForLayoutRole:1];
              appLayout = v50;
              v44 = [v50 layoutRoleForItem:v43];

              _currentLayoutState = v52;
              v45 = [v52 elementWithRole:v44];
              workspaceEntity = [v45 workspaceEntity];
              deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];

              if (deviceApplicationSceneEntity)
              {
                sceneHandle = [deviceApplicationSceneEntity sceneHandle];
                screenEdgesDeferringSystemGestures = [sceneHandle screenEdgesDeferringSystemGestures];

                LOBYTE(v20) = ([(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge]& screenEdgesDeferringSystemGestures) != 0;
                goto LABEL_47;
              }

              LOBYTE(v20) = 0;
              goto LABEL_49;
            }
          }

          if (v12 == ++v14)
          {
            v12 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
            if (v12)
            {
              goto LABEL_8;
            }

            LOBYTE(v20) = 0;
            appLayout = v50;
            _currentLayoutState = v52;
            goto LABEL_46;
          }
        }
      }

      LOBYTE(v20) = 0;
LABEL_46:
      deviceApplicationSceneEntity = obj;
LABEL_47:

LABEL_49:
      goto LABEL_42;
    }

LABEL_20:
    LOBYTE(v20) = 0;
    goto LABEL_42;
  }

  if ([(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinSlideOverTongue:location])
  {
    goto LABEL_20;
  }

  v21 = objc_loadWeakRetained(&self->_switcherContentController);
  objc_msgSend__currentSlideOverConfiguration(self);
  IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v66);
  v23 = IsLeftSided;
  if (IsLeftSided)
  {
    v24 = 2;
  }

  else
  {
    v24 = 8;
  }

  _currentLayoutState2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout2 = [_currentLayoutState2 appLayout];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  leafAppLayouts = [appLayout2 leafAppLayouts];
  v20 = [leafAppLayouts countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (!v20)
  {
LABEL_39:

    goto LABEL_41;
  }

  v51 = v24;
  v53 = appLayout2;
  obja = _currentLayoutState2;
  v57 = v7;
  v28 = *v63;
LABEL_27:
  v29 = 0;
  while (1)
  {
    if (*v63 != v28)
    {
      objc_enumerationMutation(leafAppLayouts);
    }

    v30 = *(*(&v62 + 1) + 8 * v29);
    visibleItemContainers2 = [v21 visibleItemContainers];
    v32 = [visibleItemContainers2 objectForKey:v30];

    objc_msgSend_frame(v32);
    if (!v23)
    {
      break;
    }

    if (BSFloatIsZero())
    {
      goto LABEL_37;
    }

LABEL_34:

    if (v20 == ++v29)
    {
      v20 = [leafAppLayouts countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v20)
      {
        goto LABEL_27;
      }

      _currentLayoutState2 = obja;
      v7 = v57;
      appLayout2 = v53;
      goto LABEL_39;
    }
  }

  view2 = [v21 view];
  objc_msgSend_frame(view2);
  v34 = BSFloatEqualToFloat();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  v35 = [v30 itemForLayoutRole:1];
  appLayout2 = v53;
  v36 = [v53 layoutRoleForItem:v35];

  _currentLayoutState2 = obja;
  v37 = [obja elementWithRole:v36];
  workspaceEntity2 = [v37 workspaceEntity];
  deviceApplicationSceneEntity2 = [workspaceEntity2 deviceApplicationSceneEntity];

  if (deviceApplicationSceneEntity2)
  {
    sceneHandle2 = [deviceApplicationSceneEntity2 sceneHandle];
    screenEdgesDeferringSystemGestures2 = [sceneHandle2 screenEdgesDeferringSystemGestures];

    LOBYTE(v20) = (screenEdgesDeferringSystemGestures2 & v51) != 0;
    leafAppLayouts = deviceApplicationSceneEntity2;
    v7 = v57;
    goto LABEL_39;
  }

  LOBYTE(v20) = 0;
  v7 = v57;
LABEL_41:

LABEL_42:
  return v20;
}

- (BOOL)grabberTongue:(id)tongue shouldAllowSecondSwipeWithEdgeLocation:(double)location
{
  tongueCopy = tongue;
  v7 = tongueCopy;
  if (self->_deckGrabberTongue == tongueCopy)
  {
    if (self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == tongueCopy)
  {
LABEL_8:
    if ([(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)tongueCopy screenEdge] edge:location])
    {
      goto LABEL_9;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue != tongueCopy && self->_continuousExposeStripRevealGrabberTongue == tongueCopy && ![(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)tongueCopy screenEdge] edge:location])
  {
    goto LABEL_10;
  }

LABEL_9:
  v8 = [(SBGrabberTongue *)v7 isEdgeLocationInGrabberRegion:location];
LABEL_11:

  return v8;
}

- (void)grabberTongueBeganPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  pullingCopy = pulling;
  gestureCopy = gesture;
  if (self->_deckGrabberTongue == pullingCopy)
  {
    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureBegan:edgePullGestureRecognizer];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == pullingCopy || self->_leftEdgeFloatingAppGrabberTongue == pullingCopy)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:gestureCopy];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != pullingCopy)
    {
      goto LABEL_9;
    }

    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:edgePullGestureRecognizer];
  }

LABEL_9:
}

- (void)grabberTongueUpdatedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  pullingCopy = pulling;
  gestureCopy = gesture;
  if (self->_deckGrabberTongue == pullingCopy)
  {
    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureChanged:edgePullGestureRecognizer];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == pullingCopy || self->_leftEdgeFloatingAppGrabberTongue == pullingCopy)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:gestureCopy];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != pullingCopy)
    {
      goto LABEL_9;
    }

    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:edgePullGestureRecognizer];
  }

LABEL_9:
}

- (void)grabberTongueEndedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  pullingCopy = pulling;
  gestureCopy = gesture;
  if (self->_deckGrabberTongue == pullingCopy)
  {
    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureEnded:edgePullGestureRecognizer];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == pullingCopy || self->_leftEdgeFloatingAppGrabberTongue == pullingCopy)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:gestureCopy];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != pullingCopy)
    {
      goto LABEL_9;
    }

    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:edgePullGestureRecognizer];
  }

LABEL_9:
}

- (void)grabberTongueCanceledPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  pullingCopy = pulling;
  gestureCopy = gesture;
  if (self->_deckGrabberTongue == pullingCopy)
  {
    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureEnded:edgePullGestureRecognizer];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == pullingCopy || self->_leftEdgeFloatingAppGrabberTongue == pullingCopy)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:gestureCopy];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != pullingCopy)
    {
      goto LABEL_9;
    }

    edgePullGestureRecognizer = [(SBGrabberTongue *)pullingCopy edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:edgePullGestureRecognizer];
  }

LABEL_9:
}

- (id)customGestureRecognizerForGrabberTongue:(id)tongue
{
  tongueCopy = tongue;
  v5 = _os_feature_enabled_impl();
  if (self->_deckGrabberTongue == tongueCopy)
  {
    v7 = v5;
    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    homeButtonType = [mEMORY[0x277CF0CA8] homeButtonType];

    if (homeButtonType == 2)
    {
      v10 = 5;
    }

    else
    {
      v10 = 3;
    }

    v6 = [(SBHomeGesturePanGestureRecognizer *)[SBFluidSwitcherScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0 type:v10 options:v7];
    [(SBHomeGesturePanGestureRecognizer *)v6 setPreventHorizontalSwipesOutsideTrapezoid:0];
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)v6 setSwitcherViewController:WeakRetained];

    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:15];
    [(SBHomeGestureSettings *)self->_homeGestureSettings edgeAngleWindow];
    [(UIScreenEdgePanGestureRecognizer *)v6 _setBottomEdgeAngleWindow:?];
    goto LABEL_16;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == tongueCopy)
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0];
    v12 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v13 = 8;
    v14 = 2;
LABEL_12:
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:v15];
    goto LABEL_16;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue == tongueCopy)
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0];
    v12 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v13 = 2;
    v14 = 8;
    goto LABEL_12;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == tongueCopy)
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0];
    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:[(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge]];
    [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)v6 setName:@"revealContinuousExposeStripsGestureRecognizer"];
  }

  else
  {
    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)indirectPanGestureRecognizerForGrabberTongue:(id)tongue
{
  tongueCopy = tongue;
  v5 = tongueCopy;
  if (self->_rightEdgeFloatingAppGrabberTongue == tongueCopy)
  {
    v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v8 = 8;
    v9 = 2;
LABEL_7:
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (self->_rightEdgeFloatingAppGrabberTongue == v5)
    {
      v11 = @"rightIndirectFloatingAppGrabberTongueGestureRecognizer";
    }

    else
    {
      v11 = @"leftIndirectFloatingAppGrabberTongueGestureRecognizer";
    }

    v12 = v11;
    v6 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:0 action:0 edges:v10];
    [(SBIndirectPanGestureRecognizer *)v6 setName:v12];

    [(SBIndirectPanGestureRecognizer *)v6 setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)v6 setShouldInvertXAxis:1];
    [(SBIndirectPanGestureRecognizer *)v6 setActivationRecognitionDistance:80.0];
    [(SBIndirectPanGestureRecognizer *)v6 setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:1 forInputType:10.0];
    [(SBIndirectPanGestureRecognizer *)v6 setTranslationAdjustmentBlock:&__block_literal_global_320];
    goto LABEL_14;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue == tongueCopy)
  {
    v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v8 = 2;
    v9 = 8;
    goto LABEL_7;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == tongueCopy)
  {
    v6 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleContinuousExposeStripRevealGesture_ edges:[(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge]];
    [(SBIndirectPanGestureRecognizer *)v6 setName:@"indirectRevealContinuousExposeStripsGestureRecognizer"];
    [(SBIndirectPanGestureRecognizer *)v6 setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)v6 setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:1 forInputType:10.0];
    objc_copyWeak(&to, &self->_switcherContentController);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__SBFluidSwitcherGestureManager_indirectPanGestureRecognizerForGrabberTongue___block_invoke_2;
    v14[3] = &unk_2783C1F08;
    objc_copyWeak(&v15, &to);
    [(SBIndirectPanGestureRecognizer *)v6 setTranslationAdjustmentBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&to);
  }

  else
  {
    v6 = 0;
  }

LABEL_14:

  return v6;
}

double __78__SBFluidSwitcherGestureManager_indirectPanGestureRecognizerForGrabberTongue___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained view];
    [v11 bounds];
    v13 = v12;

    v14 = a2 - fabs(a3);
    if (a6 >= v13 * 0.5)
    {
      a2 = fmax(v14, 0.0);
    }

    else if (v14 <= 0.0)
    {
      a2 = v14;
    }

    else
    {
      a2 = 0.0;
    }
  }

  return a2;
}

- (unint64_t)indirectPanSystemGestureTypeForGrabberTongue:(id)tongue
{
  tongueCopy = tongue;
  if (self->_rightEdgeFloatingAppGrabberTongue == tongueCopy)
  {
    v5 = 36;
  }

  else if (self->_leftEdgeFloatingAppGrabberTongue == tongueCopy)
  {
    v5 = 37;
  }

  else if (self->_continuousExposeStripRevealGrabberTongue == tongueCopy)
  {
    v5 = 48;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldSuppressTongueViewForGrabberTongue:(id)tongue
{
  tongueCopy = tongue;
  if (self->_deckGrabberTongue == tongueCopy)
  {
    usesHomeAffordanceRulesForGrabberTongue = self->_usesHomeAffordanceRulesForGrabberTongue;
  }

  else
  {
    usesHomeAffordanceRulesForGrabberTongue = self->_leftEdgeFloatingAppGrabberTongue == tongueCopy || self->_rightEdgeFloatingAppGrabberTongue == tongueCopy || self->_continuousExposeStripRevealGrabberTongue == tongueCopy;
  }

  return usesHomeAffordanceRulesForGrabberTongue;
}

- (BOOL)grabberTongue:(id)tongue shouldReceiveTouch:(id)touch
{
  v54 = *MEMORY[0x277D85DE8];
  tongueCopy = tongue;
  touchCopy = touch;
  if (self->_deckGrabberTongue == tongueCopy)
  {
    if (![(SBGrabberTongue *)tongueCopy isVisible]&& self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      [(SBGrabberTongue *)tongueCopy edgeLocationForTouch:touchCopy];
      v13 = v12;
      if ([(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)tongueCopy screenEdge] edge:v12])
      {
        v10 = [(SBFluidSwitcherGestureManager *)self _isEdgeLocationInHomeAffordanceRegion:v13];
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue != tongueCopy && self->_rightEdgeFloatingAppGrabberTongue != tongueCopy)
  {
    if (self->_continuousExposeStripRevealGrabberTongue == tongueCopy)
    {
      if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
      {
        _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
        unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

        if (unlockedEnvironmentMode == 3)
        {
          if ([(SBGrabberTongue *)tongueCopy isVisible])
          {
            [(SBGrabberTongue *)tongueCopy edgeLocationForTouch:touchCopy];
            v10 = [(SBGrabberTongue *)tongueCopy isEdgeLocationInGrabberRegion:?];
LABEL_15:
            v11 = v10;
            goto LABEL_40;
          }

          v52 = 0;
          v50 = 0u;
          v51 = 0u;
          objc_msgSend__currentSlideOverConfiguration(self);
          WeakRetained = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
          if (WeakRetained)
          {
            if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
            {
              v43 = v50;
              v44 = v51;
              v45 = v52;
              if (!SBDisplayItemSlideOverIsLeftSided(&v43))
              {
LABEL_44:
                v11 = BYTE1(v52) ^ 1;
                goto LABEL_39;
              }
            }

            else
            {
              v43 = v50;
              v44 = v51;
              v45 = v52;
              if (SBDisplayItemSlideOverIsLeftSided(&v43))
              {
                goto LABEL_44;
              }
            }
          }

          v11 = 1;
          goto LABEL_39;
        }
      }

LABEL_10:
      v11 = 0;
      goto LABEL_40;
    }

LABEL_16:
    v11 = 1;
    goto LABEL_40;
  }

  [(SBGrabberTongue *)tongueCopy edgeLocationForTouch:touchCopy];
  if ([(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinSlideOverTongue:?])
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  objc_msgSend__currentSlideOverConfiguration(self);
  IsLeftSided = SBDisplayItemSlideOverIsLeftSided(&v50);
  v16 = IsLeftSided;
  if (IsLeftSided)
  {
    v17 = 2;
  }

  else
  {
    v17 = 8;
  }

  _currentLayoutState2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState2 appLayout];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  leafAppLayouts = [appLayout leafAppLayouts];
  v21 = [leafAppLayouts countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (!v21)
  {
    v11 = 0;
LABEL_36:

    goto LABEL_38;
  }

  v22 = v21;
  v38 = v17;
  v39 = _currentLayoutState2;
  v41 = tongueCopy;
  v42 = appLayout;
  v40 = touchCopy;
  v23 = *v47;
LABEL_22:
  v24 = 0;
  while (1)
  {
    if (*v47 != v23)
    {
      objc_enumerationMutation(leafAppLayouts);
    }

    v25 = *(*(&v46 + 1) + 8 * v24);
    visibleItemContainers = [WeakRetained visibleItemContainers];
    v27 = [visibleItemContainers objectForKey:v25];

    objc_msgSend_frame(v27);
    if (v16)
    {
      if (BSFloatIsZero())
      {
        break;
      }

      goto LABEL_29;
    }

    view = [WeakRetained view];
    objc_msgSend_frame(view);
    v29 = BSFloatEqualToFloat();

    if (v29)
    {
      break;
    }

LABEL_29:

    if (v22 == ++v24)
    {
      v22 = [leafAppLayouts countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v22)
      {
        goto LABEL_22;
      }

      v11 = 0;
      touchCopy = v40;
      tongueCopy = v41;
      _currentLayoutState2 = v39;
      goto LABEL_34;
    }
  }

  v30 = [v25 itemForLayoutRole:1];
  v31 = [v42 layoutRoleForItem:v30];

  _currentLayoutState2 = v39;
  v32 = [v39 elementWithRole:v31];
  workspaceEntity = [v32 workspaceEntity];
  deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];

  if (deviceApplicationSceneEntity)
  {
    sceneHandle = [deviceApplicationSceneEntity sceneHandle];
    screenEdgesDeferringSystemGestures = [sceneHandle screenEdgesDeferringSystemGestures];

    v11 = (screenEdgesDeferringSystemGestures & v38) != 0;
    leafAppLayouts = deviceApplicationSceneEntity;
    touchCopy = v40;
    tongueCopy = v41;
LABEL_34:
    appLayout = v42;
    goto LABEL_36;
  }

  v11 = 0;
  touchCopy = v40;
  tongueCopy = v41;
  appLayout = v42;
LABEL_38:

LABEL_39:
LABEL_40:

  return v11 & 1;
}

- (void)grabberTongueWillPresent:(id)present
{
  presentCopy = present;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  if (self->_deckGrabberTongue == presentCopy)
  {
    edgeProtectFeedbackGenerator = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
    [edgeProtectFeedbackGenerator activateWithCompletionBlock:0];

    goto LABEL_10;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue == presentCopy)
  {
    v6 = WeakRetained;
    v7 = 2;
LABEL_9:
    [v6 presentSlideOverEdgeProtectTongueOnEdge:v7];
    goto LABEL_10;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == presentCopy)
  {
    v6 = WeakRetained;
    v7 = 8;
    goto LABEL_9;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == presentCopy)
  {
    [WeakRetained presentContinuousExposeStripEdgeProtectTongue];
  }

LABEL_10:
}

- (void)grabberTongueWillPresentInteractively:(id)interactively withDistance:(double)distance andVelocity:(double)velocity
{
  interactivelyCopy = interactively;
  if (self->_deckGrabberTongue == interactivelyCopy)
  {
    self->_interactivelyPresentingTongue = 1;
    if (self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      v9 = interactivelyCopy;
      if (distance <= 200.0)
      {
        [(SBGrabberTongue *)interactivelyCopy dismissWithStyle:0 animated:0];
      }

      else
      {
        [(SBGrabberTongue *)interactivelyCopy presentAnimated:0];
        if (!self->_playedEdgeProtectHaptic)
        {
          edgeProtectFeedbackGenerator = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
          [edgeProtectFeedbackGenerator _privateNotificationOccurred:1010];

          self->_playedEdgeProtectHaptic = 1;
        }
      }

      [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:5];
      interactivelyCopy = v9;
    }
  }
}

- (void)grabberTongueDidPresentInteractively:(id)interactively withDistance:(double)distance andVelocity:(double)velocity
{
  interactivelyCopy = interactively;
  if (self->_deckGrabberTongue == interactivelyCopy)
  {
    self->_interactivelyPresentingTongue = 0;
    if (self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      v11 = interactivelyCopy;
      if (distance > 200.0 || velocity > 150.0)
      {
        [(SBGrabberTongue *)interactivelyCopy presentAnimated:0];
        if (!self->_playedEdgeProtectHaptic)
        {
          edgeProtectFeedbackGenerator = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
          [edgeProtectFeedbackGenerator _privateNotificationOccurred:1010];

          self->_playedEdgeProtectHaptic = 1;
        }
      }

      else
      {
        [(SBGrabberTongue *)interactivelyCopy dismissWithStyle:0 animated:0];
      }

      edgeProtectFeedbackGenerator2 = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
      [edgeProtectFeedbackGenerator2 deactivate];

      [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:3];
      self->_playedEdgeProtectHaptic = 0;
      interactivelyCopy = v11;
    }
  }
}

- (void)grabberTongueWillDismiss:(id)dismiss
{
  v20 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = WeakRetained;
  if (self->_deckGrabberTongue != dismissCopy)
  {
    if (self->_leftEdgeFloatingAppGrabberTongue == dismissCopy)
    {
      v14 = 2;
    }

    else
    {
      if (self->_rightEdgeFloatingAppGrabberTongue != dismissCopy)
      {
        if (self->_continuousExposeStripRevealGrabberTongue == dismissCopy)
        {
          [WeakRetained dismissContinuousExposeStripEdgeProtectTongue];
        }

        goto LABEL_19;
      }

      v14 = 8;
    }

    [WeakRetained dismissSlideOverEdgeProtectTongueOnEdge:v14];
    goto LABEL_19;
  }

  if (self->_usesHomeAffordanceRulesForGrabberTongue && !self->_interactivelyPresentingTongue)
  {
    forcedProminentToThinAnimationSettings = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings forcedProminentToThinAnimationSettings];
    bSAnimationSettings = [forcedProminentToThinAnimationSettings BSAnimationSettings];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_currentHomeGrabberViews;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) updateStyleWithAnimationSettings:{bSAnimationSettings, v15}];
        }

        while (v11 != v13);
        v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

LABEL_19:
}

- (UINotificationFeedbackGenerator)edgeProtectFeedbackGenerator
{
  edgeProtectFeedbackGenerator = self->_edgeProtectFeedbackGenerator;
  if (!edgeProtectFeedbackGenerator)
  {
    v4 = objc_alloc(MEMORY[0x277D757B8]);
    v5 = MEMORY[0x277D76138];
    v6 = [MEMORY[0x277CBEB98] setWithObject:&unk_2833721D0];
    v7 = [v5 privateConfigurationForTypes:v6];
    v8 = [v4 initWithConfiguration:v7];
    v9 = self->_edgeProtectFeedbackGenerator;
    self->_edgeProtectFeedbackGenerator = v8;

    edgeProtectFeedbackGenerator = self->_edgeProtectFeedbackGenerator;
  }

  return edgeProtectFeedbackGenerator;
}

- (double)additionalEdgeSpacingForHomeGrabberView:(id)view
{
  viewCopy = view;
  if (self->_interactivelyPresentingTongue || (v5 = 0.0, self->_shouldRubberbandGrabberViewForReduceMotion))
  {
    [(SBGrabberTongue *)self->_deckGrabberTongue distanceFromEdge];
    [viewCopy suggestedEdgeSpacing];
    BSUIConstrainValueWithRubberBand();
    v5 = v6;
  }

  return v5;
}

- (BOOL)shouldAllowThinStyleForHomeGrabberView:(id)view
{
  if ([(SBGrabberTongue *)self->_deckGrabberTongue isVisible])
  {
    return 0;
  }

  else
  {
    return ![(SBFluidSwitcherGestureManager *)self _shouldSuppressEdgeProtect];
  }
}

- (void)_updateHomeGrabberViewsWithAnimationMode:(int64_t)mode
{
  v18 = *MEMORY[0x277D85DE8];
  edgeProtectAnimationSettings = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings edgeProtectAnimationSettings];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_currentHomeGrabberViews;
  v6 = [(NSHashTable *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __74__SBFluidSwitcherGestureManager__updateHomeGrabberViewsWithAnimationMode___block_invoke;
        v12[3] = &unk_2783A8C18;
        v12[4] = v10;
        [MEMORY[0x277D75D18] sb_animateWithSettings:edgeProtectAnimationSettings mode:mode animations:v12 completion:0];
        [v10 updateStyle];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

uint64_t __74__SBFluidSwitcherGestureManager__updateHomeGrabberViewsWithAnimationMode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)homeGrabberViewDidRecognizeDoubleTap:(id)tap
{
  v16 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceSingleTapGatingEnabled])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(SBFluidSwitcherGestureManager *)self _scenesForHomeGrabberView:tapCopy, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          _homeAffordanceHostSceneComponent = [*(*(&v11 + 1) + 8 * v9) _homeAffordanceHostSceneComponent];
          [_homeAffordanceHostSceneComponent doubleTapGestureDidSucceed:1];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)homeGrabberViewDidFailToRecognizeDoubleTap:(id)tap
{
  v16 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceSingleTapGatingEnabled])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(SBFluidSwitcherGestureManager *)self _scenesForHomeGrabberView:tapCopy, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          _homeAffordanceHostSceneComponent = [*(*(&v11 + 1) + 8 * v9) _homeAffordanceHostSceneComponent];
          [_homeAffordanceHostSceneComponent doubleTapGestureDidSucceed:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)bannerManager:(id)manager willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  presentableCopy = presentable;
  bannerManager = [SBApp bannerManager];
  v8 = [bannerManager windowSceneForPresentable:presentableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  if ([v8 isEqual:windowScene])
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      presentedSceneBackedBanners = self->_presentedSceneBackedBanners;
      v13 = presentableCopy;
      if (!presentedSceneBackedBanners)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v15 = self->_presentedSceneBackedBanners;
        self->_presentedSceneBackedBanners = weakObjectsHashTable;

        v13 = presentableCopy;
        presentedSceneBackedBanners = self->_presentedSceneBackedBanners;
      }

      [(NSHashTable *)presentedSceneBackedBanners addObject:v13];
    }
  }

  else
  {
  }
}

- (void)bannerManager:(id)manager willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  [(NSHashTable *)self->_presentedSceneBackedBanners removeObject:presentable];
  if (![(NSHashTable *)self->_presentedSceneBackedBanners count])
  {
    presentedSceneBackedBanners = self->_presentedSceneBackedBanners;
    self->_presentedSceneBackedBanners = 0;
  }
}

- (id)_currentFlexibleWindowingAutoLayoutSpace
{
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  if (appLayout)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v5 = objc_loadWeakRetained(&self->_switcherContentController);
    view = [v5 view];
    [view bounds];
    v40 = v8;
    v41 = v7;
    v38 = v10;
    v39 = v9;

    windowScene = [WeakRetained windowScene];
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    personality = [v5 personality];
    [personality leftStatusBarPartIntersectionRegion];
    v35 = v14;
    v36 = v13;
    v16 = v15;
    v18 = v17;
    [personality rightStatusBarPartIntersectionRegion];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    displayItemLayoutAttributesCalculator = self->_displayItemLayoutAttributesCalculator;
    floatingDockController = [windowScene floatingDockController];
    [floatingDockController floatingDockHeight];
    v30 = v29;
    screen = [windowScene screen];
    [screen scale];
    v33 = -[SBDisplayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:](displayItemLayoutAttributesCalculator, "flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:", appLayout, interfaceOrientation, [windowScene isExternalDisplayWindowScene] ^ 1, objc_msgSend(v5, "prefersStripHidden"), objc_msgSend(v5, "prefersDockHidden"), v30, v32, v41, v40, v39, v38, v36, v35, v16, v18, v20, v22, v24, v26);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_currentFloatingAppLayout
{
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  floatingAppLayout = [_currentLayoutState floatingAppLayout];

  return floatingAppLayout;
}

- (SBDisplayItemSlideOverConfiguration)_currentSlideOverConfiguration
{
  _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  if (_slideOverDisplayItem)
  {
    _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
    _slideOverLeafAppLayout = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
    displayOrdinal = [_currentLayoutState displayOrdinal];
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v12 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:_slideOverDisplayItem inAppLayout:_slideOverLeafAppLayout displayOrdinal:displayOrdinal orientation:v11];
    [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
  }

  else
  {
    SBDisplayItemSlideOverConfigurationNone(retstr);
  }

  return result;
}

- (id)_slideOverDisplayItem
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  _slideOverDisplayItem = [WeakRetained _slideOverDisplayItem];

  return _slideOverDisplayItem;
}

- (id)_slideOverLeafAppLayout
{
  _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  if (_slideOverDisplayItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    appLayouts = [WeakRetained appLayouts];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__SBFluidSwitcherGestureManager__slideOverLeafAppLayout__block_invoke;
    v10[3] = &unk_2783A8CB8;
    v6 = _slideOverDisplayItem;
    v11 = v6;
    v7 = [appLayouts bs_firstObjectPassingTest:v10];
    v8 = [v7 leafAppLayoutForItem:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_firstFloatingAppLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  appLayouts = [WeakRetained appLayouts];
  v4 = [appLayouts bs_firstObjectPassingTest:&__block_literal_global_336];

  return v4;
}

- (id)_indirectPresentFloatingAppGestureRecognizerForEdge:(unint64_t)edge
{
  if (edge == 2)
  {
    v5 = 248;
LABEL_5:
    indirectEdgePullGestureRecognizer = [*(&self->super.isa + v5) indirectEdgePullGestureRecognizer];

    return indirectEdgePullGestureRecognizer;
  }

  if (edge == 8)
  {
    v5 = 240;
    goto LABEL_5;
  }

  indirectEdgePullGestureRecognizer = 0;

  return indirectEdgePullGestureRecognizer;
}

- (id)_grabberTongueForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  p_rightEdgeFloatingAppGrabberTongue = &self->_rightEdgeFloatingAppGrabberTongue;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  if (edgePullGestureRecognizer == recognizerCopy)
  {
    goto LABEL_8;
  }

  indirectEdgePullGestureRecognizer = [(SBGrabberTongue *)*p_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (indirectEdgePullGestureRecognizer == recognizerCopy)
  {
    goto LABEL_9;
  }

  p_rightEdgeFloatingAppGrabberTongue = &self->_leftEdgeFloatingAppGrabberTongue;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  if (edgePullGestureRecognizer == recognizerCopy)
  {
    goto LABEL_8;
  }

  indirectEdgePullGestureRecognizer2 = [(SBGrabberTongue *)*p_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (indirectEdgePullGestureRecognizer2 == recognizerCopy)
  {
    goto LABEL_9;
  }

  p_rightEdgeFloatingAppGrabberTongue = &self->_continuousExposeStripRevealGrabberTongue;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue edgePullGestureRecognizer];
  if (edgePullGestureRecognizer == recognizerCopy)
  {
LABEL_8:

    goto LABEL_9;
  }

  indirectEdgePullGestureRecognizer3 = [(SBGrabberTongue *)*p_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (indirectEdgePullGestureRecognizer3 != recognizerCopy)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v10 = *p_rightEdgeFloatingAppGrabberTongue;
LABEL_10:

  return v10;
}

- (BOOL)_isBannerOccludingRegionAtReferencePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  notificationDispatcher = [SBApp notificationDispatcher];
  bannerDestination = [notificationDispatcher bannerDestination];

  if ([bannerDestination isPresentingBanner])
  {
    if ([bannerDestination isPresentingBannerInLongLook])
    {
      v7 = 1;
    }

    else
    {
      [bannerDestination presentedBannerScreenFrame];
      v11 = CGRectInset(v10, -30.0, -30.0);
      v9.x = x;
      v9.y = y;
      v7 = CGRectContainsPoint(v11, v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_areContinuousExposeStripsAvailableWithReason:(id *)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [v6 windowManagementContext];
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  personality = [WeakRetained personality];
  windowingStrip = [personality windowingStrip];

  if (windowingStrip)
  {
    appLayoutsInStrip = [windowingStrip appLayoutsInStrip];
    v12 = [appLayoutsInStrip count] != 0;
  }

  else
  {
    v12 = 0;
  }

  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    if (v12 | (([windowManagementContext isFlexibleWindowingEnabled] & 1) == 0))
    {
      if ([WeakRetained prefersStripHiddenAndDisabled])
      {
        v13 = 0;
        v14 = @"PrefersStripHiddenAndDisabled";
      }

      else if ([_currentLayoutState unlockedEnvironmentMode] == 3)
      {
        if ([_currentLayoutState isFloatingSwitcherVisible])
        {
          v13 = 0;
          v14 = @"FloatingSwitcherVisible";
        }

        else
        {
          zStackParticipant = self->_zStackParticipant;
          if (zStackParticipant && [(SBFZStackParticipant *)zStackParticipant activationState])
          {
            v13 = 0;
            v14 = @"NotForegroundActiveInZStack";
          }

          else
          {
            appLayout = [_currentLayoutState appLayout];
            v18 = [appLayout itemForLayoutRole:1];

            bundleIdentifier = [v18 bundleIdentifier];
            if (bundleIdentifier)
            {
              v23 = v18;
              v20 = +[SBApplicationController sharedInstance];
              v21 = [v20 applicationWithBundleIdentifier:bundleIdentifier];

              v14 = @"Available";
              if (v21)
              {
                alwaysMaximizedInChamois = [v21 alwaysMaximizedInChamois];
                if (alwaysMaximizedInChamois)
                {
                  v14 = @"ApplicationAlwaysMaximized";
                }

                v13 = alwaysMaximizedInChamois ^ 1;
              }

              else
              {
                v13 = 1;
              }

              v18 = v23;
            }

            else
            {
              v13 = 1;
              v14 = @"Available";
            }
          }
        }
      }

      else
      {
        v13 = 0;
        v14 = @"NotInApplication";
      }
    }

    else
    {
      v13 = 0;
      v14 = @"StripIsEmpty";
    }
  }

  else
  {
    v13 = 0;
    v14 = @"FeatureNotEnabled";
  }

  if (reason)
  {
    *reason = v14;
  }

  return v13;
}

- (BOOL)_areContinuousExposeStripsOccludedOrHiddenWithOutReason:(id *)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [v6 windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    if ([WeakRetained prefersStripHiddenAndDisabled])
    {
      LOBYTE(v9) = 0;
      v10 = @"PrefersStripHiddenAndDisabled";
    }

    else if ([WeakRetained _areContinuousExposeStripsUnoccluded])
    {
      LOBYTE(v9) = 0;
      v10 = @"StripsManuallyUnoccluded";
    }

    else if ([WeakRetained prefersStripHidden] && !objc_msgSend(WeakRetained, "prefersStripHiddenAndDisabled"))
    {
      LOBYTE(v9) = 1;
      v10 = @"PrefersStripHidden";
    }

    else
    {
      _currentFlexibleWindowingAutoLayoutSpace = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
      v9 = [_currentFlexibleWindowingAutoLayoutSpace isStripVisible] ^ 1;

      v10 = @"StripVisible";
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v10 = @"FeatureNotEnabled";
  }

  if (reason)
  {
    *reason = v10;
  }

  return v9;
}

- (unint64_t)_continuousExposeStripEdge
{
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

- (void)_updateGestureDefaults
{
  v3 = +[SBDefaults localDefaults];
  gestureDefaults = [v3 gestureDefaults];

  self->_multitaskingGesturesRequireEducation = [gestureDefaults multitaskingGesturesRequireEducation];
  self->_multitaskingGesturesUserPreferenceIsOff = [gestureDefaults isSystemGesturesAllowed] ^ 1;
}

- (id)_scenesForHomeGrabberView:(id)view
{
  v4 = [(SBFluidSwitcherGestureManager *)self _appLayoutForHomeGrabberView:view];
  if (v4)
  {
    v5 = [(SBFluidSwitcherGestureManager *)self _scenesForAppLayout:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v6 = v5;

  return v6;
}

- (id)_appLayoutForHomeGrabberView:(id)view
{
  viewCopy = view;
  _currentLayoutState = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];
  floatingAppLayout = [_currentLayoutState floatingAppLayout];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = WeakRetained;
  if (!appLayout)
  {
    v10 = 0;
    if (floatingAppLayout)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [WeakRetained homeGrabberViewForAppLayout:appLayout];
  if (!floatingAppLayout)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [v9 homeGrabberViewForAppLayout:floatingAppLayout];
LABEL_6:
  v12 = [viewCopy isEqual:v10];
  v13 = appLayout;
  if ((v12 & 1) != 0 || (v14 = [viewCopy isEqual:v11], v13 = floatingAppLayout, v14))
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_scenesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  dataSource = [WeakRetained dataSource];
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__SBFluidSwitcherGestureManager__scenesForAppLayout___block_invoke;
    v9[3] = &unk_2783AED40;
    v10 = dataSource;
    v11 = WeakRetained;
    v12 = v5;
    [layoutCopy enumerate:v9];
  }

  return v5;
}

void __53__SBFluidSwitcherGestureManager__scenesForAppLayout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) switcherContentController:*(a1 + 40) deviceApplicationSceneHandleForDisplayItem:a3];
  v4 = [v5 sceneIfExists];
  [*(a1 + 48) bs_safeAddObject:v4];
}

- (BOOL)_isHomeAffordanceSingleTapGatingEnabled
{
  v3 = _UIHomeAffordanceSingleTapGatingEnabled();
  if (v3)
  {
    homeGrabberSettings = self->_homeGrabberSettings;

    LOBYTE(v3) = [(SBFHomeGrabberSettings *)homeGrabberSettings isSingleTapGatingEnabled];
  }

  return v3;
}

- (BOOL)_isHomeAffordanceHitTestRectForAppLayoutRelevant:(id)relevant
{
  relevantCopy = relevant;
  if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]== 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    _windowManagementContext = [WeakRetained _windowManagementContext];
    if ([_windowManagementContext isChamoisOrFlexibleWindowing])
    {
      v7 = [WeakRetained appLayoutContainsAnUnoccludedMaximizedDisplayItem:relevantCopy];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isLiveResizeGestureWithinPreferredLiveResizeRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  v5 = [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer _activeEventOfType:0];
  v6 = [v5 touchesForGestureRecognizer:self->_liveWindowResizeGestureRecognizer];
  anyObject = [v6 anyObject];

  _UISystemGestureLocationForTouchInView();
  v9 = v8;
  v11 = v10;
  [view bounds];
  UIRectGetCenter();
  if (v9 < v12 && v11 < v13)
  {
    v17 = 1;
  }

  else if (v9 >= v12 || v11 < v13)
  {
    v16 = 2;
    if (v9 < v12 || v11 >= v13)
    {
      v16 = 0;
    }

    if (v9 >= v12 && v11 < v13 || v9 < v12 || v11 < v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = 8;
    }
  }

  else
  {
    v17 = 4;
  }

  _currentFlexibleWindowingAutoLayoutSpace = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
  v19 = (~[_currentFlexibleWindowingAutoLayoutSpace ownedDisplayRectCorners] & v17) == 0 && -[SBFluidSwitcherGestureManager _shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:](self, "_shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:", self->_liveWindowResizeGestureRecognizer, anyObject, v17, 0, 0) || -[SBFluidSwitcherGestureManager _shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:](self, "_shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:", self->_liveWindowResizeGestureRecognizer, anyObject, -1, 1, 0);

  return v19;
}

- (BOOL)_isLiveResizeGestureWithinTopEdgeResizeRegionForTouch
{
  v3 = [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer _activeEventOfType:0];
  v4 = [v3 touchesForGestureRecognizer:self->_liveWindowResizeGestureRecognizer];
  anyObject = [v4 anyObject];

  v6 = (![anyObject _isPointerTouch] || objc_msgSend(anyObject, "type")) && -[SBFluidSwitcherGestureManager _shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:](self, "_shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:", self->_liveWindowResizeGestureRecognizer, anyObject, -1, 0, 15) && -[SBFluidSwitcherPanGestureRecognizer selectedEdge](self->_liveWindowResizeGestureRecognizer, "selectedEdge") == 1;
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFluidSwitcherGestureManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFluidSwitcherGestureManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFluidSwitcherGestureManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBFluidSwitcherGestureManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_homeGestureSettings == settings)
  {
    block[5] = v4;
    block[6] = v5;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SBFluidSwitcherGestureManager_settings_changedValueForKey___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __61__SBFluidSwitcherGestureManager_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSwitcherBottomEdgeGesturePresence];
  [*(a1 + 32) _updateDeckSwitcherInSwitcherGesturePresence];
  v2 = *(a1 + 32);

  return [v2 _updateExclusionTrapezoidDebugView];
}

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_userClickInAppInteractionGestureRecognizer == failed)
  {
    failedCopy = failed;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [WeakRetained handleUserClickInAppInteractionGesture:failedCopy];
  }
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_switcherContentController);
  view = [v6 view];

  _slideOverDisplayItem = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  if (!_slideOverDisplayItem)
  {
    goto LABEL_8;
  }

  objc_msgSend__currentSlideOverConfiguration(self);
  if (v16 != 1)
  {
    goto LABEL_8;
  }

  window = [view window];
  if (window || ([WeakRetained layoutState], window = objc_claimAutoreleasedReturnValue(), objc_msgSend(window, "unlockedEnvironmentMode") != 1))
  {

LABEL_8:
    goto LABEL_9;
  }

  indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;

  if (indirectDismissFloatingApplicationGestureRecognizer == recognizerCopy)
  {
    windowScene = [WeakRetained windowScene];
    homeScreenController = [windowScene homeScreenController];
    homeScreenViewController = [homeScreenController homeScreenViewController];
    view2 = [homeScreenViewController view];

    goto LABEL_10;
  }

LABEL_9:
  view2 = view;
LABEL_10:

  return view2;
}

- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  mEMORY[0x277D26708] = [MEMORY[0x277D26708] sharedInstance];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  rect = *MEMORY[0x277CBF3A0];
  v15 = objc_opt_class();
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  [v15 suggestedSizeForContentWidth:mEMORY[0x277D26708] withSettings:CGRectGetWidth(v35)];
  v17 = v16;
  v19 = v18;
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  Width = CGRectGetWidth(v36);
  v37.origin.x = rect;
  v37.origin.y = v14;
  v37.size.width = v17;
  v37.size.height = v19;
  v21 = (Width - CGRectGetWidth(v37)) * 0.5;
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  CGRectGetHeight(v38);
  v39.origin.x = v21;
  v39.origin.y = v14;
  v39.size.width = v17;
  v39.size.height = v19;
  CGRectGetHeight(v39);
  [mEMORY[0x277D26708] edgeSpacing];
  SBScreenScale();
  BSRectRoundForScale();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (SBSwitcherContentViewControlling)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  contentViewController = [WeakRetained contentViewController];

  return contentViewController;
}

- (id)acquireSystemApertureSuppressionAssertionForBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  objc_initWeak(&location, self);
  v8 = [_SBFluidSwitcherSystemApertureSuppressionAssertion alloc];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke;
  v15 = &unk_2783C1FD0;
  objc_copyWeak(&v16, &location);
  v9 = [(_SBFluidSwitcherSystemApertureSuppressionAssertion *)v8 initWithSceneID:sceneIdentifierCopy bundleID:identifierCopy invalidationBlock:&v12];
  [(NSMutableSet *)self->_suppressionAssertions addObject:v9, v12, v13, v14, v15];
  v10 = SBLogSystemApertureController([(SBFluidSwitcherGestureManager *)self _updateZStackParticipantWithReason:@"fluid switcher gesture manager system aperture suppression assertion creation"]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349570;
    v19 = v9;
    v20 = 2114;
    v21 = identifierCopy;
    v22 = 2114;
    v23 = sceneIdentifierCopy;
    _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "Adding System Aperture Transition Suppression Assertion <%{public}lx> for %{public}@, %{public}@", buf, 0x20u);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

void __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[17] removeObject:v3];
    v6 = SBLogSystemApertureController([v5 _updateZStackParticipantWithReason:@"fluid switcher gesture manager system aperture suppression assertion invalidation"]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke_cold_1(v3, v6);
    }
  }
}

- (void)updateForWindowManagementContext:(id)context
{
  contextCopy = context;
  [(SBFluidSwitcherGestureManager *)self _updateFluidDragAndDropManagerPresenceForWindowManagementContext:contextCopy];
  [(SBFluidSwitcherGestureManager *)self _updateFloatingApplicationGestureRecognizerPresenceForWindowManagementContext:contextCopy];
  [(SBFluidSwitcherGestureManager *)self _updateChamoisGestureRecognizerPresenceForWindowManagementContext:contextCopy];
}

- (void)tickleContinuousExposeStripRevealGrabberTongueIfVisible
{
  if ([(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue isVisible])
  {
    continuousExposeStripRevealGrabberTongue = self->_continuousExposeStripRevealGrabberTongue;

    [(SBGrabberTongue *)continuousExposeStripRevealGrabberTongue presentAnimated:1 autoDismiss:1];
  }
}

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBFluidSwitcherGestureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFluidSwitcherViewController)switcherContentController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);

  return WeakRetained;
}

- (void)_handleSwitcherPanGestureBegan:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SBSystemGestureRecognizerStateDescription([a1 state]);
  v7 = [a2 activeGestureTransaction];
  OUTLINED_FUNCTION_0_52();
  OUTLINED_FUNCTION_1_36(&dword_21ED4E000, v8, v9, "Switcher gesture recognizer did begin: <%{public}@:%{public}p> (%{public}@), active gesture transaction:%{public}@", v10, v11, v12, v13);
}

- (void)_handleSwitcherPanGestureEnded:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SBSystemGestureRecognizerStateDescription([a1 state]);
  v7 = [a2 activeGestureTransaction];
  OUTLINED_FUNCTION_0_52();
  OUTLINED_FUNCTION_1_36(&dword_21ED4E000, v8, v9, "Switcher gesture recognizer did end: <%{public}@:%{public}p> (%{public}@), active gesture transaction:%{public}@", v10, v11, v12, v13);
}

- (void)gestureRecognizerShouldBegin:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a1 name];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [a2 name];
  v12 = 138544642;
  v13 = v7;
  v14 = 2050;
  v15 = a1;
  v16 = 2114;
  v17 = v8;
  v18 = 2114;
  v19 = v10;
  v20 = 2050;
  v21 = a2;
  v22 = 2114;
  v23 = v11;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Preventing the gesture <%{public}@:%{public}p> (%{public}@) because we have a transaction responding to a gesture already: <%{public}@:%{public}p> (%{public}@)", &v12, 0x3Eu);
}

uint64_t __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *a2 = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);

  return [v4 handleFailureInMethod:v5 object:v6 file:@"SBFluidSwitcherGestureManager.m" lineNumber:3607 description:@"Item counts should match"];
}

void __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 bundleID];
  v5 = [a1 sceneID];
  v6 = 134349570;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Removing System Aperture Transition Suppression Assertion <%{public}lx> for %{public}@, %@", &v6, 0x20u);
}

@end