@interface TPSTipCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (TPSTipCollectionViewCellAccessibility)initWithFrame:(CGRect)frame;
- (id)_accessibilityScannerGroupElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setTip:(id)tip withCellAppearance:(id)appearance;
@end

@implementation TPSTipCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSTipCollectionViewCell" isKindOfClass:@"TPSBaseTipCollectionViewCell"];
  [validationsCopy validateClass:@"TPSBaseTipCollectionViewCell" hasInstanceMethod:@"tip" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSTip" hasInstanceMethod:@"fullContentAssets" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSAssets" hasInstanceMethod:@"alt" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSBaseTipCollectionViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSBaseTipCollectionViewCell" hasInstanceMethod:@"heroAssetView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSImageAssetView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPSVideoAssetView" hasInstanceMethod:@"videoPath" withFullSignature:{"@", 0}];
}

- (id)_accessibilityScannerGroupElements
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = [(TPSTipCollectionViewCellAccessibility *)self safeValueForKey:@"heroAssetView"];
  v4 = [v3 safeUIViewForKey:@"imageView"];

  if (v4)
  {
    v10 = v4;
    v11[0] = @"GroupElements";
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v10 count:1];
    v11[1] = @"GroupTraits";
    v12[0] = v5;
    v12[1] = &unk_2A234B568;
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v13[0] = v6;
    _accessibilityScannerGroupElements = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TPSTipCollectionViewCellAccessibility;
    _accessibilityScannerGroupElements = [(TPSTipCollectionViewCellAccessibility *)&v9 _accessibilityScannerGroupElements];
  }

  return _accessibilityScannerGroupElements;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = TPSTipCollectionViewCellAccessibility;
  [(TPSTipCollectionViewCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v3 = [(TPSTipCollectionViewCellAccessibility *)self safeValueForKey:@"_contentScrollView"];
  [v3 setIsAccessibilityScrollAncestor:0];

  objc_opt_class();
  v4 = [(TPSTipCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  accessibilityTraits = [v5 accessibilityTraits];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  v7 = [(TPSTipCollectionViewCellAccessibility *)self safeValueForKey:@"tip"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [(TPSTipCollectionViewCellAccessibility *)self safeValueForKey:@"heroAssetView"];
  v10 = [v9 safeUIViewForKey:@"imageView"];

  v11 = [(TPSTipCollectionViewCellAccessibility *)self safeValueForKey:@"heroAssetView"];
  v12 = [v11 safeValueForKey:@"videoPath"];

  [v10 setIsAccessibilityElement:1];
  v13 = [v8 safeValueForKey:@"fullContentAssets"];
  v14 = [v13 safeStringForKey:@"alt"];

  if (v12)
  {
    [v10 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
    v15 = accessibilityLocalizedString(@"video.role");
    v16 = __UIAXStringForVariables();
    [v10 setAccessibilityLabel:{v16, v14, @"__AXStringForVariablesSentinel"}];
  }

  else
  {
    [v10 _accessibilitySetRoleDescription:0];
    [v10 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
    [v10 setAccessibilityLabel:v14];
    [v10 setAccessibilityHint:0];
  }
}

- (TPSTipCollectionViewCellAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = TPSTipCollectionViewCellAccessibility;
  v3 = [(TPSTipCollectionViewCellAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TPSTipCollectionViewCellAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)setTip:(id)tip withCellAppearance:(id)appearance
{
  v5.receiver = self;
  v5.super_class = TPSTipCollectionViewCellAccessibility;
  [(TPSTipCollectionViewCellAccessibility *)&v5 setTip:tip withCellAppearance:appearance];
  [(TPSTipCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end