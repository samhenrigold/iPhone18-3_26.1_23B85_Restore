@interface DPDediscoDonation
@end

@implementation DPDediscoDonation

void __53___DPDediscoDonation_TaskConfig__defaultValueForKey___block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"OHTTP";
  v2[1] = @"PrivateAccessToken";
  v3[0] = MEMORY[0x277CBEC38];
  v3[1] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = defaultValueForKey__defaultValues;
  defaultValueForKey__defaultValues = v0;
}

@end