@interface PGGraphSearchEnrichmentProcessor
- (BOOL)_shouldProcessGraphUpdate:(id)update;
- (unint64_t)_processGraphUpdateInventory:(id)inventory onGraph:(id)graph photoLibrary:(id)library curationManager:(id)manager curationContext:(id)context searchComputationCache:(id)cache progressBlock:(id)block loggingConnection:(id)self0 completionBlock:(id)self1;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphSearchEnrichmentProcessor

- (unint64_t)_processGraphUpdateInventory:(id)inventory onGraph:(id)graph photoLibrary:(id)library curationManager:(id)manager curationContext:(id)context searchComputationCache:(id)cache progressBlock:(id)block loggingConnection:(id)self0 completionBlock:(id)self1
{
  v99 = *MEMORY[0x277D85DE8];
  inventoryCopy = inventory;
  graphCopy = graph;
  libraryCopy = library;
  managerCopy = manager;
  contextCopy = context;
  cacheCopy = cache;
  blockCopy = block;
  oslog = connection;
  v56 = blockCopy;
  completionBlockCopy = completionBlock;
  v18 = _Block_copy(blockCopy);
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  if (!v18 || (v19 = CFAbsoluteTimeGetCurrent(), v19 - v89[3] < 0.01) || (v89[3] = v19, v87 = 0, (*(v18 + 2))(v18, &v87, 0.0), v20 = *(v93 + 24) | v87, *(v93 + 24) = v20, (v20 & 1) == 0))
  {
    v62 = [PGGraphSynonymSupportHelper synonymsByIndexCategoryMaskForGraph:graphCopy];
    localeIdentifier = [graphCopy localeIdentifier];
    v65 = [[PGSearchEntityAccumulator alloc] initWithSynonymsByCategoryMask:v62 graphLocaleIdentifier:localeIdentifier];
    v60 = [[PGSearchKeywordComputer alloc] initWithGraph:graphCopy searchComputationCache:cacheCopy];
    v22 = [inventoryCopy momentsToProcessForMomentUpdateTypes:31 includeMomentsToIngest:1];
    v21 = [v22 count];
    v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v21];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v83 objects:v96 count:16];
    if (v25)
    {
      v26 = *v84;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v84 != v26)
          {
            objc_enumerationMutation(v24);
          }

          uuid = [*(*(&v83 + 1) + 8 * i) uuid];
          [v23 addObject:uuid];
        }

        v25 = [v24 countByEnumeratingWithState:&v83 objects:v96 count:16];
      }

      while (v25);
    }

    v52 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v23 inGraph:graphCopy];
    uuids = [v52 uuids];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke;
    v78[3] = &unk_27888A188;
    v30 = v18;
    v79 = v30;
    v80 = &v88;
    v81 = &v92;
    v82 = 0x3F847AE147AE147BLL;
    v31 = [(PGSearchKeywordComputer *)v60 assetSearchKeywordsByMomentUUIDWithEventUUIDs:uuids ofType:0 searchEntityAccumulator:v65 progressBlock:v78];
    v53 = uuids;
    if (*(v93 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_18:
        v21 = 0;
        v34 = v52;
        v33 = uuids;
LABEL_47:

        goto LABEL_48;
      }

      *buf = 67109378;
      *v98 = 132;
      *&v98[4] = 2080;
      *&v98[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
      v32 = MEMORY[0x277D86220];
LABEL_17:
      _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_18;
    }

    if (v18)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v89[3] >= 0.01)
      {
        v89[3] = Current;
        v87 = 0;
        (*(v30 + 2))(v30, &v87, 0.1);
        v36 = *(v93 + 24) | v87;
        *(v93 + 24) = v36;
        if (v36)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 67109378;
          *v98 = 134;
          *&v98[4] = 2080;
          *&v98[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
          v32 = MEMORY[0x277D86220];
          goto LABEL_17;
        }
      }
    }

    v37 = MEMORY[0x277D22C80];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_235;
    v73[3] = &unk_27888A188;
    v38 = v30;
    v74 = v38;
    v75 = &v88;
    v76 = &v92;
    v77 = 0x3F847AE147AE147BLL;
    [v37 progressReporterWithProgressBlock:v73];
    v50 = v72 = 0;
    v39 = [PGSearchEntityAccumulator accumulatePersonAndPetRelationshipsFromGraph:v65 progressReporter:"accumulatePersonAndPetRelationshipsFromGraph:progressReporter:error:" error:graphCopy];
    v51 = 0;
    if (v18)
    {
      v40 = CFAbsoluteTimeGetCurrent();
      if (v40 - v89[3] >= 0.01)
      {
        v89[3] = v40;
        v87 = 0;
        (*(v38 + 2))(v38, &v87, 0.5);
        v41 = *(v93 + 24) | v87;
        *(v93 + 24) = v41;
        if (v41)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v98 = 141;
            *&v98[4] = 2080;
            *&v98[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v21 = 0;
          v34 = v52;
LABEL_45:
          v33 = v53;
LABEL_46:

          goto LABEL_47;
        }
      }
    }

    if (v39)
    {
      v42 = MEMORY[0x277D22C80];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_236;
      v67[3] = &unk_27888A188;
      v68 = v38;
      v69 = &v88;
      v70 = &v92;
      v71 = 0x3F847AE147AE147BLL;
      v43 = [v42 progressReporterWithProgressBlock:v67];
      v44 = [[PGSearchEntityPersister alloc] initWithPhotoLibrary:libraryCopy];
      v66 = 0;
      v49 = v43;
      v34 = v52;
      LOBYTE(v43) = [(PGSearchEntityPersister *)v44 persistSearchEntitiesFromSearchEntityProvider:v65 progressReporter:v43 error:&v66];
      v45 = v66;
      if ((v43 & 1) == 0 && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v98 = v45;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGGraphSearchEnrichmentProcessor] Error returned by persistSearchEntitiesFromSearchEntityProvider(): (%@)", buf, 0xCu);
      }

      v33 = v53;
    }

    else
    {
      v34 = v52;
      v33 = v53;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v98 = v51;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGGraphSearchEnrichmentProcessor] Error returned by accumulatePersonAndPetRelationshipsFromGraph(): (%@)", buf, 0xCu);
        if (v18)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    if (v18)
    {
LABEL_37:
      v46 = CFAbsoluteTimeGetCurrent();
      if (v46 - v89[3] >= 0.01)
      {
        v89[3] = v46;
        v87 = 0;
        (*(v38 + 2))(v38, &v87, 1.0);
        v47 = *(v93 + 24) | v87;
        *(v93 + 24) = v47;
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v98 = 158;
            *&v98[4] = 2080;
            *&v98[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v21 = 0;
          goto LABEL_46;
        }
      }
    }

LABEL_43:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] search entity accumulation and persistence is complete", buf, 2u);
    }

    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v98 = 111;
    *&v98[4] = 2080;
    *&v98[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v21 = 0;
LABEL_48:
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);

  return v21;
}

void __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_235(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __189__PGGraphSearchEnrichmentProcessor__processGraphUpdateInventory_onGraph_photoLibrary_curationManager_curationContext_searchComputationCache_progressBlock_loggingConnection_completionBlock___block_invoke_236(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)_shouldProcessGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy hasHighlightsToInsert] & 1) != 0 || (objc_msgSend(updateCopy, "hasHighlightsToDelete"))
  {
    hasHighlightsToUpdate = 1;
  }

  else
  {
    hasHighlightsToUpdate = [updateCopy hasHighlightsToUpdate];
  }

  if (([updateCopy hasMomentsToInsert] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToDelete") & 1) != 0 || ((hasHighlightsToUpdate | objc_msgSend(updateCopy, "hasMomentsToUpdate")) & 1) != 0 || (objc_msgSend(updateCopy, "hasPersonsToDelete") & 1) != 0 || (objc_msgSend(updateCopy, "identifiersForMomentRelatedToUpdatedPersons"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    isResumingFullAnalysis = 1;
  }

  else
  {
    isResumingFullAnalysis = [updateCopy isResumingFullAnalysis];
  }

  return isResumingFullAnalysis;
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v59 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  inventoryCopy = inventory;
  reporterCopy = reporter;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v15 = os_signpost_id_generate(enrichmentLoggingConnection);
  v16 = enrichmentLoggingConnection;
  v17 = v16;
  spid = v15;
  v18 = v15 - 1;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGGraphSearchEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v38 = mach_absolute_time();
  v19 = reporterCopy;
  *buf = 0;
  v53 = buf;
  v54 = 0x2020000000;
  v55 = 0;
  v20 = [v19 isCancelledWithProgress:0.0];
  v53[24] = v20;
  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v57 = 67109378;
      *&v57[4] = 37;
      *&v57[8] = 2080;
      *&v57[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
LABEL_27:
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v57, 0x12u);
    }
  }

  else
  {
    v22 = [(PGGraphSearchEnrichmentProcessor *)self _shouldProcessGraphUpdate:inventoryCopy];
    v23 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v22)
    {
      if (v23)
      {
        *v57 = 0;
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] Run search processor to donate graph data to Search enrichment", v57, 2u);
      }

      photoLibrary = [managerCopy photoLibrary];
      v36 = [PGSearchComputationCache persistentStoreURLWithManager:managerCopy];
      v37 = contextCopy;
      v25 = [[PGSearchComputationCache alloc] initWithPersistentStoreURL:v36 photoLibrary:photoLibrary];
      if ([inventoryCopy isResumingFullAnalysis])
      {
        [(PGSearchComputationCache *)v25 invalidateCache];
      }

      *v57 = 0;
      *&v57[8] = v57;
      *&v57[16] = 0x2020000000;
      v58 = 1;
      curationManager = [managerCopy curationManager];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
      v40[3] = &unk_278883F68;
      v50 = v57;
      v41 = v17;
      selfCopy = self;
      v43 = inventoryCopy;
      v27 = photoLibrary;
      v44 = v27;
      v28 = curationManager;
      v45 = v28;
      v46 = v37;
      v29 = v25;
      v47 = v29;
      v51 = buf;
      v48 = v19;
      v49 = v48;
      [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v40];
      if (*(*&v57[8] + 24) == 1)
      {
        [(PGSearchComputationCache *)v29 save];
      }

      contextCopy = v37;
      _Block_object_dispose(v57, 8);
    }

    else if (v23)
    {
      *v57 = 0;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] Should not run search processor since there are no changes needed to donate to Search enrichment", v57, 2u);
    }

    v30 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v33 = v17;
    v34 = v33;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v57 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphSearchEnrichmentProcessor", "", v57, 2u);
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v57 = 136315394;
      *&v57[4] = "PGGraphSearchEnrichmentProcessor";
      *&v57[12] = 2048;
      *&v57[14] = ((((v30 - v38) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v57, 0x16u);
    }

    if (v53[24])
    {
      v53[24] = 1;
    }

    else
    {
      v35 = [v19 isCancelledWithProgress:1.0];
      v53[24] = v35;
      if ((v35 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v57 = 67109378;
      *&v57[4] = 81;
      *&v57[8] = 2080;
      *&v57[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphSearchEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
      goto LABEL_27;
    }
  }

LABEL_28:
  _Block_object_dispose(buf, 8);
}

void __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_224;
    v17[3] = &unk_278889448;
    v19 = *(a1 + 112);
    v18 = *(a1 + 88);
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_2;
    v15[3] = &unk_278883F40;
    v16 = v10;
    v11 = [v4 _processGraphUpdateInventory:v5 onGraph:v3 photoLibrary:v6 curationManager:v7 curationContext:v8 searchComputationCache:v9 progressBlock:v17 loggingConnection:v16 completionBlock:v15];
    v12 = [*(a1 + 96) throughputReportBlock];

    if (v12)
    {
      v13 = [*(a1 + 96) throughputReportBlock];
      v13[2](v13, v11, 0);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_FAULT, "[PGGraphSearchEnrichmentProcessor] Search enrichment will not run because the graph is unavailable", buf, 2u);
    }

    *(*(*(a1 + 104) + 8) + 24) = 0;
  }
}

uint64_t __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_224(uint64_t a1, _BYTE *a2)
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

void __117__PGGraphSearchEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_22F0FC000, v1, OS_LOG_TYPE_INFO, "[PGGraphSearchEnrichmentProcessor] Donate the graph data to Search enrichment", v2, 2u);
  }
}

@end