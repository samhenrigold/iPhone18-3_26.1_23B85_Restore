@interface TITypingDESRecordWriter
- (BOOL)shouldRecordToDES;
- (TITypingDESRecordWriter)init;
- (void)clearStoredRecordsWithCompletionHandler:(id)handler;
- (void)fetchRecords:(id)records;
- (void)storeAlignedSession:(id)session completion:(id)completion;
- (void)storeTypingSession:(id)session containsCP:(BOOL)p completion:(id)completion;
@end

@implementation TITypingDESRecordWriter

- (void)clearStoredRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  typingDataStore = [(TITypingDESRecordWriter *)self typingDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__TITypingDESRecordWriter_clearStoredRecordsWithCompletionHandler___block_invoke;
  v7[3] = &unk_27872F758;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [typingDataStore deleteAllSavedRecordsWithCompletion:v7];
}

- (void)fetchRecords:(id)records
{
  recordsCopy = records;
  typingDataStore = [(TITypingDESRecordWriter *)self typingDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TITypingDESRecordWriter_fetchRecords___block_invoke;
  v7[3] = &unk_27872F730;
  v8 = recordsCopy;
  v6 = recordsCopy;
  [typingDataStore fetchSavedRecordInfoWithCompletion:v7];
}

uint64_t __40__TITypingDESRecordWriter_fetchRecords___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)storeAlignedSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  v7 = [session restrictedAlignedSessionWithWordLimit:20];
  v13 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v13];
  v9 = v13;
  if (v9)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    containsCPEntries = [v7 containsCPEntries];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__TITypingDESRecordWriter_storeAlignedSession_completion___block_invoke;
    v11[3] = &unk_27872F708;
    v12 = completionCopy;
    [(TITypingDESRecordWriter *)self storeTypingSession:v8 containsCP:containsCPEntries completion:v11];
  }
}

- (BOOL)shouldRecordToDES
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install)
  {
    return 1;
  }

  typingDataStore = [(TITypingDESRecordWriter *)self typingDataStore];
  shouldMakeRecord = [typingDataStore shouldMakeRecord];

  return shouldMakeRecord;
}

- (void)storeTypingSession:(id)session containsCP:(BOOL)p completion:(id)completion
{
  pCopy = p;
  v18[4] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  completionCopy = completion;
  if ([(TITypingDESRecordWriter *)self shouldRecordToDES])
  {
    v17[0] = @"source";
    v17[1] = @"type";
    v18[0] = @"TITypingDESRecordWriter";
    v18[1] = @"typingSession";
    v17[2] = @"timestamp";
    v10 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = [v10 numberWithDouble:?];
    v18[2] = v11;
    v17[3] = @"containsCP";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:pCopy];
    v18[3] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

    typingDataStore = [(TITypingDESRecordWriter *)self typingDataStore];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__TITypingDESRecordWriter_storeTypingSession_containsCP_completion___block_invoke;
    v15[3] = &unk_27872F6E0;
    v16 = completionCopy;
    [typingDataStore saveRecordWithData:sessionCopy recordInfo:v13 completion:v15];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 1);
  }
}

void __68__TITypingDESRecordWriter_storeTypingSession_containsCP_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v6 localizedDescription];
    v9 = 136315394;
    v10 = "[TITypingDESRecordWriter storeTypingSession:containsCP:completion:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Error: %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6 == 0);
  }
}

- (TITypingDESRecordWriter)init
{
  v6.receiver = self;
  v6.super_class = TITypingDESRecordWriter;
  v2 = [(TITypingDESRecordWriter *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.TextInput.TypingDESPlugin"];
    typingDataStore = v2->_typingDataStore;
    v2->_typingDataStore = v3;
  }

  return v2;
}

@end