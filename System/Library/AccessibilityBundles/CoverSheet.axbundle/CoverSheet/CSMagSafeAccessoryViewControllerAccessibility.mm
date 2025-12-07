@interface CSMagSafeAccessoryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CSMagSafeAccessoryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSMagSafeAccessoryViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CSMagSafeAccessoryViewController" isKindOfClass:@"CSAccessoryViewController"];
  [validationsCopy validateClass:@"CSMagSafeAccessoryViewController" hasInstanceMethod:@"accessory" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSMagSafeAccessory" hasInstanceMethod:@"primaryColor" withFullSignature:{"@", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v19 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = CSMagSafeAccessoryViewControllerAccessibility;
  [(CSMagSafeAccessoryViewControllerAccessibility *)&v14 viewDidAppear:appear];
  v4 = [(CSMagSafeAccessoryViewControllerAccessibility *)self safeValueForKey:@"accessory"];
  buf[0] = 0;
  objc_opt_class();
  v5 = [v4 safeValueForKey:@"primaryColor"];
  v6 = __UIAccessibilityCastAsClass();

  if (buf[0] == 1)
  {
    abort();
  }

  v7 = AXLogAppAccessibility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_29BD70000, v7, OS_LOG_TYPE_DEFAULT, "MagSafe accessory: %@ %@", buf, 0x16u);
  }

  v8 = [v4 safeIntegerForKey:@"type"];
  accessibilityName = [v6 accessibilityName];
  if (v8 > 4)
  {
    switch(v8)
    {
      case 5:
        v10 = MEMORY[0x29EDBA0F8];
        v11 = @"mag.safe.detected.silicone";
        break;
      case 6:
        v10 = MEMORY[0x29EDBA0F8];
        v11 = @"mag.safe.detected.sleeve";
        break;
      case 8:
        v10 = MEMORY[0x29EDBA0F8];
        v11 = @"mag.safe.detected.wallet";
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v13 = accessibilitySBLocalizedString(@"mag.safe.detected.clear.case");
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v10 = MEMORY[0x29EDBA0F8];
    v11 = @"mag.safe.detected.leather";
LABEL_14:
    v12 = accessibilitySBLocalizedString(v11);
    v13 = [v10 stringWithFormat:v12, accessibilityName];

    if (v13)
    {
LABEL_15:
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v13);
    }
  }

LABEL_16:
}

@end