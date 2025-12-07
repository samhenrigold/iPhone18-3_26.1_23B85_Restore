@interface HKInteractiveChartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
+ (void)_axConfigureGraphAccessibilityFromData:(id)data forGraphView:(id)view;
+ (void)_axConfigureGraphViewInfoFromData:(id)data forGraphView:(id)view;
+ (void)_axTrimAndInterpolateValues:(id *)values withXvalues:(id *)xvalues;
- (id)_displayNameForDisplayType:(id)type;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)scope anchorDate:(id)date animated:(BOOL)animated;
- (void)_setDateSelectorToVisibleRange;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphViewDidEndSelection:(id)selection;
@end

@implementation HKInteractiveChartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKGraphZoomLevelConfiguration"];
  [validationsCopy validateClass:@"HKAccessibilityData"];
  [validationsCopy validateClass:@"HKGraphZoomLevelConfiguration" hasClassMethod:@"timeScopeForDateRange:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_setDateSelectorToVisibleRange" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_replacePrimaryGraphViewControllerWithTimeScope:anchorDate:animated:" withFullSignature:{"v", "q", "@", "B", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HKTimeScopeControl" hasInstanceMethod:@"selectedTimeScope" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"primaryGraphViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphViewController" hasInstanceMethod:@"graphView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceVariable:@"_currentTimeView" withType:"HKCurrentTimeView"];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceVariable:@"_currentValueView" withType:"UIView"];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"accessibilityDataForChart" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityData" hasInstanceMethod:@"accessibilitySpans" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataComprehensionMinYValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataComprehensionMaxYValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataComprehensionUnitForChart" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataSeriesType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"HKAccessibilityData" hasInstanceMethod:@"accessibilityPointData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityPointData" hasInstanceMethod:@"horizontalTimeCoordinate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityPointData" hasInstanceMethod:@"values" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityPointData" hasInstanceMethod:@"horizontalScreenCoordinate" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueAsNumber" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_displayNameForDisplayType:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_currentValueEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"lollipopController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"graphView:didUpdateSelectedPoint:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"graphViewDidEndSelection:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HKDisplayType" hasInstanceMethod:@"localization" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKDisplayTypeLocalization" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKLollipopController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"accessibilityDataForChart"];
  v4 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"primaryGraphViewController"];
  v5 = [v4 safeUIViewForKey:@"graphView"];

  [objc_opt_class() _axConfigureGraphViewInfoFromData:v3 forGraphView:v5];
  [objc_opt_class() _axConfigureGraphAccessibilityFromData:v3 forGraphView:v5];
}

+ (void)_axConfigureGraphViewInfoFromData:(id)data forGraphView:(id)view
{
  v25 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  viewCopy = view;
  MEMORY[0x29C2D9130](@"HKAccessibilityData");
  if (objc_opt_isKindOfClass())
  {
    v7 = [dataCopy safeDictionaryForKey:@"accessibilitySpans"];
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v9 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * v13), v20}];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      firstObject = [v8 firstObject];
      v16 = [firstObject safeValueForKey:@"dataComprehensionMinYValue"];
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = &unk_2A21BBCB8;
      }

      [viewCopy _accessibilitySetRetainedValue:v17 forKey:{@"kAXGraphViewYAxisMin", v20}];
      v18 = [firstObject safeValueForKey:@"dataComprehensionMaxYValue"];
      [viewCopy _accessibilitySetRetainedValue:v18 forKey:@"kAXGraphViewYAxisMax"];

      v19 = [firstObject safeStringForKey:@"dataComprehensionUnitForChart"];
      [viewCopy _accessibilitySetRetainedValue:v19 forKey:@"kAXGraphViewUnit"];

      [viewCopy _accessibilitySetIntegerValue:objc_msgSend(firstObject forKey:{"safeIntegerForKey:", @"dataSeriesType", @"kAXGraphViewDataSeriesType"}];
    }
  }
}

+ (void)_axConfigureGraphAccessibilityFromData:(id)data forGraphView:(id)view
{
  v61 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  viewCopy = view;
  MEMORY[0x29C2D9130](@"HKAccessibilityData");
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v42 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v41 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v40 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v36 = dataCopy;
    [dataCopy safeArrayForKey:@"accessibilityPointData"];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v58 = 0u;
    v8 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    v10 = *v56;
    v37 = *v56;
    v38 = viewCopy;
    while (1)
    {
      v11 = 0;
      v39 = v9;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        MEMORY[0x29C2D9130](@"HKAccessibilityPointData");
        if (objc_opt_isKindOfClass())
        {
          v13 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:viewCopy];
          v47 = [v12 safeStringForKey:@"horizontalTimeCoordinate"];
          v48 = v13;
          [v13 setAccessibilityLabel:?];
          v46 = v12;
          v14 = [v12 safeArrayForKey:@"values"];
          v15 = objc_opt_new();
          v45 = v14;
          if ([v14 count])
          {
            v44 = v11;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v16 = v14;
            v17 = [v16 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v52;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v52 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v51 + 1) + 8 * i);
                  v22 = [v21 safeStringForKey:{@"valueTitle", selfCopy}];
                  if (([v15 containsObject:v22] & 1) == 0)
                  {
                    [v15 addObject:v22];
                  }

                  v23 = [v21 safeStringForKey:@"valueType"];
                  [v15 axSafelyAddObject:v23];

                  v24 = [v21 safeStringForKey:@"valueDescription"];
                  [v15 axSafelyAddObject:v24];
                }

                v18 = [v16 countByEnumeratingWithState:&v51 objects:v59 count:16];
              }

              while (v18);
            }

            v25 = MEMORY[0x29C2D9150](v15);
            lastObject = [v16 lastObject];
            null = [lastObject safeValueForKey:@"valueAsNumber"];

            if (null)
            {
              [v40 addObject:null];
              v10 = v37;
              viewCopy = v38;
              v9 = v39;
              v11 = v44;
LABEL_23:

              [v41 addObject:v47];
              [v48 setAccessibilityValue:v25];
              [v46 safeCGFloatForKey:@"horizontalScreenCoordinate"];
              v29 = v28 + -5.0;
              [viewCopy frame];
              v31 = v30;
              [viewCopy frame];
              [v48 setAccessibilityFrameInContainerSpace:{v29, v31, 10.0}];
              [v42 addObject:v48];

              goto LABEL_24;
            }

            v10 = v37;
            viewCopy = v38;
            v9 = v39;
            v11 = v44;
          }

          else
          {
            v25 = 0;
          }

          null = [MEMORY[0x29EDB8E28] null];
          [v40 addObject:null];
          goto LABEL_23;
        }

LABEL_24:
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (!v9)
      {
LABEL_26:
        [viewCopy setAccessibilityElements:{v42, selfCopy}];
        v49 = v41;
        v50 = v40;
        [v35 _axTrimAndInterpolateValues:&v50 withXvalues:&v49];
        v32 = v50;

        v33 = v49;
        [viewCopy _accessibilitySetRetainedValue:v32 forKey:@"kAXGraphViewGraphElementsYValues"];
        [viewCopy _accessibilitySetRetainedValue:v33 forKey:@"kAXGraphViewGraphElementsXValues"];

        dataCopy = v36;
        break;
      }
    }
  }
}

+ (void)_axTrimAndInterpolateValues:(id *)values withXvalues:(id *)xvalues
{
  if (values)
  {
    if (xvalues)
    {
      if ([*values count])
      {
        if ([*xvalues count])
        {
          v6 = [*values count];
          if (v6 == [*xvalues count])
          {
            if ([*values count])
            {
              v7 = 0;
              while (1)
              {
                v8 = [*values objectAtIndexedSubscript:v7];
                null = [MEMORY[0x29EDB8E28] null];
                v10 = [v8 isEqual:null];

                if (!v10)
                {
                  break;
                }

                if ([*values count] <= ++v7)
                {
                  goto LABEL_12;
                }
              }

              if (!v7)
              {
                goto LABEL_13;
              }

LABEL_12:
              [*values removeObjectsInRange:{0, v7}];
              [*xvalues removeObjectsInRange:{0, v7}];
            }

LABEL_13:
            if ([*values count])
            {
              v11 = [*values count];
              v12 = v11 - 1;
              if (v11 >= 1)
              {
                v13 = (v11 - 1);
                while (1)
                {
                  v14 = [*values objectAtIndexedSubscript:v13];
                  null2 = [MEMORY[0x29EDB8E28] null];
                  v16 = [v14 isEqual:null2];

                  if (!v16)
                  {
                    break;
                  }

                  if (v13-- <= 0)
                  {
                    LODWORD(v13) = -1;
                    break;
                  }
                }

                v18 = v12 - v13;
                if (v12 > v13)
                {
                  v19 = v18;
                  [*values removeObjectsInRange:{v13 + 1, v18}];
                  [*xvalues removeObjectsInRange:{v13 + 1, v19}];
                }
              }

              if ([*values count] >= 3)
              {
                v45 = [*values count];
                if (v45 >= 1)
                {
                  v20 = 0;
                  v46 = v45 & 0x7FFFFFFF;
                  do
                  {
                    v21 = v20 << 32;
                    v22 = v20;
                    v23 = 1 - v20;
                    v24 = v20;
                    while (1)
                    {
                      v25 = [*values objectAtIndexedSubscript:v24];
                      null3 = [MEMORY[0x29EDB8E28] null];
                      v27 = [v25 isEqual:null3];

                      if (v27)
                      {
                        break;
                      }

                      ++v24;
                      v21 += 0x100000000;
                      ++v22;
                      --v23;
                      if (v24 >= v46)
                      {
                        return;
                      }
                    }

                    if (v24 >= v45)
                    {
                      break;
                    }

                    v28 = v21 >> 32;
                    v29 = v22;
                    v30 = HIDWORD(v21) + v23;
                    v20 = v21 >> 32;
                    while (1)
                    {
                      v31 = [*values objectAtIndexedSubscript:v20];
                      null4 = [MEMORY[0x29EDB8E28] null];
                      v33 = [v31 isEqual:null4];

                      if (!v33)
                      {
                        break;
                      }

                      ++v20;
                      ++v29;
                      v21 += 0x100000000;
                      ++v30;
                      if (v46 == v20)
                      {
                        return;
                      }
                    }

                    v34 = [*values objectAtIndexedSubscript:v24 - 1];
                    [v34 doubleValue];
                    v36 = v35;

                    v37 = [*values objectAtIndexedSubscript:v21 >> 32];
                    [v37 doubleValue];
                    v39 = v38;

                    if (v24 < v20)
                    {
                      v40 = (v39 - v36) / v30;
                      do
                      {
                        v41 = MEMORY[0x29EDBA070];
                        v42 = [*values objectAtIndexedSubscript:v28 - 1];
                        [v42 doubleValue];
                        v44 = [v41 numberWithDouble:v40 + v43];
                        [*values setObject:v44 atIndexedSubscript:v28];

                        ++v28;
                      }

                      while (v29 != v28);
                    }
                  }

                  while (v20 < v45);
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_setDateSelectorToVisibleRange
{
  v3.receiver = self;
  v3.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v3 _setDateSelectorToVisibleRange];
  [(HKInteractiveChartViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)scope anchorDate:(id)date animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v5 _replacePrimaryGraphViewControllerWithTimeScope:scope anchorDate:date animated:?];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __117__HKInteractiveChartViewControllerAccessibility__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v1 = __UIAccessibilityCastAsClass();
  v2 = [v1 view];
  v3 = [v2 _accessibilityViewAncestorIsKindOf:objc_opt_class()];

  [v3 _accessibilityClearChildren];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_displayNameForDisplayType:(id)type
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartViewControllerAccessibility;
  typeCopy = type;
  v5 = [(HKInteractiveChartViewControllerAccessibility *)&v10 _displayNameForDisplayType:typeCopy];
  v6 = [typeCopy safeValueForKeyPath:{@"localization.displayName", v10.receiver, v10.super_class}];

  v7 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"primaryGraphViewController"];
  v8 = [v7 safeUIViewForKey:@"graphView"];

  [v8 _accessibilitySetRetainedValue:v6 forKey:@"kAXGraphViewDisplayName"];

  return v5;
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v10 graphView:view didUpdateSelectedPoint:point];
  v5 = [(HKInteractiveChartViewControllerAccessibility *)self safeBoolForKey:@"_currentValueEnabled"];
  v6 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"lollipopController"];
  v7 = [v6 safeBoolForKey:@"isVisible"];

  if (v5)
  {
    v8 = @"_currentValueView";
  }

  else
  {
    v8 = @"_currentTimeView";
  }

  v9 = [(HKInteractiveChartViewControllerAccessibility *)self safeUIViewForKey:v8];
  [v9 setAccessibilityElementsHidden:v7];
}

- (void)graphViewDidEndSelection:(id)selection
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v5 graphViewDidEndSelection:selection];
  v4 = [(HKInteractiveChartViewControllerAccessibility *)self safeUIViewForKey:@"_currentValueView"];
  [v4 setAccessibilityElementsHidden:0];
}

@end