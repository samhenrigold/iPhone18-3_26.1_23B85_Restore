@interface TILanguageModelOfflineLearningStrategyMecabraFavonius
- (BOOL)incrementUsageCountsForMessages:(id)messages withAdaptationContext:(id)context;
- (BOOL)learnMessages:(id)messages withRecipientRecords:(id)records;
- (TILanguageModelOfflineLearningStrategyMecabraFavonius)initWithClientIdentifier:(id)identifier;
- (id)filterMessages:(id)messages;
- (id)identifyLanguagesForMessages:(id)messages;
@end

@implementation TILanguageModelOfflineLearningStrategyMecabraFavonius

- (id)identifyLanguagesForMessages:(id)messages
{
  v28 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__23529;
  v25[4] = __Block_byref_object_dispose__23530;
  v26 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __86__TILanguageModelOfflineLearningStrategyMecabraFavonius_identifyLanguagesForMessages___block_invoke;
  v23 = &unk_278733760;
  v24 = v25;
  TIDispatchSync();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        body = [v10 body];
        v30.length = [(__CFString *)body length];
        v30.location = 0;
        v12 = CFStringTokenizerCopyBestStringLanguage(body, v30);
        if (v12)
        {
          v13 = v12;
          v14 = [v4 objectForKey:v12];
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v4 setObject:v14 forKey:v13];
          }

          [v14 addObject:v10];

          CFRelease(v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(v25, 8);

  return v4;
}

void __86__TILanguageModelOfflineLearningStrategyMecabraFavonius_identifyLanguagesForMessages___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v6 enabledInputModeIdentifiers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)learnMessages:(id)messages withRecipientRecords:(id)records
{
  selfCopy = self;
  v38 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  recordsCopy = records;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
  v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(recordsCopy, "count") + 1}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = messagesCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        recipient = [v12 recipient];
        v14 = [recordsCopy objectForKey:recipient];

        v15 = [v14 objectForKey:@"compositeName"];
        v16 = v15;
        v17 = &stru_283FDFAF8;
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        if (v14)
        {
          [v25 setObject:v14 forKey:v18];
        }

        v19 = [v7 objectForKey:v18];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v7 setObject:v19 forKey:v18];
        }

        [v19 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__TILanguageModelOfflineLearningStrategyMecabraFavonius_learnMessages_withRecipientRecords___block_invoke;
  v26[3] = &unk_278733698;
  v26[4] = selfCopy;
  v27 = v25;
  v28 = &v33;
  v20 = v25;
  [v7 enumerateKeysAndObjectsUsingBlock:v26];
  v21 = *(v34 + 24);

  _Block_object_dispose(&v33, 8);
  return v21;
}

void __92__TILanguageModelOfflineLearningStrategyMecabraFavonius_learnMessages_withRecipientRecords___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 learningTask];
  v10 = [v9 clientIdentifier];

  v11 = [*(a1 + 40) objectForKey:v8];

  v12 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:v10 andRecipientRecord:v11];
  [(TILanguageModelAdaptationContext *)v12 setIsOnline:0];
  if (v12)
  {
    v13 = [*(a1 + 32) incrementUsageCountsForMessages:v14 withAdaptationContext:v12];
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v13;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (BOOL)incrementUsageCountsForMessages:(id)messages withAdaptationContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [(TILanguageModelOfflineLearningStrategyMecabraFavonius *)self identifyLanguagesForMessages:messages];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__TILanguageModelOfflineLearningStrategyMecabraFavonius_incrementUsageCountsForMessages_withAdaptationContext___block_invoke;
  v10[3] = &unk_278733698;
  v11 = contextCopy;
  v12 = &v13;
  v10[4] = self;
  v8 = contextCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  LOBYTE(contextCopy) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return contextCopy;
}

void __111__TILanguageModelOfflineLearningStrategyMecabraFavonius_incrementUsageCountsForMessages_withAdaptationContext___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 learningTask];
  v11 = [v10 incrementUsageCountsForMessages:v8 forLanguage:v9 adaptationContext:a1[5]];

  *(*(a1[6] + 8) + 24) = v11;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)filterMessages:(id)messages
{
  v3 = MEMORY[0x277CBEAA8];
  messagesCopy = messages;
  v5 = objc_alloc_init(v3);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:8 value:-9 toDate:v5 options:0];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__TILanguageModelOfflineLearningStrategyMecabraFavonius_filterMessages___block_invoke;
  v16 = &unk_278733670;
  v17 = v5;
  v18 = v7;
  v8 = v7;
  v9 = v5;
  v10 = [messagesCopy indexesOfObjectsPassingTest:&v13];
  v11 = [messagesCopy objectsAtIndexes:{v10, v13, v14, v15, v16}];

  return v11;
}

BOOL __72__TILanguageModelOfflineLearningStrategyMecabraFavonius_filterMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 body];
  v5 = [v4 length];

  if (v5 && ((objc_opt_respondsToSelector() & 1) == 0 || [v3 fromMe]) && (objc_msgSend(v3, "dateSent"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "laterDate:", *(a1 + 32)), v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 32), v7, v6, v7 == v8))
  {
    v11 = [v3 dateSent];
    v12 = [v11 earlierDate:*(a1 + 40)];
    v9 = v12 == *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TILanguageModelOfflineLearningStrategyMecabraFavonius)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TILanguageModelOfflineLearningStrategyMecabraFavonius;
  v5 = [(TILanguageModelOfflineLearningStrategyMecabraFavonius *)&v9 init];
  if (v5)
  {
    v6 = [TILanguageModelOfflineLearningTask taskWithClientIdentifier:identifierCopy oneTimeTask:1];
    learningTask = v5->_learningTask;
    v5->_learningTask = v6;
  }

  return v5;
}

@end