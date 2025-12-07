@interface AKColorPaletteViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadColorInformation;
- (void)_axLoadCellAccessibility:(id)accessibility atIndexPath:(id)path;
- (void)_commonInit;
@end

@implementation AKColorPaletteViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKColorPaletteView" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"AKColorPaletteView" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKColorPaletteView" hasInstanceMethod:@"colors" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKColorPaletteView" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKColorPaletteView" hasInstanceMethod:@"_commonInit" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"akColorPickerRed" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"akColorPickerOrange" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"akColorPickerYellow" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"akColorPickerGreen" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"akColorPickerBlue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"akColorPickerPurple" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = AKColorPaletteViewAccessibility;
  [(AKColorPaletteViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v16 = 0;
  objc_opt_class();
  v3 = [(AKColorPaletteViewAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  indexPathsForVisibleItems = [v4 indexPathsForVisibleItems];
  v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 cellForItemAtIndexPath:v10];
        [(AKColorPaletteViewAccessibility *)self _axLoadCellAccessibility:v11 atIndexPath:v10];
      }

      v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  [(AKColorPaletteViewAccessibility *)self _accessibilityLoadColorInformation];
}

- (void)_accessibilityLoadColorInformation
{
  v16 = *MEMORY[0x29EDCA608];
  if (self)
  {
    if (_accessibilityLoadColorInformation_onceToken != -1)
    {
      [AKColorPaletteViewAccessibility _accessibilityLoadColorInformation];
    }

    [self safeArrayForKey:@"colors"];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v14 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          objc_opt_class();
          v7 = __UIAccessibilityCastAsClass();
          v8 = [_accessibilityLoadColorInformation_colorLocalizedInfo objectForKeyedSubscript:v7];
          v9 = v8;
          if (v8)
          {
            v10 = accessibilityLocalizedString(v8);
            [v7 setAccessibilityLabel:v10];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = AKColorPaletteViewAccessibility;
  [(AKColorPaletteViewAccessibility *)&v3 _commonInit];
  [(AKColorPaletteViewAccessibility *)self _accessibilityLoadColorInformation];
}

void __69__AKColorPaletteViewAccessibility__accessibilityLoadColorInformation__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v1 = [MEMORY[0x29EDC7A00] blackColor];
  v2 = [MEMORY[0x29EDC7A00] whiteColor];
  objc_opt_class();
  v3 = [MEMORY[0x29EDC7A00] safeValueForKey:@"akColorPickerRed"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [MEMORY[0x29EDC7A00] safeValueForKey:@"akColorPickerOrange"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [MEMORY[0x29EDC7A00] safeValueForKey:@"akColorPickerYellow"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [MEMORY[0x29EDC7A00] safeValueForKey:@"akColorPickerGreen"];
  v10 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v11 = [MEMORY[0x29EDC7A00] safeValueForKey:@"akColorPickerBlue"];
  v12 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v13 = [MEMORY[0x29EDC7A00] safeValueForKey:@"akColorPickerPurple"];
  v14 = __UIAccessibilityCastAsClass();

  [v0 setObject:@"color.picker.black" forKeyedSubscript:v1];
  [v0 setObject:@"color.picker.white" forKeyedSubscript:v2];
  if (v4)
  {
    [v0 setObject:@"color.picker.red" forKeyedSubscript:v4];
  }

  if (v6)
  {
    [v0 setObject:@"color.picker.orange" forKeyedSubscript:v6];
  }

  if (v8)
  {
    [v0 setObject:@"color.picker.yellow" forKeyedSubscript:v8];
  }

  if (v10)
  {
    [v0 setObject:@"color.picker.green" forKeyedSubscript:v10];
  }

  if (v12)
  {
    [v0 setObject:@"color.picker.blue" forKeyedSubscript:v12];
  }

  if (v14)
  {
    [v0 setObject:@"color.picker.purple" forKeyedSubscript:v14];
  }

  v15 = _accessibilityLoadColorInformation_colorLocalizedInfo;
  _accessibilityLoadColorInformation_colorLocalizedInfo = v0;
}

- (void)_axLoadCellAccessibility:(id)accessibility atIndexPath:(id)path
{
  accessibilityCopy = accessibility;
  pathCopy = path;
  [accessibilityCopy setIsAccessibilityElement:1];
  LOBYTE(v15) = 0;
  objc_opt_class();
  v8 = [(AKColorPaletteViewAccessibility *)self safeValueForKey:@"colors"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [pathCopy row];
  if (v10 < [v9 count])
  {
    v11 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v12 = AXColorStringForColor();
    [accessibilityCopy setAccessibilityLabel:v12];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v13 = v11;
    AXPerformSafeBlock();
    if (*(v16 + 24))
    {
      v14 = *MEMORY[0x29EDC7FC0];
    }

    else
    {
      v14 = 0;
    }

    [accessibilityCopy setAccessibilityTraits:v14 | *MEMORY[0x29EDC7F70]];

    _Block_object_dispose(&v15, 8);
  }
}

void __72__AKColorPaletteViewAccessibility__axLoadCellAccessibility_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"color"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 akIsEqualToColor:*(a1 + 40)];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AKColorPaletteViewAccessibility;
  pathCopy = path;
  v7 = [(AKColorPaletteViewAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(AKColorPaletteViewAccessibility *)self _axLoadCellAccessibility:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

@end