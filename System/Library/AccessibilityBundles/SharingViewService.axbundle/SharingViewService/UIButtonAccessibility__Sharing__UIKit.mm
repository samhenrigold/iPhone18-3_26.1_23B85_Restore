@interface UIButtonAccessibility__Sharing__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (BOOL)_axIsDismissButton;
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__Sharing__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AudioSoftwareUpdateViewController" hasInstanceMethod:@"handleDismissButton:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ProximityPairingViewController" hasInstanceMethod:@"handleDismissButton:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)_axIsDismissButton
{
  v39 = *MEMORY[0x29EDCA608];
  v35.receiver = self;
  v35.super_class = UIButtonAccessibility__Sharing__UIKit;
  accessibilityLabel = [(UIButtonAccessibility__Sharing__UIKit *)&v35 accessibilityLabel];
  if ([accessibilityLabel isEqualToString:@"x"])
  {
    v4 = 1;
    goto LABEL_30;
  }

  selfCopy = self;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allTargets = [(UIButtonAccessibility__Sharing__UIKit *)selfCopy allTargets];
  v7 = [allTargets countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (!v7)
  {
    v4 = 0;
    goto LABEL_29;
  }

  v8 = *v32;
  v21 = *v32;
  while (2)
  {
    v9 = 0;
    v22 = v7;
    do
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(allTargets);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [(UIButtonAccessibility__Sharing__UIKit *)selfCopy actionsForTarget:v10 forControlEvent:0x2000, v21];
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
LABEL_10:
        v15 = 0;
        while (1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v27 + 1) + 8 * v15) isEqualToString:@"handleDismissButton:"])
          {
            goto LABEL_27;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
            if (v13)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = [(UIButtonAccessibility__Sharing__UIKit *)selfCopy actionsForTarget:v10 forControlEvent:64];
      v16 = [v11 countByEnumeratingWithState:&v23 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
LABEL_18:
        v19 = 0;
        while (1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v23 + 1) + 8 * v19) isEqualToString:@"handleDismissButton:"])
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v11 countByEnumeratingWithState:&v23 objects:v36 count:16];
            if (v17)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }
        }

LABEL_27:

        v4 = 1;
        goto LABEL_29;
      }

LABEL_24:

      ++v9;
      v8 = v21;
    }

    while (v9 != v22);
    v7 = [allTargets countByEnumeratingWithState:&v31 objects:v38 count:16];
    v4 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  return v4;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  if ([(UIButtonAccessibility__Sharing__UIKit *)self _axIsDismissButton])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIButtonAccessibility__Sharing__UIKit;
  return [(UIButtonAccessibility__Sharing__UIKit *)&v4 _accessibilityUserTestingIsCancelButton];
}

- (id)accessibilityLabel
{
  if ([(UIButtonAccessibility__Sharing__UIKit *)self _axIsDismissButton])
  {
    v7.receiver = self;
    v7.super_class = UIButtonAccessibility__Sharing__UIKit;
    accessibilityLabel = [(UIButtonAccessibility__Sharing__UIKit *)&v7 accessibilityLabel];
    if (![accessibilityLabel length] || (objc_msgSend(accessibilityLabel, "isEqualToString:", @"x") & 1) != 0)
    {
      accessibilityLabel2 = accessibilityLocalizedString(@"dismiss.button");

      goto LABEL_7;
    }
  }

  v6.receiver = self;
  v6.super_class = UIButtonAccessibility__Sharing__UIKit;
  accessibilityLabel2 = [(UIButtonAccessibility__Sharing__UIKit *)&v6 accessibilityLabel];
LABEL_7:

  return accessibilityLabel2;
}

@end