@interface RMModelStatusPasscodeCompliance
+ (id)supportedOS;
@end

@implementation RMModelStatusPasscodeCompliance

+ (id)supportedOS
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_28746CB18;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874699E0];
  v19[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874699F8];
  v19[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v21[0] = v13;
  v20[1] = &unk_28746CB48;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469A10];
  v18[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469A28];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v21[1] = v4;
  v20[2] = &unk_28746CB78;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469A40];
  v17[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469A58];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v21[2] = v7;
  v20[3] = &unk_28746CB90;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469A70];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469A88];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v21[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v11;
}

@end