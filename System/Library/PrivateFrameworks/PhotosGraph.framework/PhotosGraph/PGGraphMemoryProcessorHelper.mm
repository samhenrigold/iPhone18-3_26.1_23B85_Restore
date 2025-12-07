@interface PGGraphMemoryProcessorHelper
+ (id)_fetchLocalMemoriesWithFetchOptions:(id)options;
+ (id)_localMemoryByUniqueIdentifierInPhotoLibrary:(id)library withAdditionalPredicate:(id)predicate;
+ (id)localMemoryByUniqueIdentifierForMemoryUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:(id)identifiers inPhotoLibrary:(id)library;
+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:(id)memories inPhotoLibrary:(id)library;
+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:(id)identifiers localMemoryByUniqueIdentifierCache:(id)cache inPhotoLibrary:(id)library;
@end

@implementation PGGraphMemoryProcessorHelper

+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:(id)memories inPhotoLibrary:(id)library
{
  v23 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  libraryCopy = library;
  if ([memoriesCopy count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __109__PGGraphMemoryProcessorHelper_resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories_inPhotoLibrary___block_invoke;
    v17[3] = &unk_27888A660;
    v7 = memoriesCopy;
    v18 = v7;
    v16 = 0;
    v8 = [libraryCopy performChangesAndWait:v17 error:&v16];
    v9 = v16;
    v10 = +[PGLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    v12 = loggingConnection;
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 count];
        *buf = 67109120;
        v20 = v14;
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoryProcessorHelper] Successfully reset %d local memories", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v7 count];
      *buf = 67109378;
      v20 = v15;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGGraphMemoryProcessorHelper] Failed to reset %d local memories, error=%@", buf, 0x12u);
    }
  }
}

void __109__PGGraphMemoryProcessorHelper_resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories_inPhotoLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD98E8] changeRequestForMemory:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setLastEnrichmentDate:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:(id)identifiers localMemoryByUniqueIdentifierCache:(id)cache inPhotoLibrary:(id)library
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  cacheCopy = cache;
  libraryCopy = library;
  if ([identifiersCopy count] && objc_msgSend(cacheCopy, "count"))
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = identifiersCopy;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [cacheCopy objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v15), v17}];
          if (v16)
          {
            [array addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    [objc_opt_class() resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:array inPhotoLibrary:libraryCopy];
  }
}

+ (id)_fetchLocalMemoriesWithFetchOptions:(id)options
{
  v24 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = +[PGLogging sharedLogging];
  loggingConnection = [v4 loggingConnection];

  v16 = optionsCopy;
  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:optionsCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        graphMemoryIdentifier = [v13 graphMemoryIdentifier];
        if (graphMemoryIdentifier)
        {
          [dictionary setObject:v13 forKeyedSubscript:graphMemoryIdentifier];
        }

        else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v13;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphMemoryProcessorHelper] graphMemoryIdentifier is nil for %@", buf, 0xCu);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  return dictionary;
}

+ (id)_localMemoryByUniqueIdentifierInPhotoLibrary:(id)library withAdditionalPredicate:(id)predicate
{
  libraryCopy = library;
  predicateCopy = predicate;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"pendingState", 2];
  [array addObject:v8];

  if (predicateCopy)
  {
    [array addObject:predicateCopy];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludeRejectedMemories:1];
  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
  [librarySpecificFetchOptions setInternalPredicate:v10];

  v11 = [objc_opt_class() _fetchLocalMemoriesWithFetchOptions:librarySpecificFetchOptions];

  return v11;
}

+ (id)localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:(id)identifiers inPhotoLibrary:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  if ([identifiersCopy count])
  {
    identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"graphMemoryIdentifier", identifiersCopy];
    v9 = [self _localMemoryByUniqueIdentifierInPhotoLibrary:libraryCopy withAdditionalPredicate:identifiersCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

+ (id)localMemoryByUniqueIdentifierForMemoryUUIDs:(id)ds inPhotoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];
    v9 = [self _localMemoryByUniqueIdentifierInPhotoLibrary:libraryCopy withAdditionalPredicate:dsCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

@end