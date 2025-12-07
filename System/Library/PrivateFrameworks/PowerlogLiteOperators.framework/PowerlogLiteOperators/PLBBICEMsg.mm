@interface PLBBICEMsg
+ (id)msgMetricTableSchema;
+ (id)msgTriggerTableSchema;
@end

@implementation PLBBICEMsg

+ (id)msgTriggerTableSchema
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v18 = *MEMORY[0x277D3F568];
  v19 = &unk_282C1C5E8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = *MEMORY[0x277D3F2D0];
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = *MEMORY[0x277D3F2E0];
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = *MEMORY[0x277D3F2D8];
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = *MEMORY[0x277D3F2E8];
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat4;
  v16[4] = *MEMORY[0x277D3F2A8];
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v17[4] = commonTypeDict_IntegerFormat5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v21[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v11;
}

+ (id)msgMetricTableSchema
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v18 = *MEMORY[0x277D3F568];
  v19 = &unk_282C1C5F8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = *MEMORY[0x277D3F2B0];
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = *MEMORY[0x277D3F2B8];
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v17[1] = commonTypeDict_StringFormat;
  v16[2] = *MEMORY[0x277D3F2C8];
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat2;
  v16[3] = *MEMORY[0x277D3F2C0];
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat3;
  v16[4] = *MEMORY[0x277D3F2A8];
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v17[4] = commonTypeDict_IntegerFormat4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v21[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v11;
}

@end