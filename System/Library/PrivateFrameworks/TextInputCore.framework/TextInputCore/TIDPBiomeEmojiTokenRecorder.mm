@interface TIDPBiomeEmojiTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)records;
@end

@implementation TIDPBiomeEmojiTokenRecorder

- (BOOL)report
{
  v27 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  records = [(TIDPBiomeEmojiTokenRecorder *)self records];
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

        word = [*(*(&v22 + 1) + 8 * i) word];
        lowercaseString = [word lowercaseString];

        v11 = [v3 objectForKey:lowercaseString];
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        }

        else
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
        }

        [v3 setObject:v13 forKey:lowercaseString];
      }

      v6 = [records countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = [v3 count];
  if (v14)
  {
    delegate = [(TIDPBiomeEmojiTokenRecorder *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(TIDPBiomeEmojiTokenRecorder *)self delegate];
      recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      recordingKey = [(TIDPBiomeEmojiTokenRecorder *)self recordingKey];
      [delegate2 recordTokenFrequency:v3 withLocale:recordingKeyLocaleSubstring withTokenType:recordingKey];
    }
  }

  objc_autoreleasePoolPop(context);
  return v14 != 0;
}

- (id)records
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];

  v6 = [alignedEntries countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v33 = *v41;
    do
    {
      v9 = 0;
      v34 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
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

        acceptedCandidate = [v15 acceptedCandidate];
        candidate = [acceptedCandidate candidate];
        _containsEmoji = [candidate _containsEmoji];

        if (_containsEmoji)
        {
          acceptedCandidate2 = [v15 acceptedCandidate];
          candidate2 = [acceptedCandidate2 candidate];
          alignedKeyboardInputs = [TIDPWordRecord word:candidate2];

          [v3 addObject:alignedKeyboardInputs];
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          alignedKeyboardInputs = [v10 alignedKeyboardInputs];
          v22 = [alignedKeyboardInputs countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v22)
          {
            v23 = v22;
            v35 = v15;
            v24 = *v37;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v37 != v24)
                {
                  objc_enumerationMutation(alignedKeyboardInputs);
                }

                v26 = *(*(&v36 + 1) + 8 * i);
                v27 = objc_msgSend_string(v26);
                _containsEmoji2 = [v27 _containsEmoji];

                if (_containsEmoji2)
                {
                  v29 = objc_msgSend_string(v26);
                  v30 = [TIDPWordRecord word:v29];

                  [v3 addObject:v30];
                }
              }

              v23 = [alignedKeyboardInputs countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v23);
            v8 = v33;
            v7 = v34;
            v15 = v35;
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [alignedEntries countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  v31 = [v3 copy];

  return v31;
}

- (id)delegate
{
  v9.receiver = self;
  v9.super_class = TIDPBiomeEmojiTokenRecorder;
  delegate = [(TIDPRecorder *)&v9 delegate];

  if (!delegate)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeEmojiTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeEmojiTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v7 delegate];

  return delegate2;
}

@end