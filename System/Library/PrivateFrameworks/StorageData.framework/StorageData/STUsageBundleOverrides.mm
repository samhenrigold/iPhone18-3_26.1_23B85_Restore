@interface STUsageBundleOverrides
+ (id)overrides;
+ (id)overridesFor:(id)for;
- (STUsageBundleOverrides)initWithDictionary:(id)dictionary;
@end

@implementation STUsageBundleOverrides

- (STUsageBundleOverrides)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = STUsageBundleOverrides;
  v5 = [(STUsageBundleOverrides *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__STUsageBundleOverrides_initWithDictionary___block_invoke;
    v8[3] = &unk_279D1D130;
    v9 = v5;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v6;
}

+ (id)overrides
{
  if (overrides_onceToken != -1)
  {
    +[STUsageBundleOverrides overrides];
  }

  v3 = _bundleOverrides;

  return v3;
}

void __35__STUsageBundleOverrides_overrides__block_invoke()
{
  v26[4] = *MEMORY[0x277D85DE8];
  v23 = @"ignore";
  v24 = &unk_287C8E650;
  v25[0] = @"MailUsage.bundle";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v0;
  v25[1] = @"MessagesUsagePreferencesPlugin.bundle";
  v21 = @"ignore";
  v22 = &unk_287C8E650;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v26[1] = v1;
  v25[2] = @"SoftwareUpdateUsage.bundle";
  v19 = @"replaceWithZeroSizeApp";
  v20 = @"com.apple.Preferences";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v26[2] = v2;
  v25[3] = @"VisualVoicemailUsage.bundle";
  v17 = @"replaceWithZeroSizeApp";
  v18 = @"com.apple.mobilephone";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v26[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __35__STUsageBundleOverrides_overrides__block_invoke_80;
  v15 = &unk_279D1D130;
  v6 = v5;
  v16 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:&v12];
  v7 = _bundleOverrides;
  _bundleOverrides = v6;
  v8 = v6;

  v9 = [STUsageBundleOverrides alloc];
  v10 = [(STUsageBundleOverrides *)v9 initWithDictionary:MEMORY[0x277CBEC10], v12, v13, v14, v15];
  v11 = _defaultBundleOverrides;
  _defaultBundleOverrides = v10;
}

void __35__STUsageBundleOverrides_overrides__block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[STUsageBundleOverrides alloc] initWithDictionary:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (id)overridesFor:(id)for
{
  forCopy = for;
  overrides = [self overrides];
  v6 = [overrides objectForKey:forCopy];

  v7 = _defaultBundleOverrides;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

@end