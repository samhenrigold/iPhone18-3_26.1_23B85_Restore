@interface STUIStatusBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axElementWithinFocused;
- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_prepareVisualProviderIfNeeded;
- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations;
@end

@implementation STUIStatusBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarItem"];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItem"];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState"];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"displayItemStates" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"currentAggregatedData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"styleAttributes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"visualProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"foregroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_prepareVisualProviderIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"displayItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState" hasInstanceMethod:@"enabilityStatus" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemPlacementState" hasInstanceMethod:@"region" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"overriddenStyleAttributes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceVariable:@"_regions" withType:"NSDictionary"];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_updateDisplayedItemsWithData:styleAttributes:extraAnimations:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState" hasInstanceMethod:@"currentPlacementState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState" hasInstanceMethod:@"_updateForUpdatedData:updatedStyleAttributes:updatedEnability:" withFullSignature:{"@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarStyleAttributes" hasInstanceMethod:@"styleAttributesWithOverrides:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_frameForActionable:actionInsets:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "{UIEdgeInsets=dddd}", 0}];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"displayItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItem" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarNavigationItem" isKindOfClass:@"STUIStatusBarItem"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v41 = *MEMORY[0x29EDCA608];
  v38.receiver = self;
  v38.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v38 _accessibilityLoadAccessibilityInformation];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [(STUIStatusBarAccessibility *)self safeDictionaryForKey:@"_regions"];
  obj = [v2 allValues];

  v3 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v3)
  {
    v4 = *v35;
    v5 = MEMORY[0x29EDCA5F8];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = [v7 safeUIViewForKey:@"contentView"];
        objc_initWeak(&location, v7);
        v31[0] = v5;
        v31[1] = 3221225472;
        v31[2] = __72__STUIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v31[3] = &unk_29F306C68;
        objc_copyWeak(&v32, &location);
        [v8 _setAccessibilityElementsHiddenBlock:v31];
        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      v3 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v3);
  }

  v22 = [(STUIStatusBarAccessibility *)self safeValueForKey:@"visualProvider"];
  [v22 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v9 = [(STUIStatusBarAccessibility *)self safeValueForKey:@"items"];
  v21 = __UIAccessibilityCastAsClass();

  if (location == 1)
  {
LABEL_24:
    abort();
  }

  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = [v21 allValues];
  v10 = [obja countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obja);
        }

        v13 = *(*(&v27 + 1) + 8 * j);
        LOBYTE(location) = 0;
        v14 = __UIAccessibilitySafeClass();
        if (location == 1)
        {
          goto LABEL_24;
        }

        v15 = v14;
        if (v14)
        {
          LOBYTE(location) = 0;
          objc_opt_class();
          v16 = [(STUIStatusBarAccessibility *)self safeValueForKey:@"displayItemStates"];
          v17 = __UIAccessibilityCastAsClass();

          if (location == 1)
          {
            goto LABEL_24;
          }

          v18 = [v13 safeValueForKey:@"identifier"];
          LOBYTE(location) = 0;
          v19 = [v17 objectForKey:v18];
          v20 = __UIAccessibilitySafeClass();

          if (location == 1)
          {
            goto LABEL_24;
          }

          if (v20)
          {
            v26 = v20;
            AXPerformSafeBlock();
          }

          [v13 _accessibilityLoadAccessibilityInformation];
        }
      }

      v10 = [obja countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v10);
  }
}

uint64_t __72__STUIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isEnabled"];

  return v2 ^ 1u;
}

void __72__STUIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v2 = [a1[4] safeIntegerForKey:@"enabilityStatus"];
  if (v2 == 3)
  {
    v7 = [a1[4] _updateForUpdatedData:0 updatedStyleAttributes:0 updatedEnability:MEMORY[0x29EDB8EA8]];
    if (!v7)
    {
      return;
    }
  }

  else
  {
    if (v2 != 2)
    {
      return;
    }

    v3 = [a1[5] safeValueForKey:@"currentAggregatedData"];
    v4 = [a1[4] safeValueForKeyPath:@"currentPlacementState.region.overriddenStyleAttributes"];
    v5 = [a1[5] safeValueForKey:@"styleAttributes"];
    v6 = [v5 styleAttributesWithOverrides:v4];
    v8 = [a1[4] _updateForUpdatedData:v3 updatedStyleAttributes:v6 updatedEnability:MEMORY[0x29EDB8EB0]];

    v7 = v8;
    if (!v8)
    {
      return;
    }
  }

  v9 = v7;
  [a1[6] _accessibilitySetRetainedValue:v7 forKey:@"AccessibilityStatusBarUpdateData"];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v75 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  [(STUIStatusBarAccessibility *)self _axSetIsHitTesting:1];
  v72.receiver = self;
  v72.super_class = STUIStatusBarAccessibility;
  v8 = [(STUIStatusBarAccessibility *)&v72 _accessibilityHitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    selfCopy = self;
    superview = [(STUIStatusBarAccessibility *)selfCopy superview];
    [superview convertPoint:selfCopy toView:{x, y}];
    v12 = v11;
    v14 = v13;

    [(STUIStatusBarAccessibility *)selfCopy frame];
    v77.x = v12;
    v77.y = v14;
    if (CGRectContainsPoint(v78, v77))
    {
      v71 = 0;
      objc_opt_class();
      v15 = [(STUIStatusBarAccessibility *)selfCopy safeValueForKey:@"items"];
      v16 = __UIAccessibilityCastAsClass();

      v60 = eventCopy;
      selfCopy2 = self;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = [v16 allValues];
      v17 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      if (v17)
      {
        v18 = v17;
        v61 = 0;
        v19 = *v68;
        v20 = 1.79769313e308;
        v55 = *v68;
        do
        {
          v21 = 0;
          v56 = v18;
          do
          {
            if (*v68 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v67 + 1) + 8 * v21);
            MEMORY[0x29ED3ADB0](@"STUIStatusBarItem");
            if (objc_opt_isKindOfClass())
            {
              v71 = 0;
              objc_opt_class();
              v23 = [v22 safeValueForKey:@"displayItems"];
              v24 = __UIAccessibilityCastAsClass();

              if (v71 == 1)
              {
                abort();
              }

              v58 = v24;
              v59 = v21;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              allValues = [v24 allValues];
              v26 = [allValues countByEnumeratingWithState:&v63 objects:v73 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v64;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v64 != v28)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    v30 = *(*(&v63 + 1) + 8 * i);
                    MEMORY[0x29ED3ADB0](@"STUIStatusBarDisplayItem");
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 safeBoolForKey:@"isEnabled"])
                    {
                      v31 = [v30 safeUIViewForKey:@"view"];
                      mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
                      coordinateSpace = [mainScreen coordinateSpace];
                      [v31 center];
                      v35 = v34;
                      v37 = v36;
                      superview2 = [v31 superview];
                      [coordinateSpace convertPoint:superview2 fromCoordinateSpace:{v35, v37}];
                      v40 = v39;
                      v42 = v41;

                      AX_CGPointGetDistanceToPoint();
                      v44 = v43;
                      server = [MEMORY[0x29EDBDFA8] server];
                      medusaApps = [server medusaApps];
                      v47 = [medusaApps count];

                      if (v47 < 2)
                      {
                        v48 = 1.79769313e308;
                      }

                      else
                      {
                        [v31 frame];
                        v48 = fmax(CGRectGetWidth(v79), 50.0);
                      }

                      if (v44 <= v48 && v44 < v20)
                      {
                        v62.receiver = selfCopy;
                        v62.super_class = STUIStatusBarAccessibility;
                        v50 = [(STUIStatusBarAccessibility *)&v62 _accessibilityHitTest:v60 withEvent:v40, v42];
                        v51 = v50;
                        if (v50)
                        {
                          v52 = v50;

                          v61 = v52;
                          v20 = v44;
                        }
                      }
                    }
                  }

                  v27 = [allValues countByEnumeratingWithState:&v63 objects:v73 count:16];
                }

                while (v27);
              }

              v19 = v55;
              v18 = v56;
              v21 = v59;
            }

            ++v21;
          }

          while (v21 != v18);
          v18 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        }

        while (v18);
      }

      else
      {
        v61 = 0;
      }

      self = selfCopy2;
      eventCopy = v60;
    }

    else
    {
      v61 = 0;
    }

    v8 = v61;
  }

  [(STUIStatusBarAccessibility *)self _axSetIsHitTesting:0];

  return v8;
}

- (void)_prepareVisualProviderIfNeeded
{
  objc_initWeak(&location, self);
  v3 = [(STUIStatusBarAccessibility *)self safeUIViewForKey:@"foregroundView"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __60__STUIStatusBarAccessibility__prepareVisualProviderIfNeeded__block_invoke;
  v5[3] = &unk_29F306C68;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityElementsHiddenBlock:v5];

  v4.receiver = self;
  v4.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v4 _prepareVisualProviderIfNeeded];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __60__STUIStatusBarAccessibility__prepareVisualProviderIfNeeded__block_invoke(uint64_t a1)
{
  if (AXRequestingClient() != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axElementWithinFocused])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    if (v4)
    {
      v3 = __UIAccessibilityGetAssociatedBool() ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (BOOL)_axElementWithinFocused
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = _UIAccessibilityFocusedElements();
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 3221225472;
        v12[2] = __53__STUIStatusBarAccessibility__axElementWithinFocused__block_invoke;
        v12[3] = &unk_29F306CB8;
        v12[4] = self;
        v9 = [v8 _accessibilityFindAncestor:v12 startWithSelf:0];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)accessibilityElements
{
  if (AXProcessIsSpringBoard() && AXDeviceHasJindo() && UIAccessibilityIsVoiceOverRunning())
  {
    accessibilityElements = [*MEMORY[0x29EDC8008] _accessibilityStatusBarElements:1 sorted:1];
  }

  else if ([(STUIStatusBarAccessibility *)self _axElementWithinFocused])
  {
    v5.receiver = self;
    v5.super_class = STUIStatusBarAccessibility;
    accessibilityElements = [(STUIStatusBarAccessibility *)&v5 accessibilityElements];
  }

  else
  {
    accessibilityElements = 0;
  }

  return accessibilityElements;
}

- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v6 _updateDisplayedItemsWithData:data styleAttributes:attributes extraAnimations:animations];
  if ([(STUIStatusBarAccessibility *)self _axElementWithinFocused])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v38 = *MEMORY[0x29EDCA608];
  actionableCopy = actionable;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v36 = 0;
    objc_opt_class();
    v10 = [actionableCopy safeValueForKey:@"displayItems"];
    v11 = __UIAccessibilityCastAsClass();

    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v32 + 1) + 8 * i) safeValueForKey:@"item"];
          MEMORY[0x29ED3ADB0](@"STUIStatusBarNavigationItem");
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            top = *MEMORY[0x29EDC80C8];
            left = *(MEMORY[0x29EDC80C8] + 8);
            bottom = *(MEMORY[0x29EDC80C8] + 16);
            right = *(MEMORY[0x29EDC80C8] + 24);
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v31.receiver = self;
  v31.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v31 _frameForActionable:actionableCopy actionInsets:top, left, bottom, right];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

@end