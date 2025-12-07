@interface MFDASearchCriterionConverterDelegate
@end

@implementation MFDASearchCriterionConverterDelegate

void __97___MFDASearchCriterionConverterDelegate_messageCriterionConverter_predicateKeysForCriterionType___block_invoke()
{
  v29[12] = *MEMORY[0x1E69E9840];
  v28[0] = &unk_1F2775D48;
  v27 = *MEMORY[0x1E6999940];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v29[0] = v15;
  v28[1] = &unk_1F2775D60;
  v26 = *MEMORY[0x1E6999950];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v29[1] = v14;
  v28[2] = &unk_1F2775D78;
  v25 = *MEMORY[0x1E6999908];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v29[2] = v0;
  v28[3] = &unk_1F2775D90;
  v24 = *MEMORY[0x1E6999900];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v29[3] = v1;
  v28[4] = &unk_1F2775DA8;
  v23 = *MEMORY[0x1E6999928];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v29[4] = v2;
  v28[5] = &unk_1F2775DC0;
  v22 = *MEMORY[0x1E6999920];
  v3 = v22;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v29[5] = v4;
  v28[6] = &unk_1F2775DD8;
  v21 = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v29[6] = v5;
  v28[7] = &unk_1F2775DF0;
  v20 = *MEMORY[0x1E6999910];
  v6 = v20;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v29[7] = v7;
  v28[8] = &unk_1F2775E08;
  v19 = *MEMORY[0x1E6999918];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v29[8] = v8;
  v28[9] = &unk_1F2775E20;
  v18 = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v29[9] = v9;
  v28[10] = &unk_1F2775E38;
  v17 = *MEMORY[0x1E6999948];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v29[10] = v10;
  v28[11] = &unk_1F2775E50;
  v16 = *MEMORY[0x1E6999930];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v29[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:12];
  v13 = messageCriterionConverter_predicateKeysForCriterionType__converterKeyDictionary;
  messageCriterionConverter_predicateKeysForCriterionType__converterKeyDictionary = v12;
}

void __78___MFDASearchCriterionConverterDelegate__shouldConvertEqualsToContainsForKey___block_invoke()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6999920];
  v6[0] = *MEMORY[0x1E6999948];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6999908];
  v6[2] = *MEMORY[0x1E6999900];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6999938];
  v6[4] = *MEMORY[0x1E6999928];
  v6[5] = v2;
  v3 = *MEMORY[0x1E6999950];
  v6[6] = *MEMORY[0x1E6999940];
  v6[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v5 = _shouldConvertEqualsToContainsForKey___daKeys;
  _shouldConvertEqualsToContainsForKey___daKeys = v4;
}

@end