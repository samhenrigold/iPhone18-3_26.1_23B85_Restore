@interface ATXDocumentInteractionStream
- (id)getDocumentsOpenedInLastMonth;
- (void)enumerateDocumentInteractionEventsFromStartDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit block:(id)a7;
@end

@implementation ATXDocumentInteractionStream

- (void)enumerateDocumentInteractionEventsFromStartDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit block:(id)a7
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v16 = a7;
  if ([dateCopy compare:endDateCopy] != -1)
  {
    [ATXDocumentInteractionStream enumerateDocumentInteractionEventsFromStartDate:a2 endDate:self filterBlock:? limit:? block:?];
  }

  v17 = [(ATXDocumentInteractionStream *)self _documentInteractionPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_23;
  v21[3] = &unk_2785904F8;
  v22 = blockCopy;
  v23 = v16;
  v18 = v16;
  v19 = blockCopy;
  v20 = [v17 sinkWithCompletion:&__block_literal_global_9 receiveInput:v21];
}

void __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_cold_1(v2, v5);
    }
  }
}

void __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_23(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [ATXDocumentInteractionEvent alloc];
  v4 = [v10 eventBody];
  v5 = [(ATXDocumentInteractionEvent *)v3 initWithBMAppDocumentInteraction:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    if (!v6 || (*(v6 + 16))(v6, v5))
    {
      v7 = *(a1 + 40);
      v8 = MEMORY[0x277CBEAA8];
      [v10 timestamp];
      v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
      (*(v7 + 16))(v7, v5, v9);
    }
  }
}

- (id)getDocumentsOpenedInLastMonth
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  date = [MEMORY[0x277CBEAA8] date];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_2;
  v16[3] = &unk_278590540;
  v17 = v3;
  v7 = v3;
  [(ATXDocumentInteractionStream *)self enumerateDocumentInteractionEventsFromStartDate:v5 endDate:date filterBlock:&__block_literal_global_31 limit:1000000 block:v16];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3;
  v14 = &unk_278590568;
  v15 = v4;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

uint64_t __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {
    v3 = [v2 bookmarkData];

    if (v3)
    {
      v3 = [v2 isRemote] ^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D42648];
  v6 = a3;
  v7 = a2;
  v10 = [[v5 alloc] initWithFirst:v7 second:v6];

  v8 = *(a1 + 32);
  v9 = [v7 originalFileURL];

  [v8 setObject:v10 forKeyedSubscript:v9];
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [ATXFileIdentityWithMetadata alloc];
  v7 = [v5 first];
  v8 = [v7 bookmarkData];
  v9 = v5;
  v10 = [v5 first];
  v11 = [v10 bundleIdentifier];
  v12 = [(ATXFileIdentityWithMetadata *)v6 initWithItemURL:v4 bookmarkData:v8 dateLastOpened:0 dateModified:0 dateCreated:0 bundleIdentifier:v11];

  v42 = 0;
  v39 = v12;
  v13 = [(ATXFileIdentityWithMetadata *)v12 resolveItemURLWithError:&v42];
  v14 = v42;
  v15 = v14;
  if (!v13 || v14)
  {
    v16 = __atxlog_handle_default(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_1();
    }

    v17 = v4;
    v13 = v17;
  }

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v13 path];
  v41 = 0;
  v20 = [v18 attributesOfItemAtPath:v19 error:&v41];
  v21 = v41;

  v37 = v15;
  v38 = v13;
  v35 = v20;
  v36 = v21;
  if (!v20 || v21)
  {
    v26 = __atxlog_handle_default(v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_2(v13, v21, v26);
    }

    v23 = v4;

    v25 = 0;
    v24 = 0;
  }

  else
  {
    v23 = v4;
    v24 = [v20 objectForKeyedSubscript:{*MEMORY[0x277CCA150], v20, 0, v15, v38}];
    v25 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCA108]];
  }

  v27 = [ATXFileIdentityWithMetadata alloc];
  v28 = v9;
  v29 = [v9 first];
  v30 = [v29 bookmarkData];
  v31 = [v9 second];
  v32 = [v28 first];
  v33 = [v32 bundleIdentifier];
  v34 = [(ATXFileIdentityWithMetadata *)v27 initWithItemURL:v23 bookmarkData:v30 dateLastOpened:v31 dateModified:v24 dateCreated:v25 bundleIdentifier:v33];

  [*(a1 + 32) addObject:v34];
}

- (void)enumerateDocumentInteractionEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 filterBlock:limit:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDocumentInteractionStream.m" lineNumber:42 description:@"Start date must be earlier than the end date."];
}

void __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXDocumentInteractionStream: Error querying document interaction stream: %@", &v4, 0xCu);
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  v3 = v0;
  _os_log_error_impl(&dword_226368000, v1, OS_LOG_TYPE_ERROR, "Failed to resolve bookmark for URL %@, falling back to original url: %@", v2, 0x16u);
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  OUTLINED_FUNCTION_0_4();
  v7 = a2;
  _os_log_error_impl(&dword_226368000, a3, OS_LOG_TYPE_ERROR, "Failed to get attributes for file %@: %@", v6, 0x16u);
}

@end