@interface VoiceVolumeControlViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_animateContentUpdate;
@end

@implementation VoiceVolumeControlViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VoiceVolumeControlView" hasInstanceVariable:@"_currentSelection" withType:"NSInteger"];
  [validationsCopy validateClass:@"VoiceVolumeControlView" hasInstanceVariable:@"_buttons" withType:"NSArray"];
  [validationsCopy validateClass:@"VoiceVolumeControlView" hasInstanceMethod:@"_animateContentUpdate" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [(VoiceVolumeControlViewAccessibility *)self safeArrayForKey:@"_buttons"];
  v4 = [(VoiceVolumeControlViewAccessibility *)self safeIntegerForKey:@"_currentSelection"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x29EDC7FC0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v16 = 0;
        objc_opt_class();
        v11 = __UIAccessibilityCastAsClass();
        v12 = [v11 tag];
        accessibilityTraits = [v11 accessibilityTraits];
        if (v12 == v4)
        {
          v14 = v9 | accessibilityTraits;
        }

        else
        {
          v14 = _AXTraitsRemoveTrait();
        }

        [v11 setAccessibilityTraits:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15.receiver = self;
  v15.super_class = VoiceVolumeControlViewAccessibility;
  [(VoiceVolumeControlViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
}

- (void)_animateContentUpdate
{
  v3.receiver = self;
  v3.super_class = VoiceVolumeControlViewAccessibility;
  [(VoiceVolumeControlViewAccessibility *)&v3 _animateContentUpdate];
  [(VoiceVolumeControlViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end