@interface PGControlsContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_controlsShouldAutoHide;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setPrefersControlsHidden:(BOOL)hidden animated:(BOOL)animated;
@end

@implementation PGControlsContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceMethod:@"_setPrefersControlsHidden:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceMethod:@"_controlsShouldAutoHide" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PGControlsView"];
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceVariable:@"_controlsView" withType:"PGControlsView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceMethod:@"prefersControlsHidden" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PGControlsViewModel"];
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceVariable:@"_viewModel" withType:"PGControlsViewModel"];
  [validationsCopy validateClass:@"PGControlsViewModelValues"];
  [validationsCopy validateClass:@"PGControlsViewModel" hasInstanceVariable:@"_values" withType:"PGControlsViewModelValues"];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"restoreButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"cancelButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"actionButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"skipBackButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"skipForwardButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_restoreButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_cancelButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_skipBackButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_actionButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_skipForwardButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_liveIndicatorBadgeButton" withType:"PGButtonView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v40 = *MEMORY[0x29EDCA608];
  v38.receiver = self;
  v38.super_class = PGControlsContainerViewAccessibility;
  [(PGControlsContainerViewAccessibility *)&v38 _accessibilityLoadAccessibilityInformation];
  v3 = [(PGControlsContainerViewAccessibility *)self safeValueForKey:@"_controlsView"];
  objc_initWeak(&location, self);
  v4 = [v3 safeValueForKey:@"_cancelButton"];
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v35[3] = &unk_29F2E3B18;
  objc_copyWeak(&v36, &location);
  [v4 _setAccessibilityLabelBlock:v35];

  v5 = [v3 safeValueForKey:@"_skipBackButton"];
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v33[3] = &unk_29F2E3B18;
  objc_copyWeak(&v34, &location);
  [v5 _setAccessibilityLabelBlock:v33];

  v6 = [v3 safeValueForKey:@"_skipForwardButton"];
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v31[3] = &unk_29F2E3B18;
  objc_copyWeak(&v32, &location);
  [v6 _setAccessibilityLabelBlock:v31];

  v7 = [v3 safeValueForKey:@"_restoreButton"];
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 3221225472;
  v29[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v29[3] = &unk_29F2E3B18;
  objc_copyWeak(&v30, &location);
  [v7 _setAccessibilityLabelBlock:v29];

  v8 = [v3 safeValueForKey:@"_actionButton"];
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v27[3] = &unk_29F2E3B18;
  objc_copyWeak(&v28, &location);
  [v8 _setAccessibilityLabelBlock:v27];

  v9 = [v3 safeValueForKey:@"_liveIndicatorBadgeButton"];
  v10 = accessibilityLocalizedString(@"pip.live");
  [v9 setAccessibilityLabel:v10];

  v11 = MEMORY[0x29EDB8D80];
  v12 = [v3 safeValueForKey:@"_cancelButton"];
  v13 = [v3 safeValueForKey:@"_skipBackButton"];
  v14 = [v3 safeValueForKey:@"_skipForwardButton"];
  v15 = [v3 safeValueForKey:@"_restoreButton"];
  v16 = [v3 safeValueForKey:@"_actionButton"];
  v17 = [v11 axArrayByIgnoringNilElementsWithCount:{5, v12, v13, v14, v15, v16}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v19)
  {
    v20 = *v24;
    v21 = *MEMORY[0x29EDC7F70];
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * v22) setAccessibilityTraits:{v21 | objc_msgSend(*(*(&v23 + 1) + 8 * v22), "accessibilityTraits")}];
        ++v22;
      }

      while (v19 != v22);
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v39 count:16];
    }

    while (v19);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"cancelButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"skipBackButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"skipForwardButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"restoreButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"actionButtonAccessibilityIdentifier"];

  return v4;
}

- (void)_setPrefersControlsHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  v7 = [(PGControlsContainerViewAccessibility *)self safeValueForKeyPath:@"_controlsView"];
  v8 = [v7 safeBoolForKey:@"prefersControlsHidden"];
  v12.receiver = self;
  v12.super_class = PGControlsContainerViewAccessibility;
  [(PGControlsContainerViewAccessibility *)&v12 _setPrefersControlsHidden:hiddenCopy animated:animatedCopy];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  if (!hiddenCopy && v8)
  {
    v9 = @"pip.controls.visible";
LABEL_6:
    v10 = *MEMORY[0x29EDC7EA8];
    v11 = accessibilityLocalizedString(v9);
    UIAccessibilityPostNotification(v10, v11);

    goto LABEL_7;
  }

  if (v8 != hiddenCopy)
  {
    v9 = @"pip.controls.hidden";
    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)_controlsShouldAutoHide
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || (_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0 || _AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PGControlsContainerViewAccessibility;
  return [(PGControlsContainerViewAccessibility *)&v4 _controlsShouldAutoHide];
}

@end