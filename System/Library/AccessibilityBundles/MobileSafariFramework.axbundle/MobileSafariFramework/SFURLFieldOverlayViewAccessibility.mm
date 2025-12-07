@interface SFURLFieldOverlayViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFURLFieldOverlayViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = SFURLFieldOverlayViewAccessibility;
  [(SFURLFieldOverlayViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SFURLFieldOverlayViewAccessibility *)self safeArrayForKey:@"_buttons"];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = MEMORY[0x29EDCA5F8];
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        LOBYTE(location) = 0;
        objc_opt_class();
        v8 = __UIAccessibilityCastAsClass();
        if (location == 1)
        {
          abort();
        }

        v9 = v8;
        objc_initWeak(&location, v8);
        v10[0] = v6;
        v10[1] = 3221225472;
        v10[2] = __80__SFURLFieldOverlayViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v10[3] = &unk_29F2D67E0;
        objc_copyWeak(&v11, &location);
        [v9 setAccessibilityTraitsBlock:v10];
        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }
}

uint64_t __80__SFURLFieldOverlayViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained configuration];
  v4 = [v3 baseBackgroundColor];
  [v4 alphaComponent];
  v6 = v5;

  v7 = *MEMORY[0x29EDC7FA8];
  if (v6 >= 0.1)
  {
    v7 = 0;
  }

  return v7 | v1;
}

@end