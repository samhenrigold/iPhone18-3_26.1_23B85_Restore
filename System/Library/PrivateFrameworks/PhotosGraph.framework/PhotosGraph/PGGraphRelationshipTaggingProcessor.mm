@interface PGGraphRelationshipTaggingProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphRelationshipTaggingProcessor)initWithGraphBuilder:(id)builder;
- (void)_insertTagNodesWithEdgesForPersonsTagsWithConfidence:(id)confidence withChangeRequest:(id)request;
- (void)processRelationshipTagsForPersonNodes:(id)nodes progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphRelationshipTaggingProcessor

- (void)_insertTagNodesWithEdgesForPersonsTagsWithConfidence:(id)confidence withChangeRequest:(id)request
{
  requestCopy = request;
  v7 = MEMORY[0x277CBEB38];
  confidenceCopy = confidence;
  v9 = objc_alloc_init(v7);
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  v11 = [(PGGraphNodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesInGraph:graph];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __110__PGGraphRelationshipTaggingProcessor__insertTagNodesWithEdgesForPersonsTagsWithConfidence_withChangeRequest___block_invoke;
  v18[3] = &unk_278887140;
  v12 = v9;
  v19 = v12;
  [v11 enumerateNodesUsingBlock:v18];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__PGGraphRelationshipTaggingProcessor__insertTagNodesWithEdgesForPersonsTagsWithConfidence_withChangeRequest___block_invoke_2;
  v15[3] = &unk_27887F000;
  v16 = v12;
  v17 = requestCopy;
  v13 = requestCopy;
  v14 = v12;
  [confidenceCopy enumerateKeysAndObjectsUsingBlock:v15];
}

void __110__PGGraphRelationshipTaggingProcessor__insertTagNodesWithEdgesForPersonsTagsWithConfidence_withChangeRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 label];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __110__PGGraphRelationshipTaggingProcessor__insertTagNodesWithEdgesForPersonsTagsWithConfidence_withChangeRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __110__PGGraphRelationshipTaggingProcessor__insertTagNodesWithEdgesForPersonsTagsWithConfidence_withChangeRequest___block_invoke_3;
  v7[3] = &unk_27887EFD8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __110__PGGraphRelationshipTaggingProcessor__insertTagNodesWithEdgesForPersonsTagsWithConfidence_withChangeRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (!v6)
  {
    v6 = [[PGGraphPersonRelationshipTagNode alloc] initWithPersonRelationshipTag:[PGGraphPersonRelationshipTagNode relationshipTagFromString:v9]];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
    [*(a1 + 40) addNode:v6];
  }

  [v5 doubleValue];
  v8 = [[PGGraphRelationshipTagEdge alloc] initFromPersonNode:*(a1 + 48) toRelationshipTagNode:v6 withConfidence:v7];
  [*(a1 + 40) addEdge:v8];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v7 = os_signpost_id_generate(loggingConnection);
  v8 = loggingConnection;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PGGraphRelationshipTaggingProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v10 = mach_absolute_time();
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:graph];
  if ([v12 count])
  {
    [(PGGraphRelationshipTaggingProcessor *)self processRelationshipTagsForPersonNodes:v12 progressBlock:blockCopy];
  }

  else
  {
    v13 = +[PGLogging sharedLogging];
    loggingConnection2 = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[RelationshipTags] Skipping relationship tag ingest, no persons to process", buf, 2u);
    }
  }

  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = v9;
  v19 = v18;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_END, v7, "PGGraphRelationshipTaggingProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "PGGraphRelationshipTaggingProcessor";
    v23 = 2048;
    v24 = ((((v15 - v10) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (void)processRelationshipTagsForPersonNodes:(id)nodes progressBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  if (!v7 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v58[3] < 0.01) || (v58[3] = v8, v65[0] = 0, v7[2](v7, v65, 0.0), v9 = *(v62 + 24) | v65[0], *(v62 + 24) = v9, (v9 & 1) == 0))
  {
    v10 = +[PGGraphPersonRelationshipTagNode supportedTagsAsStrings];
    v11 = [PGGraphEntityTaggingServiceClient alloc];
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v56 = 0;
    v13 = [(PGGraphEntityTaggingServiceClient *)v11 initWithSupportedTagsAsStrings:v10 log:loggingConnection error:&v56];
    v41 = v56;

    if (!v13)
    {
      v36 = +[PGLogging sharedLogging];
      loggingConnection2 = [v36 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[RelationshipTags] Error accessing entity tagging service: %@", buf, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_40;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v58[3] < 0.01)
      {
        goto LABEL_40;
      }

      v58[3] = Current;
      v65[0] = 0;
      v7[2](v7, v65, 1.0);
      v39 = *(v62 + 24) | v65[0];
      *(v62 + 24) = v39;
      if ((v39 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 67109378;
      *&buf[4] = 51;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipTaggingProcessor.m";
      v16 = MEMORY[0x277D86220];
      goto LABEL_39;
    }

    if (v7)
    {
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v58[3] >= 0.01)
      {
        v58[3] = v14;
        v65[0] = 0;
        v7[2](v7, v65, 0.1);
        v15 = *(v62 + 24) | v65[0];
        *(v62 + 24) = v15;
        if (v15)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 55;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipTaggingProcessor.m";
            v16 = MEMORY[0x277D86220];
LABEL_39:
            _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_40:

          goto LABEL_41;
        }
      }
    }

    v17 = objc_alloc_init(MEMORY[0x277D22C50]);
    relationshipTagEdges = [nodesCopy relationshipTagEdges];
    if ([relationshipTagEdges count])
    {
      [v17 removeEdges:relationshipTagEdges];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v70 = 0x3FC999999999999ALL;
    v19 = [nodesCopy count];
    if (v7)
    {
      v20 = CFAbsoluteTimeGetCurrent();
      if (v20 - v58[3] >= 0.01)
      {
        v58[3] = v20;
        v55 = 0;
        v7[2](v7, &v55, *(*&buf[8] + 24));
        v21 = *(v62 + 24) | v55;
        *(v62 + 24) = v21;
        if (v21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v65 = 67109378;
            v66 = 64;
            v67 = 2080;
            v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipTaggingProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v65, 0x12u);
          }

          goto LABEL_31;
        }
      }
    }

    v40 = relationshipTagEdges;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = dispatch_group_create();
    v24 = objc_alloc_init(PGUnfairLock);
    v25 = 0.8 / v19;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __91__PGGraphRelationshipTaggingProcessor_processRelationshipTagsForPersonNodes_progressBlock___block_invoke;
    v43[3] = &unk_27887EFB0;
    v26 = v23;
    v44 = v26;
    v45 = v13;
    v46 = v10;
    v27 = v24;
    v47 = v27;
    v28 = v22;
    v48 = v28;
    v50 = buf;
    v53 = v25;
    v29 = v7;
    v49 = v29;
    v51 = &v57;
    v54 = 0x3F847AE147AE147BLL;
    v52 = &v61;
    [nodesCopy enumerateNodesUsingBlock:v43];
    dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    if (v7 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v58[3] >= 0.01) && (v58[3] = v30, v55 = 0, v29[2](v29, &v55, 0.9), v31 = *(v62 + 24) | v55, *(v62 + 24) = v31, (v31 & 1) != 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_30:

        relationshipTagEdges = v40;
LABEL_31:
        _Block_object_dispose(buf, 8);

        goto LABEL_40;
      }

      *v65 = 67109378;
      v66 = 97;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipTaggingProcessor.m";
      v32 = MEMORY[0x277D86220];
    }

    else
    {
      [(PGGraphRelationshipTaggingProcessor *)self _insertTagNodesWithEdgesForPersonsTagsWithConfidence:v28 withChangeRequest:v17];
      graph = [(PGGraphBuilder *)self->_graphBuilder graph];
      [graph executeGraphChangeRequest:v17];

      if (!v7)
      {
        goto LABEL_30;
      }

      v34 = CFAbsoluteTimeGetCurrent();
      if (v34 - v58[3] < 0.01)
      {
        goto LABEL_30;
      }

      v58[3] = v34;
      v55 = 0;
      v29[2](v29, &v55, 1.0);
      v35 = *(v62 + 24) | v55;
      *(v62 + 24) = v35;
      if ((v35 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *v65 = 67109378;
      v66 = 101;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipTaggingProcessor.m";
      v32 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v65, 0x12u);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 44;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/PGGraphRelationshipTaggingProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_41:
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
}

void __91__PGGraphRelationshipTaggingProcessor_processRelationshipTagsForPersonNodes_progressBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 localIdentifier];
  if ([v6 length])
  {
    dispatch_group_enter(*(a1 + 32));
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__PGGraphRelationshipTaggingProcessor_processRelationshipTagsForPersonNodes_progressBlock___block_invoke_2;
    v11[3] = &unk_27887EF88;
    v12 = v6;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = v5;
    v20 = *(a1 + 104);
    v10 = *(a1 + 72);
    v8 = v10;
    v21 = *(a1 + 112);
    v9 = *(a1 + 88);
    v18 = v10;
    v19 = v9;
    v22 = a3;
    [v7 entityTagsForPersonWithPersonLocalIdentifier:v12 completionHandler:v11];
  }
}

void __91__PGGraphRelationshipTaggingProcessor_processRelationshipTagsForPersonNodes_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __91__PGGraphRelationshipTaggingProcessor_processRelationshipTagsForPersonNodes_progressBlock___block_invoke_229;
    v17 = &unk_27887EF60;
    v18 = *(a1 + 48);
    v8 = v7;
    v19 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:&v14];
    [*(a1 + 56) lock];
    [*(a1 + 64) setObject:v8 forKeyedSubscript:*(a1 + 72)];
    *(*(*(a1 + 88) + 8) + 24) = *(a1 + 112) + *(*(*(a1 + 88) + 8) + 24);
    if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 96) + 8), Current - *(v10 + 24) >= *(a1 + 120)) && (*(v10 + 24) = Current, buf[0] = 0, (*(*(a1 + 80) + 16))(*(*(*(a1 + 88) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) |= buf[0], *(*(*(a1 + 104) + 8) + 24) == 1))
    {
      **(a1 + 128) = 1;
    }

    else
    {
      [*(a1 + 56) unlock];
      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    v11 = +[PGLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[RelationshipTags] Error querying tags for person %@: %@", buf, 0x16u);
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __91__PGGraphRelationshipTaggingProcessor_processRelationshipTagsForPersonNodes_progressBlock___block_invoke_229(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    hasUpdatedPersonNodes = 1;
  }

  else
  {
    hasUpdatedPersonNodes = [updateCopy hasUpdatedPersonNodes];
  }

  return hasUpdatedPersonNodes;
}

- (PGGraphRelationshipTaggingProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphRelationshipTaggingProcessor;
  v6 = [(PGGraphRelationshipTaggingProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end