@interface WQAOverlayCoordinator
- (BOOL)_astFocusRingIsVisible;
- (BOOL)_astHasDoubleTapActivationGesture;
- (BOOL)_shouldShowHintsForQuickActions:(id)actions;
- (WQAOverlayCoordinator)initWithDataSource:(id)source;
- (WQAOverlayDataSource)dataSource;
- (id)_createNonAnimatingShapeLayerFromPath:(id)path;
- (id)_localizedBannerInstructionText;
- (void)_mainQueue_addAnimatedShapeLayerForQuickAction:(id)action;
- (void)_mainQueue_backlightDidTurnOff;
- (void)_mainQueue_backlightDidTurnOn;
- (void)_mainQueue_cleanupHintViews;
- (void)_mainQueue_cleanupShapeLayers;
- (void)_mainQueue_removeShapeLayer:(id)layer;
- (void)_mainQueue_showHintsWithPrimaryQuickActions:(id)actions completion:(id)completion;
- (void)_mainQueue_showUIForQuickActions:(id)actions;
- (void)_updateGestureSettings;
- (void)animateConfirmationForQuickAction:(id)action completion:(id)completion;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)dealloc;
- (void)refreshOverlaysIfNecessary;
- (void)stopCurrentOverlays;
@end

@implementation WQAOverlayCoordinator

- (WQAOverlayCoordinator)initWithDataSource:(id)source
{
  sourceCopy = source;
  v27.receiver = self;
  v27.super_class = WQAOverlayCoordinator;
  v5 = [(WQAOverlayCoordinator *)&v27 init];
  v6 = v5;
  if (v5)
  {
    [(WQAOverlayCoordinator *)v5 setDataSource:sourceCopy];
    array = [MEMORY[0x277CBEB18] array];
    [(WQAOverlayCoordinator *)v6 setQuickActionShapeLayers:array];

    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] addObserver:v6];

    mEMORY[0x277CF0880]2 = [MEMORY[0x277CF0880] sharedBacklight];
    v10 = [mEMORY[0x277CF0880]2 backlightState] & 0xFFFFFFFFFFFFFFFELL;

    if (v10 == 2)
    {
      [(WQAOverlayCoordinator *)v6 refreshOverlaysIfNecessary];
    }

    [(WQAOverlayCoordinator *)v6 _updateGestureSettings];
    if (WatchControlSettingsLibraryCore(0))
    {
      sharedInstance = [getWatchControlSettingsClass() sharedInstance];
      [sharedInstance addSettingsObserver:v6];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v13 = getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr;
      v36 = getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr;
      if (!getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr)
      {
        v28 = MEMORY[0x277D85DD0];
        v29 = 3221225472;
        v30 = __getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_block_invoke;
        v31 = &unk_279E65C30;
        v32 = &v33;
        v14 = WatchControlSettingsLibrary();
        v15 = dlsym(v14, "kWatchControlReceivedActivationGestureDidChange");
        *(v32[1] + 24) = v15;
        getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr = *(v32[1] + 24);
        v13 = v34[3];
      }

      _Block_object_dispose(&v33, 8);
      if (v13)
      {
        v16 = *v13;
        v17 = *v13;
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, updateGestureSettings, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v18 = CFNotificationCenterGetDarwinNotifyCenter();
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v19 = getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr;
        v36 = getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr;
        if (!getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr)
        {
          v28 = MEMORY[0x277D85DD0];
          v29 = 3221225472;
          v30 = __getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_block_invoke;
          v31 = &unk_279E65C30;
          v32 = &v33;
          v20 = WatchControlSettingsLibrary();
          v21 = dlsym(v20, "kWatchControlInputSourcesRequireFocusRingDidChange");
          *(v32[1] + 24) = v21;
          getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr = *(v32[1] + 24);
          v19 = v34[3];
        }

        _Block_object_dispose(&v33, 8);
        if (v19)
        {
          v22 = *v19;
          v23 = *v19;
          CFNotificationCenterAddObserver(v18, v6, updateGestureSettings, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          goto LABEL_12;
        }
      }

      else
      {
        [WQAOverlayCoordinator initWithDataSource:];
      }

      [WQAOverlayCoordinator initWithDataSource:];
      v26 = v25;
      _Block_object_dispose(&v33, 8);
      _Unwind_Resume(v26);
    }
  }

LABEL_12:

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
  [mEMORY[0x277CF0880] removeObserver:self];

  v5.receiver = self;
  v5.super_class = WQAOverlayCoordinator;
  [(WQAOverlayCoordinator *)&v5 dealloc];
}

- (void)animateConfirmationForQuickAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke;
  block[3] = &unk_279E65A70;
  v11 = actionCopy;
  v12 = completionCopy;
  block[4] = self;
  v8 = actionCopy;
  v9 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke(id *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  [a1[4] _mainQueue_cleanupShapeLayers];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2;
  v55[3] = &unk_279E65980;
  v2 = a1[6];
  v55[4] = a1[4];
  v56 = v2;
  v3 = MEMORY[0x2743D34B0](v55);
  v4 = [a1[5] animationHandler];
  v5 = wqa_overlay_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = a1[5];
      *buf = 138412546;
      v58 = v4;
      v59 = 2112;
      v60 = v7;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "custom animation handler: %@ will handle confirmation for quick action: %@", buf, 0x16u);
    }

    [v4 quickActionWillActivate:a1[5]];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    if (v6)
    {
      v8 = a1[5];
      *buf = 138412290;
      v58 = v8;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "animating confirmation for quick action: %@", buf, 0xCu);
    }

    v9 = [a1[5] quickActionHostingView];
    v10 = [a1[5] quickActionPrimaryView];
    v11 = [a1[5] quickActionPath];
    v12 = v11;
    if (v9 && v10 && v11)
    {
      if ([a1[5] allowsResizingAnimations])
      {
        v13 = [a1[4] _createNonAnimatingShapeLayerFromPath:v12];
        v14 = [v9 layer];
        [v14 addSublayer:v13];

        v15 = MEMORY[0x277D75D18];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_285;
        v51[3] = &unk_279E659A8;
        v52 = v10;
        v53 = v9;
        v54 = v13;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2_286;
        v47[3] = &unk_279E65A20;
        v48 = v52;
        v49 = v54;
        v50 = v3;
        v16 = v54;
        [v15 animateWithDuration:v51 animations:v47 completion:0.3];
      }

      else
      {
        v17 = [v9 parentFocusEnvironment];
        v18 = [v17 focusItemContainer];
        v19 = [v18 coordinateSpace];

        [v9 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [v9 coordinateSpace];
        [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v30, v32, v34, v36}];
        v38 = WQADefaultTintColor(v37);
        [v37 setBackgroundColor:v38];

        v39 = [MEMORY[0x277CD9F90] layer];
        [v39 setFrame:{v30, v32, v34, v36}];
        [v39 setFillRule:*MEMORY[0x277CDA250]];
        Mutable = CGPathCreateMutable();
        CGPathAddPath(Mutable, 0, [v12 CGPath]);
        [v39 setPath:Mutable];
        v41 = [v37 layer];
        [v41 setMask:v39];

        [v9 addSubview:v37];
        v42 = MEMORY[0x277D75D18];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_5;
        v44[3] = &unk_279E65A48;
        v45 = v37;
        v46 = v3;
        v43 = v37;
        [v42 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v44 options:0 animations:0.0 completion:0.0];
      }
    }

    else
    {
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    (*(v1 + 16))(v1, 1);
  }

  return AXPerformBlockOnMainThreadAfterDelay();
}

void *__70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_285(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  v3 = v4;
  result = [*(a1 + 32) setTransform:&v3];
  if (*(a1 + 32) != *(a1 + 40))
  {
    v3 = v4;
    return [*(a1 + 48) setAffineTransform:&v3];
  }

  return result;
}

void __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2_286(id *a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_3_287;
  v6[3] = &unk_279E659D0;
  v7 = a1[4];
  v8 = a1[5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_4;
  v3[3] = &unk_279E659F8;
  v5 = a1[6];
  v4 = a1[5];
  [v2 animateWithDuration:v6 animations:v3 completion:0.3];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_3_287(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, 1.0, 1.0);
  v2 = *(a1 + 32);
  v6 = v7;
  [v2 setTransform:&v6];
  CGAffineTransformMakeScale(&v5, 1.2, 1.2);
  v3 = *(a1 + 40);
  v6 = v5;
  [v3 setAffineTransform:&v6];
  return [*(a1 + 40) setOpacity:0.0];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeFromSuperlayer];
}

void __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.7];
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_6;
  v6[3] = &unk_279E65958;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_7;
  v3[3] = &unk_279E659F8;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v6 options:v3 animations:0.3 completion:0.0];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)stopCurrentOverlays
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WQAOverlayCoordinator_stopCurrentOverlays__block_invoke;
  block[3] = &unk_279E65958;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateGestureSettings
{
  if (WatchControlSettingsLibraryCore(0))
  {
    sharedInstance = [getWatchControlSettingsClass() sharedInstance];
    -[WQAOverlayCoordinator setReceivedActivationGesture:](self, "setReceivedActivationGesture:", [sharedInstance receivedActivationGesture]);
    -[WQAOverlayCoordinator setInputSourcesRequireFocusRing:](self, "setInputSourcesRequireFocusRing:", [sharedInstance inputSourcesRequireFocusRing]);
    greyActivationGesture = [sharedInstance greyActivationGesture];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getWCGreyEventNoneSymbolLoc_ptr;
    v12 = getWCGreyEventNoneSymbolLoc_ptr;
    if (!getWCGreyEventNoneSymbolLoc_ptr)
    {
      v6 = WatchControlSettingsLibrary();
      v10[3] = dlsym(v6, "WCGreyEventNone");
      getWCGreyEventNoneSymbolLoc_ptr = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      [WQAOverlayCoordinator initWithDataSource:];
      v8 = v7;
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    [(WQAOverlayCoordinator *)self setHasNoActivationGesture:greyActivationGesture == *v5];
  }
}

- (BOOL)_astFocusRingIsVisible
{
  v2 = _AXSWatchControlEnabled();
  if (v2)
  {
    LOBYTE(v2) = _AXSFullKeyboardAccessFocusRingEnabled() != 0;
  }

  return v2;
}

- (BOOL)_astHasDoubleTapActivationGesture
{
  if (!_AXSWatchControlEnabled())
  {
    return 0;
  }

  sharedInstance = [getWatchControlSettingsClass() sharedInstance];
  v3 = [sharedInstance greyActivationGesture] == 3;

  return v3;
}

- (void)refreshOverlaysIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
  backlightState = [mEMORY[0x277CF0880] backlightState];

  if (backlightState <= 1)
  {
    v6 = wqa_overlay_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272AAE000, v6, OS_LOG_TYPE_INFO, "backlight is off, skipping refresh", buf, 2u);
    }

    return;
  }

  _astFocusRingIsVisible = [(WQAOverlayCoordinator *)self _astFocusRingIsVisible];
  if (_astFocusRingIsVisible)
  {
    v8 = wqa_overlay_log(_astFocusRingIsVisible);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "AST focus ring is visible, hide all overlays";
LABEL_11:
      _os_log_impl(&dword_272AAE000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  _astHasDoubleTapActivationGesture = [(WQAOverlayCoordinator *)self _astHasDoubleTapActivationGesture];
  if (_astHasDoubleTapActivationGesture)
  {
    v8 = wqa_overlay_log(_astHasDoubleTapActivationGesture);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "AST has double tap activation gesture, hide all overlays";
      goto LABEL_11;
    }

LABEL_12:

    [(WQAOverlayCoordinator *)self stopCurrentOverlays];
    return;
  }

  if (_AXSWatchControlEnabled() && [(WQAOverlayCoordinator *)self inputSourcesRequireFocusRing])
  {
    hasNoActivationGesture = [(WQAOverlayCoordinator *)self hasNoActivationGesture];
    if (hasNoActivationGesture)
    {
      v8 = wqa_overlay_log(hasNoActivationGesture);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "activation gesture set to none, hide all overlays";
      goto LABEL_11;
    }

    receivedActivationGesture = [(WQAOverlayCoordinator *)self receivedActivationGesture];
    if (receivedActivationGesture)
    {
      v8 = wqa_overlay_log(receivedActivationGesture);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "already received activation gesture, hide all overlays";
      goto LABEL_11;
    }
  }

  dataSource = [(WQAOverlayCoordinator *)self dataSource];
  v14 = [dataSource quickActionsForOverlayCoordinator:self];

  if ([v14 count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          identifier = [v21 identifier];
          [dictionary setObject:v21 forKeyedSubscript:identifier];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    v23 = dictionary;
    AXPerformBlockOnMainThread();
  }

  else
  {
    v24 = wqa_overlay_log(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272AAE000, v24, OS_LOG_TYPE_INFO, "no more quick actions, cleaning up overlays", buf, 2u);
    }

    [(WQAOverlayCoordinator *)self stopCurrentOverlays];
  }
}

void __51__WQAOverlayCoordinator_refreshOverlaysIfNecessary__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB58] indexSet];
  v3 = [*(a1 + 32) quickActionShapeLayers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [*(a1 + 32) quickActionShapeLayers];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [v7 superlayer];

      if (v8)
      {
        v9 = *(a1 + 40);
        v10 = [v7 quickActionIdentifier];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11 && (v12 = [v11 currentVisualsToken], v12 == objc_msgSend(v7, "quickActionVisualsToken")))
        {
          v13 = *(a1 + 40);
          v14 = [v7 quickActionIdentifier];
          [v13 removeObjectForKey:v14];
        }

        else
        {
          [*(a1 + 32) _mainQueue_removeShapeLayer:v7];
          [v2 addIndex:v5];
        }
      }

      else
      {
        [v2 addIndex:v5];
      }

      ++v5;
      v15 = [*(a1 + 32) quickActionShapeLayers];
      v16 = [v15 count];
    }

    while (v5 < v16);
  }

  v17 = [v2 count];
  if (v17)
  {
    v18 = wqa_overlay_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v2;
      _os_log_impl(&dword_272AAE000, v18, OS_LOG_TYPE_INFO, "removing shape layers at indeces: %@", &v22, 0xCu);
    }

    v19 = [*(a1 + 32) quickActionShapeLayers];
    [v19 removeObjectsAtIndexes:v2];
  }

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) allValues];
  [v20 _mainQueue_showUIForQuickActions:v21];
}

- (void)_mainQueue_removeShapeLayer:(id)layer
{
  v8 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = wqa_overlay_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = layerCopy;
    _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "removing shape layer: %@", &v6, 0xCu);
  }

  [layerCopy removeFromSuperlayer];
}

- (void)_mainQueue_addAnimatedShapeLayerForQuickAction:(id)action
{
  v28 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  animationHandler = [actionCopy animationHandler];
  v6 = animationHandler;
  if (animationHandler)
  {
    v7 = wqa_overlay_log(animationHandler);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = actionCopy;
      _os_log_impl(&dword_272AAE000, v7, OS_LOG_TYPE_INFO, "animation handler: %@ will handle pulse for quick action: %@", &v24, 0x16u);
    }

    [v6 quickActionWillPulse:actionCopy];
  }

  else
  {
    quickActionHostingView = [actionCopy quickActionHostingView];
    quickActionPath = [actionCopy quickActionPath];
    v10 = quickActionPath;
    if (quickActionHostingView && quickActionPath)
    {
      v11 = wqa_overlay_log(quickActionPath);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = actionCopy;
        _os_log_impl(&dword_272AAE000, v11, OS_LOG_TYPE_INFO, "adding shape layer for quick action: %@", &v24, 0xCu);
      }

      v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      [v12 setFromValue:&unk_2882248C8];
      [v12 setToValue:&unk_2882248D8];
      [v12 setAutoreverses:1];
      [v12 setDuration:1.5];
      LODWORD(v13) = 2139095039;
      [v12 setRepeatCount:v13];
      v14 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v12 setTimingFunction:v14];

      LODWORD(v15) = 2139095040;
      [v12 setRepeatCount:v15];
      v16 = +[WQAShapeLayer layer];
      identifier = [actionCopy identifier];
      [v16 setQuickActionIdentifier:identifier];

      [v16 setQuickActionVisualsToken:{objc_msgSend(actionCopy, "currentVisualsToken")}];
      [v16 setOpacity:0.0];
      [v16 setPath:{objc_msgSend(v10, "CGPath")}];
      [v10 bounds];
      [v16 setBounds:?];
      [v10 bounds];
      MidX = CGRectGetMidX(v29);
      [v10 bounds];
      v19 = [v16 setPosition:{MidX, CGRectGetMidY(v30)}];
      v20 = WQADefaultTintColor(v19);
      [v16 setStrokeColor:{objc_msgSend(v20, "CGColor")}];

      [v16 setLineWidth:WQADefaultShapeLineWidth()];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v16 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

      layer = [quickActionHostingView layer];
      [layer addSublayer:v16];

      [v16 addAnimation:v12 forKey:@"animations"];
      quickActionShapeLayers = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
      [quickActionShapeLayers addObject:v16];
    }
  }
}

- (id)_createNonAnimatingShapeLayerFromPath:(id)path
{
  v3 = MEMORY[0x277CD9F90];
  pathCopy = path;
  layer = [v3 layer];
  [layer setPath:{objc_msgSend(pathCopy, "CGPath")}];
  [pathCopy bounds];
  [layer setBounds:?];
  [pathCopy bounds];
  MidX = CGRectGetMidX(v20);
  [pathCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v15 = [layer setPosition:{MidX, CGRectGetMidY(v21)}];
  v16 = WQADefaultTintColor(v15);
  [layer setStrokeColor:{objc_msgSend(v16, "CGColor")}];

  [layer setLineWidth:WQADefaultShapeLineWidth()];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  return layer;
}

- (BOOL)_shouldShowHintsForQuickActions:(id)actions
{
  v24 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  applicationState = [mEMORY[0x277D75128] applicationState];

  if (applicationState)
  {
    v8 = wqa_overlay_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272AAE000, v8, OS_LOG_TYPE_INFO, "will not show quick action banner because UIApp is not active", buf, 2u);
    }

    v9 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = actionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if ([v15 canShowOverlays])
        {
          break;
        }

        animationHandler = [v15 animationHandler];

        if (animationHandler)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      if ([(WQAOverlayCoordinator *)self _astFocusRingIsVisible])
      {
        goto LABEL_16;
      }

      v9 = _AXSWatchQuickActionBannerAppearance() == 0;
    }

    else
    {
LABEL_14:

LABEL_16:
      v9 = 1;
    }
  }

  return v9;
}

- (void)_mainQueue_showUIForQuickActions:(id)actions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [actions ax_filteredArrayUsingBlock:&__block_literal_global_0];
  if ([v4 count])
  {
    currentShapeLayersForHint = [(WQAOverlayCoordinator *)self currentShapeLayersForHint];

    if (!currentShapeLayersForHint)
    {
      v7 = wqa_overlay_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_272AAE000, v7, OS_LOG_TYPE_INFO, "showing UI for quick actions: %@", buf, 0xCu);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_306;
      v12[3] = &unk_279E659D0;
      v12[4] = self;
      v8 = v4;
      v13 = v8;
      v9 = MEMORY[0x2743D34B0](v12);
      v11 = v8;
      v10 = v9;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

void __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_306(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _astFocusRingIsVisible] & 1) == 0)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(a1 + 40);
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

          [*(a1 + 32) _mainQueue_addAnimatedShapeLayerForQuickAction:{*(*(&v7 + 1) + 8 * v6++), v7}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

void __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _shouldShowHintsForQuickActions:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_3;
    v5[3] = &unk_279E65AB8;
    v6 = *(a1 + 48);
    [v2 _mainQueue_showHintsWithPrimaryQuickActions:v3 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

- (id)_localizedBannerInstructionText
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WQAOverlayCoordinator__localizedBannerInstructionText__block_invoke;
  block[3] = &unk_279E65958;
  block[4] = self;
  if (_localizedBannerInstructionText_onceToken != -1)
  {
    dispatch_once(&_localizedBannerInstructionText_onceToken, block);
  }

  v2 = [_localizedBannerInstructionText__Bundle localizedStringForKey:@"banner.hint" value:&stru_288223548 table:@"Localizable-elton"];

  return v2;
}

uint64_t __56__WQAOverlayCoordinator__localizedBannerInstructionText__block_invoke(uint64_t a1)
{
  _localizedBannerInstructionText__Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (void)_mainQueue_showHintsWithPrimaryQuickActions:(id)actions completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  completionCopy = completion;
  selfCopy = self;
  _localizedBannerInstructionText = [(WQAOverlayCoordinator *)self _localizedBannerInstructionText];
  _AXSReduceMotionEnabled();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = actionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    localizedTitle = 0;
    v13 = *v61;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v60 + 1) + 8 * i);
        if (!localizedTitle)
        {
          localizedTitle = [*(*(&v60 + 1) + 8 * i) localizedTitle];
        }

        if (([v15 canShowOverlays] & 1) == 0)
        {
          [v15 animationHandler];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v11);

    if (localizedTitle)
    {
      v46 = objc_opt_new();
      v45 = objc_opt_new();
      v49 = objc_opt_new();
      if (![(WQAOverlayCoordinator *)selfCopy _astFocusRingIsVisible])
      {
        v43 = _localizedBannerInstructionText;
        v44 = completionCopy;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v42 = v9;
        v17 = v9;
        v18 = [v17 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v57;
          v47 = *v57;
          v48 = v17;
          do
          {
            v21 = 0;
            v51 = v19;
            do
            {
              if (*v57 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v56 + 1) + 8 * v21);
              animationHandler = [v22 animationHandler];
              v24 = animationHandler;
              if (animationHandler)
              {
                quickActionHostingView = wqa_overlay_log(animationHandler);
                if (os_log_type_enabled(quickActionHostingView, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf.a) = 138412546;
                  *(&buf.a + 4) = v24;
                  WORD2(buf.b) = 2112;
                  *(&buf.b + 6) = v22;
                  _os_log_impl(&dword_272AAE000, quickActionHostingView, OS_LOG_TYPE_INFO, "animation handler: %@ will handle hint for quick action: %@", &buf, 0x16u);
                }
              }

              else
              {
                quickActionHostingView = [v22 quickActionHostingView];
                quickActionPrimaryView = [v22 quickActionPrimaryView];
                quickActionPath = [v22 quickActionPath];
                v28 = quickActionPath;
                if (quickActionHostingView)
                {
                  v29 = quickActionPrimaryView == 0;
                }

                else
                {
                  v29 = 1;
                }

                if (!v29 && quickActionPath != 0)
                {
                  v31 = [(WQAOverlayCoordinator *)selfCopy _createNonAnimatingShapeLayerFromPath:quickActionPath];
                  layer = [quickActionHostingView layer];
                  [layer addSublayer:v31];

                  [v49 addObject:v31];
                  if ([v22 allowsResizingAnimations])
                  {
                    [v46 addObject:quickActionPrimaryView];
                    if (quickActionHostingView != quickActionPrimaryView)
                    {
                      [v45 addObject:v31];
                    }
                  }

                  v20 = v47;
                  v17 = v48;
                }

                v19 = v51;
              }

              ++v21;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v19);
        }

        _localizedBannerInstructionText = v43;
        completionCopy = v44;
        v9 = v42;
      }

      [(WQAOverlayCoordinator *)selfCopy setCurrentShapeLayersForHint:v49];
      v33 = _AXSReduceMotionEnabled();
      v34 = 0.93;
      memset(&buf.c, 0, 32);
      if (v33)
      {
        v34 = 1.0;
      }

      *&buf.a = 0uLL;
      CGAffineTransformMakeScale(&buf, v34, v34);
      memset(&v55, 0, sizeof(v55));
      Scale = CGAffineTransformMakeScale(&v55, 1.0, 1.0);
      v36 = wqa_overlay_log(Scale);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v54 = 0;
        _os_log_impl(&dword_272AAE000, v36, OS_LOG_TYPE_INFO, "presenting banner and hints", v54, 2u);
      }

      v37 = +[WatchQuickActionsServices sharedInstance];
      [v37 showInstructionalBannerWithTitle:localizedTitle subtitle:_localizedBannerInstructionText];

      v52 = v9;
      v53 = completionCopy;
      v38 = v49;
      v39 = v45;
      v40 = v46;
      AXPerformBlockOnMainThreadAfterDelay();

      goto LABEL_46;
    }
  }

  else
  {
  }

  v41 = wqa_overlay_log(v16);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_272AAE000, v41, OS_LOG_TYPE_INFO, "no title to present banner with", &buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 1);
  localizedTitle = 0;
LABEL_46:
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 176) == 1)
  {
    v2 = +[WatchQuickActionsServices sharedInstance];
    [v2 animateInstructionalBannerWithScaleFactor:0.93 interstepDuration:{0.93, 0.15}];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [v8 animationHandler];
        v10 = v9;
        if (v9)
        {
          [v9 quickActionWillHint:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v5);
  }

  v11 = MEMORY[0x277D75D18];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_2;
  v29[3] = &unk_279E65B08;
  v30 = *(a1 + 40);
  v12 = *(a1 + 96);
  v32 = *(a1 + 80);
  v33 = v12;
  v34 = *(a1 + 112);
  v31 = *(a1 + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_3;
  v19[3] = &unk_279E65BA8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 144);
  v23 = *(a1 + 128);
  v24 = v14;
  v25 = *(a1 + 160);
  v15 = *(a1 + 48);
  v16 = *(a1 + 96);
  v26 = *(a1 + 80);
  v27 = v16;
  v28 = *(a1 + 112);
  *&v17 = *(a1 + 56);
  *(&v17 + 1) = *(a1 + 64);
  *&v18 = v13;
  *(&v18 + 1) = v15;
  v20 = v18;
  v21 = v17;
  v22 = *(a1 + 72);
  [v11 animateWithDuration:v29 animations:v19 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v8;
        v22 = *(a1 + 80);
        [v7 setTransform:&v20];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v15;
        v22 = *(a1 + 80);
        [v14 setAffineTransform:{&v20, v16}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v11);
  }
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_4;
  v18[3] = &unk_279E65B08;
  v19 = *(a1 + 32);
  v21 = *(a1 + 72);
  v22 = *(a1 + 88);
  v23 = *(a1 + 104);
  v20 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_5;
  v8[3] = &unk_279E65BA8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 136);
  v12 = *(a1 + 120);
  v13 = v4;
  v14 = *(a1 + 152);
  v5 = *(a1 + 40);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v17 = *(a1 + 104);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v2 animateWithDuration:v18 animations:v8 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v8;
        v22 = *(a1 + 80);
        [v7 setTransform:&v20];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v15;
        v22 = *(a1 + 80);
        [v14 setAffineTransform:{&v20, v16}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v11);
  }
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_6;
  v16[3] = &unk_279E65B08;
  v17 = *(a1 + 32);
  v3 = *(a1 + 88);
  v19 = *(a1 + 72);
  v20 = v3;
  v21 = *(a1 + 104);
  v18 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_7;
  v9[3] = &unk_279E65B80;
  v4 = *(a1 + 32);
  v5 = *(a1 + 136);
  v13 = *(a1 + 120);
  v14 = v5;
  v15 = *(a1 + 152);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = *(a1 + 56);
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v2 animateWithDuration:v16 animations:v9 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_6(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v8;
        v22 = *(a1 + 80);
        [v7 setTransform:&v20];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v15;
        v22 = *(a1 + 80);
        [v14 setAffineTransform:{&v20, v16}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v11);
  }
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_8;
  v11[3] = &unk_279E65B08;
  v12 = *(a1 + 32);
  v3 = *(a1 + 88);
  v14 = *(a1 + 72);
  v15 = v3;
  v16 = *(a1 + 104);
  v13 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_9;
  v7[3] = &unk_279E65A20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v2 animateWithDuration:v11 animations:v7 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_8(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v8;
        v22 = *(a1 + 80);
        [v7 setTransform:&v20];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v20 = *(a1 + 48);
        v21 = v15;
        v22 = *(a1 + 80);
        [v14 setAffineTransform:{&v20, v16}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v11);
  }
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_9(uint64_t a1, char a2)
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v3 setFromValue:&unk_2882248D8];
  [v3 setToValue:&unk_2882248E8];
  [v3 setDuration:0.3];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v4 = v3;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_320(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[WatchQuickActionsServices sharedInstance];
  [v2 hideInstructionalBanner];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) addAnimation:*(a1 + 40) forKey:@"fadeOutAnimation"];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 56);
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_2_324(uint64_t a1)
{
  [*(a1 + 32) _mainQueue_cleanupHintViews];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_mainQueue_cleanupHintViews
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentShapeLayersForHint = [(WQAOverlayCoordinator *)self currentShapeLayersForHint];

  if (currentShapeLayersForHint)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    currentShapeLayersForHint2 = [(WQAOverlayCoordinator *)self currentShapeLayersForHint];
    v5 = [currentShapeLayersForHint2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(currentShapeLayersForHint2);
          }

          [*(*(&v10 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [currentShapeLayersForHint2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(WQAOverlayCoordinator *)self setCurrentShapeLayersForHint:0];
  }

  v9 = +[WatchQuickActionsServices sharedInstance];
  [v9 hideInstructionalBanner];
}

- (void)_mainQueue_backlightDidTurnOn
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = wqa_overlay_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272AAE000, v4, OS_LOG_TYPE_INFO, "backlight did turn on", buf, 2u);
  }

  if (_AXSWatchControlEnabled() && [(WQAOverlayCoordinator *)self inputSourcesRequireFocusRing]&& (v5 = [(WQAOverlayCoordinator *)self hasNoActivationGesture], v5))
  {
    dataSource = wqa_overlay_log(v5);
    if (os_log_type_enabled(dataSource, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_272AAE000, dataSource, OS_LOG_TYPE_INFO, "activation gesture set to none, do not show overlays", v8, 2u);
    }
  }

  else
  {
    dataSource = [(WQAOverlayCoordinator *)self dataSource];
    v7 = [dataSource quickActionsForOverlayCoordinator:self];
    [(WQAOverlayCoordinator *)self _mainQueue_showUIForQuickActions:v7];
  }
}

- (void)_mainQueue_backlightDidTurnOff
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = wqa_overlay_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_272AAE000, v4, OS_LOG_TYPE_INFO, "backlight did turn off", v5, 2u);
  }

  [(WQAOverlayCoordinator *)self _mainQueue_cleanupShapeLayers];
}

- (void)_mainQueue_cleanupShapeLayers
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  quickActionShapeLayers = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
  v4 = [quickActionShapeLayers count];

  if (v4)
  {
    v6 = wqa_overlay_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      quickActionShapeLayers2 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
      *buf = 138412290;
      v34 = quickActionShapeLayers2;
      _os_log_impl(&dword_272AAE000, v6, OS_LOG_TYPE_INFO, "removing shape layers: %@", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    quickActionShapeLayers3 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
    v9 = [quickActionShapeLayers3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(quickActionShapeLayers3);
          }

          [(WQAOverlayCoordinator *)self _mainQueue_removeShapeLayer:*(*(&v27 + 1) + 8 * i)];
        }

        v10 = [quickActionShapeLayers3 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    quickActionShapeLayers4 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
    [quickActionShapeLayers4 removeAllObjects];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  dataSource = [(WQAOverlayCoordinator *)self dataSource];
  v15 = [dataSource quickActionsForOverlayCoordinator:self];

  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        animationHandler = [v20 animationHandler];
        v22 = animationHandler;
        if (animationHandler)
        {
          [animationHandler quickActionDidBecomeInactive:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  [(WQAOverlayCoordinator *)self _mainQueue_cleanupHintViews];
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  backlightCopy = backlight;
  eventCopy = event;
  v9 = eventCopy;
  if (eventCopy)
  {
    v10 = wqa_overlay_log(eventCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WQAOverlayCoordinator backlight:v9 didCompleteUpdateToState:v10 forEvent:?];
    }

    v11 = v9;
    if ([v11 previousState] >= 2)
    {
    }

    else
    {
      v12 = [v11 state] & 0xFFFFFFFFFFFFFFFELL;

      if (v12 == 2)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __69__WQAOverlayCoordinator_backlight_didCompleteUpdateToState_forEvent___block_invoke;
        v18[3] = &unk_279E65958;
        v18[4] = self;
        v13 = MEMORY[0x277D85CD0];
        v14 = v18;
LABEL_11:
        dispatch_async(v13, v14);
        goto LABEL_13;
      }
    }

    v15 = v11;
    if (([v15 previousState] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {

      goto LABEL_13;
    }

    state = [v15 state];

    if (state <= 1)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __69__WQAOverlayCoordinator_backlight_didCompleteUpdateToState_forEvent___block_invoke_2;
      v17[3] = &unk_279E65958;
      v17[4] = self;
      v13 = MEMORY[0x277D85CD0];
      v14 = v17;
      goto LABEL_11;
    }
  }

LABEL_13:
}

- (WQAOverlayDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)initWithDataSource:.cold.1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [WQAOverlayCoordinator backlight:v1 didCompleteUpdateToState:v2 forEvent:?];
}

- (void)backlight:(void *)a1 didCompleteUpdateToState:(NSObject *)a2 forEvent:.cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "previousState")}];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "state")}];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_272AAE000, a2, OS_LOG_TYPE_DEBUG, "backlight did change from '%@' to '%@'", &v6, 0x16u);
}

@end