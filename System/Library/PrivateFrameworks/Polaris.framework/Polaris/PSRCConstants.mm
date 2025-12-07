@interface PSRCConstants
+ (BOOL)checkBufferConfigExistsForKey:(id)key;
+ (id)resourceIDForKey:(id)key;
+ (unsigned)getCameraDepthForKey:(id)key;
+ (unsigned)getReaderDepthForKey:(id)key;
+ (unsigned)getWriterDepthForKey:(id)key;
+ (void)setUp;
@end

@implementation PSRCConstants

+ (void)setUp
{
  if (setUp_onceToken != -1)
  {
    +[PSRCConstants setUp];
  }
}

void __22__PSRCConstants_setUp__block_invoke()
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = MEMORY[0x277CBEAC0];
  v1 = [v5 pathForResource:@"PSRCBufferDepthsN301" ofType:@"plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = [v2 objectForKey:@"bufferConfigs"];
  v4 = bufferDict;
  bufferDict = v3;
}

+ (unsigned)getCameraDepthForKey:(id)key
{
  keyCopy = key;
  [self setUp];
  v5 = [bufferDict objectForKey:keyCopy];

  if (v5)
  {
    v6 = [bufferDict objectForKeyedSubscript:keyCopy];
    v7 = [v6 objectForKey:@"cameraDepth"];
    unsignedIntValue = [v7 unsignedIntValue];

    return unsignedIntValue;
  }

  else
  {
    v10 = [(PSRCConstants *)&v13 getCameraDepthForKey:keyCopy];
    return [(PSRCConstants *)v10 getReaderDepthForKey:v11, v12];
  }
}

+ (unsigned)getReaderDepthForKey:(id)key
{
  keyCopy = key;
  [self setUp];
  v5 = [bufferDict objectForKey:keyCopy];

  if (v5)
  {
    v6 = [bufferDict objectForKeyedSubscript:keyCopy];
    v7 = [v6 objectForKey:@"readerDepth"];
    unsignedIntValue = [v7 unsignedIntValue];

    return unsignedIntValue;
  }

  else
  {
    v10 = [(PSRCConstants *)&v13 getReaderDepthForKey:keyCopy];
    return [(PSRCConstants *)v10 getWriterDepthForKey:v11, v12];
  }
}

+ (unsigned)getWriterDepthForKey:(id)key
{
  keyCopy = key;
  [self setUp];
  v5 = [bufferDict objectForKey:keyCopy];

  if (v5)
  {
    v6 = [bufferDict objectForKeyedSubscript:keyCopy];
    v7 = [v6 objectForKey:@"writerDepth"];
    unsignedIntValue = [v7 unsignedIntValue];

    return unsignedIntValue;
  }

  else
  {
    [(PSRCConstants *)&v13 getWriterDepthForKey:keyCopy];
    return [(PSRCConstants *)v10 checkBufferConfigExistsForKey:v11, v12];
  }
}

+ (BOOL)checkBufferConfigExistsForKey:(id)key
{
  keyCopy = key;
  [self setUp];
  v5 = [bufferDict objectForKey:keyCopy];

  return v5 != 0;
}

+ (id)resourceIDForKey:(id)key
{
  v3 = resourceIDForKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    +[PSRCConstants resourceIDForKey:];
  }

  v5 = [resourceIDForKey__keyToIDMap objectForKeyedSubscript:keyCopy];

  return v5;
}

void __34__PSRCConstants_resourceIDForKey___block_invoke()
{
  v3[137] = *MEMORY[0x277D85DE8];
  v2[0] = PLSResourceKeyRCStreamMCAMLS1[0];
  v2[1] = PLSResourceKeyRCStreamMCAMLS2[0];
  v3[0] = &unk_2870CAED8;
  v3[1] = &unk_2870CAEF0;
  v2[2] = PLSResourceKeyRCStreamMCAMLS3[0];
  v2[3] = PLSResourceKeyRCStreamMCAMLS3WR31[0];
  v3[2] = &unk_2870CAF08;
  v3[3] = &unk_2870CAF20;
  v2[4] = PLSResourceKeyRCStreamMCAMRS3WR31[0];
  v2[5] = PLSResourceKeyRCStreamMCAMLS3WRP_1[0];
  v3[4] = &unk_2870CAF38;
  v3[5] = &unk_2870CAF50;
  v2[6] = PLSResourceKeyRCStreamMCAMRS3WRP_1[0];
  v2[7] = PLSResourceKeyRCStreamMCAMLS3WR[0];
  v3[6] = &unk_2870CAF68;
  v3[7] = &unk_2870CAF80;
  v2[8] = PLSResourceKeyRCStreamMCAMRS3WR[0];
  v2[9] = PLSResourceKeyRCStreamMCAMLS3P[0];
  v3[8] = &unk_2870CAF98;
  v3[9] = &unk_2870CAFB0;
  v2[10] = PLSResourceKeyRCStreamMCAMLS3R[0];
  v2[11] = PLSResourceKeyRCStreamMCAMLS4[0];
  v3[10] = &unk_2870CAFC8;
  v3[11] = &unk_2870CAFE0;
  v2[12] = PLSResourceKeyRCStreamMCAMLS5[0];
  v2[13] = PLSResourceKeyRCStreamMCAMLS6[0];
  v3[12] = &unk_2870CAFF8;
  v3[13] = &unk_2870CB010;
  v2[14] = PLSResourceKeyRCStreamMCAMLS8[0];
  v2[15] = PLSResourceKeyRCStreamMCAMLDESGEN[0];
  v3[14] = &unk_2870CB028;
  v3[15] = &unk_2870CB040;
  v2[16] = PLSResourceKeyRCStreamMCAMRS1[0];
  v2[17] = PLSResourceKeyRCStreamMCAMRS2[0];
  v3[16] = &unk_2870CB058;
  v3[17] = &unk_2870CB070;
  v2[18] = PLSResourceKeyRCStreamMCAMRS3[0];
  v2[19] = PLSResourceKeyRCStreamMCAMRS3P[0];
  v3[18] = &unk_2870CB088;
  v3[19] = &unk_2870CB0A0;
  v2[20] = PLSResourceKeyRCStreamMCAMRS3R[0];
  v2[21] = PLSResourceKeyRCStreamMCAMRS4[0];
  v3[20] = &unk_2870CB0B8;
  v3[21] = &unk_2870CB0D0;
  v2[22] = PLSResourceKeyRCStreamMCAMRS5[0];
  v2[23] = PLSResourceKeyRCStreamMCAMRS6[0];
  v3[22] = &unk_2870CB0E8;
  v3[23] = &unk_2870CB100;
  v2[24] = PLSResourceKeyRCStreamMCAMRS8[0];
  v2[25] = PLSResourceKeyRCStreamMCAMRDESGEN[0];
  v3[24] = &unk_2870CB118;
  v3[25] = &unk_2870CB130;
  v2[26] = PLSResourceKeyRCStreamMCAMLS8U_1[0];
  v2[27] = PLSResourceKeyRCStreamMCAMRS8U_1[0];
  v3[26] = &unk_2870CB148;
  v3[27] = &unk_2870CB160;
  v2[28] = PLSResourceKeyRCStreamMCAMLS8U_10[0];
  v2[29] = PLSResourceKeyRCStreamMCAMRS8U_10[0];
  v3[28] = &unk_2870CB178;
  v3[29] = &unk_2870CB190;
  v2[30] = PLSResourceKeyRCStreamMCAMLS8W_1[0];
  v2[31] = PLSResourceKeyRCStreamMCAMRS8W_1[0];
  v3[30] = &unk_2870CB1A8;
  v3[31] = &unk_2870CB1C0;
  v2[32] = PLSResourceKeyRCStreamMCAMLS8U41_10[0];
  v2[33] = PLSResourceKeyRCStreamMCAMRS8U41_10[0];
  v3[32] = &unk_2870CB1D8;
  v3[33] = &unk_2870CB1F0;
  v2[34] = PLSResourceKeyRCStreamMCAMLS8WP_1[0];
  v2[35] = PLSResourceKeyRCStreamMCAMRS8WP_1[0];
  v3[34] = &unk_2870CB208;
  v3[35] = &unk_2870CB220;
  v2[36] = PLSResourceKeyRCStreamDCAMLS1[0];
  v2[37] = PLSResourceKeyRCStreamDCAMLS2[0];
  v3[36] = &unk_2870CB238;
  v3[37] = &unk_2870CB250;
  v2[38] = PLSResourceKeyRCStreamDCAMLS2W[0];
  v2[39] = PLSResourceKeyRCStreamDCAMLS2WP[0];
  v3[38] = &unk_2870CB268;
  v3[39] = &unk_2870CB280;
  v2[40] = PLSResourceKeyRCStreamDCAMLS2B[0];
  v2[41] = PLSResourceKeyRCStreamDCAMLS2BW[0];
  v3[40] = &unk_2870CB298;
  v3[41] = &unk_2870CB2B0;
  v2[42] = PLSResourceKeyRCStreamDCAMLS2BWP[0];
  v2[43] = PLSResourceKeyRCStreamDCAMLDESGEN[0];
  v3[42] = &unk_2870CB2C8;
  v3[43] = &unk_2870CB2E0;
  v2[44] = PLSResourceKeyRCStreamDCAMRS1[0];
  v2[45] = PLSResourceKeyRCStreamDCAMRS2[0];
  v3[44] = &unk_2870CB2F8;
  v3[45] = &unk_2870CB310;
  v2[46] = PLSResourceKeyRCStreamDCAMRS2W[0];
  v2[47] = PLSResourceKeyRCStreamDCAMRS2WP[0];
  v3[46] = &unk_2870CB328;
  v3[47] = &unk_2870CB340;
  v2[48] = PLSResourceKeyRCStreamDCAMRS2B[0];
  v2[49] = PLSResourceKeyRCStreamDCAMRS2BW[0];
  v3[48] = &unk_2870CB358;
  v3[49] = &unk_2870CB370;
  v2[50] = PLSResourceKeyRCStreamDCAMRS2BWP[0];
  v2[51] = PLSResourceKeyRCStreamDCAMRDESGEN[0];
  v3[50] = &unk_2870CB388;
  v3[51] = &unk_2870CB3A0;
  v2[52] = PLSResourceKeyRCStreamSCAMLS1[0];
  v2[53] = PLSResourceKeyRCStreamSCAMLS2[0];
  v3[52] = &unk_2870CB3B8;
  v3[53] = &unk_2870CB3D0;
  v2[54] = PLSResourceKeyRCStreamSCAMRS1[0];
  v2[55] = PLSResourceKeyRCStreamSCAMLS2W[0];
  v3[54] = &unk_2870CB3E8;
  v3[55] = &unk_2870CB400;
  v2[56] = PLSResourceKeyRCStreamSCAMLS2WP[0];
  v2[57] = PLSResourceKeyRCStreamSCAMLS2B[0];
  v3[56] = &unk_2870CB418;
  v3[57] = &unk_2870CB430;
  v2[58] = PLSResourceKeyRCStreamSCAMLS2BW[0];
  v2[59] = PLSResourceKeyRCStreamSCAMLS2BWP[0];
  v3[58] = &unk_2870CB448;
  v3[59] = &unk_2870CB460;
  v2[60] = PLSResourceKeyRCStreamSCAMLDESGEN[0];
  v2[61] = PLSResourceKeyRCStreamSCAMRS2[0];
  v3[60] = &unk_2870CB478;
  v3[61] = &unk_2870CB490;
  v2[62] = PLSResourceKeyRCStreamSCAMRS2W[0];
  v2[63] = PLSResourceKeyRCStreamSCAMRS2WP[0];
  v3[62] = &unk_2870CB4A8;
  v3[63] = &unk_2870CB4C0;
  v2[64] = PLSResourceKeyRCStreamSCAMRS2B[0];
  v3[64] = &unk_2870CB4D8;
  v2[65] = PLSResourceKeyRCStreamSCAMRS2BW[0];
  v3[65] = &unk_2870CB4F0;
  v2[66] = PLSResourceKeyRCStreamSCAMRS2BWP[0];
  v3[66] = &unk_2870CB508;
  v2[67] = PLSResourceKeyRCStreamSCAMRDESGEN[0];
  v3[67] = &unk_2870CB520;
  v2[68] = PLSResourceKeyRCStreamJCAMLS1[0];
  v3[68] = &unk_2870CB538;
  v2[69] = PLSResourceKeyRCStreamJCAMRS1[0];
  v3[69] = &unk_2870CB550;
  v2[70] = PLSResourceKeyRCStreamJCAMLS2[0];
  v3[70] = &unk_2870CB568;
  v2[71] = PLSResourceKeyRCStreamJCAMLS2W[0];
  v3[71] = &unk_2870CB580;
  v2[72] = PLSResourceKeyRCStreamJCAMLS2WP[0];
  v3[72] = &unk_2870CB598;
  v2[73] = PLSResourceKeyRCStreamJCAMLS2B[0];
  v3[73] = &unk_2870CB5B0;
  v2[74] = PLSResourceKeyRCStreamJCAMLS2BW[0];
  v3[74] = &unk_2870CB5C8;
  v2[75] = PLSResourceKeyRCStreamJCAMLS2BWP[0];
  v3[75] = &unk_2870CB5E0;
  v2[76] = PLSResourceKeyRCStreamJCAMRS2[0];
  v3[76] = &unk_2870CB5F8;
  v2[77] = PLSResourceKeyRCStreamJCAMRS2W[0];
  v3[77] = &unk_2870CB610;
  v2[78] = PLSResourceKeyRCStreamJCAMRS2WP[0];
  v3[78] = &unk_2870CB628;
  v2[79] = PLSResourceKeyRCStreamJCAMRS2B[0];
  v3[79] = &unk_2870CB640;
  v2[80] = PLSResourceKeyRCStreamJCAMRS2BW[0];
  v3[80] = &unk_2870CB658;
  v2[81] = PLSResourceKeyRCStreamJCAMRS2BWP[0];
  v3[81] = &unk_2870CB670;
  v2[82] = PLSResourceKeyRCStreamECAMLS1[0];
  v3[82] = &unk_2870CB688;
  v2[83] = PLSResourceKeyRCStreamECAMLS2[0];
  v3[83] = &unk_2870CB6A0;
  v2[84] = PLSResourceKeyRCStreamNECAMLS2BU[0];
  v3[84] = &unk_2870CB6B8;
  v2[85] = PLSResourceKeyRCStreamNECAMLS2UC[0];
  v3[85] = &unk_2870CB6D0;
  v2[86] = PLSResourceKeyRCStreamNECAMLS2BUC[0];
  v3[86] = &unk_2870CB6E8;
  v2[87] = PLSResourceKeyRCStreamBECAMLS2UC[0];
  v3[87] = &unk_2870CB700;
  v2[88] = PLSResourceKeyRCStreamBECAMLS2BUC[0];
  v3[88] = &unk_2870CB718;
  v2[89] = PLSResourceKeyRCStreamECAMLS2U52[0];
  v3[89] = &unk_2870CB730;
  v2[90] = PLSResourceKeyRCStreamECAMLS2U52P[0];
  v3[90] = &unk_2870CB748;
  v2[91] = PLSResourceKeyRCStreamECAMLIID[0];
  v3[91] = &unk_2870CB760;
  v2[92] = PLSResourceKeyRCStreamNECAMLOID[0];
  v3[92] = &unk_2870CB778;
  v2[93] = PLSResourceKeyRCStreamNECAMROID[0];
  v3[93] = &unk_2870CB790;
  v2[94] = PLSResourceKeyRCStreamBECAMLOID[0];
  v3[94] = &unk_2870CB7A8;
  v2[95] = PLSResourceKeyRCStreamBECAMROID[0];
  v3[95] = &unk_2870CB7C0;
  v2[96] = PLSResourceKeyRCStreamECAMLOC[0];
  v3[96] = &unk_2870CB7D8;
  v2[97] = PLSResourceKeyRCStreamNECAMLBOC[0];
  v3[97] = &unk_2870CB7F0;
  v2[98] = PLSResourceKeyRCStreamECAMRS1[0];
  v3[98] = &unk_2870CB808;
  v2[99] = PLSResourceKeyRCStreamECAMRS2[0];
  v3[99] = &unk_2870CB820;
  v2[100] = PLSResourceKeyRCStreamNECAMRS2BU[0];
  v3[100] = &unk_2870CB838;
  v2[101] = PLSResourceKeyRCStreamNECAMRS2UC[0];
  v3[101] = &unk_2870CB850;
  v2[102] = PLSResourceKeyRCStreamNECAMRS2BUC[0];
  v3[102] = &unk_2870CB868;
  v2[103] = PLSResourceKeyRCStreamBECAMRS2UC[0];
  v3[103] = &unk_2870CB880;
  v2[104] = PLSResourceKeyRCStreamBECAMRS2BUC[0];
  v3[104] = &unk_2870CB898;
  v2[105] = PLSResourceKeyRCStreamECAMRS2U52[0];
  v3[105] = &unk_2870CB8B0;
  v2[106] = PLSResourceKeyRCStreamECAMRS2U52P[0];
  v3[106] = &unk_2870CB8C8;
  v2[107] = PLSResourceKeyRCStreamECAMRIID[0];
  v3[107] = &unk_2870CB8E0;
  v2[108] = PLSResourceKeyRCStreamECAMROC[0];
  v3[108] = &unk_2870CB8F8;
  v2[109] = PLSResourceKeyRCStreamNECAMRBOC[0];
  v3[109] = &unk_2870CB910;
  v2[110] = PLSResourceKeyRCStreamBECAMLS1[0];
  v3[110] = &unk_2870CB928;
  v2[111] = PLSResourceKeyRCStreamBECAMLS2[0];
  v3[111] = &unk_2870CB940;
  v2[112] = PLSResourceKeyRCStreamBECAMLS2BU[0];
  v3[112] = &unk_2870CB958;
  v2[113] = PLSResourceKeyRCStreamBECAMLS2U52[0];
  v3[113] = &unk_2870CB970;
  v2[114] = PLSResourceKeyRCStreamBECAMLS2U52P[0];
  v3[114] = &unk_2870CB988;
  v2[115] = PLSResourceKeyRCStreamBECAMLIID[0];
  v3[115] = &unk_2870CB9A0;
  v2[116] = PLSResourceKeyRCStreamBECAMRS1[0];
  v3[116] = &unk_2870CB9B8;
  v2[117] = PLSResourceKeyRCStreamBECAMRS2[0];
  v3[117] = &unk_2870CB9D0;
  v2[118] = PLSResourceKeyRCStreamBECAMRS2BU[0];
  v3[118] = &unk_2870CB9E8;
  v2[119] = PLSResourceKeyRCStreamBECAMRS2U52[0];
  v3[119] = &unk_2870CBA00;
  v2[120] = PLSResourceKeyRCStreamBECAMRS2U52P[0];
  v3[120] = &unk_2870CBA18;
  v2[121] = PLSResourceKeyRCStreamBECAMRIID[0];
  v3[121] = &unk_2870CBA30;
  v2[122] = PLSResourceKeyRCStreamBCAMLS1[0];
  v3[122] = &unk_2870CBA48;
  v2[123] = PLSResourceKeyRCStreamBCAMRS1[0];
  v3[123] = &unk_2870CBA60;
  v2[124] = PLSResourceKeyRCStreamPearlIIR[0];
  v3[124] = &unk_2870CBA78;
  v2[125] = PLSResourceKeyRCStreamPearlIRW[0];
  v3[125] = &unk_2870CBA90;
  v2[126] = PLSResourceKeyRCStreamPearlDepth[0];
  v3[126] = &unk_2870CBAA8;
  v2[127] = PLSResourceKeyRCStreamJasper[0];
  v3[127] = &unk_2870CBAC0;
  v2[128] = PLSResourceKeyRCStreamJasperRaw[0];
  v3[128] = &unk_2870CBAD8;
  v2[129] = PLSResourceKeyRCStreamJasperPointCloud[0];
  v3[129] = &unk_2870CBAF0;
  v2[130] = PLSResourceKeyRCStreamStereoPCE[0];
  v3[130] = &unk_2870CBB08;
  v2[131] = PLSResourceKeyRCStreamDCAMLDESGENRAW[0];
  v3[131] = &unk_2870CBB20;
  v2[132] = PLSResourceKeyRCStreamDCAMRDESGENRAW[0];
  v3[132] = &unk_2870CBB38;
  v2[133] = PLSResourceKeyRCStreamSCAMLDESGENRAW[0];
  v3[133] = &unk_2870CBB50;
  v2[134] = PLSResourceKeyRCStreamSCAMRDESGENRAW[0];
  v3[134] = &unk_2870CBB68;
  v2[135] = PLSResourceKeyRCStreamMCAMLDESGENRAW[0];
  v3[135] = &unk_2870CBB80;
  v2[136] = PLSResourceKeyRCStreamMCAMRDESGENRAW[0];
  v3[136] = &unk_2870CBB98;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:137];
  v1 = resourceIDForKey__keyToIDMap;
  resourceIDForKey__keyToIDMap = v0;
}

+ (uint64_t)getCameraDepthForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v4 = asprintf(a1, "No Entry in PSRCConstants for Key (%s)", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No Entry in PSRCConstants for Key (%s)", v8, v9, v10, v11, v23, v24);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSRCConstants *)v20 getReaderDepthForKey:v21];
}

+ (uint64_t)getReaderDepthForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v4 = asprintf(a1, "No Entry in PSRCConstants for Key (%s)", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No Entry in PSRCConstants for Key (%s)", v8, v9, v10, v11, v23, v24);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSRCConstants *)v20 getWriterDepthForKey:v21];
}

+ (void)getWriterDepthForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v4 = asprintf(a1, "No Entry in PSRCConstants for Key (%s)", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No Entry in PSRCConstants for Key (%s)", v8, v9, v10, v11, v20, v21);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  +[PSRCConstants resourceIDForKey:];
}

@end