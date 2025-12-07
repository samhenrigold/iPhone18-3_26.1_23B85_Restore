@interface IdentityProofingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation IdentityProofingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CoreIDVUI.IdentityProofingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CoreIDVUI.IdentityProofingViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = IdentityProofingViewControllerAccessibility;
  [(IdentityProofingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(IdentityProofingViewControllerAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = IdentityProofingViewControllerAccessibility;
  [(IdentityProofingViewControllerAccessibility *)&v3 viewDidLoad];
  [(IdentityProofingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v11[1] = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = IdentityProofingViewControllerAccessibility;
  [(IdentityProofingViewControllerAccessibility *)&v9 viewDidAppear:appear];
  v4 = [(IdentityProofingViewControllerAccessibility *)self safeUIViewForKey:@"titleLabel"];
  accessibilityLabel = [v4 accessibilityLabel];

  if (accessibilityLabel)
  {
    v6 = objc_alloc(MEMORY[0x29EDB9F30]);
    v10 = *MEMORY[0x29EDC7F20];
    v11[0] = *MEMORY[0x29EDC7F00];
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 initWithString:accessibilityLabel attributes:v7];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v8);
  }
}

@end