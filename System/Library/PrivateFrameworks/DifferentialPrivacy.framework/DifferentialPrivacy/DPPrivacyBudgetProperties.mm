@interface DPPrivacyBudgetProperties
@end

@implementation DPPrivacyBudgetProperties

void __55___DPPrivacyBudgetProperties_budgetPropertiesFromFile___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"override.budgetproperties" ofType:@"plist"];

  v3 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v5 usingBlock:&__block_literal_global_7];
  v4 = gAllBudgetProperties;
  gAllBudgetProperties = v3;
}

@end