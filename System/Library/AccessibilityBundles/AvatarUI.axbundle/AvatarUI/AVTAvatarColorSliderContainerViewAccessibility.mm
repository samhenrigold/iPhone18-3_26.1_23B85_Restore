@interface AVTAvatarColorSliderContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setSectionItem:(id)item animated:(BOOL)animated;
@end

@implementation AVTAvatarColorSliderContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTColorPreset"];
  [validationsCopy validateClass:@"AVTAvatarColorSliderContainerView" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarColorSliderContainerView" hasInstanceMethod:@"sectionItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorSectionColorItem" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTCoreModelColor" hasInstanceMethod:@"baseColorPreset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarColorSliderContainerView" hasInstanceMethod:@"setSectionItem:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"AVTColorPreset" hasInstanceMethod:@"colorPresetWithVariation:" withFullSignature:{"@", "f", 0}];
  [validationsCopy validateClass:@"AVTColorPreset" hasInstanceMethod:@"previewColor" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVTAvatarColorSliderContainerViewAccessibility;
  [(AVTAvatarColorSliderContainerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = __Block_byref_object_copy_;
  v3[4] = __Block_byref_object_dispose_;
  v4 = [(AVTAvatarColorSliderContainerViewAccessibility *)self safeValueForKeyPath:@"sectionItem.color.baseColorPreset"];
  MEMORY[0x29C2CABD0](@"AVTColorPreset");
  if (objc_opt_isKindOfClass())
  {
    AXPerformSafeBlock();
  }

  _Block_object_dispose(v3, 8);
}

void __92__AVTAvatarColorSliderContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(void *a1, double a2)
{
  LODWORD(a2) = -1.0;
  v3 = [*(*(a1[5] + 8) + 40) colorPresetWithVariation:a2];
  LODWORD(v4) = 1.0;
  v5 = [*(*(a1[5] + 8) + 40) colorPresetWithVariation:v4];
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v7 = v5;
    AXPerformSafeBlock();
  }
}

void __92__AVTAvatarColorSliderContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v6 = [a1[4] previewColor];
  v2 = AXColorStringForColor();
  v3 = [a1[5] previewColor];
  v4 = AXColorStringForColor();
  v5 = [a1[6] safeValueForKey:@"slider"];
  [v5 _accessibilitySetRetainedValue:v2 forKey:@"AccessibilityMinColorNameKey"];
  [v5 _accessibilitySetRetainedValue:v4 forKey:@"AccessibilityMaxColorNameKey"];
}

- (void)setSectionItem:(id)item animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = AVTAvatarColorSliderContainerViewAccessibility;
  [(AVTAvatarColorSliderContainerViewAccessibility *)&v5 setSectionItem:item animated:animated];
  [(AVTAvatarColorSliderContainerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end