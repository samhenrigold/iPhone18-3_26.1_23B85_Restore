@interface BKUIButtonTrayAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BKUIButtonTrayAccessibility)initWithFrame:(CGRect)frame willUseActionDelegate:(BOOL)delegate;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BKUIButtonTrayAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIButtonTray" hasInstanceVariable:@"_nextStateButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BKUIButtonTray" hasInstanceVariable:@"_bottomLinkButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BKUIButtonTray" hasInstanceMethod:@"initWithFrame:willUseActionDelegate:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "B", 0}];
}

- (BKUIButtonTrayAccessibility)initWithFrame:(CGRect)frame willUseActionDelegate:(BOOL)delegate
{
  v6.receiver = self;
  v6.super_class = BKUIButtonTrayAccessibility;
  v4 = [(BKUIButtonTrayAccessibility *)&v6 initWithFrame:delegate willUseActionDelegate:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(BKUIButtonTrayAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = BKUIButtonTrayAccessibility;
  [(BKUIButtonTrayAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_2A2127978 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v3)
  {
    v4 = *v12;
    v5 = MEMORY[0x29EDCA5F8];
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_2A2127978);
        }

        v7 = [(BKUIButtonTrayAccessibility *)self safeUIViewForKey:*(*(&v11 + 1) + 8 * v6)];
        objc_initWeak(&location, v7);
        v8[0] = v5;
        v8[1] = 3221225472;
        v8[2] = __73__BKUIButtonTrayAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v8[3] = &unk_29F2A8250;
        objc_copyWeak(&v9, &location);
        [v7 _setIsAccessibilityElementBlock:v8];
        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);

        ++v6;
      }

      while (v3 != v6);
      v3 = [&unk_2A2127978 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v3);
  }
}

BOOL __73__BKUIButtonTrayAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alpha];
  if (v3 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 accessibilityLabel];
    v6 = [v5 length] != 0;
  }

  return v6;
}

@end