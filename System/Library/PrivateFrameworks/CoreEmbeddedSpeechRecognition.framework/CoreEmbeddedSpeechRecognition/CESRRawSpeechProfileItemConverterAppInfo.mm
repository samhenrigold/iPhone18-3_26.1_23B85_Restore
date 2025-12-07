@interface CESRRawSpeechProfileItemConverterAppInfo
- (CESRRawSpeechProfileItemConverterAppInfo)init;
- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error;
@end

@implementation CESRRawSpeechProfileItemConverterAppInfo

- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  wordsCopy = words;
  namespaceCopy = namespace;
  if (!wordsCopy || ![wordsCopy count])
  {
    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v45 = "[CESRRawSpeechProfileItemConverterAppInfo vocabularyItemFromSpeechWords:speechNamespace:error:]";
      _os_log_debug_impl(&dword_225EEB000, v26, OS_LOG_TYPE_DEBUG, "%s rawSpeechProfile contains an AppInfo item missing speech words.", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if ([wordsCopy count] != 1)
  {
    v27 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA068];
    wordsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains an AppInfo item with an unexpected number of speech words (expected only 1): %@", wordsCopy];
    v43 = wordsCopy;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v30 = v27;
    v31 = 1;
    goto LABEL_16;
  }

  if (([namespaceCopy isEqualToString:@"appname"] & 1) == 0)
  {
    v32 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA068];
    wordsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ expected: %@", namespaceCopy, @"appname"];
    v41 = wordsCopy;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v30 = v32;
    v31 = 3;
LABEL_16:
    v33 = [v30 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v31 userInfo:v29];
    if (error && v33)
    {
      v33 = v33;
      *error = v33;
    }

LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v10 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:@"appinfo"];
  firstObject = [wordsCopy firstObject];
  orthography = [firstObject orthography];

  builder = self->_builder;
  v37 = 0;
  v14 = [(KVItemBuilder *)builder setItemType:3 itemId:v10 error:&v37];
  v15 = v37;
  v16 = self->_builder;
  v36 = v15;
  v17 = [(KVItemBuilder *)v16 addFieldWithType:102 value:orthography error:&v36];
  v18 = v36;

  if (!v17 || (v19 = self->_builder, v35 = v18, [(KVItemBuilder *)v19 buildItemWithError:&v35], v20 = objc_claimAutoreleasedReturnValue(), v21 = v35, v18, v17, v18 = v21, !v20))
  {
    v22 = MEMORY[0x277CCA9B8];
    v38[0] = *MEMORY[0x277CCA068];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", orthography];
    v38[1] = *MEMORY[0x277CCA7E8];
    v39[0] = v23;
    v39[1] = v18;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v25 = [v22 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v24];
    if (error && v25)
    {
      v25 = v25;
      *error = v25;
    }

    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (CESRRawSpeechProfileItemConverterAppInfo)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterAppInfo;
  v2 = [(CESRRawSpeechProfileItemConverterAppInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end