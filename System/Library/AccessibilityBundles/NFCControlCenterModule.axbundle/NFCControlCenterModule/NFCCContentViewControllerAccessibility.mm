@interface NFCCContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setModuleState:(int64_t)state animated:(BOOL)animated;
@end

@implementation NFCCContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NFCCContentViewController" hasInstanceVariable:@"_contentView" withType:"NFCCContentView"];
  [validationsCopy validateClass:@"NFCCContentViewController" hasInstanceVariable:@"_moduleState" withType:"q"];
  [validationsCopy validateClass:@"NFCCContentView" hasInstanceVariable:@"_statusView" withType:"NFCCStatusView"];
  [validationsCopy validateClass:@"NFCCStatusView" hasInstanceVariable:@"_scanTagPromptLabelWrapper" withType:"NFCCWrappedLabel"];
  [validationsCopy validateClass:@"NFCCStatusView" hasInstanceVariable:@"_unavailablePromptLabelWrapper" withType:"NFCCWrappedLabel"];
  [validationsCopy validateClass:@"NFCCContentViewController" hasInstanceMethod:@"_setModuleState:animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = NFCCContentViewControllerAccessibility;
  [(NFCCContentViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(NFCCContentViewControllerAccessibility *)self safeValueForKey:@"buttonView"];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __84__NFCCContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2DF690;
  objc_copyWeak(&v7, &location);
  [v3 _setAccessibilityValueBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __84__NFCCContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v4[3] = &unk_29F2DF6B8;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityTraitsBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __84__NFCCContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_contentView"];
  v3 = [v2 safeValueForKey:@"_statusView"];
  v4 = [v3 safeUIViewForKey:@"_scanTagPromptLabelWrapper"];
  v5 = [v3 safeUIViewForKey:@"_unavailablePromptLabelWrapper"];
  [v4 alpha];
  v6 = v4;
  if (v7 <= 0.5 && ([v5 alpha], v6 = v5, v8 <= 0.5))
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 accessibilityLabel];
  }

  return v9;
}

uint64_t __84__NFCCContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];
  v3 = MEMORY[0x29EDC7FA0];
  if (!v2)
  {
    v3 = MEMORY[0x29EDC7F70];
  }

  v4 = *v3;

  return v4;
}

- (void)_setModuleState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(NFCCContentViewControllerAccessibility *)self safeIntegerForKey:@"_moduleState"];
  v10.receiver = self;
  v10.super_class = NFCCContentViewControllerAccessibility;
  [(NFCCContentViewControllerAccessibility *)&v10 _setModuleState:state animated:animatedCopy];
  if ([(NFCCContentViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"]&& v7 != state && state <= 5)
  {
    v8 = accessibilityLocalizedString(off_29F2DF6D8[state]);
    if (v8)
    {
      v9 = v8;
      UIAccessibilitySpeakOrQueueIfNeeded();
    }
  }
}

@end