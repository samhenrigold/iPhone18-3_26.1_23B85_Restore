@interface STUsageReportAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityStringForDate:(id)date timePeriod:(unint64_t)period;
- (id)_countedDataSetForItemType:(unint64_t)type trustIdentifier:(id)identifier includeIndicatorImageName:(BOOL)name;
- (id)_timedDataSetForItemType:(unint64_t)type trustIdentifier:(id)identifier;
- (id)_timedDataSetForItemType:(unint64_t)type useDarkColors:(BOOL)colors;
- (id)screenTimeDataSet;
@end

@implementation STUsageReportAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"screenTimeDataSet" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"_countedDataSetForItemType:trustIdentifier:includeIndicatorImageName:" withFullSignature:{"@", "Q", "@", "B", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"_timedDataSetForItemType:useDarkColors:" withFullSignature:{"@", "Q", "B", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"_timedDataSetForItemType:trustIdentifier:" withFullSignature:{"@", "Q", "@", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"topUsageItemsWithMaxCount:type:includeAggregateItem:nonAggregateItems:darkColors:" withFullSignature:{"@", "Q", "Q", "B", "^@", "B", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataSet" hasInstanceMethod:@"dataPoints" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataPoint" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataPoint" hasInstanceMethod:@"segments" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"applicationUsageByStartOfDateIntervalByTrustIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"webUsageByStartOfDateIntervalByTrustIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"categoryUsageByStartOfDateIntervalByTrustIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"screenTimeByStartOfDateInterval" withFullSignature:{"@", 0}];
}

- (id)_accessibilityStringForDate:(id)date timePeriod:(unint64_t)period
{
  dateCopy = date;
  if (!dateCopy)
  {
    goto LABEL_6;
  }

  if (!period)
  {
    v6 = AXClockTimeStringForDate();
    goto LABEL_9;
  }

  if (period == 2)
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"week.of");
    v10 = AXDateStringForFormat();
    v7 = [v8 stringWithFormat:v9, v10];

    goto LABEL_10;
  }

  if (period != 1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = AXDateStringForFormat();
LABEL_9:
  v7 = v6;
LABEL_10:

  return v7;
}

- (id)screenTimeDataSet
{
  selfCopy = self;
  v30 = *MEMORY[0x29EDCA608];
  v28.receiver = self;
  v28.super_class = STUsageReportAccessibility;
  screenTimeDataSet = [(STUsageReportAccessibility *)&v28 screenTimeDataSet];
  _axTimePeriodForDescription = [(STUsageReportAccessibility *)selfCopy _axTimePeriodForDescription];
  v5 = [(STUsageReportAccessibility *)selfCopy safeDictionaryForKey:@"screenTimeByStartOfDateInterval"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = screenTimeDataSet;
  obj = [screenTimeDataSet safeArrayForKey:@"dataPoints"];
  v23 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v23)
  {
    v6 = *v25;
    v21 = *v25;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 safeValueForKey:@"date"];
        v10 = [(STUsageReportAccessibility *)selfCopy _accessibilityStringForDate:v9 timePeriod:_axTimePeriodForDescription];
        objc_opt_class();
        v11 = [v5 objectForKeyedSubscript:v9];
        v12 = __UIAccessibilityCastAsClass();

        [v12 doubleValue];
        if (v13 > 0.0)
        {
          v14 = MEMORY[0x29C2EBAB0](v13 < 60.0);
          __AXStringForVariables();
          v15 = _axTimePeriodForDescription;
          v16 = v5;
          v18 = v17 = selfCopy;
          [v8 setAccessibilityLabel:{v18, v14, @"__AXStringForVariablesSentinel"}];

          selfCopy = v17;
          v5 = v16;
          _axTimePeriodForDescription = v15;
          v6 = v21;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v23);
  }

  return v20;
}

- (id)_timedDataSetForItemType:(unint64_t)type trustIdentifier:(id)identifier
{
  v39 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v37.receiver = self;
  v37.super_class = STUsageReportAccessibility;
  v7 = [(STUsageReportAccessibility *)&v37 _timedDataSetForItemType:type trustIdentifier:identifierCopy];
  _axTimePeriodForDescription = [(STUsageReportAccessibility *)self _axTimePeriodForDescription];
  if (type - 2 > 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = [(STUsageReportAccessibility *)self safeValueForKey:off_29F2F3AA0[type - 2]];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v7;
  obj = [v7 safeArrayForKey:@"dataPoints"];
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"date";
    v12 = *v34;
    v27 = identifierCopy;
    do
    {
      v13 = 0;
      v28 = v10;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v33 + 1) + 8 * v13);
        v14 = [v31 safeValueForKey:v11];
        v32 = [(STUsageReportAccessibility *)self _accessibilityStringForDate:v14 timePeriod:_axTimePeriodForDescription];
        v15 = [v30 objectForKeyedSubscript:identifierCopy];
        v16 = [v15 objectForKeyedSubscript:v14];

        v17 = [v16 safeValueForKey:@"totalUsage"];
        [v17 doubleValue];
        if (v18 > 0.0)
        {
          v19 = MEMORY[0x29C2EBAB0](v18 < 60.0);
          __AXStringForVariables();
          v20 = v12;
          v21 = v11;
          v22 = _axTimePeriodForDescription;
          v24 = v23 = self;
          [v31 setAccessibilityLabel:{v24, v19, @"__AXStringForVariablesSentinel"}];

          self = v23;
          _axTimePeriodForDescription = v22;
          v11 = v21;
          v12 = v20;
          v10 = v28;

          identifierCopy = v27;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  return v26;
}

- (id)_timedDataSetForItemType:(unint64_t)type useDarkColors:(BOOL)colors
{
  v75[2] = *MEMORY[0x29EDCA608];
  v70.receiver = self;
  v70.super_class = STUsageReportAccessibility;
  v35 = [(STUsageReportAccessibility *)&v70 _timedDataSetForItemType:type useDarkColors:colors];
  _axTimePeriodForDescription = [(STUsageReportAccessibility *)self _axTimePeriodForDescription];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy_;
  v68 = __Block_byref_object_dispose_;
  v69 = 0;
  v57 = MEMORY[0x29EDCA5F8];
  v58 = 3221225472;
  v59 = __69__STUsageReportAccessibility__timedDataSetForItemType_useDarkColors___block_invoke;
  v60 = &unk_29F2F3A58;
  v62 = &v64;
  typeCopy = type;
  selfCopy = self;
  AXPerformSafeBlock();
  v40 = v65[5];
  _Block_object_dispose(&v64, 8);

  switch(type)
  {
    case 2uLL:
      goto LABEL_4;
    case 3uLL:
      v72 = &unk_2A22CCD88;
      v5 = [(STUsageReportAccessibility *)self safeValueForKey:@"categoryUsageByStartOfDateIntervalByTrustIdentifier"];
      v6 = v5;
      if (!v5)
      {
        v6 = objc_opt_new();
      }

      v73 = v6;
      v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      if (v5)
      {
        goto LABEL_16;
      }

LABEL_15:

LABEL_16:
      goto LABEL_18;
    case 4uLL:
LABEL_4:
      v74[0] = &unk_2A22CCD58;
      v5 = [(STUsageReportAccessibility *)self safeValueForKey:@"applicationUsageByStartOfDateIntervalByTrustIdentifier"];
      v6 = v5;
      if (!v5)
      {
        v6 = objc_opt_new();
      }

      v74[1] = &unk_2A22CCD70;
      v75[0] = v6;
      v7 = [(STUsageReportAccessibility *)self safeValueForKey:@"webUsageByStartOfDateIntervalByTrustIdentifier"];
      v8 = v7;
      if (!v7)
      {
        v8 = objc_opt_new();
      }

      v75[1] = v8;
      v39 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
      if (!v7)
      {
      }

      if (v5)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
  }

  v39 = 0;
LABEL_18:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [v35 safeArrayForKey:@"dataPoints"];
  v42 = [obj countByEnumeratingWithState:&v53 objects:v71 count:16];
  if (v42)
  {
    v37 = *v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v54 != v37)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v44 = v9;
        v11 = *(*(&v53 + 1) + 8 * v9);
        v12 = [v11 safeArrayForKey:@"segments"];
        v13 = [v11 safeValueForKey:@"date"];
        v45 = [(STUsageReportAccessibility *)self _accessibilityStringForDate:v13 timePeriod:_axTimePeriodForDescription];
        array = [MEMORY[0x29EDB8DE8] array];
        v15 = [v12 mutableCopy];
        array2 = [MEMORY[0x29EDB8DE8] array];
        v46[0] = MEMORY[0x29EDCA5F8];
        v46[1] = 3221225472;
        v46[2] = __69__STUsageReportAccessibility__timedDataSetForItemType_useDarkColors___block_invoke_361;
        v46[3] = &unk_29F2F3A80;
        v47 = v39;
        v43 = v13;
        v48 = v43;
        v17 = array;
        v49 = v17;
        v18 = array2;
        v50 = v18;
        v19 = v12;
        v51 = v19;
        v20 = v15;
        v52 = v20;
        [v40 enumerateObjectsUsingBlock:v46];
        v21 = accessibilityLabelForUsageItemsOverridingUsages(v18, v17, 0);
        if (![v20 count] || !objc_msgSend(v20, "count"))
        {
          goto LABEL_30;
        }

        v22 = 0;
        v23 = 0.0;
        do
        {
          LOBYTE(v64) = 0;
          objc_opt_class();
          v24 = [v19 objectAtIndexedSubscript:v22];
          v25 = [v24 safeValueForKey:@"amount"];
          v26 = __UIAccessibilityCastAsClass();

          if (v64 == 1)
          {
            abort();
          }

          [v26 doubleValue];
          v28 = v27;

          v23 = v23 + v28;
          ++v22;
        }

        while (v22 < [v20 count]);
        if (v23 > 0.0)
        {
          v29 = MEMORY[0x29C2EBAB0](v23 < 60.0, v23);
          v30 = MEMORY[0x29EDBA0F8];
          v31 = accessibilityLocalizedString(@"other.usage.format");
          v32 = [v30 stringWithFormat:v31, v29];
        }

        else
        {
LABEL_30:
          v32 = 0;
        }

        v33 = __AXStringForVariables();
        [v11 setAccessibilityLabel:{v33, v21, v32, @"__AXStringForVariablesSentinel"}];

        v9 = v44 + 1;
      }

      while (v44 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v53 objects:v71 count:16];
    }

    while (v42);
  }

  return v35;
}

uint64_t __69__STUsageReportAccessibility__timedDataSetForItemType_useDarkColors___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) topUsageItemsWithMaxCount:3 type:*(a1 + 48) includeAggregateItem:0 nonAggregateItems:0 darkColors:0];

  return MEMORY[0x2A1C71028]();
}

void __69__STUsageReportAccessibility__timedDataSetForItemType_useDarkColors___block_invoke_361(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v3, "safeIntegerForKey:", @"itemType"}];
  v5 = [v3 safeValueForKey:@"trustIdentifier"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v9 = [v8 safeValueForKey:@"totalUsage"];

  [v9 doubleValue];
  if (v10 > 0.0)
  {
    v18 = v5;
    v19 = v4;
    [*(a1 + 48) addObject:v9];
    [*(a1 + 56) addObject:v3];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(a1 + 64);
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) safeValueForKey:@"amount"];
          v17 = [v16 isEqual:v9];

          if (v17)
          {
            [*(a1 + 72) removeObject:*(a1 + 64)];
            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v5 = v18;
    v4 = v19;
  }
}

- (id)_countedDataSetForItemType:(unint64_t)type trustIdentifier:(id)identifier includeIndicatorImageName:(BOOL)name
{
  v36 = *MEMORY[0x29EDCA608];
  v34.receiver = self;
  v34.super_class = STUsageReportAccessibility;
  identifierCopy = identifier;
  v6 = [STUsageReportAccessibility _countedDataSetForItemType:sel__countedDataSetForItemType_trustIdentifier_includeIndicatorImageName_ trustIdentifier:type includeIndicatorImageName:?];
  selfCopy = self;
  _axTimePeriodForDescription = [(STUsageReportAccessibility *)self _axTimePeriodForDescription];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v6;
  obj = [v6 safeArrayForKey:@"dataPoints"];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 safeValueForKey:@"date"];
        v13 = [(STUsageReportAccessibility *)selfCopy _accessibilityStringForDate:v12 timePeriod:_axTimePeriodForDescription];
        v14 = [v11 safeArrayForKey:@"segments"];
        firstObject = [v14 firstObject];

        objc_opt_class();
        v16 = [firstObject safeValueForKey:@"amount"];
        v17 = __UIAccessibilityCastAsClass();

        if (!v17)
        {
LABEL_10:
          v19 = 0;
          goto LABEL_13;
        }

        if (type == 5)
        {
          v18 = @"notifications.count.format";
        }

        else
        {
          if (type != 6)
          {
            goto LABEL_10;
          }

          v18 = @"pickups.count.format";
        }

        v20 = MEMORY[0x29EDBA0F8];
        v21 = accessibilityLocalizedString(v18);
        v19 = [v20 stringWithFormat:v21, objc_msgSend(v17, "unsignedIntegerValue")];

LABEL_13:
        v22 = __AXStringForVariables();
        [v11 setAccessibilityLabel:{v22, v19, @"__AXStringForVariablesSentinel"}];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  return v24;
}

@end