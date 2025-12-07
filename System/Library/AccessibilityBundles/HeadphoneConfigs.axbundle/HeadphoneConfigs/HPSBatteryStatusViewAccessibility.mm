@interface HPSBatteryStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- ($FFD8FFF7A5D2C2666551BEB14716E99F)_accessibilityBatteryStatus;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setupViews;
@end

@implementation HPSBatteryStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
}

- ($FFD8FFF7A5D2C2666551BEB14716E99F)_accessibilityBatteryStatus
{
  *&retstr->var8 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  v3 = [(HPSBatteryStatusViewAccessibility *)self safeValueForKey:?];
  v4 = [v3 safeValueForKey:?];
  v5 = __UIAccessibilityCastAsProtocol();

  [v5 batteryStatus:?];
  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v28 = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = HPSBatteryStatusViewAccessibility;
  [(HPSBatteryStatusViewAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  if ([(HPSBatteryStatusViewAccessibility *)self safeBoolForKey:?])
  {
    objc_initWeak(&location, self);
    v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:?];
    v4 = accessibilityLocalizedString(@"Left Earbud");
    [v3 setAccessibilityLabel:?];

    v20[1] = MEMORY[0x29EDCA5F8];
    v20[2] = 3221225472;
    v20[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v20[4] = &unk_29F2C2070;
    objc_copyWeak(&v21, &location);
    [v3 _setAccessibilityValueBlock:?];
    v19[1] = MEMORY[0x29EDCA5F8];
    v19[2] = 3221225472;
    v19[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v19[4] = &unk_29F2C20C0;
    objc_copyWeak(v20, &location);
    [v3 _setAccessibilityFrameBlock:?];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:?];
    v6 = accessibilityLocalizedString(@"Right Earbud");
    [v5 setAccessibilityLabel:?];

    v18[1] = MEMORY[0x29EDCA5F8];
    v18[2] = 3221225472;
    v18[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
    v18[4] = &unk_29F2C2070;
    objc_copyWeak(v19, &location);
    [v5 _setAccessibilityValueBlock:?];
    v17[1] = MEMORY[0x29EDCA5F8];
    v17[2] = 3221225472;
    v17[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
    v17[4] = &unk_29F2C20C0;
    objc_copyWeak(v18, &location);
    [v5 _setAccessibilityFrameBlock:?];
    v7 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:?];
    v8 = accessibilityLocalizedString(@"Case");
    [v7 setAccessibilityLabel:?];

    v16[1] = MEMORY[0x29EDCA5F8];
    v16[2] = 3221225472;
    v16[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
    v16[4] = &unk_29F2C2070;
    objc_copyWeak(v17, &location);
    [v7 _setAccessibilityValueBlock:?];
    v15[1] = MEMORY[0x29EDCA5F8];
    v15[2] = 3221225472;
    v15[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
    v15[4] = &unk_29F2C20C0;
    objc_copyWeak(v16, &location);
    [v7 _setAccessibilityFrameBlock:?];
    v25 = v3;
    v26 = v5;
    v27 = v7;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:? count:?];
    [(HPSBatteryStatusViewAccessibility *)self setAccessibilityElements:?];

    objc_destroyWeak(v16);
    objc_destroyWeak(v17);

    objc_destroyWeak(v18);
    objc_destroyWeak(v19);

    objc_destroyWeak(v20);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:?];
    v11 = [(HPSBatteryStatusViewAccessibility *)self safeValueForKey:?];
    v12 = [v11 safeValueForKey:?];
    [v10 setAccessibilityLabel:?];

    v14[1] = MEMORY[0x29EDCA5F8];
    v14[2] = 3221225472;
    v14[3] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
    v14[4] = &unk_29F2C2070;
    objc_copyWeak(v15, &location);
    [v10 _setAccessibilityValueBlock:?];
    objc_copyWeak(v14, &location);
    [v10 _setAccessibilityFrameBlock:?];
    v24 = v10;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:? count:?];
    [(HPSBatteryStatusViewAccessibility *)self setAccessibilityElements:?];

    objc_destroyWeak(v14);
    objc_destroyWeak(v15);

    objc_destroyWeak(&location);
  }
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [&v4 _accessibilityBatteryStatus];
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  v2 = AXFormatFloatWithPercentage();

  return v2;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:?];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [&v4 _accessibilityBatteryStatus];
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  v2 = AXFormatFloatWithPercentage();

  return v2;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:?];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [&v4 _accessibilityBatteryStatus];
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  if (BYTE8(v5))
  {
    v2 = AXFormatFloatWithPercentage();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:?];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [&v4 _accessibilityBatteryStatus];
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  v2 = AXFormatFloatWithPercentage();

  return v2;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:?];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

- (void)setupViews
{
  v3.receiver = self;
  v3.super_class = HPSBatteryStatusViewAccessibility;
  [(HPSBatteryStatusViewAccessibility *)&v3 setupViews];
  [(HPSBatteryStatusViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end