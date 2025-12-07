@interface SUUICardViewElementCollectionViewCellAccessibility
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityFindPlayButton;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axAdornedImageElement;
- (id)_axLockupElements;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUICardViewElementCollectionViewCellAccessibility

- (id)_axLockupElements
{
  v18 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
  v4 = __UIAccessibilityCastAsClass();

  array = [MEMORY[0x29EDB8DE8] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuihorizontal_5.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Suuihorizontal_1.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Suuiattributed.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSClassFromString(&cfstr_Suuistyledbutt_0.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                NSClassFromString(&cfstr_Suuistacklistc_0.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }
        }

        [array addObject:{v11, v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_axAdornedImageElement
{
  v18 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
  v4 = __UIAccessibilityCastAsClass();

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuiadornedima.isa);
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)accessibilityLabel
{
  v23 = *MEMORY[0x29EDCA608];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _axLockupElements = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axLockupElements];
  v4 = [_axLockupElements countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(_axLockupElements);
        }

        accessibilityLabel = [*(*(&v18 + 1) + 8 * v8) accessibilityLabel];
        v17 = @"__AXStringForVariablesSentinel";
        v6 = __UIAXStringForVariables();

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [_axLockupElements countByEnumeratingWithState:&v18 objects:v22 count:{16, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    objc_opt_class();
    v10 = [(SUUICardViewElementCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
    v11 = __UIAccessibilityCastAsClass();
    v12 = MEMORY[0x29C2E1480]();

    v6 = v12;
  }

  if (![v6 length])
  {
    _axAdornedImageElement = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];

    if (_axAdornedImageElement)
    {
      v14 = accessibilityLocalizedString(@"play");

      v6 = v14;
    }
  }

  return v6;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if ([(SUUICardViewElementCollectionViewCellAccessibility *)self pointInside:eventCopy withEvent:x, y])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _accessibilitySupplementaryFooterViews = [(SUUICardViewElementCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViews];
    v9 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          [(SUUICardViewElementCollectionViewCellAccessibility *)self convertPoint:v13 toView:x, y];
          v14 = [v13 _accessibilityHitTest:eventCopy withEvent:?];
          if ([v14 isAccessibilityElement])
          {

            goto LABEL_13;
          }
        }

        v10 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16.receiver = self;
    v16.super_class = SUUICardViewElementCollectionViewCellAccessibility;
    v14 = [(SUUICardViewElementCollectionViewCellAccessibility *)&v16 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (id)_accessibilityFindPlayButton
{
  _axAdornedImageElement = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];
  v3 = [_axAdornedImageElement safeValueForKey:@"_reuseView"];
  v4 = [v3 safeValueForKey:@"_playButton"];

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  _axAdornedImageElement = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];

  if (!_axAdornedImageElement)
  {
    return 0;
  }

  _accessibilityFindPlayButton = [(SUUICardViewElementCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  accessibilityActivate = [_accessibilityFindPlayButton accessibilityActivate];

  return accessibilityActivate;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v31 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axLockupElements];
  v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v17 = *v26;
    do
    {
      v6 = 0;
      v18 = v4;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        NSClassFromString(&cfstr_Suuistyledbutt_0.isa);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v7];
        }

        else
        {
          _accessibilitySupplementaryFooterViews = [v7 _accessibilitySupplementaryFooterViews];
          array2 = [MEMORY[0x29EDB8DE8] array];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = _accessibilitySupplementaryFooterViews;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v21 + 1) + 8 * i);
                NSClassFromString(&cfstr_Suuihorizontal_1.isa);
                if (objc_opt_isKindOfClass())
                {
                  NSClassFromString(&cfstr_Suuiimageview.isa);
                  if (objc_opt_isKindOfClass())
                  {
                    continue;
                  }
                }

                [array2 addObject:{v15, v17}];
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v12);
          }

          if ([array2 count])
          {
            [array addObjectsFromArray:array2];
          }

          v5 = v17;
          v4 = v18;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  return array;
}

- (CGPoint)accessibilityActivationPoint
{
  _axAdornedImageElement = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];

  if (_axAdornedImageElement)
  {
    _accessibilityFindPlayButton = [(SUUICardViewElementCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
    [_accessibilityFindPlayButton accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUUICardViewElementCollectionViewCellAccessibility;
    [(SUUICardViewElementCollectionViewCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SUUICardViewElementCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SUUICardViewElementCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _axLockupElements = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axLockupElements];
  v3 = [_axLockupElements countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_axLockupElements);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuihorizontal_5.isa);
        if (objc_opt_isKindOfClass())
        {
          accessibilityCustomActions = [v7 accessibilityCustomActions];
          v9 = [accessibilityCustomActions count];

          if (v9)
          {
            accessibilityCustomActions2 = [v7 accessibilityCustomActions];
            goto LABEL_12;
          }
        }
      }

      v4 = [_axLockupElements countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  accessibilityCustomActions2 = 0;
LABEL_12:

  return accessibilityCustomActions2;
}

@end