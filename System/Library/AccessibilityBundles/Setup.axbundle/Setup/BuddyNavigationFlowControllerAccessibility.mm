@interface BuddyNavigationFlowControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (id)wifiController;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkMainNavBar;
- (void)_presentViewControllerForBuddyController:(id)controller animated:(BOOL)animated willPresentViewController:(id)viewController completion:(id)completion;
@end

@implementation BuddyNavigationFlowControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SetupController" hasInstanceMethod:@"navigationFlowController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"buddyControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"wifiController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"navigator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"_presentViewControllerForBuddyController:animated:willPresentViewController:completion:" withFullSignature:{"v", "@", "B", "@?", "@?", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowNavigator" hasInstanceMethod:@"navigationController" withFullSignature:{"@", 0}];
}

- (id)accessibilityIdentifier
{
  v14 = *MEMORY[0x29EDCA608];
  LOBYTE(v10) = 0;
  objc_opt_class();
  v3 = [(BuddyNavigationFlowControllerAccessibility *)self safeValueForKey:@"buddyControllers"];
  v4 = __UIAccessibilityCastAsClass();

  lastObject = [v4 lastObject];

  v6 = AXLogUIA();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    accessibilityIdentifier = [lastObject accessibilityIdentifier];
    v10 = 138412546;
    v11 = lastObject;
    v12 = 2112;
    v13 = accessibilityIdentifier;
    _os_log_impl(&dword_29C309000, v6, OS_LOG_TYPE_INFO, "NavBar: Buddy: identifier %@ %@", &v10, 0x16u);
  }

  accessibilityIdentifier2 = [lastObject accessibilityIdentifier];

  return accessibilityIdentifier2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = BuddyNavigationFlowControllerAccessibility;
  [(BuddyNavigationFlowControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(BuddyNavigationFlowControllerAccessibility *)self _accessibilityMarkMainNavBar];
}

- (void)_presentViewControllerForBuddyController:(id)controller animated:(BOOL)animated willPresentViewController:(id)viewController completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __133__BuddyNavigationFlowControllerAccessibility__presentViewControllerForBuddyController_animated_willPresentViewController_completion___block_invoke;
  v13[3] = &unk_29F2F5BD8;
  v13[4] = self;
  v14 = completionCopy;
  v12.receiver = self;
  v12.super_class = BuddyNavigationFlowControllerAccessibility;
  v11 = completionCopy;
  [(BuddyNavigationFlowControllerAccessibility *)&v12 _presentViewControllerForBuddyController:controller animated:animatedCopy willPresentViewController:viewController completion:v13];
}

void __133__BuddyNavigationFlowControllerAccessibility__presentViewControllerForBuddyController_animated_willPresentViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = AXLogUIA();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_29C309000, v4, OS_LOG_TYPE_INFO, "NavBar: Buddy: present view controller %@", &v6, 0xCu);
  }

  [*(a1 + 32) _accessibilityMarkMainNavBar];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_accessibilityMarkMainNavBar
{
  objc_opt_class();
  v3 = [(BuddyNavigationFlowControllerAccessibility *)self safeValueForKeyPath:@"navigator.navigationController"];
  v4 = __UIAccessibilityCastAsClass();

  navigationBar = [v4 navigationBar];
  [navigationBar accessibilitySetIdentification:@"AXSetupMainNavBar"];
}

- (id)wifiController
{
  v5.receiver = self;
  v5.super_class = BuddyNavigationFlowControllerAccessibility;
  wifiController = [(BuddyNavigationFlowControllerAccessibility *)&v5 wifiController];
  v3 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/PreferenceBundles/AirPortSettings.bundle"];
  [v3 load];
  [MEMORY[0x29EDC7358] loadAccessibilityBundleForBundle:v3 didLoadCallback:0 force:1 loadAllAccessibilityInfo:0];

  return wifiController;
}

@end