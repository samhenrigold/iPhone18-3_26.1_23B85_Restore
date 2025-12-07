@interface ARPHomeControlCorrelationUtilities
- (ARPHomeControlCorrelationUtilities)initWithKnowledgeStore:(id)store;
- (BOOL)writeArchive:(id)archive toFilePath:(id)path;
- (id)firstHomeKitEventsWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending;
- (id)homeKitAccessoriesWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending limit:(int64_t)limit;
- (id)homeKitEventsWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending;
- (id)homeKitScenesWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending limit:(int64_t)limit;
@end

@implementation ARPHomeControlCorrelationUtilities

- (ARPHomeControlCorrelationUtilities)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ARPHomeControlCorrelationUtilities;
  v6 = [(ARPHomeControlCorrelationUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, store);
  }

  return v7;
}

- (BOOL)writeArchive:(id)archive toFilePath:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  pathCopy = path;
  v7 = pathCopy;
  if (archiveCopy && pathCopy)
  {
    v25 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:archiveCopy requiringSecureCoding:1 error:&v25];
    v9 = v25;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
LABEL_15:

      goto LABEL_16;
    }

    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v24 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v24];
    v10 = v24;

    if (!v10)
    {
      v23 = 0;
      [v8 writeToFile:v7 options:1073741825 error:&v23];
      v10 = v23;
      v14 = ARPLog(v10);
      v15 = v14;
      if (!v10)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v7;
          _os_log_impl(&dword_23EB15000, v15, OS_LOG_TYPE_DEFAULT, "Successfully persisted correlations dictionary produced when correlating Home Controls and MicroLocations: %@", buf, 0xCu);
        }

        notify_post([@"com.apple.AirPlayRoutePrediction.ARPHomeControlSuggester.ReQuery" UTF8String]);
        v10 = 0;
        v11 = 1;
        goto LABEL_14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ARPHomeControlCorrelationUtilities *)v10 writeArchive:v15 toFilePath:v16, v17, v18, v19, v20, v21];
      }
    }

    v11 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = ARPLog(pathCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ARPHomeControlCorrelationUtilities writeArchive:v10 toFilePath:?];
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (id)firstHomeKitEventsWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  predicateCopy = predicate;
  v7 = [(ARPHomeControlCorrelationUtilities *)self homeKitAccessoriesWithPredicate:predicateCopy sortStartDateAscending:ascendingCopy limit:1];
  v8 = [(ARPHomeControlCorrelationUtilities *)self homeKitScenesWithPredicate:predicateCopy sortStartDateAscending:ascendingCopy limit:1];

  v9 = [v7 arrayByAddingObjectsFromArray:v8];
  v10 = v9;
  if (ascendingCopy)
  {
    v11 = &__block_literal_global;
  }

  else
  {
    v11 = &__block_literal_global_4;
  }

  v12 = [v9 sortedArrayUsingComparator:v11];
  firstObject = [v12 firstObject];

  return firstObject;
}

uint64_t __93__ARPHomeControlCorrelationUtilities_firstHomeKitEventsWithPredicate_sortStartDateAscending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __93__ARPHomeControlCorrelationUtilities_firstHomeKitEventsWithPredicate_sortStartDateAscending___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startDate];
  v7 = [v5 startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v11 = [v4 startDate];
    v12 = [v5 startDate];
    [v11 timeIntervalSinceDate:v12];
    v10 = v13 < 0.0;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)homeKitEventsWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  predicateCopy = predicate;
  v7 = [(ARPHomeControlCorrelationUtilities *)self homeKitAccessoriesWithPredicate:predicateCopy sortStartDateAscending:ascendingCopy limit:3000];
  v8 = [(ARPHomeControlCorrelationUtilities *)self homeKitScenesWithPredicate:predicateCopy sortStartDateAscending:ascendingCopy limit:2000];

  v9 = [v7 arrayByAddingObjectsFromArray:v8];
  v10 = v9;
  if (ascendingCopy)
  {
    v11 = &__block_literal_global_6;
  }

  else
  {
    v11 = &__block_literal_global_8;
  }

  v12 = [v9 sortedArrayUsingComparator:v11];

  return v12;
}

uint64_t __88__ARPHomeControlCorrelationUtilities_homeKitEventsWithPredicate_sortStartDateAscending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __88__ARPHomeControlCorrelationUtilities_homeKitEventsWithPredicate_sortStartDateAscending___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startDate];
  v7 = [v5 startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v11 = [v4 startDate];
    v12 = [v5 startDate];
    [v11 timeIntervalSinceDate:v12];
    v10 = v13 < 0.0;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)homeKitAccessoriesWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending limit:(int64_t)limit
{
  ascendingCopy = ascending;
  v39[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  homeKitAccessoryControlStream = [MEMORY[0x277CFE298] homeKitAccessoryControlStream];
  v39[0] = homeKitAccessoryControlStream;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

  v11 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:ascendingCopy];
  v38 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];

  v13 = MEMORY[0x277CFE260];
  eligibleForSuggestions = [MEMORY[0x277CFE220] eligibleForSuggestions];
  v15 = [v13 predicateForObjectsWithMetadataKey:eligibleForSuggestions andValue:&unk_285142960];

  v16 = MEMORY[0x277CFE1E0];
  v17 = MEMORY[0x277CCA920];
  v37[0] = predicateCopy;
  v37[1] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  v20 = [v16 eventQueryWithPredicate:v19 eventStreams:v10 offset:0 limit:limit sortDescriptors:v12];

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPHomeControlCorrelationUtilities.m"];
  v22 = [v21 stringByAppendingFormat:@":%d", 129];
  [v20 setClientName:v22];

  [v20 setTracker:&__block_literal_global_23];
  [v20 setExecuteConcurrently:1];
  knowledgeStore = [(ARPHomeControlCorrelationUtilities *)self knowledgeStore];
  v36 = 0;
  v24 = [knowledgeStore executeQuery:v20 error:&v36];
  v25 = v36;

  if (v25)
  {
    v27 = ARPLog(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(ARPHomeControlCorrelationUtilities *)v25 homeKitAccessoriesWithPredicate:v27 sortStartDateAscending:v28 limit:v29, v30, v31, v32, v33];
    }

    v34 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v34 = v24;
  }

  return v34;
}

- (id)homeKitScenesWithPredicate:(id)predicate sortStartDateAscending:(BOOL)ascending limit:(int64_t)limit
{
  ascendingCopy = ascending;
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CFE298];
  predicateCopy = predicate;
  homeKitSceneStream = [v8 homeKitSceneStream];
  v32[0] = homeKitSceneStream;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  v12 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:ascendingCopy];
  v31 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

  v14 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:predicateCopy eventStreams:v11 offset:0 limit:limit sortDescriptors:v13];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPHomeControlCorrelationUtilities.m"];
  v16 = [v15 stringByAppendingFormat:@":%d", 151];
  [v14 setClientName:v16];

  [v14 setTracker:&__block_literal_global_25];
  [v14 setExecuteConcurrently:1];
  knowledgeStore = [(ARPHomeControlCorrelationUtilities *)self knowledgeStore];
  v30 = 0;
  v18 = [knowledgeStore executeQuery:v14 error:&v30];
  v19 = v30;

  if (v19)
  {
    v21 = ARPLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(ARPHomeControlCorrelationUtilities *)v19 homeKitScenesWithPredicate:v21 sortStartDateAscending:v22 limit:v23, v24, v25, v26, v27];
    }

    v28 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v28 = v18;
  }

  return v28;
}

- (void)writeArchive:(uint64_t)a3 toFilePath:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_23EB15000, a2, a3, "Error when trying to persist Home Controls MicroLocation Correlation: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)homeKitAccessoriesWithPredicate:(uint64_t)a3 sortStartDateAscending:(uint64_t)a4 limit:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_23EB15000, a2, a3, "Error querying HomeKit Accessory events from knowledge store: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)homeKitScenesWithPredicate:(uint64_t)a3 sortStartDateAscending:(uint64_t)a4 limit:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_23EB15000, a2, a3, "Error querying HomeKit Scene events from knowledge store: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end