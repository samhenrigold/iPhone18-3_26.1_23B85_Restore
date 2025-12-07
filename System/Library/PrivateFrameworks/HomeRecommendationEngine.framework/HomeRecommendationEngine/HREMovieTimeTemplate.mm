@interface HREMovieTimeTemplate
- (HREMovieTimeTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREMovieTimeTemplate

- (HREMovieTimeTemplate)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HREMovieTimeTemplate;
  v2 = [(HREActionSetTemplate *)&v16 init];
  if (v2)
  {
    v3 = _HRELocalizedStringWithDefaultValue(@"HRETemplateTitleMovieTime", @"HRETemplateTitleMovieTime", 1);
    [(HREActionSetTemplate *)v2 setActionSetName:v3];

    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13AA0]];
    [(HREActionSetTemplate *)v2 setIconDescriptor:v5];

    [(HRETemplate *)v2 setSplitStrategy:1];
    v6 = MEMORY[0x277CBEB98];
    v7 = HRETelevisionProfileType();
    v8 = *MEMORY[0x277CD0F20];
    v17[0] = v7;
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v10 = [v6 setWithArray:v9];
    v11 = [HRERecommendableObjectTypeListRule ruleRequiringOneOfTypes:v10];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v13 = [v6 setWithArray:v12];
    [(HRETemplate *)v2 setRules:v13];

    if (_MergedGlobals_18 != -1)
    {
      dispatch_once(&_MergedGlobals_18, &__block_literal_global_7);
    }

    v14 = qword_27F5F9760;
    [(HRETemplate *)v2 setIdentifier:v14];

    [(HRETemplate *)v2 setSortingPriority:3.0];
    [(HRETemplate *)v2 setStarterRank:0.2];
  }

  return v2;
}

void __28__HREMovieTimeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9760;
  qword_27F5F9760 = @"movieTime";
}

- (id)_lazy_actionMap
{
  v32[4] = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_14];
  v19 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v16];
  v21 = NSStringFromProtocol(&unk_28666EF10);
  v31[0] = v21;
  v20 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v32[0] = v20;
  v31[1] = *MEMORY[0x277CD0EA0];
  v28 = *MEMORY[0x277CCF9F0];
  v2 = v28;
  v29 = MEMORY[0x277CBEC28];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = [HRECharacteristicActionMap conditonalCharacteristicActionMap:v18 condition:v19];
  v30[0] = v17;
  v3 = *MEMORY[0x277CCF788];
  v26[0] = v2;
  v26[1] = v3;
  v27[0] = MEMORY[0x277CBEC38];
  v27[1] = &unk_28665D7F0;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v4 = [HRECharacteristicActionMap conditonalCharacteristicActionMap:v15 condition:v16];
  v30[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v6 = [(HREActionMap *)HRECharacteristicActionMap actionMapWithChildMaps:v5];
  v32[1] = v6;
  v31[2] = *MEMORY[0x277CD0F20];
  v24 = *MEMORY[0x277CCF748];
  v7 = v24;
  v25 = &unk_28665D808;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v9 = [HRECharacteristicActionMap characteristicActionMap:v8];
  v32[2] = v9;
  v10 = HRETelevisionProfileType();
  v31[3] = v10;
  v22 = v7;
  v23 = &unk_28665D808;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v12 = [HRECharacteristicActionMap characteristicActionMap:v11];
  v32[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  return v13;
}

uint64_t __39__HREMovieTimeTemplate__lazy_actionMap__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2866642D0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hre_characteristics];

  v6 = [v5 na_any:&__block_literal_global_87];
  return v6;
}

uint64_t __39__HREMovieTimeTemplate__lazy_actionMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

- (id)_lazy_allowedVariance
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [HREActionRangeVarianceRule rangeVarianceWithType:*MEMORY[0x277CCF788] min:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [HREActionVarianceCollection varianceRuleCollectionWithRules:v3];

  return v4;
}

@end