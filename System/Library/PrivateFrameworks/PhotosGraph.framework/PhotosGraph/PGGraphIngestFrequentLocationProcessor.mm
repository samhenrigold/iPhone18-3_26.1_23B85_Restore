@interface PGGraphIngestFrequentLocationProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestFrequentLocationProcessor)initWithGraphBuilder:(id)builder;
- (id)processFrequentLocationWithGraph:(id)graph progressBlock:(id)block;
- (void)deleteFrequentLocationNodesInGraph:(id)graph changeRequest:(id)request;
- (void)processAndInsertFrequentLocationWithMomentNodes:(id)nodes inGraph:(id)graph changeRequest:(id)request progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestFrequentLocationProcessor

- (id)processFrequentLocationWithGraph:(id)graph progressBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v6 = _Block_copy(blockCopy);
  v38 = [MEMORY[0x277CBEB98] set];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if (!v6 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v49[3] < 0.01) || (v49[3] = v7, v47 = 0, v6[2](v6, &v47, 0.0), v8 = *(v53 + 24) | v47, *(v53 + 24) = v8, (v8 & 1) == 0))
  {
    v10 = objc_opt_new();
    meNode = [graphCopy meNode];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke;
    v45[3] = &unk_27887F790;
    v12 = v10;
    v46 = v12;
    [meNode enumerateHomeOrWorkAddressNodesUsingBlock:v45];
    v36 = meNode;
    if (v6)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v49[3] >= 0.01)
      {
        v49[3] = Current;
        v47 = 0;
        v6[2](v6, &v47, 0.1);
        v14 = *(v53 + 24) | v47;
        *(v53 + 24) = v14;
        if (v14)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v57 = 182;
            *&v57[4] = 2080;
            *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = v38;
          goto LABEL_33;
        }
      }
    }

    v15 = [(PGGraphBuilder *)self->_graphBuilder photoLibrary:meNode];
    librarySpecificFetchOptions = [v15 librarySpecificFetchOptions];

    v17 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions];
    v18 = MEMORY[0x277CBEB98];
    fetchedObjects = [v17 fetchedObjects];
    v20 = [v18 setWithArray:fetchedObjects];

    v21 = self->_loggingConnection;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v20 count];
      *buf = 134217984;
      *v57 = v22;
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Processing frequent location for %tu moments", buf, 0xCu);
    }

    v23 = os_signpost_id_generate(self->_loggingConnection);
    v24 = self->_loggingConnection;
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "ProcessFrequentLocations", "", buf, 2u);
    }

    v26 = MEMORY[0x277D3AC78];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke_245;
    v40[3] = &unk_27888A188;
    v27 = v6;
    v41 = v27;
    v42 = &v48;
    v43 = &v52;
    v44 = 0x3F847AE147AE147BLL;
    v28 = [v26 processFrequentLocationsWithItems:v20 locationsOfInterest:v12 progressBlock:v40];
    v29 = self->_loggingConnection;
    v30 = v29;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, v23, "ProcessFrequentLocations", "", buf, 2u);
    }

    if (*(v53 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v57 = 196;
        *&v57[4] = 2080;
        *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
        v31 = MEMORY[0x277D86220];
LABEL_24:
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v6 || (v33 = CFAbsoluteTimeGetCurrent(), v33 - v49[3] < 0.01) || (v49[3] = v33, v47 = 0, v27[2](v27, &v47, 1.0), v34 = *(v53 + 24) | v47, *(v53 + 24) = v34, (v34 & 1) == 0))
      {
        v32 = v28;
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v57 = 198;
        *&v57[4] = 2080;
        *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
        v31 = MEMORY[0x277D86220];
        goto LABEL_24;
      }
    }

    v32 = v38;
LABEL_32:
    v9 = v32;

LABEL_33:
    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v57 = 169;
    *&v57[4] = 2080;
    *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = v38;
LABEL_34:
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v9;
}

void __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 isHome] ^ 1;
  v11 = [MEMORY[0x277CCAD78] UUID];
  v7 = objc_alloc(MEMORY[0x277D3ACC8]);
  v8 = [v5 location];

  v9 = [v7 initWithLocation:v8 uncertainty:*MEMORY[0x277D3ADD0]];
  v10 = [objc_alloc(MEMORY[0x277D3ACC0]) initWithIdentifier:v11 locationOfInterestType:v6 typeRadius:0 routineLocation:v9 mapItemLocation:250.0];
  [*(a1 + 32) addObject:v10];
}

void __89__PGGraphIngestFrequentLocationProcessor_processFrequentLocationWithGraph_progressBlock___block_invoke_245(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.9 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)processAndInsertFrequentLocationWithMomentNodes:(id)nodes inGraph:(id)graph changeRequest:(id)request progressBlock:(id)block
{
  v96 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  requestCopy = request;
  blockCopy = block;
  v86 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v55 = _Block_copy(blockCopy);
  if (!v55 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v84[3] < 0.01) || (v84[3] = v9, v82 = 0, (*(v55 + 2))(v55, &v82, 0.0), v10 = *(v88 + 24) | v82, *(v88 + 24) = v10, (v10 & 1) == 0))
  {
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke;
    v77[3] = &unk_27888A188;
    v53 = v55;
    v78 = v53;
    v79 = &v83;
    v80 = &v87;
    v81 = 0x3F847AE147AE147BLL;
    v51 = [(PGGraphIngestFrequentLocationProcessor *)self processFrequentLocationWithGraph:graphCopy progressBlock:v77];
    if (*(v88 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v93 = 102;
        *&v93[4] = 2080;
        *&v93[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
        v11 = MEMORY[0x277D86220];
LABEL_9:
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v12 = [v51 count];
      loggingConnection = self->_loggingConnection;
      v14 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          *buf = 134217984;
          *v93 = v12;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Ingesting %tu frequent locations", buf, 0xCu);
        }

        v48 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graphCopy];
        v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v48, "count")}];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke_231;
        v75[3] = &unk_278889290;
        v16 = v15;
        v76 = v16;
        [v48 enumerateNodesUsingBlock:v75];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = v51;
        v57 = [obj countByEnumeratingWithState:&v71 objects:v95 count:16];
        if (v57)
        {
          v17 = 1.0 / v12;
          v56 = *v72;
          v18 = 0.0;
          while (2)
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v72 != v56)
              {
                objc_enumerationMutation(obj);
              }

              v60 = *(*(&v71 + 1) + 8 * i);
              v19 = [PGGraphFrequentLocationNode alloc];
              dateInterval = [v60 dateInterval];
              v62 = [(PGGraphFrequentLocationNode *)v19 initWithUniversalDateInterval:dateInterval];

              centroid = [v60 centroid];
              pl_uuid = [centroid pl_uuid];
              v23 = [v16 objectForKeyedSubscript:pl_uuid];
              bestAddressNode = [v23 bestAddressNode];

              if (!bestAddressNode)
              {
                v25 = self->_loggingConnection;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v93 = v60;
                  _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "Failed to retrieve centroid address node for frequent location: %@. Will pick from another moment instead.", buf, 0xCu);
                }
              }

              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              sortedMoments = [v60 sortedMoments];
              v28 = [sortedMoments countByEnumeratingWithState:&v67 objects:v94 count:16];
              if (v28)
              {
                v29 = 0;
                v30 = *v68;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v68 != v30)
                    {
                      objc_enumerationMutation(sortedMoments);
                    }

                    pl_uuid2 = [*(*(&v67 + 1) + 8 * j) pl_uuid];
                    v33 = [v16 objectForKeyedSubscript:pl_uuid2];

                    if (v33)
                    {
                      if (!bestAddressNode)
                      {
                        bestAddressNode = [v33 bestAddressNode];
                      }

                      v34 = [[PGGraphFrequentLocationInEdge alloc] initFromMomentNode:v33 toFrequentLocationNode:v62];
                      [v26 addObject:v34];
                    }

                    else
                    {
                      ++v29;
                    }
                  }

                  v28 = [sortedMoments countByEnumeratingWithState:&v67 objects:v94 count:16];
                }

                while (v28);

                if (v29)
                {
                  v35 = self->_loggingConnection;
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134218242;
                    *v93 = v29;
                    *&v93[8] = 2112;
                    *&v93[10] = v60;
                    _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "Failed to retrieve %tu moments for frequent location: %@", buf, 0x16u);
                  }
                }
              }

              else
              {
              }

              if (bestAddressNode)
              {
                [requestCopy addNode:v62];
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v36 = v26;
                v37 = [v36 countByEnumeratingWithState:&v63 objects:v91 count:16];
                if (v37)
                {
                  v38 = *v64;
                  do
                  {
                    for (k = 0; k != v37; ++k)
                    {
                      if (*v64 != v38)
                      {
                        objc_enumerationMutation(v36);
                      }

                      [requestCopy addEdge:{*(*(&v63 + 1) + 8 * k), v48}];
                    }

                    v37 = [v36 countByEnumeratingWithState:&v63 objects:v91 count:16];
                  }

                  while (v37);
                }

                v40 = [[PGGraphFrequentLocationAtEdge alloc] initFromFrequentLocationNode:v62 toAddressNode:bestAddressNode];
                [requestCopy addEdge:v40];
                v18 = v17 + v18;
                if (v55)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current - v84[3] >= 0.01)
                  {
                    v84[3] = Current;
                    buf[0] = 0;
                    (*(v53 + 2))(v53, buf, v18 * 0.1 + 0.9);
                    v42 = *(v88 + 24) | buf[0];
                    *(v88 + 24) = v42;
                    if (v42)
                    {

                      goto LABEL_63;
                    }
                  }
                }

                v26 = bestAddressNode;
              }

              else
              {
                v43 = self->_loggingConnection;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v93 = v60;
                  _os_log_error_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_ERROR, "Failed to retrieve any centroid address node for frequent location: %@; Skipping ingest", buf, 0xCu);
                }
              }
            }

            v57 = [obj countByEnumeratingWithState:&v71 objects:v95 count:16];
            if (v57)
            {
              continue;
            }

            break;
          }
        }

        if (v55)
        {
LABEL_63:
          v46 = CFAbsoluteTimeGetCurrent();
          if (v46 - v84[3] >= 0.01)
          {
            v84[3] = v46;
            v82 = 0;
            (*(v53 + 2))(v53, &v82, 1.0);
            v47 = *(v88 + 24) | v82;
            *(v88 + 24) = v47;
            if ((v47 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v93 = 164;
              *&v93[4] = 2080;
              *&v93[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }

        goto LABEL_68;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No frequent location to ingest", buf, 2u);
      }

      if (v55)
      {
        v44 = CFAbsoluteTimeGetCurrent();
        if (v44 - v84[3] >= 0.01)
        {
          v84[3] = v44;
          v82 = 0;
          (*(v53 + 2))(v53, &v82, 1.0);
          v45 = *(v88 + 24) | v82;
          *(v88 + 24) = v45;
          if ((v45 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v93 = 107;
            *&v93[4] = 2080;
            *&v93[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_9;
          }
        }
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v93 = 97;
    *&v93[4] = 2080;
    *&v93[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestFrequentLocationProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_69:
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
}

void __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.9);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __126__PGGraphIngestFrequentLocationProcessor_processAndInsertFrequentLocationWithMomentNodes_inGraph_changeRequest_progressBlock___block_invoke_231(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)deleteFrequentLocationNodesInGraph:(id)graph changeRequest:(id)request
{
  requestCopy = request;
  v6 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graph];
  [requestCopy removeNodes:v6];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  graphBuilder = self->_graphBuilder;
  blockCopy = block;
  graph = [(PGGraphBuilder *)graphBuilder graph];
  v8 = self->_loggingConnection;
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGGraphIngestFrequentLocationProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v12 = mach_absolute_time();
  [graph invalidateSupersetCaches];
  v13 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graph];
  if ([(PGGraphBuilder *)self->_graphBuilder isSharedLibraryEnabled])
  {
    momentNodesWhereMeIsPresent = [(PGGraphBuilder *)self->_graphBuilder momentNodesWhereMeIsPresent];
    if ([momentNodesWhereMeIsPresent count])
    {
      v15 = momentNodesWhereMeIsPresent;

      v13 = v15;
    }

    else
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No moments in library where Me is present. Not applying presence filtering", buf, 2u);
      }
    }
  }

  v17 = objc_alloc_init(MEMORY[0x277D22C50]);
  [(PGGraphIngestFrequentLocationProcessor *)self deleteFrequentLocationNodesInGraph:graph changeRequest:v17];
  [(PGGraphIngestFrequentLocationProcessor *)self processAndInsertFrequentLocationWithMomentNodes:v13 inGraph:graph changeRequest:v17 progressBlock:blockCopy];

  [graph executeGraphChangeRequest:v17];
  v18 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v21 = v11;
  v22 = v21;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v9, "PGGraphIngestFrequentLocationProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "PGGraphIngestFrequentLocationProcessor";
    v26 = 2048;
    v27 = ((((v18 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert") & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToDelete"))
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

- (PGGraphIngestFrequentLocationProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = PGGraphIngestFrequentLocationProcessor;
  v6 = [(PGGraphIngestFrequentLocationProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = os_log_create("com.apple.PhotosGraph", "FrequentLocationProcessor");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;
  }

  return v7;
}

@end