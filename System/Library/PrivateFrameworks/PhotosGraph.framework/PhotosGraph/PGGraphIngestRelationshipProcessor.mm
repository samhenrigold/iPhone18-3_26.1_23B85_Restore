@interface PGGraphIngestRelationshipProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestRelationshipProcessor)initWithGraphBuilder:(id)builder;
- (id)_personNodesToAnalyzeInGraph:(id)graph;
- (id)personNodesToAnalyzeInGraph:(id)graph forAppleInternal:(BOOL)internal;
- (id)tagRelationshipByPersonForPersonNodes:(id)nodes;
- (unint64_t)relationshipForRelationshipTag:(unint64_t)tag;
- (void)insertRelationshipEdgesForRelationshipTags:(id)tags meNode:(id)node;
- (void)removeInferredRelationshipEdgesForPersonNodes:(id)nodes inGraph:(id)graph;
- (void)removeStorytellingRelationshipEdgesForPersonNodes:(id)nodes inGraph:(id)graph;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestRelationshipProcessor

- (id)personNodesToAnalyzeInGraph:(id)graph forAppleInternal:(BOOL)internal
{
  internalCopy = internal;
  graphCopy = graph;
  if (![(PGGraphBuilder *)self->_graphBuilder isSharedLibraryEnabled])
  {
    goto LABEL_9;
  }

  momentNodesWhereMeIsPresent = [(PGGraphBuilder *)self->_graphBuilder momentNodesWhereMeIsPresent];
  if (![momentNodesWhereMeIsPresent count])
  {
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No moments in library where Me is present. Not applying presence filtering", v16, 2u);
    }

LABEL_9:
    subsetExcludingMe = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:graphCopy];
    if (internalCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  presentPersonNodes = [momentNodesWhereMeIsPresent presentPersonNodes];
  subsetExcludingMe = [presentPersonNodes subsetExcludingMe];

  if (!subsetExcludingMe)
  {
    goto LABEL_9;
  }

  if (internalCopy)
  {
LABEL_5:
    v10 = subsetExcludingMe;
    goto LABEL_11;
  }

LABEL_10:
  meNodeCollection = [graphCopy meNodeCollection];
  relatedPersonNodes = [meNodeCollection relatedPersonNodes];

  v14 = [subsetExcludingMe collectionBySubtracting:relatedPersonNodes];

  v10 = v14;
LABEL_11:

  return v10;
}

- (id)_personNodesToAnalyzeInGraph:(id)graph
{
  graphCopy = graph;
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v5 = [(PGGraphIngestRelationshipProcessor *)self personNodesToAnalyzeInGraph:graphCopy forAppleInternal:PGIsAppleInternal_isAppleInternal];

  return v5;
}

- (void)removeStorytellingRelationshipEdgesForPersonNodes:(id)nodes inGraph:(id)graph
{
  graphCopy = graph;
  v6 = MEMORY[0x277D22C50];
  nodesCopy = nodes;
  v8 = objc_alloc_init(v6);
  storytellingRelationshipEdges = [nodesCopy storytellingRelationshipEdges];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__PGGraphIngestRelationshipProcessor_removeStorytellingRelationshipEdgesForPersonNodes_inGraph___block_invoke;
  v11[3] = &unk_2788863A0;
  v10 = v8;
  v12 = v10;
  [storytellingRelationshipEdges enumerateEdgesUsingBlock:v11];

  if ([v10 numberOfChanges])
  {
    [graphCopy executeGraphChangeRequest:v10];
  }
}

- (void)removeInferredRelationshipEdgesForPersonNodes:(id)nodes inGraph:(id)graph
{
  graphCopy = graph;
  relationshipEdges = [nodes relationshipEdges];
  v7 = +[PGGraphRelationshipEdge confirmedRelationshipFilter];
  v8 = [relationshipEdges edgesMatchingFilter:v7];
  v10 = [relationshipEdges collectionBySubtracting:v8];

  v9 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v9 removeEdges:v10];
  [graphCopy executeGraphChangeRequest:v9];
}

- (unint64_t)relationshipForRelationshipTag:(unint64_t)tag
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = tag - 1;
  if (tag - 1 < 0xD && ((0x1EFFu >> v4) & 1) != 0)
  {
    return qword_22F78CAE8[v4];
  }

  v6 = +[PGLogging sharedLogging];
  loggingConnection = [v6 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v8 = [PGGraphPersonRelationshipTagNode labelForRelationshipTag:tag];
    v9 = 134218242;
    tagCopy = tag;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGGraphIngestRelationshipProcessor] Encountered unmapped entity tag %lu (%@) during relationship ingest", &v9, 0x16u);
  }

  return 0;
}

- (id)tagRelationshipByPersonForPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__54304;
  v12 = __Block_byref_object_dispose__54305;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke;
  v7[3] = &unk_278889420;
  v7[4] = self;
  v7[5] = &v8;
  [nodesCopy enumerateNodesUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 relationshipTagEdges];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke_2;
  v9[3] = &unk_278886378;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v9[4] = v6;
  v8 = v3;
  [v5 enumerateEdgesUsingBlock:v9];
}

void __76__PGGraphIngestRelationshipProcessor_tagRelationshipByPersonForPersonNodes___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  [v10 confidence];
  v3 = v10;
  if (v4 >= 0.9)
  {
    v5 = a1[4];
    v6 = [v10 tagNode];
    v7 = [v5 relationshipForRelationshipTag:{objc_msgSend(v6, "tag")}];

    v3 = v10;
    if (v7)
    {
      v8 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:a1[5]];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      }

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [v8 addObject:v9];

      [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:a1[5]];
      v3 = v10;
    }
  }
}

- (void)insertRelationshipEdgesForRelationshipTags:(id)tags meNode:(id)node
{
  nodeCopy = node;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__PGGraphIngestRelationshipProcessor_insertRelationshipEdgesForRelationshipTags_meNode___block_invoke;
  v8[3] = &unk_278886350;
  v8[4] = self;
  v9 = nodeCopy;
  v7 = nodeCopy;
  [tags enumerateKeysAndObjectsUsingBlock:v8];
}

void __88__PGGraphIngestRelationshipProcessor_insertRelationshipEdgesForRelationshipTags_meNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) unsignedIntegerValue];
        v12 = [PGGraphRelationshipEdge propertiesWithRelationshipSource:1];
        [*(*(a1 + 32) + 8) addRelationshipEdgesBetweenPersonNode:*(a1 + 40) andPersonNode:v5 forRelationship:v11 confidence:v12 properties:0.99];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v69 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(loggingConnection);
  v11 = loggingConnection;
  v12 = v11;
  v53 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestRelationshipProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v50 = mach_absolute_time();
  if ([updateCopy isResumingFullAnalysis])
  {
    v13 = [(PGGraphIngestRelationshipProcessor *)self _personNodesToAnalyzeInGraph:graph];
  }

  else
  {
    v14 = [PGGraphPersonNodeCollection alloc];
    insertedAndUpdatedPersonNodes = [updateCopy insertedAndUpdatedPersonNodes];
    v13 = [(MAElementCollection *)v14 initWithSet:insertedAndUpdatedPersonNodes graph:graph];
  }

  if ([(MAElementCollection *)v13 count])
  {
    spid = v10;
    v49 = updateCopy;
    [(PGGraphIngestRelationshipProcessor *)self removeInferredRelationshipEdgesForPersonNodes:v13 inGraph:graph];
    v16 = [PGGraphRelationshipProcessor alloc];
    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v18 = [(PGGraphRelationshipProcessor *)v16 initWithPersonNodes:v13 runOptions:8190 serviceManager:serviceManager];
    v19 = v12;
    v20 = v18;

    v47 = v19;
    v48 = blockCopy;
    [v20 runRelationshipAnalysisWithLoggingConnection:v19 progressBlock:blockCopy];
    meNode = [graph meNode];
    LOBYTE(serviceManager) = +[PGUserDefaults isRelationshipSignalPropertiesIngestAllowed];
    v22 = +[PGUserDefaults isRelationshipFilteredOutInferencesIngestAllowed];
    v52 = graph;
    v46 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:graph];
    personNodeByLocalIdentifier = [v46 personNodeByLocalIdentifier];
    v24 = [(PGGraphIngestRelationshipProcessor *)self tagRelationshipByPersonForPersonNodes:v13];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke;
    v57[3] = &unk_278886300;
    v25 = personNodeByLocalIdentifier;
    v62 = v22;
    v63 = serviceManager;
    v58 = v25;
    selfCopy = self;
    v26 = meNode;
    v60 = v26;
    v27 = v24;
    v61 = v27;
    v51 = v20;
    [v20 enumerateInferredRelationshipsUsingBlock:v57];
    if ([v27 count])
    {
      [(PGGraphIngestRelationshipProcessor *)self insertRelationshipEdgesForRelationshipTags:v27 meNode:v26];
    }

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    collection = [v26 collection];
    relatedPersonNodes = [collection relatedPersonNodes];
    v31 = [(MAElementCollection *)v13 collectionByIntersecting:relatedPersonNodes];

    [(PGGraphBuilder *)self->_graphBuilder insertStorytellingRelationshipsWithRelationshipsForPersonNodes:v31 meNode:v26];
    v32 = [(MAElementCollection *)v13 collectionBySubtracting:v31];
    [(PGGraphIngestRelationshipProcessor *)self removeStorytellingRelationshipEdgesForPersonNodes:v32 inGraph:v52];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke_2;
    v54[3] = &unk_278886328;
    v33 = v25;
    v55 = v33;
    v34 = v28;
    v56 = v34;
    [v20 enumerateHighRecallInferredRelationshipsExcludingPersonNodes:v31 usingBlock:v54];
    [(PGGraphBuilder *)self->_graphBuilder addStorytellingRelationshipsToMeNode:v26 relationshipByPerson:v34];
    v35 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v12 = v47;
    v38 = v47;
    v39 = v38;
    if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestRelationshipProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "PGGraphIngestRelationshipProcessor";
      v67 = 2048;
      v68 = ((((v35 - v50) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    blockCopy = v48;
    updateCopy = v49;
    graph = v52;
  }

  else
  {
    v40 = mach_absolute_time();
    v42 = info.numer;
    v41 = info.denom;
    v43 = v12;
    v44 = v43;
    if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestRelationshipProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "PGGraphIngestRelationshipProcessor";
      v67 = 2048;
      v68 = ((((v40 - v50) * v42) / v41) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

void __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v14 = a4;
  v9 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (a5 > 0.0 || *(a1 + 64) == 1)
  {
    v10 = 0.99;
    if (a5 < 1.0)
    {
      v10 = a5;
    }

    if (*(a1 + 65))
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    [*(*(a1 + 40) + 8) addRelationshipEdgesBetweenPersonNode:*(a1 + 48) andPersonNode:v9 forRelationship:a3 confidence:v11 properties:v10];
    v12 = [*(a1 + 56) objectForKeyedSubscript:v9];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v12 removeObject:v13];
  }
}

void __71__PGGraphIngestRelationshipProcessor_runWithGraphUpdate_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ((([updateCopy isResumingFullAnalysis] & 1) != 0 || objc_msgSend(updateCopy, "hasUpdatedPersonNodes")) && !+[PGUserDefaults isRelationshipInferenceDisabled](PGUserDefaults, "isRelationshipInferenceDisabled"))
  {
    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    meNode = [graph meNode];
    v5 = meNode != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PGGraphIngestRelationshipProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestRelationshipProcessor;
  v6 = [(PGGraphIngestRelationshipProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end