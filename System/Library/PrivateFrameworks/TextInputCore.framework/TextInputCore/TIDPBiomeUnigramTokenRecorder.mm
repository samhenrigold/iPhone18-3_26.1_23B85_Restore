@interface TIDPBiomeUnigramTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)records;
@end

@implementation TIDPBiomeUnigramTokenRecorder

- (BOOL)report
{
  v27 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  records = [(TIDPBiomeUnigramTokenRecorder *)self records];
  v5 = [records countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(records);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        word = [v9 word];
        v11 = [v3 objectForKey:word];

        if (v11)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        }

        else
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInt:1];
        }

        word2 = [v9 word];
        [v3 setObject:v12 forKey:word2];
      }

      v6 = [records countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = [v3 count];
  if (v14)
  {
    delegate = [(TIDPBiomeUnigramTokenRecorder *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(TIDPBiomeUnigramTokenRecorder *)self delegate];
      recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      recordingKey = [(TIDPBiomeUnigramTokenRecorder *)self recordingKey];
      [delegate2 recordTokenFrequency:v3 withLocale:recordingKeyLocaleSubstring withTokenType:recordingKey];
    }
  }

  objc_autoreleasePoolPop(context);
  return v14 != 0;
}

- (id)records
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];

  v6 = [alignedEntries countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v63;
    v9 = &OBJC_METACLASS___TICoreAnalyticsEventController;
    v48 = *v63;
    v49 = alignedEntries;
    do
    {
      v10 = 0;
      v50 = v7;
      do
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v11 = *(*(&v62 + 1) + 8 * v10);
        originalWord = [v11 originalWord];
        editedEntry = [originalWord editedEntry];
        v14 = editedEntry;
        v55 = v10;
        if (editedEntry)
        {
          originalWord2 = editedEntry;
        }

        else
        {
          originalWord2 = [v11 originalWord];
        }

        v16 = originalWord2;

        v17 = v16;
        acceptedString = [v17 acceptedString];
        v19 = [acceptedString length];

        v20 = v17;
        if (v19)
        {
          acceptedString2 = [v17 acceptedString];
          _containsEmoji = [acceptedString2 _containsEmoji];

          v20 = v17;
          if ((_containsEmoji & 1) == 0)
          {
            keyboardState = [v17 keyboardState];
            textInputTraits = [keyboardState textInputTraits];
            v54 = v17;
            autocorrectionType = [textInputTraits autocorrectionType];

            v26 = autocorrectionType == 1;
            v17 = v54;
            if (v26)
            {
              goto LABEL_30;
            }

            acceptedString3 = [v54 acceptedString];
            v61 = 8217;
            v28 = [MEMORY[0x277CCACA8] stringWithCharacters:&v61 length:1];
            [acceptedString3 rangeOfString:v28];
            v52 = v28;
            if (v29)
            {
              v30 = [acceptedString3 stringByReplacingOccurrencesOfString:v28 withString:@"'"];

              acceptedString3 = v30;
            }

            punctuationCharacterSet = [MEMORY[0x277CCAB50] punctuationCharacterSet];
            [punctuationCharacterSet removeCharactersInString:@"'-"];
            v51 = punctuationCharacterSet;
            v32 = [acceptedString3 stringByTrimmingCharactersInSet:punctuationCharacterSet];

            v53 = v32;
            if ([v32 length])
            {
              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v34 = [v32 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              obj = v34;
              v35 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v58;
                do
                {
                  for (i = 0; i != v36; ++i)
                  {
                    if (*v58 != v37)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v39 = *(*(&v57 + 1) + 8 * i);
                    if ([v39 length])
                    {
                      v40 = objc_alloc_init(&v9[12]);
                      [v40 setAcceptedString:v39];
                      if ([(TIDPRecorder *)self isWordEntryReallyOOV:v40 caseSensitive:1])
                      {
                        [v39 lowercaseString];
                        selfCopy = self;
                        v42 = v3;
                        v44 = v43 = v9;
                        v45 = [TIDPWordRecord word:v44];

                        v9 = v43;
                        v3 = v42;
                        self = selfCopy;
                      }

                      else
                      {
                        v45 = [TIDPWordRecord word:v39];
                      }

                      [v3 addObject:v45];
                    }
                  }

                  v36 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
                }

                while (v36);
              }

              alignedEntries = v49;
              v7 = v50;
              v8 = v48;
              v17 = v54;
            }

            v20 = v53;
          }
        }

LABEL_30:
        v10 = v55 + 1;
      }

      while (v55 + 1 != v7);
      v7 = [alignedEntries countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v7);
  }

  v46 = [v3 copy];

  return v46;
}

- (id)delegate
{
  v9.receiver = self;
  v9.super_class = TIDPBiomeUnigramTokenRecorder;
  delegate = [(TIDPRecorder *)&v9 delegate];

  if (!delegate)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeUnigramTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeUnigramTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v7 delegate];

  return delegate2;
}

@end