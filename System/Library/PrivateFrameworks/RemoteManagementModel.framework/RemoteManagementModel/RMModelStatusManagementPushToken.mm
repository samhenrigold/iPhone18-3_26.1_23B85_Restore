@interface RMModelStatusManagementPushToken
+ (id)supportedOS;
@end

@implementation RMModelStatusManagementPushToken

+ (id)supportedOS
{
  v35[6] = *MEMORY[0x277D85DE8];
  v34[0] = &unk_28746C9B0;
  v27 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469710];
  v33[0] = v27;
  v26 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469728];
  v33[1] = v26;
  v25 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469740];
  v33[2] = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v35[0] = v24;
  v34[1] = &unk_28746C9C8;
  v23 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469758];
  v32[0] = v23;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469770];
  v32[1] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469788];
  v32[2] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v35[1] = v20;
  v34[2] = &unk_28746C9F8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874697A0];
  v31[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874697B8];
  v31[1] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874697D0];
  v31[2] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v35[2] = v16;
  v34[3] = &unk_28746C9E0;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874697E8];
  v30[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469800];
  v30[1] = v14;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469818];
  v30[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v35[3] = v3;
  v34[4] = &unk_28746CA10;
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469830];
  v29[0] = v4;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469848];
  v29[1] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469860];
  v29[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v35[4] = v7;
  v34[5] = &unk_28746CA28;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469878];
  v28[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469890];
  v28[1] = v9;
  v10 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698A8];
  v28[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v35[5] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];

  return v13;
}

@end