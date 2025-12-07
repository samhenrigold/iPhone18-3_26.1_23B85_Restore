@interface PGGraphPeopleSuggestionEnrichmentProcessor
- (void)_performPeopleSuggestionForHomeWithManager:(id)manager progressReporter:(id)reporter;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphPeopleSuggestionEnrichmentProcessor

- (void)_performPeopleSuggestionForHomeWithManager:(id)manager progressReporter:(id)reporter
{
  v59 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  [managerCopy photoLibrary];
  v43 = v42 = managerCopy;
  suggestedPersonsForHome = [managerCopy suggestedPersonsForHome];
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(suggestedPersonsForHome, "count")}];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(suggestedPersonsForHome, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = suggestedPersonsForHome;
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v48 + 1) + 8 * i) objectForKeyedSubscript:@"localIdentifier"];
        if ([v14 length])
        {
          [v7 addObject:v14];
          v15 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:v14];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    librarySpecificFetchOptions = [v43 librarySpecificFetchOptions];
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"suggestedForClientType", 0];
    [librarySpecificFetchOptions setInternalPredicate:v17];

    v18 = MEMORY[0x277CD9938];
    allObjects = [v7 allObjects];
    v20 = [v18 fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

    v40 = v20;
    v21 = [v20 count];
    librarySpecificFetchOptions2 = [v43 librarySpecificFetchOptions];
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d && NOT (%K IN %@)", @"suggestedForClientType", 1, @"personUUID", v8];
    [librarySpecificFetchOptions2 setInternalPredicate:v23];

    v38 = librarySpecificFetchOptions2;
    v24 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions2];
    v25 = [v24 count];
    v39 = v21;
    v26 = reporterCopy;
    if (v21 | v25)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __106__PGGraphPeopleSuggestionEnrichmentProcessor__performPeopleSuggestionForHomeWithManager_progressReporter___block_invoke;
      v45[3] = &unk_278880B88;
      v46 = v40;
      v47 = v24;
      v44 = 0;
      v27 = [v43 performChangesAndWait:v45 error:&v44];
      v28 = v44;
      if ((v27 & 1) == 0)
      {
        v29 = +[PGLogging sharedLogging];
        loggingConnection = [v29 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = v28;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to persist people suggestion for home: %@", buf, 0xCu);
        }
      }
    }

    throughputReportBlock = [reporterCopy throughputReportBlock];

    if (throughputReportBlock)
    {
      throughputReportBlock2 = [reporterCopy throughputReportBlock];
      throughputReportBlock2[2](throughputReportBlock2, v25 + v39, 0);
    }

    v33 = +[PGLogging sharedLogging];
    loggingConnection2 = [v33 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v7 count];
      *buf = 134218496;
      v53 = v35;
      v54 = 2048;
      v55 = v39;
      v56 = 2048;
      v57 = v25;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "Suggesting %lu persons for client home (newly persisted: %lu, newly removed: %lu).", buf, 0x20u);
    }

    v36 = v42;
  }

  else
  {
    v37 = +[PGLogging sharedLogging];
    librarySpecificFetchOptions = [v37 loggingConnection];

    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_DEFAULT, "Found no persons to suggest for client home.", buf, 2u);
    }

    v26 = reporterCopy;
    v36 = managerCopy;
  }
}

void __106__PGGraphPeopleSuggestionEnrichmentProcessor__performPeopleSuggestionForHomeWithManager_progressReporter___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277CD9940] changeRequestForPerson:*(*(&v18 + 1) + 8 * v6)];
        [v7 persistSuggestionForClient:1];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CD9940] changeRequestForPerson:{*(*(&v14 + 1) + 8 * v12), v14}];
        [v13 persistSuggestionForClient:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v28 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  inventoryCopy = inventory;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v13 = os_signpost_id_generate(enrichmentLoggingConnection);
  v14 = enrichmentLoggingConnection;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PGGraphPeopleSuggestionEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v16 = mach_absolute_time();
  isResumingFullAnalysis = [inventoryCopy isResumingFullAnalysis];

  if (isResumingFullAnalysis)
  {
    [(PGGraphPeopleSuggestionEnrichmentProcessor *)self _performPeopleSuggestionForHomeWithManager:managerCopy progressReporter:reporterCopy];
    [(PGGraphPeopleSuggestionEnrichmentProcessor *)self _performPeopleSuggestionForSharedLibraryWithManager:managerCopy progressReporter:reporterCopy];
    v18 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v21 = v15;
    v22 = v21;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v13, "PGGraphPeopleSuggestionEnrichmentProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "PGGraphPeopleSuggestionEnrichmentProcessor";
      v26 = 2048;
      v27 = ((((v18 - v16) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

@end