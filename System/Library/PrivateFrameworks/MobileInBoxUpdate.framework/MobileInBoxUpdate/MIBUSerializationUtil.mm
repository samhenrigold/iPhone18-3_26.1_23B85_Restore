@interface MIBUSerializationUtil
+ (id)maxLengthForTag:(id)tag;
+ (id)tagLengthMapping;
+ (id)tagTypeMapping;
+ (id)typeForTag:(id)tag;
+ (id)typeLengthMapping;
@end

@implementation MIBUSerializationUtil

+ (id)typeLengthMapping
{
  if (typeLengthMapping_onceToken != -1)
  {
    +[MIBUSerializationUtil typeLengthMapping];
  }

  v3 = typeLengthMapping_typeLengthMapping;

  return v3;
}

void __42__MIBUSerializationUtil_typeLengthMapping__block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286AC74A0;
  v2[1] = &unk_286AC74D0;
  v3[0] = &unk_286AC74B8;
  v3[1] = &unk_286AC74B8;
  v2[2] = &unk_286AC74E8;
  v2[3] = &unk_286AC7500;
  v3[2] = &unk_286AC74B8;
  v3[3] = &unk_286AC7518;
  v2[4] = &unk_286AC7518;
  v3[4] = &unk_286AC74A0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = typeLengthMapping_typeLengthMapping;
  typeLengthMapping_typeLengthMapping = v0;
}

+ (id)tagTypeMapping
{
  if (tagTypeMapping_onceToken != -1)
  {
    +[MIBUSerializationUtil tagTypeMapping];
  }

  v3 = tagTypeMapping_tagTypeMapping;

  return v3;
}

void __39__MIBUSerializationUtil_tagTypeMapping__block_invoke()
{
  v3[84] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286AC74A0;
  v2[1] = &unk_286AC74D0;
  v3[0] = &unk_286AC7530;
  v3[1] = &unk_286AC74A0;
  v2[2] = &unk_286AC7500;
  v2[3] = &unk_286AC7518;
  v3[2] = &unk_286AC74A0;
  v3[3] = &unk_286AC74A0;
  v2[4] = &unk_286AC7530;
  v2[5] = &unk_286AC7548;
  v3[4] = &unk_286AC74A0;
  v3[5] = &unk_286AC7548;
  v2[6] = &unk_286AC74E8;
  v2[7] = &unk_286AC74B8;
  v3[6] = &unk_286AC7518;
  v3[7] = &unk_286AC7518;
  v2[8] = &unk_286AC7560;
  v2[9] = &unk_286AC7578;
  v3[8] = &unk_286AC7548;
  v3[9] = &unk_286AC74D0;
  v2[10] = &unk_286AC7590;
  v2[11] = &unk_286AC75A8;
  v3[10] = &unk_286AC74A0;
  v3[11] = &unk_286AC7530;
  v2[12] = &unk_286AC75C0;
  v2[13] = &unk_286AC75D8;
  v3[12] = &unk_286AC7530;
  v3[13] = &unk_286AC7500;
  v2[14] = &unk_286AC75F0;
  v2[15] = &unk_286AC7608;
  v3[14] = &unk_286AC7530;
  v3[15] = &unk_286AC74D0;
  v2[16] = &unk_286AC7620;
  v2[17] = &unk_286AC7638;
  v3[16] = &unk_286AC74D0;
  v3[17] = &unk_286AC7500;
  v2[18] = &unk_286AC7650;
  v2[19] = &unk_286AC7668;
  v3[18] = &unk_286AC74D0;
  v3[19] = &unk_286AC74D0;
  v2[20] = &unk_286AC7680;
  v2[21] = &unk_286AC7698;
  v3[20] = &unk_286AC7548;
  v3[21] = &unk_286AC7500;
  v2[22] = &unk_286AC76B0;
  v2[23] = &unk_286AC76C8;
  v3[22] = &unk_286AC74D0;
  v3[23] = &unk_286AC74D0;
  v2[24] = &unk_286AC76E0;
  v2[25] = &unk_286AC76F8;
  v3[24] = &unk_286AC7530;
  v3[25] = &unk_286AC7530;
  v2[26] = &unk_286AC7710;
  v2[27] = &unk_286AC7728;
  v3[26] = &unk_286AC7530;
  v3[27] = &unk_286AC7500;
  v2[28] = &unk_286AC7740;
  v2[29] = &unk_286AC7758;
  v3[28] = &unk_286AC74A0;
  v3[29] = &unk_286AC7530;
  v2[30] = &unk_286AC7770;
  v2[31] = &unk_286AC7788;
  v3[30] = &unk_286AC7530;
  v3[31] = &unk_286AC7518;
  v2[32] = &unk_286AC77A0;
  v2[33] = &unk_286AC77B8;
  v3[32] = &unk_286AC7548;
  v3[33] = &unk_286AC7548;
  v2[34] = &unk_286AC77D0;
  v2[35] = &unk_286AC77E8;
  v3[34] = &unk_286AC7548;
  v3[35] = &unk_286AC7548;
  v2[36] = &unk_286AC7800;
  v2[37] = &unk_286AC7818;
  v3[36] = &unk_286AC7548;
  v3[37] = &unk_286AC7548;
  v2[38] = &unk_286AC7830;
  v2[39] = &unk_286AC7848;
  v3[38] = &unk_286AC7548;
  v3[39] = &unk_286AC7548;
  v2[40] = &unk_286AC7860;
  v2[41] = &unk_286AC7878;
  v3[40] = &unk_286AC7518;
  v3[41] = &unk_286AC7548;
  v2[42] = &unk_286AC7890;
  v2[43] = &unk_286AC78A8;
  v3[42] = &unk_286AC7548;
  v3[43] = &unk_286AC74E8;
  v2[44] = &unk_286AC78C0;
  v2[45] = &unk_286AC78D8;
  v3[44] = &unk_286AC7530;
  v3[45] = &unk_286AC74E8;
  v2[46] = &unk_286AC78F0;
  v2[47] = &unk_286AC7908;
  v3[46] = &unk_286AC74E8;
  v3[47] = &unk_286AC74E8;
  v2[48] = &unk_286AC7920;
  v2[49] = &unk_286AC7938;
  v3[48] = &unk_286AC74A0;
  v3[49] = &unk_286AC74A0;
  v2[50] = &unk_286AC7950;
  v2[51] = &unk_286AC7968;
  v3[50] = &unk_286AC74A0;
  v3[51] = &unk_286AC74E8;
  v2[52] = &unk_286AC7980;
  v2[53] = &unk_286AC7998;
  v3[52] = &unk_286AC74E8;
  v3[53] = &unk_286AC7530;
  v2[54] = &unk_286AC79B0;
  v2[55] = &unk_286AC79C8;
  v3[54] = &unk_286AC7530;
  v3[55] = &unk_286AC7530;
  v2[56] = &unk_286AC79E0;
  v2[57] = &unk_286AC79F8;
  v3[56] = &unk_286AC7530;
  v3[57] = &unk_286AC74A0;
  v2[58] = &unk_286AC7A10;
  v2[59] = &unk_286AC7A28;
  v3[58] = &unk_286AC7518;
  v3[59] = &unk_286AC74D0;
  v2[60] = &unk_286AC7A40;
  v2[61] = &unk_286AC7A58;
  v3[60] = &unk_286AC7530;
  v3[61] = &unk_286AC7530;
  v2[62] = &unk_286AC7A70;
  v2[63] = &unk_286AC7A88;
  v3[62] = &unk_286AC7530;
  v3[63] = &unk_286AC7530;
  v2[64] = &unk_286AC7AA0;
  v3[64] = &unk_286AC7530;
  v2[65] = &unk_286AC7AB8;
  v3[65] = &unk_286AC74E8;
  v2[66] = &unk_286AC7AD0;
  v3[66] = &unk_286AC74E8;
  v2[67] = &unk_286AC7AE8;
  v3[67] = &unk_286AC74A0;
  v2[68] = &unk_286AC7B00;
  v3[68] = &unk_286AC7530;
  v2[69] = &unk_286AC7B18;
  v3[69] = &unk_286AC7530;
  v2[70] = &unk_286AC7B30;
  v3[70] = &unk_286AC74D0;
  v2[71] = &unk_286AC7B48;
  v3[71] = &unk_286AC7530;
  v2[72] = &unk_286AC7B60;
  v3[72] = &unk_286AC74E8;
  v2[73] = &unk_286AC7B78;
  v3[73] = &unk_286AC74E8;
  v2[74] = &unk_286AC7B90;
  v3[74] = &unk_286AC74E8;
  v2[75] = &unk_286AC7BA8;
  v3[75] = &unk_286AC7530;
  v2[76] = &unk_286AC7BC0;
  v3[76] = &unk_286AC74E8;
  v2[77] = &unk_286AC7BD8;
  v3[77] = &unk_286AC7518;
  v2[78] = &unk_286AC7BF0;
  v3[78] = &unk_286AC7548;
  v2[79] = &unk_286AC7C08;
  v3[79] = &unk_286AC7548;
  v2[80] = &unk_286AC7C20;
  v3[80] = &unk_286AC7548;
  v2[81] = &unk_286AC7C38;
  v3[81] = &unk_286AC74E8;
  v2[82] = &unk_286AC7C50;
  v3[82] = &unk_286AC7548;
  v2[83] = &unk_286AC7C68;
  v3[83] = &unk_286AC7548;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:84];
  v1 = tagTypeMapping_tagTypeMapping;
  tagTypeMapping_tagTypeMapping = v0;
}

+ (id)tagLengthMapping
{
  if (tagLengthMapping_onceToken != -1)
  {
    +[MIBUSerializationUtil tagLengthMapping];
  }

  v3 = tagLengthMapping_tagLengthMapping;

  return v3;
}

void __41__MIBUSerializationUtil_tagLengthMapping__block_invoke()
{
  v3[39] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286AC74A0;
  v2[1] = &unk_286AC7548;
  v3[0] = &unk_286AC75A8;
  v3[1] = &unk_286AC76F8;
  v2[2] = &unk_286AC7560;
  v2[3] = &unk_286AC75A8;
  v3[2] = &unk_286AC7C80;
  v3[3] = &unk_286AC7C98;
  v2[4] = &unk_286AC75C0;
  v2[5] = &unk_286AC75F0;
  v3[4] = &unk_286AC7CB0;
  v3[5] = &unk_286AC7608;
  v2[6] = &unk_286AC7680;
  v2[7] = &unk_286AC76E0;
  v3[6] = &unk_286AC7668;
  v3[7] = &unk_286AC7608;
  v2[8] = &unk_286AC76F8;
  v2[9] = &unk_286AC7710;
  v3[8] = &unk_286AC7608;
  v3[9] = &unk_286AC7608;
  v2[10] = &unk_286AC7758;
  v2[11] = &unk_286AC7770;
  v3[10] = &unk_286AC7C98;
  v3[11] = &unk_286AC7CB0;
  v2[12] = &unk_286AC77A0;
  v2[13] = &unk_286AC77B8;
  v3[12] = &unk_286AC74B8;
  v3[13] = &unk_286AC74B8;
  v2[14] = &unk_286AC77D0;
  v2[15] = &unk_286AC77E8;
  v3[14] = &unk_286AC74B8;
  v3[15] = &unk_286AC74B8;
  v2[16] = &unk_286AC7800;
  v2[17] = &unk_286AC7818;
  v3[16] = &unk_286AC74B8;
  v3[17] = &unk_286AC74B8;
  v2[18] = &unk_286AC7830;
  v2[19] = &unk_286AC7848;
  v3[18] = &unk_286AC74B8;
  v3[19] = &unk_286AC74B8;
  v2[20] = &unk_286AC7878;
  v2[21] = &unk_286AC7890;
  v3[20] = &unk_286AC74B8;
  v3[21] = &unk_286AC74B8;
  v2[22] = &unk_286AC78C0;
  v2[23] = &unk_286AC7998;
  v3[22] = &unk_286AC78C0;
  v3[23] = &unk_286AC78C0;
  v2[24] = &unk_286AC79B0;
  v2[25] = &unk_286AC79C8;
  v3[24] = &unk_286AC76F8;
  v3[25] = &unk_286AC78C0;
  v2[26] = &unk_286AC79E0;
  v2[27] = &unk_286AC7A40;
  v3[26] = &unk_286AC78C0;
  v3[27] = &unk_286AC74B8;
  v2[28] = &unk_286AC7A58;
  v2[29] = &unk_286AC7A70;
  v3[28] = &unk_286AC79C8;
  v3[29] = &unk_286AC74B8;
  v2[30] = &unk_286AC7A88;
  v2[31] = &unk_286AC7AA0;
  v3[30] = &unk_286AC74B8;
  v3[31] = &unk_286AC76F8;
  v2[32] = &unk_286AC7B00;
  v2[33] = &unk_286AC7B18;
  v3[32] = &unk_286AC78C0;
  v3[33] = &unk_286AC74B8;
  v2[34] = &unk_286AC7B48;
  v2[35] = &unk_286AC7BA8;
  v3[34] = &unk_286AC76F8;
  v3[35] = &unk_286AC78C0;
  v2[36] = &unk_286AC7BF0;
  v2[37] = &unk_286AC7C08;
  v3[36] = &unk_286AC7CC8;
  v3[37] = &unk_286AC7CC8;
  v2[38] = &unk_286AC7C20;
  v3[38] = &unk_286AC7C80;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:39];
  v1 = tagLengthMapping_tagLengthMapping;
  tagLengthMapping_tagLengthMapping = v0;
}

+ (id)typeForTag:(id)tag
{
  tagCopy = tag;
  tagTypeMapping = [self tagTypeMapping];
  v6 = [tagTypeMapping objectForKey:tagCopy];

  return v6;
}

+ (id)maxLengthForTag:(id)tag
{
  tagCopy = tag;
  tagTypeMapping = [self tagTypeMapping];
  v6 = [tagTypeMapping objectForKey:tagCopy];

  if (v6)
  {
    typeLengthMapping = [self typeLengthMapping];
    v8 = [typeLengthMapping objectForKey:v6];

    if (!v8)
    {
      tagLengthMapping = [self tagLengthMapping];
      v8 = [tagLengthMapping objectForKey:tagCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end