@interface DPKeyProperties
@end

@implementation DPKeyProperties

void __30___DPKeyProperties_initialize__block_invoke()
{
  v6[15] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_2839760F0;
  v5[1] = &unk_283976108;
  v6[0] = @"OneBitHistogram";
  v6[1] = @"MultiBitHistogram";
  v5[2] = &unk_283976120;
  v5[3] = &unk_283976138;
  v6[2] = @"CompressedMultiBitHistogram";
  v6[3] = @"StatisticsMean";
  v5[4] = &unk_283976150;
  v5[5] = &unk_283976168;
  v6[4] = @"Prio";
  v6[5] = @"OneHotEncoding";
  v5[6] = &unk_283976180;
  v5[7] = &unk_283976198;
  v6[6] = @"PrioPlusPlus";
  v6[7] = @"PrioPlusPlusMetrics";
  v5[8] = &unk_2839761B0;
  v5[9] = &unk_2839761C8;
  v6[8] = @"PrioPlusPlusMetadata";
  v6[9] = @"PrioPiRappor";
  v5[10] = &unk_2839761E0;
  v5[11] = &unk_2839761F8;
  v6[10] = @"Prio3SumVectorField64MultiproofHmacSha256Aes128";
  v6[11] = @"PINEResults";
  v5[12] = &unk_283976210;
  v5[13] = &unk_283976228;
  v6[12] = @"PINEMetrics";
  v6[13] = @"PINEMetadata";
  v5[14] = &unk_283976240;
  v6[14] = @"PreambleHmacSha256Aes128";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:15];
  v1 = kAlgorithmStringsMap;
  kAlgorithmStringsMap = v0;

  v2 = kDataAlgorithmsMap;
  kDataAlgorithmsMap = &unk_2839762B0;

  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_283976320];
  v4 = kAlgorithmsWithEpsilon;
  kAlgorithmsWithEpsilon = v3;
}

void __39___DPKeyProperties_propertiesFromFile___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"override.keyproperties" ofType:@"plist"];

  v3 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v5 usingBlock:&__block_literal_global_193];
  v4 = allKeyProperties;
  allKeyProperties = v3;
}

@end