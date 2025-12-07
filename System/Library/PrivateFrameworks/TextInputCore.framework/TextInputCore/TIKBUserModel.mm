@interface TIKBUserModel
+ (TIKBUserModel)userModelWithInputMode:(id)mode userModelDataStore:(id)store metricDescriptorRegistry:(id)registry fromDate:(id)date;
- (TIKBUserModel)initWithInputMode:(id)mode userModelDataStore:(id)store metricDescriptorRegistry:(id)registry fromDate:(id)date;
- (id)dictForPowerLog;
- (id)durableCounterKeys;
- (id)settingsDictionary;
- (id)valueForMetricWithName:(id)name withContext:(id)context;
- (id)valuesByBucketedWordLengthForMetricWithName:(id)name withContext:(id)context;
- (void)addDescriptor:(id)descriptor toWeeklyMetricKeys:(id)keys;
- (void)addMetric:(id)metric toWeeklyMetricKeys:(id)keys;
- (void)dispatchFeedbackAnalyzers:(id)analyzers aligned:(id)aligned revisionRateAnalysisSummary:(id)summary;
- (void)doLoad;
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
- (void)trackPowerLogIfNecessary;
@end

@implementation TIKBUserModel

- (id)valuesByBucketedWordLengthForMetricWithName:(id)name withContext:(id)context
{
  contextCopy = context;
  nameCopy = name;
  [(TIUserModel *)self loadIfNecessary];
  v8 = [(TIUserModel *)self valuesFromContext:contextCopy];

  v9 = [v8 metricValuesByWordLength:nameCopy userModel:self forNumberOfDays:*MEMORY[0x277D6FD20]];

  return v9;
}

- (id)valueForMetricWithName:(id)name withContext:(id)context
{
  contextCopy = context;
  nameCopy = name;
  [(TIUserModel *)self loadIfNecessary];
  v8 = [(TIUserModel *)self valuesFromContext:contextCopy];

  v9 = [v8 metricValue:nameCopy userModel:self forNumberOfDays:*MEMORY[0x277D6FD20]];

  return v9;
}

- (void)addDescriptor:(id)descriptor toWeeklyMetricKeys:(id)keys
{
  v20 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  keysCopy = keys;
  calculationExpression = [descriptorCopy calculationExpression];

  if (calculationExpression)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    calculationDependencies = [descriptorCopy calculationDependencies];
    v10 = [calculationDependencies countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(calculationDependencies);
          }

          [(TIKBUserModel *)self addMetric:*(*(&v15 + 1) + 8 * v13++) toWeeklyMetricKeys:keysCopy];
        }

        while (v11 != v13);
        v11 = [calculationDependencies countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else
  {
    metricName = [descriptorCopy metricName];
    [keysCopy addObject:metricName];
  }
}

- (void)addMetric:(id)metric toWeeklyMetricKeys:(id)keys
{
  keysCopy = keys;
  v6 = [(TIMetricDescriptorRegistry *)self->_metricDescriptorRegistry metricDescriptorWithName:metric];
  if (v6 && [v6 isMemberOfClass:objc_opt_class()])
  {
    [(TIKBUserModel *)self addDescriptor:v6 toWeeklyMetricKeys:keysCopy];
  }
}

- (void)doLoad
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_metricDescriptorRegistry)
  {
    v3 = +[TIMetricDescriptorRegistry registry];
    metricDescriptorRegistry = self->_metricDescriptorRegistry;
    self->_metricDescriptorRegistry = v3;
  }

  weeklyMetricKeys = [(TIUserModel *)self weeklyMetricKeys];

  if (!weeklyMetricKeys)
  {
    v6 = objc_opt_new();
    [v6 addObject:kFeatureCounterWithWordLenWordsTypedOnFloatingKeyboard];
    [v6 addObject:kFeatureValueWithWordLenWholeWordsPathed];
    [v6 addObject:kFeatureValueWithWordLenWordCompletionsPathed];
    [v6 addObject:kFeatureValueWithWordLenPathEligibleWordsTapped];
    [v6 addObject:kFeatureValueWithWordLenPathIneligibleWordsTapped];
    [v6 addObject:kFeatureCounterDurationPathedWords];
    [v6 addObject:kFeatureCounterDurationTappedWords];
    [v6 addObject:kFeatureValueWithWordLenWholeWordsPathed];
    [v6 addObject:kFeatureValueWithWordLenWordCompletionsPathed];
    [v6 addObject:kFeatureValueWithWordLenPathEligibleWordsTapped];
    [v6 addObject:kFeatureValueWithWordLenPathIneligibleWordsTapped];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allMetricDescriptors = [(TIMetricDescriptorRegistry *)self->_metricDescriptorRegistry allMetricDescriptors];
    v8 = [allMetricDescriptors countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allMetricDescriptors);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if ([v12 isMemberOfClass:objc_opt_class()])
          {
            [(TIKBUserModel *)self addDescriptor:v12 toWeeklyMetricKeys:v6];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allMetricDescriptors countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    allObjects = [v6 allObjects];
    [(TIUserModel *)self setWeeklyMetricKeys:allObjects];
  }

  v14.receiver = self;
  v14.super_class = TIKBUserModel;
  [(TIUserModel *)&v14 doLoad];
}

- (void)dispatchFeedbackAnalyzers:(id)analyzers aligned:(id)aligned revisionRateAnalysisSummary:(id)summary
{
  alignedCopy = aligned;
  analyzersCopy = analyzers;
  v10 = [TIAutocorrectionFeedbackAnalyzer analyzerForUserModel:self revisionRateAnalysisSummary:summary];
  [v10 analyzeSession:analyzersCopy alignedSession:alignedCopy withConfidence:{objc_msgSend(v10, "evaluateConfidenceInSession:alignedSession:", analyzersCopy, alignedCopy)}];
}

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  alignedCopy = aligned;
  endCopy = end;
  v8 = [TIFavoniusTypingSessionAnalyzer favoniusTypingSessionAnalyzerForUserModel:self];
  [v8 analyzeSession:endCopy alignedSession:alignedCopy withConfidence:{objc_msgSend(v8, "evaluateConfidenceInSession:alignedSession:", endCopy, alignedCopy)}];
}

- (id)dictForPowerLog
{
  v61 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [(TIUserModel *)self contexts];
  v53 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if (v53)
  {
    v51 = *v55;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(TIUserModel *)self valuesFromContext:*(*(&v54 + 1) + 8 * i)];
        v10 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenPathEligibleWordsTapped];
        currentCounts = [v10 currentCounts];

        if ([currentCounts count])
        {
          v12 = 0;
          do
          {
            v13 = [currentCounts objectAtIndex:v12];
            intValue = [v13 intValue];

            v5 = (intValue + v5);
            v4 = (v4 + intValue * (v12++ + 2));
          }

          while (v12 != [currentCounts count]);
        }

        v15 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenPathIneligibleWordsTapped];
        currentCounts2 = [v15 currentCounts];

        if ([currentCounts2 count])
        {
          v17 = 0;
          do
          {
            v18 = [currentCounts2 objectAtIndex:v17];
            intValue2 = [v18 intValue];

            v5 = (intValue2 + v5);
            v4 = (v4 + intValue2 * (v17++ + 2));
          }

          while (v17 != [currentCounts2 count]);
        }

        v20 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenWholeWordsPathed];
        currentCounts3 = [v20 currentCounts];

        if ([currentCounts3 count])
        {
          v22 = 0;
          do
          {
            v23 = [currentCounts3 objectAtIndex:v22];
            intValue3 = [v23 intValue];

            v3 = (intValue3 + v3);
            v2 = (v2 + intValue3 * (v22++ + 2));
          }

          while (v22 != [currentCounts3 count]);
        }

        v25 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenWordCompletionsPathed];
        currentCounts4 = [v25 currentCounts];

        if ([currentCounts4 count])
        {
          v27 = 0;
          do
          {
            v28 = [currentCounts4 objectAtIndex:v27];
            intValue4 = [v28 intValue];

            v3 = (intValue4 + v3);
            v2 = (v2 + intValue4 * (v27++ + 2));
          }

          while (v27 != [currentCounts4 count]);
        }

        v30 = [v9 getTransientCounterForKey:kFeatureCounterDurationTappedWords];
        currentCounts5 = [v30 currentCounts];

        if ([currentCounts5 count])
        {
          v32 = 0;
          do
          {
            v33 = [currentCounts5 objectAtIndex:v32];
            [v33 doubleValue];
            v35 = v34;

            v7 = v7 + v35;
            ++v32;
          }

          while (v32 != [currentCounts5 count]);
        }

        v36 = [v9 getTransientCounterForKey:kFeatureCounterDurationPathedWords];
        currentCounts6 = [v36 currentCounts];

        if ([currentCounts6 count])
        {
          v38 = 0;
          do
          {
            v39 = [currentCounts6 objectAtIndex:v38];
            [v39 doubleValue];
            v41 = v40;

            v6 = v6 + v41;
            ++v38;
          }

          while (v38 != [currentCounts6 count]);
        }
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v53);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  if (v3 | v5)
  {
    v58[0] = @"WordsTapped";
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v59[0] = v43;
    v58[1] = @"CharactersTapped";
    v44 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v59[1] = v44;
    v58[2] = @"WordsPathed";
    v45 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v59[2] = v45;
    v58[3] = @"CharactersPathed";
    v46 = [MEMORY[0x277CCABB0] numberWithInt:v2];
    v59[3] = v46;
    v58[4] = @"TimeSpentPathTyping";
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / 1000.0];
    v59[4] = v47;
    v58[5] = @"TimeSpentTapTyping";
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / 1000.0];
    v59[5] = v48;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:6];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (void)trackPowerLogIfNecessary
{
  [(TIKBUserModel *)self dictForPowerLog];
  if (objc_claimAutoreleasedReturnValue() && PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
  }

  MEMORY[0x2821F9730]();
}

- (id)settingsDictionary
{
  v21[6] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F830];
  v21[0] = *MEMORY[0x277D6F848];
  v21[1] = v4;
  v5 = *MEMORY[0x277D6F638];
  v21[2] = *MEMORY[0x277D6F7C0];
  v21[3] = v5;
  v6 = *MEMORY[0x277D6F998];
  v21[4] = *MEMORY[0x277D6F928];
  v21[5] = v6;
  [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [mEMORY[0x277D6F470] BOOLForPreferenceKey:{v12, v16}];
        v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        [dictionary setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (id)durableCounterKeys
{
  v4[10] = *MEMORY[0x277D85DE8];
  v4[0] = kFeatureCounterTotalWordsTyped;
  v4[1] = kFeatureCounterTotalWordsPathed;
  v4[2] = kFeatureCounterTotalWordsAutocorrected;
  v4[3] = kFeatureCounterTotalWordsFromCandidateBar;
  v4[4] = kFeatureCounterTotalWordsTypedOnFloatingKeyboard;
  v4[5] = kFeatureCounterTotalWordsTypedInSecondaryLanguage;
  v4[6] = kFeedbackCounterAutocorrectionEnablementCorrectedWords;
  v4[7] = kFeedbackCounterAutocorrectionEnablementTappedWords;
  v4[8] = kFeedbackCounterAutocorrectionEnablementRevisedWords;
  v4[9] = kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:10];

  return v2;
}

- (TIKBUserModel)initWithInputMode:(id)mode userModelDataStore:(id)store metricDescriptorRegistry:(id)registry fromDate:(id)date
{
  registryCopy = registry;
  v15.receiver = self;
  v15.super_class = TIKBUserModel;
  v12 = [(TIUserModel *)&v15 initWithInputMode:mode userModelDataStore:store weeklyMetricKeys:0 fromDate:date explicitTearDown:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_metricDescriptorRegistry, registry);
    [(TIUserModel *)v13 setConfigurationDelegate:v13];
  }

  return v13;
}

+ (TIKBUserModel)userModelWithInputMode:(id)mode userModelDataStore:(id)store metricDescriptorRegistry:(id)registry fromDate:(id)date
{
  dateCopy = date;
  registryCopy = registry;
  storeCopy = store;
  modeCopy = mode;
  v13 = [[TIKBUserModel alloc] initWithInputMode:modeCopy userModelDataStore:storeCopy metricDescriptorRegistry:registryCopy fromDate:dateCopy];

  return v13;
}

@end