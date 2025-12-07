@interface CPUITemplateInstrumentClusterSceneSpecification
- (id)initialActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation CPUITemplateInstrumentClusterSceneSpecification

- (id)initialSettingsDiffActions
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v9[0] = v2;
  v3 = objc_opt_new();
  v9[1] = v3;
  v4 = objc_opt_new();
  v9[2] = v4;
  v5 = objc_opt_new();
  v9[3] = v5;
  v6 = objc_opt_new();
  v9[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  return v7;
}

- (id)initialActionHandlers
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end