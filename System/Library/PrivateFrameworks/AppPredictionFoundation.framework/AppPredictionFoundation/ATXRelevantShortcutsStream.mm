@interface ATXRelevantShortcutsStream
- (id)_relevantShortcutsPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit;
- (id)atx_efficientRelevantShortcut:(id)shortcut;
- (void)enumerateEventsFromStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit block:(id)block;
@end

@implementation ATXRelevantShortcutsStream

- (void)enumerateEventsFromStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit block:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  if ([dateCopy compare:endDateCopy] != -1)
  {
    [ATXRelevantShortcutsStream enumerateEventsFromStartDate:a2 endDate:self limit:? block:?];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [(ATXRelevantShortcutsStream *)self _relevantShortcutsPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5;
  v18[3] = &unk_2785907B8;
  v18[4] = self;
  v16 = blockCopy;
  v19 = v16;
  v17 = [v15 sinkWithCompletion:&__block_literal_global_16 shouldContinue:v18];

  objc_autoreleasePoolPop(v14);
}

void __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_cold_1(v2, v5);
    }
  }
}

uint64_t __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 eventBody];
    v8 = [v7 serializedRelevantShortcut];

    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [v3 eventBody];
      v12 = [v11 serializedRelevantShortcut];
      v13 = [v10 atx_efficientRelevantShortcut:v12];

      if (v13)
      {
        v14 = [ATXRelevantShortcutsEvent alloc];
        v15 = [v3 eventBody];
        v16 = [v15 bundleID];
        v17 = [(ATXRelevantShortcutsEvent *)v14 initWithBundleID:v16 relevantShortcut:v13];

        if (v17)
        {
          v18 = (*(*(a1 + 40) + 16))();
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v19 = __atxlog_handle_default(v9);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5_cold_1(v3, v19);
  }

  v18 = 1;
LABEL_14:

  return v18;
}

- (id)atx_efficientRelevantShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:shortcutCopy error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v9 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXRelevantShortcutsStream *)v7 atx_efficientRelevantShortcut:v9];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_relevantShortcutsPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit
{
  endDateCopy = endDate;
  dateCopy = date;
  v9 = BiomeLibrary();
  v10 = [v9 App];
  relevantShortcuts = [v10 RelevantShortcuts];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v13 = [relevantShortcuts atx_publisherWithStartDate:dateCopy endDate:endDateCopy maxEvents:v12 lastN:0 reversed:0];

  return v13;
}

- (void)enumerateEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 limit:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXRelevantShortcutsStream.m" lineNumber:50 description:@"Start date must be earlier than the end date."];
}

void __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXRelevantShortcutsStream: Error querying App.RelevantShortcuts stream: %@", &v4, 0xCu);
}

void __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXRelevantShortcutsStream: Invalid event App.RelevantShortcuts stream: %@", &v2, 0xCu);
}

- (void)atx_efficientRelevantShortcut:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXRelevantShortcutsStream: Error unarchiving relevant shortcut: %@", &v2, 0xCu);
}

@end