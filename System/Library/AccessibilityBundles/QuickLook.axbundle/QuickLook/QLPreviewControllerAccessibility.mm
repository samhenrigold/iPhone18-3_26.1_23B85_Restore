@interface QLPreviewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_listButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateOverlayAnimated:(BOOL)animated animatedButtons:(BOOL)buttons forceRefresh:(BOOL)refresh withTraitCollection:(id)collection;
@end

@implementation QLPreviewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLPreviewController"];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"internalNavigationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"updateOverlayAnimated: animatedButtons: forceRefresh: withTraitCollection:" withFullSignature:{"v", "B", "B", "B", "@", 0}];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"_listButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"additionalRightBarButtonItems" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = QLPreviewControllerAccessibility;
  [(QLPreviewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityKeyboardDidAppear_ name:*MEMORY[0x29EDC81A0] object:0];
}

- (void)updateOverlayAnimated:(BOOL)animated animatedButtons:(BOOL)buttons forceRefresh:(BOOL)refresh withTraitCollection:(id)collection
{
  refreshCopy = refresh;
  buttonsCopy = buttons;
  animatedCopy = animated;
  collectionCopy = collection;
  v18.receiver = self;
  v18.super_class = QLPreviewControllerAccessibility;
  [(QLPreviewControllerAccessibility *)&v18 updateOverlayAnimated:animatedCopy animatedButtons:buttonsCopy forceRefresh:refreshCopy withTraitCollection:collectionCopy];
  objc_opt_class();
  v11 = [(QLPreviewControllerAccessibility *)self safeValueForKey:@"internalNavigationController"];
  v12 = __UIAccessibilityCastAsClass();

  v13 = [v12 safeValueForKey:@"navigationItem"];
  v14 = [v13 safeValueForKey:@"leftBarButtonItem"];
  v15 = UIKitAccessibilityLocalizedString();
  [v14 setAccessibilityLabel:v15];

  v16 = [v12 safeValueForKey:@"navigationItem"];
  v17 = [v16 safeValueForKey:@"leftBarButtonItem"];
  [v17 setAccessibilityTraits:*MEMORY[0x29EDC7500] | *MEMORY[0x29EDC7F70]];
}

- (id)_listButton
{
  v5.receiver = self;
  v5.super_class = QLPreviewControllerAccessibility;
  _listButton = [(QLPreviewControllerAccessibility *)&v5 _listButton];
  v3 = accessibilityLocalizedString(@"list.button.label");
  [_listButton setAccessibilityLabel:v3];

  return _listButton;
}

@end