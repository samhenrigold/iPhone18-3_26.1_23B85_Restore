@interface RKNLEventTokenizer
+ (BOOL)isSpecialToken:(id)token;
+ (void)initialize;
- (BOOL)hasEmoticon:(id)emoticon;
- (RKNLEventTokenizer)initWithLanguageID:(id)d;
- (id)buildTokenSquence:(id)squence withOffset:(unint64_t)offset;
- (id)getTokens:(id)tokens;
- (id)processForEmoticons:(id)emoticons;
- (id)processForEmoticonsAndEmojis:(id)emojis;
- (id)processForHyphenation:(id)hyphenation;
- (id)tokenizeWithDataDetectors:(id)detectors;
- (id)transform:(id)transform;
- (void)dealloc;
@end

@implementation RKNLEventTokenizer

+ (void)initialize
{
  v9[214] = *MEMORY[0x277D85DE8];
  if (!happyEmojiSet)
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"🙆‍♀️", @"🙆‍♂️", @"😀", @"😁", @"😂", @"😃", @"😄", @"😅", @"😆", @"😇", @"😉", @"😊", @"😋", @"😌", @"😍", @"😎", @"😏", @"🤑", @"🤓", @"😗", @"😘", @"🤗", @"😙", @"😚", @"😛", @"😜", @"😝", @"😬", @"😸", @"😹", @"😺", @"😻", @"😽", @"🙂", @"🙃", @"🙆", @"☺️", @"✊", 0}];
    v3 = happyEmojiSet;
    happyEmojiSet = v2;
  }

  if (!sadEmojiSet)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"🙍‍♀️", @"🙍‍♂️", @"☹️", @"🙎‍♀️", @"🙎‍♂️", @"😐", @"😑", @"😒", @"😓", @"🤒", @"😔", @"😕", @"😖", @"🤕", @"😞", @"😟", @"😠", @"😡", @"😢", @"😣", @"😤", @"😥", @"😦", @"😧", @"😨", @"😩", @"😪", @"😫", @"😭", @"😮", @"😰", @"😱", @"😲", @"😳", @"😵", @"😶", @"😿", @"🙀", @"🙁", @"🙄", @"🙍", @"🙎", @"🙍‍♂️", @"☹️", @"😐", @"😑", @"🤒", @"😔", @"😕", @"🤕", @"😞", @"😟", @"😢", @"😦", @"😧", @"😨", @"😩", @"😫", @"😭", 0}];
    v5 = sadEmojiSet;
    sadEmojiSet = v4;
  }

  if (!specialCharMapping)
  {
    v8[0] = @"#";
    v8[1] = @"$";
    v9[0] = @"#";
    v9[1] = @"$";
    v8[2] = @"%";
    v8[3] = @"&";
    v9[2] = @"%";
    v9[3] = @"&";
    v8[4] = @"'";
    v8[5] = @",";
    v9[4] = @"'";
    v9[5] = @",";
    v8[6] = @"、";
    v8[7] = @"-";
    v9[6] = @",";
    v9[7] = @"-";
    v8[8] = @"‒";
    v8[9] = @"–";
    v9[8] = kEMDash;
    v9[9] = kEMDash;
    v8[10] = @"‐";
    v8[11] = @"‑";
    v9[10] = @"-";
    v9[11] = @"-";
    v8[12] = @"—";
    v8[13] = @"―";
    v9[12] = kEMDash;
    v9[13] = kEMDash;
    v8[14] = @"­";
    v8[15] = @".";
    v9[14] = @"-";
    v9[15] = @".";
    v8[16] = @"/";
    v8[17] = @"0";
    v9[16] = @"/";
    v9[17] = @"0";
    v8[18] = @"1";
    v8[19] = @"2";
    v9[18] = @"1";
    v9[19] = @"2";
    v8[20] = @"3";
    v8[21] = @"4";
    v9[20] = @"3";
    v9[21] = @"4";
    v8[22] = @"5";
    v8[23] = @"6";
    v9[22] = @"5";
    v9[23] = @"6";
    v8[24] = @"7";
    v8[25] = @"8";
    v9[24] = @"7";
    v9[25] = @"8";
    v8[26] = @"9";
    v8[27] = @":";
    v9[26] = @"9";
    v9[27] = @":";
    v8[28] = @"<";
    v8[29] = @">";
    v9[28] = @"<";
    v9[29] = @">";
    v8[30] = @"?";
    v8[31] = @"@";
    v9[30] = @"?";
    v9[31] = @"@";
    v8[32] = @"A";
    v8[33] = @"B";
    v9[32] = @"A";
    v9[33] = @"B";
    v8[34] = @"C";
    v8[35] = @"D";
    v9[34] = @"C";
    v9[35] = @"D";
    v8[36] = @"E";
    v8[37] = @"F";
    v9[36] = @"E";
    v9[37] = @"F";
    v8[38] = @"G";
    v8[39] = @"H";
    v9[38] = @"G";
    v9[39] = @"H";
    v8[40] = @"I";
    v8[41] = @"J";
    v9[40] = @"I";
    v9[41] = @"J";
    v8[42] = @"K";
    v8[43] = @"L";
    v9[42] = @"K";
    v9[43] = @"L";
    v8[44] = @"M";
    v8[45] = @"N";
    v9[44] = @"M";
    v9[45] = @"N";
    v8[46] = @"O";
    v8[47] = @"P";
    v9[46] = @"O";
    v9[47] = @"P";
    v8[48] = @"Q";
    v8[49] = @"R";
    v9[48] = @"Q";
    v9[49] = @"R";
    v8[50] = @"S";
    v8[51] = @"T";
    v9[50] = @"S";
    v9[51] = @"T";
    v8[52] = @"U";
    v8[53] = @"V";
    v9[52] = @"U";
    v9[53] = @"V";
    v8[54] = @"W";
    v8[55] = @"X";
    v9[54] = @"W";
    v9[55] = @"X";
    v8[56] = @"Y";
    v8[57] = @"Z";
    v9[56] = @"Y";
    v9[57] = @"Z";
    v8[58] = @"\";
    v8[59] = @"_";
    v9[58] = @"\";
    v9[59] = @"_";
    v8[60] = @"a";
    v8[61] = @"b";
    v9[60] = @"a";
    v9[61] = @"b";
    v8[62] = @"c";
    v8[63] = @"d";
    v9[62] = @"c";
    v9[63] = @"d";
    v8[64] = @"e";
    v9[64] = @"e";
    v8[65] = @"f";
    v9[65] = @"f";
    v8[66] = @"g";
    v9[66] = @"g";
    v8[67] = @"h";
    v9[67] = @"h";
    v8[68] = @"i";
    v9[68] = @"i";
    v8[69] = @"j";
    v9[69] = @"j";
    v8[70] = @"k";
    v9[70] = @"k";
    v8[71] = @"l";
    v9[71] = @"l";
    v8[72] = @"m";
    v9[72] = @"m";
    v8[73] = @"n";
    v9[73] = @"n";
    v8[74] = @"o";
    v9[74] = @"o";
    v8[75] = @"p";
    v9[75] = @"p";
    v8[76] = @"q";
    v9[76] = @"q";
    v8[77] = @"r";
    v9[77] = @"r";
    v8[78] = @"s";
    v9[78] = @"s";
    v8[79] = @"t";
    v9[79] = @"t";
    v8[80] = @"u";
    v9[80] = @"u";
    v8[81] = @"v";
    v9[81] = @"v";
    v8[82] = @"w";
    v9[82] = @"w";
    v8[83] = @"x";
    v9[83] = @"x";
    v8[84] = @"y";
    v9[84] = @"y";
    v8[85] = @"z";
    v9[85] = @"z";
    v8[86] = @"¢";
    v9[86] = @"¢";
    v8[87] = @"£";
    v9[87] = @"£";
    v8[88] = @"¥";
    v9[88] = @"¥";
    v8[89] = @"§";
    v9[89] = @"§";
    v8[90] = @"°";
    v9[90] = @"°";
    v8[91] = @"À";
    v9[91] = @"À";
    v8[92] = @"Á";
    v9[92] = @"Á";
    v8[93] = @"Â";
    v9[93] = @"Â";
    v8[94] = @"Ã";
    v9[94] = @"Ã";
    v8[95] = @"Ä";
    v9[95] = @"Ä";
    v8[96] = @"Å";
    v9[96] = @"Å";
    v8[97] = @"Ç";
    v9[97] = @"Ç";
    v8[98] = @"È";
    v9[98] = @"È";
    v8[99] = @"É";
    v9[99] = @"É";
    v8[100] = @"Ê";
    v9[100] = @"Ê";
    v8[101] = @"Ë";
    v9[101] = @"Ë";
    v8[102] = @"Ì";
    v9[102] = @"Ì";
    v8[103] = @"Í";
    v9[103] = @"Í";
    v8[104] = @"Î";
    v9[104] = @"Î";
    v8[105] = @"Ï";
    v9[105] = @"Ï";
    v8[106] = @"Ñ";
    v9[106] = @"Ñ";
    v8[107] = @"Ò";
    v9[107] = @"Ò";
    v8[108] = @"Ó";
    v9[108] = @"Ó";
    v8[109] = @"Ô";
    v9[109] = @"Ô";
    v8[110] = @"Õ";
    v9[110] = @"Õ";
    v8[111] = @"Ö";
    v9[111] = @"Ö";
    v8[112] = @"Ø";
    v9[112] = @"Ø";
    v8[113] = @"Ù";
    v9[113] = @"Ù";
    v8[114] = @"Ú";
    v9[114] = @"Ú";
    v8[115] = @"Ü";
    v9[115] = @"Ü";
    v8[116] = @"ß";
    v9[116] = @"ß";
    v8[117] = @"à";
    v9[117] = @"à";
    v8[118] = @"á";
    v9[118] = @"á";
    v8[119] = @"â";
    v9[119] = @"â";
    v8[120] = @"ã";
    v9[120] = @"ã";
    v8[121] = @"ä";
    v9[121] = @"ä";
    v8[122] = @"å";
    v9[122] = @"å";
    v8[123] = @"æ";
    v9[123] = @"æ";
    v8[124] = @"ç";
    v9[124] = @"ç";
    v8[125] = @"è";
    v9[125] = @"è";
    v8[126] = @"é";
    v9[126] = @"é";
    v8[127] = @"ê";
    v9[127] = @"ê";
    v8[128] = @"ë";
    v9[128] = @"ë";
    v8[129] = @"ì";
    v9[129] = @"ì";
    v8[130] = @"í";
    v9[130] = @"í";
    v8[131] = @"î";
    v9[131] = @"î";
    v8[132] = @"ï";
    v9[132] = @"ï";
    v8[133] = @"ð";
    v9[133] = @"ð";
    v8[134] = @"ñ";
    v9[134] = @"ñ";
    v8[135] = @"ò";
    v9[135] = @"ò";
    v8[136] = @"ó";
    v9[136] = @"ó";
    v8[137] = @"ô";
    v9[137] = @"ô";
    v8[138] = @"õ";
    v9[138] = @"õ";
    v8[139] = @"ö";
    v9[139] = @"ö";
    v8[140] = @"ø";
    v9[140] = @"ø";
    v8[141] = @"ù";
    v9[141] = @"ù";
    v8[142] = @"ú";
    v9[142] = @"ú";
    v8[143] = @"û";
    v9[143] = @"û";
    v8[144] = @"ü";
    v9[144] = @"ü";
    v8[145] = @"\xFF";
    v9[145] = @"\xFF";
    v8[146] = @"∼";
    v9[146] = @"~";
    v8[147] = @"’";
    v9[147] = @"'";
    v8[148] = @"ʼ";
    v9[148] = @"'";
    v8[149] = @"Ⅱ";
    v9[149] = @"II";
    v8[150] = @"Ⅲ";
    v9[150] = @"III";
    v8[151] = @"ƒ";
    v9[151] = @"f";
    v8[152] = @"ﬁ";
    v9[152] = @"fi";
    v8[153] = @"ı";
    v9[153] = @"i";
    v8[154] = @"ẞ";
    v9[154] = @"s";
    v8[155] = @"ſ";
    v9[155] = @"s";
    v8[156] = @"Ć";
    v9[156] = @"Ć";
    v8[157] = @"Ė";
    v9[157] = @"Ė";
    v8[158] = @"ė";
    v9[158] = @"ė";
    v8[159] = @"ě";
    v9[159] = @"ě";
    v8[160] = @"Ķ";
    v9[160] = @"Ķ";
    v8[161] = @"ń";
    v9[161] = @"ń";
    v8[162] = @"ş";
    v9[162] = @"ş";
    v8[163] = @"ż";
    v9[163] = @"ż";
    v8[164] = @"ą";
    v9[164] = @"ą";
    v8[165] = @"ž";
    v9[165] = @"ž";
    v8[166] = @"ś";
    v9[166] = @"ś";
    v8[167] = @"ā";
    v9[167] = @"ā";
    v8[168] = @"ę";
    v9[168] = @"ę";
    v8[169] = @"ğ";
    v9[169] = @"ğ";
    v8[170] = @"ř";
    v9[170] = @"ř";
    v8[171] = @"Š";
    v9[171] = @"Š";
    v8[172] = @"Ż";
    v9[172] = @"Ż";
    v8[173] = @"€";
    v9[173] = @"€";
    v8[174] = @"Ÿ";
    v9[174] = @"Ÿ";
    v8[175] = @"ć";
    v9[175] = @"ć";
    v8[176] = @"ī";
    v9[176] = @"ī";
    v8[177] = @"ň";
    v9[177] = @"ň";
    v8[178] = @"ů";
    v9[178] = @"ů";
    v8[179] = @"Œ";
    v9[179] = @"Œ";
    v8[180] = @"š";
    v9[180] = @"š";
    v8[181] = @"č";
    v9[181] = @"č";
    v8[182] = @"ō";
    v9[182] = @"ō";
    v8[183] = @"ņ";
    v9[183] = @"ņ";
    v8[184] = @"œ";
    v9[184] = @"œ";
    v8[185] = @"😁";
    v9[185] = @"😁";
    v8[186] = @"😂";
    v9[186] = @"😂";
    v8[187] = @"😉";
    v9[187] = @"😉";
    v8[188] = @"😊";
    v9[188] = @"😊";
    v8[189] = @"👍";
    v9[189] = @"👍";
    v8[190] = @"😍";
    v9[190] = @"😍";
    v8[191] = @"☺";
    v9[191] = @"😊";
    v8[192] = @"😄";
    v9[192] = @"😄";
    v8[193] = @"😘";
    v9[193] = @"😘";
    v8[194] = @"😱";
    v9[194] = @"😱";
    v8[195] = @"👌";
    v9[195] = @"👌";
    v8[196] = @"😎";
    v9[196] = @"😎";
    v8[197] = @"😡";
    v9[197] = @"😡";
    v8[198] = @"❤";
    v9[198] = @"❤";
    v8[199] = @"😬";
    v9[199] = @"😬";
    v8[200] = @"😃";
    v9[200] = @"😃";
    v8[201] = @"😏";
    v9[201] = @"😏";
    v8[202] = @"😝";
    v9[202] = @"😝";
    v8[203] = @"😩";
    v9[203] = @"😩";
    v8[204] = @"😳";
    v9[204] = @"😳";
    v8[205] = @"🍸";
    v9[205] = @"🍸";
    v8[206] = @"✨";
    v9[206] = @"✨";
    v8[207] = @"😜";
    v9[207] = @"😜";
    v8[208] = @"😀";
    v9[208] = @"😀";
    v8[209] = @"🍷";
    v9[209] = @"🍷";
    v8[210] = @"😭";
    v9[210] = @"😭";
    v8[211] = @"☹";
    v9[211] = @"😭";
    v8[212] = @"👎";
    v9[212] = @"👎";
    v8[213] = @"à";
    v9[213] = @"à";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:214];
    v7 = specialCharMapping;
    specialCharMapping = v6;
  }

  if (!emoticonCategoryDict)
  {
    emoticonCategoryDict = &unk_2874EA760;
  }
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = RKNLEventTokenizer;
  [(RKNLEventTokenizer *)&v4 dealloc];
}

- (RKNLEventTokenizer)initWithLanguageID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = RKNLEventTokenizer;
  v6 = [(RKNLEventTokenizer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_languageID, d);
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v7->_languageID);
    v9 = CFLocaleCreate(0, CanonicalLocaleIdentifierFromString);
    v10 = *MEMORY[0x277CBECE8];
    v13.length = CFStringGetLength(@"init");
    v13.location = 0;
    v7->_tokenizer = CFStringTokenizerCreate(v10, @"init", v13, 4uLL, v9);
    CFRelease(CanonicalLocaleIdentifierFromString);
    CFRelease(v9);
  }

  return v7;
}

+ (BOOL)isSpecialToken:(id)token
{
  tokenCopy = token;
  if ([tokenCopy isEqualToString:@"URL"] & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"PHONE") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"ADDRESS") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"DATE_TIME") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"CURRENCY") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"DIGIT_STRG") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"EMOTICON_HAPPY") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"EMOTICON_PERTURBED") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"EMOTICONHAPPY") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"EMOTICONPERTURBED") & 1) != 0 || (objc_msgSend(tokenCopy, "isEqualToString:", @"DATETIME"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [tokenCopy isEqualToString:@"DIGITSTRG"];
  }

  return v4;
}

- (id)tokenizeWithDataDetectors:(id)detectors
{
  detectorsCopy = detectors;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RKNLEventTokenizer_tokenizeWithDataDetectors___block_invoke;
  block[3] = &unk_279B10020;
  block[4] = v36;
  if (tokenizeWithDataDetectors__onceToken != -1)
  {
    dispatch_once(&tokenizeWithDataDetectors__onceToken, block);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (tokenizeWithDataDetectors__scanner && DDScannerScanString() && (v5 = DDScannerCopyResultsWithOptions(), (v6 = v5) != 0))
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = 0;
      v9 = 0;
      cf2 = *MEMORY[0x277D040A8];
      v31 = *MEMORY[0x277D040B0];
      v30 = *MEMORY[0x277D04198];
      v29 = *MEMORY[0x277D040A0];
      v28 = *MEMORY[0x277D04190];
      v32 = *MEMORY[0x277D041A8];
      while (1)
      {
        CFArrayGetValueAtIndex(v6, v9);
        Category = DDResultGetCategory();
        if (Category <= 2)
        {
          break;
        }

        if (Category == 3)
        {
          v11 = @"ADDRESS";
          goto LABEL_24;
        }

        if (Category != 4)
        {
          goto LABEL_19;
        }

        Type = DDResultGetType();
        if (CFEqual(Type, cf2) || CFEqual(Type, v31) || CFEqual(Type, v30) || CFEqual(Type, v29))
        {
LABEL_21:
          v11 = @"DATETIME";
          goto LABEL_24;
        }

        v13 = CFEqual(Type, v28);
LABEL_20:
        if (v13)
        {
          goto LABEL_21;
        }

LABEL_27:
        if (Count == ++v9)
        {
          goto LABEL_31;
        }
      }

      if (Category == 1)
      {
        v11 = @"URL";
        goto LABEL_24;
      }

      if (Category == 2)
      {
        v11 = @"PHONE";
LABEL_24:
        Range = DDResultGetRange();
        v16 = Range;
        v18 = v17;
        if (Range > v8)
        {
          v34 = v11;
          v19 = v6;
          v20 = Count;
          v21 = detectorsCopy;
          v22 = [detectorsCopy substringWithRange:{v8, Range - v8}];
          v23 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v22, v8, [v22 length]);
          [v4 addObject:v23];

          detectorsCopy = v21;
          Count = v20;
          v6 = v19;
          v11 = v34;
        }

        v24 = [[RKNLEventToken alloc] initWithString:v11 location:v16 length:v18];
        [v4 addObject:v24];

        v8 = v16 + v18;
        goto LABEL_27;
      }

LABEL_19:
      v14 = DDResultGetType();
      v13 = CFEqual(v14, v32);
      goto LABEL_20;
    }

    v8 = 0;
LABEL_31:
    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  if (v8 < [detectorsCopy length])
  {
    v25 = [detectorsCopy substringWithRange:{v8, objc_msgSend(detectorsCopy, "length") - v8}];
    v26 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v25, v8, [detectorsCopy length] - v8);
    [v4 addObject:v26];
  }

  _Block_object_dispose(v36, 8);

  return v4;
}

uint64_t __48__RKNLEventTokenizer_tokenizeWithDataDetectors___block_invoke(uint64_t a1)
{
  result = DDScannerCreateWithType();
  tokenizeWithDataDetectors__scanner = result;
  return result;
}

- (BOOL)hasEmoticon:(id)emoticon
{
  v14 = *MEMORY[0x277D85DE8];
  emoticonCopy = emoticon;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = emoticonCategoryDict;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([emoticonCopy containsString:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)processForEmoticonsAndEmojis:(id)emojis
{
  v59 = *MEMORY[0x277D85DE8];
  emojisCopy = emojis;
  v4 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = emojisCopy;
  v31 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v31)
  {
    v5 = *v54;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v54 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v53 + 1) + 8 * i);
        string = [v7 string];
        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        location = [v7 location];
        if (CEMStringContainsEmoji())
        {
          CFStringGetLength(string);
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 0;
          v37 = MEMORY[0x277D85DD0];
          v38 = 3221225472;
          v39 = __51__RKNLEventTokenizer_processForEmoticonsAndEmojis___block_invoke;
          v40 = &unk_279B10048;
          v43 = &v45;
          v9 = string;
          v41 = v9;
          v10 = v4;
          v42 = v10;
          v44 = &v49;
          CEMEnumerateEmojiTokensInStringWithBlock();
          v11 = v46[3];
          if (v11 < [(__CFString *)v9 length])
          {
            v12 = v46[3];
            v13 = [(__CFString *)v9 length];
            v14 = [(__CFString *)v9 substringWithRange:v12, v13 - v46[3]];
            v15 = [RKNLEventToken alloc];
            v16 = v50[3];
            v17 = v46[3];
            v18 = [(__CFString *)v9 length];
            v19 = [(RKNLEventToken *)v15 initWithString:v14 location:v17 + v16 length:v18 - v46[3]];
            [v10 addObject:v19];
          }

          _Block_object_dispose(&v45, 8);
        }

        else
        {
          [v4 addObject:v7];
        }

        _Block_object_dispose(&v49, 8);
      }

      v31 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v31);
  }

  v20 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v4;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v57 count:16];
  if (v22)
  {
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        string2 = [v25 string];
        v27 = [(RKNLEventTokenizer *)self hasEmoticon:string2];

        if (v27)
        {
          v28 = [(RKNLEventTokenizer *)self processForEmoticons:v25];
          [v20 addObjectsFromArray:v28];
        }

        else
        {
          [v20 addObject:v25];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v33 objects:v57 count:16];
    }

    while (v22);
  }

  return v20;
}

void __51__RKNLEventTokenizer_processForEmoticonsAndEmojis___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = CEMEmojiTokenGetString();
  v7 = [specialCharMapping objectForKeyedSubscript:v14];

  v8 = v14;
  if (!v7)
  {
    if ([happyEmojiSet containsObject:?])
    {
      v8 = @"EMOTICONHAPPY";
    }

    else if ([sadEmojiSet containsObject:v14])
    {
      v8 = @"EMOTICONPERTURBED";
    }

    else
    {
      v8 = kEmojiPlaceholder;
    }
  }

  if (a3 > *(*(*(a1 + 48) + 8) + 24))
  {
    v9 = [*(a1 + 32) substringWithRange:?];
    v10 = *(a1 + 40);
    v11 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v9, *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 56) + 8) + 24), [v9 length]);
    [v10 addObject:v11];
  }

  v12 = *(a1 + 40);
  v13 = [[RKNLEventToken alloc] initWithString:v8 location:*(*(*(a1 + 56) + 8) + 24) + a3 length:a4];
  [v12 addObject:v13];

  *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
}

- (id)transform:(id)transform
{
  v47 = *MEMORY[0x277D85DE8];
  transformCopy = transform;
  selfCopy = self;
  v39 = [(NSString *)self->_languageID isEqualToString:@"ja"]|| [(NSString *)self->_languageID isEqualToString:@"zh-Hans"]|| [(NSString *)self->_languageID isEqualToString:@"zh-Hant"];
  v33 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = transformCopy;
  v35 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v35)
  {
    v34 = *v43;
    do
    {
      v5 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v5;
        v6 = *(*(&v42 + 1) + 8 * v5);
        string = [v6 string];
        v36 = v6;
        location = [v6 location];
        v40 = objc_alloc_init(MEMORY[0x277CCAB68]);
        Length = CFStringGetLength(string);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        if (Length >= 1)
        {
          v10 = 0;
          v41 = 0;
          v11 = &stru_2874A9C90;
          while (1)
          {
            RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(string, v10);
            v12 = CFStringCreateWithSubstring(0, string, RangeOfComposedCharactersAtIndex);
            v13 = [specialCharMapping objectForKey:v12];
            v14 = v13;
            if (v13)
            {
              v15 = v13;
            }

            else
            {
              v16 = v12;
              if (v39)
              {
                goto LABEL_18;
              }

              v16 = v12;
              if (([(__CFString *)v12 isEqualToString:@" "]& 1) != 0)
              {
                goto LABEL_18;
              }

              v15 = @" ";
              v16 = v12;
              if ([kAllowedPunctuations containsString:v12])
              {
                goto LABEL_18;
              }
            }

            v16 = v15;
LABEL_18:
            v17 = [v9 objectForKey:v16];
            if (v17)
            {
              v18 = v17;
              v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue") + 1}];

              [v9 setObject:v19 forKey:v16];
            }

            else
            {
              v20 = [MEMORY[0x277CCABB0] numberWithInt:1];
              [v9 setObject:v20 forKey:v16];

              v19 = 0;
            }

            if ([(__CFString *)v11 isEqualToString:v16])
            {
              if (CEMStringContainsEmoji() || (-[__CFString isEqualToString:](v16, "isEqualToString:", @"?") & 1) != 0 || (-[__CFString isEqualToString:](v16, "isEqualToString:", @":") & 1) != 0 || (v21 = [v19 integerValue], v21 >= kMaxCharRepetitionAllowed))
              {
                integerValue = [v19 integerValue];
                v23 = v41;
                if (integerValue >= kMaxCharRepetitionAllowed)
                {
                  v23 = v41 + 1;
                }

                v41 = v23;
                goto LABEL_31;
              }
            }

            else
            {
              [v9 removeAllObjects];
            }

            [v40 appendString:v16];
LABEL_31:
            Length -= CFStringGetLength(v12);
            v10 += CFStringGetLength(v12);
            v24 = v16;

            CFRelease(v12);
            v11 = v24;
            if (Length <= 0)
            {
              goto LABEL_34;
            }
          }
        }

        v41 = 0;
        v24 = &stru_2874A9C90;
LABEL_34:
        if ([v40 length])
        {
          v25 = [RKNLEventTokenizer isSpecialToken:v40];
          v26 = [RKNLEventToken alloc];
          if (v25)
          {
            v27 = [v36 length];
          }

          else
          {
            v27 = [v40 length] + v41;
          }

          v28 = [(RKNLEventToken *)v26 initWithString:v40 location:location length:v27];
          [v33 addObject:v28];
        }

        v5 = v38 + 1;
      }

      while (v38 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v35);
  }

  v29 = [(RKNLEventTokenizer *)selfCopy processForHyphenation:v33];

  return v29;
}

- (id)processForEmoticons:(id)emoticons
{
  emoticonsCopy = emoticons;
  v37 = objc_opt_new();
  v38 = emoticonsCopy;
  string = [emoticonsCopy string];
  v5 = [&stru_2874A9C90 stringByPaddingToLength:kMaxCharToConsiderForEmoticonDetection withString:@" " startingAtIndex:0];
  v6 = [string stringByAppendingString:v5];

  v7 = 0x27FF08000uLL;
  theString = v6;
  Length = CFStringGetLength(v6);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = v9;
  v39 = 0;
  if (Length > kMinCharToConsiderForEmoticonDetection)
  {
    v39 = 0;
    v11 = 0;
    v36 = v9;
    do
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(theString, v11);
      v13 = CFStringCreateWithSubstring(0, theString, RangeOfComposedCharactersAtIndex);
      [v10 addObject:v13];
      if ([v10 count] > *(v7 + 3352))
      {
        [v10 removeObjectAtIndex:0];
      }

      v14 = [v10 componentsJoinedByString:&stru_2874A9C90];
      v15 = [v14 length];
      v16 = *(v7 + 3352);
      if (v15 <= v16)
      {
        v16 = [v14 length];
      }

      if (v16 >= kMinCharToConsiderForEmoticonDetection)
      {
        v17 = v16;
        while (1)
        {
          v18 = [v14 substringWithRange:{0, v17}];
          v19 = [emoticonCategoryDict objectForKey:v18];
          if (v19)
          {
            break;
          }

          if (--v17 < kMinCharToConsiderForEmoticonDetection)
          {
            v10 = v36;
            goto LABEL_15;
          }
        }

        v20 = v19;
        v35 = RangeOfComposedCharactersAtIndex.location - v16 + 1;
        if (v35 > v39)
        {
          string2 = [v38 string];
          v22 = [string2 substringWithRange:{v39, v35 - v39}];

          v23 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v22, [v38 location] + v39, objc_msgSend(v22, "length"));
          [v37 addObject:v23];
        }

        v24 = -[RKNLEventToken initWithString:location:length:]([RKNLEventToken alloc], "initWithString:location:length:", v20, [v38 location] + v35, objc_msgSend(v18, "length"));
        [v37 addObject:v24];

        v39 = [v18 length] + v35;
        [v36 removeObjectsInRange:{0, v17}];

        v10 = v36;
LABEL_15:
        v7 = 0x27FF08000;
      }

      Length -= CFStringGetLength(v13);
      v11 += CFStringGetLength(v13);
      CFRelease(v13);
    }

    while (Length > kMinCharToConsiderForEmoticonDetection);
  }

  string3 = [v38 string];
  v26 = [string3 length];

  if (v39 < v26)
  {
    string4 = [v38 string];
    string5 = [v38 string];
    v29 = [string4 substringWithRange:{v39, objc_msgSend(string5, "length") - v39}];

    v30 = [RKNLEventToken alloc];
    location = [v38 location];
    string6 = [v38 string];
    v33 = -[RKNLEventToken initWithString:location:length:](v30, "initWithString:location:length:", v29, location + v39, [string6 length] - v39);
    [v37 addObject:v33];
  }

  return v37;
}

- (id)processForHyphenation:(id)hyphenation
{
  hyphenationCopy = hyphenation;
  v20 = objc_opt_new();
  if ([hyphenationCopy count])
  {
    v4 = 0;
    v19 = hyphenationCopy;
    do
    {
      v5 = [hyphenationCopy objectAtIndexedSubscript:{v4, v19}];
      string = [v5 string];
      v7 = [string componentsSeparatedByString:@" "];

      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([v7 count])
      {
        v9 = 0;
        do
        {
          v10 = [v7 objectAtIndexedSubscript:v9];
          if ([v10 isEqualToString:@"-"])
          {
            v11 = v9 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11 || [v10 containsString:@"-"] && v9 && objc_msgSend(v10, "hasPrefix:", @"-"))
          {
            v12 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:kEMDash];
            whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            v14 = [v12 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

            v10 = v14;
          }

          [v8 addObject:v10];

          ++v9;
        }

        while (v9 < [v7 count]);
      }

      v15 = [v8 componentsJoinedByString:@" "];
      hyphenationCopy = v19;
      v16 = [v19 objectAtIndexedSubscript:v4];
      [v16 setString:v15];

      v17 = [v19 objectAtIndexedSubscript:v4];
      [v20 addObject:v17];

      ++v4;
    }

    while (v4 < [v19 count]);
  }

  return v20;
}

- (id)getTokens:(id)tokens
{
  v47 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  if (getTokens__onceToken != -1)
  {
    [RKNLEventTokenizer getTokens:];
  }

  array = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = tokensCopy;
  v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v5)
  {
    v41 = &stru_2874A9C90;
    goto LABEL_45;
  }

  v6 = v5;
  v7 = 0;
  v39 = *v43;
  v8 = *MEMORY[0x277CBECE8];
  v41 = &stru_2874A9C90;
  do
  {
    v9 = 0;
    v35 = v6;
    do
    {
      if (*v43 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v42 + 1) + 8 * v9);
      string = [v40 string];
      if (![RKNLEventTokenizer isSpecialToken:string])
      {
        v38 = v7;
        tokenizer = [(RKNLEventTokenizer *)self tokenizer];
        v49.length = CFStringGetLength(string);
        v49.location = 0;
        CFStringTokenizerSetString(tokenizer, string, v49);
        while (1)
        {
          if (!CFStringTokenizerAdvanceToNextToken([(RKNLEventTokenizer *)self tokenizer]))
          {
            location = [v40 location];
            v7 = [v40 length] + location;
            goto LABEL_41;
          }

          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange([(RKNLEventTokenizer *)self tokenizer]);
          v17 = [(__CFString *)string substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
          MutableCopy = CFStringCreateMutableCopy(v8, 0, v17);
          CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);

          if (([(__CFString *)MutableCopy isEqualToString:@" "]& 1) == 0 && ([(__CFString *)MutableCopy isEqualToString:@"\n"]& 1) == 0 && ([(__CFString *)MutableCopy isEqualToString:@" "]& 1) == 0)
          {
            break;
          }

LABEL_37:
        }

        v19 = [(__CFString *)MutableCopy stringByTrimmingCharactersInSet:getTokens__symbolsAndPunctuationSet];
        v20 = [v19 isEqualToString:&stru_2874A9C90];

        if (v20 && (-[__CFString stringByTrimmingCharactersInSet:](MutableCopy, "stringByTrimmingCharactersInSet:", getTokens__allowedPunctuationSet), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isEqualToString:&stru_2874A9C90], v21, (v22 & 1) == 0))
        {
          v24 = MutableCopy;
          MutableCopy = v24;
          v23 = v41;
LABEL_27:
          v41 = v24;
        }

        else
        {
          v23 = v41;
          if ([(__CFString *)v41 isEqualToString:@"?"]&& [(__CFString *)MutableCopy isEqualToString:@"?"]|| CEMStringContainsEmoji() && [(__CFString *)v41 isEqualToString:MutableCopy])
          {
            v24 = MutableCopy;
            MutableCopy = v24;
            goto LABEL_27;
          }

          v25 = [(__CFString *)MutableCopy rangeOfCharacterFromSet:getTokens__nonDigitCommaPeriodSet];
          v23 = objc_opt_new();
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([(__CFString *)v41 isEqualToString:@"DIGIT_STRG"])
            {
              MutableCopy = MutableCopy;

              v41 = MutableCopy;
              goto LABEL_35;
            }

            v28 = v23;
            v29 = @"DIGIT_STRG";
LABEL_34:
            [v28 setString:v29];
            string2 = [v23 string];

            [v23 setLocation:CurrentTokenRange.location + v38];
            [v23 setLength:CurrentTokenRange.length];
            [array addObject:v23];
            v41 = string2;
LABEL_35:
            v6 = v35;
          }

          else
          {
            v26 = [(__CFString *)MutableCopy stringByReplacingOccurrencesOfString:@"DATETIME" withString:@"DATE_TIME"];

            v27 = [v26 stringByReplacingOccurrencesOfString:@"EMOTICONHAPPY" withString:@"EMOTICON_HAPPY"];

            MutableCopy = [v27 stringByReplacingOccurrencesOfString:@"EMOTICONPERTURBED" withString:@"EMOTICON_PERTURBED"];

            if (!+[RKNLEventTokenizer isSpecialToken:](RKNLEventTokenizer, "isSpecialToken:", MutableCopy) && ![kAllowedPunctuations containsString:MutableCopy] || !-[__CFString isEqualToString:](v41, "isEqualToString:", MutableCopy))
            {
              v28 = v23;
              v29 = MutableCopy;
              goto LABEL_34;
            }

            MutableCopy = MutableCopy;

            v41 = MutableCopy;
            v6 = v35;
          }
        }

        goto LABEL_37;
      }

      v11 = [(__CFString *)string stringByReplacingOccurrencesOfString:@"DATETIME" withString:@"DATE_TIME"];

      v12 = [v11 stringByReplacingOccurrencesOfString:@"EMOTICONHAPPY" withString:@"EMOTICON_HAPPY"];

      v13 = [v12 stringByReplacingOccurrencesOfString:@"EMOTICONPERTURBED" withString:@"EMOTICON_PERTURBED"];

      if ([v13 isEqualToString:v41])
      {
        string = v13;

        location2 = [v40 location];
        v7 = [v40 length] + location2;
      }

      else
      {
        v32 = objc_opt_new();
        [v32 setString:v13];
        [v32 setLocation:{objc_msgSend(v40, "location")}];
        [v32 setLength:{objc_msgSend(v40, "length")}];
        [array addObject:v32];
        string = v13;

        location3 = [v40 location];
        v7 = [v40 length] + location3;
      }

      v41 = string;
LABEL_41:

      ++v9;
    }

    while (v9 != v6);
    v6 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v6);
LABEL_45:

  return array;
}

void __32__RKNLEventTokenizer_getTokens___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:kAllowedPunctuations];
  v1 = getTokens__allowedPunctuationSet;
  getTokens__allowedPunctuationSet = v0;

  v2 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v3 = [v2 mutableCopy];
  v4 = getTokens__symbolsAndPunctuationSet;
  getTokens__symbolsAndPunctuationSet = v3;

  v5 = getTokens__symbolsAndPunctuationSet;
  v6 = [MEMORY[0x277CCA900] symbolCharacterSet];
  [v5 formUnionWithCharacterSet:v6];

  v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v10 = [v7 mutableCopy];

  [v10 addCharactersInString:{@", ."}];
  v8 = [v10 invertedSet];
  v9 = getTokens__nonDigitCommaPeriodSet;
  getTokens__nonDigitCommaPeriodSet = v8;
}

- (id)buildTokenSquence:(id)squence withOffset:(unint64_t)offset
{
  v6 = [(RKNLEventTokenizer *)self tokenizeWithDataDetectors:squence];
  v7 = [(RKNLEventTokenizer *)self processForEmoticonsAndEmojis:v6];
  v8 = [(RKNLEventTokenizer *)self transform:v7];
  v9 = [(RKNLEventTokenizer *)self getTokens:v8];
  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      [v11 setLocation:{objc_msgSend(v11, "location") + offset}];

      ++v10;
    }

    while ([v9 count] > v10);
  }

  return v9;
}

@end