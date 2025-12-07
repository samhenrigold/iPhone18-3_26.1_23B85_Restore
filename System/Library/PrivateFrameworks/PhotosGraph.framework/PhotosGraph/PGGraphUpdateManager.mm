@interface PGGraphUpdateManager
- (BOOL)_performEnrichmentWithGraphUpdateInventory:(id)inventory enrichmentContext:(unint64_t)context progressBlock:(id)block error:(id *)error;
- (BOOL)stopRequested;
- (PGGraphUpdateManager)initWithGraphManager:(id)manager;
- (id)description;
- (void)_onStopRequestedWasListening:(BOOL)listening;
- (void)_performRebuildWithGraphIngestRecipe:(id)recipe progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)_processRebuild;
- (void)_triggerFullRebuildDuringLiveUpdate:(BOOL)update graphIngestRecipe:(id)recipe progressBlock:(id)block keepExistingGraph:(BOOL)graph completionBlock:(id)completionBlock;
- (void)_triggerUpdateForGraphUpdate:(id)update;
- (void)performFullRebuildWithProgressBlock:(id)block completionBlock:(id)completionBlock;
- (void)setProcessingState:(unsigned __int8)state;
@end

@implementation PGGraphUpdateManager

- (BOOL)_performEnrichmentWithGraphUpdateInventory:(id)inventory enrichmentContext:(unint64_t)context progressBlock:(id)block error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  inventoryCopy = inventory;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
  v13 = os_signpost_id_generate(enrichmentLoggingConnection);
  v14 = enrichmentLoggingConnection;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EnrichmentUpdate", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v30 = mach_absolute_time();
  v16 = [PGGraphDataModelEnrichmentManager enrichmentProcessorsForDataModelEnrichmentContext:context];
  v17 = [PGGraphDataModelEnrichmentManager alloc];
  manager = [(PGGraphUpdateManager *)self manager];
  v19 = [(PGGraphDataModelEnrichmentManager *)v17 initWithManager:manager enrichmentProcessors:v16];

  v20 = MEMORY[0x277D22C80];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __105__PGGraphUpdateManager__performEnrichmentWithGraphUpdateInventory_enrichmentContext_progressBlock_error___block_invoke;
  v32[3] = &unk_27888A188;
  v21 = v11;
  v33 = v21;
  v34 = v38;
  v35 = &v39;
  v36 = 0x3F847AE147AE147BLL;
  v22 = [v20 progressReporterWithProgressBlock:v32];
  v23 = [(PGGraphDataModelEnrichmentManager *)v19 enrichDataModelWithGraphUpdateInventory:inventoryCopy progressReporter:v22 error:error];
  if (error && *(v40 + 24))
  {
    *error = [PGError errorForCode:-4];
    if ((v40[3] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!*(v40 + 24))
  {
LABEL_7:
    v24 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v27 = v15;
    v28 = v27;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v13, "EnrichmentUpdate", "", buf, 2u);
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v44 = "EnrichmentUpdate";
      *&v44[8] = 2048;
      *&v44[10] = ((((v24 - v30) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v44 = 491;
    *&v44[4] = 2080;
    *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphUpdateManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v23 = 0;
LABEL_16:

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v39, 8);

  return v23;
}

void __105__PGGraphUpdateManager__performEnrichmentWithGraphUpdateInventory_enrichmentContext_progressBlock_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_triggerUpdateForGraphUpdate:(id)update
{
  v40 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dispatch_assert_queue_V2(self->_processingQueue);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__19467;
  v32 = __Block_byref_object_dispose__19468;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__19467;
  v26 = __Block_byref_object_dispose__19468;
  v5 = updateCopy;
  v27 = v5;
  v6 = dispatch_block_create(0, &__block_literal_global_257);
  manager = self->_manager;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_2;
  v21[3] = &unk_278882E50;
  v21[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_3;
  v16[3] = &unk_2788812F8;
  v18 = &v34;
  v19 = &v28;
  v20 = &v22;
  v8 = v6;
  v17 = v8;
  [(PGManager *)manager startGraphUpdate:v5 progressBlock:v21 completionBlock:v16];
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v35 + 24) == 1 && ![(PGGraphUpdateManager *)self stopRequested]&& [(PGGraphUpdateManager *)self executionContext]!= 2)
  {
    if ([(PGGraphUpdateManager *)self executionContext]== 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = v23[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_4;
    v15[3] = &unk_278882E50;
    v15[4] = self;
    v11 = v29;
    obj = v29[5];
    v12 = [(PGGraphUpdateManager *)self _performEnrichmentWithGraphUpdateInventory:v10 enrichmentContext:v9 progressBlock:v15 error:&obj];
    objc_storeStrong(v11 + 5, obj);
    *(v35 + 24) = v12;
  }

  if ((v35[3] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = v29[5];
    *buf = 138412290;
    v39 = v13;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GraphLiveUpdate - Update failed with error %@", buf, 0xCu);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
}

void *__53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) stopRequested];
  *a2 = result;
  return result;
}

void __53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_3(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  (*(a1[4] + 16))();
}

void *__53__PGGraphUpdateManager__triggerUpdateForGraphUpdate___block_invoke_4(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) stopRequested];
  *a2 = result;
  return result;
}

- (void)_triggerFullRebuildDuringLiveUpdate:(BOOL)update graphIngestRecipe:(id)recipe progressBlock:(id)block keepExistingGraph:(BOOL)graph completionBlock:(id)completionBlock
{
  graphCopy = graph;
  updateCopy = update;
  v77 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_processingQueue);
  v45 = blockCopy;
  v14 = _Block_copy(blockCopy);
  v15 = 0.0;
  if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
LABEL_7:
    graphLoggingConnection = [(PGManager *)self->_manager graphLoggingConnection];
    v18 = os_signpost_id_generate(graphLoggingConnection);
    v19 = graphLoggingConnection;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PerformFullRebuild", "", &buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v42 = mach_absolute_time();
    v43 = v14;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    buf = 0;
    *&v73 = &buf;
    *(&v73 + 1) = 0x3032000000;
    v74 = __Block_byref_object_copy__19467;
    v75 = __Block_byref_object_dispose__19468;
    v76 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__19467;
    v63 = __Block_byref_object_dispose__19468;
    v64 = 0;
    if (updateCopy)
    {
      v21 = 0.5;
    }

    else
    {
      v21 = 1.0;
    }

    v22 = dispatch_block_create(0, &__block_literal_global_19475);
    manager = selfCopy->_manager;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __126__PGGraphUpdateManager__triggerFullRebuildDuringLiveUpdate_graphIngestRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_2;
    v56[3] = &unk_2788812D0;
    v41 = v45;
    v57 = v41;
    v58 = v21;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __126__PGGraphUpdateManager__triggerFullRebuildDuringLiveUpdate_graphIngestRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3;
    v51[3] = &unk_2788812F8;
    v53 = &v65;
    v54 = &v59;
    p_buf = &buf;
    v24 = v22;
    v52 = v24;
    [(PGManager *)manager startLibraryAnalysisWithRecipe:recipeCopy progressBlock:v56 keepExistingGraph:graphCopy completionBlock:v51];
    dispatch_block_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v43;
    v25 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v28 = v20;
    v29 = v28;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      LOWORD(v70) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v18, "PerformFullRebuild", " enableTelemetry=YES ", &v70, 2u);
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v70 = 136315394;
      v71[0] = "PerformFullRebuild";
      LOWORD(v71[1]) = 2048;
      *(&v71[1] + 2) = ((((v25 - v42) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v70, 0x16u);
    }

    v30 = v29;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      humanReadableMemoryFootprint = [MEMORY[0x277D22C58] humanReadableMemoryFootprint];
      v70 = 136315394;
      v71[0] = "PerformFullRebuild";
      LOWORD(v71[1]) = 2112;
      *(&v71[1] + 2) = humanReadableMemoryFootprint;
      _os_log_debug_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEBUG, "[Memory Footprint] %s : %@", &v70, 0x16u);
    }

    if (*(v66 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(v70) = 0;
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "GraphLiveUpdate - rebuild completed successfully", &v70, 2u);
      }

      if (updateCopy)
      {
        v31 = *(v73 + 40);
        if (!v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            LOWORD(v70) = 0;
            _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "GraphLiveUpdate - Detected nil processedGraphUpdate following graph rebuild!", &v70, 2u);
          }

          v32 = [PGGraphUpdate alloc];
          photoLibrary = [(PGManager *)selfCopy->_manager photoLibrary];
          v34 = [(PGGraphUpdate *)v32 initWithPhotoLibrary:photoLibrary updateType:3];
          v35 = *(v73 + 40);
          *(v73 + 40) = v34;

          [*(v73 + 40) setIsResumingFullAnalysis:1];
          v31 = *(v73 + 40);
        }

        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __126__PGGraphUpdateManager__triggerFullRebuildDuringLiveUpdate_graphIngestRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_255;
        v49[3] = &unk_27888A280;
        v50 = v41;
        v36 = v60;
        obj = v60[5];
        v37 = [(PGGraphUpdateManager *)selfCopy _performEnrichmentWithGraphUpdateInventory:v31 enrichmentContext:1 progressBlock:v49 error:&obj];
        objc_storeStrong(v36 + 5, obj);
        *(v66 + 24) = v37;
      }

      if (v43)
      {
        if (CFAbsoluteTimeGetCurrent() - v15 >= 0.01)
        {
          v47 = 0;
          (v43)[2](v43, &v47, 1.0);
          if (v47 == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v70 = 67109378;
              LODWORD(v71[0]) = 426;
              WORD2(v71[0]) = 2080;
              *(v71 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphUpdateManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v70, 0x12u);
            }

            goto LABEL_40;
          }
        }
      }

      if (completionBlockCopy)
      {
        v38 = *(v66 + 24);
        goto LABEL_39;
      }

LABEL_40:

      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&buf, 8);

      _Block_object_dispose(&v65, 8);
      goto LABEL_41;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v40 = v60[5];
      v70 = 138412290;
      v71[0] = v40;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GraphLiveUpdate - rebuild failed with error %@", &v70, 0xCu);
      if (!completionBlockCopy)
      {
        goto LABEL_40;
      }
    }

    else if (!completionBlockCopy)
    {
      goto LABEL_40;
    }

    v38 = 0;
LABEL_39:
    completionBlockCopy[2](completionBlockCopy, v38 & 1, v60[5]);
    goto LABEL_40;
  }

  LOBYTE(v59) = 0;
  v14[2](v14, &v59, 0.0);
  if (v59 != 1)
  {
    v15 = Current;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x16B04000202;
    LOWORD(v73) = 2080;
    *(&v73 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphUpdateManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_41:
}

void __126__PGGraphUpdateManager__triggerFullRebuildDuringLiveUpdate_graphIngestRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[5] + 8) + 24) = a2;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  (*(a1[4] + 16))();
}

- (void)_processRebuild
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [(PGGraphUpdateManager *)self setProcessingState:4];
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke;
  block[3] = &unk_2788812A8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(processingQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__PGGraphUpdateManager__processRebuild__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PGGraphIngestRecipe alloc];
    v4 = [*(a1 + 32) manager];
    v5 = [v4 photoLibrary];
    v6 = [(PGGraphIngestRecipe *)v3 initWithPhotoLibrary:v5];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke_2;
    v8[3] = &unk_278882E50;
    v8[4] = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke_3;
    v7[3] = &unk_278884D38;
    v7[4] = WeakRetained;
    [WeakRetained _triggerFullRebuildDuringLiveUpdate:1 graphIngestRecipe:v6 progressBlock:v8 keepExistingGraph:1 completionBlock:v7];
  }
}

void *__39__PGGraphUpdateManager__processRebuild__block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) stopRequested];
  *a2 = result;
  return result;
}

void __39__PGGraphUpdateManager__processRebuild__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PGGraphUpdateManager__processRebuild__block_invoke_4;
  block[3] = &unk_278881280;
  v12 = a2;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  dispatch_sync(v7, block);
}

_BYTE *__39__PGGraphUpdateManager__processRebuild__block_invoke_4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) & 1) != 0 || os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) && (v3 = *(a1 + 32), v4 = 138412290, v5 = v3, _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GraphLiveUpdate - _processRebuild failed with error %@", &v4, 0xCu), (*(a1 + 48)))
  {
    result = *(a1 + 40);
    if (!result[9])
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 40);
  }

  return [result _onStopRequestedWasListening:0];
}

- (void)_onStopRequestedWasListening:(BOOL)listening
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [(PGGraphUpdateManager *)self setProcessingState:0];

  [(PGGraphUpdateManager *)self setStopRequested:0];
}

- (void)setProcessingState:(unsigned __int8)state
{
  stateCopy = state;
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  processingState = self->_processingState;
  if (processingState != stateCopy)
  {
    if (self->_processingState <= 1u)
    {
      if (!self->_processingState)
      {
        if ((stateCopy & 0xFE) != 2 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_26;
        }

        jetsamIndicator = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:stateCopy];
        v9 = 138412802;
        v10 = jetsamIndicator;
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        selfCopy5 = self;
        v8 = MEMORY[0x277D86220];
        goto LABEL_32;
      }

      if (stateCopy == 3)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_26;
        }

        jetsamIndicator = [MEMORY[0x277CCABB0] numberWithUnsignedChar:1];
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:3];
        v9 = 138412802;
        v10 = jetsamIndicator;
        v11 = 2112;
        v12 = v7;
        v13 = 2112;
        selfCopy5 = self;
        v8 = MEMORY[0x277D86220];
        goto LABEL_32;
      }

      if (stateCopy == 2)
      {
        jetsamIndicator = [(PGGraphUpdateManager *)self jetsamIndicator];
        [jetsamIndicator markUpdate];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      if (processingState == 2)
      {
        if (stateCopy >= 2)
        {
          if (stateCopy != 4 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_26;
          }

          jetsamIndicator = [MEMORY[0x277CCABB0] numberWithUnsignedChar:2];
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:4];
          v9 = 138412802;
          v10 = jetsamIndicator;
          v11 = 2112;
          v12 = v7;
          v13 = 2112;
          selfCopy5 = self;
          v8 = MEMORY[0x277D86220];
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      if (processingState != 3)
      {
        if (processingState == 4)
        {
          if ((stateCopy - 2) >= 2)
          {
            if (stateCopy > 1)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_26;
          }

          jetsamIndicator = [MEMORY[0x277CCABB0] numberWithUnsignedChar:4];
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:stateCopy];
          v9 = 138412802;
          v10 = jetsamIndicator;
          v11 = 2112;
          v12 = v7;
          v13 = 2112;
          selfCopy5 = self;
          v8 = MEMORY[0x277D86220];
LABEL_32:
          _os_log_fault_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_FAULT, "GraphLiveUpdate - unexpected state transition (%@ - %@), please file a radar against 'Photos Knowledge Graph | all' - GraphUpdateManager: %@", &v9, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_26;
      }

      if ((stateCopy - 1) < 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          jetsamIndicator = [MEMORY[0x277CCABB0] numberWithUnsignedChar:3];
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:stateCopy];
          v9 = 138412802;
          v10 = jetsamIndicator;
          v11 = 2112;
          v12 = v7;
          v13 = 2112;
          selfCopy5 = self;
          v8 = MEMORY[0x277D86220];
          goto LABEL_32;
        }

LABEL_26:
        self->_processingState = stateCopy;
        return;
      }
    }

    if (stateCopy)
    {
      goto LABEL_26;
    }

LABEL_24:
    jetsamIndicator = [(PGGraphUpdateManager *)self jetsamIndicator];
    [jetsamIndicator clear];
    goto LABEL_25;
  }
}

- (void)_performRebuildWithGraphIngestRecipe:(id)recipe progressBlock:(id)block completionBlock:(id)completionBlock
{
  recipeCopy = recipe;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  stateQueue = self->_stateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke;
  v15[3] = &unk_278881258;
  v15[4] = self;
  v16 = recipeCopy;
  v17 = completionBlockCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = recipeCopy;
  v14 = completionBlockCopy;
  dispatch_sync(stateQueue, v15);
}

void __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke(id *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  if ([a1[4] processingState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v5 = a1[4];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v5;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "GraphLiveUpdate - received performFullRebuildWithProgressBlock when not stopped, this is not expected, please file a radar against 'Photos Knowledge Graph | all' - GraphUpdateManager: %@", location, 0xCu);
    }

    v2 = a1[6];
    if (v2)
    {
      v3 = [PGError errorForCode:-1];
      v2[2](v2, 0, v3);
    }
  }

  else
  {
    [a1[4] setProcessingState:4];
    objc_initWeak(location, a1[4]);
    v4 = *(a1[4] + 2);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_247;
    v6[3] = &unk_278881230;
    objc_copyWeak(&v10, location);
    v8 = a1[6];
    v7 = a1[5];
    v9 = a1[7];
    dispatch_async(v4, v6);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }
}

void __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_2;
    v8[3] = &unk_278881208;
    v8[4] = WeakRetained;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v3 _triggerFullRebuildDuringLiveUpdate:0 graphIngestRecipe:v5 progressBlock:v4 keepExistingGraph:1 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [PGError errorForCode:-1];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__PGGraphUpdateManager__performRebuildWithGraphIngestRecipe_progressBlock_completionBlock___block_invoke_3;
  block[3] = &unk_27888A660;
  block[4] = *(a1 + 32);
  dispatch_sync(v6, block);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)performFullRebuildWithProgressBlock:(id)block completionBlock:(id)completionBlock
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  v8 = [PGGraphIngestRecipe alloc];
  manager = [(PGGraphUpdateManager *)self manager];
  photoLibrary = [manager photoLibrary];
  v11 = [(PGGraphIngestRecipe *)v8 initWithPhotoLibrary:photoLibrary];

  [(PGGraphUpdateManager *)self _performRebuildWithGraphIngestRecipe:v11 progressBlock:blockCopy completionBlock:completionBlockCopy];
}

- (BOOL)stopRequested
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PGGraphUpdateManager_stopRequested__block_invoke;
  v5[3] = &unk_27888A700;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PGGraphUpdateManager;
  v4 = [(PGGraphUpdateManager *)&v12 description];
  processingState = [(PGGraphUpdateManager *)self processingState];
  if (processingState > 4)
  {
    v6 = @"Unknown Processing State";
  }

  else
  {
    v6 = off_278881318[processingState];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_stopRequested];
  executionContext = [(PGGraphUpdateManager *)self executionContext];
  if (executionContext > 2)
  {
    v9 = @"Unknown Execution Context";
  }

  else
  {
    v9 = off_278881340[executionContext];
  }

  v10 = [v3 stringWithFormat:@"%@ - processing state: %@, stopRequested: %@, execution context: %@", v4, v6, v7, v9];

  return v10;
}

- (PGGraphUpdateManager)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = PGGraphUpdateManager;
  v6 = [(PGGraphUpdateManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_initially_inactive(v8);

    v10 = dispatch_queue_create("com.apple.photoanalysis.graph.updatemanager.livechange", v9);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v10;

    dispatch_set_qos_class_floor(v7->_processingQueue, QOS_CLASS_UTILITY, 0);
    dispatch_activate(v7->_processingQueue);
    v12 = dispatch_queue_create("com.apple.photoanalysis.graph.updatemanager.state", v9);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v12;

    dispatch_set_qos_class_floor(v7->_stateQueue, QOS_CLASS_UTILITY, 0);
    dispatch_activate(v7->_stateQueue);
    *&v7->_processingState = 0;
    v14 = [PGGraphUpdateJetsamIndicator alloc];
    photoLibrary = [managerCopy photoLibrary];
    v16 = [(PGGraphUpdateJetsamIndicator *)v14 initWithPhotoLibrary:photoLibrary];
    jetsamIndicator = v7->_jetsamIndicator;
    v7->_jetsamIndicator = v16;
  }

  return v7;
}

@end