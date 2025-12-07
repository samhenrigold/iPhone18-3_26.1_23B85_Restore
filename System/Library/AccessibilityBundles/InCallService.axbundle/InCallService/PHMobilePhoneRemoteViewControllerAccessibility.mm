@interface PHMobilePhoneRemoteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHMobilePhoneRemoteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHMobilePhoneRemoteViewController" isKindOfClass:@"PHPhoneRemoteViewController"];
  [validationsCopy validateClass:@"PHPhoneRemoteViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PHPhoneRemoteViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PHMobilePhoneRemoteViewControllerAccessibility;
  [(PHMobilePhoneRemoteViewControllerAccessibility *)&v3 viewDidAppear:appear];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __64__PHMobilePhoneRemoteViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F10];
  v2 = [*(a1 + 32) safeValueForKey:@"view"];
  UIAccessibilityPostNotification(v1, v2);

  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"add.call.hint");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PHMobilePhoneRemoteViewControllerAccessibility;
  [(PHMobilePhoneRemoteViewControllerAccessibility *)&v3 viewWillDisappear:disappear];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end