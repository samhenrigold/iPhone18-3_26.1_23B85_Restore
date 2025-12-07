@interface SUUIVerticalLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_playAction:(id)action;
- (BOOL)hasOnlyStringViews;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityFindPlayButton;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryFooterViewsForThisCell:(BOOL)cell includeText:(BOOL)text;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SUUIVerticalLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIViewReuseCollectionViewCell" hasInstanceMethod:@"allExistingViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIVerticalLockupCollectionViewCell" hasInstanceVariable:@"_lockupView" withType:"SUUIVerticalLockupView"];
  [validationsCopy validateClass:@"SUUIVerticalLockupCollectionViewCell" isKindOfClass:@"SUUICollectionViewCell"];
  [validationsCopy validateClass:@"SUUIImageView"];
  [validationsCopy validateClass:@"SUUIAdornedImageView" hasInstanceVariable:@"_reuseView" withType:"SUUIAdornedImageViewReuseView"];
  [validationsCopy validateClass:@"SUUIAdornedImageViewReuseView" hasInstanceVariable:@"_playButton" withType:"SUUIPlayButton"];
}

- (BOOL)hasOnlyStringViews
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
  v3 = __UIAccessibilitySafeClass();

  v17 = 0;
  v4 = [v3 safeValueForKey:@"subviews"];
  v5 = __UIAccessibilitySafeClass();

  NSClassFromString(&cfstr_Suuiattributed.isa);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (id)accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  _accessibilityFindPlayButton = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  v4 = _accessibilityFindPlayButton;
  if (_accessibilityFindPlayButton && ([_accessibilityFindPlayButton accessibilityLabel], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v5 target:self selector:sel__playAction_];
    v10[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_accessibilityFindPlayButton
{
  v17 = *MEMORY[0x29EDCA608];
  [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:1 includeText:0];
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
        accessibilityIdentification = [v7 accessibilityIdentification];
        v9 = [accessibilityIdentification isEqualToString:@"PlayButton"];

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

- (BOOL)_playAction:(id)action
{
  _accessibilityFindPlayButton = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
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

- (id)accessibilityLabel
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
  v3 = __UIAccessibilitySafeClass();

  v29 = 0;
  v4 = [v3 safeValueForKey:@"subviews"];
  v5 = __UIAccessibilitySafeClass();

  v23 = v3;
  NSClassFromString(&cfstr_Suuiimageview.isa);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v7)
  {
    v9 = 0;
    v24 = 0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = 0;
  v24 = 0;
  v10 = *v26;
  v11 = 0x29EDC7000uLL;
  do
  {
    v12 = 0;
    do
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
      {
        [v13 accessibilityLabel];
        v9 = accessibilityLabel = v9;
LABEL_9:

        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && [v13 _accessibilityViewIsVisible])
      {
        accessibilityLabel = [v13 accessibilityLabel];
        v21 = accessibilityLabel;
        v22 = @"__AXStringForVariablesSentinel";
        __UIAXStringForVariables();
        v16 = v15 = v11;

        v24 = v16;
        v11 = v15;
        goto LABEL_9;
      }

LABEL_10:
      ++v12;
    }

    while (v8 != v12);
    v17 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    v8 = v17;
  }

  while (v17);
LABEL_18:

  v18 = v24;
  if (![v24 length])
  {
    v19 = v9;

    v18 = v19;
  }

  return v18;
}

- (id)accessibilityValue
{
  _accessibilityFindPlayButton = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
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

- (id)_accessibilitySupplementaryFooterViewsForThisCell:(BOOL)cell includeText:(BOOL)text
{
  textCopy = text;
  cellCopy = cell;
  v38 = *MEMORY[0x29EDCA608];
  array = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v8 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
    v9 = __UIAccessibilitySafeClass();

    v29 = v9;
    selfCopy = self;
    v36 = 0;
    v10 = [v9 safeValueForKey:@"subviews"];
    v11 = __UIAccessibilitySafeClass();

    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0x29EDC7000uLL;
      v16 = @"SUUIAttributedStringView";
      v17 = *v33;
      do
      {
        v18 = 0;
        v31 = v14;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v32 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array axSafelyAddObject:v19];
          }

          if (textCopy)
          {
            NSClassFromString(&v16->isa);
            if (objc_opt_isKindOfClass())
            {
              [array axSafelyAddObject:v19];
            }
          }

          if (cellCopy)
          {
            NSClassFromString(&cfstr_Suuiadornedima.isa);
            if (objc_opt_isKindOfClass())
            {
              v20 = v17;
              v21 = cellCopy;
              v22 = textCopy;
              v23 = v15;
              v24 = v12;
              v25 = v16;
              v26 = [v19 safeValueForKey:@"_reuseView"];
              v27 = [v26 safeValueForKey:@"_playButton"];

              if ([v27 _accessibilityViewIsVisible])
              {
                [v27 accessibilitySetIdentification:@"PlayButton"];
                [array axSafelyAddObject:v27];
              }

              v16 = v25;
              v12 = v24;
              v15 = v23;
              textCopy = v22;
              cellCopy = v21;
              v17 = v20;
              v14 = v31;
            }
          }

          ++v18;
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    [(SUUIVerticalLockupCollectionViewCellAccessibility *)selfCopy _accessibilitySetRetainedValue:array forKey:*MEMORY[0x29EDC7620]];
  }

  return array;
}

- (id)accessibilityElements
{
  if ([(SUUIVerticalLockupCollectionViewCellAccessibility *)self isAccessibilityElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:0 includeText:1];
  }

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SUUIVerticalLockupCollectionViewCellAccessibility *)self isAccessibilityElement]&& ([(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:0 includeText:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  _accessibilityFindPlayButton = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  if (_accessibilityFindPlayButton)
  {
    [(SUUIVerticalLockupCollectionViewCellAccessibility *)self accessibilityFrame];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIVerticalLockupCollectionViewCellAccessibility;
    [(SUUIVerticalLockupCollectionViewCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if (_AXSAutomationEnabled())
  {
    [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:1 includeText:1];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          [(SUUIVerticalLockupCollectionViewCellAccessibility *)self convertPoint:v13 toView:x, y];
          v14 = [v13 _accessibilityHitTest:eventCopy withEvent:?];
          if ([v14 isAccessibilityElement])
          {
            accessibilityIdentification = [v14 accessibilityIdentification];
            v16 = [accessibilityIdentification isEqualToString:@"PlayButton"];

            if (v16)
            {
              accessibilityLabel = [v14 accessibilityLabel];
              [v14 setAccessibilityIdentifier:accessibilityLabel];

              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SUUIVerticalLockupCollectionViewCellAccessibility;
  v14 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)&v19 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_14:

  return v14;
}

@end