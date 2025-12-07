@interface CHWorkoutDetailHeartRateChartViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_accessibilityTimeIntervalPerSlice;
- (float)_decimalForDate:(id)date;
- (id)_accessibilityQuantityForSliceAtIndex:(unint64_t)index;
- (id)_axDateInterval;
- (id)accessibilityElements;
- (unint64_t)_accessibilityHoursPerSlice;
@end

@implementation CHWorkoutDetailHeartRateChartViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailHeartRateChartView" conformsToProtocol:@"FIUIChartDataSource"];
  [validationsCopy validateClass:@"CHWorkoutDetailHeartRateChartView" hasInstanceVariable:@"_heartRateReadings" withType:"NSArray"];
  [validationsCopy validateClass:@"CHWorkoutDetailHeartRateChartView" hasInstanceVariable:@"_heartRateChartPoints" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"CHWorkoutDetailHeartRateChartView" hasInstanceVariable:@"_chartView" withType:"FIUIChartView"];
  [validationsCopy validateClass:@"CHWorkoutDetailHeartRateChartView" hasInstanceVariable:@"_hasAdequateDataForDisplay" withType:"B"];
  [validationsCopy validateClass:@"CHWorkoutDetailHeartRateChartView" hasInstanceMethod:@"_dateInterval" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKQuantity" hasInstanceMethod:@"ch_beatsPerMinute" withFullSignature:{"d", 0}];
}

- (id)accessibilityElements
{
  v2 = [(CHWorkoutDetailHeartRateChartViewAccessibility *)self safeValueForKey:@"_chartView"];
  v3 = [v2 safeUIViewForKey:@"_containerView"];
  v4 = [NSArray axArrayByIgnoringNilElementsWithCount:1, v3];

  return v4;
}

- (id)_accessibilityQuantityForSliceAtIndex:(unint64_t)index
{
  _axDateInterval = [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _axDateInterval];
  v6 = _axDateInterval;
  if (!_axDateInterval)
  {
    v15 = 0;
    goto LABEL_25;
  }

  startDate = [_axDateInterval startDate];
  [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _accessibilityTimeIntervalPerSlice];
  index = [startDate dateByAddingTimeInterval:v8 * index];

  startDate2 = [v6 startDate];
  [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _accessibilityTimeIntervalPerSlice];
  v12 = [startDate2 dateByAddingTimeInterval:v11 * (index + 1)];

  v13 = [[NSDateInterval alloc] initWithStartDate:index endDate:v12];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [(CHWorkoutDetailHeartRateChartViewAccessibility *)self safeArrayForKey:@"_heartRateReadings"];
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v15)
  {
    goto LABEL_23;
  }

  v30 = index;
  v31 = v6;
  v16 = *v33;
  v17 = 2.22507386e-308;
  v18 = 1.79769313e308;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v33 != v16)
      {
        objc_enumerationMutation(v14);
      }

      objc_opt_class();
      v20 = __UIAccessibilityCastAsClass();
      v21 = v20;
      if (v20)
      {
        date = [v20 date];
        v23 = [v13 containsDate:date];

        if (v23)
        {
          quantity = [v21 quantity];
          [quantity safeDoubleForKey:@"ch_beatsPerMinute"];
          v26 = llround(v25);

          if (v17 < v26)
          {
            v17 = v26;
          }

          if (v18 > v26)
          {
            v18 = v26;
          }
        }
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v15);

  if (v17 == 2.22507386e-308)
  {
    index = v30;
    v6 = v31;
  }

  else
  {
    index = v30;
    v6 = v31;
    if (v18 != 1.79769313e308)
    {
      if (vabdd_f64(v17, v18) >= 2.22044605e-16)
      {
        v14 = accessibilityLocalizedString(@"heart.rate.graph.range");
        v27 = AXFormatFloat();
        v28 = AXFormatFloat();
        v15 = [NSString localizedStringWithFormat:v14, v27, v28];
      }

      else
      {
        v14 = accessibilityLocalizedString(@"heart.rate.graph.single");
        v27 = AXFormatFloat();
        v15 = [NSString localizedStringWithFormat:v14, v27];
      }

LABEL_23:
    }
  }

LABEL_25:

  return v15;
}

- (double)_accessibilityTimeIntervalPerSlice
{
  _axDateInterval = [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _axDateInterval];
  [_axDateInterval duration];
  v5 = v4 / [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _accessibilityNumberOfSlices];

  return v5;
}

- (unint64_t)_accessibilityHoursPerSlice
{
  _axDateInterval = [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _axDateInterval];
  [_axDateInterval duration];
  v5 = (v4 / 3600.0 / [(CHWorkoutDetailHeartRateChartViewAccessibility *)self _accessibilityNumberOfSlices]);

  return v5;
}

- (id)_axDateInterval
{
  objc_opt_class();
  v3 = [(CHWorkoutDetailHeartRateChartViewAccessibility *)self safeValueForKeyPath:@"dateInterval"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (float)_decimalForDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:224 fromDate:dateCopy];

  hour = [v5 hour];
  v7 = ([v5 minute] / 60.0) + hour;
  v8 = v7 + ([v5 second] / 3600.0);

  return v8;
}

@end