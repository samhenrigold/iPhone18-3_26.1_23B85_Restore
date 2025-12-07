@interface TIKBUserModelValues
- (TIKBUserModelValues)initWithInputMode:(id)mode context:(id)context userModelDataStore:(id)store durableCounters:(id)counters settingsDictionary:(id)dictionary;
- (id)bucketCountsByWordLength:(id)length;
- (id)calcAutocorrectionEnabled;
- (id)calcFloatingKeyboardUsageFromUserModel:(id)model;
- (id)calcTypingSpeedFromUserModel:(id)model;
- (id)computeValueFromExpression:(id)expression precondition:(id)precondition defaultValue:(id)value bindings:(id)bindings bucketThresholds:(id)thresholds bucketValues:(id)values;
- (id)computeValueWithDescriptor:(id)descriptor userModel:(id)model forNumberOfDays:(int)days;
- (id)computeValuesByWordLengthWithDescriptor:(id)descriptor userModel:(id)model forNumberOfDays:(int)days;
- (id)metricValue:(id)value userModel:(id)model forNumberOfDays:(int)days;
- (id)metricValuesByWordLength:(id)length userModel:(id)model forNumberOfDays:(int)days;
- (id)settingValueFromName:(id)name;
- (void)persistForDate:(id)date;
@end

@implementation TIKBUserModelValues

- (id)calcAutocorrectionEnabled
{
  kbContext = [(TIKBUserModelValues *)self kbContext];
  keyboardType = [kbContext keyboardType];

  settingsDictionary = [(TIUserModelValues *)self settingsDictionary];
  v6 = settingsDictionary;
  v7 = MEMORY[0x277D6F638];
  if (keyboardType != 5)
  {
    v7 = MEMORY[0x277D6F7C0];
  }

  v8 = [settingsDictionary objectForKey:*v7];

  return v8;
}

- (id)calcTypingSpeedFromUserModel:(id)model
{
  modelCopy = model;
  v5 = kFeatureCounterDurationPathedWords;
  v6 = MEMORY[0x277D6FD28];
  v7 = *MEMORY[0x277D6FD28];
  loadedDate = [modelCopy loadedDate];
  v9 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v5 forNumberOfDays:v7 fromLoadedDate:loadedDate];

  v10 = kFeatureCounterDurationTappedWords;
  v11 = *v6;
  loadedDate2 = [modelCopy loadedDate];
  v71 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v10 forNumberOfDays:v11 fromLoadedDate:loadedDate2];

  v13 = kFeatureValueWithWordLenWholeWordsPathed;
  v14 = *v6;
  loadedDate3 = [modelCopy loadedDate];
  v16 = v13;
  v17 = v9;
  v18 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v16 forNumberOfDays:v14 fromLoadedDate:loadedDate3];

  v19 = kFeatureValueWithWordLenWordCompletionsPathed;
  v20 = *v6;
  loadedDate4 = [modelCopy loadedDate];
  v22 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v19 forNumberOfDays:v20 fromLoadedDate:loadedDate4];

  v23 = kFeatureValueWithWordLenPathEligibleWordsTapped;
  v24 = *v6;
  loadedDate5 = [modelCopy loadedDate];
  v26 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v23 forNumberOfDays:v24 fromLoadedDate:loadedDate5];

  v27 = kFeatureValueWithWordLenPathIneligibleWordsTapped;
  v28 = *v6;
  v66 = modelCopy;
  loadedDate6 = [modelCopy loadedDate];
  v30 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v27 forNumberOfDays:v28 fromLoadedDate:loadedDate6];

  v31 = [v17 count];
  v69 = v26;
  v70 = v18;
  if (v31)
  {
    v32 = 0;
    v67 = v31;
    v68 = v30;
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = [v18 objectAtIndex:v32];
      intValue = [v35 intValue];
      v36 = [v22 objectAtIndex:v32];
      intValue2 = [v36 intValue];

      v37 = [v17 objectAtIndex:v32];
      intValue3 = [v37 intValue];

      v38 = [v69 objectAtIndex:v32];
      intValue4 = [v38 intValue];
      [v68 objectAtIndex:v32];
      v41 = v40 = v17;
      v42 = v22;
      intValue5 = [v41 intValue];

      v44 = [v71 objectAtIndex:v32];
      LODWORD(v41) = [v44 intValue];

      v45 = intValue4 + intValue5;
      v22 = v42;
      v33 += (intValue2 + intValue + v45) * (v32 + 1);
      v18 = v70;
      v34 += intValue3 + v41;
      v17 = v40;
      ++v32;
    }

    while (v67 != v32);
    v46 = v34;
    v47 = v33;
    v30 = v68;
  }

  else
  {
    v46 = 0.0;
    v47 = 0.0;
  }

  v48 = v47 / (v46 / 1000.0) / 5.0;
  v49 = v48 * 60.0;
  v50 = MEMORY[0x277CBEA60];
  LODWORD(v48) = 5.0;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  LODWORD(v52) = 10.0;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  LODWORD(v54) = 20.0;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  LODWORD(v56) = 1109393408;
  v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  LODWORD(v58) = 1117782016;
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
  v60 = [v50 arrayWithObjects:{v51, v53, v55, v57, v59, 0}];

  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:{kFeatureStringTypingSpeedVerySlow, kFeatureStringTypingSpeedSlow, kFeatureStringTypingSpeedMedium, kFeatureStringTypingSpeedFast, kFeatureStringTypingSpeedVeryFast, kFeatureStringTypingSpeedUnusual, 0}];
  v62 = MEMORY[0x277D6F320];
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
  v64 = [v62 bucketNumber:v63 bucketThresholds:v60 bucketValues:v61];

  return v64;
}

- (id)calcFloatingKeyboardUsageFromUserModel:(id)model
{
  v76 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  kbContext = [(TIKBUserModelValues *)self kbContext];
  userInterfaceIdiom = [kbContext userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    kbContext2 = [(TIKBUserModelValues *)self kbContext];
    keyboardType = [kbContext2 keyboardType];

    if (keyboardType == 3)
    {
      v9 = kFeatureCounterWithWordLenWordsTypedOnFloatingKeyboard;
      v10 = MEMORY[0x277D6FD28];
      v11 = *MEMORY[0x277D6FD28];
      loadedDate = [modelCopy loadedDate];
      v13 = [(TIUserModelValues *)self aggregatedCountFromTransientCounterWithName:v9 forNumberOfDays:v11 fromLoadedDate:loadedDate];
      [v13 doubleValue];
      v15 = v14;

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = [modelCopy contexts];
      v16 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      v17 = 0.0;
      if (v16)
      {
        v18 = v16;
        v19 = *v72;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v72 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v71 + 1) + 8 * i);
            if ([v21 userInterfaceIdiom] == 1)
            {
              v22 = [modelCopy valuesFromContext:v21];
              v23 = kFeatureValueWithWordLenWholeWordsPathed;
              v24 = *v10;
              loadedDate2 = [modelCopy loadedDate];
              v26 = [v22 aggregatedCountFromTransientCounterWithName:v23 forNumberOfDays:v24 fromLoadedDate:loadedDate2];
              [v26 doubleValue];
              v28 = v17 + v27;

              v29 = kFeatureValueWithWordLenWordCompletionsPathed;
              v30 = *v10;
              loadedDate3 = [modelCopy loadedDate];
              v32 = [v22 aggregatedCountFromTransientCounterWithName:v29 forNumberOfDays:v30 fromLoadedDate:loadedDate3];
              [v32 doubleValue];
              v34 = v28 + v33;

              v35 = kFeatureValueWithWordLenPathEligibleWordsTapped;
              v36 = *v10;
              loadedDate4 = [modelCopy loadedDate];
              v38 = [v22 aggregatedCountFromTransientCounterWithName:v35 forNumberOfDays:v36 fromLoadedDate:loadedDate4];
              [v38 doubleValue];
              v40 = v34 + v39;

              v41 = kFeatureValueWithWordLenPathIneligibleWordsTapped;
              v42 = *v10;
              loadedDate5 = [modelCopy loadedDate];
              v44 = [v22 aggregatedCountFromTransientCounterWithName:v41 forNumberOfDays:v42 fromLoadedDate:loadedDate5];
              [v44 doubleValue];
              v17 = v40 + v45;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
        }

        while (v18);
      }

      v46 = v15 / v17;
      if (v17 == 0.0)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = v15 / v17;
      }

      v48 = MEMORY[0x277CBEA60];
      LODWORD(v46) = 1008981770;
      v49 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
      LODWORD(v50) = 1045220557;
      v51 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
      LODWORD(v52) = 1053609165;
      v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
      LODWORD(v54) = 1058642330;
      v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
      LODWORD(v56) = 1061997773;
      v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
      LODWORD(v58) = 1065185444;
      v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
      v60 = [v48 arrayWithObjects:{v49, v51, v53, v55, v57, v59, 0}];

      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D6FD60], *MEMORY[0x277D6FD58], *MEMORY[0x277D6FD38], *MEMORY[0x277D6FD40], *MEMORY[0x277D6FD30], *MEMORY[0x277D6FD50], *MEMORY[0x277D6FD48], 0}];
      v62 = MEMORY[0x277D6F320];
      value = [MEMORY[0x277CCABB0] numberWithDouble:v47];
      v64 = [v62 bucketNumber:value bucketThresholds:v60 bucketValues:v61];
    }

    else
    {
      v60 = [*MEMORY[0x277D6FDB0] stringByAppendingString:kFeatureCounterTotalWordsTypedOnFloatingKeyboard];
      userModelDataStore = [(TIUserModelValues *)self userModelDataStore];
      v61 = [userModelDataStore getDurableValueForKey:v60];

      value = [v61 value];
      intValue = [value intValue];
      v68 = MEMORY[0x277D6FD60];
      if (intValue <= 0)
      {
        v68 = MEMORY[0x277D6FD78];
      }

      v64 = *v68;
    }

    v65 = v64;
  }

  else
  {
    v65 = *MEMORY[0x277D6FD80];
  }

  return v65;
}

- (id)computeValueFromExpression:(id)expression precondition:(id)precondition defaultValue:(id)value bindings:(id)bindings bucketThresholds:(id)thresholds bucketValues:(id)values
{
  expressionCopy = expression;
  preconditionCopy = precondition;
  valueCopy = value;
  bindingsCopy = bindings;
  thresholdsCopy = thresholds;
  valuesCopy = values;
  v19 = valueCopy;
  if (!preconditionCopy || (v20 = v19, [preconditionCopy evaluateWithObject:bindingsCopy]))
  {
    v20 = [expressionCopy expressionValueWithObject:bindingsCopy context:0];
  }

  v21 = [MEMORY[0x277D6F320] bucketNumber:v20 bucketThresholds:thresholdsCopy bucketValues:valuesCopy];

  return v21;
}

- (id)bucketCountsByWordLength:(id)length
{
  lengthCopy = length;
  kbContext = [(TIKBUserModelValues *)self kbContext];
  inputLanguage = [kbContext inputLanguage];
  if ([inputLanguage hasPrefix:@"zh"])
  {
    v7 = &unk_28400BB98;
  }

  else
  {
    v7 = &unk_28400BBB0;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_28400BBC8];
  v9 = *MEMORY[0x277D6FDA0];
  if (*MEMORY[0x277D6FDA0])
  {
    v10 = 0;
    do
    {
      v11 = [v7 objectAtIndexedSubscript:v10];
      integerValue = [v11 integerValue];

      v13 = [v8 objectAtIndexedSubscript:integerValue];
      integerValue2 = [v13 integerValue];
      v15 = [lengthCopy objectAtIndexedSubscript:v10];
      integerValue3 = [v15 integerValue];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue3 + integerValue2];
      [v8 setObject:v17 atIndexedSubscript:integerValue];

      ++v10;
    }

    while (v9 != v10);
  }

  return v8;
}

- (id)computeValuesByWordLengthWithDescriptor:(id)descriptor userModel:(id)model forNumberOfDays:(int)days
{
  v5 = *&days;
  v81 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  modelCopy = model;
  v10 = objc_opt_new();
  calculationExpression = [descriptorCopy calculationExpression];

  v58 = modelCopy;
  if (calculationExpression)
  {
    v64 = v10;
    selfCopy = self;
    v12 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    calculationDependencies = [descriptorCopy calculationDependencies];
    v14 = [calculationDependencies countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v71;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v71 != v16)
          {
            objc_enumerationMutation(calculationDependencies);
          }

          v18 = *(*(&v70 + 1) + 8 * i);
          v19 = [(TIKBUserModelValues *)selfCopy metricValuesByWordLength:v18 userModel:modelCopy forNumberOfDays:v5, v58];
          [v12 setObject:v19 forKey:v18];
        }

        v15 = [calculationDependencies countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v15);
    }

    v20 = MEMORY[0x277CCA9C0];
    calculationExpression2 = [descriptorCopy calculationExpression];
    v22 = [v20 expressionWithFormat:calculationExpression2];

    calculationPrecondition = [descriptorCopy calculationPrecondition];
    v63 = v22;
    if (calculationPrecondition)
    {
      v24 = MEMORY[0x277CCAC30];
      calculationPrecondition2 = [descriptorCopy calculationPrecondition];
      v62 = [v24 predicateWithFormat:calculationPrecondition2];
    }

    else
    {
      v62 = 0;
    }

    calculationDefaultValue = [descriptorCopy calculationDefaultValue];
    v60 = *MEMORY[0x277D6FDA8];
    if (*MEMORY[0x277D6FDA8])
    {
      v42 = 0;
      v59 = descriptorCopy;
      do
      {
        v43 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        calculationDependencies2 = [descriptorCopy calculationDependencies];
        v45 = [calculationDependencies2 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v67;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v67 != v47)
              {
                objc_enumerationMutation(calculationDependencies2);
              }

              v49 = *(*(&v66 + 1) + 8 * j);
              v50 = [v12 objectForKey:{v49, v58}];
              v51 = [v50 objectAtIndexedSubscript:v42];
              [v43 setObject:v51 forKey:v49];
            }

            v46 = [calculationDependencies2 countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v46);
        }

        v52 = [MEMORY[0x277CCABB0] numberWithInt:v42];
        [v43 setObject:v52 forKey:@"index"];

        descriptorCopy = v59;
        bucketThresholds = [v59 bucketThresholds];
        bucketValues = [v59 bucketValues];
        v55 = [(TIKBUserModelValues *)selfCopy computeValueFromExpression:v63 precondition:v62 defaultValue:calculationDefaultValue bindings:v43 bucketThresholds:bucketThresholds bucketValues:bucketValues];

        [v64 addObject:v55];
        ++v42;
      }

      while (v42 != v60);
    }

    v40 = descriptorCopy;

    v41 = v58;
    v30 = v63;
    v10 = v64;
  }

  else
  {
    metricName = [descriptorCopy metricName];
    loadedDate = [modelCopy loadedDate];
    v28 = [(TIUserModelValues *)self countsFromTransientCounterWithName:metricName forNumberOfDays:v5 fromLoadedDate:loadedDate];
    v29 = [(TIKBUserModelValues *)self bucketCountsByWordLength:v28];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v75;
      selfCopy2 = self;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v75 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v74 + 1) + 8 * k);
          bucketThresholds2 = [descriptorCopy bucketThresholds];
          bucketValues2 = [descriptorCopy bucketValues];
          v39 = [(TIKBUserModelValues *)selfCopy2 computeValueFromCount:v36 bucketThresholds:bucketThresholds2 bucketValues:bucketValues2];

          [v10 addObject:v39];
        }

        v32 = [v30 countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v32);
    }

    v40 = descriptorCopy;
    v12 = v30;
    v41 = v58;
  }

  v56 = [v10 copy];

  return v56;
}

- (id)computeValueWithDescriptor:(id)descriptor userModel:(id)model forNumberOfDays:(int)days
{
  v5 = *&days;
  v42 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  modelCopy = model;
  calculationExpression = [descriptorCopy calculationExpression];

  if (calculationExpression)
  {
    v11 = MEMORY[0x277CCA9C0];
    calculationExpression2 = [descriptorCopy calculationExpression];
    v35 = [v11 expressionWithFormat:calculationExpression2];

    calculationPrecondition = [descriptorCopy calculationPrecondition];
    if (calculationPrecondition)
    {
      v14 = MEMORY[0x277CCAC30];
      calculationPrecondition2 = [descriptorCopy calculationPrecondition];
      v34 = [v14 predicateWithFormat:calculationPrecondition2];
    }

    else
    {
      v34 = 0;
    }

    calculationDefaultValue = [descriptorCopy calculationDefaultValue];
    v22 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = descriptorCopy;
    calculationDependencies = [descriptorCopy calculationDependencies];
    v24 = [calculationDependencies countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(calculationDependencies);
          }

          v28 = *(*(&v37 + 1) + 8 * i);
          v29 = [(TIKBUserModelValues *)self metricValue:v28 userModel:modelCopy forNumberOfDays:v5, calculationDefaultValue];
          [v22 setObject:v29 forKey:v28];
        }

        v25 = [calculationDependencies countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v25);
    }

    descriptorCopy = v36;
    bucketThresholds = [v36 bucketThresholds];
    bucketValues = [v36 bucketValues];
    v21 = [(TIKBUserModelValues *)self computeValueFromExpression:v35 precondition:v34 defaultValue:calculationDefaultValue bindings:v22 bucketThresholds:bucketThresholds bucketValues:bucketValues];
  }

  else
  {
    metricName = [descriptorCopy metricName];
    loadedDate = [modelCopy loadedDate];
    v18 = [(TIUserModelValues *)self aggregatedCountFromTransientCounterWithName:metricName forNumberOfDays:v5 fromLoadedDate:loadedDate];

    bucketThresholds2 = [descriptorCopy bucketThresholds];
    bucketValues2 = [descriptorCopy bucketValues];
    v21 = [(TIKBUserModelValues *)self computeValueFromCount:v18 bucketThresholds:bucketThresholds2 bucketValues:bucketValues2];
  }

  return v21;
}

- (id)metricValuesByWordLength:(id)length userModel:(id)model forNumberOfDays:(int)days
{
  v5 = *&days;
  modelCopy = model;
  lengthCopy = length;
  metricDescriptorRegistry = [modelCopy metricDescriptorRegistry];
  v11 = [metricDescriptorRegistry metricDescriptorWithName:lengthCopy];

  if (v11 && [v11 isMemberOfClass:objc_opt_class()])
  {
    v12 = [(TIKBUserModelValues *)self computeValuesByWordLengthWithDescriptor:v11 userModel:modelCopy forNumberOfDays:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)persistForDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TIKBUserModelValues;
  [(TIUserModelValues *)&v16 persistForDate:date];
  v4 = IXADefaultLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v14 = MEMORY[0x277CCACA8];
    inputMode = [(TIUserModelValues *)self inputMode];
    v5 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardLanguage];
    v6 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardRegion];
    v7 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardVariant];
    v8 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardSecondaryLanguage];
    v9 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardSecondaryRegion];
    v10 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardLayout];
    v11 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardType];
    v12 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardConfiguration];
    v13 = [v14 stringWithFormat:@"%s TIKBUserModelValues persisted: %@ %@_%@-%@ %@_%@ %@ %@ %@", "-[TIKBUserModelValues persistForDate:]", inputMode, v5, v6, v7, v8, v9, v10, v11, v12];
    *buf = 138412290;
    v18 = v13;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }
}

- (id)settingValueFromName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_isEqualToString_(nameCopy))
  {
    calcAutocorrectionEnabled = [(TIKBUserModelValues *)self calcAutocorrectionEnabled];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKBUserModelValues;
    calcAutocorrectionEnabled = [(TIUserModelValues *)&v8 settingValueFromName:nameCopy];
  }

  v6 = calcAutocorrectionEnabled;

  return v6;
}

- (id)metricValue:(id)value userModel:(id)model forNumberOfDays:(int)days
{
  v5 = *&days;
  valueCopy = value;
  modelCopy = model;
  if (objc_msgSend_isEqualToString_(valueCopy))
  {
    v10 = [(TIKBUserModelValues *)self calcFloatingKeyboardUsageFromUserModel:modelCopy];
LABEL_5:
    v11 = v10;
    goto LABEL_28;
  }

  if (objc_msgSend_isEqualToString_(valueCopy))
  {
    v10 = [(TIKBUserModelValues *)self calcTypingSpeedFromUserModel:modelCopy];
    goto LABEL_5;
  }

  metricDescriptorRegistry = [modelCopy metricDescriptorRegistry];
  v13 = [metricDescriptorRegistry metricDescriptorWithName:valueCopy];

  if (!v13)
  {
    goto LABEL_26;
  }

  if ([v13 isMemberOfClass:objc_opt_class()])
  {
    contextFieldName = v13;
    configString = [contextFieldName configString];

    if (configString)
    {
      configString2 = [contextFieldName configString];
      v17 = [(TIKBUserModelValues *)self settingValueFromName:configString2];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v17 BOOLValue])
      {
        v11 = *MEMORY[0x277D6FD70];

LABEL_25:
        goto LABEL_27;
      }
    }

    if ([contextFieldName discoveryThreshold] >= 1 && (objc_msgSend(contextFieldName, "discoveryCounter"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18) && (-[TIUserModelValues durableCounters](self, "durableCounters"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextFieldName, "discoveryCounter"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKey:", v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "count"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "intValue"), v22, v21, v20, v19, objc_msgSend(contextFieldName, "discoveryThreshold") > v23))
    {
      v24 = *MEMORY[0x277D6FD78];
    }

    else
    {
      v24 = [(TIKBUserModelValues *)self computeValueWithDescriptor:contextFieldName userModel:modelCopy forNumberOfDays:*MEMORY[0x277D6FD28]];
    }

LABEL_24:
    v11 = v24;
    goto LABEL_25;
  }

  if (![v13 isMemberOfClass:objc_opt_class()])
  {
    if ([v13 isMemberOfClass:objc_opt_class()])
    {
      stringValues = self->_stringValues;
      contextFieldName = [v13 contextFieldName];
      v24 = [(NSMutableDictionary *)stringValues objectForKey:contextFieldName];
      goto LABEL_24;
    }

    if ([v13 isMemberOfClass:objc_opt_class()])
    {
      contextFieldName = [v13 settingName];
      v24 = [(TIKBUserModelValues *)self settingValueFromName:contextFieldName];
      goto LABEL_24;
    }

LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  v11 = [(TIKBUserModelValues *)self computeValueWithDescriptor:v13 userModel:modelCopy forNumberOfDays:v5];
LABEL_27:

LABEL_28:

  return v11;
}

- (TIKBUserModelValues)initWithInputMode:(id)mode context:(id)context userModelDataStore:(id)store durableCounters:(id)counters settingsDictionary:(id)dictionary
{
  v53 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  contextCopy = context;
  v50.receiver = self;
  v50.super_class = TIKBUserModelValues;
  v14 = [(TIUserModelValues *)&v50 initWithInputMode:modeCopy context:contextCopy userModelDataStore:store durableCounters:counters settingsDictionary:dictionary];
  if (v14)
  {
    v49 = modeCopy;
    v15 = contextCopy;
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
    stringValues = v14->_stringValues;
    v14->_stringValues = v16;

    v18 = v14->_stringValues;
    inputLanguage = [v15 inputLanguage];
    [(NSMutableDictionary *)v18 setObject:inputLanguage forKey:kFeatureStringKeyboardLanguage];

    v20 = v14->_stringValues;
    inputRegion = [v15 inputRegion];
    [(NSMutableDictionary *)v20 setObject:inputRegion forKey:kFeatureStringKeyboardRegion];

    v22 = v14->_stringValues;
    inputVariant = [v15 inputVariant];
    [(NSMutableDictionary *)v22 setObject:inputVariant forKey:kFeatureStringKeyboardVariant];

    v24 = v14->_stringValues;
    secondaryLanguage = [v15 secondaryLanguage];
    [(NSMutableDictionary *)v24 setObject:secondaryLanguage forKey:kFeatureStringKeyboardSecondaryLanguage];

    v26 = v14->_stringValues;
    secondaryRegion = [v15 secondaryRegion];
    [(NSMutableDictionary *)v26 setObject:secondaryRegion forKey:kFeatureStringKeyboardSecondaryRegion];

    v28 = v14->_stringValues;
    layoutName = [v15 layoutName];
    [(NSMutableDictionary *)v28 setObject:layoutName forKey:kFeatureStringKeyboardLayout];

    v30 = v14->_stringValues;
    v31 = +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [v15 keyboardType]);
    [(NSMutableDictionary *)v30 setObject:v31 forKey:kFeatureStringKeyboardType];

    v32 = v14->_stringValues;
    keyboardConfiguration = [v15 keyboardConfiguration];
    v34 = keyboardConfiguration;
    if (!keyboardConfiguration)
    {
      keyboardConfiguration = @"None";
    }

    v35 = [(__CFString *)keyboardConfiguration copy];
    [(NSMutableDictionary *)v32 setObject:v35 forKey:kFeatureStringKeyboardConfiguration];

    v36 = IXADefaultLogFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v46 = MEMORY[0x277CCACA8];
      v48 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardLanguage];
      v37 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardRegion];
      v38 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardVariant];
      [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardSecondaryLanguage];
      v39 = v47 = contextCopy;
      v40 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardSecondaryRegion];
      v45 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardLayout];
      v41 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardType];
      v42 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardConfiguration];
      v43 = [v46 stringWithFormat:@"%s TIKBUserModelValues created: %@ %@_%@-%@ %@_%@ %@ %@ %@", "-[TIKBUserModelValues initWithInputMode:context:userModelDataStore:durableCounters:settingsDictionary:]", v49, v48, v37, v38, v39, v40, v45, v41, v42];
      *buf = 138412290;
      v52 = v43;
      _os_log_impl(&dword_22CA55000, v36, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

      contextCopy = v47;
    }

    modeCopy = v49;
  }

  return v14;
}

@end