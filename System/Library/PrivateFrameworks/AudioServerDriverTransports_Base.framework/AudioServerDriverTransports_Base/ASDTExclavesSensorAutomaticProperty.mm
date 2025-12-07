@interface ASDTExclavesSensorAutomaticProperty
+ (id)config;
@end

@implementation ASDTExclavesSensorAutomaticProperty

+ (id)config
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = 1;
  v6[0] = @"Subclass";
  v6[1] = @"Selector";
  v7[0] = @"ASDTExclavesSensorAutomaticProperty";
  v7[1] = &unk_2853549F0;
  v7[2] = 0x285354810;
  v6[2] = @"Scope";
  v6[3] = @"Value";
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:4];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v3;
}

@end