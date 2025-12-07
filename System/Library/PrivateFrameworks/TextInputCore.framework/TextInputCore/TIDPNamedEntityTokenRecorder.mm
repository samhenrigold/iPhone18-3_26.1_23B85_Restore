@interface TIDPNamedEntityTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)recordingKey;
- (id)records;
@end

@implementation TIDPNamedEntityTokenRecorder

- (BOOL)report
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(TIDPRecorder *)self characterExplodedRecords];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v24;
    do
    {
      v5 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * v5);
        v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        records = [(TIDPNamedEntityTokenRecorder *)self records];
        v9 = [records countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(records);
              }

              toDPWordRecord = [*(*(&v19 + 1) + 8 * v12) toDPWordRecord];
              [v7 addObject:toDPWordRecord];

              ++v12;
            }

            while (v10 != v12);
            v10 = [records countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }

        v14 = [v7 copy];
        if ([v14 count])
        {
          delegate = [(TIDPNamedEntityTokenRecorder *)self delegate];
          [delegate record:v14];
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  return 1;
}

- (id)records
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];
  v6 = [alignedEntries count];

  if (v6)
  {
    v7 = 0;
    acceptedString = 0;
    v9 = 0;
    do
    {
      v10 = acceptedString;
      v11 = v7;
      typingSessionAligned2 = [(TIDPRecorder *)self typingSessionAligned];
      alignedEntries2 = [typingSessionAligned2 alignedEntries];
      v7 = [alignedEntries2 objectAtIndexedSubscript:v9];

      originalWord = [v7 originalWord];
      acceptedString = [originalWord acceptedString];

      originalWord2 = [v7 originalWord];
      acceptedCandidate = [originalWord2 acceptedCandidate];

      v17 = acceptedCandidate;
      LODWORD(acceptedCandidate) = [v17 sourceMask] & 8;
      LODWORD(acceptedCandidate) = acceptedCandidate | [v17 sourceMask] & 0x10;

      if (acceptedCandidate)
      {
        v18 = [TIDPWordRecord word:acceptedString atPosition:&unk_28400BE20];
        [v3 addObject:v18];
      }

      ++v9;
      typingSessionAligned3 = [(TIDPRecorder *)self typingSessionAligned];
      alignedEntries3 = [typingSessionAligned3 alignedEntries];
      v21 = [alignedEntries3 count];
    }

    while (v9 < v21);
  }

  v22 = [v3 copy];

  return v22;
}

- (id)recordingKey
{
  recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v3 = [@"com.apple.TextInput.AddressBookNameMatch." stringByAppendingString:recordingKeyLocaleSubstring];

  return v3;
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = TIDPNamedEntityTokenRecorder;
  delegate = [(TIDPRecorder *)&v11 delegate];

  if (!delegate)
  {
    v4 = objc_alloc(MEMORY[0x277D05320]);
    recordingKey = [(TIDPNamedEntityTokenRecorder *)self recordingKey];
    v6 = [v4 initWithKey:recordingKey];

    v10.receiver = self;
    v10.super_class = TIDPNamedEntityTokenRecorder;
    [(TIDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = TIDPNamedEntityTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v9 delegate];

  return delegate2;
}

@end