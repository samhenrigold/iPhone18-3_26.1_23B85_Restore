@interface RMModelStatusTestBooleanValue
+ (id)supportedOS;
@end

@implementation RMModelStatusTestBooleanValue

+ (id)supportedOS
{
  v29[6] = *MEMORY[0x277D85DE8];
  v28[0] = &unk_28746CFF8;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A1C0];
  v27[0] = v21;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A1D8];
  v27[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v19;
  v28[1] = &unk_28746D010;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A1F0];
  v26[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A208];
  v26[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v29[1] = v16;
  v28[2] = &unk_28746D028;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A220];
  v25[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A238];
  v25[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v13;
  v28[3] = &unk_28746D040;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A250];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A268];
  v24[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v29[3] = v4;
  v28[4] = &unk_28746D058;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A280];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A298];
  v23[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v29[4] = v7;
  v28[5] = &unk_28746D070;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A2B0];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A2C8];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v29[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  return v11;
}

@end