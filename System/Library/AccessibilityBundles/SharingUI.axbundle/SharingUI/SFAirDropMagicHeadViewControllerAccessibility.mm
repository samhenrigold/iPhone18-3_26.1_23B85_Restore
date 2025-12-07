@interface SFAirDropMagicHeadViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axWheelView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)resetSecondLabel;
- (void)setSecondLabelText:(id)text withTextColor:(id)color animated:(BOOL)animated completion:(id)completion;
@end

@implementation SFAirDropMagicHeadViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFAirDropMagicHeadViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"nameLabel2" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"secondLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"resetSecondLabel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"setSecondLabelText:withTextColor:animated:completion:" withFullSignature:{"v", "@", "@", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeUIViewForKey:@"nameLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeUIViewForKey:@"nameLabel2"];
  [v4 setIsAccessibilityElement:0];

  v5 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeUIViewForKey:@"secondLabel"];
  [v5 setIsAccessibilityElement:0];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v3 loadView];
  [(SFAirDropMagicHeadViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setSecondLabelText:(id)text withTextColor:(id)color animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  textCopy = text;
  completionCopy = completion;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __102__SFAirDropMagicHeadViewControllerAccessibility_setSecondLabelText_withTextColor_animated_completion___block_invoke;
  v18[3] = &unk_29F2F7A30;
  v19 = textCopy;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = textCopy;
  colorCopy = color;
  v15 = MEMORY[0x29ED35260](v18);
  v17.receiver = self;
  v17.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v17 setSecondLabelText:v13 withTextColor:colorCopy animated:animatedCopy completion:v15];

  _axWheelView = [(SFAirDropMagicHeadViewControllerAccessibility *)self _axWheelView];
  [_axWheelView _axSetStatusText:v13];
}

uint64_t __102__SFAirDropMagicHeadViewControllerAccessibility_setSecondLabelText_withTextColor_animated_completion___block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)resetSecondLabel
{
  v4.receiver = self;
  v4.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v4 resetSecondLabel];
  _axWheelView = [(SFAirDropMagicHeadViewControllerAccessibility *)self _axWheelView];
  [_axWheelView _axSetStatusText:0];
}

- (id)_axWheelView
{
  objc_opt_class();
  v3 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeValueForKey:@"wheelView"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

@end