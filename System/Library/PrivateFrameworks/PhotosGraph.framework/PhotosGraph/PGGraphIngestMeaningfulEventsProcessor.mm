@interface PGGraphIngestMeaningfulEventsProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestMeaningfulEventsProcessor)initWithGraphBuilder:(id)builder;
- (id)_removeInvalidMeaningEdgesWithDomain:(unsigned __int16)domain momentNode:(id)node validMeaningLabels:(id)labels legacyMeaningLabels:(id)meaningLabels;
- (id)meaningfulEventMatchingResultsForMomentNode:(id)node withRequiredMeaningfulEventCriteriaByIdentifier:(id)identifier andMeaningfulEventProcessorCache:(id)cache;
- (void)_updateMeaningsOfMomentNode:(id)node graph:(id)graph withValidMeaningLabels:(id)labels legacyLabels:(id)legacyLabels;
- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph progressBlock:(id)block;
- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph requiredMeaningfulEventCriteriaByIdentifier:(id)identifier progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
- (void)updateMeaningsOfMomentNode:(id)node graph:(id)graph affectedMeaningLabels:(id)labels withMatchedResults:(id)results;
@end

@implementation PGGraphIngestMeaningfulEventsProcessor

- (id)_removeInvalidMeaningEdgesWithDomain:(unsigned __int16)domain momentNode:(id)node validMeaningLabels:(id)labels legacyMeaningLabels:(id)meaningLabels
{
  domainCopy = domain;
  labelsCopy = labels;
  meaningLabelsCopy = meaningLabels;
  v11 = MEMORY[0x277CBEB58];
  nodeCopy = node;
  v13 = objc_alloc_init(v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __129__PGGraphIngestMeaningfulEventsProcessor__removeInvalidMeaningEdgesWithDomain_momentNode_validMeaningLabels_legacyMeaningLabels___block_invoke;
  v20[3] = &unk_278885008;
  v21 = labelsCopy;
  v22 = meaningLabelsCopy;
  v14 = v13;
  v23 = v14;
  v15 = meaningLabelsCopy;
  v16 = labelsCopy;
  [nodeCopy enumerateMeaningEdgesAndNodesWithDomain:domainCopy block:v20];

  v17 = v23;
  v18 = v14;

  return v14;
}

void __129__PGGraphIngestMeaningfulEventsProcessor__removeInvalidMeaningEdgesWithDomain_momentNode_validMeaningLabels_legacyMeaningLabels___block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 label];
  if (([a1[4] containsObject:v5] & 1) == 0 && objc_msgSend(a1[5], "containsObject:", v5))
  {
    [a1[6] addObject:v6];
  }
}

- (void)_updateMeaningsOfMomentNode:(id)node graph:(id)graph withValidMeaningLabels:(id)labels legacyLabels:(id)legacyLabels
{
  v27 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  labelsCopy = labels;
  legacyLabelsCopy = legacyLabels;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [labelsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(labelsCopy);
        }

        [(PGGraphBuilder *)self->_graphBuilder addMeaningToMeaningfulEventNode:nodeCopy meaningLabel:*(*(&v22 + 1) + 8 * v17++) meaningIsReliable:1];
      }

      while (v15 != v17);
      v15 = [labelsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x277CBEB98] setWithArray:labelsCopy];
  v19 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:700 momentNode:nodeCopy validMeaningLabels:v18 legacyMeaningLabels:legacyLabelsCopy];

  v20 = [MEMORY[0x277CBEB98] setWithArray:labelsCopy];
  v21 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:702 momentNode:nodeCopy validMeaningLabels:v20 legacyMeaningLabels:legacyLabelsCopy];

  [v19 unionSet:v21];
  [graphCopy legacyRemoveEdges:v19];
}

- (void)updateMeaningsOfMomentNode:(id)node graph:(id)graph affectedMeaningLabels:(id)labels withMatchedResults:(id)results
{
  v30 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  labelsCopy = labels;
  resultsCopy = results;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = resultsCopy;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        requiredCriteria = [v18 requiredCriteria];
        meaningNodeLabel = [requiredCriteria meaningNodeLabel];

        -[PGGraphBuilder addMeaningToMeaningfulEventNode:meaningLabel:meaningIsReliable:](self->_graphBuilder, "addMeaningToMeaningfulEventNode:meaningLabel:meaningIsReliable:", nodeCopy, meaningNodeLabel, [v18 isReliable]);
        [v12 addObject:meaningNodeLabel];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v21 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:700 momentNode:nodeCopy validMeaningLabels:v12 legacyMeaningLabels:labelsCopy];
  v22 = [(PGGraphIngestMeaningfulEventsProcessor *)self _removeInvalidMeaningEdgesWithDomain:702 momentNode:nodeCopy validMeaningLabels:v12 legacyMeaningLabels:labelsCopy];
  [v21 unionSet:v22];
  [graphCopy legacyRemoveEdges:v21];
}

- (id)meaningfulEventMatchingResultsForMomentNode:(id)node withRequiredMeaningfulEventCriteriaByIdentifier:(id)identifier andMeaningfulEventProcessorCache:(id)cache
{
  graphBuilder = self->_graphBuilder;
  cacheCopy = cache;
  identifierCopy = identifier;
  nodeCopy = node;
  serviceManager = [(PGGraphBuilder *)graphBuilder serviceManager];
  v12 = [PGMeaningfulEventProcessor processRequiredCriteria:identifierCopy forMoment:nodeCopy meaningfulEventProcessorCache:cacheCopy serviceManager:serviceManager];

  return v12;
}

- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph requiredMeaningfulEventCriteriaByIdentifier:(id)identifier progressBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  identifierCopy = identifier;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (v14 && (v15 = CFAbsoluteTimeGetCurrent(), v15 - v38[3] >= 0.01) && (v38[3] = v15, LOBYTE(v34[0]) = 0, (*(v14 + 2))(v14, v34, 0.0), v16 = *(v42 + 24) | LOBYTE(v34[0]), *(v42 + 24) = v16, (v16 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x5304000202;
      LOWORD(v49) = 2080;
      *(&v49 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMeaningfulEventsProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    buf = 0;
    *&v49 = &buf;
    *(&v49 + 1) = 0x3032000000;
    v50 = __Block_byref_object_copy__47819;
    v51 = __Block_byref_object_dispose__47820;
    v17 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [identifierCopy allKeys];
    v52 = [v17 initWithArray:allKeys];

    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__47819;
    v34[4] = __Block_byref_object_dispose__47820;
    v35 = [[PGMeaningfulEventProcessorCache alloc] initWithMomentNodes:nodesCopy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __145__PGGraphIngestMeaningfulEventsProcessor_processMeaningfulEventsWithMomentNodes_graph_requiredMeaningfulEventCriteriaByIdentifier_progressBlock___block_invoke;
    v23[3] = &unk_278884FE0;
    v23[4] = self;
    v24 = identifierCopy;
    v28 = v34;
    v25 = graphCopy;
    p_buf = &buf;
    v30 = v36;
    v26 = nodesCopy;
    v19 = v14;
    v27 = v19;
    v31 = &v37;
    v32 = &v41;
    v33 = 0x3F847AE147AE147BLL;
    [v26 enumerateNodesUsingBlock:v23];
    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v38[3] >= 0.01)
      {
        v38[3] = Current;
        v22 = 0;
        (*(v19 + 2))(v19, &v22, 1.0);
        v21 = *(v42 + 24) | v22;
        *(v42 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v45[0] = 67109378;
          v45[1] = 105;
          v46 = 2080;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestMeaningfulEventsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v45, 0x12u);
        }
      }
    }

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
}

void __145__PGGraphIngestMeaningfulEventsProcessor_processMeaningfulEventsWithMomentNodes_graph_requiredMeaningfulEventCriteriaByIdentifier_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) meaningfulEventMatchingResultsForMomentNode:v5 withRequiredMeaningfulEventCriteriaByIdentifier:*(a1 + 40) andMeaningfulEventProcessorCache:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) updateMeaningsOfMomentNode:v5 graph:*(a1 + 48) affectedMeaningLabels:*(*(*(a1 + 80) + 8) + 40) withMatchedResults:v7];
  [*(*(a1 + 32) + 8) upsertPeopleEventEdgesOfMomentNode:v5 matchingResults:v7];
  v8 = *(*(*(a1 + 88) + 8) + 24);
  v9 = [*(a1 + 56) count];
  if (*(a1 + 64) && (v10 = v9, Current = CFAbsoluteTimeGetCurrent(), v12 = *(*(a1 + 96) + 8), Current - *(v12 + 24) >= *(a1 + 112)) && (*(v12 + 24) = Current, (*(*(a1 + 64) + 16))(v8 / v10), *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(a1 + 88) + 8) + 24);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)processMeaningfulEventsWithMomentNodes:(id)nodes graph:(id)graph progressBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  graphBuilder = self->_graphBuilder;
  blockCopy = block;
  graphCopy = graph;
  nodesCopy = nodes;
  loggingConnection = [(PGGraphBuilder *)graphBuilder loggingConnection];
  v13 = os_signpost_id_generate(loggingConnection);
  v14 = loggingConnection;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PGGraphIngestMeaningfulEventsProcessor", "", buf, 2u);
  }

  spid = v13;

  info = 0;
  mach_timebase_info(&info);
  v26 = mach_absolute_time();
  v17 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v17];
  sceneTaxonomy = [(PGGraphBuilder *)self->_graphBuilder sceneTaxonomy];
  v20 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v18 inferenceType:0 graph:graphCopy sceneTaxonomy:sceneTaxonomy];
  [(PGGraphIngestMeaningfulEventsProcessor *)self processMeaningfulEventsWithMomentNodes:nodesCopy graph:graphCopy requiredMeaningfulEventCriteriaByIdentifier:v20 progressBlock:blockCopy];

  v21 = mach_absolute_time();
  v22 = info;
  v23 = v15;
  v24 = v23;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestMeaningfulEventsProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "PGGraphIngestMeaningfulEventsProcessor";
    v30 = 2048;
    v31 = ((((v21 - v26) * v22.numer) / v22.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  blockCopy = block;
  graphBuilder = self->_graphBuilder;
  updateCopy = update;
  graph = [(PGGraphBuilder *)graphBuilder graph];
  v9 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:31 includeInsertedNodes:1];

  if ([v9 count])
  {
    [(PGGraphIngestMeaningfulEventsProcessor *)self processMeaningfulEventsWithMomentNodes:v9 graph:graph progressBlock:blockCopy];
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert"))
  {
    hasMomentsToUpdate = 1;
  }

  else
  {
    hasMomentsToUpdate = [updateCopy hasMomentsToUpdate];
  }

  return hasMomentsToUpdate;
}

- (PGGraphIngestMeaningfulEventsProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestMeaningfulEventsProcessor;
  v6 = [(PGGraphIngestMeaningfulEventsProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end