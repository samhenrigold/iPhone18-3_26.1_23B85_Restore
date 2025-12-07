@interface TrendDetailDailyAverageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axDayStringForIndex:(int)index withFormatter:(id)formatter;
- (id)_axLabelForIndex:(int)index withFormatter:(id)formatter;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation TrendDetailDailyAverageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"accessibiliytQuantity365ForIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"accessibiliytQuantity90ForIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"accessibilityDayForStopIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"dayStops" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FitnessApp.TrendDetailDailyAverageView" hasInstanceMethod:@"accessibilityUnit" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(TrendDetailDailyAverageViewAccessibility *)self _accessibilityValueForKey:kUIAccessibilityStorageKeyChildren];
  if (!v3)
  {
    _accessibilityGraphData = [(TrendDetailDailyAverageViewAccessibility *)self _accessibilityGraphData];
    v3 = [NSMutableArray arrayWithCapacity:7];
    [(TrendDetailDailyAverageViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:kUIAccessibilityStorageKeyChildren];
    v5 = [(TrendDetailDailyAverageViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
    [v5 _accessibilityAddTrait:UIAccessibilityTraitHeader];
    [v3 addObject:v5];
    v6 = objc_alloc_init(NSDateFormatter);
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    if (v7 && [_accessibilityGraphData count] == &dword_4 + 3)
    {
      [v5 frame];
      v9 = v8 + v8;
      [v7 frame];
      v11 = v10;
      v12 = floorf(v11) - v9;
      v13 = [_accessibilityGraphData objectAtIndexedSubscript:1];
      [v13 floatValue];
      v15 = v14;
      v16 = [_accessibilityGraphData objectAtIndexedSubscript:0];
      [v16 floatValue];
      v18 = (v15 - v17);

      for (i = 0; i != 7; ++i)
      {
        v20 = [(TrendDetailDailyAverageViewAccessibility *)self _axLabelForIndex:i withFormatter:v6];
        if (v20)
        {
          v21 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:v7];
          v22 = [_accessibilityGraphData objectAtIndexedSubscript:i];
          [v22 floatValue];
          v24 = v23;

          [v21 setAccessibilityFrameInContainerSpace:{v24, v9, v18, v12}];
          [v21 setAccessibilityLabel:v20];
          [v3 addObject:v21];
        }
      }
    }

    [(TrendDetailDailyAverageViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:kUIAccessibilityStorageKeyChildren];
  }

  return v3;
}

- (id)_axLabelForIndex:(int)index withFormatter:(id)formatter
{
  v4 = *&index;
  formatterCopy = formatter;
  LOBYTE(v39) = 0;
  objc_opt_class();
  v7 = [(TrendDetailDailyAverageViewAccessibility *)self safeValueForKey:@"accessibilityUnit"];
  v8 = __UIAccessibilityCastAsClass();

  if (v8)
  {
    v9 = [(TrendDetailDailyAverageViewAccessibility *)self _axDayStringForIndex:v4 withFormatter:formatterCopy];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__3;
    v43 = __Block_byref_object_dispose__3;
    v44 = 0;
    AXPerformSafeBlock();
    v10 = v40[5];
    _Block_object_dispose(&v39, 8);

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__3;
    v43 = __Block_byref_object_dispose__3;
    v44 = 0;
    AXPerformSafeBlock();
    v11 = v40[5];
    _Block_object_dispose(&v39, 8);

    v37 = v10;
    [v10 doubleValueForUnit:v8];
    v13 = floor(v12 * 100.0 + 0.5) / 100.0;
    v36 = v11;
    [v11 doubleValueForUnit:v8];
    v15 = floor(v14 * 100.0 + 0.5);
    if (v13 >= v15 / 100.0)
    {
      v16 = v15 / 100.0;
    }

    else
    {
      v16 = v13;
    }

    if (v13 >= v15 / 100.0)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15 / 100.0;
    }

    v18 = [(TrendDetailDailyAverageViewAccessibility *)self _accessibilityValueForKey:@"kAXTrendDailyDetailGraphCachedMin"];
    v19 = [(TrendDetailDailyAverageViewAccessibility *)self _accessibilityValueForKey:@"kAXTrendDailyDetailGraphCachedMax"];
    if (!v18 || ([v18 doubleValue], v20 > v16))
    {
      v21 = [NSNumber numberWithDouble:v16];
      [(TrendDetailDailyAverageViewAccessibility *)self _accessibilitySetRetainedValue:v21 forKey:@"kAXTrendDailyDetailGraphCachedMin"];
    }

    v35 = v9;
    v38 = formatterCopy;
    if (!v19 || ([v19 doubleValue], v22 < v17))
    {
      v23 = [NSNumber numberWithDouble:v17];
      [(TrendDetailDailyAverageViewAccessibility *)self _accessibilitySetRetainedValue:v23 forKey:@"kAXTrendDailyDetailGraphCachedMax"];
    }

    v24 = accessibilityLocalizedString(@"trends.365.day.average");
    v33 = accessibilityLocalizedString(@"trends.value.with.unit");
    v25 = AXFormatFloat();
    v26 = [NSString stringWithFormat:v33, v25, v8];
    accessibilityLocalizedString(@"trends.90.day.average");
    v27 = v34 = v19;
    v28 = accessibilityLocalizedString(@"trends.value.with.unit");
    v29 = AXFormatFloat();
    v32 = [NSString stringWithFormat:v28, v29, v8];
    v30 = __AXStringForVariables();

    formatterCopy = v38;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t __75__TrendDetailDailyAverageViewAccessibility__axLabelForIndex_withFormatter___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) accessibiliytQuantity90ForIndex:*(a1 + 48)];

  return _objc_release_x1();
}

uint64_t __75__TrendDetailDailyAverageViewAccessibility__axLabelForIndex_withFormatter___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) accessibiliytQuantity365ForIndex:*(a1 + 48)];

  return _objc_release_x1();
}

- (id)_axDayStringForIndex:(int)index withFormatter:(id)formatter
{
  formatterCopy = formatter;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  AXPerformSafeBlock();
  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  if ([v5 intValue] < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = [v5 intValue] - 1;
    weekdaySymbols = [formatterCopy weekdaySymbols];
    if ([weekdaySymbols count] <= v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = [weekdaySymbols objectAtIndex:v6];
    }
  }

  return v8;
}

uint64_t __79__TrendDetailDailyAverageViewAccessibility__axDayStringForIndex_withFormatter___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) accessibilityDayForStopIndex:*(a1 + 48)];

  return _objc_release_x1();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = TrendDetailDailyAverageViewAccessibility;
  [(TrendDetailDailyAverageViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(TrendDetailDailyAverageViewAccessibility *)self safeArrayForKey:@"dayStops"];
  v4 = v3;
  if (v3 && [v3 count] && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    selfCopy2 = self;
    v8 = v4;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  [(TrendDetailDailyAverageViewAccessibility *)selfCopy2 _accessibilitySetRetainedValue:v8 forKey:@"kAXTrendDetailDailyAveragesGraphElements"];
  [(TrendDetailDailyAverageViewAccessibility *)self _accessibilitySetRetainedValue:0 forKey:kUIAccessibilityStorageKeyChildren];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TrendDetailDailyAverageViewAccessibility;
  [(TrendDetailDailyAverageViewAccessibility *)&v3 layoutSubviews];
  [(TrendDetailDailyAverageViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end