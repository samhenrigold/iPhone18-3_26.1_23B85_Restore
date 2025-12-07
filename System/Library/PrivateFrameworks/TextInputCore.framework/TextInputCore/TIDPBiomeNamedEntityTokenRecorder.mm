@interface TIDPBiomeNamedEntityTokenRecorder
- (BOOL)report;
- (BOOL)shouldSkipWordEntry:(id)entry;
- (id)delegate;
- (id)filterTokenFrequencies:(id)frequencies forTokenClass:(unsigned int)class;
- (id)records;
@end

@implementation TIDPBiomeNamedEntityTokenRecorder

- (BOOL)report
{
  v32 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  records = [(TIDPBiomeNamedEntityTokenRecorder *)self records];
  v5 = [records countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(records);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
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

      v6 = [records countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v14 = [(TIDPBiomeNamedEntityTokenRecorder *)self filterTokenFrequencies:v3 forTokenClass:68];
    v15 = [(TIDPBiomeNamedEntityTokenRecorder *)self filterTokenFrequencies:v3 forTokenClass:69];
    if ([v14 count] || objc_msgSend(v15, "count"))
    {
      delegate = [(TIDPBiomeNamedEntityTokenRecorder *)self delegate];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        if ([v14 count])
        {
          delegate2 = [(TIDPBiomeNamedEntityTokenRecorder *)self delegate];
          recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
          givenNameRecordingKey = [(TIDPBiomeNamedEntityTokenRecorder *)self givenNameRecordingKey];
          [delegate2 recordTokenFrequency:v14 withLocale:recordingKeyLocaleSubstring withTokenType:givenNameRecordingKey];
        }

        if ([v15 count])
        {
          delegate3 = [(TIDPBiomeNamedEntityTokenRecorder *)self delegate];
          recordingKeyLocaleSubstring2 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
          surnameRecordingKey = [(TIDPBiomeNamedEntityTokenRecorder *)self surnameRecordingKey];
          [delegate3 recordTokenFrequency:v15 withLocale:recordingKeyLocaleSubstring2 withTokenType:surnameRecordingKey];
        }
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v24;
}

- (id)filterTokenFrequencies:(id)frequencies forTokenClass:(unsigned int)class
{
  frequenciesCopy = frequencies;
  SharedVocabulary = LMVocabularyGetSharedVocabulary();
  allKeys = [frequenciesCopy allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__TIDPBiomeNamedEntityTokenRecorder_filterTokenFrequencies_forTokenClass___block_invoke;
  v12[3] = &__block_descriptor_44_e35_B24__0__NSString_8__NSDictionary_16l;
  v12[4] = SharedVocabulary;
  classCopy = class;
  v8 = [MEMORY[0x277CCAC30] predicateWithBlock:v12];
  v9 = [allKeys filteredArrayUsingPredicate:v8];

  v10 = [frequenciesCopy dictionaryWithValuesForKeys:v9];

  return v10;
}

- (id)records
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];

  obj = alignedEntries;
  v6 = [alignedEntries countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v28 = *v37;
    selfCopy = self;
    do
    {
      v9 = 0;
      v30 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        originalWord = [v10 originalWord];
        editedEntry = [originalWord editedEntry];
        v13 = editedEntry;
        if (editedEntry)
        {
          originalWord2 = editedEntry;
        }

        else
        {
          originalWord2 = [v10 originalWord];
        }

        v15 = originalWord2;

        if (![(TIDPBiomeNamedEntityTokenRecorder *)self shouldSkipWordEntry:v15])
        {
          acceptedString = [v15 acceptedString];
          whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v18 = [acceptedString componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v33;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v33 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v32 + 1) + 8 * i);
                if ([v24 length])
                {
                  v25 = [TIDPWordRecord word:v24];
                  [v3 addObject:v25];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v21);
          }

          v8 = v28;
          self = selfCopy;
          v7 = v30;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v26 = [v3 copy];

  return v26;
}

- (BOOL)shouldSkipWordEntry:(id)entry
{
  acceptedCandidate = [entry acceptedCandidate];
  v4 = ([acceptedCandidate sourceMask] & 8) == 0;

  return v4;
}

- (id)delegate
{
  v9.receiver = self;
  v9.super_class = TIDPBiomeNamedEntityTokenRecorder;
  delegate = [(TIDPRecorder *)&v9 delegate];

  if (!delegate)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeNamedEntityTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeNamedEntityTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v7 delegate];

  return delegate2;
}

@end