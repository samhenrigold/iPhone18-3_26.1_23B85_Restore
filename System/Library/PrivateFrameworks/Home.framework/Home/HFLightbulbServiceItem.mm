@interface HFLightbulbServiceItem
+ (id)supportedServiceTypes;
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)lightProfile;
@end

@implementation HFLightbulbServiceItem

+ (id)supportedServiceTypes
{
  if (_MergedGlobals_309 != -1)
  {
    dispatch_once(&_MergedGlobals_309, &__block_literal_global_4_15);
  }

  v3 = qword_280E03B70;

  return v3;
}

void __47__HFLightbulbServiceItem_supportedServiceTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EA0]];
  v1 = qword_280E03B70;
  qword_280E03B70 = v0;
}

- (id)createControlItemsWithOptions:(id)options
{
  v27[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_opt_new();
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v7 = [HFPowerStateControlItem alloc];
  v26 = @"title";
  v8 = _HFLocalizedStringWithDefaultValue(@"HFControlShortTitlePower", @"HFControlShortTitlePower", 1);
  v27[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v10 = [(HFPowerStateControlItem *)v7 initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v9];

  [v5 na_safeAddObject:v10];
  v24[0] = @"title";
  v11 = HFItemOptionalLocalizedString(@"HFControlShortTitleColor", optionsCopy);
  v24[1] = @"controlItemPurpose";
  v25[0] = v11;
  v25[1] = &unk_282524F18;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = [[HFColorControlItem alloc] initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v12];
  v14 = MEMORY[0x277CBEB38];
  v15 = HFItemOptionalLocalizedString(@"HFControlShortTitleBrightness", optionsCopy);

  v16 = [v14 dictionaryWithObject:v15 forKey:@"title"];

  characteristicOptions = [(HFControlItem *)v13 characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];
  v19 = [allCharacteristicTypes count];

  if (v19)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v16 setObject:clearColor forKeyedSubscript:@"tintColor"];

    [v5 na_safeAddObject:v13];
  }

  v21 = [HFLightbulbControlItem alloc];
  v22 = [(HFIncrementalStateControlItem *)v21 initWithValueSource:controlItemValueSourceForPrimaryService primaryStateControlItem:v10 incrementalCharacteristicType:*MEMORY[0x277CCF788] displayResults:v16];
  [v5 na_safeAddObject:v22];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  if (qword_280E03B78 != -1)
  {
    dispatch_once(&qword_280E03B78, &__block_literal_global_25_14);
  }

  v5 = qword_280E03B80;
  v6 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v5 options:optionsCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HFLightbulbServiceItem__subclass_updateWithOptions___block_invoke_3;
  v9[3] = &unk_277DF2828;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

void __54__HFLightbulbServiceItem__subclass_updateWithOptions___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF9F0], *MEMORY[0x277CCF788], *MEMORY[0x277CCFA30], *MEMORY[0x277CCF7D8], *MEMORY[0x277CCF8D8], 0}];
  v1 = qword_280E03B80;
  qword_280E03B80 = v0;
}

id __54__HFLightbulbServiceItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 readResponse];
  v4 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF9F0]];
  v5 = [v4 characteristic];
  v6 = [v4 valueWithExpectedClass:objc_opt_class()];
  v7 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF788]];
  v35 = [v7 characteristic];
  v33 = v7;
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];
  v34 = v6;
  if (+[HFUtilities hasInternalDiagnostics])
  {
    v9 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 32);
      *buf = 138413058;
      v38 = v11;
      v39 = 2112;
      v40 = v34;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@ read power state %@, brightness %@ in item: %@", buf, 0x2Au);

      v6 = v34;
    }
  }

  if (v8 && ![v8 intValue] && objc_msgSend(v6, "BOOLValue"))
  {
    v13 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *(a1 + 32);
      *buf = 138413058;
      v38 = v15;
      v39 = 2112;
      v40 = v8;
      v41 = 2112;
      v42 = &unk_282524F00;
      v43 = 2112;
      v44 = v16;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "%@ overriding brightness from %@ to %@ in item: %@", buf, 0x2Au);

      v6 = v34;
    }

    v8 = &unk_282524F00;
  }

  v17 = [v2 standardResults];
  v18 = [v17 mutableCopy];

  v19 = [v2 displayMetadata];

  v20 = [v19 primaryState];
  if (v8)
  {
    v21 = &unk_282524F30;
    if (v20 == 2)
    {
      v21 = v8;
    }

    v22 = v21;
    v23 = [v35 metadata];
    v24 = [v23 hf_percentageForCharacteristicValue:v22];

    [v18 setObject:v24 forKeyedSubscript:@"subPriority"];
    v25 = [*(a1 + 32) descriptionForCharacteristic:v35 withValue:v22];
    v26 = [v18 objectForKeyedSubscript:@"description"];

    if (!v26)
    {
      if (v25 && v20 == 2)
      {
        [v18 setObject:v25 forKeyedSubscript:@"description"];
        goto LABEL_22;
      }

      if (v34)
      {
        v32 = [*(a1 + 32) descriptionForCharacteristic:v5 withValue:?];

        [v18 na_safeSetObject:v32 forKey:@"description"];
        v25 = v32;
      }
    }

    if (v20 == 1)
    {
      v27 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTitleIncrementalStateOff", @"HFCharacteristicTitleIncrementalStateOff", 1);
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    v27 = [*(a1 + 32) controlDescriptionForCharacteristic:v35 withValue:v22];
    goto LABEL_23;
  }

  if (v6)
  {
    v27 = [*(a1 + 32) controlDescriptionForCharacteristic:v5 withValue:v6];
    v22 = [*(a1 + 32) descriptionForCharacteristic:v5 withValue:v6];
    [v18 na_safeSetObject:v22 forKey:@"description"];
    v24 = 0;
LABEL_24:

    v6 = v34;
    goto LABEL_25;
  }

  v24 = 0;
  v27 = 0;
LABEL_25:
  [v18 na_safeSetObject:v27 forKey:@"controlDescription"];
  [*(a1 + 32) applyInflectionToDescriptions:v18];
  v28 = MEMORY[0x277D2C900];
  v29 = [HFItemUpdateOutcome outcomeWithResults:v18];
  v30 = [v28 futureWithResult:v29];

  return v30;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  v16.receiver = self;
  v16.super_class = HFLightbulbServiceItem;
  v5 = [(HFServiceItem *)&v16 currentStateActionBuildersForHome:homeCopy];
  lightProfile = [(HFLightbulbServiceItem *)self lightProfile];
  settings = [lightProfile settings];
  supportedFeatures = [settings supportedFeatures];

  if (supportedFeatures)
  {
    v9 = [(HFItemBuilder *)[HFNaturalLightingActionBuilder alloc] initWithHome:homeCopy];
    [(HFNaturalLightingActionBuilder *)v9 setLightProfile:lightProfile];
    settings2 = [lightProfile settings];
    -[HFNaturalLightingActionBuilder setNaturalLightEnabled:](v9, "setNaturalLightEnabled:", [settings2 isNaturalLightingEnabled]);
  }

  else
  {
    v9 = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HFLightbulbServiceItem_currentStateActionBuildersForHome___block_invoke;
  v14[3] = &unk_277DFC8D8;
  v15 = v9;
  v11 = v9;
  v12 = [v5 flatMap:v14];

  return v12;
}

id __60__HFLightbulbServiceItem_currentStateActionBuildersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 na_safeAddObject:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)lightProfile
{
  v2 = objc_msgSend_service(self, a2);
  hf_lightProfiles = [v2 hf_lightProfiles];

  if ([hf_lightProfiles count] >= 2)
  {
    NSLog(&cfstr_OnlyExpectedOn.isa, hf_lightProfiles);
  }

  anyObject = [hf_lightProfiles anyObject];

  return anyObject;
}

@end