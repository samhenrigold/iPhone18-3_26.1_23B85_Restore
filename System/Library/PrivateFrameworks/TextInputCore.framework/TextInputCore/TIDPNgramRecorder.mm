@interface TIDPNgramRecorder
+ (void)enumerateNgramsFromSession:(id)session n:(unint64_t)n usingBlock:(id)block;
- (BOOL)report;
- (TIDPNgramRecorder)initWithTypingSession:(id)session aligned:(id)aligned n:(unint64_t)n shouldDonateNgramSampleRandomly:(BOOL)randomly;
- (id)_normalizedWordEntryStringForWordEntry:(id)entry;
- (id)delegate;
- (id)randomRecordsLimitedByCount:(unint64_t)count;
- (id)recordingKey;
- (id)records;
@end

@implementation TIDPNgramRecorder

- (id)_normalizedWordEntryStringForWordEntry:(id)entry
{
  entryCopy = entry;
  originalWord = [entryCopy originalWord];
  LOBYTE(self) = [(TIDPRecorder *)self isWordEntryReallyOOV:originalWord caseSensitive:0];

  if (self)
  {
    lowercaseString = @"u_token";
  }

  else
  {
    originalWord2 = [entryCopy originalWord];
    acceptedString = [originalWord2 acceptedString];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [acceptedString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    lowercaseString = [v10 lowercaseString];
  }

  return lowercaseString;
}

- (BOOL)report
{
  v58 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  if ([(TIDPNgramRecorder *)self shouldDonateNgramSampleRandomly])
  {
    [(TIDPNgramRecorder *)self randomRecords];
  }

  else
  {
    [(TIDPNgramRecorder *)self records];
  }
  v3 = ;
  v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    coderVersion = 0;
    v7 = *v50;
    do
    {
      v8 = 0;
      v9 = coderVersion;
      do
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * v8);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v46;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v46 != v15)
              {
                objc_enumerationMutation(v12);
              }

              codedWord = [*(*(&v45 + 1) + 8 * i) codedWord];
              if (codedWord)
              {
                [v11 addObject:codedWord];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v45 objects:v56 count:16];
          }

          while (v14);
        }

        firstObject = [v12 firstObject];
        coderVersion = [firstObject coderVersion];

        [v40 addObject:v11];
        ++v8;
        v9 = coderVersion;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v5);
  }

  else
  {
    coderVersion = 0;
  }

  v19 = [v40 copy];
  v20 = [v19 count];
  if (v20)
  {
    v34 = v20;
    v35 = v19;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obja = v19;
    v21 = [obja countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v41 + 1) + 8 * j);
          uUIDString = [coderVersion UUIDString];
          v27 = uUIDString;
          v28 = @"UNKNOWN_VERSION";
          if (uUIDString)
          {
            v28 = uUIDString;
          }

          v29 = v28;

          delegate = [(TIDPNgramRecorder *)selfCopy delegate];
          v53 = @"VersionHash";
          v54 = v29;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          [delegate record:v25 metadata:v31];
        }

        v22 = [obja countByEnumeratingWithState:&v41 objects:v55 count:16];
      }

      while (v22);
    }

    v20 = v34;
    v19 = v35;
  }

  v32 = v20 != 0;

  objc_autoreleasePoolPop(context);
  return v32;
}

- (id)randomRecordsLimitedByCount:(unint64_t)count
{
  records = [(TIDPNgramRecorder *)self records];
  if ([records count] <= count)
  {
    v15 = records;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:count];
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
    records2 = [(TIDPNgramRecorder *)self records];
    v9 = [records2 count];

    while ([v6 count] < count)
    {
      v10 = arc4random_uniform(v9);
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      v12 = [v6 containsObject:v11];

      if ((v12 & 1) == 0 && [records count] >= v10)
      {
        v13 = [records objectAtIndex:v10];
        [v7 addObject:v13];
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
        [v6 addObject:v14];
      }
    }

    v15 = [v7 copy];
  }

  return v15;
}

- (id)records
{
  v22 = *MEMORY[0x277D85DE8];
  wordCoder = [(TIDPRecorder *)self wordCoder];

  if (wordCoder)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_opt_class();
    typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
    v7 = [(TIDPNgramRecorderCascading *)self n];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __28__TIDPNgramRecorder_records__block_invoke;
    v15 = &unk_278733278;
    selfCopy = self;
    v17 = v4;
    v8 = v4;
    [v5 enumerateNgramsFromSession:typingSessionAligned n:v7 usingBlock:&v12];

    v9 = [v8 copy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      *buf = 136315394;
      v19 = "[TIDPNgramRecorder records]";
      v20 = 2112;
      v21 = recordingKeyLocaleSubstring;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Not recording n-grams for locale '%@' because a valid word coder could not be loaded.", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

void __28__TIDPNgramRecorder_records__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isStandaloneString])
        {
          v11 = [v10 wordString];
        }

        else
        {
          v12 = *(a1 + 32);
          v13 = [v10 wordEntryAligned];
          v11 = [v12 _normalizedWordEntryStringForWordEntry:v13];
        }

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v7];
        v15 = [*(a1 + 32) wordCoder];
        v16 = [TIDPWordRecord word:v11 atPosition:v14 coder:v15];

        [v4 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) addObject:v4];
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = TIDPNgramRecorder;
  delegate = [(TIDPRecorder *)&v11 delegate];

  if (!delegate)
  {
    v4 = objc_alloc(MEMORY[0x277D05308]);
    recordingKey = [(TIDPNgramRecorder *)self recordingKey];
    v6 = [v4 initWithKey:recordingKey];

    v10.receiver = self;
    v10.super_class = TIDPNgramRecorder;
    [(TIDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = TIDPNgramRecorder;
  delegate2 = [(TIDPRecorder *)&v9 delegate];

  return delegate2;
}

- (id)recordingKey
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.TextInput.WordNgrams.%lu.", -[TIDPNgramRecorderCascading n](self, "n")];
  recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v5 = [v3 stringByAppendingString:recordingKeyLocaleSubstring];

  return v5;
}

- (TIDPNgramRecorder)initWithTypingSession:(id)session aligned:(id)aligned n:(unint64_t)n shouldDonateNgramSampleRandomly:(BOOL)randomly
{
  randomlyCopy = randomly;
  v10.receiver = self;
  v10.super_class = TIDPNgramRecorder;
  v7 = [(TIDPNgramRecorderCascading *)&v10 initWithTypingSession:session aligned:aligned n:n];
  v8 = v7;
  if (v7)
  {
    [(TIDPNgramRecorder *)v7 setShouldDonateNgramSampleRandomly:randomlyCopy];
  }

  return v8;
}

+ (void)enumerateNgramsFromSession:(id)session n:(unint64_t)n usingBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  blockCopy = block;
  alignedEntries = [sessionCopy alignedEntries];
  v10 = [alignedEntries count];

  if (v10 && v10 + 2 >= n)
  {
    nCopy = n;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    v12 = [[TIDPNgramWordEntryPair alloc] initWithWordString:@"<s>"];
    [v11 addObject:v12];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = sessionCopy;
    alignedEntries2 = [sessionCopy alignedEntries];
    v14 = [alignedEntries2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(alignedEntries2);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          originalWord = [v18 originalWord];
          acceptedString = [originalWord acceptedString];

          if (acceptedString)
          {
            v21 = [[TIDPNgramWordEntryPair alloc] initWithWordString:acceptedString wordEntryAligned:v18];
            [v11 addObject:v21];
          }
        }

        v15 = [alignedEntries2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }

    v22 = [[TIDPNgramWordEntryPair alloc] initWithWordString:@"</s>"];
    [v11 addObject:v22];

    v23 = [v11 count];
    if (v23 >= nCopy)
    {
      v24 = nCopy;
    }

    else
    {
      v24 = v23;
    }

    v32 = 0;
    [v11 count];
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = v26;
      if (v32)
      {
        break;
      }

      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:nCopy];

      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          if (j >= [v11 count] - 1)
          {
            break;
          }

          v29 = [v11 objectAtIndexedSubscript:v25 + j];
          [v26 addObject:v29];
        }
      }

      blockCopy[2](blockCopy, v26, &v32);
      ++v25;
    }

    while (v25 <= [v11 count] - v24);

    sessionCopy = v31;
  }
}

@end