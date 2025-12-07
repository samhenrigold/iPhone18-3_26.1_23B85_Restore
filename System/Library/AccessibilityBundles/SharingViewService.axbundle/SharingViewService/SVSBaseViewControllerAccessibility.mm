@interface SVSBaseViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SVSBaseViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SVSBaseViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SharingViewService.B389DoneViewController"];
  [validationsCopy validateClass:@"SharingViewService.B389DoneViewController" isKindOfClass:@"SVSBaseViewController"];
  [validationsCopy validateClass:@"SVSCurrentLocationIndicator"];
  [validationsCopy validateClass:@"SVSBaseViewController" hasInstanceMethod:@"containerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SVSBaseViewController" hasInstanceMethod:@"mainController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SharingViewService.B389SetupMainViewController" hasInstanceMethod:@"accessibilitySession" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPPairingSession" hasInstanceMethod:@"pairingLocation" withFullSignature:{"@", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = SVSBaseViewControllerAccessibility;
  [(SVSBaseViewControllerAccessibility *)&v20 viewDidAppear:appear];
  v4 = [(SVSBaseViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setAccessibilityContainerType:10];

  v5 = [(SVSBaseViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v5 _setAccessibilityAutomationType:6];

  MEMORY[0x29ED35320](@"SharingViewService.B389DoneViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SVSBaseViewControllerAccessibility *)self safeUIViewForKey:@"containerView"];
    [v6 _setAccessibilityViewIsModalBlock:&__block_literal_global_0];
    v7 = [v6 _accessibilityFindDescendant:&__block_literal_global_323];
    v8 = accessibilityLocalizedString(@"ax.current.location");
    v9 = UIAXStringForAllChildren();
    v10 = __UIAXStringForVariables();
    [v7 setAccessibilityLabel:{v10, v9, @"__AXStringForVariablesSentinel"}];

    [v7 setIsAccessibilityElement:1];
    v11 = [v6 _accessibilityFindDescendant:&__block_literal_global_337];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy_;
    v18[4] = __Block_byref_object_dispose_;
    v19 = 0;
    v12 = [(SVSBaseViewControllerAccessibility *)self safeValueForKey:@"mainController"];
    v13 = [v12 safeValueForKey:@"accessibilitySession"];

    v14 = [v13 safeValueForKey:@"pairingLocation"];
    v15 = objc_alloc_init(MEMORY[0x29EDB9260]);
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_345;
    v17[3] = &unk_29F2F7F88;
    v17[4] = v18;
    [v15 reverseGeocodeLocation:v14 completionHandler:v17];
    [v11 _setIsAccessibilityElementBlock:&__block_literal_global_352];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_3_353;
    v16[3] = &unk_29F2F7FB0;
    v16[4] = v18;
    [v11 _setAccessibilityLabelBlock:v16];

    _Block_object_dispose(v18, 8);
  }
}

BOOL __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED35320](@"UIStackView");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 subviews];
    v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_329];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED35320](@"SVSCurrentLocationIndicator");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED35320](@"UIImageView");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 superview];
    MEMORY[0x29ED35320](@"UIButton");
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_345(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    _AXLogWithFacility();
  }

  else
  {
    v16 = [a2 firstObject];
    v4 = [v16 name];
    v5 = [v16 thoroughfare];
    v6 = [v16 locality];
    v7 = [v16 administrativeArea];
    v8 = [v16 postalCode];
    v9 = [v16 country];
    v10 = [v16 inlandWater];
    v11 = [v16 ocean];
    v12 = __UIAXStringForVariables();
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v15 = v9;
      if (v9 || (v15 = v10) != 0 || (v15 = v11) != 0)
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), v15);
      }
    }
  }
}

@end