@interface VUILibraryProductInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityGetInfoSections;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkHeaders;
- (void)didMoveToWindow;
@end

@implementation VUILibraryProductInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUILibraryProductInfoView" hasInstanceMethod:@"infos" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUILibraryProductInfoSection" hasInstanceMethod:@"headerContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUILibraryProductInfoSection" hasInstanceMethod:@"dataViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUILibraryProductInfoView" isKindOfClass:@"UIView"];
}

- (id)_accessibilityGetInfoSections
{
  v2 = [(VUILibraryProductInfoViewAccessibility *)self safeValueForKey:@"infos"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_12];

  return v4;
}

BOOL __71__VUILibraryProductInfoViewAccessibility__accessibilityGetInfoSections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __UIAccessibilitySafeClass();
  v4 = v3 != 0;

  return v4;
}

- (id)accessibilityElements
{
  v18 = *MEMORY[0x29EDCA608];
  _accessibilityGetInfoSections = [(VUILibraryProductInfoViewAccessibility *)self _accessibilityGetInfoSections];
  array = [MEMORY[0x29EDB8DE8] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _accessibilityGetInfoSections;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 safeValueForKey:{@"headerContentView", v13}];
        [array axSafelyAddObject:v10];

        v11 = [v9 safeValueForKey:@"dataViews"];
        [array axSafelyAddObjectsFromArray:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)_accessibilityMarkHeaders
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _accessibilityGetInfoSections = [(VUILibraryProductInfoViewAccessibility *)self _accessibilityGetInfoSections];
  v3 = [_accessibilityGetInfoSections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(_accessibilityGetInfoSections);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        v9 = [v8 safeValueForKey:@"headerContentView"];
        v10 = __UIAccessibilityCastAsClass();

        [v10 setAccessibilityTraits:{v6 | objc_msgSend(v10, "accessibilityTraits")}];
      }

      v4 = [_accessibilityGetInfoSections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VUILibraryProductInfoViewAccessibility;
  [(VUILibraryProductInfoViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VUILibraryProductInfoViewAccessibility *)self _accessibilityMarkHeaders];
}

- (void)didMoveToWindow
{
  [(VUILibraryProductInfoViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3.receiver = self;
  v3.super_class = VUILibraryProductInfoViewAccessibility;
  [(VUILibraryProductInfoViewAccessibility *)&v3 didMoveToWindow];
}

@end