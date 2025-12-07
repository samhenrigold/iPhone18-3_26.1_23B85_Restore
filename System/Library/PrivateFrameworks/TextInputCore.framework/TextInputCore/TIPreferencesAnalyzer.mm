@interface TIPreferencesAnalyzer
+ (id)normalizedInputModeIdentifierGroupsFromInputModes:(id)modes;
- (TIPreferencesAnalyzer)init;
- (TIPreferencesAnalyzer)initWithRegistry:(id)registry;
- (id)_createEventSpecForTextInputUserPreferenceChanges;
- (id)_createEventSpecForTextInputUserPreferenceState;
- (void)_dispatchEventPayloadWithPreferenceNameToChangesEvent:(id)event activeInputModes:(id)modes currentValue:(id)value previousValue:(id)previousValue changedAt:(id)at analyzedAt:(id)analyzedAt buildAtChange:(id)change isFreshInstall:(BOOL)self0 approxDateOfBuildInstall:(id)self1 buildAtLastAnalysis:(id)self2;
- (void)_dispatchEventPayloadWithPreferenceNameToStateEvent:(id)event activeInputModes:(id)modes currentValue:(id)value;
- (void)_recordAnalysisOfPreferenceKey:(id)key inDomain:(id)domain;
- (void)_registerAnalyticsEventSpecWithAnalyticsService;
- (void)_resetChangedAtForPreferenceKey:(id)key inDomain:(id)domain;
- (void)_updateApproxBuildAtLastAnalysisWithBuild:(id)build andApproxDateOfInstall:(id)install ForPreferenceKey:(id)key inDomain:(id)domain;
- (void)analyzeRegisteredPreferences;
@end

@implementation TIPreferencesAnalyzer

- (id)_createEventSpecForTextInputUserPreferenceState
{
  if (_createEventSpecForTextInputUserPreferenceState_onceToken != -1)
  {
    dispatch_once(&_createEventSpecForTextInputUserPreferenceState_onceToken, &__block_literal_global_46);
  }

  v3 = _createEventSpecForTextInputUserPreferenceState___eventSpec;

  return v3;
}

void __72__TIPreferencesAnalyzer__createEventSpecForTextInputUserPreferenceState__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"preferenceName"];
  v1 = [MEMORY[0x277D6F308] stringFieldSpecWithName:{@"activeInputModes", v0}];
  v6[1] = v1;
  v2 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"currentValue"];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  v4 = [MEMORY[0x277D6F300] eventSpecWithName:@"textInputUserPreferenceState" inputModeRequired:0 fieldSpecs:v3];
  v5 = _createEventSpecForTextInputUserPreferenceState___eventSpec;
  _createEventSpecForTextInputUserPreferenceState___eventSpec = v4;
}

- (id)_createEventSpecForTextInputUserPreferenceChanges
{
  if (_createEventSpecForTextInputUserPreferenceChanges_onceToken != -1)
  {
    dispatch_once(&_createEventSpecForTextInputUserPreferenceChanges_onceToken, &__block_literal_global_8431);
  }

  v3 = _createEventSpecForTextInputUserPreferenceChanges___eventSpec;

  return v3;
}

void __74__TIPreferencesAnalyzer__createEventSpecForTextInputUserPreferenceChanges__block_invoke()
{
  v16[10] = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"preferenceName"];
  v16[0] = v15;
  v14 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"activeInputModes"];
  v16[1] = v14;
  v13 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"previousValue"];
  v16[2] = v13;
  v0 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"currentValue"];
  v16[3] = v0;
  v1 = MEMORY[0x277D6F308];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
  v4 = [v1 integerFieldSpecWithName:@"daysSinceLastChangeBucket" minValue:v2 maxValue:v3 significantDigits:0];
  v16[4] = v4;
  v5 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"daysSinceUpgradeToOff" minValue:&unk_28400BE08 maxValue:0 significantDigits:0];
  v16[5] = v5;
  v6 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"daysSinceLastChange" minValue:&unk_28400BE08 maxValue:0 significantDigits:0];
  v16[6] = v6;
  v7 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"buildAtChange"];
  v16[7] = v7;
  v8 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"valueDidChange"];
  v16[8] = v8;
  v9 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"isNewUser"];
  v16[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:10];

  v11 = [MEMORY[0x277D6F300] eventSpecWithName:@"textInputUserPreferenceChanges" inputModeRequired:0 fieldSpecs:v10];
  v12 = _createEventSpecForTextInputUserPreferenceChanges___eventSpec;
  _createEventSpecForTextInputUserPreferenceChanges___eventSpec = v11;
}

- (void)_registerAnalyticsEventSpecWithAnalyticsService
{
  _createEventSpecForTextInputUserPreferenceChanges = [(TIPreferencesAnalyzer *)self _createEventSpecForTextInputUserPreferenceChanges];
  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:_createEventSpecForTextInputUserPreferenceChanges];

  _createEventSpecForTextInputUserPreferenceState = [(TIPreferencesAnalyzer *)self _createEventSpecForTextInputUserPreferenceState];
  mEMORY[0x277D6F318]2 = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318]2 registerEventSpec:_createEventSpecForTextInputUserPreferenceState];
}

- (void)_dispatchEventPayloadWithPreferenceNameToStateEvent:(id)event activeInputModes:(id)modes currentValue:(id)value
{
  valueCopy = value;
  v7 = MEMORY[0x277CBEB38];
  modesCopy = modes;
  eventCopy = event;
  v10 = objc_alloc_init(v7);
  [v10 setObject:eventCopy forKey:@"preferenceName"];

  v11 = [modesCopy componentsJoinedByString:{@", "}];

  [v10 setObject:v11 forKey:@"activeInputModes"];
  if (valueCopy)
  {
    v12 = valueCopy;
    if ([MEMORY[0x277D6F320] isBoolean:v12])
    {
      bOOLValue = [v12 BOOLValue];
      v14 = &unk_28400BE08;
      if (bOOLValue)
      {
        v14 = &unk_28400BDF0;
      }

      v15 = v14;

      v12 = v15;
    }

    [v10 setObject:v12 forKey:@"currentValue"];
  }

  else
  {
    [v10 setObject:&unk_28400BE08 forKey:@"currentValue"];
  }

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"textInputUserPreferenceState" payload:v10 testingParameters:0 allowSparsePayload:1];
}

- (void)_dispatchEventPayloadWithPreferenceNameToChangesEvent:(id)event activeInputModes:(id)modes currentValue:(id)value previousValue:(id)previousValue changedAt:(id)at analyzedAt:(id)analyzedAt buildAtChange:(id)change isFreshInstall:(BOOL)self0 approxDateOfBuildInstall:(id)self1 buildAtLastAnalysis:(id)self2
{
  v62 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  modesCopy = modes;
  valueCopy = value;
  previousValueCopy = previousValue;
  atCopy = at;
  changeCopy = change;
  buildInstallCopy = buildInstall;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v55 = eventCopy;
  [v23 setObject:eventCopy forKey:@"preferenceName"];
  v24 = [modesCopy componentsJoinedByString:{@", "}];
  [v23 setObject:v24 forKey:@"activeInputModes"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:install];
  [v23 setObject:v25 forKey:@"isNewUser"];

  if (valueCopy)
  {
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", valueCopy];
    [v23 setObject:valueCopy forKey:@"currentValue"];
  }

  if (previousValueCopy)
  {
    previousValueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", previousValueCopy];
    [v23 setObject:previousValueCopy forKey:@"previousValue"];

    if (!atCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    [v23 setObject:@"previousValueNotSet" forKey:@"previousValue"];
    if (!atCopy)
    {
      goto LABEL_16;
    }
  }

  v28 = atCopy;
  [v28 timeIntervalSinceNow];
  v30 = v29;
  if (v29 <= 0.0)
  {
    v31 = (v29 / -86400.0);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v52 = [v28 description];
      v53 = [v28 dateByAddingTimeInterval:-v30];
      [v53 description];
      *buf = 136315650;
      v57 = "_daysSinceChangedAtDate";
      v58 = 2112;
      v59 = v52;
      v61 = v60 = 2112;
      v49 = v61;
      _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:Preference changes saved with a timestamp in the future. Refer rdar://98151099. changedAt:%@, now:%@", buf, 0x20u);
    }

    v31 = 0;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  [v23 setObject:v32 forKey:@"daysSinceLastChange"];

  v33 = &_bucketizeDaysSinceChangedAtDate_bucketMaxBoundingRanges;
  for (i = 1; i != 5; ++i)
  {
    v35 = *v33++;
    if (v35 >= v31)
    {
      break;
    }
  }

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
  [v23 setObject:v36 forKey:@"daysSinceLastChangeBucket"];

LABEL_16:
  if (changeCopy)
  {
    [v23 setObject:changeCopy forKey:@"buildAtChange"];
  }

  v37 = valueCopy;
  bOOLValue = [v37 BOOLValue];
  if (atCopy && buildInstallCopy && !bOOLValue)
  {
    [atCopy timeIntervalSinceDate:buildInstallCopy];
    if (v39 >= 0.0)
    {
      v41 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:buildInstallCopy endDate:atCopy];
      [v41 duration];
      v40 = (v42 / 86400.0);

      if (v40 < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v50 = [atCopy description];
        v51 = [buildInstallCopy description];
        *buf = 136315650;
        v57 = "[TIPreferencesAnalyzer _dispatchEventPayloadWithPreferenceNameToChangesEvent:activeInputModes:currentValue:previousValue:changedAt:analyzedAt:buildAtChange:isFreshInstall:approxDateOfBuildInstall:buildAtLastAnalysis:]";
        v58 = 2112;
        v59 = v50;
        v60 = 2112;
        v61 = v51;
        _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:Preference changes saved with a timestamp in the future relative to date of BuildInstall. Refer rdar://98151099. changedAt:%@, approxDateOfBuildInstall:%@", buf, 0x20u);
      }

      v40 = 0;
    }

    v43 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
    [v23 setObject:v43 forKey:@"daysSinceUpgradeToOff"];
  }

LABEL_27:
  v46 = v37 != previousValueCopy && atCopy != 0 && analyzedAt == 0;
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v46];
  [v23 setObject:v47 forKey:@"valueDidChange"];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"textInputUserPreferenceChanges" payload:v23 testingParameters:0 allowSparsePayload:1];
}

- (void)_resetChangedAtForPreferenceKey:(id)key inDomain:(id)domain
{
  v5 = MEMORY[0x277CCACA8];
  domainCopy = domain;
  v7 = [v5 stringWithFormat:@"%@_changedAt", key];
  CFPreferencesSetAppValue(v7, 0, domainCopy);
}

- (void)_updateApproxBuildAtLastAnalysisWithBuild:(id)build andApproxDateOfInstall:(id)install ForPreferenceKey:(id)key inDomain:(id)domain
{
  v9 = MEMORY[0x277CCACA8];
  domainCopy = domain;
  keyCopy = key;
  installCopy = install;
  buildCopy = build;
  key = [v9 stringWithFormat:@"%@_approxDateOfBuildInstall", keyCopy];
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_buildAtLastAnalysis", keyCopy];

  CFPreferencesSetAppValue(keyCopy, buildCopy, domainCopy);
  CFPreferencesSetAppValue(key, installCopy, domainCopy);
}

- (void)_recordAnalysisOfPreferenceKey:(id)key inDomain:(id)domain
{
  v5 = MEMORY[0x277CCACA8];
  domainCopy = domain;
  key = [v5 stringWithFormat:@"%@_analyzedAt", key];
  v7 = [MEMORY[0x277CBEAA8] now];
  CFPreferencesSetAppValue(key, v7, domainCopy);
}

- (TIPreferencesAnalyzer)initWithRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = TIPreferencesAnalyzer;
  v6 = [(TIPreferencesAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TIPreferencesAnalyzer *)v6 _registerAnalyticsEventSpecWithAnalyticsService];
    objc_storeStrong(&v7->_registry, registry);
  }

  return v7;
}

- (TIPreferencesAnalyzer)init
{
  v3 = objc_alloc_init(TIPreferencesAnalyzerRegistry);
  v4 = [(TIPreferencesAnalyzer *)self initWithRegistry:v3];

  return v4;
}

- (void)analyzeRegisteredPreferences
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8469;
  v18 = __Block_byref_object_dispose__8470;
  v19 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___getSystemActiveInputModes_block_invoke;
  aBlock[3] = &unk_278733760;
  aBlock[4] = &v14;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    TIDispatchSync();
  }

  v4 = v15[5];
  if (v4 && [v4 count])
  {
    v5 = [TIPreferencesAnalyzer normalizedInputModeIdentifierGroupsFromInputModes:v15[5]];
    v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v20[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v5 sortedArrayUsingDescriptors:v7];
  }

  else
  {
    v8 = &unk_28400B988;
  }

  _Block_object_dispose(&v14, 8);
  registry = [(TIPreferencesAnalyzer *)self registry];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__TIPreferencesAnalyzer_analyzeRegisteredPreferences__block_invoke;
  v11[3] = &unk_278730AE0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [registry enumerateRegisteredPreferencesUsingBlock:v11];
}

void __53__TIPreferencesAnalyzer_analyzeRegisteredPreferences__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v44 = a2;
  v9 = a3;
  v45 = a4;
  v10 = v9;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__8469;
  v54 = __Block_byref_object_dispose__8470;
  v55 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___getCurrentValueFromPreferenceController_block_invoke;
  aBlock[3] = &unk_278733648;
  v48 = v10;
  v49 = &v50;
  v11 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v11[2](v11);
  }

  else
  {
    TIDispatchSync();
  }

  v12 = v51[5];

  _Block_object_dispose(&v50, 8);
  v13 = v45;
  if (v12)
  {
    v13 = v12;
  }

  v46 = v13;

  if (a5)
  {
    [*(a1 + 32) _dispatchEventPayloadWithPreferenceNameToStateEvent:v10 activeInputModes:*(a1 + 40) currentValue:v46];
  }

  if ((a5 & 2) != 0)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = v44;
    v16 = [v14 stringWithFormat:@"%@_previousValue", v10];
    v17 = CFPreferencesCopyAppValue(v16, v15);

    v18 = @"previousValueNotSet";
    if (v17)
    {
      v18 = v17;
    }

    v42 = v18;

    v19 = MEMORY[0x277CCACA8];
    v20 = v15;
    v21 = [v19 stringWithFormat:@"%@_changedAt", v10];
    v43 = CFPreferencesCopyAppValue(v21, v20);

    v22 = MEMORY[0x277CCACA8];
    v23 = v20;
    v24 = [v22 stringWithFormat:@"%@_analyzedAt", v10];
    v41 = CFPreferencesCopyAppValue(v24, v23);

    v25 = MEMORY[0x277CCACA8];
    v26 = v23;
    v27 = [v25 stringWithFormat:@"%@_buildAtChange", v10];
    v28 = CFPreferencesCopyAppValue(v27, v26);

    v29 = MEMORY[0x277CCACA8];
    v30 = v26;
    v31 = [v29 stringWithFormat:@"%@_approxDateOfBuildInstall", v10];
    v32 = CFPreferencesCopyAppValue(v31, v30);

    v33 = MEMORY[0x277CCACA8];
    v34 = v30;
    v35 = [v33 stringWithFormat:@"%@_buildAtLastAnalysis", v10];
    v36 = CFPreferencesCopyAppValue(v35, v34);

    v37 = MGGetStringAnswer();
    if (!objc_msgSend_isEqualToString_(v36) || !v32)
    {
      v38 = v37;

      v39 = [MEMORY[0x277CBEAA8] now];

      [*(a1 + 32) _updateApproxBuildAtLastAnalysisWithBuild:v38 andApproxDateOfInstall:v39 ForPreferenceKey:v10 inDomain:v34];
      v36 = v38;
      v32 = v39;
    }

    if ((objc_msgSend_isEqualToString_(v36) & 1) == 0)
    {
      [*(a1 + 32) _resetChangedAtForPreferenceKey:v10 inDomain:v34];
    }

    LOBYTE(v40) = DMGetUserDataDisposition() & 1;
    [*(a1 + 32) _dispatchEventPayloadWithPreferenceNameToChangesEvent:v10 activeInputModes:*(a1 + 40) currentValue:v46 previousValue:v42 changedAt:v43 analyzedAt:v41 buildAtChange:v28 isFreshInstall:v40 approxDateOfBuildInstall:v32 buildAtLastAnalysis:v36];

    [*(a1 + 32) _recordAnalysisOfPreferenceKey:v10 inDomain:v34];
  }
}

+ (id)normalizedInputModeIdentifierGroupsFromInputModes:(id)modes
{
  v48 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    v36 = v5;
    v37 = v4;
    v35 = *v42;
    do
    {
      v9 = 0;
      v38 = v7;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = TIInputModeGetMultilingualID();
        if (v10)
        {
          if ([v4 containsObject:v10])
          {
            goto LABEL_35;
          }

          [v4 addObject:v10];
          v11 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();
          array = [MEMORY[0x277CBEB18] array];
          v40 = [MEMORY[0x277CBEB58] set];
          v13 = @"Unknown";
          if ([v11 count])
          {
            v14 = 0;
            v15 = @"Unknown";
            do
            {
              v16 = [v11 objectAtIndexedSubscript:v14];
              v17 = TIInputModeGetNormalizedIdentifier();
              if (v17)
              {
                if (!v14)
                {
                  v18 = TIInputModeGetSWLayout();
                  v19 = v18;
                  if (v18)
                  {
                    v20 = v18;
                  }

                  else
                  {
                    v20 = v15;
                  }

                  v21 = v20;

                  v15 = v21;
                }

                if (v14 == [v11 count] - 1)
                {
                  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v17, v15];
                }

                else
                {
                  v22 = [v17 copy];
                }

                v23 = v22;
                [array addObject:v22];
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                v46 = "+[TIPreferencesAnalyzer normalizedInputModeIdentifierGroupsFromInputModes:]";
                _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:nil input mode found.", buf, 0xCu);
              }

              ++v14;
            }

            while (v14 < [v11 count]);
          }

          else
          {
            v15 = @"Unknown";
          }

          v30 = MEMORY[0x277CCACA8];
          v31 = [array componentsJoinedByString:{@", "}];
          v32 = [v30 stringWithFormat:@"(%@)", v31];
          [v39 addObject:v32];

          v5 = v36;
          v4 = v37;
          v8 = v35;
          v7 = v38;
        }

        else
        {
          v24 = TIInputModeGetNormalizedIdentifier();
          if (v24)
          {
            v11 = v24;
            v25 = TIInputModeGetSWLayout();
            v26 = v25;
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              v27 = @"Unknown";
            }

            v28 = v27;

            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v11, v28];

            [v39 addObject:v29];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v46 = "+[TIPreferencesAnalyzer normalizedInputModeIdentifierGroupsFromInputModes:]";
              _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:nil input mode found.", buf, 0xCu);
            }

            v11 = 0;
          }
        }

LABEL_35:
        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  allObjects = [v39 allObjects];

  return allObjects;
}

@end