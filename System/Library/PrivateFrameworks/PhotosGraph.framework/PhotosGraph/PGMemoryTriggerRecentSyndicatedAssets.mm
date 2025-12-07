@interface PGMemoryTriggerRecentSyndicatedAssets
- (PGMemoryTriggerRecentSyndicatedAssets)initWithLoggingConnection:(id)connection photoLibrary:(id)library momentNodesWithBlockedFeatureCache:(id)cache;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerRecentSyndicatedAssets

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v82 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v11 = [reporterCopy isCancelledWithProgress:0.0];
  *(v76 + 24) = v11;
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v81 = 56;
      *&v81[4] = 2080;
      *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      v12 = MEMORY[0x277D86220];
LABEL_25:
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  photoLibrary = [(PGPhotoKitMemoryTrigger *)self photoLibrary];
  v14 = photoLibrary == 0;

  if (v14)
  {
    loggingConnection = [(PGMemoryTrigger *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMemoryTriggerRecentSyndicatedAssets]: Trigger not available without a photo library.", buf, 2u);
    }

    if (v76[3])
    {
      *(v76 + 24) = 1;
    }

    else
    {
      v37 = [reporterCopy isCancelledWithProgress:1.0];
      *(v76 + 24) = v37;
      if ((v37 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v81 = 59;
      *&v81[4] = 2080;
      *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      v12 = MEMORY[0x277D86220];
      goto LABEL_25;
    }

LABEL_26:
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_59;
  }

  localDate = [contextCopy localDate];
  v16 = MEMORY[0x277D27690];
  timeZone = [contextCopy timeZone];
  v18 = [v16 universalDateFromLocalDate:localDate inTimeZone:timeZone];

  v63 = [MEMORY[0x277D27690] dateByAddingDays:-7 toDate:v18];
  photoLibrary2 = [(PGPhotoKitMemoryTrigger *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  v62 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v61 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated > %@ && dateCreated <= %@", v63, v18];
  v21 = MEMORY[0x277CCA920];
  v79[0] = v62;
  v79[1] = v61;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
  v23 = [v21 andPredicateWithSubpredicates:v22];
  [librarySpecificFetchOptions setInternalPredicate:v23];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v60 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v24 = [v60 count];
  if (v24)
  {
    loggingConnection2 = [(PGMemoryTrigger *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v81 = v24;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGMemoryTriggerRecentSyndicatedAssets]: Found %tu recent guest", buf, 0xCu);
    }

    photoLibrary3 = [(PGPhotoKitMemoryTrigger *)self photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary3 librarySpecificFetchOptions];

    v56 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssets:v60 options:librarySpecificFetchOptions2];
    allValues = [v56 allValues];
    if ([allValues count])
    {
      v57 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:allValues inGraph:graphCopy];
      if ([v57 count])
      {
        v27 = [MEMORY[0x277CCAB58] indexSetWithIndex:1];
        [v27 addIndex:19];
        [v27 addIndex:16];
        v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28 = MEMORY[0x277D22BF8];
        v29 = +[PGGraphMomentNode memoryOfMoment];
        v30 = [v28 adjacencyWithSources:v57 relation:v29 targetsClass:objc_opt_class()];

        v31 = MEMORY[0x277D22C80];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
        v72[3] = &unk_278889448;
        v74 = &v75;
        v50 = reporterCopy;
        v73 = v50;
        v32 = [v31 progressReporterWithProgressBlock:v72];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
        v64[3] = &unk_278883698;
        v52 = v30;
        v65 = v52;
        v33 = v27;
        v66 = v33;
        selfCopy = self;
        v68 = graphCopy;
        v53 = v32;
        v69 = v53;
        v71 = &v75;
        v55 = v54;
        v70 = v55;
        [v57 enumerateIdentifiersAsCollectionsWithBlock:v64];
        if (*(v76 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v81 = 161;
            *&v81[4] = 2080;
            *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v34 = MEMORY[0x277CBEBF8];
          goto LABEL_55;
        }

        v51 = [MEMORY[0x277D27690] dateByAddingDays:5 toDate:localDate];
        v41 = objc_opt_class();
        timeZone2 = [contextCopy timeZone];
        v43 = [v41 validityIntervalForLocalStartDate:localDate localEndDate:v51 timeZone:timeZone2];

        if (v76[3])
        {
          *(v76 + 24) = 1;
        }

        else
        {
          v46 = [v50 isCancelledWithProgress:1.0];
          *(v76 + 24) = v46;
          if ((v46 & 1) == 0)
          {
            v47 = objc_opt_class();
            allObjects = [v55 allObjects];
            v34 = [v47 memoryTriggerResultsForMemoryNodesArray:allObjects withValidityInterval:v43];

LABEL_54:
LABEL_55:

            goto LABEL_56;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v81 = 165;
          *&v81[4] = 2080;
          *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v34 = MEMORY[0x277CBEBF8];
        goto LABEL_54;
      }

      loggingConnection3 = [(PGMemoryTrigger *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v81 = allValues;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: Couldn't find moment node for moment UUIDs: %@", buf, 0xCu);
      }

      if (v76[3])
      {
        *(v76 + 24) = 1;
      }

      else
      {
        v45 = [reporterCopy isCancelledWithProgress:1.0];
        *(v76 + 24) = v45;
        if ((v45 & 1) == 0)
        {
LABEL_48:
          v34 = MEMORY[0x277CBEBF8];
LABEL_56:

          goto LABEL_57;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v81 = 103;
        *&v81[4] = 2080;
        *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_48;
    }

    loggingConnection4 = [(PGMemoryTrigger *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[PGMemoryTriggerRecentSyndicatedAssets]: Cannot find moments featuring the guest assets available", buf, 2u);
    }

    if (v76[3])
    {
      *(v76 + 24) = 1;
    }

    else
    {
      v44 = [reporterCopy isCancelledWithProgress:1.0];
      *(v76 + 24) = v44;
      if ((v44 & 1) == 0)
      {
LABEL_44:
        v34 = MEMORY[0x277CBEBF8];
LABEL_57:

        goto LABEL_58;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v81 = 94;
      *&v81[4] = 2080;
      *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_44;
  }

  loggingConnection5 = [(PGMemoryTrigger *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: No recent guest assets available", buf, 2u);
  }

  if (v76[3])
  {
    *(v76 + 24) = 1;
    goto LABEL_32;
  }

  v39 = [reporterCopy isCancelledWithProgress:1.0];
  *(v76 + 24) = v39;
  if (v39)
  {
LABEL_32:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v81 = 79;
      *&v81[4] = 2080;
      *&v81[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerRecentSyndicatedAssets.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  v34 = MEMORY[0x277CBEBF8];
LABEL_58:

LABEL_59:
  _Block_object_dispose(&v75, 8);

  return v34;
}

uint64_t __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.5];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

void __94__PGMemoryTriggerRecentSyndicatedAssets_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [*(a1 + 32) targetsForSources:v6];
  v8 = [v7 subsetWithMemoryCategories:*(a1 + 40)];

  if (![(PGGraphMemory *)v8 count])
  {
    v11 = [v6 momentNodesWithMinimumNumberOfExtendedCuratedAssets:13];
    if ([v11 count])
    {
      v13 = [v11 interestingWithAlternateJunkingSubset];

      if (![v13 count])
      {
        v12 = [*(a1 + 48) loggingConnection];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v19 = [v6 anyNode];
          v29 = 138412290;
          v30 = v19;
          _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[PGMemoryTriggerRecentSyndicatedAssets]: interestingWithAlternateJunking failed for moment %@", &v29, 0xCu);
        }

        v11 = v13;
        goto LABEL_18;
      }

      v11 = [v13 subsetWithEnoughScenesProcessed];

      v14 = [v11 count];
      v15 = *(a1 + 48);
      if (v14)
      {
        v16 = [v15[3] momentNodesWithBlockedFeatureInGraph:*(a1 + 56) progressReporter:*(a1 + 64)];
        v12 = v16;
        if (*(*(*(a1 + 80) + 8) + 24) == 1)
        {
          *a4 = 1;
          goto LABEL_18;
        }

        if (![v16 containsCollection:v6])
        {
          v21 = [v6 featureNodeCollection];
          v22 = [v6 dateNodes];
          v23 = [v22 monthDayNodes];
          v24 = [v23 featureNodeCollection];
          v25 = [v21 collectionByFormingUnionWith:v24];

          v26 = [[PGGraphMemory alloc] initWithMemoryCategory:1 memoryCategorySubcategory:1001 momentNodes:v11 featureNodes:v25];
          [*(a1 + 72) addObject:v26];
          v27 = [*(a1 + 48) loggingConnection];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v6 anyNode];
            v29 = 138412546;
            v30 = v26;
            v31 = 2112;
            v32 = v28;
            _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: Created Memory %@ for %@", &v29, 0x16u);
          }

          goto LABEL_18;
        }

        v17 = [*(a1 + 48) loggingConnection];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = [v6 anyNode];
          v29 = 138412290;
          v30 = v20;
          _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGMemoryTriggerRecentSyndicatedAssets]: Moment has blocked feature %@", &v29, 0xCu);
        }

LABEL_17:

        goto LABEL_18;
      }

      v12 = [v15 loggingConnection];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v17 = [v6 anyNode];
      v29 = 138412290;
      v30 = v17;
      v18 = "[PGMemoryTriggerRecentSyndicatedAssets]: Not enough scene processed assets for moment %@";
    }

    else
    {
      v12 = [*(a1 + 48) loggingConnection];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v17 = [v6 anyNode];
      v29 = 138412290;
      v30 = v17;
      v18 = "[PGMemoryTriggerRecentSyndicatedAssets]: Not enough assets for moment %@";
    }

    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, v18, &v29, 0xCu);
    goto LABEL_17;
  }

  v9 = *(a1 + 72);
  v10 = [(PGGraphMemory *)v8 set];
  [v9 unionSet:v10];

  v11 = [*(a1 + 48) loggingConnection];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 anyNode];
    v29 = 138412546;
    v30 = v8;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[PGMemoryTriggerRecentSyndicatedAssets]: Found Memories %@ for %@", &v29, 0x16u);
LABEL_18:
  }
}

- (PGMemoryTriggerRecentSyndicatedAssets)initWithLoggingConnection:(id)connection photoLibrary:(id)library momentNodesWithBlockedFeatureCache:(id)cache
{
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = PGMemoryTriggerRecentSyndicatedAssets;
  v10 = [(PGPhotoKitMemoryTrigger *)&v13 initWithLoggingConnection:connection photoLibrary:library];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_momentNodesWithBlockedFeatureCache, cache);
  }

  return v11;
}

@end