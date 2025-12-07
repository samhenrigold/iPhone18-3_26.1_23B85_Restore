@interface MediaControlsHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCombinedTitleElement;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation MediaControlsHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"routingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"doneButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"routeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"primaryMarqueeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"secondaryMarqueeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"style" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"launchNowPlayingAppButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsPanelViewController"];
  [validationsCopy validateClass:@"MPRouteLabel"];
  [validationsCopy validateClass:@"MPRouteLabel" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v32.receiver = self;
  v32.super_class = MediaControlsHeaderViewAccessibility;
  [(MediaControlsHeaderViewAccessibility *)&v32 _accessibilityLoadAccessibilityInformation];
  v3 = [(MediaControlsHeaderViewAccessibility *)self safeValueForKey:@"doneButton"];
  v4 = accessibilityLocalizedString(@"done.button.label");
  [v3 setAccessibilityLabel:v4];

  objc_opt_class();
  v5 = [(MediaControlsHeaderViewAccessibility *)self safeValueForKey:@"primaryLabel"];
  v6 = __UIAccessibilityCastAsClass();

  LOBYTE(location) = 0;
  objc_opt_class();
  v7 = [(MediaControlsHeaderViewAccessibility *)self safeValueForKey:@"secondaryLabel"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [(MediaControlsHeaderViewAccessibility *)self safeUIViewForKey:@"primaryMarqueeView"];
  v10 = [(MediaControlsHeaderViewAccessibility *)self safeUIViewForKey:@"secondaryMarqueeView"];
  v11 = [(MediaControlsHeaderViewAccessibility *)self safeValueForKey:@"routeLabel"];
  v12 = [v11 safeValueForKey:@"titleLabel"];
  [v6 setIsAccessibilityElement:0];
  [v8 setIsAccessibilityElement:0];
  [v11 setIsAccessibilityElement:0];
  [v12 setIsAccessibilityElement:0];
  [v9 setAccessibilityElementsHidden:1];
  [v10 setAccessibilityElementsHidden:1];
  v13 = [(MediaControlsHeaderViewAccessibility *)self safeValueForKey:@"launchNowPlayingAppButton"];
  [v13 setIsAccessibilityElement:0];

  objc_initWeak(&location, self);
  v14 = NSClassFromString(&cfstr_Mediacontrolsp_0.isa);
  if (v14)
  {
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = __82__MediaControlsHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v29[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v29[4] = v14;
    v15 = [(MediaControlsHeaderViewAccessibility *)self _accessibilityFindAncestor:v29 startWithSelf:0];
    objc_initWeak(&v30, v15);

    v16 = objc_loadWeakRetained(&v30);
    [v16 setAccessibilityContainerType:4];

    v17 = objc_loadWeakRetained(&v30);
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = __82__MediaControlsHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v27[3] = &unk_29F2CF198;
    objc_copyWeak(&v28, &location);
    [v17 _setAccessibilityLabelBlock:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
  }

  v18 = [(MediaControlsHeaderViewAccessibility *)self safeUIViewForKey:@"routingButton"];
  v22 = MEMORY[0x29EDCA5F8];
  v23 = 3221225472;
  v24 = __82__MediaControlsHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v25 = &unk_29F2CF270;
  v19 = v18;
  v26 = v19;
  v20 = MEMORY[0x29C2DDD40](&v22);
  v21 = [v20 copy];
  [v19 _setAccessibilityPathBlock:v21];

  objc_destroyWeak(&location);
}

uint64_t __82__MediaControlsHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __82__MediaControlsHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"primaryMarqueeView"];
  [v2 alpha];
  if (v3 >= 0.1)
  {
    objc_opt_class();
    v5 = [WeakRetained safeValueForKey:@"routeLabel"];
    v6 = __UIAccessibilityCastAsClass();

    v4 = [v6 accessibilityLabel];
    if ([WeakRetained safeIntegerForKey:@"style"] != 2)
    {
      v9 = accessibilityLocalizedString(@"wha.panel.active");
      v7 = __UIAXStringForVariables();

      v4 = v7;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __82__MediaControlsHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) accessibilityFrame];
  v1 = MEMORY[0x29EDC7948];

  return [v1 bezierPathWithRoundedRect:? cornerRadius:?];
}

- (id)accessibilityElements
{
  _accessibilityCombinedTitleElement = [(MediaControlsHeaderViewAccessibility *)self _accessibilityCombinedTitleElement];
  v4 = [(MediaControlsHeaderViewAccessibility *)self safeUIViewForKey:@"primaryMarqueeView"];
  v5 = [(MediaControlsHeaderViewAccessibility *)self safeUIViewForKey:@"secondaryMarqueeView"];
  objc_opt_class();
  v6 = [(MediaControlsHeaderViewAccessibility *)self safeValueForKey:@"subviews"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 mutableCopy];
  [v8 removeObject:v4];
  [v8 removeObject:v5];
  [v8 insertObject:_accessibilityCombinedTitleElement atIndex:0];

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MediaControlsHeaderViewAccessibility;
  [(MediaControlsHeaderViewAccessibility *)&v3 layoutSubviews];
  [(MediaControlsHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilityCombinedTitleElement
{
  v3 = [(MediaControlsHeaderViewAccessibility *)self _accessibilityValueForKey:@"combinedTitleElement"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke;
    v11[3] = &unk_29F2CF198;
    objc_copyWeak(&v12, &location);
    [v3 _setAccessibilityLabelBlock:v11];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke_2;
    v9[3] = &unk_29F2CF298;
    objc_copyWeak(&v10, &location);
    [v3 _setAccessibilityFrameBlock:v9];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke_3;
    v7[3] = &unk_29F2CF2C0;
    objc_copyWeak(&v8, &location);
    v7[4] = self;
    [v3 _setAccessibilityHintBlock:v7];
    accessibilityTraits = [v3 accessibilityTraits];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke_4;
    v6[3] = &unk_29F2CF2E8;
    v6[4] = self;
    v6[5] = accessibilityTraits;
    [v3 _setAccessibilityTraitsBlock:v6];
    [(MediaControlsHeaderViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"combinedTitleElement"];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained safeValueForKey:@"primaryLabel"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 safeValueForKey:@"secondaryLabel"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 safeValueForKey:@"routeLabel"];

  v11 = [v10 accessibilityLabel];
  v12 = [v5 accessibilityLabel];
  v15 = [v8 accessibilityLabel];
  v13 = __UIAXStringForVariables();

  return v13;
}

double __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUIViewForKey:@"primaryMarqueeView"];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 safeUIViewForKey:@"secondaryMarqueeView"];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 safeUIViewForKey:@"routeLabel"];

  v8 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v3, v5, v7}];
  UIAXFrameForElements();
  v10 = v9;

  return v10;
}

id __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke_3(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained safeValueForKey:@"routeLabel"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [*(a1 + 32) safeValueForKey:@"launchNowPlayingAppButton"];
  v7 = __UIAccessibilityCastAsClass();

  LOBYTE(v6) = [v7 isHidden];
  v8 = [*(a1 + 32) safeIntegerForKey:@"style"];
  if (v6)
  {
    if (v8 == 2)
    {
      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityLocalizedString(@"expand.collapsed.route.hint");
      v11 = [v5 accessibilityLabel];
      v12 = [v9 localizedStringWithFormat:v10, v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = accessibilityLocalizedString(@"launch.now.playing.app.button.hint");
  }

  v15 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  v13 = __UIAXStringForVariables();

  return v13;
}

uint64_t __74__MediaControlsHeaderViewAccessibility__accessibilityCombinedTitleElement__block_invoke_4(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = [*(a1 + 32) safeValueForKey:@"launchNowPlayingAppButton"];
  v4 = __UIAccessibilityCastAsClass();

  LOBYTE(v3) = [v4 isHidden];
  if ((v3 & ([*(a1 + 32) safeIntegerForKey:@"style"] != 2)) != 0)
  {
    v5 = MEMORY[0x29EDC7FA0];
  }

  else
  {
    v5 = MEMORY[0x29EDC7F70];
  }

  return *v5 | *(a1 + 40);
}

@end