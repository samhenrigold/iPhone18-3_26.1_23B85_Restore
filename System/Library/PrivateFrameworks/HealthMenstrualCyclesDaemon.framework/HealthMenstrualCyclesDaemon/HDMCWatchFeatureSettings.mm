@interface HDMCWatchFeatureSettings
+ (id)algorithmicProjectionsSettings;
+ (id)hiddenLoggingRowsSettings;
- (void)initWithFeatureIdentifier:(void *)identifier changeComputer:;
@end

@implementation HDMCWatchFeatureSettings

id __58__HDMCWatchFeatureSettings_algorithmicProjectionsSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v4 numberForKey:*MEMORY[0x277D11808]];
  if (v7)
  {
    v8 = [v5 hk_safeNumberIfExistsForKeyPath:@"MenstruationProjectionsEnabled" error:0];
    if (!v8 || ([v7 isEqualToNumber:v8] & 1) == 0)
    {
      [v6 setObject:v7 forKeyedSubscript:@"MenstruationProjectionsEnabled"];
    }
  }

  v9 = [v4 numberForKey:*MEMORY[0x277D11800]];
  if (v9)
  {
    v10 = [v5 hk_safeNumberIfExistsForKeyPath:@"FertileWindowProjectionsEnabled" error:0];
    if (!v10 || ([v9 isEqualToNumber:v10] & 1) == 0)
    {
      [v6 setObject:v9 forKeyedSubscript:@"FertileWindowProjectionsEnabled"];
    }
  }

  v11 = [v6 copy];

  return v11;
}

id __53__HDMCWatchFeatureSettings_hiddenLoggingRowsSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = HKMCAllDisplayTypeIdentifiers();
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier();
        v14 = [v4 numberForKey:{v13, v20}];

        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [v5 hk_safeDictionaryIfExistsForKeyPath:@"ShouldHideByDisplayTypeIdentifier" error:0];
  v16 = v15;
  v17 = MEMORY[0x277CBEC10];
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  if (([v6 isEqualToDictionary:{v18, v20}] & 1) == 0)
  {
    v24 = @"ShouldHideByDisplayTypeIdentifier";
    v25 = v6;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  return v17;
}

- (void)initWithFeatureIdentifier:(void *)identifier changeComputer:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = HDMCWatchFeatureSettings;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[2];
      self[2] = v7;

      v9 = _Block_copy(identifierCopy);
      v10 = self[1];
      self[1] = v9;
    }
  }

  return self;
}

+ (id)algorithmicProjectionsSettings
{
  v2 = [self alloc];
  v3 = [(HDMCWatchFeatureSettings *)v2 initWithFeatureIdentifier:&__block_literal_global_7 changeComputer:?];

  return v3;
}

+ (id)hiddenLoggingRowsSettings
{
  v2 = [self alloc];
  v3 = [(HDMCWatchFeatureSettings *)v2 initWithFeatureIdentifier:&__block_literal_global_397 changeComputer:?];

  return v3;
}

@end