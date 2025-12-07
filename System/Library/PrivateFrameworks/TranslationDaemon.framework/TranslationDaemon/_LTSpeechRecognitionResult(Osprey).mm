@interface _LTSpeechRecognitionResult(Osprey)
- (void)initWithOspreyPartialRecognitionResponse:()Osprey isSanitized:;
- (void)initWithOspreyResponse:()Osprey confidenceThreshold:isSanitized:;
@end

@implementation _LTSpeechRecognitionResult(Osprey)

- (void)initWithOspreyResponse:()Osprey confidenceThreshold:isSanitized:
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v44.receiver = self;
  v44.super_class = &off_28488EEE8;
  v9 = objc_msgSendSuper2(&v44, sel_init);
  v10 = v9;
  if (v9)
  {
    [v9 setFinal:1];
    [v10 setStable:1];
    v11 = MEMORY[0x277CBEAF8];
    source_locale = [v8 source_locale];
    v13 = [v11 localeWithLocaleIdentifier:source_locale];
    [v10 setLocale:v13];

    [v10 setModelVersion:0];
    recognition_result = [v8 recognition_result];
    post_itn = [recognition_result post_itn];
    recognition_text = [v8 recognition_text];
    v17 = [recognition_text containsString:@"*"];
    array = [MEMORY[0x277CBEB18] array];
    if (a5 && v17)
    {
      post_itn_nbest_choices = [recognition_result post_itn_nbest_choices];
      firstObject = [post_itn_nbest_choices firstObject];

      if (firstObject)
      {
        v21 = [objc_alloc(MEMORY[0x277CE1BA8]) initWithRecognitionChoice:firstObject inSausage:post_itn];
        locale = [v10 locale];
        [v21 setLocale:locale];

        [v21 confidence];
        [v21 setLowConfidence:v23 <= a4];
        [v21 setSanitizedFormattedString:recognition_text];
        [array addObject:v21];
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      firstObject = [recognition_result post_itn_nbest_choices];
      v24 = [firstObject countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v24)
      {
        v25 = v24;
        v38 = recognition_text;
        v39 = v8;
        v26 = *v41;
        v27 = a4;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(firstObject);
            }

            v29 = [objc_alloc(MEMORY[0x277CE1BA8]) initWithRecognitionChoice:*(*(&v40 + 1) + 8 * i) inSausage:post_itn];
            locale2 = [v10 locale];
            [v29 setLocale:locale2];

            [v29 confidence];
            [v29 setLowConfidence:v31 <= v27];
            [array addObject:v29];
          }

          v25 = [firstObject countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v25);
        v8 = v39;
        recognition_text = v38;
      }
    }

    [v10 setTranscriptions:array];
    v32 = objc_alloc(MEMORY[0x277CE1B98]);
    post_itn_nbest_choices2 = [recognition_result post_itn_nbest_choices];
    locale3 = [v10 locale];
    v35 = [v32 initWithOspreySausage:post_itn choices:post_itn_nbest_choices2 locale:locale3];
    [v10 setBestRecognitionAlternatives:v35];

    v36 = v10;
  }

  return v10;
}

- (void)initWithOspreyPartialRecognitionResponse:()Osprey isSanitized:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = &off_28488EEE8;
  v7 = objc_msgSendSuper2(&v20, sel_init);
  v8 = v7;
  if (v7)
  {
    [v7 setFinal:0];
    [v8 setStable:{objc_msgSend(v6, "is_stable_result")}];
    v9 = MEMORY[0x277CBEAF8];
    source_locale = [v6 source_locale];
    v11 = [v9 localeWithLocaleIdentifier:source_locale];

    [v8 setLocale:v11];
    [v8 setModelVersion:0];
    v12 = objc_alloc_init(MEMORY[0x277CE1BA8]);
    [v12 setLocale:v11];
    recognition_text = [v6 recognition_text];
    [v12 setFormattedString:recognition_text];

    if (a4)
    {
      formattedString = [v12 formattedString];
      v15 = [formattedString containsString:@"*"];

      if (v15)
      {
        formattedString2 = [v12 formattedString];
        [v12 setSanitizedFormattedString:formattedString2];
      }
    }

    [v12 setConfidence:{objc_msgSend(v6, "confidence")}];
    [v12 setMinConfidence:0.0];
    [v12 setMaxConfidence:0.0];
    [v12 setLowConfidence:0];
    v21[0] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v8 setTranscriptions:v17];

    v18 = v8;
  }

  return v8;
}

@end