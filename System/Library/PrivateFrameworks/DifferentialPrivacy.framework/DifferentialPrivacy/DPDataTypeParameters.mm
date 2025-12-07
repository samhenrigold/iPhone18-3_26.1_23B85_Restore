@interface DPDataTypeParameters
@end

@implementation DPDataTypeParameters

void __44___DPDataTypeParameters_parametersFromFile___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"override.datatypeparameters" ofType:@"plist"];

  v3 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v5 usingBlock:&__block_literal_global_17];
  v4 = parametersFromFile__allParameters_0;
  parametersFromFile__allParameters_0 = v3;
}

@end