@interface PGGraphIngestAOIBlockingProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestAOIBlockingProcessor)initWithGraphBuilder:(id)builder;
- (void)processAOIBlockingWithAOINodes:(id)nodes graph:(id)graph loggingConnection:(id)connection progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestAOIBlockingProcessor

- (void)processAOIBlockingWithAOINodes:(id)nodes graph:(id)graph loggingConnection:(id)connection progressBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  connectionCopy = connection;
  blockCopy = block;
  v13 = _Block_copy(blockCopy);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (v13 && (v14 = CFAbsoluteTimeGetCurrent(), v14 - v34[3] >= 0.01) && (v34[3] = v14, LOBYTE(v41[0]) = 0, (*(v13 + 2))(v13, v41, 0.0), v15 = *(v38 + 24) | LOBYTE(v41[0]), *(v38 + 24) = v15, (v15 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x4C04000202;
      LOWORD(v45) = 2080;
      *(&v45 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestAOIBlockingProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    buf = 0;
    *&v45 = &buf;
    *(&v45 + 1) = 0x2020000000;
    v46 = 0;
    v17 = [nodesCopy count];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke;
    v23[3] = &unk_278887B28;
    p_buf = &buf;
    v31 = v17;
    v18 = v13;
    v27 = v18;
    v29 = &v33;
    v32 = 0x3F847AE147AE147BLL;
    v30 = &v37;
    v19 = dictionary;
    v24 = v19;
    v25 = graphCopy;
    v26 = connectionCopy;
    [nodesCopy enumerateNodesUsingBlock:v23];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v34[3] >= 0.01)
      {
        v34[3] = Current;
        v22 = 0;
        (*(v18 + 2))(v18, &v22, 1.0);
        v21 = *(v38 + 24) | v22;
        *(v38 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41[0] = 67109378;
          v41[1] = 238;
          v42 = 2080;
          v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestAOIBlockingProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v41, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 24);
  v8 = *(a1 + 88);
  *(v6 + 24) = v7 + 1.0;
  if (!*(a1 + 56) || (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 72) + 8), Current - *(v10 + 24) < *(a1 + 96)) || (*(v10 + 24) = Current, buf[0] = 0, (*(*(a1 + 56) + 16))(v7 / v8), *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 80) + 8) + 24) != 1))
  {
    if ([v5 isBlocked])
    {
      goto LABEL_40;
    }

    v11 = objc_autoreleasePoolPush();
    v80 = 0;
    v81 = &v80;
    v82 = 0x2020000000;
    v83 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v12 = [MEMORY[0x277CBEB58] set];
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v13 = [v5 collection];
    v14 = [v13 addressNodes];

    v15 = [v14 count];
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v63[3] = 0;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_2;
    v47[3] = &unk_278887B00;
    v53 = v63;
    v16 = *(a1 + 88);
    v60 = v15;
    v61 = v16;
    v46 = *(a1 + 56);
    v17 = v46;
    v52 = v46;
    v62 = *(a1 + 96);
    v54 = *(a1 + 72);
    v18 = v14;
    v48 = v18;
    v55 = &v72;
    v56 = &v68;
    v19 = v5;
    v49 = v19;
    v57 = &v64;
    v20 = v12;
    v50 = v20;
    v51 = *(a1 + 32);
    v58 = &v76;
    v59 = &v80;
    [v18 enumerateNodesUsingBlock:v47];
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      *a3 = 1;
LABEL_39:

      _Block_object_dispose(v63, 8);
      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v72, 8);

      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v80, 8);
      objc_autoreleasePoolPop(v11);
      goto LABEL_40;
    }

    v21 = v81[3];
    v22 = v77[3];
    v24 = v21 / v22 >= 0.95 && v22 != 0;
    v26 = v65[3] / v21 >= 0.4 && v21 > 1;
    v27 = *(v73 + 24);
    v28 = *(v69 + 24);
    if (((v27 | (v28 | v26) & v24 & 1) == 0) | [v19 isBlocked] & 1)
    {
      if (!(v27 | (v28 | v26) & v24 & 1))
      {
        v29 = *(a1 + 48);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v38 = [v19 name];
          v39 = v38;
          v40 = @"YES";
          if (*(v73 + 24))
          {
            v41 = @"YES";
          }

          else
          {
            v41 = @"NO";
          }

          if (*(v69 + 24))
          {
            v42 = @"YES";
          }

          else
          {
            v42 = @"NO";
          }

          if (v26)
          {
            v43 = @"YES";
          }

          else
          {
            v43 = @"NO";
          }

          v44 = v81[3];
          if (!v24)
          {
            v40 = @"NO";
          }

          v45 = v77[3];
          *buf = 138414082;
          v85 = v38;
          v86 = 2112;
          v87 = @"NO";
          v88 = 2112;
          v89 = v41;
          v90 = 2112;
          v91 = v42;
          v92 = 2112;
          v93 = v43;
          v94 = 2112;
          v95 = v40;
          v96 = 2048;
          v97 = v44;
          v98 = 2048;
          v99 = v45;
          _os_log_debug_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEBUG, "Not blocking AOI %@: %@ (isVeryLarge %@, isUrban %@, hasManyAOIsAtSharedAddresses %@, isMatchingAddressRatio %@ (#AOI:%lu #Country:%lu))", buf, 0x52u);
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      +[PGGraphAreaNode setIsBlocked:onNodeForIdentifier:inGraph:](PGGraphAreaNode, "setIsBlocked:onNodeForIdentifier:inGraph:", 1, [v19 identifier], *(a1 + 40));
    }

    v29 = *(a1 + 48);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v19 name];
      v31 = v30;
      v32 = @"NO";
      if (*(v73 + 24))
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (*(v69 + 24))
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      if (v26)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v36 = v81[3];
      if (v24)
      {
        v32 = @"YES";
      }

      v37 = v77[3];
      *buf = 138414082;
      v85 = v30;
      v86 = 2112;
      v87 = @"YES";
      v88 = 2112;
      v89 = v33;
      v90 = 2112;
      v91 = v34;
      v92 = 2112;
      v93 = v35;
      v94 = 2112;
      v95 = v32;
      v96 = 2048;
      v97 = v36;
      v98 = 2048;
      v99 = v37;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Blocking AOI %@: %@ (isVeryLarge %@, isUrban %@, hasManyAOIsAtSharedAddresses %@, isMatchingAddressRatio %@ (#AOI:%lu #Country:%lu))", buf, 0x52u);
    }

    goto LABEL_38;
  }

  *a3 = 1;
LABEL_40:
}

void __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 72) + 8) + 24);
  v7 = *(*(a1 + 80) + 8);
  v8 = *(v7 + 24);
  v10 = *(a1 + 144);
  v9 = *(a1 + 152);
  *(v7 + 24) = v8 + 1.0;
  if (*(a1 + 64) && (Current = CFAbsoluteTimeGetCurrent(), v12 = *(*(a1 + 88) + 8), Current - *(v12 + 24) >= *(a1 + 160)) && (*(v12 + 24) = Current, v46 = 0, (*(*(a1 + 64) + 16))((v6 + v8 / v10) / v9), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    [v5 coordinate];
    v15 = v14;
    v17 = v16;
    v18 = *(a1 + 32);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_3;
    v41[3] = &unk_278887AD8;
    v19 = v5;
    v44 = v15;
    v45 = v17;
    v20 = *(a1 + 104);
    v42 = v19;
    v43 = v20;
    [v18 enumerateNodesUsingBlock:v41];
    *a3 = *(*(*(a1 + 104) + 8) + 24);
    if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
    {
      if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
      {
        v21 = [v19 collection];
        v22 = [v21 momentNodes];
        v23 = [v22 urbanRoiNodes];
        *(*(*(a1 + 112) + 8) + 24) = [v23 isEmpty] ^ 1;
      }

      v24 = [v19 collection];
      v25 = [v24 areaNodes];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_4;
      v38[3] = &unk_278888120;
      v26 = *(a1 + 40);
      v27 = *(a1 + 120);
      v39 = v26;
      v40 = v27;
      [v25 enumerateNodesUsingBlock:v38];

      v28 = [v19 collection];
      v29 = [v28 countryNodes];
      v30 = [v29 anyNode];

      if (v30 && ([*(a1 + 48) containsObject:v30] & 1) == 0)
      {
        [*(a1 + 48) addObject:v30];
        v31 = [v30 UUID];
        if (v31 && ([*(a1 + 56) objectForKeyedSubscript:v31], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "unsignedIntegerValue"), v32))
        {
          v34 = v33;
        }

        else
        {
          v35 = [v30 collection];
          v36 = [v35 addressNodes];
          v34 = [v36 count];

          if (v31)
          {
            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
            [*(a1 + 56) setObject:v37 forKeyedSubscript:v31];
          }

          v32 = 0;
        }

        *(*(*(a1 + 128) + 8) + 24) += v34;
      }

      ++*(*(*(a1 + 136) + 8) + 24);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isSameNodeAsNode:v5] & 1) == 0)
  {
    [v5 coordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    *(*(*(a1 + 40) + 8) + 24) = v7 >= 250000.0;
    *a3 = *(*(*(a1 + 40) + 8) + 24);
  }

  objc_autoreleasePoolPop(v6);
}

void *__106__PGGraphIngestAOIBlockingProcessor_processAOIBlockingWithAOINodes_graph_loggingConnection_progressBlock___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 isSameNodeAsNode:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(loggingConnection);
  v11 = loggingConnection;
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestAOIBlockingProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  selfCopy = self;
  if ([updateCopy isResumingFullAnalysis])
  {
    areaNodes = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection nodesInGraph:graph];
  }

  else
  {
    v16 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
    [v16 addressNodes];
    v17 = v10 - 1;
    v18 = graph;
    v19 = v10;
    v20 = updateCopy;
    v21 = v14;
    v23 = v22 = blockCopy;
    areaNodes = [v23 areaNodes];

    blockCopy = v22;
    v14 = v21;
    updateCopy = v20;
    v10 = v19;
    graph = v18;
    v13 = v17;
  }

  if ([areaNodes count])
  {
    [v30 processAOIBlockingWithAOINodes:areaNodes graph:graph loggingConnection:v12 progressBlock:blockCopy];
  }

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v12;
  v28 = v27;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestAOIBlockingProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "PGGraphIngestAOIBlockingProcessor";
    v34 = 2048;
    v35 = ((((v24 - v14) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert"))
  {
    v4 = 1;
  }

  else
  {
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
  }

  return v4;
}

- (PGGraphIngestAOIBlockingProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestAOIBlockingProcessor;
  v6 = [(PGGraphIngestAOIBlockingProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end