@interface NSExtension(RPExtensions)
+ (void)extensionsWithMatchingPointName:()RPExtensions baseIdentifier:activationRule:unwantedActivationRule:completion:;
- (uint64_t)processMode;
@end

@implementation NSExtension(RPExtensions)

+ (void)extensionsWithMatchingPointName:()RPExtensions baseIdentifier:activationRule:unwantedActivationRule:completion:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x277CBEB18];
  v16 = a3;
  array = [v15 array];
  v32 = *MEMORY[0x277CCA0F8];
  v33[0] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v19 = [v18 mutableCopy];

  v20 = MEMORY[0x277CCA9C8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __125__NSExtension_RPExtensions__extensionsWithMatchingPointName_baseIdentifier_activationRule_unwantedActivationRule_completion___block_invoke;
  v26[3] = &unk_278B62448;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = array;
  v31 = v14;
  v21 = v14;
  v22 = array;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  [v20 extensionsWithMatchingAttributes:v19 completion:v26];
}

- (uint64_t)processMode
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  v3 = [v2 objectForKeyedSubscript:@"RPBroadcastProcessMode"];

  v4 = [v3 isEqualToString:@"RPBroadcastProcessModeSampleBuffer"];
  return v4;
}

@end