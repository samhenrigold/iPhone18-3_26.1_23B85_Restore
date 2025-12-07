@interface HREAutoArriveHomeTemplate
- (HREAutoArriveHomeTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREAutoArriveHomeTemplate

- (HREAutoArriveHomeTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREAutoArriveHomeTemplate;
  v2 = [(HRETemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREPresenceTriggerTemplate *)v2 setPresenceType:3];
    [(HREPresenceTriggerTemplate *)v3 setPresenceUserType:2];
    if (_MergedGlobals_26 != -1)
    {
      dispatch_once(&_MergedGlobals_26, &__block_literal_global_3_7);
    }

    v4 = qword_27F5F98A0;
    [(HRETemplate *)v3 setIdentifier:v4];

    [(HRETemplate *)v3 setSortingPriority:0.1];
    [(HRETemplate *)v3 setStarterRank:1.4];
    v5 = objc_alloc(MEMORY[0x277D14728]);
    v6 = [v5 initWithImageIdentifier:*MEMORY[0x277D13A70]];
    [(HRETriggerTemplate *)v3 setDefaultIconDescriptor:v6];
  }

  return v3;
}

void __33__HREAutoArriveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F98A0;
  qword_27F5F98A0 = @"autoArriveHome";
}

- (id)_lazy_actionMap
{
  v30[5] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v27[0] = *MEMORY[0x277CCF9F0];
  v27[1] = v2;
  v28[0] = MEMORY[0x277CBEC38];
  v28[1] = &unk_28665D958;
  v3 = *MEMORY[0x277CCFA30];
  v27[2] = *MEMORY[0x277CCF8D8];
  v27[3] = v3;
  v28[2] = &unk_28665D970;
  v28[3] = &unk_28665D970;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v18 = [HRECharacteristicActionMap characteristicActionMap:v19];
  v30[0] = v18;
  v29[1] = *MEMORY[0x277CD0E30];
  v25 = *MEMORY[0x277CCFB50];
  v26 = &unk_28665D988;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v16 = [HRECharacteristicActionMap characteristicActionMap:v17];
  v30[1] = v16;
  v29[2] = *MEMORY[0x277CD0E58];
  v23 = *MEMORY[0x277CCFB08];
  v24 = &unk_28665D9A0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v30[2] = v5;
  v29[3] = *MEMORY[0x277CD0ED8];
  v21 = *MEMORY[0x277CCFB60];
  v22 = &unk_28665D9B8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v30[3] = v7;
  v8 = HREMatterRVCType();
  v29[4] = v8;
  v9 = [HREMatterCommandActionMap alloc];
  v10 = +[HREMatterCommandMap pauseCleaning];
  v20[0] = v10;
  v11 = +[HREMatterCommandMap goHome];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v13 = [(HREMatterCommandActionMap *)v9 initWithCommands:v12];
  v30[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];

  return v14;
}

- (id)_lazy_allowedVariance
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [HREActionRangeVarianceRule rangeVarianceWithType:*MEMORY[0x277CCF788] min:1];
  v3 = [HRECharacteristicActionVarianceRule anyVarianceRuleForCharacteristicType:*MEMORY[0x277CCF8D8], v2];
  v8[1] = v3;
  v4 = [HRECharacteristicActionVarianceRule anyVarianceRuleForCharacteristicType:*MEMORY[0x277CCFA30]];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v6 = [HREActionVarianceCollection varianceRuleCollectionWithRules:v5];

  return v6;
}

@end