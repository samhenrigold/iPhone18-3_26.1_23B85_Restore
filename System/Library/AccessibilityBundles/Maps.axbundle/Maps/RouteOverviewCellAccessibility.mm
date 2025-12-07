@interface RouteOverviewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_axAdvisoryViews;
- (id)_axTextForElement;
- (id)accessibilityCustomActions;
- (id)artworkList;
- (id)automationElements;
- (id)tertiaryLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateLabels;
- (void)accessibilityElementDidBecomeFocused;
@end

@implementation RouteOverviewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_primaryLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceMethod:@"detailsButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_secondaryLabel" withType:"MapsThemeMultiPartLabel"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_routeDescriptionLabel" withType:"MapsThemeMultiPartLabel"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_tertiaryLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_elevationGraphView" withType:"DirectionsElevationGraphView"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_advisoriesView" withType:"RouteAdvisoriesView"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_goButton" withType:"MapsProgressBarButton"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_bookButton" withType:"BackgroundColorButton"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_stepsButton" withType:"UIButton"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_artworkList" withType:"TransitArtworkListView"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_detailsButton" withType:"UIButton"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_tertiaryLabelVisible" withType:"B"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_routeDescritptionLabelVisible" withType:"B"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_artworkListVisible" withType:"B"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_elevationGraphViewVisible" withType:"B"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_advisoriesViewVisible" withType:"B"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceVariable:@"_detailsButtonVisible" withType:"B"];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceMethod:@"artworkList" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceMethod:@"tertiaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TransitArtworkListView" hasInstanceMethod:@"artworkData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RouteOverviewCell" hasInstanceMethod:@"detailsButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RouteAdvisoryView" hasInstanceMethod:@"advisoryDetailPressed" withFullSignature:{"v", 0}];
  [validationsCopy validateProtocol:@"RouteOverviewCellDelegate" hasOptionalInstanceMethod:@"didTapDetailsButtonForRouteOverviewCell:"];
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v3 = objc_opt_new();
  v4 = [(RouteOverviewCellAccessibility *)self safeUIViewForKey:@"_goButton"];
  [v3 axSafelyAddObject:v4];
  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_detailsButtonVisible"])
  {
    v5 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"detailsButton"];
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = [(RouteOverviewCellAccessibility *)self valueForKey:@"delegate"];
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return v3 & 1;
}

- (id)accessibilityCustomActions
{
  v31 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  _axAdvisoryViews = [(RouteOverviewCellAccessibility *)self _axAdvisoryViews];
  v20 = _axAdvisoryViews;
  v4 = _axAdvisoryViews;
  if (_axAdvisoryViews)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = _axAdvisoryViews;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = [v8 safeValueForKey:@"actionHandler"];
          v10 = v9 == 0;

          if (!v10)
          {
            LOBYTE(location) = 0;
            objc_opt_class();
            v11 = [v8 safeValueForKey:@"_advisoryLabel"];
            v12 = __UIAccessibilityCastAsClass();

            if (location == 1)
            {
              abort();
            }

            v13 = MEMORY[0x29EDBA0F8];
            v14 = AXMapsLocString(@"ROUTE_ADVISORY_BUTTON_DETAILS");
            text = [v12 text];
            v16 = [v13 localizedStringWithFormat:v14, text];

            objc_initWeak(&location, v8);
            v17 = objc_alloc(MEMORY[0x29EDC78E0]);
            v23[0] = MEMORY[0x29EDCA5F8];
            v23[1] = 3221225472;
            v23[2] = __60__RouteOverviewCellAccessibility_accessibilityCustomActions__block_invoke;
            v23[3] = &unk_29F2CC4B8;
            objc_copyWeak(&v24, &location);
            v18 = [v17 initWithName:v16 actionHandler:v23];
            [array addObject:v18];

            objc_destroyWeak(&v24);
            objc_destroyWeak(&location);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    v4 = v20;
  }

  return array;
}

uint64_t __60__RouteOverviewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __60__RouteOverviewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained advisoryDetailPressed];
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = [(RouteOverviewCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_11 startWithSelf:0];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  v3 = v4;
  AXPerformSafeBlock();
}

uint64_t __70__RouteOverviewCellAccessibility_accessibilityElementDidBecomeFocused__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uidropshadowvi_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = RouteOverviewCellAccessibility;
  [(RouteOverviewCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(RouteOverviewCellAccessibility *)self _axAnnotateLabels];
}

- (id)_axTextForElement
{
  v63 = *MEMORY[0x29EDCA608];
  v3 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_primaryLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = AXMapsStringReplacingMiddleDots();
  v6 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_secondaryLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v30 = AXMapsStringReplacingMiddleDots();
  v8 = __AXStringForVariables();

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_tertiaryLabelVisible", v30, @"__AXStringForVariablesSentinel"])
  {
    v9 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_tertiaryLabel"];
    accessibilityLabel3 = [v9 accessibilityLabel];
    v31 = AXMapsStringReplacingMiddleDots();
    v35 = @"__AXStringForVariablesSentinel";
    v11 = __AXStringForVariables();

    v8 = v11;
  }

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_routeDescritptionLabelVisible", v31, v35])
  {
    v12 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_routeDescriptionLabel"];
    accessibilityLabel4 = [v12 accessibilityLabel];
    v32 = AXMapsStringReplacingMiddleDots();
    v36 = @"__AXStringForVariablesSentinel";
    v14 = __AXStringForVariables();

    v8 = v14;
  }

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_artworkListVisible", v32, v36])
  {
    v61 = 0;
    objc_opt_class();
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__0;
    v59 = __Block_byref_object_dispose__0;
    v60 = 0;
    v49 = MEMORY[0x29EDCA5F8];
    v50 = 3221225472;
    v51 = __51__RouteOverviewCellAccessibility__axTextForElement__block_invoke;
    v52 = &unk_29F2CC600;
    selfCopy = self;
    v54 = &v55;
    AXPerformSafeBlock();
    v15 = v56[5];
    _Block_object_dispose(&v55, 8);

    v16 = __UIAccessibilityCastAsClass();

    if (v61 == 1)
    {
LABEL_21:
      abort();
    }

    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__0;
    v59 = __Block_byref_object_dispose__0;
    v60 = 0;
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = __51__RouteOverviewCellAccessibility__axTextForElement__block_invoke_2;
    v46 = &unk_29F2CC600;
    v48 = &v55;
    v47 = v16;
    AXPerformSafeBlock();
    v17 = v56[5];

    _Block_object_dispose(&v55, 8);
    v33 = v17;
    v37 = @"__AXStringForVariablesSentinel";
    v18 = __AXStringForVariables();

    v8 = v18;
  }

  v19 = [(RouteOverviewCellAccessibility *)self _axAdvisoryViews:v33];
  v38 = v19;
  v20 = v19;
  if (v19)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v62 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        v24 = 0;
        v25 = v8;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v39 + 1) + 8 * v24);
          LOBYTE(v55) = 0;
          objc_opt_class();
          v27 = [v26 safeValueForKey:@"_advisoryLabel"];
          v28 = __UIAccessibilityCastAsClass();

          if (v55 == 1)
          {
            goto LABEL_21;
          }

          text = [v28 text];
          v8 = __AXStringForVariables();

          ++v24;
          v25 = v8;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v39 objects:v62 count:{16, text, @"__AXStringForVariablesSentinel"}];
      }

      while (v22);
    }

    v20 = v38;
  }

  return v8;
}

void __51__RouteOverviewCellAccessibility__axTextForElement__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_artworkList"];
  v2 = [v5 artworkData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __51__RouteOverviewCellAccessibility__axTextForElement__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x29EDC14A8] _accessibilityTransitArtworkTextForDataList:*(a1 + 32)];

  return MEMORY[0x2A1C71028]();
}

- (void)_axAnnotateLabels
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_primaryLabel"];
  v5 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_secondaryLabel"];
  v6 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_tertiaryLabel"];
  v7 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_artworkList"];
  v8 = [v3 axArrayByIgnoringNilElementsWithCount:{4, v4, v5, v6, v7}];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setAccessibilityElementsHidden:1];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)_axAdvisoryViews
{
  v11[1] = *MEMORY[0x29EDCA608];
  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_advisoriesViewVisible"]&& ([(RouteOverviewCellAccessibility *)self safeValueForKey:@"_advisoriesView"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    objc_opt_class();
    v5 = [v4 safeValueForKey:@"advisoryStackView"];
    v6 = __UIAccessibilityCastAsClass();

    arrangedSubviews = [v6 arrangedSubviews];
    if ([arrangedSubviews count])
    {
      arrangedSubviews2 = [v6 arrangedSubviews];
    }

    else
    {
      v11[0] = v4;
      arrangedSubviews2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
    }

    v9 = arrangedSubviews2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tertiaryLabel
{
  v5.receiver = self;
  v5.super_class = RouteOverviewCellAccessibility;
  tertiaryLabel = [(RouteOverviewCellAccessibility *)&v5 tertiaryLabel];
  [(RouteOverviewCellAccessibility *)self _axAnnotateLabels];

  return tertiaryLabel;
}

- (id)artworkList
{
  v5.receiver = self;
  v5.super_class = RouteOverviewCellAccessibility;
  artworkList = [(RouteOverviewCellAccessibility *)&v5 artworkList];
  [(RouteOverviewCellAccessibility *)self _axAnnotateLabels];

  return artworkList;
}

- (id)automationElements
{
  v3 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_primaryLabel"];
  [v3 setAccessibilityIdentifier:@"PrimaryLabel"];

  v4 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_secondaryLabel"];
  [v4 setAccessibilityIdentifier:@"SecondaryLabel"];

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_tertiaryLabelVisible"])
  {
    v5 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_tertiaryLabel"];
    [v5 setAccessibilityIdentifier:@"TertiaryLabel"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_artworkListVisible"])
  {
    v6 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_artworkList"];
    [v6 setAccessibilityIdentifier:@"ArtworkList"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_elevationGraphViewVisible"])
  {
    v7 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_elevationGraphView"];
    [v7 setAccessibilityIdentifier:@"ElevationGraph"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_advisoriesViewVisible"])
  {
    v8 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_advisoriesView"];
    [v8 setAccessibilityIdentifier:@"AdvisoriesView"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeIntegerForKey:@"_buttonVisibility"]== 1)
  {
    v9 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_goButton"];
    [v9 setAccessibilityIdentifier:@"GoButton"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeIntegerForKey:@"_buttonVisibility"]== 2)
  {
    v10 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_bookButton"];
    [v10 setAccessibilityIdentifier:@"BookButton"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeIntegerForKey:@"_buttonVisibility"]== 3)
  {
    v11 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_stepsButton"];
    [v11 setAccessibilityIdentifier:@"StepsButton"];
  }

  if ([(RouteOverviewCellAccessibility *)self safeBoolForKey:@"_detailsButtonVisible"])
  {
    v12 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_detailsButton"];
    [v12 setAccessibilityIdentifier:@"DetailsButton"];
  }

  v25 = MEMORY[0x29EDB8D80];
  v24 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_primaryLabel"];
  v13 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_secondaryLabel"];
  v14 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_tertiaryLabel"];
  v15 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_artworkList"];
  v16 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_detailsButton"];
  v17 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_elevationGraphView"];
  v18 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_advisoriesView"];
  v19 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_goButton"];
  v20 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_bookButton"];
  v21 = [(RouteOverviewCellAccessibility *)self safeValueForKey:@"_stepsButton"];
  v22 = [v25 axArrayByIgnoringNilElementsWithCount:{10, v24, v13, v14, v15, v16, v17, v18, v19, v20, v21}];

  return v22;
}

@end