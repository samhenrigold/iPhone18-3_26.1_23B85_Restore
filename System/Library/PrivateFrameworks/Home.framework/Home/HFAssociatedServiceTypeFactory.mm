@interface HFAssociatedServiceTypeFactory
+ (id)associatedServiceTypesArrayFor:(id)for;
+ (id)associatedServiceTypesSetFor:(id)for;
@end

@implementation HFAssociatedServiceTypeFactory

+ (id)associatedServiceTypesSetFor:(id)for
{
  v3 = qword_280E02C58;
  forCopy = for;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E02C58, &__block_literal_global_25);
  }

  v5 = [_MergedGlobals_220 objectForKeyedSubscript:forCopy];

  return v5;
}

void __63__HFAssociatedServiceTypeFactory_associatedServiceTypesSetFor___block_invoke()
{
  v17[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E40];
  v17[0] = *MEMORY[0x277CD0EA0];
  v17[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v3 = [v0 setWithArray:v2];

  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CD0F58];
  v16[0] = *MEMORY[0x277CD0E30];
  v16[1] = v5;
  v6 = *MEMORY[0x277CD0E58];
  v16[2] = *MEMORY[0x277CD0F60];
  v16[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v8 = [v4 setWithArray:v7];

  v14[0] = *MEMORY[0x277CD0ED0];
  v9 = [v3 setByAddingObject:?];
  v15[0] = v9;
  v14[1] = *MEMORY[0x277CD0F08];
  v10 = [v3 setByAddingObject:?];
  v15[1] = v10;
  v14[2] = *MEMORY[0x277CD0E20];
  v11 = [v8 setByAddingObject:?];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v13 = _MergedGlobals_220;
  _MergedGlobals_220 = v12;
}

+ (id)associatedServiceTypesArrayFor:(id)for
{
  v3 = [self associatedServiceTypesSetFor:for];
  allObjects = [v3 allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_5];

  return v5;
}

uint64_t __65__HFAssociatedServiceTypeFactory_associatedServiceTypesArrayFor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CD1D90];
  v5 = a3;
  v6 = [v4 hf_userFriendlyLocalizedCapitalizedDescription:a2];
  v7 = [MEMORY[0x277CD1D90] hf_userFriendlyLocalizedCapitalizedDescription:v5];

  v8 = [v6 localizedStandardCompare:v7];
  return v8;
}

@end