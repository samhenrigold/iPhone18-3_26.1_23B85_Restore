@interface TIDPEventDispatcher
- (TIDPEventDispatcher)initWithReportingDelegate:(id)delegate;
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
@end

@implementation TIDPEventDispatcher

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  v45 = *MEMORY[0x277D85DE8];
  endCopy = end;
  alignedCopy = aligned;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  alignedEntries = [alignedCopy alignedEntries];
  v9 = [alignedEntries countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        originalWord = [v13 originalWord];
        if (originalWord)
        {
          v15 = originalWord;
          originalWord2 = [v13 originalWord];
          acceptedString = [originalWord2 acceptedString];

          if (acceptedString)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v10 = [alignedEntries countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v19 = [(TIDPRecorder *)[TIDPUnknownTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  v20 = [(TIDPRecorder *)[TIDPNamedEntityTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  v34 = v19;
  [v18 addObject:v19];
  v33 = v20;
  [v18 addObject:v20];
  alignedEntries2 = [alignedCopy alignedEntries];
  lastObject = [alignedEntries2 lastObject];

  LODWORD(alignedEntries2) = [lastObject inSessionAlignmentConfidence];
  if (alignedEntries2 == 3)
  {
    v23 = [[TIDPNgramRecorderRandom alloc] initWithTypingSession:endCopy aligned:alignedCopy n:5];
    [v18 addObject:v23];
  }

  v32 = [(TIDPRecorder *)[TIDPBiomeUnigramTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  [v18 addObject:?];
  v24 = [(TIDPRecorder *)[TIDPBiomeEmojiTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  [v18 addObject:v24];
  v25 = [(TIDPRecorder *)[TIDPBiomeNamedEntityTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  [v18 addObject:v25];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v18;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v35 + 1) + 8 * j);
        if (self->_reportingDelegate)
        {
          [*(*(&v35 + 1) + 8 * j) setDelegate:?];
        }

        [v31 report];
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v28);
  }

LABEL_23:
}

- (TIDPEventDispatcher)initWithReportingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = [(TIDPEventDispatcher *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportingDelegate, delegate);
  }

  return v7;
}

@end