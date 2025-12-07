@interface PLPillViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)automationElements;
@end

@implementation PLPillViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLPillView" hasInstanceMethod:@"centerContentItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLPillView" hasInstanceMethod:@"leadingAccessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLPillView" hasInstanceMethod:@"trailingAccessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLPillView" hasInstanceVariable:@"_materialView" withType:"MTMaterialView"];
  [validationsCopy validateClass:@"PLPillView" hasInstanceVariable:@"_contentView" withType:"PLPillContentView"];
  [validationsCopy validateClass:@"PLPillContentView" hasInstanceVariable:@"_leadingAccessoryView" withType:"UIView"];
  [validationsCopy validateClass:@"PLPillContentView" hasInstanceVariable:@"_trailingAccessoryView" withType:"UIView"];
  [validationsCopy validateClass:@"PLPillContentItem" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLPillContentItem" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = [(PLPillViewAccessibility *)self safeArrayForKey:@"centerContentItems"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v16 + 1) + 8 * v7);
        string = [v9 safeStringForKey:{@"text", v14, v15}];
        if (!string)
        {
          objc_opt_class();
          v11 = [v9 safeValueForKey:@"attributedText"];
          v12 = __UIAccessibilityCastAsClass();

          string = [v12 string];
        }

        v14 = string;
        v15 = @"__AXStringForVariablesSentinel";
        v5 = __UIAXStringForVariables();

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:{16, string, @"__AXStringForVariablesSentinel"}];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(PLPillViewAccessibility *)self safeValueForKey:@"leadingAccessoryView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v9[0] = v4;
    _accessibilitySupplementaryHeaderViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLPillViewAccessibility;
    _accessibilitySupplementaryHeaderViews = [(PLPillViewAccessibility *)&v8 _accessibilitySupplementaryHeaderViews];
  }

  v6 = _accessibilitySupplementaryHeaderViews;

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(PLPillViewAccessibility *)self safeValueForKey:@"trailingAccessoryView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v9[0] = v4;
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLPillViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(PLPillViewAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v6 = _accessibilitySupplementaryFooterViews;

  return v6;
}

- (id)accessibilityPath
{
  v2 = [(PLPillViewAccessibility *)self safeValueForKey:@"_materialView"];
  accessibilityPath = [v2 accessibilityPath];

  return accessibilityPath;
}

- (id)automationElements
{
  v2 = [(PLPillViewAccessibility *)self safeValueForKey:@"_contentView"];
  v3 = MEMORY[0x29EDB8D80];
  v4 = [v2 safeValueForKey:@"_leadingAccessoryView"];
  v5 = [v2 safeValueForKey:@"_trailingAccessoryView"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

@end