@interface PGPublicEventDisambiguator
- (PGPublicEventDisambiguator)initWithSceneTaxonomy:(id)taxonomy loggingConnection:(id)connection;
- (id)_categoriesForCriteriaMatchingForPublicEvent:(id)event;
- (id)_frequentLocationNodesForMomentNode:(id)node largeFrequentLocationNodes:(id)nodes;
- (id)disambiguateEvents:(id)events forTimeLocationTuple:(id)tuple momentNode:(id)node graph:(id)graph meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager;
- (id)publicEventCriteriaByCategoryInGraph:(id)graph;
- (void)collectConsolidatedAddressesForMomentNodes:(id)nodes largeFrequentLocationNodes:(id)locationNodes consolidatedAddresses:(id *)addresses consolidatedAddressesByMomentIdentifier:(id *)identifier momentNodesForConsolidatedAddresses:(id *)consolidatedAddresses progressBlock:(id)block;
@end

@implementation PGPublicEventDisambiguator

- (id)_categoriesForCriteriaMatchingForPublicEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  categories = [eventCopy categories];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:categories];
  if (_os_feature_enabled_impl())
  {
    if ([categories count] == 1)
    {
      v7 = [categories objectAtIndexedSubscript:0];
      category = [v7 category];
      festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
      v10 = [category isEqualToString:festivalsAndFairs];

      if (v10)
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          v12 = loggingConnection;
          name = [eventCopy name];
          v18 = 138412290;
          v19 = name;
          _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "Additionally evaluating against musicConcert category for event %@", &v18, 0xCu);
        }

        v14 = objc_alloc(MEMORY[0x277D27780]);
        musicConcerts = [MEMORY[0x277D27780] musicConcerts];
        v16 = [v14 initWithCategory:musicConcerts];

        [v6 addObject:v16];
      }
    }
  }

  return v6;
}

- (id)publicEventCriteriaByCategoryInGraph:(id)graph
{
  publicEventCriteriaByCategory = self->_publicEventCriteriaByCategory;
  if (!publicEventCriteriaByCategory)
  {
    v5 = [PGPublicEventCriteriaFactory publicEventCriteriaByCategoryForGraph:graph sceneTaxonomy:self->_sceneTaxonomy loggingConnection:self->_loggingConnection];
    v6 = self->_publicEventCriteriaByCategory;
    self->_publicEventCriteriaByCategory = v5;

    publicEventCriteriaByCategory = self->_publicEventCriteriaByCategory;
  }

  return publicEventCriteriaByCategory;
}

- (id)_frequentLocationNodesForMomentNode:(id)node largeFrequentLocationNodes:(id)nodes
{
  nodesCopy = nodes;
  frequentLocationNodes = [node frequentLocationNodes];
  if ([frequentLocationNodes count] && objc_msgSend(frequentLocationNodes, "intersectsSet:", nodesCopy))
  {
    v7 = frequentLocationNodes;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectConsolidatedAddressesForMomentNodes:(id)nodes largeFrequentLocationNodes:(id)locationNodes consolidatedAddresses:(id *)addresses consolidatedAddressesByMomentIdentifier:(id *)identifier momentNodesForConsolidatedAddresses:(id *)consolidatedAddresses progressBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  locationNodesCopy = locationNodes;
  blockCopy = block;
  v15 = _Block_copy(blockCopy);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v34 = blockCopy;
  if (!v15 || (v16 = CFAbsoluteTimeGetCurrent(), v16 - v49[3] < 0.01) || (v49[3] = v16, v47 = 0, (*(v15 + 2))(v15, &v47, 0.0), v17 = *(v53 + 24) | v47, *(v53 + 24) = v17, (v17 & 1) == 0))
  {
    addressesCopy = addresses;
    v19 = self->_loggingConnection;
    v20 = [MEMORY[0x277CBEB58] set];
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(nodesCopy, "count")}];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke;
    v37[3] = &unk_2788870B8;
    v23 = v15;
    v46 = 0x3F847AE147AE147BLL;
    v44 = &v48;
    v45 = &v52;
    v43 = v23;
    v37[4] = self;
    v38 = locationNodesCopy;
    v24 = v19;
    v39 = v24;
    v25 = v20;
    v40 = v25;
    v26 = v22;
    v41 = v26;
    v27 = v21;
    v42 = v27;
    [nodesCopy enumerateNodesUsingBlock:v37];
    if (*(v53 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 67109378;
      v57 = 254;
      v58 = 2080;
      v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventDisambiguator.m";
      v28 = MEMORY[0x277D86220];
    }

    else
    {
      v29 = v25;
      *consolidatedAddresses = v25;
      v30 = v27;
      *addressesCopy = v27;
      v31 = v26;
      *identifier = v26;
      if (!v15)
      {
        goto LABEL_15;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v49[3] < 0.01)
      {
        goto LABEL_15;
      }

      v49[3] = Current;
      v47 = 0;
      (*(v23 + 2))(v23, &v47, 1.0);
      v33 = *(v53 + 24) | v47;
      *(v53 + 24) = v33;
      if ((v33 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 67109378;
      v57 = 260;
      v58 = 2080;
      v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventDisambiguator.m";
      v28 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v57 = 199;
    v58 = 2080;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventDisambiguator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_16:
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
}

void __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 88) + 8), Current - *(v8 + 24) >= *(a1 + 104)) && (*(v8 + 24) = Current, v23 = 0, (*(*(a1 + 80) + 16))(0.5), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = [*(a1 + 32) _frequentLocationNodesForMomentNode:v5 largeFrequentLocationNodes:*(a1 + 40)];
    v11 = [v10 count] != 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke_2;
    v17[3] = &unk_278887090;
    v18 = *(a1 + 48);
    v12 = v5;
    v19 = v12;
    v22 = v11;
    v13 = v10;
    v20 = v13;
    v14 = v9;
    v21 = v14;
    [v12 enumerateConsolidatedAddressesUsingBlock:v17];
    if ([v14 count])
    {
      [*(a1 + 56) addObject:v12];
      v15 = *(a1 + 64);
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
      [v15 setObject:v14 forKeyedSubscript:v16];

      [*(a1 + 72) unionSet:v14];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __212__PGPublicEventDisambiguator_collectConsolidatedAddressesForMomentNodes_largeFrequentLocationNodes_consolidatedAddresses_consolidatedAddressesByMomentIdentifier_momentNodesForConsolidatedAddresses_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 addressNode];
  if (![v4 isPersonHomeOrWorkAddress])
  {
    if (*(a1 + 64) == 1)
    {
      [v3 coordinates];
      v33 = v11;
      v34 = v12;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = *(a1 + 48);
      v13 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
LABEL_7:
        v16 = 0;
        while (1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = [*(*(&v29 + 1) + 8 * v16) addressNode];
          [v17 coordinate];
          v27 = v18;
          v28 = v19;

          CLLocationCoordinate2DGetDistanceFrom();
          if (v20 <= 200.0)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
            if (v14)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v21 = *(a1 + 32);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        v22 = v33;
        v23 = v34;
        v24 = MEMORY[0x277CCACA8];
        v9 = v21;
        v25 = [v24 stringWithFormat:@"{%.8f, %.8f}", v22, v23, v27, v28, v29];
        v26 = [*(a1 + 40) name];
        *buf = 138412547;
        v37 = v25;
        v38 = 2113;
        v39 = v26;
        _os_log_debug_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_DEBUG, "[PublicEvents] Not considering address (%@) close to frequent location for Moment %{private}@", buf, 0x16u);

        goto LABEL_17;
      }

LABEL_13:
    }

    [*(a1 + 56) addObject:v3];
    goto LABEL_19;
  }

  v5 = *(a1 + 32);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_19;
  }

  v6 = v5;
  [v4 coordinate];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.8f, %.8f}", v7, v8];
  v10 = [*(a1 + 40) name];
  *buf = 138478083;
  v37 = v9;
  v38 = 2113;
  v39 = v10;
  _os_log_debug_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEBUG, "[PublicEvents] Not considering address %{private}@ at home/work for Moment %{private}@", buf, 0x16u);

LABEL_17:
LABEL_18:

LABEL_19:
}

- (id)disambiguateEvents:(id)events forTimeLocationTuple:(id)tuple momentNode:(id)node graph:(id)graph meaningfulEventProcessorCache:(id)cache serviceManager:(id)manager
{
  v153 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  tupleCopy = tuple;
  nodeCopy = node;
  graphCopy = graph;
  cacheCopy = cache;
  managerCopy = manager;
  v106 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v97 = graphCopy;
  v20 = [(PGPublicEventDisambiguator *)self publicEventCriteriaByCategoryInGraph:graphCopy];
  v98 = nodeCopy;
  v99 = tupleCopy;
  v95 = managerCopy;
  v96 = cacheCopy;
  v21 = [[PGPublicEventMatchingOptions alloc] initWithTimeLocationTuple:tupleCopy momentNode:nodeCopy meaningfulEventProcessorCache:cacheCopy serviceManager:managerCopy];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = eventsCopy;
  v108 = v20;
  v103 = [obj countByEnumeratingWithState:&v130 objects:v143 count:16];
  if (v103)
  {
    v102 = *v131;
    selfCopy = self;
    do
    {
      v22 = 0;
      do
      {
        if (*v131 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v130 + 1) + 8 * v22);
        name = [v23 name];
        v25 = [(PGPublicEventDisambiguator *)self _categoriesForCriteriaMatchingForPublicEvent:v23];
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v111 = v25;
        v26 = [v25 countByEnumeratingWithState:&v126 objects:v142 count:16];
        v105 = name;
        if (!v26)
        {
LABEL_39:
          if (PGIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
          }

          if (PGIsAppleInternal_isAppleInternal == 1)
          {
            v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v111, "count")}];
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            v52 = v111;
            v53 = [v52 countByEnumeratingWithState:&v118 objects:v140 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v119;
              do
              {
                for (i = 0; i != v54; ++i)
                {
                  if (*v119 != v55)
                  {
                    objc_enumerationMutation(v52);
                  }

                  category = [*(*(&v118 + 1) + 8 * i) category];
                  [v51 addObject:category];
                }

                v54 = [v52 countByEnumeratingWithState:&v118 objects:v140 count:16];
              }

              while (v54);
            }

            loggingConnection = self->_loggingConnection;
            name = v105;
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              *&buf[4] = v105;
              v151 = 2113;
              v152 = v51;
              _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: not matching allowed categories. event categories: %{private}@", buf, 0x16u);
            }
          }

          goto LABEL_52;
        }

        v104 = v22;
        v27 = 0;
        v28 = *v127;
        v29 = v26;
        v109 = *v127;
        do
        {
          v30 = 0;
          v110 = v29;
          do
          {
            if (*v127 != v28)
            {
              objc_enumerationMutation(v111);
            }

            category2 = [*(*(&v126 + 1) + 8 * v30) category];
            v32 = [v20 objectForKeyedSubscript:category2];
            v33 = [v32 count];
            v34 = v33 != 0;
            if (!v33)
            {
              goto LABEL_36;
            }

            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v115 = v32;
            v35 = v32;
            v36 = [v35 countByEnumeratingWithState:&v122 objects:v141 count:16];
            if (v36)
            {
              v37 = v36;
              v112 = category2;
              v38 = 0;
              v39 = 0;
              v40 = *v123;
              v41 = 1.79769313e308;
              while (1)
              {
                v42 = 0;
                do
                {
                  if (*v123 != v40)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v43 = *(*(&v122 + 1) + 8 * v42);
                  *buf = 0;
                  LOBYTE(v134) = 0;
                  if ([v43 isMatchingEvent:v23 matchingOptions:v21 withHighConfidence:&v134 matchingDistance:buf])
                  {
                    v44 = v134;
                    if ((v39 & 1) == 0)
                    {
                      goto LABEL_25;
                    }

                    if (v38)
                    {
                      v44 = 1;
                      if (v134)
                      {
                        v38 = 1;
                        v39 = 1;
                        if (*buf < v41)
                        {
                          goto LABEL_25;
                        }
                      }

                      else
                      {
                        v38 = 1;
                        v39 = 1;
                      }
                    }

                    else
                    {
                      v39 = 1;
                      if (v134)
                      {
                        v44 = 1;
LABEL_25:
                        v39 = 1;
                        v41 = *buf;
                        v38 = v44;
                        goto LABEL_26;
                      }

                      v38 = 0;
                    }
                  }

LABEL_26:
                  ++v42;
                }

                while (v37 != v42);
                v45 = [v35 countByEnumeratingWithState:&v122 objects:v141 count:16];
                v37 = v45;
                if (!v45)
                {

                  v46 = v39 & v38;
                  v20 = v108;
                  v28 = v109;
                  v29 = v110;
                  category2 = v112;
                  v32 = v115;
                  v34 = 1;
                  if (v46)
                  {
                    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "muid")}];
                    v48 = [dictionary objectForKeyedSubscript:v47];

                    v34 = 1;
                    v32 = v115;
                    if (!v48)
                    {
                      v49 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
                      category2 = v112;
                      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "muid")}];
                      [dictionary setObject:v49 forKeyedSubscript:v50];

                      v32 = v115;
                      [v106 addObject:v23];
                      goto LABEL_35;
                    }
                  }

                  goto LABEL_36;
                }
              }
            }

            v32 = v115;
LABEL_35:
            v34 = 1;
LABEL_36:
            v27 |= v34;

            ++v30;
          }

          while (v30 != v29);
          v29 = [v111 countByEnumeratingWithState:&v126 objects:v142 count:16];
        }

        while (v29);
        self = selfCopy;
        v22 = v104;
        name = v105;
        if ((v27 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_52:

        ++v22;
      }

      while (v22 != v103);
      v103 = [obj countByEnumeratingWithState:&v130 objects:v143 count:16];
    }

    while (v103);
  }

  v59 = self->_loggingConnection;
  v60 = v106;
  v61 = dictionary;
  v62 = v59;
  v63 = [v60 count];
  if (v63 == 1)
  {
    v81 = v62;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      anyObject = [v60 anyObject];
      name2 = [anyObject name];
      *buf = 138477827;
      *&buf[4] = name2;
      _os_log_debug_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event: electing single matched event %{private}@", buf, 0xCu);
    }

    goto LABEL_66;
  }

  if (!v63)
  {
LABEL_66:
    v64 = v60;
    goto LABEL_69;
  }

  v116 = v62;
  v64 = [MEMORY[0x277CBEB58] set];
  allObjects = [v60 allObjects];
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = ___PGFilterMatchingPublicEvents_block_invoke;
  v138[3] = &unk_2788870E0;
  v114 = v61;
  v66 = v61;
  v139 = v66;
  v67 = [allObjects sortedArrayUsingComparator:v138];

  v68 = [v67 objectAtIndexedSubscript:0];
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v68, "muid")}];
  v70 = [v66 objectForKeyedSubscript:v69];
  [v70 floatValue];
  v72 = v71;

  v113 = v68;
  [v64 addObject:v68];
  if ([v67 count] >= 2)
  {
    v73 = v72;
    v74 = 1;
    while (1)
    {
      v75 = [v67 objectAtIndexedSubscript:v74];
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v75, "muid")}];
      v77 = [v66 objectForKeyedSubscript:v76];
      [v77 doubleValue];
      v79 = v78;

      v80 = v79 - v73 <= 35.0;
      if (v72 > 100.0)
      {
        v80 = v79 <= v72 * 1.35;
      }

      if (!v80)
      {
        break;
      }

      [v64 addObject:{v75, v79 - v73}];

      if (++v74 >= [v67 count])
      {
        goto LABEL_68;
      }
    }
  }

LABEL_68:

  v20 = v108;
  v61 = v114;
  v62 = v116;
LABEL_69:
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  if (PGIsAppleInternal_isAppleInternal == 1)
  {
    v117 = v62;
    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v83 = v64;
    v84 = [v83 countByEnumeratingWithState:&v134 objects:buf count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v135;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v135 != v86)
          {
            objc_enumerationMutation(v83);
          }

          name3 = [*(*(&v134 + 1) + 8 * j) name];
          [v82 addObject:name3];
        }

        v85 = [v83 countByEnumeratingWithState:&v134 objects:buf count:16];
      }

      while (v85);
    }

    v62 = v117;
    v89 = v117;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [v82 count];
      v91 = [v82 componentsJoinedByString:{@", "}];
      *v144 = 134218499;
      v145 = v90;
      v146 = 2112;
      v147 = @"high";
      v148 = 2113;
      v149 = v91;
      _os_log_impl(&dword_22F0FC000, v89, OS_LOG_TYPE_DEFAULT, "[PublicEvents] Disambiguating event: found %lu %@ confidence events. %{private}@", v144, 0x20u);
    }

    v20 = v108;
  }

  return v64;
}

- (PGPublicEventDisambiguator)initWithSceneTaxonomy:(id)taxonomy loggingConnection:(id)connection
{
  taxonomyCopy = taxonomy;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGPublicEventDisambiguator;
  v9 = [(PGPublicEventDisambiguator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneTaxonomy, taxonomy);
    objc_storeStrong(&v10->_loggingConnection, connection);
  }

  return v10;
}

@end