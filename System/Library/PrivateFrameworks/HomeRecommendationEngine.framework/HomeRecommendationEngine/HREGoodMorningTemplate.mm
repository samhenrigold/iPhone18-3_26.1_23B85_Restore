@interface HREGoodMorningTemplate
- (HREGoodMorningTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREGoodMorningTemplate

- (HREGoodMorningTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREGoodMorningTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF1B0]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13AC0]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_29 != -1)
    {
      dispatch_once(&_MergedGlobals_29, &__block_literal_global_3_11);
    }

    v6 = qword_27F5F9940;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:3.0];
    [(HRETemplate *)v3 setStarterRank:1.8];
  }

  return v3;
}

void __30__HREGoodMorningTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9940;
  qword_27F5F9940 = @"goodMorning";
}

- (id)_lazy_actionMap
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v12[0] = *MEMORY[0x277CCF9F0];
  v12[1] = v2;
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = &unk_28665DA18;
  v3 = *MEMORY[0x277CCFA30];
  v12[2] = *MEMORY[0x277CCF8D8];
  v12[3] = v3;
  v13[2] = &unk_28665DA30;
  v13[3] = &unk_28665DA30;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v15[0] = v5;
  v14[1] = *MEMORY[0x277CD0F60];
  v10 = *MEMORY[0x277CCFB50];
  v11 = &unk_28665DA48;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
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