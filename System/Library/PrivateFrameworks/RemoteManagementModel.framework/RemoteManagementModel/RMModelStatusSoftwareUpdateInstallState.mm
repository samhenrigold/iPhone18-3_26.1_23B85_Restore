@interface RMModelStatusSoftwareUpdateInstallState
+ (id)supportedOS;
@end

@implementation RMModelStatusSoftwareUpdateInstallState

+ (id)supportedOS
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_28746CE78;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469EC0];
  v23[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469ED8];
  v23[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v25[0] = v16;
  v24[1] = &unk_28746CE90;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469EF0];
  v22[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F08];
  v22[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v25[1] = v13;
  v24[2] = &unk_28746CEC0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F20];
  v21[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F38];
  v21[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v25[2] = v4;
  v24[3] = &unk_28746CEA8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F50];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F68];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v25[3] = v7;
  v24[4] = &unk_28746CED8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F80];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469F98];
  v19[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v25[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

  return v11;
}

@end