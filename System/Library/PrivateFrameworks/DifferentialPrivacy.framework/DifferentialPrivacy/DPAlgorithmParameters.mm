@interface DPAlgorithmParameters
@end

@implementation DPAlgorithmParameters

void __45___DPAlgorithmParameters_parametersFromFile___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"override.algorithmparameters" ofType:@"plist"];

  v3 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v5 usingBlock:&__block_literal_global_8];
  v4 = allParameters;
  allParameters = v3;
}

@end