@interface PBControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_addTilesForPhotos:(id)photos animated:(BOOL)animated;
- (id)_reviewModeFooter;
- (void)_accessibilityApplyLabels:(id)labels;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_reloadTiles;
- (void)setCurrentMode:(int)mode animated:(BOOL)animated;
- (void)toggleCamera:(id)camera;
@end

@implementation PBControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBController" hasInstanceMethod:@"_reloadTiles" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PBController" hasInstanceMethod:@"_addTilesForPhotos: animated:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"PBController" hasInstanceMethod:@"setCurrentMode: animated:" withFullSignature:{"v", "i", "B", 0}];
  [validationsCopy validateClass:@"PBController" hasInstanceMethod:@"toggleCamera:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PBController" hasInstanceVariable:@"_effectsController" withType:"PBEffectsController"];
  [validationsCopy validateClass:@"PBController" hasInstanceMethod:@"_flipButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PBController" hasInstanceMethod:@"_filterButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PBControllerAccessibility *)self safeValueForKey:@"_filterButton"];
  v4 = axLocalizedString(@"filters.button.label");
  [v3 setAccessibilityLabel:v4];

  v5 = axLocalizedString(@"filters.button.hint");
  [v3 setAccessibilityHint:v5];
}

- (id)_addTilesForPhotos:(id)photos animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = PBControllerAccessibility;
  v4 = [(PBControllerAccessibility *)&v6 _addTilesForPhotos:photos animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);

  return v4;
}

- (void)_reloadTiles
{
  v2.receiver = self;
  v2.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v2 _reloadTiles];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_accessibilityApplyLabels:(id)labels
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = [labels items];
  v4 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(items);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 tag] - 1;
        if (v9 <= 5 && ((0x2Fu >> v9) & 1) != 0)
        {
          v10 = axLocalizedString(off_29F2E48A8[v9]);
          [v8 setAccessibilityLabel:v10];
        }
      }

      v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)_reviewModeFooter
{
  v5.receiver = self;
  v5.super_class = PBControllerAccessibility;
  _reviewModeFooter = [(PBControllerAccessibility *)&v5 _reviewModeFooter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PBControllerAccessibility *)self _accessibilityApplyLabels:_reviewModeFooter];
  }

  else
  {
    _AXAssert();
  }

  return _reviewModeFooter;
}

- (void)setCurrentMode:(int)mode animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v4 setCurrentMode:*&mode animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)toggleCamera:(id)camera
{
  v6.receiver = self;
  v6.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v6 toggleCamera:camera];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(PBControllerAccessibility *)self safeValueForKey:@"_flipButton"];
  UIAccessibilityPostNotification(v4, v5);
}

@end