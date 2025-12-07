@interface PGGraphIngestPointsOfInterestProcessor
- (BOOL)_fetchPointsOfInterestForRegions:(id)regions loggingConnection:(id)connection progress:(id)progress;
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPointsOfInterestProcessor)initWithGraphBuilder:(id)builder;
- (id)_pointOfInterestTypeStringsFromBusinessItems:(id)items withOriginalCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_collectPOIsToResolveWithMomentNodes:(id)nodes graphUpdate:(id)update progress:(id)progress;
- (void)_insertPointOfInterestTypeStrings:(id)strings graph:(id)graph withMomentNodes:(id)nodes loggingConnection:(id)connection;
- (void)deletePOIEdgesWithMomentNodes:(id)nodes inGraph:(id)graph;
- (void)disambiguatePointsOfInterestWithMomentNodes:(id)nodes graphUpdate:(id)update progress:(id)progress;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPointsOfInterestProcessor

- (BOOL)_fetchPointsOfInterestForRegions:(id)regions loggingConnection:(id)connection progress:(id)progress
{
  v32[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  progressCopy = progress;
  v10 = MEMORY[0x277D27768];
  regionsCopy = regions;
  v12 = [v10 alloc];
  poiCache = [(PGGraphBuilder *)self->_graphBuilder poiCache];
  locationCache = [(PGGraphBuilder *)self->_graphBuilder locationCache];
  v15 = [v12 initWithPOICache:poiCache locationCache:locationCache];

  v16 = objc_alloc(MEMORY[0x277D27770]);
  poiCache2 = [(PGGraphBuilder *)self->_graphBuilder poiCache];
  locationCache2 = [(PGGraphBuilder *)self->_graphBuilder locationCache];
  v19 = [v16 initWithPOICache:poiCache2 locationCache:locationCache2];

  [v15 setPrecision:0.1];
  [v19 setPrecision:0.1];
  v20 = objc_alloc(MEMORY[0x277D277A0]);
  v32[0] = v15;
  v32[1] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v22 = [v20 initWithQueryPerformers:v21];

  [v22 setLoggingConnection:connectionCopy];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __102__PGGraphIngestPointsOfInterestProcessor__fetchPointsOfInterestForRegions_loggingConnection_progress___block_invoke;
  v28[3] = &unk_27888A280;
  v23 = progressCopy;
  v29 = v23;
  v27 = 0;
  v24 = [v22 createCacheForRegions:regionsCopy progressBlock:v28 error:&v27];

  v25 = v27;
  if ((v24 & 1) == 0 && os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v25;
    _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "Failed caching pois: %@", buf, 0xCu);
  }

  return v24;
}

uint64_t __102__PGGraphIngestPointsOfInterestProcessor__fetchPointsOfInterestForRegions_loggingConnection_progress___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_collectPOIsToResolveWithMomentNodes:(id)nodes graphUpdate:(id)update progress:(id)progress
{
  v56 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  updateCopy = update;
  progressCopy = progress;
  v10 = _Block_copy(progressCopy);
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (v10 && (v11 = CFAbsoluteTimeGetCurrent(), v11 - v43[3] >= 0.01) && (v43[3] = v11, LOBYTE(v50[0]) = 0, (*(v10 + 2))(v10, v50, 0.0), v12 = *(v47 + 24) | LOBYTE(v50[0]), *(v47 + 24) = v12, (v12 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x10804000202;
      LOWORD(v54) = 2080;
      *(&v54 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v26 = progressCopy;
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v27 = v10;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    buf = 0;
    *&v54 = &buf;
    *(&v54 + 1) = 0x2020000000;
    v55 = 0;
    v17 = v10;
    v18 = 1.0 / [nodesCopy count];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __100__PGGraphIngestPointsOfInterestProcessor__collectPOIsToResolveWithMomentNodes_graphUpdate_progress___block_invoke;
    v30[3] = &unk_27888A258;
    v19 = v10;
    v36 = v19;
    v37 = &v42;
    v40 = 0x3F847AE147AE147BLL;
    p_buf = &buf;
    v39 = &v46;
    v25 = dictionary;
    v31 = v25;
    v24 = serviceManager;
    v32 = v24;
    v20 = dictionary2;
    v33 = v20;
    v34 = updateCopy;
    v21 = loggingConnection;
    v35 = v21;
    v41 = v18;
    [nodesCopy enumerateNodesUsingBlock:v30];
    objc_storeStrong(&self->_momentNodesToResolvePOIByRegion, dictionary);
    progressCopy = v26;
    objc_storeStrong(&self->_momentNodesToResolvePOIAndEnrichByBusinessItemMuid, dictionary2);
    if (v17)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v43[3] >= 0.01)
      {
        v43[3] = Current;
        v29 = 0;
        (*(v19 + 2))(v19, &v29, 1.0);
        v23 = *(v47 + 24) | v29;
        *(v47 + 24) = v23;
        if ((v23 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v50[0] = 67109378;
          v50[1] = 347;
          v51 = 2080;
          v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v50, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
    v10 = v27;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
}

void __100__PGGraphIngestPointsOfInterestProcessor__collectPOIsToResolveWithMomentNodes_graphUpdate_progress___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 72) && (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 80) + 8), Current - *(v7 + 24) >= *(a1 + 104)) && (*(v7 + 24) = Current, v20 = 0, (*(*(a1 + 72) + 16))(*(*(*(a1 + 88) + 8) + 24)), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __100__PGGraphIngestPointsOfInterestProcessor__collectPOIsToResolveWithMomentNodes_graphUpdate_progress___block_invoke_2;
    v15[3] = &unk_27888A230;
    v16 = *(a1 + 32);
    v17 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v18 = v14;
    v19 = v13;
    [v17 enumeratePreciseAddressNodesUsingBlock:v15];

    objc_autoreleasePoolPop(v8);
    *(*(*(a1 + 88) + 8) + 24) = *(a1 + 112) + *(*(*(a1 + 88) + 8) + 24);
  }
}

void __100__PGGraphIngestPointsOfInterestProcessor__collectPOIsToResolveWithMomentNodes_graphUpdate_progress___block_invoke_2(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 hasEdgeWithLabel:@"IS_HOME_WORK" domain:202] & 1) == 0)
  {
    v4 = [v3 location];
    [v4 coordinate];
    v6 = v5;
    v8 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f", *&v5, *&v7];
    v53 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v9 radius:v6 identifier:{v8, 0.1}];
    v10 = [*(a1 + 32) objectForKeyedSubscript:?];
    v11 = *(a1 + 40);
    if (v10)
    {
      v12 = v10;
      [v10 addObject:v11];
    }

    else
    {
      v48 = v9;
      v49 = v3;
      v13 = [v11 universalStartDate];
      v46 = [*(a1 + 40) universalEndDate];
      v47 = v13;
      v52 = v4;
      v45 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v46];
      v14 = [*(a1 + 48) fetchLocationOfInterestVisitsAtLocation:v4 inDateInterval:?];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v15)
      {
        v16 = v15;
        v12 = 0;
        v17 = *v56;
        v18 = *MEMORY[0x277D27628];
        v50 = *MEMORY[0x277D27628];
        v51 = v14;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v56 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v55 + 1) + 8 * i);
            v21 = [v20 locationOfInterest];
            v22 = v21;
            if (v21 && [v21 type] && objc_msgSend(v22, "type") != 1)
            {
              v23 = [v22 businessItemMuid];
              if (v23 == v18)
              {
                v24 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 40)];

                [*(a1 + 32) setObject:v24 forKeyedSubscript:v53];
                v25 = *(a1 + 72);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v26 = v25;
                  [v52 coordinate];
                  v28 = v27;
                  [v52 coordinate];
                  v30 = v29;
                  v31 = [*(a1 + 40) name];
                  *buf = 134284035;
                  v60 = v28;
                  v61 = 2049;
                  v62 = v30;
                  v63 = 2112;
                  v64 = v31;
                  _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "Should fetch POI for location {%{private}f, %{private}f} in Moment %@ from Routine", buf, 0x20u);
                }

                v12 = v24;
              }

              else
              {
                v54 = v12;
                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
                v33 = [*(a1 + 56) objectForKeyedSubscript:v32];
                if (!v33)
                {
                  v33 = [MEMORY[0x277CBEB58] set];
                  [*(a1 + 56) setObject:v33 forKeyedSubscript:v32];
                }

                [v33 addObject:*(a1 + 40)];
                v34 = a1;
                v35 = *(a1 + 64);
                v36 = [*(v34 + 40) uuid];
                v37 = v35;
                a1 = v34;
                [v37 registerLocationOfInterestVisitToResolve:v20 forMomentUUID:v36];

                v38 = *(v34 + 72);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = v38;
                  [v52 coordinate];
                  v41 = v40;
                  [v52 coordinate];
                  v43 = v42;
                  v44 = [*(v34 + 40) name];
                  *buf = 134284035;
                  v60 = v41;
                  v61 = 2049;
                  v62 = v43;
                  v63 = 2112;
                  v64 = v44;
                  _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "Should fetch POI and enrich for location {%{private}f, %{private}f} in Moment %@ from Routine", buf, 0x20u);

                  a1 = v34;
                }

                v18 = v50;
                v14 = v51;
                v12 = v54;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v16);
      }

      else
      {
        v12 = 0;
      }

      v9 = v48;
      v3 = v49;
      v4 = v52;
    }
  }
}

- (id)_pointOfInterestTypeStringsFromBusinessItems:(id)items withOriginalCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v40 = *MEMORY[0x277D85DE8];
  coordinateCopy = coordinate;
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v42.latitude = latitude;
    v42.longitude = longitude;
    v26 = CLLocationCoordinate2DIsValid(v42);
    array = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = itemsCopy;
    obj = itemsCopy;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          if (v26)
          {
            v31 = 0;
            v32 = 0;
            region = [v12 region];
            [region center];
            v31 = v14;
            v32 = v15;

            CLLocationCoordinate2DGetDistanceFrom();
            if (v16 > 0.1)
            {
              continue;
            }
          }

          categories = [v12 categories];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v18 = [categories countByEnumeratingWithState:&v27 objects:v38 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(categories);
                }

                v22 = +[PGGraphPlacesResolver poiStringFromSpatialLookupCategory:](PGGraphPlacesResolver, "poiStringFromSpatialLookupCategory:", [*(*(&v27 + 1) + 8 * j) integerValue]);
                if (v22)
                {
                  [array addObject:v22];
                }
              }

              v19 = [categories countByEnumeratingWithState:&v27 objects:v38 count:16];
            }

            while (v19);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v9);
    }

    itemsCopy = v24;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (void)_insertPointOfInterestTypeStrings:(id)strings graph:(id)graph withMomentNodes:(id)nodes loggingConnection:(id)connection
{
  v56 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  graphCopy = graph;
  nodesCopy = nodes;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = stringsCopy;
  v10 = [stringsCopy countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v51;
    v33 = v48;
    v34 = nodesCopy;
    v39 = *v51;
    do
    {
      v13 = 0;
      v41 = v11;
      do
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [PGGraph poiLabelForPOIType:*(*(&v50 + 1) + 8 * v13), v33];
        if (v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277D22C50]);
          v16 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:nodesCopy graph:graphCopy];
          v17 = [PGGraphPOINodeCollection poiNodesForLabel:v14 inGraph:graphCopy];
          if ([v17 count])
          {
            v18 = v16;
            v19 = [(PGGraphEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:v16 toNodes:v17];
            v20 = [v19 count];
            if (v20 >= [nodesCopy count])
            {
              v16 = v18;
              v12 = v39;
              v11 = v41;
            }

            else
            {
              v40 = v14;
              anyNode = [v17 anyNode];
              v16 = v18;
              v12 = v39;
LABEL_11:
              v11 = v41;
              if (anyNode)
              {
                v38 = v16;
                v22 = v16;
                v37 = v17;
                if ([v19 count])
                {
                  elementIdentifiers = [v19 elementIdentifiers];
                  v47[0] = MEMORY[0x277D85DD0];
                  v47[1] = 3221225472;
                  v48[0] = __116__PGGraphIngestPointsOfInterestProcessor__insertPointOfInterestTypeStrings_graph_withMomentNodes_loggingConnection___block_invoke;
                  v48[1] = &unk_27888A200;
                  v49 = graphCopy;
                  [elementIdentifiers enumerateIdentifiersWithBlock:v47];

                  v24 = [(MANodeCollection *)PGGraphMomentNodeCollection sourceNodesOfEdges:v19];
                  v25 = [(MAElementCollection *)v22 collectionBySubtracting:v24];

                  v22 = v25;
                }

                v36 = v19;
                v45 = 0u;
                v46 = 0u;
                v43 = 0u;
                v44 = 0u;
                v26 = nodesCopy;
                v27 = [v26 countByEnumeratingWithState:&v43 objects:v54 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v44;
                  do
                  {
                    for (i = 0; i != v28; ++i)
                    {
                      if (*v44 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = *(*(&v43 + 1) + 8 * i);
                      if ([(MANodeCollection *)v22 containsNode:v31])
                      {
                        v32 = [[PGGraphPOIEdge alloc] initFromMomentNode:v31 toPOINode:anyNode confidence:1 poiIsImproved:0 poiIsSpecial:1.0];
                        [v15 addEdge:v32];
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v43 objects:v54 count:16];
                  }

                  while (v28);
                }

                [graphCopy executeGraphChangeRequest:v15];
                nodesCopy = v34;
                v12 = v39;
                v14 = v40;
                v11 = v41;
                v17 = v37;
                v16 = v38;
                v19 = v36;
              }

              else
              {
                v14 = v40;
              }
            }

            goto LABEL_27;
          }

          v40 = v14;
          anyNode = [[PGGraphPOINode alloc] initWithLabel:v14];
          [v15 addNode:anyNode];
          v19 = 0;
          goto LABEL_11;
        }

LABEL_27:

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v11);
  }
}

- (void)deletePOIEdgesWithMomentNodes:(id)nodes inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C50];
  graphCopy = graph;
  nodesCopy = nodes;
  v10 = objc_alloc_init(v5);
  poiNodes = [nodesCopy poiNodes];
  v9 = [(PGGraphEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:nodesCopy toNodes:poiNodes];

  [v10 removeEdges:v9];
  [graphCopy executeGraphChangeRequest:v10];
}

- (void)disambiguatePointsOfInterestWithMomentNodes:(id)nodes graphUpdate:(id)update progress:(id)progress
{
  v96 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  updateCopy = update;
  progressCopy = progress;
  v82 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v45 = _Block_copy(progressCopy);
  if (!v45 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v80[3] < 0.01) || (v80[3] = v8, v87[0] = 0, (*(v45 + 2))(v45, v87, 0.0), v9 = *(v84 + 24) | v87[0], *(v84 + 24) = v9, (v9 & 1) == 0))
  {
    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke;
    v74[3] = &unk_27888A188;
    v10 = v45;
    v75 = v10;
    v76 = &v79;
    v77 = &v83;
    v78 = 0x3F847AE147AE147BLL;
    [(PGGraphIngestPointsOfInterestProcessor *)self _collectPOIsToResolveWithMomentNodes:nodesCopy graphUpdate:updateCopy progress:v74];
    if (*(v84 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 103;
        LOWORD(v92) = 2080;
        *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_43;
    }

    v41 = self->_momentNodesToResolvePOIByRegion;
    v46 = self->_momentNodesToResolvePOIAndEnrichByBusinessItemMuid;
    if ([(NSDictionary *)v46 count])
    {
      v40 = v10;
      v11 = objc_alloc(MEMORY[0x277CBEB98]);
      allKeys = [(NSDictionary *)v46 allKeys];
      v13 = [v11 initWithArray:allKeys];

      businessCacheUpdater = self->_businessCacheUpdater;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke_254;
      v69[3] = &unk_27888A1B0;
      v70 = v40;
      v71 = &v79;
      v73 = xmmword_22F78C150;
      v72 = &v83;
      v15 = [(CLSBusinessCacheUpdater *)businessCacheUpdater enrichedBusinessItemsByMuidsForMuids:v13 progressBlock:v69];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v65 objects:v95 count:16];
      if (v17)
      {
        v18 = *v66;
        v19 = *MEMORY[0x277CE4278];
        v20 = *(MEMORY[0x277CE4278] + 8);
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v66 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v65 + 1) + 8 * i);
            v23 = [v15 objectForKeyedSubscript:v22];
            if (v23)
            {
              v24 = [(NSDictionary *)v46 objectForKeyedSubscript:v22];
              v94 = v23;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
              v26 = [(PGGraphIngestPointsOfInterestProcessor *)self _pointOfInterestTypeStringsFromBusinessItems:v25 withOriginalCoordinate:v19, v20];

              [(PGGraphIngestPointsOfInterestProcessor *)self _insertPointOfInterestTypeStrings:v26 graph:graph withMomentNodes:v24 loggingConnection:loggingConnection];
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v65 objects:v95 count:16];
        }

        while (v17);
      }

      v10 = v40;
    }

    if (v45)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v80[3] >= 0.01)
      {
        v80[3] = Current;
        v87[0] = 0;
        (*(v10 + 2))(v10, v87, 0.6);
        v28 = *(v84 + 24) | v87[0];
        *(v84 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 129;
            LOWORD(v92) = 2080;
            *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
            v29 = MEMORY[0x277D86220];
LABEL_41:
            _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_42:

LABEL_43:
          goto LABEL_44;
        }
      }
    }

    if ([(NSDictionary *)v41 count])
    {
      allKeys2 = [(NSDictionary *)v41 allKeys];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke_256;
      v60[3] = &unk_27888A1B0;
      v31 = v10;
      v61 = v31;
      v62 = &v79;
      v64 = xmmword_22F78C160;
      v63 = &v83;
      v32 = [(PGGraphIngestPointsOfInterestProcessor *)self _fetchPointsOfInterestForRegions:allKeys2 loggingConnection:loggingConnection progress:v60];
      if (*(v84 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 138;
          LOWORD(v92) = 2080;
          *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_34:

        goto LABEL_42;
      }

      v33 = v10;
      if (v32)
      {
        poiCache = [(PGGraphBuilder *)self->_graphBuilder poiCache];
        *buf = 0;
        *&v92 = buf;
        *(&v92 + 1) = 0x2020000000;
        v93 = 0;
        v35 = [(NSDictionary *)v41 count];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke_257;
        v49[3] = &unk_27888A1D8;
        v55 = buf;
        v58 = 1.0 / v35;
        v54 = v31;
        v56 = &v79;
        v59 = xmmword_22F78C170;
        v57 = &v83;
        v36 = poiCache;
        v50 = v36;
        selfCopy = self;
        v52 = graph;
        v53 = loggingConnection;
        [(NSDictionary *)v41 enumerateKeysAndObjectsUsingBlock:v49];
        v37 = *(v84 + 24);
        if (v37 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v87 = 67109378;
          v88 = 159;
          v89 = 2080;
          v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v87, 0x12u);
        }

        _Block_object_dispose(buf, 8);
        if (v37)
        {
          goto LABEL_34;
        }
      }

      v10 = v33;
    }

    if (!v45)
    {
      goto LABEL_42;
    }

    v38 = CFAbsoluteTimeGetCurrent();
    if (v38 - v80[3] < 0.01)
    {
      goto LABEL_42;
    }

    v80[3] = v38;
    v87[0] = 0;
    (*(v10 + 2))(v10, v87, 1.0);
    v39 = *(v84 + 24) | v87[0];
    *(v84 + 24) = v39;
    if ((v39 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    *buf = 67109378;
    *&buf[4] = 163;
    LOWORD(v92) = 2080;
    *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
    v29 = MEMORY[0x277D86220];
    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 88;
    LOWORD(v92) = 2080;
    *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPointsOfInterestProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_44:
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
}

void __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke_254(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(*(a1 + 40) + 8);
    if (Current - *(v8 + 24) >= *(a1 + 64))
    {
      *(v8 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke_256(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(*(a1 + 40) + 8);
    if (Current - *(v8 + 24) >= *(a1 + 64))
    {
      *(v8 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __107__PGGraphIngestPointsOfInterestProcessor_disambiguatePointsOfInterestWithMomentNodes_graphUpdate_progress___block_invoke_257(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  if (*(a1 + 64) && (v10 = *(a1 + 104), v11 = *(*(*(a1 + 72) + 8) + 24), Current = CFAbsoluteTimeGetCurrent(), v13 = *(*(a1 + 80) + 8), Current - *(v13 + 24) >= *(a1 + 112)) && (*(v13 + 24) = Current, (*(*(a1 + 64) + 16))(v10 + v11 * 0.1), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v14 = [*(a1 + 32) businessItemsForRegion:v7];
    [v7 center];
    v15 = [*(a1 + 40) _pointOfInterestTypeStringsFromBusinessItems:v14 withOriginalCoordinate:?];
    [*(a1 + 40) _insertPointOfInterestTypeStrings:v15 graph:*(a1 + 48) withMomentNodes:v8 loggingConnection:*(a1 + 56)];
  }

  objc_autoreleasePoolPop(v9);
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v9 = os_signpost_id_generate(loggingConnection);
  v10 = loggingConnection;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGGraphIngestPointsOfInterestProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v12 = mach_absolute_time();
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  v14 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];

  if ([v14 count])
  {
    [(PGGraphIngestPointsOfInterestProcessor *)self disambiguatePointsOfInterestWithMomentNodes:v14 graphUpdate:updateCopy progress:blockCopy];
  }

  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = v11;
  v19 = v18;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_END, v9, "PGGraphIngestPointsOfInterestProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "PGGraphIngestPointsOfInterestProcessor";
    v23 = 2048;
    v24 = ((((v15 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
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

- (PGGraphIngestPointsOfInterestProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v13.receiver = self;
  v13.super_class = PGGraphIngestPointsOfInterestProcessor;
  v6 = [(PGGraphIngestPointsOfInterestProcessor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = objc_alloc(MEMORY[0x277D27678]);
    poiCache = [builderCopy poiCache];
    v10 = [v8 initWithBusinessCategoryCache:poiCache];
    businessCacheUpdater = v7->_businessCacheUpdater;
    v7->_businessCacheUpdater = v10;
  }

  return v7;
}

@end