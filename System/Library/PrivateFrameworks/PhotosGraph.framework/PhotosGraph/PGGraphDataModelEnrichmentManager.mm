@interface PGGraphDataModelEnrichmentManager
+ (NSArray)lightWeightEnrichmentProcessors;
+ (id)_allEnrichmentProcessorsWithTailorOptions:(unint64_t)options;
+ (id)enrichmentProcessorsForDataModelEnrichmentContext:(unint64_t)context;
+ (id)liveUpdateEnrichmentProcessors;
- (BOOL)_enrichDataModelWithGraphUpdateInventory:(id)inventory progressReporter:(id)reporter error:(id *)error;
- (BOOL)enrichDataModelForHighlightUUIDs:(id)ds progressReporter:(id)reporter error:(id *)error;
- (BOOL)enrichDataModelWithProgressReporter:(id)reporter error:(id *)error;
- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentContext:(unint64_t)context;
- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentProcessors:(id)processors;
- (PGGraphDataModelEnrichmentManagerDelegate)delegate;
@end

@implementation PGGraphDataModelEnrichmentManager

- (PGGraphDataModelEnrichmentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_enrichDataModelWithGraphUpdateInventory:(id)inventory progressReporter:(id)reporter error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  inventoryCopy = inventory;
  reporterCopy = reporter;
  if ([(NSArray *)self->_enrichmentProcessors count])
  {
    if (!error)
    {
      v62 = 0;
      error = &v62;
    }

    enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v10 = self->_enrichmentProcessors;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v58 objects:v68 count:16];
    v49 = enrichmentLoggingConnection;
    errorCopy = error;
    if (v11)
    {
      v12 = v11;
      requiresValidGraph = 0;
      v14 = *v59;
      v15 = &selRef_prefix;
      while (2)
      {
        v16 = 0;
        v17 = v15;
        do
        {
          if (*v59 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v58 + 1) + 8 * v16);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

            enrichmentLoggingConnection = v49;
            v19 = errorCopy;
            goto LABEL_18;
          }

          if (requiresValidGraph)
          {
            requiresValidGraph = 1;
          }

          else
          {
            requiresValidGraph = [v18 requiresValidGraph];
          }

          ++v16;
        }

        while (v12 != v16);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v58 objects:v68 count:16];
        v15 = v17;
        if (v12)
        {
          continue;
        }

        break;
      }

      enrichmentLoggingConnection = v49;
      v19 = errorCopy;
      if ((requiresValidGraph & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      if ([(PGManager *)self->_manager isReadyWithError:v19])
      {
        goto LABEL_26;
      }

      if (os_log_type_enabled(enrichmentLoggingConnection, OS_LOG_TYPE_ERROR))
      {
        manager = self->_manager;
        v44 = *v19;
        *buf = 138412546;
        v65 = manager;
        v66 = 2112;
        v67 = v44;
        _os_log_error_impl(&dword_22F0FC000, enrichmentLoggingConnection, OS_LOG_TYPE_ERROR, "DataModelEnrichment failed because DataModelEnrichmentManager has no graph - graph manager: %@, error: %@", buf, 0x16u);
      }

      LOBYTE(v20) = 0;
    }

    else
    {

LABEL_24:
      if (os_log_type_enabled(enrichmentLoggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, enrichmentLoggingConnection, OS_LOG_TYPE_INFO, "DataModelEnrichmentManager skip graph is ready check", buf, 2u);
      }

LABEL_26:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v22 = enrichmentLoggingConnection;
      v23 = os_signpost_id_generate(v22);
      v24 = v22;
      v25 = v24;
      v48 = v23 - 1;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "EnrichDataModelWithEnrichmentProcessors", "", buf, 2u);
      }

      spid = v23;

      info = 0;
      mach_timebase_info(&info);
      v47 = mach_absolute_time();
      v26 = [(NSArray *)self->_enrichmentProcessors count];
      v27 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = self->_enrichmentProcessors;
      v28 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v28)
      {
        v46 = reporterCopy;
        v29 = 1.0 / v26;
        v30 = *v54;
        v31 = 0.0;
        while (2)
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v54 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v53 + 1) + 8 * i);
            v34 = objc_autoreleasePoolPush();
            v31 = v29 + v31;
            v35 = [v27 childProgressReporterToCheckpoint:{v31, spid}];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v65 = v33;
              _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "DataModelEnrichment - enriching data model with processor: %@", buf, 0xCu);
            }

            if (self->_forceRun || !WeakRetained || [WeakRetained enrichmentManager:self shouldRunProcessor:v33])
            {
              [v33 enrichDataModelWithManager:self->_manager curationContext:self->_curationContext graphUpdateInventory:inventoryCopy progressReporter:v35];
              if ([v35 isCancelled])
              {
                v28 = [PGError errorForCode:-4];
                [WeakRetained enrichmentManager:self didCancelProcessor:v33];

                objc_autoreleasePoolPop(v34);
                v20 = 0;
                goto LABEL_45;
              }

              [WeakRetained enrichmentManager:self didRunProcessor:v33];
            }

            objc_autoreleasePoolPop(v34);
          }

          v28 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        v20 = 1;
LABEL_45:
        reporterCopy = v46;
        enrichmentLoggingConnection = v49;
      }

      else
      {
        v20 = 1;
      }

      v36 = v28;
      *errorCopy = v28;
      v37 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v40 = v25;
      v41 = v40;
      if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v41, OS_SIGNPOST_INTERVAL_END, spid, "EnrichDataModelWithEnrichmentProcessors", "", buf, 2u);
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v65 = "EnrichDataModelWithEnrichmentProcessors";
        v66 = 2048;
        v67 = ((((v37 - v47) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      [WeakRetained enrichmentManager:self didFinishEnrichmentSuccessfully:{v20, spid}];
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  return v20;
}

- (BOOL)enrichDataModelWithProgressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  v7 = [PGGraphUpdate alloc];
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  v9 = [(PGGraphUpdate *)v7 initWithPhotoLibrary:photoLibrary updateType:4];

  [(PGGraphUpdate *)v9 setIsResumingFullAnalysis:1];
  LOBYTE(error) = [(PGGraphDataModelEnrichmentManager *)self _enrichDataModelWithGraphUpdateInventory:v9 progressReporter:reporterCopy error:error];

  return error;
}

- (BOOL)enrichDataModelForHighlightUUIDs:(id)ds progressReporter:(id)reporter error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  reporterCopy = reporter;
  v10 = [PGGraphUpdate alloc];
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  v12 = [(PGGraphUpdate *)v10 initWithPhotoLibrary:photoLibrary updateType:0];

  [(PGGraphUpdate *)v12 setIsResumingFullAnalysis:0];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = dsCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        v19 = [PGGraphHighlightChange alloc];
        v20 = [(PGGraphHighlightChange *)v19 initWithHighlightUUID:v18 updateTypes:127, v23];
        [(PGGraphUpdate *)v12 addChange:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v21 = [(PGGraphDataModelEnrichmentManager *)self _enrichDataModelWithGraphUpdateInventory:v12 progressReporter:reporterCopy error:error];
  return v21;
}

- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentProcessors:(id)processors
{
  managerCopy = manager;
  processorsCopy = processors;
  v16.receiver = self;
  v16.super_class = PGGraphDataModelEnrichmentManager;
  v9 = [(PGGraphDataModelEnrichmentManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enrichmentProcessors, processors);
    objc_storeStrong(&v10->_manager, manager);
    v10->_enrichmentContext = 0;
    v11 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary = [(PGManager *)v10->_manager photoLibrary];
    v13 = [v11 initWithPhotoLibrary:photoLibrary];
    curationContext = v10->_curationContext;
    v10->_curationContext = v13;

    v10->_forceRun = 0;
  }

  return v10;
}

- (PGGraphDataModelEnrichmentManager)initWithManager:(id)manager enrichmentContext:(unint64_t)context
{
  managerCopy = manager;
  v7 = [PGGraphDataModelEnrichmentManager enrichmentProcessorsForDataModelEnrichmentContext:context];
  v8 = [(PGGraphDataModelEnrichmentManager *)self initWithManager:managerCopy enrichmentProcessors:v7];

  if (v8)
  {
    v8->_enrichmentContext = context;
  }

  return v8;
}

+ (id)enrichmentProcessorsForDataModelEnrichmentContext:(unint64_t)context
{
  if (context == 3)
  {
    liveUpdateEnrichmentProcessors = [self liveUpdateEnrichmentProcessors];
  }

  else if (context == 1)
  {
    liveUpdateEnrichmentProcessors = [self backgroundEnrichmentProcessors];
  }

  else
  {
    liveUpdateEnrichmentProcessors = MEMORY[0x277CBEBF8];
  }

  return liveUpdateEnrichmentProcessors;
}

+ (id)liveUpdateEnrichmentProcessors
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PGGraphPeopleSuggestionEnrichmentProcessor);
  v3 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:255, v2];
  v9[1] = v3;
  v4 = objc_alloc_init(PGGraphHighlightCollectionEnrichmentProcessor);
  v9[2] = v4;
  v5 = objc_alloc_init(PGGraphAssetRevGeocodeEnrichmentProcessor);
  v9[3] = v5;
  v6 = objc_alloc_init(PGGraphSearchEnrichmentProcessor);
  v9[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  return v7;
}

+ (NSArray)lightWeightEnrichmentProcessors
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:255];
  v7[0] = v2;
  v3 = objc_alloc_init(PGGraphHighlightCollectionEnrichmentProcessor);
  v7[1] = v3;
  v4 = objc_alloc_init(PGGraphAssetRevGeocodeEnrichmentProcessor);
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)_allEnrichmentProcessorsWithTailorOptions:(unint64_t)options
{
  v12[6] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PGGraphPeopleSuggestionEnrichmentProcessor);
  v12[0] = v4;
  v5 = [[PGGraphPhotosHighlightEnrichmentProcessor alloc] initWithHighlightTailorOptions:options];
  v12[1] = v5;
  v6 = objc_alloc_init(PGGraphHighlightCollectionEnrichmentProcessor);
  v12[2] = v6;
  v7 = objc_alloc_init(PGGraphSearchEnrichmentProcessor);
  v12[3] = v7;
  v8 = objc_alloc_init(PGGraphAssetRevGeocodeEnrichmentProcessor);
  v12[4] = v8;
  v9 = objc_alloc_init(PGGraphPortraitDonationEnrichmentProcessor);
  v12[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  return v10;
}

@end