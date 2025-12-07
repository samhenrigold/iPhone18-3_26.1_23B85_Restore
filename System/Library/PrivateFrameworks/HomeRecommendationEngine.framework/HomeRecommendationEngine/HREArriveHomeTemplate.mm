@interface HREArriveHomeTemplate
- (HREArriveHomeTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREArriveHomeTemplate

- (HREArriveHomeTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREArriveHomeTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF180]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13A70]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_19 != -1)
    {
      dispatch_once(&_MergedGlobals_19, &__block_literal_global_3_3);
    }

    v6 = qword_27F5F9770;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:0.0];
    [(HRETemplate *)v3 setStarterRank:2.0];
  }

  return v3;
}

void __29__HREArriveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9770;
  qword_27F5F9770 = @"arriveHome";
}

- (id)_lazy_actionMap
{
  v27[5] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v24[0] = *MEMORY[0x277CCF9F0];
  v24[1] = v2;
  v25[0] = MEMORY[0x277CBEC38];
  v25[1] = &unk_28665D820;
  v3 = *MEMORY[0x277CCFA30];
  v24[2] = *MEMORY[0x277CCF8D8];
  v24[3] = v3;
  v25[2] = &unk_28665D838;
  v25[3] = &unk_28665D838;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v14 = [HRECharacteristicActionMap characteristicActionMap:v15];
  v27[0] = v14;
  v26[1] = *MEMORY[0x277CD0E30];
  v22 = *MEMORY[0x277CCFB50];
  v23 = &unk_28665D850;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v27[1] = v5;
  v26[2] = *MEMORY[0x277CD0E58];
  v20 = *MEMORY[0x277CCFB08];
  v21 = &unk_28665D868;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v27[2] = v7;
  v26[3] = *MEMORY[0x277CD0ED8];
  v18 = *MEMORY[0x277CCFB60];
  v19 = &unk_28665D880;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v9 = [HRECharacteristicActionMap characteristicActionMap:v8];
  v27[3] = v9;
  v26[4] = *MEMORY[0x277CD0EB0];
  v16 = *MEMORY[0x277CCFB40];
  v17 = &unk_28665D868;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v11 = [HRECharacteristicActionMap characteristicActionMap:v10];
  v27[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];

  return v12;
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