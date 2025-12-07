@interface SUUIHorizontalLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_playAction:(id)action;
- (BOOL)_styledImageButtonAction:(id)action;
- (BOOL)_toggleButtonAction:(id)action;
- (BOOL)isAccessibilityElement;
- (BOOL)isAdvertisementView:(id)view;
- (CGRect)accessibilityFrame;
- (id)_accessibilityFindPlayButton;
- (id)_accessibilityFindStyledImageButton;
- (id)_accessibilityFindToggleButton;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryFooterViewsIncludePlayButton:(BOOL)button includeStyledImageButton:(BOOL)imageButton;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)view;
@end

@implementation SUUIHorizontalLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceVariable:@"_layout" withType:"SUUIHorizontalLockupLayout"];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceVariable:@"_viewElementViews" withType:"NSMapTable"];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceVariable:@"_lockupElement" withType:"SUUILockupViewElement"];
  [validationsCopy validateClass:@"SUUIHorizontalLockupLayout" hasInstanceMethod:@"columns" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIHorizontalLockupColumn" hasInstanceMethod:@"childViewElements" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIImageView"];
  [validationsCopy validateClass:@"SUUISectionHeaderView"];
  [validationsCopy validateClass:@"SUUITextBoxView"];
  [validationsCopy validateClass:@"SUUIStyledImageButton"];
  [validationsCopy validateClass:@"SUUIToggleButton"];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceMethod:@"_previewMediaURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceMethod:@"_resolvePreviewStateAfterTransitionForFlipView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceVariable:@"_previewState" withType:"NSInteger"];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceVariable:@"_previewProgressIndicator" withType:"SUUIPreviewProgressIndicator"];
  [validationsCopy validateClass:@"SUUIHorizontalLockupView" hasInstanceMethod:@"_previewFrontView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUILockupViewElement" hasInstanceMethod:@"isSelectable" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(SUUIHorizontalLockupViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (BOOL)isAdvertisementView:(id)view
{
  viewCopy = view;
  NSClassFromString(&cfstr_Suuistyledimag.isa);
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = NSProtocolFromString(&cfstr_Suuiadvertisin.isa);
    v5 = [viewCopy conformsToProtocol:v4];

    if (v5)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)accessibilityLabel
{
  v69 = *MEMORY[0x29EDCA608];
  v64 = 0;
  v2 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"columns"];
  v5 = __UIAccessibilitySafeClass();

  if (HIBYTE(v64) == 1)
  {
LABEL_50:
    abort();
  }

  HIBYTE(v64) = 0;
  v6 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v43 = __UIAccessibilitySafeClass();

  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v5;
  v40 = [v7 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v40)
  {
    v8 = 0;
    v9 = 0;
    obj = v7;
    v39 = *v61;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v61 != v39)
        {
          v11 = v10;
          objc_enumerationMutation(obj);
          v10 = v11;
        }

        v41 = v10;
        v64 = 0;
        v12 = __UIAccessibilitySafeClass();
        if (v64 == 1)
        {
          goto LABEL_50;
        }

        v13 = v12;
        v14 = [v12 safeValueForKey:@"childViewElements"];
        v15 = __UIAccessibilitySafeClass();

        if (HIBYTE(v64) == 1)
        {
          goto LABEL_50;
        }

        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v42 = v15;
        v46 = [v42 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (!v46)
        {
          goto LABEL_41;
        }

        v45 = *v57;
        do
        {
          v16 = 0;
          do
          {
            if (*v57 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v17 = [v43 objectForKey:*(*(&v56 + 1) + 8 * v16)];
            v47 = v17;
            v48 = v16;
            if (shouldIncludeElement(v17))
            {
              v66 = v17;
              v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v66 count:1];
LABEL_23:
              v20 = v18;
              goto LABEL_24;
            }

            NSClassFromString(&cfstr_Suuiadornedima.isa);
            if (objc_opt_isKindOfClass())
            {
              v19 = [v17 safeValueForKey:@"_reuseView"];
              v20 = [v19 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1];

              goto LABEL_24;
            }

            NSClassFromString(&cfstr_Suuisectionhea_0.isa);
            if (objc_opt_isKindOfClass())
            {
              v21 = v17;
              v22 = &__block_literal_global_369;
              goto LABEL_22;
            }

            NSClassFromString(&cfstr_Suuitextboxvie_0.isa);
            if (objc_opt_isKindOfClass())
            {
              array = [MEMORY[0x29EDB8DE8] array];
              v54[0] = MEMORY[0x29EDCA5F8];
              v54[1] = 3221225472;
              v54[2] = __59__SUUIHorizontalLockupViewAccessibility_accessibilityLabel__block_invoke_3;
              v54[3] = &unk_29F2D8FF0;
              v20 = array;
              v55 = v20;
              [v17 accessibilityEnumerateContainerElementsUsingBlock:v54];
            }

            else
            {
              NSClassFromString(&cfstr_Suuiattributed_2.isa);
              if (objc_opt_isKindOfClass())
              {
                v21 = v17;
                v22 = &__block_literal_global_376;
LABEL_22:
                v18 = [v21 _accessibilityFindSubviewDescendantsPassingTest:v22];
                goto LABEL_23;
              }

              NSClassFromString(&cfstr_Suuihorizontal_1.isa);
              if (objc_opt_isKindOfClass())
              {
                v21 = v17;
                v22 = &__block_literal_global_381;
                goto LABEL_22;
              }

              v20 = 0;
            }

LABEL_24:
            v49 = v8;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v23 = v20;
            v24 = [v23 countByEnumeratingWithState:&v50 objects:v65 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v51;
              do
              {
                v27 = 0;
                v28 = v9;
                do
                {
                  if (*v51 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  accessibilityLabel = [*(*(&v50 + 1) + 8 * v27) accessibilityLabel];
                  v30 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"•" withString:{@", "}];

                  v36 = v30;
                  v37 = @"__AXStringForVariablesSentinel";
                  v9 = __UIAXStringForVariables();

                  ++v27;
                  v28 = v9;
                }

                while (v25 != v27);
                v25 = [v23 countByEnumeratingWithState:&v50 objects:v65 count:{16, v30, @"__AXStringForVariablesSentinel"}];
              }

              while (v25);
            }

            v8 = [(SUUIHorizontalLockupViewAccessibility *)self isAdvertisementView:v47]| v49;
            v16 = v48 + 1;
          }

          while (v48 + 1 != v46);
          v32 = [v42 countByEnumeratingWithState:&v56 objects:v67 count:16];
          v46 = v32;
        }

        while (v32);
LABEL_41:

        v10 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (!v40)
      {
        v7 = obj;

        if (v8)
        {
          v33 = accessibilityLocalizedString(@"Ad");
          v34 = __UIAXStringForVariables();

          v9 = v34;
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }
  }

  v9 = 0;
  v33 = v7;
LABEL_46:

LABEL_47:

  return v9;
}

void __59__SUUIHorizontalLockupViewAccessibility_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (shouldIncludeElement(v3))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  _accessibilitySupplementaryHeaderViews = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryHeaderViews];
  _accessibilitySupplementaryFooterViews = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViews];
  if (_accessibilitySupplementaryHeaderViews)
  {
    v10 = [_accessibilitySupplementaryHeaderViews arrayByAddingObjectsFromArray:_accessibilitySupplementaryFooterViews];

    _accessibilitySupplementaryFooterViews = v10;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = _accessibilitySupplementaryFooterViews;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        [(SUUIHorizontalLockupViewAccessibility *)self convertPoint:v16 toView:x, y];
        v17 = [v16 _accessibilityHitTest:eventCopy withEvent:?];
        if ([v17 isAccessibilityElement])
        {

          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19.receiver = self;
  v19.super_class = SUUIHorizontalLockupViewAccessibility;
  v17 = [(SUUIHorizontalLockupViewAccessibility *)&v19 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_13:

  return v17;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v49 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v46 = 0;
  v3 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"columns"];
  v6 = __UIAccessibilitySafeClass();

  if (HIBYTE(v46) == 1)
  {
LABEL_26:
    abort();
  }

  HIBYTE(v46) = 0;
  v7 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v8 = __UIAccessibilitySafeClass();

  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v32)
  {
    v9 = @"_previewMediaURL";
    v31 = *v43;
    v10 = @"SUUIImageView";
    v34 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v46 = 0;
        v12 = __UIAccessibilitySafeClass();
        if (v46 == 1)
        {
          goto LABEL_26;
        }

        v13 = v12;
        v14 = [v12 safeValueForKey:@"childViewElements"];
        v15 = __UIAccessibilitySafeClass();

        if (HIBYTE(v46) == 1)
        {
          goto LABEL_26;
        }

        v33 = v11;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v37 = v15;
        v16 = [v37 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v39;
          v36 = *v39;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(v37);
              }

              v20 = [v8 objectForKey:*(*(&v38 + 1) + 8 * i)];
              v21 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:v9];
              NSClassFromString(&v10->isa);
              if ((objc_opt_isKindOfClass() & 1) != 0 && v21)
              {
                [array addObject:v20];
                [v20 setIsAccessibilityElement:1];
                v22 = v10;
                v23 = v9;
                v24 = MEMORY[0x29EDBA0F8];
                v25 = accessibilityLocalizedString(@"preview.button");
                [(SUUIHorizontalLockupViewAccessibility *)self accessibilityLabel];
                v27 = v26 = self;
                v28 = [v24 stringWithFormat:v25, v27];
                [v20 setAccessibilityLabel:v28];

                v9 = v23;
                v10 = v22;

                self = v26;
                v8 = v34;
                v18 = v36;
              }
            }

            v17 = [v37 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v17);
        }

        v11 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v32);
  }

  return array;
}

- (CGRect)accessibilityFrame
{
  v20 = *MEMORY[0x29EDCA608];
  [(SUUIHorizontalLockupViewAccessibility *)self bounds];
  v4 = v3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _accessibilitySupplementaryFooterViews = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViews];
  v6 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
        }

        [*(*(&v15 + 1) + 8 * v9) bounds];
        v4 = v4 - v10;
        ++v9;
      }

      while (v7 != v9);
      v7 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  UIAccessibilityFrameForBounds();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_accessibilitySupplementaryFooterViewsIncludePlayButton:(BOOL)button includeStyledImageButton:(BOOL)imageButton
{
  imageButtonCopy = imageButton;
  buttonCopy = button;
  v47 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v44 = 0;
  v7 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [v8 safeValueForKey:@"columns"];
  v10 = __UIAccessibilitySafeClass();

  HIBYTE(v44) = 0;
  v11 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v12 = __UIAccessibilitySafeClass();

  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v10;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v32)
  {
    v31 = *v41;
    do
    {
      v13 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v44 = 0;
        v14 = __UIAccessibilitySafeClass();
        if (v44 == 1 || (v15 = v14, [v14 safeValueForKey:@"childViewElements"], v16 = objc_claimAutoreleasedReturnValue(), __UIAccessibilitySafeClass(), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, HIBYTE(v44) == 1))
        {
          abort();
        }

        v33 = v13;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v35 = v17;
        v18 = [v35 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v37;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v35);
              }

              v22 = [v12 objectForKey:*(*(&v36 + 1) + 8 * i)];
              if ([v22 isAccessibilityElement] && (NSClassFromString(&cfstr_Suuistyledimag.isa), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if ([v22 _accessibilityViewIsVisible])
                {
                  if (![(SUUIHorizontalLockupViewAccessibility *)self isAdvertisementView:v22]|| (v23 = _AXSAutomationEnabled(), v24 = @"Ad", !v23))
                  {
                    v24 = @"StyledImageButton";
                  }

                  [v22 setAccessibilityIdentifier:v24];
                  if (imageButtonCopy)
                  {
LABEL_28:
                    [array axSafelyAddObject:v22];
                  }
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v22 isAccessibilityElement] & 1) != 0 || (NSClassFromString(&cfstr_Suuiofferview.isa), (objc_opt_isKindOfClass()))
                {
                  [array addObject:v22];
                }

                else
                {
                  NSClassFromString(&cfstr_Suuivideothumb_0.isa);
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 _accessibilityViewIsVisible])
                  {
                    goto LABEL_28;
                  }
                }
              }

              NSClassFromString(&cfstr_Suuitogglebutt.isa);
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 _accessibilityViewIsVisible])
              {
                [array axSafelyAddObject:v22];
              }

              if (buttonCopy)
              {
                NSClassFromString(&cfstr_Suuiplaybutton_0.isa);
                if (objc_opt_isKindOfClass())
                {
                  if ([v22 _accessibilityViewIsVisible])
                  {
                    [v22 setAccessibilityIdentifier:@"PlayButton"];
                    [array axSafelyAddObject:v22];
                  }
                }

                else
                {
                  NSClassFromString(&cfstr_Suuiadornedima.isa);
                  if (objc_opt_isKindOfClass())
                  {
                    selfCopy = self;
                    v26 = [v22 safeValueForKey:@"_reuseView"];
                    v27 = [v26 safeValueForKey:@"_playButton"];

                    if ([v27 _accessibilityViewIsVisible])
                    {
                      [v27 setAccessibilityIdentifier:@"PlayButtonImage"];
                      [array axSafelyAddObject:v27];
                    }

                    self = selfCopy;
                  }
                }
              }
            }

            v19 = [v35 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v19);
        }

        v13 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v32);
  }

  if ([(SUUIHorizontalLockupViewAccessibility *)self safeIntegerForKey:@"_previewState"]== 2)
  {
    v28 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_previewProgressIndicator"];
    if (v28)
    {
      [array axSafelyAddObject:v28];
    }
  }

  return array;
}

- (id)accessibilityElements
{
  if ([(SUUIHorizontalLockupViewAccessibility *)self isAccessibilityElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:1];
  }

  return v3;
}

- (id)_accessibilityFindPlayButton
{
  v18 = *MEMORY[0x29EDCA608];
  [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:1 includeStyledImageButton:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        accessibilityIdentifier = [v7 accessibilityIdentifier];
        if ([accessibilityIdentifier isEqualToString:@"PlayButton"])
        {

LABEL_13:
          v11 = v7;
          goto LABEL_14;
        }

        accessibilityIdentifier2 = [v7 accessibilityIdentifier];
        v10 = [accessibilityIdentifier2 isEqualToString:@"PlayButtonImage"];

        if (v10)
        {
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)_accessibilityFindStyledImageButton
{
  v17 = *MEMORY[0x29EDCA608];
  [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        accessibilityIdentifier = [v7 accessibilityIdentifier];
        v9 = [accessibilityIdentifier isEqualToString:@"StyledImageButton"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
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

- (id)_accessibilityFindToggleButton
{
  v15 = *MEMORY[0x29EDCA608];
  [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuitogglebutt.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)_toggleButtonAction:(id)action
{
  _accessibilityFindToggleButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindToggleButton];
  v4 = _accessibilityFindToggleButton;
  if (_accessibilityFindToggleButton)
  {
    accessibilityLabel = [_accessibilityFindToggleButton accessibilityLabel];
    v10 = MEMORY[0x29EDCA5F8];
    v11 = v4;
    AXPerformSafeBlock();
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"activated.toggle");
    v8 = [v6 stringWithFormat:v7, accessibilityLabel, v10, 3221225472, __61__SUUIHorizontalLockupViewAccessibility__toggleButtonAction___block_invoke, &unk_29F2D8E30];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v8);
  }

  return v4 != 0;
}

- (BOOL)_styledImageButtonAction:(id)action
{
  _accessibilityFindStyledImageButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindStyledImageButton];
  v4 = _accessibilityFindStyledImageButton;
  if (_accessibilityFindStyledImageButton)
  {
    accessibilityActivate = [_accessibilityFindStyledImageButton accessibilityActivate];
  }

  else
  {
    accessibilityActivate = 0;
  }

  return accessibilityActivate;
}

- (BOOL)_playAction:(id)action
{
  _accessibilityFindPlayButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton];
  v4 = _accessibilityFindPlayButton;
  if (_accessibilityFindPlayButton)
  {
    accessibilityActivate = [_accessibilityFindPlayButton accessibilityActivate];
  }

  else
  {
    accessibilityActivate = 0;
  }

  return accessibilityActivate;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  _accessibilityFindPlayButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton];
  v5 = _accessibilityFindPlayButton;
  if (_accessibilityFindPlayButton)
  {
    accessibilityLabel = [_accessibilityFindPlayButton accessibilityLabel];
    if (!accessibilityLabel)
    {
      accessibilityLabel = accessibilityLocalizedString(@"play.button");
    }

    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel target:self selector:sel__playAction_];
    [array axSafelyAddObject:v7];
  }

  _accessibilityFindStyledImageButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindStyledImageButton];
  v9 = _accessibilityFindStyledImageButton;
  if (_accessibilityFindStyledImageButton)
  {
    accessibilityLabel2 = [_accessibilityFindStyledImageButton accessibilityLabel];
    if (!accessibilityLabel2)
    {
      accessibilityLabel2 = accessibilityLocalizedString(@"more.button");
    }

    if ([(SUUIHorizontalLockupViewAccessibility *)self isAdvertisementView:v9])
    {
      v11 = accessibilityLocalizedString(@"about.Ad");

      accessibilityLabel2 = v11;
    }

    v12 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel2 target:self selector:sel__styledImageButtonAction_];
    [array axSafelyAddObject:v12];
  }

  _accessibilityFindToggleButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindToggleButton];
  v14 = _accessibilityFindToggleButton;
  if (_accessibilityFindToggleButton)
  {
    accessibilityLabel3 = [_accessibilityFindToggleButton accessibilityLabel];
    v16 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel3 target:self selector:sel__toggleButtonAction_];
    [array axSafelyAddObject:v16];
  }

  return array;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SUUIHorizontalLockupViewAccessibility *)self isAccessibilityElement]&& ([(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:_AXSAutomationEnabled() != 0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v10.receiver = self;
  v10.super_class = SUUIHorizontalLockupViewAccessibility;
  accessibilityTraits = [(SUUIHorizontalLockupViewAccessibility *)&v10 accessibilityTraits];
  v3 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_lockupElement"];
  v4 = [v3 safeBoolForKey:@"isSelectable"];

  if (v4)
  {
    _accessibilityFindStyledImageButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindStyledImageButton];

    if (!_accessibilityFindStyledImageButton)
    {
      v12[3] |= *MEMORY[0x29EDC7F70];
    }
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __60__SUUIHorizontalLockupViewAccessibility_accessibilityTraits__block_invoke;
  v9[3] = &unk_29F2D9038;
  v9[4] = &v11;
  v6 = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindSubviewDescendant:v9];
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __60__SUUIHorizontalLockupViewAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Suuiimageview.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 accessibilityIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"UIPreferencesBlueCheck"), v4, v5))
  {
    *(*(*(a1 + 32) + 8) + 24) |= *MEMORY[0x29EDC7FC0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityValue
{
  _accessibilityFindPlayButton = [(SUUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton];
  v3 = [_accessibilityFindPlayButton safeValueForKey:@"_indeterminate"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = accessibilityLocalizedString(@"indeterminate.playback");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)view
{
  v9.receiver = self;
  v9.super_class = SUUIHorizontalLockupViewAccessibility;
  [(SUUIHorizontalLockupViewAccessibility *)&v9 _resolvePreviewStateAfterTransitionForFlipView:view];
  v4 = [(SUUIHorizontalLockupViewAccessibility *)self safeIntegerForKey:@"_previewState"];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_previewProgressIndicator"];
      v6 = currentProgressIndicator;
      currentProgressIndicator = v5;

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], currentProgressIndicator);
    }
  }

  else
  {
    if ([currentProgressIndicator accessibilityElementIsFocused])
    {
      v7 = [(SUUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_previewFrontView"];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
    }

    v8 = currentProgressIndicator;
    currentProgressIndicator = 0;
  }
}

@end