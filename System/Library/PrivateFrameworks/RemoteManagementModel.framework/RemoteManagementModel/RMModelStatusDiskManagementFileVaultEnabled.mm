@interface RMModelStatusDiskManagementFileVaultEnabled
+ (id)supportedOS;
@end

@implementation RMModelStatusDiskManagementFileVaultEnabled

+ (id)supportedOS
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = &unk_28746C830;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874694A0];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874694B8];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v5;
}

@end