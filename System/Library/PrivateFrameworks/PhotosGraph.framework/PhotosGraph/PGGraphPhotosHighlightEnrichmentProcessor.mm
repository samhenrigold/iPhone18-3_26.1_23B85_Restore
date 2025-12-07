@interface PGGraphPhotosHighlightEnrichmentProcessor
+ (BOOL)_hasEnoughHighlightsInPhotoLibrary:(id)library atEnrichmentState:(unsigned __int16)state aboveThreshold:(double)threshold;
- (PGGraphPhotosHighlightEnrichmentProcessor)initWithHighlightTailorOptions:(unint64_t)options;
- (id)_dayGroupHighlightsToEnrichForDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphPhotosHighlightEnrichmentProcessor

- (id)_dayGroupHighlightsToEnrichForDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights
{
  highlightsCopy = highlights;
  groupHighlightsCopy = groupHighlights;
  if ([highlightsCopy count])
  {
    firstObject = [highlightsCopy firstObject];
    v8 = [objc_opt_class() fetchParentDayGroupHighlightsForDayHighlights:highlightsCopy];
    if ([v8 count])
    {
      v9 = [MEMORY[0x277CBEB58] setWithArray:v8];
      [v9 addObjectsFromArray:groupHighlightsCopy];
      allObjects = [v9 allObjects];

      goto LABEL_6;
    }
  }

  allObjects = groupHighlightsCopy;
LABEL_6:

  return allObjects;
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v67 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  inventoryCopy = inventory;
  reporterCopy = reporter;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v13 = [reporterCopy isCancelledWithProgress:0.0];
  *(v62 + 24) = v13;
  if (!v13)
  {
    enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
    v15 = os_signpost_id_generate(enrichmentLoggingConnection);
    v16 = enrichmentLoggingConnection;
    v17 = v16;
    spid = v15;
    v48 = v15 - 1;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGGraphPhotosHighlightEnrichmentProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v46 = mach_absolute_time();
    v18 = [PGHighlightTailor alloc];
    workingContextForEnrichment = [managerCopy workingContextForEnrichment];
    v49 = [(PGHighlightTailor *)v18 initWithWorkingContext:workingContextForEnrichment];

    updateType = [inventoryCopy updateType];
    isResumingFullAnalysis = [inventoryCopy isResumingFullAnalysis];
    if (updateType == 4)
    {
      v22 = 1;
    }

    else
    {
      v22 = isResumingFullAnalysis;
    }

    if (v22 == 1)
    {
      allObjects = [(PGHighlightTailor *)v49 allHighlightsNeedingEnrichmentWithOptions:self->_highlightTailorOptions];
      v24 = [allObjects count];
      highlightTailorOptions = self->_highlightTailorOptions;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
      v57[3] = &unk_278889448;
      v59 = &v61;
      v58 = reporterCopy;
      [(PGHighlightTailor *)v49 enrichHighlights:allObjects options:highlightTailorOptions progressBlock:v57];
      if (*(v62 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v66 = 72;
          *&v66[4] = 2080;
          *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_42;
      }

      v30 = v58;
      goto LABEL_30;
    }

    if (updateType == 2)
    {
      v26 = 127;
    }

    else
    {
      v26 = 4;
    }

    v27 = [inventoryCopy highlightsToProcessForKind:0 withHighlightUpdateTypes:v26 includeHighlightsToIngest:updateType == 2];
    allObjects = [v27 allObjects];

    v28 = [inventoryCopy highlightsToProcessForKind:3 withHighlightUpdateTypes:v26 includeHighlightsToIngest:updateType == 2];
    allObjects2 = [v28 allObjects];

    v45 = [allObjects count];
    v44 = [allObjects2 count];
    v30 = [(PGGraphPhotosHighlightEnrichmentProcessor *)self _dayGroupHighlightsToEnrichForDayHighlights:allObjects dayGroupHighlights:allObjects2];

    v31 = self->_highlightTailorOptions;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_246;
    v54[3] = &unk_278889448;
    v56 = &v61;
    v32 = reporterCopy;
    v55 = v32;
    [(PGHighlightTailor *)v49 enrichDayHighlights:allObjects dayGroupHighlights:v30 withOptions:v31 progressBlock:v54];
    if (*(v62 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v66 = 91;
        *&v66[4] = 2080;
        *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_27:

      goto LABEL_42;
    }

    if ((~LODWORD(self->_highlightTailorOptions) & 0x26) != 0)
    {
      v33 = [inventoryCopy highlightsToProcessForKind:0 withHighlightUpdateTypes:123 includeHighlightsToIngest:1];
      allObjects3 = [v33 allObjects];

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_247;
      v51[3] = &unk_278889448;
      v53 = &v61;
      v52 = v32;
      [(PGHighlightTailor *)v49 enrichHighlights:allObjects3 options:-1073741786 progressBlock:v51];
      if (*(v62 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v66 = 104;
          *&v66[4] = 2080;
          *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_27;
      }
    }

    v24 = v44 + v45;
LABEL_30:

    v35 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v38 = v17;
    v39 = v38;
    if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphPhotosHighlightEnrichmentProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v66 = "PGGraphPhotosHighlightEnrichmentProcessor";
      *&v66[8] = 2048;
      *&v66[10] = ((((v35 - v46) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    throughputReportBlock = [reporterCopy throughputReportBlock];
    v41 = throughputReportBlock == 0;

    if (!v41)
    {
      throughputReportBlock2 = [reporterCopy throughputReportBlock];
      throughputReportBlock2[2](throughputReportBlock2, v24, 0);
    }

    if (v62[3])
    {
      *(v62 + 24) = 1;
      goto LABEL_40;
    }

    v43 = [reporterCopy isCancelledWithProgress:1.0];
    *(v62 + 24) = v43;
    if (v43)
    {
LABEL_40:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v66 = 114;
        *&v66[4] = 2080;
        *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v66 = 54;
    *&v66[4] = 2080;
    *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPhotosHighlightEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_43:
  _Block_object_dispose(&v61, 8);
}

uint64_t __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_246(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.9];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphPhotosHighlightEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_247(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.1 + 0.9];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGGraphPhotosHighlightEnrichmentProcessor)initWithHighlightTailorOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = PGGraphPhotosHighlightEnrichmentProcessor;
  result = [(PGGraphPhotosHighlightEnrichmentProcessor *)&v5 init];
  if (result)
  {
    result->_highlightTailorOptions = options;
  }

  return result;
}

+ (BOOL)_hasEnoughHighlightsInPhotoLibrary:(id)library atEnrichmentState:(unsigned __int16)state aboveThreshold:(double)threshold
{
  stateCopy = state;
  v28 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v9 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
    stateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %d", @"enrichmentState", stateCopy];
    [librarySpecificFetchOptions2 setInternalPredicate:stateCopy];

    [librarySpecificFetchOptions2 setShouldPrefetchCount:1];
    v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions2];
    v15 = [v14 count];
    v16 = v15 / v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = PHShortDescriptionForPhotosHighlightEnrichmentState();
      *buf = 134218754;
      v21 = v16 * 100.0;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enriched %.2f%% highlights (%tu/%tu in total) at state %@", buf, 0x2Au);
    }

    v18 = v16 >= threshold;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end