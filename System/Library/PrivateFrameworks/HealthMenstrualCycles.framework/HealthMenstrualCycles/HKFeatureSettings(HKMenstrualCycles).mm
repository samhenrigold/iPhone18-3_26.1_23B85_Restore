@interface HKFeatureSettings(HKMenstrualCycles)
- (uint64_t)deviationDetectionEnabledForAllTypes;
- (uint64_t)deviationDetectionEnabledForAnyType;
- (uint64_t)deviationDetectionEnabledForType:()HKMenstrualCycles;
- (uint64_t)deviationDetectionEnabledSetExplicitlyForAnyType;
- (uint64_t)fertileWindowProjectionsEnabled;
- (uint64_t)initWithMenstruationProjectionsEnabled:()HKMenstrualCycles fertileWindowProjectionsEnabled:areFertilityTrackingDisplayTypesVisible:isSexualActivityDisplayTypeVisible:;
- (uint64_t)isLoggingVisibleForDisplayTypeIdentifier:()HKMenstrualCycles;
- (uint64_t)menstruationProjectionsEnabled;
- (uint64_t)projectionsEnabledSettingsHaveChangedFromFeatureSettings:()HKMenstrualCycles;
@end

@implementation HKFeatureSettings(HKMenstrualCycles)

- (uint64_t)menstruationProjectionsEnabled
{
  v1 = [self numberForKey:@"MenstruationProjectionsEnabled"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)fertileWindowProjectionsEnabled
{
  v1 = [self numberForKey:@"FertileWindowProjectionsEnabled"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)isLoggingVisibleForDisplayTypeIdentifier:()HKMenstrualCycles
{
  if (@"DisplayTypeIdentifierMenstrualFlow" == a3)
  {
    return 1;
  }

  v4 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier(a3);
  v5 = [self numberForKey:v4];
  v6 = [v5 isEqualToNumber:MEMORY[0x277CBEC38]] ^ 1;

  return v6;
}

- (uint64_t)projectionsEnabledSettingsHaveChangedFromFeatureSettings:()HKMenstrualCycles
{
  v4 = a3;
  menstruationProjectionsEnabled = [self menstruationProjectionsEnabled];
  if (menstruationProjectionsEnabled == [v4 menstruationProjectionsEnabled])
  {
    fertileWindowProjectionsEnabled = [self fertileWindowProjectionsEnabled];
    v6 = fertileWindowProjectionsEnabled ^ [v4 fertileWindowProjectionsEnabled];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (uint64_t)initWithMenstruationProjectionsEnabled:()HKMenstrualCycles fertileWindowProjectionsEnabled:areFertilityTrackingDisplayTypesVisible:isSexualActivityDisplayTypeVisible:
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [v10 setObject:v11 forKeyedSubscript:@"MenstruationProjectionsEnabled"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  [v10 setObject:v12 forKeyedSubscript:@"FertileWindowProjectionsEnabled"];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = _HKMCFertilityDisplayTypeIdentifiers();
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        v19 = [MEMORY[0x277CCABB0] numberWithInt:a5 ^ 1u];
        v20 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier(v18);
        [v10 setObject:v19 forKeyedSubscript:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInt:a6 ^ 1u];
  v22 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier(@"DisplayTypeIdentifierSexualActivity");
  [v10 setObject:v21 forKeyedSubscript:v22];

  v23 = [self initWithDictionary:v10];
  return v23;
}

- (uint64_t)deviationDetectionEnabledForType:()HKMenstrualCycles
{
  v4 = HKFeatureSettingsKeyForDeviationDetectionTypeEnabled(a3);
  v5 = [self numberForKey:v4];
  v6 = [v5 isEqualToNumber:MEMORY[0x277CBEC28]];

  return v6 ^ 1u;
}

- (uint64_t)deviationDetectionEnabledForAnyType
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = HKMCAllDeviationTypes();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([self deviationDetectionEnabledForType:{objc_msgSend(*(*(&v9 + 1) + 8 * v6), "integerValue", v9)}])
        {
          v7 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (uint64_t)deviationDetectionEnabledForAllTypes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = HKMCAllDeviationTypes();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![self deviationDetectionEnabledForType:{objc_msgSend(*(*(&v9 + 1) + 8 * v6), "integerValue", v9)}])
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (uint64_t)deviationDetectionEnabledSetExplicitlyForAnyType
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = HKMCAllDeviationTypes();
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = HKFeatureSettingsKeyForDeviationDetectionTypeEnabled([*(*(&v11 + 1) + 8 * v6) integerValue]);
        v8 = [self numberForKey:v7];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end