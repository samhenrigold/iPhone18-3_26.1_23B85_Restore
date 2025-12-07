@interface RMModelStatusPasscodeIsPresent
+ (id)supportedOS;
@end

@implementation RMModelStatusPasscodeIsPresent

+ (id)supportedOS
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_28746CBA8;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469AA0];
  v19[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469AB8];
  v19[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v21[0] = v13;
  v20[1] = &unk_28746CBD8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469AD0];
  v18[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469AE8];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v21[1] = v4;
  v20[2] = &unk_28746CC08;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469B00];
  v17[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469B18];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v21[2] = v7;
  v20[3] = &unk_28746CC20;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469B30];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469B48];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v21[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v11;
}

@end