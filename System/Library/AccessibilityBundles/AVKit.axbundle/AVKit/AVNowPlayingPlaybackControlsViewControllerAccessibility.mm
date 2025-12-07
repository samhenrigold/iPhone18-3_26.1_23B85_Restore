@interface AVNowPlayingPlaybackControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axAnnounceCurrentScrubPosition;
- (void)_axUpdateAccessibilityCustomActions;
- (void)_setControlsContainerSubviewsVisible:(BOOL)visible animated:(BOOL)animated withCoordinators:(id)coordinators;
- (void)_setPlaybackControlsState:(int64_t)state animated:(BOOL)animated;
- (void)_timerFiredForHidingPlaybackControls:(id)controls;
- (void)didPressLeftArrowB39;
- (void)didPressRightArrowB39;
@end

@implementation AVNowPlayingPlaybackControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_setControlsContainerSubviewsVisible:animated:withCoordinators:" withFullSignature:{"v", "B", "B", "@", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"timeControlStatus" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"didPressLeftArrowB39" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"didPressRightArrowB39" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"scanForwardNext" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"scanBackwardNext" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVPlaybackControlsViewController" hasInstanceMethod:@"playbackRate" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_timerFiredForHidingPlaybackControls:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_playbackMetadataViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceVariable:@"_transportBar" withType:"UIView<AVTransportControlsProviding>"];
  [validationsCopy validateClass:@"AVNowPlayingTransportBar" hasInstanceVariable:@"_scrubNeedleTimeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVxOverlayViewController" hasInstanceMethod:@"collectionViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVxCollectionViewController" hasInstanceMethod:@"leftItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVxCollectionViewController" hasInstanceMethod:@"centerItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVxCollectionViewController" hasInstanceMethod:@"rightItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVControlItem" hasInstanceMethod:@"_sendActionWithSender:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_setPlaybackControlsState:animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (void)_axUpdateAccessibilityCustomActions
{
  v41 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  v25 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKeyPath:@"overlayViewController.collectionViewController"];
  v4 = [v25 safeArrayForKey:@"leftItems"];
  [array2 axSafelyAddObjectsFromArray:v4];

  v5 = [v25 safeArrayForKey:@"centerItems"];
  [array2 axSafelyAddObjectsFromArray:v5];

  v6 = [v25 safeArrayForKey:@"rightItems"];
  [array2 axSafelyAddObjectsFromArray:v6];

  objc_initWeak(&location, self);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = array2;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        accessibilityLabel = [v11 accessibilityLabel];
        if ([accessibilityLabel length])
        {
          objc_initWeak(&from, v11);
          v13 = objc_alloc(MEMORY[0x29EDC78E0]);
          v31[0] = MEMORY[0x29EDCA5F8];
          v31[1] = 3221225472;
          v31[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke;
          v31[3] = &unk_29F298E60;
          objc_copyWeak(&v32, &from);
          objc_copyWeak(&v33, &location);
          v14 = [v13 initWithName:accessibilityLabel actionHandler:v31];
          [array addObject:v14];

          objc_destroyWeak(&v33);
          objc_destroyWeak(&v32);
          objc_destroyWeak(&from);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self setAccessibilityCustomActions:array];
  array3 = [MEMORY[0x29EDB8DE8] array];
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeFloatForKey:@"playbackRate"];
  v17 = v16;
  if (v16 <= 0.0)
  {
    v18 = objc_alloc(MEMORY[0x29EDC78E0]);
    v19 = accessibilityLocalizedString(@"tv.player.fastforward");
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_3;
    v29[3] = &unk_29F298EB0;
    objc_copyWeak(&v30, &location);
    v20 = [v18 initWithName:v19 actionHandler:v29];

    [array3 addObject:v20];
    objc_destroyWeak(&v30);
  }

  if (v17 >= 0.0)
  {
    v21 = objc_alloc(MEMORY[0x29EDC78E0]);
    v22 = accessibilityLocalizedString(@"tv.player.rewind");
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_5;
    v27[3] = &unk_29F298EB0;
    objc_copyWeak(&v28, &location);
    v23 = [v21 initWithName:v22 actionHandler:v27];

    [array3 addObject:v23];
    objc_destroyWeak(&v28);
  }

  v24 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKey:@"_transportBar"];
  [v24 setAccessibilityCustomActions:array3];

  objc_destroyWeak(&location);
}

uint64_t __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  objc_copyWeak(&v6, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);

  return 1;
}

void __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendActionWithSender:v2];
}

uint64_t __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanForwardNext];
}

uint64_t __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanBackwardNext];
}

- (void)_setControlsContainerSubviewsVisible:(BOOL)visible animated:(BOOL)animated withCoordinators:(id)coordinators
{
  animatedCopy = animated;
  visibleCopy = visible;
  coordinatorsCopy = coordinators;
  v9 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeUIViewForKey:@"_transportBar"];
  isHidden = [v9 isHidden];

  v17.receiver = self;
  v17.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v17 _setControlsContainerSubviewsVisible:visibleCopy animated:animatedCopy withCoordinators:coordinatorsCopy];
  v11 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeIntegerForKey:@"timeControlStatus"];
  if (visibleCopy)
  {
    objc_opt_class();
    v12 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKey:@"_playbackMetadataViewController"];
    v13 = __UIAccessibilityCastAsClass();

    accessibilityHeaderElements = [v13 accessibilityHeaderElements];
    v15 = MEMORY[0x29C2C6360]();
    UIAccessibilitySpeakOrQueueIfNeeded();
  }

  if (isHidden == visibleCopy)
  {
    if (!v11 && !visibleCopy)
    {
      v16 = accessibilityLocalizedString(@"hiding.media.controls.announcement");
      UIAccessibilitySpeakOrQueueIfNeeded();
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_setPlaybackControlsState:(int64_t)state animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v7 _setPlaybackControlsState:state animated:animated];
  v5 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__setPlaybackControlsState_animated___block_invoke;
  block[3] = &unk_29F298ED8;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x29EDCA578], block);
}

- (void)_timerFiredForHidingPlaybackControls:(id)controls
{
  controlsCopy = controls;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() || [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeIntegerForKey:@"timeControlStatus"])
  {
    v5.receiver = self;
    v5.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
    [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v5 _timerFiredForHidingPlaybackControls:controlsCopy];
  }
}

- (void)_axAnnounceCurrentScrubPosition
{
  v4 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKey:@"_transportBar"];
  v2 = [v4 safeUIViewForKey:@"_scrubNeedleTimeLabel"];
  if ([v2 _accessibilityViewIsVisible])
  {
    accessibilityLabel = [v2 accessibilityLabel];
    if ([accessibilityLabel length])
    {
      UIAccessibilitySpeak();
    }
  }
}

- (void)didPressLeftArrowB39
{
  v3.receiver = self;
  v3.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v3 didPressLeftArrowB39];
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self _axAnnounceCurrentScrubPosition];
}

- (void)didPressRightArrowB39
{
  v3.receiver = self;
  v3.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v3 didPressRightArrowB39];
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self _axAnnounceCurrentScrubPosition];
}

@end