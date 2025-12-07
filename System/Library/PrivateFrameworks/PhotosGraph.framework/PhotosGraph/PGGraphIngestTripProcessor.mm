@interface PGGraphIngestTripProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestTripProcessor)initWithGraphBuilder:(id)builder;
- (id)allTripNodes;
- (id)featuredLocationNodesByHighlightGroupNode;
- (id)tripsMissingFeaturedLocations;
- (void)ingestLocationFeaturesForTripNodes:(id)nodes graph:(id)graph loggingConnection:(id)connection progressBlock:(id)block isResumingFullAnalysis:(BOOL)analysis;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestTripProcessor

- (void)ingestLocationFeaturesForTripNodes:(id)nodes graph:(id)graph loggingConnection:(id)connection progressBlock:(id)block isResumingFullAnalysis:(BOOL)analysis
{
  v55 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  connectionCopy = connection;
  blockCopy = block;
  targets = [nodesCopy targets];
  v17 = [targets count];

  if (v17)
  {
    v18 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:blockCopy];
    v19 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v18];
    *buf = 0;
    v48 = buf;
    v49 = 0x2020000000;
    v50 = 0;
    targets2 = [nodesCopy targets];
    v21 = [targets2 count];

    v22 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
    v23 = v18;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke;
    v32 = &unk_2788893F8;
    v24 = v19;
    v33 = v24;
    v39 = buf;
    v41 = 1.0 / v21;
    v34 = graphCopy;
    v25 = v22;
    v35 = v25;
    v36 = connectionCopy;
    v40 = &v43;
    v26 = v23;
    analysisCopy = analysis;
    v37 = v26;
    selfCopy = self;
    [nodesCopy enumerateTargetsBySourceWithBlock:&v29];
    if (*(v44 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:

        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_12;
      }

      *v51 = 67109378;
      v52 = 175;
      v53 = 2080;
      v54 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestTripProcessor.m";
      v27 = MEMORY[0x277D86220];
    }

    else
    {
      v28 = [v26 isCancelledWithProgress:{1.0, v29, v30, v31, v32, v33, v34, v35, v36}];
      *(v44 + 24) = v28;
      if (!v28 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      *v51 = 67109378;
      v52 = 176;
      v53 = 2080;
      v54 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestTripProcessor.m";
      v27 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v51, 0x12u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] No highlight to be ingest.", buf, 2u);
  }

LABEL_12:
}

void __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 80) + 8) + 24) + *(a1 + 96) * 0.9;
  v10 = a3;
  v11 = [v8 childProgressReporterToCheckpoint:v9];
  *(*(*(a1 + 80) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 80) + 8) + 24);
  v12 = [v7 anyNode];
  v13 = [v12 uuid];
  v14 = [PGTripFeatureProcessor alloc];
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v53 = 0;
  v17 = [(PGTripFeatureProcessor *)v14 initWithMomentNodes:v10 graph:v15 locationHelper:v16 error:&v53];

  v18 = v53;
  v19 = v18;
  if (v17)
  {
    v52 = v18;
    v20 = [(PGTripFeatureProcessor *)v17 processTripLocationsWithReporter:v11 error:&v52];
    v21 = v52;

    v22 = *(*(a1 + 88) + 8);
    if (*(v22 + 24))
    {
      v23 = 1;
    }

    else
    {
      v23 = [*(a1 + 64) isCancelledWithProgress:*(*(*(a1 + 80) + 8) + 24)];
      v22 = *(*(a1 + 88) + 8);
    }

    *(v22 + 24) = v23;
    if (*(*(*(a1 + 88) + 8) + 24) == 1)
    {
      *a4 = 1;
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        [(PGTripFeatureProcessor *)v17 sendAnalyticsEvent];
      }

      if (v20)
      {
        v44 = a4;
        v25 = [v20 count];
        v26 = *(a1 + 56);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
        if (v25)
        {
          if (v27)
          {
            v28 = v26;
            v29 = [v20 count];
            *buf = 138412546;
            v55 = v13;
            v56 = 2048;
            v57 = v29;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] Trip with uuid %@ does have %lu featuredLocationNodes retrieved from processor.", buf, 0x16u);
          }
        }

        else if (v27)
        {
          *buf = 138412290;
          v55 = v13;
          _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] Trip with uuid %@ does not have any featuredLocationNodes.", buf, 0xCu);
        }

        v48 = objc_alloc_init(MEMORY[0x277D22C50]);
        v31 = [*(a1 + 72) featuredLocationNodesByHighlightGroupNode];
        v32 = [v31 targetsForSources:v7];

        v46 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithArray:v20 graph:*(a1 + 40)];
        v47 = v32;
        v45 = [(MAElementCollection *)v46 collectionBySubtracting:v32];
        v33 = v44;
        if ([v45 count])
        {
          v34 = *(a1 + 56);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = v34;
            v36 = [v45 count];
            *buf = 134218242;
            v55 = v36;
            v56 = 2112;
            v57 = v13;
            _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] adding %lu featured location nodes to trip with uuid @%@", buf, 0x16u);
          }

          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke_235;
          v49[3] = &unk_2788893D0;
          v50 = v12;
          v51 = v48;
          [v45 enumerateNodesUsingBlock:v49];
        }

        v37 = [v47 collectionBySubtracting:v46];
        if ([v37 count])
        {
          v38 = *(a1 + 56);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = v38;
            v40 = [v37 count];
            *buf = 134218242;
            v55 = v40;
            v56 = 2112;
            v57 = v13;
            _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[PGGraphIngestTripProcessor] removing %lu featured location nodes to trip with uuid @%@", buf, 0x16u);
          }

          v41 = [(PGGraphEdgeCollection *)PGGraphTripFeatureEdgeCollection edgesFromNodes:v7 toNodes:v37];
          [v48 removeEdges:v41];

          v33 = v44;
        }

        [*(a1 + 40) executeGraphChangeRequest:v48];
        v42 = *(*(a1 + 88) + 8);
        if (*(v42 + 24))
        {
          v43 = 1;
        }

        else
        {
          v43 = [*(a1 + 64) isCancelledWithProgress:*(*(*(a1 + 80) + 8) + 24)];
          v42 = *(*(a1 + 88) + 8);
        }

        *(v42 + 24) = v43;
        if (*(*(*(a1 + 88) + 8) + 24) == 1)
        {
          *v33 = 1;
        }
      }

      else
      {
        v30 = *(a1 + 56);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v55 = v21;
          v56 = 2112;
          v57 = v13;
          _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGGraphIngestTripProcessor] Cannot retrieve featuredLocationNodes with error %@ on trip with uuid %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v24 = *(a1 + 56);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v55 = v19;
      v56 = 2112;
      v57 = v13;
      _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "[PGGraphIngestTripProcessor] PGTripFeatureProcessor init failed with error %@ on trip with uuid %@", buf, 0x16u);
    }

    v21 = v19;
  }
}

void __126__PGGraphIngestTripProcessor_ingestLocationFeaturesForTripNodes_graph_loggingConnection_progressBlock_isResumingFullAnalysis___block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGGraphTripFeatureEdge alloc] initFromHighlightGroupNode:*(a1 + 32) toFeatureNode:v3];

  [*(a1 + 40) addEdge:v4];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v8 = os_signpost_id_generate(loggingConnection);
  v9 = loggingConnection;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGGraphIngestTripProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v37 = mach_absolute_time();
  isResumingFullAnalysis = [updateCopy isResumingFullAnalysis];
  if (isResumingFullAnalysis)
  {
    allTripNodes = [(PGGraphIngestTripProcessor *)self allTripNodes];
  }

  else
  {
    v14 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
    allTripNodes = [(PGGraphIngestTripProcessor *)self tripsMissingFeaturedLocations];
    if ([v14 count])
    {
      [v14 highlightNodes];
      v15 = v33 = allTripNodes;
      [v15 highlightGroupNodes];
      v16 = v34 = v8 - 1;
      [(PGGraphIngestTripProcessor *)self allTripNodes];
      v18 = v17 = updateCopy;
      [v16 collectionByIntersecting:v18];
      v19 = spida = v8;

      updateCopy = v17;
      allTripNodes = [v33 collectionByFormingUnionWith:v19];

      v11 = v34;
      v8 = spida;
    }
  }

  if ([allTripNodes isEmpty])
  {
    v20 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v23 = v10;
    v24 = v23;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v8, "PGGraphIngestTripProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "PGGraphIngestTripProcessor";
      v43 = 2048;
      v44 = ((((v20 - v37) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    spid = v8;
    v25 = MEMORY[0x277D22BF8];
    v26 = +[PGGraphHighlightGroupNode momentInHighlight];
    v27 = [v25 adjacencyWithSources:allTripNodes relation:v26 targetsClass:objc_opt_class()];

    [(PGGraphIngestTripProcessor *)self ingestLocationFeaturesForTripNodes:v27 graph:graph loggingConnection:v10 progressBlock:blockCopy isResumingFullAnalysis:isResumingFullAnalysis];
    v28 = mach_absolute_time();
    v30 = info.numer;
    v29 = info.denom;
    v31 = v10;
    v32 = v31;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestTripProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "PGGraphIngestTripProcessor";
      v43 = 2048;
      v44 = ((((v28 - v37) * v30) / v29) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (-[PGGraphIngestTripProcessor tripsMissingFeaturedLocations](self, "tripsMissingFeaturedLocations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEmpty"), v5, (objc_msgSend(updateCopy, "hasMomentsToInsert")))
  {
    v7 = 1;
  }

  else
  {
    v8 = v6 ^ 1;
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v7 = (([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0) | v8;
  }

  return v7 & 1;
}

- (id)tripsMissingFeaturedLocations
{
  tripsMissingFeaturedLocations = self->_tripsMissingFeaturedLocations;
  if (!tripsMissingFeaturedLocations)
  {
    allTripNodes = [(PGGraphIngestTripProcessor *)self allTripNodes];
    featuredLocationNodesByHighlightGroupNode = [(PGGraphIngestTripProcessor *)self featuredLocationNodesByHighlightGroupNode];
    sources = [featuredLocationNodesByHighlightGroupNode sources];
    v7 = [allTripNodes collectionBySubtracting:sources];
    v8 = self->_tripsMissingFeaturedLocations;
    self->_tripsMissingFeaturedLocations = v7;

    tripsMissingFeaturedLocations = self->_tripsMissingFeaturedLocations;
  }

  return tripsMissingFeaturedLocations;
}

- (id)featuredLocationNodesByHighlightGroupNode
{
  featuredLocationNodesByHighlightGroupNode = self->_featuredLocationNodesByHighlightGroupNode;
  if (!featuredLocationNodesByHighlightGroupNode)
  {
    v4 = MEMORY[0x277D22BF8];
    allTripNodes = [(PGGraphIngestTripProcessor *)self allTripNodes];
    v6 = +[PGGraphHighlightGroupNodeCollection locationFeatureOfHighlightGroup];
    v7 = [v4 adjacencyWithSources:allTripNodes relation:v6 targetsClass:objc_opt_class()];
    v8 = self->_featuredLocationNodesByHighlightGroupNode;
    self->_featuredLocationNodesByHighlightGroupNode = v7;

    featuredLocationNodesByHighlightGroupNode = self->_featuredLocationNodesByHighlightGroupNode;
  }

  return featuredLocationNodesByHighlightGroupNode;
}

- (id)allTripNodes
{
  allTripNodes = self->_allTripNodes;
  if (!allTripNodes)
  {
    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    v5 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:graph];
    highlightGroupNodes = [v5 highlightGroupNodes];
    v7 = self->_allTripNodes;
    self->_allTripNodes = highlightGroupNodes;

    allTripNodes = self->_allTripNodes;
  }

  return allTripNodes;
}

- (PGGraphIngestTripProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestTripProcessor;
  v6 = [(PGGraphIngestTripProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end