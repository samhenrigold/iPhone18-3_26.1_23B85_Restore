@interface HKSingleAudiogramChartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCollectSeriesDataForGraphView:(id)view;
- (id)_axHearingSensitivityFormatter;
- (id)_axSelectedXCoordinateForGraphView:(id)view;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupGraphViewDescription;
- (void)_axUpdateAXElementsForGraphView;
- (void)_axUpdateSelectionAXElementsForGraphView;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphViewDidEndSelection:(id)selection;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HKSingleAudiogramChartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"graphView:didUpdateSelectedPoint:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"graphViewDidEndSelection:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"_formattedFrequencyStringForFrequency:" withFullSignature:{"@", "d", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"scalarGraphViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"annotationViewDataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAudiogramAnnotationViewDataSource" hasSwiftFieldOfAnyClass:@"hearingSensitivityFormatter"];
  [validationsCopy validateClass:@"HKInteractiveChartHearingSensitivityFormatter" isKindOfClass:@"HKInteractiveChartDataFormatter"];
  [validationsCopy validateClass:@"HKInteractiveChartDataFormatter" hasInstanceMethod:@"formattedSelectedRangeLabelDataWithChartData:context:" withFullSignature:{"@", "@", "q", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartDataFormatter" hasInstanceMethod:@"valueStringFromNumber:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"HKScalarGraphViewController" isKindOfClass:@"HKGraphViewController"];
  [validationsCopy validateClass:@"HKGraphViewController" hasInstanceMethod:@"graphView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"allSeries" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"overlayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"enumerateVisibleCoordinatesForSeries:block:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceVariable:@"_seriesGroupRows" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"HKGraphSeries" hasInstanceMethod:@"visibleValueRange" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKValueRange" hasInstanceMethod:@"minValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKValueRange" hasInstanceMethod:@"maxValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKLineSeriesBlockCoordinate" hasInstanceMethod:@"userInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKLineSeriesBlockCoordinate" hasInstanceMethod:@"coordinate" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartData" hasInstanceMethod:@"frequencyHertz" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartData" hasInstanceMethod:@"sensitivityDBHL" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartData" hasInstanceMethod:@"isLeftEar" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HKSelectedRangeData" hasInstanceMethod:@"titleOverride" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKSelectedRangeData" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKGraphViewSeriesGroup" hasInstanceMethod:@"selectionContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKGraphViewSelectionContext" hasInstanceMethod:@"selectedRangeBoundariesXValue" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSetupGraphViewDescription];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateAXElementsForGraphView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSetupGraphViewDescription];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateAXElementsForGraphView];
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  v5.receiver = self;
  v5.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v5 graphView:view didUpdateSelectedPoint:point];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateSelectionAXElementsForGraphView];
}

- (void)graphViewDidEndSelection:(id)selection
{
  v4.receiver = self;
  v4.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v4 graphViewDidEndSelection:selection];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateSelectionAXElementsForGraphView];
}

- (void)_axSetupGraphViewDescription
{
  v3 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"scalarGraphViewController"];
  v4 = [v3 safeUIViewForKey:@"graphView"];

  if (v4)
  {
    [v4 _accessibilitySetShouldHitTestFallBackToNearestChild:1];
    v5 = accessibilityYodelLocalizedString(@"frequency.axis.title");
    [v4 _accessibilitySetRetainedValue:v5 forKey:@"kAXGraphViewXAxisTitle"];

    v6 = accessibilityYodelLocalizedString(@"audiogram.value.and.unit");
    [v4 _accessibilitySetRetainedValue:v6 forKey:@"kAXGraphViewYAxisValueUnit"];
    v20 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    navigationController = [v7 navigationController];
    navigationBar = [navigationController navigationBar];
    topItem = [navigationBar topItem];
    title = [topItem title];
    [v4 _accessibilitySetRetainedValue:title forKey:@"kAXGraphViewDisplayName"];

    _axHearingSensitivityFormatter = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axHearingSensitivityFormatter];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke;
    v17[3] = &unk_29F2C43B8;
    v18 = _axHearingSensitivityFormatter;
    v19 = v6;
    v13 = v6;
    v14 = _axHearingSensitivityFormatter;
    v15 = MEMORY[0x29C2D9420](v17);
    v16 = MEMORY[0x29C2D9420]();
    [v4 _accessibilitySetRetainedValue:v16 forKey:@"kAXGraphViewYValueDescriptorBlock"];
  }
}

id __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke(uint64_t a1, double a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v5 = MEMORY[0x29EDCA5F8];
  v6 = *(a1 + 32);
  AXPerformSafeBlock();
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:*(a1 + 40), v8[5], v5, 3221225472, __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke_434, &unk_29F2C4390];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke_434(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x29EDBA070] numberWithDouble:*(a1 + 48)];
  v4 = [v2 valueStringFromNumber:v3];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_axUpdateAXElementsForGraphView
{
  v106 = *MEMORY[0x29EDCA608];
  v2 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"scalarGraphViewController"];
  v64 = [v2 safeUIViewForKey:@"graphView"];

  if (v64)
  {
    _axHearingSensitivityFormatter = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axHearingSensitivityFormatter];
    v3 = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axCollectSeriesDataForGraphView:v64];
    v61 = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSelectedXCoordinateForGraphView:v64];
    [v61 floatValue];
    v5 = v4;
    v59 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v60 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v68 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v67 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v3;
    v62 = [obj countByEnumeratingWithState:&v98 objects:v105 count:16];
    if (v62)
    {
      v6 = (v5 + -1.0);
      v57 = *v99;
      v7 = *MEMORY[0x29EDB90B8];
      v8 = (v6 + 2);
      v9 = v6;
      v55 = *MEMORY[0x29EDC7FC0];
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v99 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v98 + 1) + 8 * i);
          v92 = 0;
          v93 = &v92;
          v94 = 0x3032000000;
          v95 = __Block_byref_object_copy_;
          v96 = __Block_byref_object_dispose_;
          v97 = 0;
          v11 = objc_opt_new();
          v91 = 0u;
          v90 = 0u;
          v89 = 0u;
          v88 = 0u;
          v65 = v10;
          v12 = [v65 countByEnumeratingWithState:&v88 objects:v104 count:16];
          v13 = v7;
          if (v12)
          {
            v14 = *v89;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v89 != v14)
                {
                  objc_enumerationMutation(v65);
                }

                v16 = *(*(&v88 + 1) + 8 * j);
                v17 = [v16 safeValueForKey:@"userInfo"];
                [v11 axSafelyAddObject:v17];
                [v16 safeCGPointForKey:@"coordinate"];
                v13 = v18;
                [v17 safeDoubleForKey:@"frequencyHertz"];
                v20 = v19;
                [v17 safeDoubleForKey:@"sensitivityDBHL"];
                v22 = v21;
                v23 = [v17 safeBoolForKey:@"isLeftEar"];
                v87[0] = MEMORY[0x29EDCA5F8];
                v87[1] = 3221225472;
                v87[2] = __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke;
                v87[3] = &unk_29F2C4390;
                v87[5] = &v92;
                v87[4] = self;
                v87[6] = v20;
                AXPerformSafeBlock();
                v24 = objc_alloc(MEMORY[0x29EDB8060]);
                v25 = [MEMORY[0x29EDB8068] valueWithCategory:v93[5]];
                v26 = [MEMORY[0x29EDB8068] valueWithNumber:v22];
                v27 = [v24 initWithX:v25 y:v26];

                if (v23)
                {
                  v28 = v68;
                }

                else
                {
                  v28 = v67;
                }

                [v28 axSafelyAddObject:v27];
              }

              v12 = [v65 countByEnumeratingWithState:&v88 objects:v104 count:16];
            }

            while (v12);
          }

          [v60 axSafelyAddObject:v93[5]];
          v81 = 0;
          v82 = &v81;
          v83 = 0x3032000000;
          v84 = __Block_byref_object_copy_;
          v85 = __Block_byref_object_dispose_;
          v86 = 0;
          v74 = MEMORY[0x29EDCA5F8];
          v75 = 3221225472;
          v76 = __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke_2;
          v77 = &unk_29F2C43E0;
          v80 = &v81;
          v78 = _axHearingSensitivityFormatter;
          v66 = v11;
          v79 = v66;
          AXPerformSafeBlock();
          v29 = objc_opt_new();
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v30 = v82[5];
          v31 = [v30 countByEnumeratingWithState:&v70 objects:v103 count:16];
          if (v31)
          {
            v32 = *v71;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v71 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v70 + 1) + 8 * k);
                v35 = [v34 safeStringForKey:@"titleOverride"];
                [v29 axSafelyAddObject:v35];
                objc_opt_class();
                v36 = [v34 safeValueForKey:@"attributedString"];
                v37 = __UIAccessibilityCastAsClass();

                string = [v37 string];
                [v29 axSafelyAddObject:string];
              }

              v31 = [v30 countByEnumeratingWithState:&v70 objects:v103 count:16];
            }

            while (v31);
          }

          v39 = [v64 safeUIViewForKey:@"overlayView"];
          v40 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v64];
          v41 = MEMORY[0x29C2D9150](v29);
          [v39 frame];
          v43 = v42;
          [v64 frame];
          v45 = v44;
          [v64 frame];
          [v40 setAccessibilityFrameInContainerSpace:{v13 + v43, v45, 3.0}];
          [v40 setAccessibilityLabel:v41];
          v46 = [MEMORY[0x29EDBA070] numberWithDouble:v13];
          [v40 _accessibilitySetRetainedValue:v46 forKey:@"kAXAccessibilityHealthUIAudiogramChartPointX"];

          v47 = v13 > v8 || v61 == 0;
          if (!v47 && v13 >= v9)
          {
            [v40 setAccessibilityTraits:v55];
          }

          [v59 addObject:v40];

          _Block_object_dispose(&v81, 8);
          _Block_object_dispose(&v92, 8);
        }

        v62 = [obj countByEnumeratingWithState:&v98 objects:v105 count:16];
      }

      while (v62);
    }

    [v64 setAccessibilityElements:v59];
    [v64 _accessibilitySetRetainedValue:v60 forKey:@"kAXGraphViewGraphElementsXValues"];
    v48 = objc_alloc(MEMORY[0x29EDB8070]);
    v49 = accessibilityYodelLocalizedString(@"left.ear");
    v50 = [v48 initWithName:v49 isContinuous:1 dataPoints:v68];

    v51 = objc_alloc(MEMORY[0x29EDB8070]);
    v52 = accessibilityYodelLocalizedString(@"right.ear");
    v53 = [v51 initWithName:v52 isContinuous:1 dataPoints:v67];

    v102[0] = v50;
    v102[1] = v53;
    v54 = [MEMORY[0x29EDB8D80] arrayWithObjects:v102 count:2];
    [v64 _accessibilitySetRetainedValue:v54 forKey:@"kAXGraphViewGraphElementsSeriesDescription"];
  }
}

void __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) _formattedFrequencyStringForFrequency:*(a1 + 48)];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) formattedSelectedRangeLabelDataWithChartData:*(a1 + 40) context:0];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_axCollectSeriesDataForGraphView:(id)view
{
  v31 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v29 = 0;
  objc_opt_class();
  v4 = [viewCopy safeValueForKey:@"allSeries"];
  v5 = __UIAccessibilityCastAsClass();

  v22 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v21 = *v26;
    do
    {
      v10 = 0;
      v11 = v8;
      v12 = v9;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v25 + 1) + 8 * v10) safeValueForKey:@"visibleValueRange"];
        v29 = 0;
        objc_opt_class();
        v14 = [v13 safeValueForKey:@"minValue"];
        v9 = __UIAccessibilityCastAsClass();

        if (v29 == 1 || (v12, v29 = 0, objc_opt_class(), [v13 safeValueForKey:@"maxValue"], v15 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v8 = objc_claimAutoreleasedReturnValue(), v15, v29 == 1))
        {
          abort();
        }

        v23 = viewCopy;
        v24 = v22;
        AXPerformSafeBlock();

        ++v10;
        v11 = v8;
        v12 = v9;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [viewCopy _accessibilitySetRetainedValue:v9 forKey:@"kAXGraphViewYAxisMin"];
  [viewCopy _accessibilitySetRetainedValue:v8 forKey:@"kAXGraphViewYAxisMax"];
  allKeys = [v22 allKeys];
  v17 = [allKeys sortedArrayUsingComparator:&__block_literal_global_0];

  v18 = [v22 objectsForKeys:v17 notFoundMarker:MEMORY[0x29EDB8E90]];

  return v18;
}

void __86__HKSingleAudiogramChartViewControllerAccessibility__axCollectSeriesDataForGraphView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __86__HKSingleAudiogramChartViewControllerAccessibility__axCollectSeriesDataForGraphView___block_invoke_2;
  v3[3] = &unk_29F2C4408;
  v4 = *(a1 + 48);
  [v1 enumerateVisibleCoordinatesForSeries:v2 block:v3];
}

void __86__HKSingleAudiogramChartViewControllerAccessibility__axCollectSeriesDataForGraphView___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeValueForKey:@"userInfo"];
    [v6 safeDoubleForKey:@"frequencyHertz"];
    v7 = [MEMORY[0x29EDBA070] numberWithDouble:?];
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = v8;
      [v8 axSafelyAddObject:v5];
    }

    else
    {
      v11[0] = v5;
      v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
      v9 = [v10 mutableCopy];
    }

    [*(a1 + 32) setObject:v9 forKey:v7];
  }
}

- (void)_axUpdateSelectionAXElementsForGraphView
{
  v37 = *MEMORY[0x29EDCA608];
  v3 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"scalarGraphViewController"];
  v4 = [v3 safeUIViewForKey:@"graphView"];

  v5 = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSelectedXCoordinateForGraphView:v4];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    accessibilityElements = [v4 accessibilityElements];
    v10 = [accessibilityElements countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = (v8 + -1.0);
      v13 = (v12 + 2);
      v14 = v12;
      v15 = *v28;
      v16 = *MEMORY[0x29EDC7FC0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v18 _accessibilityValueForKey:@"kAXAccessibilityHealthUIAudiogramChartPointX"];
          [v19 floatValue];
          v21 = v20;

          if (v21 <= v13 && v21 >= v14)
          {
            [v18 setAccessibilityTraits:v16];
          }
        }

        v11 = [accessibilityElements countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    accessibilityElements = [v4 accessibilityElements];
    v23 = [accessibilityElements countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          [*(*(&v31 + 1) + 8 * j) setAccessibilityTraits:0];
        }

        v24 = [accessibilityElements countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v24);
    }
  }
}

- (id)_axHearingSensitivityFormatter
{
  v2 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"annotationViewDataSource"];
  v3 = [v2 safeSwiftValueForKey:@"hearingSensitivityFormatter"];

  return v3;
}

- (id)_axSelectedXCoordinateForGraphView:(id)view
{
  v27 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v24 = 0;
  objc_opt_class();
  v4 = [viewCopy safeValueForKey:@"_seriesGroupRows"];
  v5 = __UIAccessibilityCastAsClass();

  v18 = viewCopy;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v20 + 1) + 8 * v10) safeValueForKey:@"selectionContext"];
      v24 = 0;
      objc_opt_class();
      v12 = [v11 safeValueForKey:@"selectedRangeBoundariesXValue"];
      v13 = __UIAccessibilityCastAsClass();

      if (v24 == 1)
      {
LABEL_19:
        abort();
      }

      memset(v19, 0, sizeof(v19));
      v14 = v13;
      if ([v14 countByEnumeratingWithState:v19 objects:v25 count:16])
      {
        v24 = 0;
        objc_opt_class();
        v15 = __UIAccessibilityCastAsClass();
        if (v24 == 1)
        {
          goto LABEL_19;
        }

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  return v16;
}

@end