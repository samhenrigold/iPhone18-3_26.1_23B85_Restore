@interface CESRRawSpeechProfileItemConverterHomeEntity
- (CESRRawSpeechProfileItemConverterHomeEntity)init;
- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error;
@end

@implementation CESRRawSpeechProfileItemConverterHomeEntity

- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  wordsCopy = words;
  namespaceCopy = namespace;
  if (wordsCopy && [wordsCopy count])
  {
    if ([wordsCopy count] == 1)
    {
      v10 = namespaceCopy;
      if ([v10 isEqualToString:@"house"])
      {
        v11 = 150;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"zone"])
      {
        v11 = 151;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"room"])
      {
        v11 = 152;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"group"])
      {
        v11 = 154;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"scene"])
      {
        v11 = 155;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"trigger"])
      {
        v11 = 156;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"accessory"])
      {
        v11 = 157;
        goto LABEL_28;
      }

      if ([v10 isEqualToString:@"device"])
      {
        v11 = 153;
LABEL_28:

        namespaceCopy = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:@"homekit"];
        builder = self->_builder;
        v39 = 0;
        v23 = [(KVItemBuilder *)builder setItemType:4 itemId:namespaceCopy error:&v39];
        v24 = v39;
        firstObject = [wordsCopy firstObject];
        orthography = [firstObject orthography];

        v27 = self->_builder;
        v38 = v24;
        v28 = [(KVItemBuilder *)v27 addFieldWithType:v11 value:orthography error:&v38];
        v15 = v38;

        if (!v28 || (v29 = self->_builder, v37 = v15, [(KVItemBuilder *)v29 buildItemWithError:&v37], v16 = objc_claimAutoreleasedReturnValue(), v30 = v37, v15, v28, v15 = v30, !v16))
        {
          v31 = MEMORY[0x277CCA9B8];
          v40[0] = *MEMORY[0x277CCA068];
          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", orthography];
          v40[1] = *MEMORY[0x277CCA7E8];
          v41[0] = v32;
          v41[1] = v15;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
          v34 = [v31 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v33];
          if (error && v34)
          {
            v34 = v34;
            *error = v34;
          }

          v16 = 0;
        }

        goto LABEL_35;
      }

      v36 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA068];
      namespaceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected namespace: %@ for category: %@", v10, @"com.apple.homekit.name"];
      v43 = namespaceCopy;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v19 = v36;
      v20 = 3;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA068];
      namespaceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains a HomeKit item with an unexpected number of speech words (expected only 1): %@ namespace: %@", wordsCopy, namespaceCopy];
      v45 = namespaceCopy;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v19 = v18;
      v20 = 1;
    }

    v21 = [v19 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v20 userInfo:v15];
    if (error && v21)
    {
      v21 = v21;
      *error = v21;
    }

    v16 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47[0] = @"rawSpeechProfile contains an HomeEntity item missing speech words.";
    namespaceCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:namespaceCopy];
    v15 = v14;
    v16 = 0;
    if (error && v14)
    {
      v17 = v14;
      v16 = 0;
      *error = v15;
    }
  }

LABEL_35:

  return v16;
}

- (CESRRawSpeechProfileItemConverterHomeEntity)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterHomeEntity;
  v2 = [(CESRRawSpeechProfileItemConverterHomeEntity *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end