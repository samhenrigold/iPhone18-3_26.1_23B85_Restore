@interface CDMServiceNodeNames
+ (id)getNameStringToEnumDict;
@end

@implementation CDMServiceNodeNames

+ (id)getNameStringToEnumDict
{
  if (getNameStringToEnumDict_onceToken != -1)
  {
    dispatch_once(&getNameStringToEnumDict_onceToken, &__block_literal_global_5592);
  }

  v3 = getNameStringToEnumDict_serviceNodeNameStringToEnum;

  return v3;
}

void __46__CDMServiceNodeNames_getNameStringToEnumDict__block_invoke()
{
  v31[28] = *MEMORY[0x1E69E9840];
  v30[0] = @"doContextUpdate";
  v29 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v31[0] = v29;
  v30[1] = @"doCurrentTokenize";
  v28 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v31[1] = v28;
  v30[2] = @"doPreviousTurnsTokenize";
  v27 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v31[2] = v27;
  v30[3] = @"doEmbedding";
  v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:4];
  v31[3] = v26;
  v30[4] = @"doSpanization";
  v25 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:5];
  v31[4] = v25;
  v30[5] = @"doSpanizationDateTime";
  v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:28];
  v31[5] = v24;
  v30[6] = @"doSpanizationRegex";
  v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:29];
  v31[6] = v23;
  v30[7] = @"doSpanizationSiriVocabulary";
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:30];
  v31[7] = v22;
  v30[8] = @"doSpanizationVoc";
  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:31];
  v31[8] = v21;
  v30[9] = @"doShortcutParse";
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:6];
  v31[9] = v20;
  v30[10] = @"doSNLCInference";
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:7];
  v31[10] = v19;
  v30[11] = @"doCATIInference";
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:9];
  v31[11] = v18;
  v30[12] = @"doNLv4Inference";
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:10];
  v31[12] = v17;
  v30[13] = @"doOverridesProto";
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:11];
  v31[13] = v16;
  v30[14] = @"doRepetitionDetection";
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:12];
  v31[14] = v15;
  v30[15] = @"doPostProcess";
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:13];
  v31[15] = v14;
  v30[16] = @"endNode";
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:14];
  v31[16] = v13;
  v30[17] = @"doCorrectedUtteranceTokenize";
  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:15];
  v31[17] = v12;
  v30[18] = @"doUaaPNLInference";
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:17];
  v31[18] = v0;
  v30[19] = @"doPSCInference";
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:18];
  v31[19] = v1;
  v30[20] = @"doLVCInference";
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:26];
  v31[20] = v2;
  v30[21] = @"doCcqrAerCbRInference";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:20];
  v31[21] = v3;
  v30[22] = @"doMentionDetection";
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:21];
  v31[22] = v4;
  v30[23] = @"doMentionResolving";
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:22];
  v31[23] = v5;
  v30[24] = @"doSpanMerging";
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:23];
  v31[24] = v6;
  v30[25] = @"doContextualSpanMatching";
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:24];
  v31[25] = v7;
  v30[26] = @"doSSUMatching";
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:27];
  v31[26] = v8;
  v30[27] = @"doNLv4SNLCMerging";
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:32];
  v31[27] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:28];
  v11 = getNameStringToEnumDict_serviceNodeNameStringToEnum;
  getNameStringToEnumDict_serviceNodeNameStringToEnum = v10;
}

@end