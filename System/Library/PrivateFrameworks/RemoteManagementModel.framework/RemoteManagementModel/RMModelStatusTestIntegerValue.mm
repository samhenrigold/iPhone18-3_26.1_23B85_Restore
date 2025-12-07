@interface RMModelStatusTestIntegerValue
+ (id)supportedOS;
@end

@implementation RMModelStatusTestIntegerValue

+ (id)supportedOS
{
  v29[6] = *MEMORY[0x277D85DE8];
  v28[0] = &unk_28746D1A8;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A520];
  v27[0] = v21;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A538];
  v27[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v19;
  v28[1] = &unk_28746D1C0;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A550];
  v26[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A568];
  v26[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v29[1] = v16;
  v28[2] = &unk_28746D1D8;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A580];
  v25[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A598];
  v25[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v13;
  v28[3] = &unk_28746D1F0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A5B0];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A5C8];
  v24[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v29[3] = v4;
  v28[4] = &unk_28746D208;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A5E0];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A5F8];
  v23[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v29[4] = v7;
  v28[5] = &unk_28746D220;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A610];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A628];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v29[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  return v11;
}

@end