@interface MutualExclusivityEnforcementRequirementsForFeatureIdentifier
@end

@implementation MutualExclusivityEnforcementRequirementsForFeatureIdentifier

uint64_t ___MutualExclusivityEnforcementRequirementsForFeatureIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() requirementIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCBF60]];

  return v3 ^ 1u;
}

@end