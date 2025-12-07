@interface PGSearchKeywordComputer
- (PGSearchKeywordComputer)initWithGraph:(id)graph searchComputationCache:(id)cache;
- (id)_holidayNodesForTimedEvent:(id)event;
- (id)_personLocalIdentifiersBySocialGroupUUIDWithPhotoLibrary:(id)library graph:(id)graph;
- (id)_personUUIDsInSocialGroupNode:(id)node photoLibrary:(id)library;
- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)ds ofType:(unint64_t)type searchEntityAccumulator:(id)accumulator progressBlock:(id)block;
- (id)searchKeywordsByEventWithEventUUIDs:(id)ds ofType:(unint64_t)type photoLibrary:(id)library progressBlock:(id)block;
- (id)searchableAssetUUIDsBySocialGroupWithEventUUIDs:(id)ds ofType:(unint64_t)type inPhotoLibrary:(id)library isFullAnalysis:(BOOL)analysis progressBlock:(id)block;
- (void)_aggregatePublicEventsWithoutBusinessForMomentNode:(id)node searchEntityAccumuator:(id)accumuator;
- (void)_enumerateBusinessAndPublicEventKeywordsForEvent:(id)event usingBlock:(id)block;
- (void)_enumerateEventNodesForUUIDs:(id)ds ofType:(unint64_t)type usingBlock:(id)block;
@end

@implementation PGSearchKeywordComputer

- (id)_holidayNodesForTimedEvent:(id)event
{
  v55 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  celebratedHolidayNodes = [eventCopy celebratedHolidayNodes];
  v39 = [celebratedHolidayNodes mutableCopy];

  holidayNodes = [eventCopy holidayNodes];
  countryCode = [(NSLocale *)self->_userLocale countryCode];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = holidayNodes;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    v33 = v7;
    selfCopy = self;
    v32 = *v50;
    do
    {
      v11 = 0;
      v35 = v9;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        if (([v39 containsObject:v12] & 1) == 0)
        {
          name = [v12 name];
          v13 = [(CLSHolidayCalendarEventService *)self->_holidayService eventRuleForHolidayName:?];
          v14 = v13;
          if (v13)
          {
            commonCelebratedCountryCodes = [v13 commonCelebratedCountryCodes];
            v16 = [commonCelebratedCountryCodes objectForKeyedSubscript:countryCode];

            if (v16)
            {
              v38 = v12;
              v36 = v11;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              obj = [eventCopy dateNodes];
              v17 = v14;
              v43 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
              if (v43)
              {
                v18 = *v46;
                v40 = *v46;
                do
                {
                  for (i = 0; i != v43; ++i)
                  {
                    if (*v46 != v18)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v20 = *(*(&v45 + 1) + 8 * i);
                    v21 = objc_alloc_init(MEMORY[0x277CBEAB8]);
                    [v21 setYear:{objc_msgSend(v20, "year")}];
                    [v21 setMonth:{objc_msgSend(v20, "month")}];
                    [v21 setDay:{objc_msgSend(v20, "day")}];
                    v44 = [MEMORY[0x277D27690] dateFromComponents:v21 inTimeZone:0];
                    v22 = [v17 localDateByEvaluatingRuleForDate:? countryCode:?];
                    v23 = [MEMORY[0x277D27690] startOfDayForDate:v22];
                    v24 = [MEMORY[0x277D27690] endOfDayForDate:v22];
                    localStartDate = [eventCopy localStartDate];
                    if ([localStartDate compare:v23] == 1)
                    {
                      [eventCopy localEndDate];
                      v27 = v26 = v17;
                      v28 = eventCopy;
                      v29 = [v27 compare:v24];

                      v17 = v26;
                      v18 = v40;

                      v30 = v29 == -1;
                      eventCopy = v28;
                      if (v30)
                      {
                        [v39 addObject:v38];
                      }
                    }

                    else
                    {
                    }
                  }

                  v43 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
                }

                while (v43);
              }

              v14 = v17;
              v7 = v33;
              self = selfCopy;
              v10 = v32;
              v9 = v35;
              v11 = v36;
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v9);
  }

  return v39;
}

- (id)_personUUIDsInSocialGroupNode:(id)node photoLibrary:(id)library
{
  v25 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  libraryCopy = library;
  graph = [nodeCopy graph];
  v9 = [(PGSearchKeywordComputer *)self _personLocalIdentifiersBySocialGroupUUIDWithPhotoLibrary:libraryCopy graph:graph];
  uUID = [nodeCopy UUID];
  v11 = [v9 objectForKeyedSubscript:uUID];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:{*(*(&v20 + 1) + 8 * i), v20}];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

- (void)_aggregatePublicEventsWithoutBusinessForMomentNode:(id)node searchEntityAccumuator:(id)accumuator
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  accumuatorCopy = accumuator;
  nodeCopy = node;
  array = [v5 array];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __101__PGSearchKeywordComputer__aggregatePublicEventsWithoutBusinessForMomentNode_searchEntityAccumuator___block_invoke;
  v28[3] = &unk_278883E60;
  v11 = array;
  v29 = v11;
  v12 = v10;
  v30 = v12;
  v13 = v9;
  v31 = v13;
  [nodeCopy enumeratePublicEventNodesUsingBlock:v28];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v11 forKeyedSubscript:&unk_284483CF0];
  allObjects = [v12 allObjects];
  [dictionary setObject:allObjects forKeyedSubscript:&unk_284483D08];

  allObjects2 = [v13 allObjects];
  [dictionary setObject:allObjects2 forKeyedSubscript:&unk_284483C78];

  v17 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v20 = [v17 initWithStartDate:distantPast endDate:distantFuture];

  v21 = MEMORY[0x277CD9918];
  localIdentifier = [nodeCopy localIdentifier];

  v23 = [v21 uuidFromLocalIdentifier:localIdentifier];

  v27 = 0;
  [accumuatorCopy accumulatePublicEventsInPublicEventKeywords:dictionary forMomentUUID:v23 dateInterval:v20 error:&v27];

  v24 = v27;
  if (v24)
  {
    v25 = +[PGLogging sharedLogging];
    loggingConnection = [v25 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v24;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error returned by accumulatePublicEventsInPublicEventKeywords(): (%@)", buf, 0xCu);
    }
  }
}

void __101__PGSearchKeywordComputer__aggregatePublicEventsWithoutBusinessForMomentNode_searchEntityAccumuator___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  if ([v9 canUseWithoutBusiness])
  {
    v3 = a1[4];
    v4 = [v9 name];
    [v3 addObject:v4];

    v5 = a1[5];
    v6 = [v9 performers];
    [v5 unionSet:v6];

    v7 = a1[6];
    v8 = [v9 localizedCategories];
    [v7 unionSet:v8];
  }
}

- (void)_enumerateBusinessAndPublicEventKeywordsForEvent:(id)event usingBlock:(id)block
{
  blockCopy = block;
  v6 = MEMORY[0x277CBEB38];
  eventCopy = event;
  dictionary = [v6 dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke;
  v16[3] = &unk_278883E10;
  v17 = dictionary;
  v9 = dictionary;
  [eventCopy enumerateBusinessesUsingBlock:v16];
  publicEventNodes = [eventCopy publicEventNodes];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke_2;
  v13[3] = &unk_278883E38;
  v14 = publicEventNodes;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = publicEventNodes;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
}

void __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 universalStartDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

void __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = [MEMORY[0x277CBEB58] set];
  v42 = [*(a1 + 32) count];
  v40 = a1;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v4;
  v43 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
  v39 = v11;
  if (!v43)
  {

    [v5 setObject:v6 forKeyedSubscript:&unk_284483CC0];
LABEL_26:
    v32 = [v7 allObjects];
    [v5 setObject:v32 forKeyedSubscript:&unk_284483CD8];

    goto LABEL_27;
  }

  v12 = v6;
  v37 = v5;
  v38 = v8;
  v13 = v5;
  v41 = *v53;
  v14 = 1;
  v15 = v11;
  v35 = v7;
  v36 = v6;
  v47 = v10;
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v53 != v41)
      {
        objc_enumerationMutation(v15);
      }

      v17 = [*(*(&v52 + 1) + 8 * i) targetNode];
      v18 = [v17 name];
      if ([v18 length])
      {
        [v12 addObject:v18];
      }

      v46 = v18;
      v19 = [v17 businessCategories];
      if ([v7 count])
      {
        v14 &= [v7 intersectsSet:v19];
      }

      v45 = v19;
      [v7 unionSet:v19];
      if (v42)
      {
        v44 = i;
        v20 = v9;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v21 = *(v40 + 32);
        v22 = [v21 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v49;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v49 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v48 + 1) + 8 * j);
              v27 = [v26 businessNode];
              v28 = [v27 isSameNodeAsNode:v17];

              if (v28)
              {
                v29 = [v26 name];
                [v38 addObject:v29];

                v30 = [v26 performers];
                [v47 unionSet:v30];

                v31 = [v26 localizedCategories];
                [v20 unionSet:v31];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v23);
        }

        v12 = v36;
        v13 = v37;
        v7 = v35;
        v15 = v39;
        v9 = v20;
        v10 = v47;
        i = v44;
      }
    }

    v43 = [v15 countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v43);

  v5 = v13;
  v6 = v12;
  [v13 setObject:v12 forKeyedSubscript:&unk_284483CC0];
  v8 = v38;
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v42)
  {
    [v5 setObject:v8 forKeyedSubscript:&unk_284483CF0];
    v33 = [v10 allObjects];
    [v5 setObject:v33 forKeyedSubscript:&unk_284483D08];

    v34 = [v9 allObjects];
    [v5 setObject:v34 forKeyedSubscript:&unk_284483C78];
  }

  (*(*(v40 + 40) + 16))();
}

- (id)_personLocalIdentifiersBySocialGroupUUIDWithPhotoLibrary:(id)library graph:(id)graph
{
  personLocalIdentifiersBySocialGroupUUID = self->_personLocalIdentifiersBySocialGroupUUID;
  if (!personLocalIdentifiersBySocialGroupUUID)
  {
    graph = self->_graph;
    graphCopy = graph;
    libraryCopy = library;
    v10 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graph];
    v11 = [graphCopy fetchMemberNodesBySocialGroupNodeForSocialGroups:v10];
    v12 = [(PGGraph *)self->_graph memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:v11 shouldIncludeMeNode:1 simulateMeNodeNotSet:0];
    v13 = self->_personLocalIdentifiersBySocialGroupUUID;
    self->_personLocalIdentifiersBySocialGroupUUID = v12;

    v14 = [PGPeopleUtilities validateKeyedSocialGroups:self->_personLocalIdentifiersBySocialGroupUUID withPhotoLibrary:libraryCopy graph:graphCopy];

    v15 = self->_personLocalIdentifiersBySocialGroupUUID;
    self->_personLocalIdentifiersBySocialGroupUUID = v14;

    personLocalIdentifiersBySocialGroupUUID = self->_personLocalIdentifiersBySocialGroupUUID;
  }

  return personLocalIdentifiersBySocialGroupUUID;
}

- (void)_enumerateEventNodesForUUIDs:(id)ds ofType:(unint64_t)type usingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  blockCopy = block;
  if (type == 1)
  {
    loggingConnection = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:dsCopy inGraph:self->_graph];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__PGSearchKeywordComputer__enumerateEventNodesForUUIDs_ofType_usingBlock___block_invoke_2;
    v13[3] = &unk_278883DE8;
    v14 = blockCopy;
    [loggingConnection enumerateNodesUsingBlock:v13];
    v11 = v14;
    goto LABEL_5;
  }

  if (!type)
  {
    loggingConnection = [PGGraphMomentNodeCollection momentNodesForUUIDs:dsCopy inGraph:self->_graph];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__PGSearchKeywordComputer__enumerateEventNodesForUUIDs_ofType_usingBlock___block_invoke;
    v15[3] = &unk_278883DC0;
    v16 = blockCopy;
    [loggingConnection enumerateNodesUsingBlock:v15];
    v11 = v16;
LABEL_5:

    goto LABEL_8;
  }

  v12 = +[PGLogging sharedLogging];
  loggingConnection = [v12 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot get graph node for uuid of unsupported asset collection type %ld", buf, 0xCu);
  }

LABEL_8:
}

- (id)searchableAssetUUIDsBySocialGroupWithEventUUIDs:(id)ds ofType:(unint64_t)type inPhotoLibrary:(id)library isFullAnalysis:(BOOL)analysis progressBlock:(id)block
{
  analysisCopy = analysis;
  v71[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  libraryCopy = library;
  blockCopy = block;
  v13 = _Block_copy(blockCopy);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  if (!v13 || (v14 = CFAbsoluteTimeGetCurrent(), v14 - v54[3] < 0.01) || (v54[3] = v14, LOBYTE(v65) = 0, v13[2](v13, &v65, 0.0), v15 = *(v58 + 24) | v65, *(v58 + 24) = v15, (v15 & 1) == 0))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v71[0] = *MEMORY[0x277CD9AA8];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v18];

    v19 = 0;
    buf = 0;
    *&v69 = &buf;
    *(&v69 + 1) = 0x2020000000;
    v70 = analysisCopy << 63 >> 63;
    if ((analysisCopy & 1) == 0)
    {
      array = [MEMORY[0x277CBEB18] array];
      v21 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke;
      v50[3] = &unk_278883D48;
      v19 = array;
      v51 = v19;
      p_buf = &buf;
      [(PGSearchKeywordComputer *)self _enumerateEventNodesForUUIDs:v21 ofType:type usingBlock:v50];
    }

    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v54[3] >= 0.01)
      {
        v54[3] = Current;
        LOBYTE(v61) = 0;
        v13[2](v13, &v61, 0.5);
        v23 = *(v58 + 24) | v61;
        *(v58 + 24) = v23;
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v65 = 0x2AA04000202;
            LOWORD(v66) = 2080;
            *(&v66 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v65, 0x12u);
          }

          v16 = MEMORY[0x277CBEC10];
          goto LABEL_27;
        }
      }
    }

    v24 = librarySpecificFetchOptions;
    v65 = 0;
    *&v66 = &v65;
    *(&v66 + 1) = 0x2020000000;
    v67 = 0x3FE0000000000000;
    selfCopy = self;
    graph = self->_graph;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_317;
    v37[3] = &unk_278883D98;
    v27 = v13;
    v44 = &v53;
    v45 = &v65;
    v48 = 0x3F847AE147AE147BLL;
    v46 = &v57;
    v43 = v27;
    v37[4] = selfCopy;
    v38 = libraryCopy;
    v47 = &buf;
    v49 = analysisCopy;
    librarySpecificFetchOptions = v24;
    v39 = v24;
    v40 = &unk_284485BF8;
    v41 = v19;
    v28 = dictionary;
    v42 = v28;
    [(MAGraph *)graph enumerateNodesWithLabel:@"SocialGroup" domain:302 usingBlock:v37];
    if (*(v58 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v61 = 67109378;
        v62 = 736;
        v63 = 2080;
        v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
        v29 = MEMORY[0x277D86220];
LABEL_18:
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v61, 0x12u);
      }
    }

    else
    {
      if (!v13 || (v30 = CFAbsoluteTimeGetCurrent(), v30 - v54[3] < 0.01) || (v54[3] = v30, v36 = 0, v27[2](v27, &v36, 1.0), v31 = *(v58 + 24) | v36, *(v58 + 24) = v31, (v31 & 1) == 0))
      {
        v16 = v28;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v61 = 67109378;
        v62 = 738;
        v63 = 2080;
        v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
        v29 = MEMORY[0x277D86220];
        goto LABEL_18;
      }
    }

    v16 = MEMORY[0x277CBEC10];
LABEL_26:

    _Block_object_dispose(&v65, 8);
LABEL_27:

    _Block_object_dispose(&buf, 8);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x29104000202;
    LOWORD(v69) = 2080;
    *(&v69 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v16 = MEMORY[0x277CBEC10];
LABEL_28:
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  return v16;
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventCollection];
  v6 = [v5 eventMomentNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_2;
  v9[3] = &unk_278889050;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [v6 enumerateNodesUsingBlock:v9];

  objc_autoreleasePoolPop(v4);
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_317(uint64_t a1, void *a2, _BYTE *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 88) + 8), Current - *(v7 + 24) >= *(a1 + 120)) && (*(v7 + 24) = Current, v34 = 0, (*(*(a1 + 80) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 96) + 8) + 24) = (*(*(*(a1 + 96) + 8) + 24) + 1.0) * 0.5;
    v8 = [*(a1 + 32) _personUUIDsInSocialGroupNode:v5 photoLibrary:*(a1 + 40)];
    v9 = [v8 count];
    if (v9 >= 2)
    {
      v10 = v9 > 3 ? (v9 >> 1) + 1 : v9;
      if (v10 < v9 && *(*(*(a1 + 112) + 8) + 24) >= v10)
      {
        if (*(a1 + 128) == 1)
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count >= %lu AND SUBQUERY(%K, $f, $f.%K IN %@ AND $f.%K IN %@).@count >= %lu", @"detectedFaces", v10, @"detectedFaces", @"personForFace.verifiedType", *(a1 + 56), @"personForFace.personUUID", v8, v10, v25, v26];
        }

        else
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@ AND %K.@count >= %lu AND SUBQUERY(%K, $f, $f.%K IN %@ AND $f.%K IN %@).@count >= %lu", @"moment.uuid", *(a1 + 64), @"detectedFaces", v10, @"detectedFaces", @"personForFace.verifiedType", *(a1 + 56), @"personForFace.personUUID", v8, v10];
        }
        v11 = ;
        [*(a1 + 48) setInternalPredicate:v11];

        v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:*(a1 + 48)];
        v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v30 + 1) + 8 * i) uuid];
              [v13 addObject:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v16);
        }

        v20 = [*(a1 + 40) librarySpecificFetchOptions];
        [v20 setIncludedDetectionTypes:&unk_284485C10];
        v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"personForFace.personUUID", v8];
        [v20 setInternalPredicate:v21];

        v22 = [MEMORY[0x277CD9938] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v13 options:v20];
        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_350;
        v27[3] = &unk_278883D70;
        v28 = v23;
        v29 = v10;
        v24 = v23;
        [v22 enumerateKeysAndObjectsUsingBlock:v27];
        [*(a1 + 72) setObject:v24 forKeyedSubscript:v8];
      }
    }
  }
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_350(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uuid];
  [v3 addObject:v5];

  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [v4 personNodes];

  v8 = [v7 count];
  if (v6 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)ds ofType:(unint64_t)type searchEntityAccumulator:(id)accumulator progressBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  accumulatorCopy = accumulator;
  aBlock = block;
  v10 = CreateSearchLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "assetSearchKeywordsByMomentUUIDWithEventUUIDs", "", &buf, 2u);
  }

  v14 = _Block_copy(aBlock);
  buf = 0;
  p_buf = &buf;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (v14 && (v15 = CFAbsoluteTimeGetCurrent(), v15 - v45[3] >= 0.01) && (v45[3] = v15, LOBYTE(v52[0]) = 0, (*(v14 + 2))(v14, v52, 0.0), v16 = *(p_buf + 24) | LOBYTE(v52[0]), *(p_buf + 24) = v16, (v16 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v55 = 0x16E04000202;
      LOWORD(v56) = 2080;
      *(&v56 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v55, 0x12u);
    }

    aggregatedKeywords = MEMORY[0x277CBEC10];
  }

  else
  {
    v18 = objc_alloc_init(PGSearchKeywordComputerKeywordAggregator);
    meNodeCollection = [(PGGraph *)self->_graph meNodeCollection];
    v55 = 0;
    *&v56 = &v55;
    *(&v56 + 1) = 0x2020000000;
    v57 = 0;
    v20 = 1.0 / [dsCopy count];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke;
    v33[3] = &unk_278883D20;
    v21 = v14;
    v38 = &v44;
    v39 = &v55;
    v40 = &buf;
    v41 = 0x3F847AE147AE147BLL;
    v42 = v20;
    v37 = v21;
    v33[4] = self;
    v22 = v18;
    v34 = v22;
    v35 = accumulatorCopy;
    typeCopy = type;
    v23 = meNodeCollection;
    v36 = v23;
    [(PGSearchKeywordComputer *)self _enumerateEventNodesForUUIDs:dsCopy ofType:type usingBlock:v33];
    if (v14 && (Current = CFAbsoluteTimeGetCurrent(), Current - v45[3] >= 0.01) && (v45[3] = Current, v32 = 0, (*(v21 + 2))(v21, &v32, 1.0), v25 = *(p_buf + 24) | v32, *(p_buf + 24) = v25, (v25 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v52[0] = 67109378;
        v52[1] = 647;
        v53 = 2080;
        v54 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v52, 0x12u);
      }

      aggregatedKeywords = MEMORY[0x277CBEC10];
    }

    else
    {
      v26 = v13;
      v27 = v26;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(v52[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v11, "assetSearchKeywordsByMomentUUIDWithEventUUIDs", "", v52, 2u);
      }

      aggregatedKeywords = [(PGSearchKeywordComputerKeywordAggregator *)v22 aggregatedKeywords];
    }

    _Block_object_dispose(&v55, 8);
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&buf, 8);

  return aggregatedKeywords;
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v112[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 64) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 72) + 8), Current - *(v8 + 24) >= *(a1 + 96)) && (*(v8 + 24) = Current, v103 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 80) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 80) + 8) + 24);
    v9 = *(a1 + 32);
    v10 = [v5 businessedEvent];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2;
    v100[3] = &unk_278883C70;
    v101 = *(a1 + 40);
    v102 = *(a1 + 48);
    [v9 _enumerateBusinessAndPublicEventKeywordsForEvent:v10 usingBlock:v100];

    if (_os_feature_enabled_impl() && !*(a1 + 112))
    {
      [*(a1 + 32) _aggregatePublicEventsWithoutBusinessForMomentNode:v5 searchEntityAccumuator:*(a1 + 48)];
    }

    if (!*(a1 + 112) && [v5 isPartOfTrip])
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];

      v112[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:1];
      v110 = &unk_284483B70;
      v111 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v15 = [v5 eventCollection];
      v16 = [v15 eventMomentNodes];
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_292;
      v95[3] = &unk_278883C98;
      v96 = *(a1 + 40);
      v97 = v14;
      v98 = *(a1 + 48);
      v99 = v12;
      v17 = v12;
      v18 = v14;
      [v16 enumerateNodesUsingBlock:v95];
    }

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = [v5 meaningfulEvent];
    v21 = [v20 meaningNodes];

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_293;
    v92[3] = &unk_278883BA8;
    v22 = v19;
    v23 = *(a1 + 32);
    v93 = v22;
    v94 = v23;
    v64 = v21;
    [v21 enumerateNodesUsingBlock:v92];
    if ([v22 count])
    {
      v108 = &unk_284483B88;
      v109 = v22;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v25 = [v5 eventCollection];
      v26 = [v25 eventMomentNodes];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_295;
      v87[3] = &unk_278883C98;
      v88 = *(a1 + 40);
      v89 = v24;
      v90 = *(a1 + 48);
      v91 = v22;
      v27 = v24;
      [v26 enumerateNodesUsingBlock:v87];
    }

    v28 = *(a1 + 32);
    v29 = [v5 timedEvent];
    v30 = [v28 _holidayNodesForTimedEvent:v29];

    if ([v30 count])
    {
      v62 = v6;
      v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v61 = v30;
      v32 = v30;
      v33 = [v32 countByEnumeratingWithState:&v83 objects:v107 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v84;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v84 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [*(*(&v83 + 1) + 8 * i) name];
            if ([v37 length])
            {
              v38 = [MEMORY[0x277D276C8] localizedNameForName:v37];
              [v31 addObject:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v83 objects:v107 count:16];
        }

        while (v34);
      }

      v105 = &unk_284483BA0;
      v106 = v31;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v40 = [v5 eventCollection];
      v41 = [v40 eventMomentNodes];
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_296;
      v78[3] = &unk_278883C98;
      v79 = *(a1 + 40);
      v80 = v39;
      v81 = *(a1 + 48);
      v82 = v31;
      v42 = v31;
      v43 = v39;
      [v41 enumerateNodesUsingBlock:v78];

      v6 = v62;
      v30 = v61;
    }

    v44 = [v5 locatedEvent];
    v45 = [v44 happensPartiallyAtHomeOrWorkOfPersonNodes:*(a1 + 56)];

    if (v45)
    {
      v46 = [v5 eventCollection];
      v47 = [v46 eventMomentNodes];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_297;
      v75[3] = &unk_278883C98;
      v48 = *(a1 + 56);
      v63 = *(a1 + 32);
      v49 = v63.i64[1];
      v50.i64[0] = *(a1 + 48);
      v50.i64[1] = v48;
      v76 = vextq_s8(v50, v63, 8uLL);
      v77 = vextq_s8(v63, v50, 8uLL);
      [v47 enumerateNodesUsingBlock:v75];
    }

    v51 = [v5 eventCollection];
    v52 = [v51 eventMomentNodes];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_302;
    v72[3] = &unk_278888B78;
    v73 = *(a1 + 40);
    v74 = *(a1 + 48);
    [v52 enumerateNodesUsingBlock:v72];

    v53 = [v5 eventCollection];
    v54 = [v53 eventMomentNodes];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_307;
    v69[3] = &unk_278888B78;
    v70 = *(a1 + 40);
    v71 = *(a1 + 48);
    [v54 enumerateNodesUsingBlock:v69];

    v55 = objc_alloc(MEMORY[0x277CBEB98]);
    v104[0] = @"Museum";
    v104[1] = @"AmusementPark";
    v104[2] = @"Park";
    v104[3] = @"Stadium";
    v104[4] = @"Restaurant";
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:5];
    v57 = [v55 initWithArray:v56];

    v58 = [v5 eventCollection];
    v59 = [v58 eventMomentNodes];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_312;
    v65[3] = &unk_278883CF8;
    v66 = v57;
    v67 = *(a1 + 40);
    v68 = *(a1 + 48);
    v60 = v57;
    [v59 enumerateNodesUsingBlock:v65];
  }

  objc_autoreleasePoolPop(v6);
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 anyObject];
  v7 = [v6 sourceNode];
  v8 = MEMORY[0x277CD9918];
  v9 = [v7 localIdentifier];
  v10 = [v8 uuidFromLocalIdentifier:v9];

  if ([v6 hasRoutineInfo])
  {
    v11 = [v6 universalStartDate];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v14 = v13;

    v16 = [v6 universalEndDate];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v15 = v18;
  }

  else
  {
    v14 = [MEMORY[0x277CBEAA8] distantPast];
    v15 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  [*(a1 + 32) aggregateKeywordArraysByCategoryMask:v5 forMomentUUID:v10 fromUniversalStartDate:v14 toEndDate:v15];
  v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
  v20 = *(a1 + 40);
  v24 = 0;
  [v20 accumulatePublicEventsInPublicEventKeywords:v5 forMomentUUID:v10 dateInterval:v19 error:&v24];

  v21 = v24;
  if (v21)
  {
    v22 = +[PGLogging sharedLogging];
    v23 = [v22 loggingConnection];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v21;
      _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "Error returned by accumulatePublicEventsInPublicEventKeywords(): (%@)", buf, 0xCu);
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_292(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 aggregateKeywordsByCategoryMask:v4 forMomentNode:v5];
  v6 = MEMORY[0x277CD9918];
  v7 = [v5 localIdentifier];

  v8 = [v6 uuidFromLocalIdentifier:v7];

  v9 = a1[6];
  v10 = a1[7];
  v14 = 0;
  [v9 accumulateTrip:v10 forMomentUUID:v8 error:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error returned by accumulateTrip(): (%@)", buf, 0xCu);
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_293(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 label];
  if (([v4 isEqualToString:@"Gathering"] & 1) == 0)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (!v5)
    {
      v6 = localizationKeyForMeaningLabel(v4);
      if (v6)
      {
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v7 localizedStringForKey:v6 value:v6 table:@"Localizable"];

        [*(a1 + 32) setValue:v8 forKey:v4];
      }

      else
      {
        v9 = +[PGLogging sharedLogging];
        v10 = [v9 loggingConnection];

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v4;
          _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", buf, 0xCu);
        }
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_294;
    v13[3] = &unk_278883BA8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v11;
    v15 = v12;
    [v3 traverseParentMeaningHierarchyUsingBlock:v13];
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_295(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 aggregateKeywordsByCategoryMask:v4 forMomentNode:v5];
  v6 = MEMORY[0x277CD9918];
  v7 = [v5 localIdentifier];

  v8 = [v6 uuidFromLocalIdentifier:v7];

  v9 = a1[6];
  v10 = a1[7];
  v14 = 0;
  [v9 accumulateMeanings:v10 forMomentUUID:v8 error:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error returned by accumulateMeanings(): (%@)", buf, 0xCu);
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_296(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 aggregateKeywordsByCategoryMask:v4 forMomentNode:v5];
  v6 = MEMORY[0x277CD9918];
  v7 = [v5 localIdentifier];

  v8 = [v6 uuidFromLocalIdentifier:v7];

  v9 = a1[6];
  v10 = a1[7];
  v14 = 0;
  [v9 accumulateHolidays:v10 forMomentUUID:v8 error:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error returned by accumulateHolidays(): (%@)", buf, 0xCu);
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_297(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 happensPartiallyAtHomeOrWorkOfPersonNodes:*(a1 + 32)])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_298;
    v4[3] = &unk_278883CC0;
    v4[4] = *(a1 + 40);
    v5 = v3;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    [v5 enumeratePreciseAddressEdgesAndNodesUsingBlock:v4];
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_302(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_303;
  v5[3] = &unk_278885270;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumeratePreciseAddressEdgesAndNodesUsingBlock:v5];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_307(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_308;
  v5[3] = &unk_278885270;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumeratePreciseAddressEdgesAndNodesUsingBlock:v5];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_312(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 poiNodesWithNonzeroConfidence];
  v6 = [v5 nodesMatchingPOILabels:*(a1 + 32)];

  if ([v6 count])
  {
    v7 = [v6 localizedNames];
    v8 = [v7 allObjects];

    v20 = &unk_284483C60;
    v21[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = MEMORY[0x277CD98F8];
    v11 = [v3 localIdentifier];
    v12 = [v10 uuidFromLocalIdentifier:v11];

    [*(a1 + 40) aggregateKeywordsByCategoryMask:v9 forMomentNode:v3];
    v13 = *(a1 + 48);
    v17 = 0;
    [v13 accumulateLocationPOIWithPOIKeywords:v8 forMomentUUID:v12 error:&v17];
    v14 = v17;
    if (v14)
    {
      v15 = +[PGLogging sharedLogging];
      v16 = [v15 loggingConnection];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v14;
        _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Error returned by accumulateLocationPOI(): (%@)", buf, 0xCu);
      }
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_308(uint64_t a1, void *a2, void *a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 collection];
  v7 = [v6 continentNodes];

  if ([v7 count])
  {
    v8 = [v7 names];
    v32 = &unk_284483C48;
    v33[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v10 = MEMORY[0x277CD98F8];
    v11 = [*(a1 + 32) localIdentifier];
    v12 = [v10 uuidFromLocalIdentifier:v11];

    v13 = [v5 universalStartDate];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v16 = v15;

    v17 = [v5 universalEndDate];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v20];
    [*(a1 + 40) aggregateKeywordsByCategoryMask:v9 forMomentUUID:v12 duringDateInterval:v21];
    v22 = *(a1 + 48);
    v29 = 0;
    [v22 accumulateLocationContinentsWithContinentKeywords:v8 forMomentUUID:v12 dateInterval:v21 error:&v29];
    v23 = v29;
    if (v23)
    {
      v28 = v16;
      v24 = v8;
      v25 = v9;
      v26 = +[PGLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v23;
        _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "Error returned by accumulateLocationContinents(): (%@)", buf, 0xCu);
      }

      v9 = v25;
      v8 = v24;
      v16 = v28;
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_303(uint64_t a1, void *a2, void *a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 collection];
  v7 = [v6 subcontinentNodes];

  if ([v7 count])
  {
    v8 = [v7 names];
    v32 = &unk_284483C30;
    v33[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v10 = MEMORY[0x277CD98F8];
    v11 = [*(a1 + 32) localIdentifier];
    v12 = [v10 uuidFromLocalIdentifier:v11];

    v13 = [v5 universalStartDate];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v16 = v15;

    v17 = [v5 universalEndDate];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v20];
    [*(a1 + 40) aggregateKeywordsByCategoryMask:v9 forMomentUUID:v12 duringDateInterval:v21];
    v22 = *(a1 + 48);
    v29 = 0;
    [v22 accumulateLocationSubcontinentsWithContinentKeywords:v8 forMomentUUID:v12 dateInterval:v21 error:&v29];
    v23 = v29;
    if (v23)
    {
      v28 = v16;
      v24 = v8;
      v25 = v9;
      v26 = +[PGLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v23;
        _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "Error returned by accumulateLocationSubcontinents(): (%@)", buf, 0xCu);
      }

      v9 = v25;
      v8 = v24;
      v16 = v28;
    }
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_298(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v8 = [v6 collection];
  v9 = [v8 homeWorkNodes];

  if ([v9 count])
  {
    v10 = [v6 graph];
    v11 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v10];

    v12 = [v11 homeOrWorkNodes];
    v13 = [v9 collectionByIntersecting:v12];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_3;
    v35[3] = &unk_278887CF8;
    v14 = v7;
    v15 = *(a1 + 32);
    v36 = v14;
    v37 = v15;
    [v13 enumerateNodesUsingBlock:v35];
    if ([v14 count])
    {
      v16 = MEMORY[0x277CD9918];
      v17 = [*(a1 + 40) localIdentifier];
      v18 = [v16 uuidFromLocalIdentifier:v17];

      v19 = [v5 universalStartDate];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v22 = v21;
      v33 = v11;

      v23 = [v5 universalEndDate];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [MEMORY[0x277CBEAA8] distantFuture];
      }

      v26 = v25;

      v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v26];
      [*(a1 + 48) aggregateKeywordsByCategoryMask:v14 forMomentUUID:v18 duringDateInterval:v27];
      v28 = *(a1 + 56);
      v34 = 0;
      [v28 accumulateHomeAndWorkWithHomeAndWorkKeywords:v14 forMomentUUID:v18 dateInterval:v27 error:&v34];
      v29 = v34;
      if (v29)
      {
        v32 = v22;
        v30 = +[PGLogging sharedLogging];
        v31 = [v30 loggingConnection];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = v29;
          _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Error returned by accumulateHomeAndWorkWithomeAndWorkKeywords(): (%@)", buf, 0xCu);
        }

        v22 = v32;
      }

      v11 = v33;
    }

    v9 = v13;
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = [a2 label];
  if ([v5 isEqualToString:@"Home"])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_284483BD0];
  }

  else if ([v5 isEqualToString:@"Work"])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"PGWorkSearchableText" value:@"PGWorkSearchableText" table:@"Localizable"];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:&unk_284483BE8];
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_294(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 label];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = localizationKeyForMeaningLabel(v3);
    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:v5 value:v5 table:@"Localizable"];

      [*(a1 + 32) setValue:v7 forKey:v3];
    }

    else
    {
      v8 = +[PGLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", &v10, 0xCu);
      }
    }
  }
}

- (id)searchKeywordsByEventWithEventUUIDs:(id)ds ofType:(unint64_t)type photoLibrary:(id)library progressBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  libraryCopy = library;
  blockCopy = block;
  v13 = _Block_copy(blockCopy);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v13 && (v14 = CFAbsoluteTimeGetCurrent(), v14 - v39[3] >= 0.01) && (v39[3] = v14, LOBYTE(v46[0]) = 0, (*(v13 + 2))(v13, v46, 0.0), v15 = *(v43 + 24) | LOBYTE(v46[0]), *(v43 + 24) = v15, (v15 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x4D04000202;
      LOWORD(v50) = 2080;
      *(&v50 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

    v16 = MEMORY[0x277CBEC10];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
    meNodeCollection = [(PGGraph *)self->_graph meNodeCollection];
    buf = 0;
    *&v50 = &buf;
    *(&v50 + 1) = 0x2020000000;
    v51 = 0;
    v19 = [dsCopy count];
    v27[1] = 3221225472;
    v27[0] = MEMORY[0x277D85DD0];
    v27[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke;
    v27[3] = &unk_278883D20;
    p_buf = &buf;
    v35 = 1.0 / v19;
    v20 = v13;
    v36 = 0x3F847AE147AE147BLL;
    v33 = &v38;
    v34 = &v42;
    v31 = v20;
    v27[4] = self;
    v28 = libraryCopy;
    typeCopy = type;
    v21 = meNodeCollection;
    v29 = v21;
    v22 = v17;
    v30 = v22;
    [(PGSearchKeywordComputer *)self _enumerateEventNodesForUUIDs:dsCopy ofType:type usingBlock:v27];
    if (v13 && (Current = CFAbsoluteTimeGetCurrent(), Current - v39[3] >= 0.01) && (v39[3] = Current, v26 = 0, (*(v20 + 2))(v20, &v26, 1.0), v24 = *(v43 + 24) | v26, *(v43 + 24) = v24, (v24 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46[0] = 67109378;
        v46[1] = 349;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v46, 0x12u);
      }

      v16 = MEMORY[0x277CBEC10];
    }

    else
    {
      v16 = v22;
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v16;
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v201 = *MEMORY[0x277D85DE8];
  v143 = a2;
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  v142 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [v143 peopledEvent];
  v141 = [v4 personNodes];

  if ([v141 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v6 = v141;
    v7 = [v6 countByEnumeratingWithState:&v189 objects:v200 count:16];
    if (v7)
    {
      v8 = *v190;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v190 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = MEMORY[0x277CD9918];
          v11 = [*(*(&v189 + 1) + 8 * i) localIdentifier];
          v12 = [v10 uuidFromLocalIdentifier:v11];

          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v189 objects:v200 count:16];
      }

      while (v7);
    }

    [v142 setObject:v5 forKeyedSubscript:&unk_284483AF8];
  }

  if (*(a1 + 64) && (v13 = CFAbsoluteTimeGetCurrent(), v14 = *(*(a1 + 80) + 8), v13 - *(v14 + 24) >= *(a1 + 104)) && (*(v14 + 24) = v13, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v15 = [v143 peopledEvent];
    v140 = [v15 petNodes];

    if ([v140 count])
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v17 = v140;
      v18 = [v17 countByEnumeratingWithState:&v185 objects:v199 count:16];
      if (v18)
      {
        v19 = *v186;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v186 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = MEMORY[0x277CD9918];
            v22 = [*(*(&v185 + 1) + 8 * j) localIdentifier];
            v23 = [v21 uuidFromLocalIdentifier:v22];

            if (v23)
            {
              [v16 addObject:v23];
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v185 objects:v199 count:16];
        }

        while (v18);
      }

      [v142 setObject:v16 forKeyedSubscript:&unk_284483B10];
    }

    if (*(a1 + 64) && (v24 = CFAbsoluteTimeGetCurrent(), v25 = *(*(a1 + 80) + 8), v24 - *(v25 + 24) >= *(a1 + 104)) && (*(v25 + 24) = v24, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
    {
      *a3 = 1;
    }

    else
    {
      v26 = [v143 peopledEvent];
      v139 = [v26 socialGroupNodes];

      if ([v139 count])
      {
        v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v28 = +[PGGraphSocialGroupNode importanceSortDescriptors];
        v29 = [v139 sortedArrayUsingDescriptors:v28];

        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v30 = v29;
        v31 = [v30 countByEnumeratingWithState:&v181 objects:v198 count:16];
        if (v31)
        {
          v32 = *v182;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v182 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = [*(a1 + 32) _personUUIDsInSocialGroupNode:*(*(&v181 + 1) + 8 * k) photoLibrary:*(a1 + 40)];
              if ([v34 count] >= 2)
              {
                [v27 addObject:v34];
              }
            }

            v31 = [v30 countByEnumeratingWithState:&v181 objects:v198 count:16];
          }

          while (v31);
        }

        if ([v27 count])
        {
          [v142 setObject:v27 forKeyedSubscript:&unk_284483B28];
        }
      }

      if (*(a1 + 64) && (v35 = CFAbsoluteTimeGetCurrent(), v36 = *(*(a1 + 80) + 8), v35 - *(v36 + 24) >= *(a1 + 104)) && (*(v36 + 24) = v35, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
      {
        *a3 = 1;
      }

      else
      {
        v37 = [v143 locatedEvent];
        v138 = [v37 addressNodes];

        if ([v138 count])
        {
          v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v138, "count")}];
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v39 = v138;
          v40 = [v39 countByEnumeratingWithState:&v177 objects:v197 count:16];
          if (v40)
          {
            v41 = *v178;
            do
            {
              for (m = 0; m != v40; ++m)
              {
                if (*v178 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = locationNamesByCategoryForAddress(*(*(&v177 + 1) + 8 * m));
                [v38 addObject:v43];
              }

              v40 = [v39 countByEnumeratingWithState:&v177 objects:v197 count:16];
            }

            while (v40);
          }

          [v142 setObject:v38 forKeyedSubscript:&unk_284483B40];
        }

        if (*(a1 + 64) && (v44 = CFAbsoluteTimeGetCurrent(), v45 = *(*(a1 + 80) + 8), v44 - *(v45 + 24) >= *(a1 + 104)) && (*(v45 + 24) = v44, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
        {
          *a3 = 1;
        }

        else
        {
          v46 = [v143 timedEvent];
          v137 = [v46 dateNodes];

          if ([v137 count])
          {
            v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v137, "count")}];
            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            v48 = v137;
            v49 = [v48 countByEnumeratingWithState:&v173 objects:v196 count:16];
            if (v49)
            {
              v50 = *v174;
              do
              {
                for (n = 0; n != v49; ++n)
                {
                  if (*v174 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v52 = [*(*(&v173 + 1) + 8 * n) localDate];
                  if (v52)
                  {
                    [v47 addObject:v52];
                  }
                }

                v49 = [v48 countByEnumeratingWithState:&v173 objects:v196 count:16];
              }

              while (v49);
            }

            [v142 setObject:v47 forKeyedSubscript:&unk_284483B58];
          }

          if (*(a1 + 64))
          {
            Current = CFAbsoluteTimeGetCurrent();
            v54 = *(*(a1 + 80) + 8);
            if (Current - *(v54 + 24) >= *(a1 + 104))
            {
              *(v54 + 24) = Current;
              LOBYTE(v151) = 0;
              (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24));
              *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
              v55 = *(*(*(a1 + 88) + 8) + 24);
              if (v55 == 1)
              {
                goto LABEL_81;
              }
            }
          }

          if (*(a1 + 112) && [v143 isTrip])
          {
            v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v57 = [v56 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];
            [v142 setObject:v57 forKeyedSubscript:&unk_284483B70];
          }

          if (*(a1 + 64) && (v58 = CFAbsoluteTimeGetCurrent(), v59 = *(*(a1 + 80) + 8), v58 - *(v59 + 24) >= *(a1 + 104)) && (*(v59 + 24) = v58, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), v55 = *(*(*(a1 + 88) + 8) + 24), v55 == 1))
          {
LABEL_81:
            *a3 = v55;
          }

          else
          {
            v60 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v61 = [v143 meaningfulEvent];
            v62 = [v61 meaningNodes];

            if (!v62)
            {
              if ([v143 isTrip])
              {
                v62 = 0;
              }

              else
              {
                v63 = [v143 eventCollection];
                v64 = [v63 eventMomentNodes];
                v62 = [v64 meaningNodes];
              }
            }

            v171[0] = MEMORY[0x277D85DD0];
            v171[1] = 3221225472;
            v171[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_251;
            v171[3] = &unk_278883BA8;
            v171[4] = *(a1 + 32);
            v134 = v60;
            v172 = v134;
            v131 = v62;
            [v62 enumerateNodesUsingBlock:v171];
            if ([v134 count])
            {
              v65 = [v134 allObjects];
              [v142 setObject:v65 forKeyedSubscript:&unk_284483B88];
            }

            if (*(a1 + 64) && (v66 = CFAbsoluteTimeGetCurrent(), v67 = *(*(a1 + 80) + 8), v66 - *(v67 + 24) >= *(a1 + 104)) && (*(v67 + 24) = v66, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
            {
              *a3 = 1;
            }

            else
            {
              v68 = *(a1 + 32);
              v69 = [v143 timedEvent];
              v133 = [v68 _holidayNodesForTimedEvent:v69];

              if ([v133 count])
              {
                v70 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v133, "count")}];
                v169 = 0u;
                v170 = 0u;
                v167 = 0u;
                v168 = 0u;
                v71 = v133;
                v72 = [v71 countByEnumeratingWithState:&v167 objects:v195 count:16];
                if (v72)
                {
                  v73 = *v168;
                  do
                  {
                    for (ii = 0; ii != v72; ++ii)
                    {
                      if (*v168 != v73)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v75 = [*(*(&v167 + 1) + 8 * ii) name];
                      if ([v75 length])
                      {
                        v76 = [MEMORY[0x277D276C8] localizedNameForName:v75];
                        [v70 addObject:v76];
                      }
                    }

                    v72 = [v71 countByEnumeratingWithState:&v167 objects:v195 count:16];
                  }

                  while (v72);
                }

                [v142 setObject:v70 forKeyedSubscript:&unk_284483BA0];
              }

              if (*(a1 + 64) && (v77 = CFAbsoluteTimeGetCurrent(), v78 = *(*(a1 + 80) + 8), v77 - *(v78 + 24) >= *(a1 + 104)) && (*(v78 + 24) = v77, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
              {
                *a3 = 1;
              }

              else
              {
                v79 = [v143 locatedEvent];
                v132 = [v79 roiNodes];

                if ([v132 count])
                {
                  v80 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v132, "count")}];
                  v165 = 0u;
                  v166 = 0u;
                  v163 = 0u;
                  v164 = 0u;
                  v81 = v132;
                  v82 = [v81 countByEnumeratingWithState:&v163 objects:v194 count:16];
                  if (v82)
                  {
                    v83 = *v164;
                    do
                    {
                      for (jj = 0; jj != v82; ++jj)
                      {
                        if (*v164 != v83)
                        {
                          objc_enumerationMutation(v81);
                        }

                        v85 = *(*(&v163 + 1) + 8 * jj);
                        v86 = [v85 label];
                        v87 = [v86 isEqualToString:@"Urban"];

                        if ((v87 & 1) == 0)
                        {
                          v88 = [v85 localizedName];
                          if ([v88 length])
                          {
                            [v80 addObject:v88];
                          }
                        }
                      }

                      v82 = [v81 countByEnumeratingWithState:&v163 objects:v194 count:16];
                    }

                    while (v82);
                  }

                  if ([v80 count])
                  {
                    v89 = v80;
                  }

                  else
                  {
                    v89 = 0;
                  }

                  [v142 setObject:v89 forKeyedSubscript:&unk_284483BB8];
                }

                if (*(a1 + 64))
                {
                  v90 = CFAbsoluteTimeGetCurrent();
                  v91 = *(*(a1 + 80) + 8);
                  if (v90 - *(v91 + 24) >= *(a1 + 104))
                  {
                    *(v91 + 24) = v90;
                    LOBYTE(v151) = 0;
                    (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24));
                    *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
                    v92 = *(*(*(a1 + 88) + 8) + 24);
                    if (v92 == 1)
                    {
                      goto LABEL_134;
                    }
                  }
                }

                v93 = [v143 locatedEvent];
                if ([v93 happensPartiallyAtHomeOfPersonNodes:*(a1 + 48)])
                {
                  v94 = MEMORY[0x277CBEC38];
                }

                else
                {
                  v94 = 0;
                }

                [v142 setObject:v94 forKeyedSubscript:&unk_284483BD0];

                v95 = [v143 locatedEvent];
                v96 = [v95 happensPartiallyAtWorkOfPersonNodes:*(a1 + 48)];

                if (v96)
                {
                  v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v98 = [v97 localizedStringForKey:@"PGWorkSearchableText" value:@"PGWorkSearchableText" table:@"Localizable"];
                  [v142 setObject:v98 forKeyedSubscript:&unk_284483BE8];
                }

                if (*(a1 + 64) && (v99 = CFAbsoluteTimeGetCurrent(), v100 = *(*(a1 + 80) + 8), v99 - *(v100 + 24) >= *(a1 + 104)) && (*(v100 + 24) = v99, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), v92 = *(*(*(a1 + 88) + 8) + 24), v92 == 1))
                {
LABEL_134:
                  *a3 = v92;
                }

                else
                {
                  v101 = [MEMORY[0x277CBEB38] dictionary];
                  v102 = *(a1 + 32);
                  v103 = [v143 businessedEvent];
                  v161[0] = MEMORY[0x277D85DD0];
                  v161[1] = 3221225472;
                  v161[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_269;
                  v161[3] = &unk_278883BD0;
                  v104 = v101;
                  v162 = v104;
                  [v102 _enumerateBusinessAndPublicEventKeywordsForEvent:v103 usingBlock:v161];

                  v159[0] = MEMORY[0x277D85DD0];
                  v159[1] = 3221225472;
                  v159[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3;
                  v159[3] = &unk_278883BF8;
                  v105 = v142;
                  v160 = v105;
                  [v104 enumerateKeysAndObjectsUsingBlock:v159];
                  if (*(a1 + 64) && (v106 = CFAbsoluteTimeGetCurrent(), v107 = *(*(a1 + 80) + 8), v106 - *(v107 + 24) >= *(a1 + 104)) && (*(v107 + 24) = v106, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
                  {
                    *a3 = 1;
                  }

                  else
                  {
                    v108 = [v143 timedEvent];
                    v109 = [v108 seasonNodes];

                    v110 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v109, "count")}];
                    v157 = 0u;
                    v158 = 0u;
                    v155 = 0u;
                    v156 = 0u;
                    v111 = v109;
                    v112 = [v111 countByEnumeratingWithState:&v155 objects:v193 count:16];
                    if (v112)
                    {
                      v113 = *v156;
                      do
                      {
                        for (kk = 0; kk != v112; ++kk)
                        {
                          if (*v156 != v113)
                          {
                            objc_enumerationMutation(v111);
                          }

                          v115 = [*(*(&v155 + 1) + 8 * kk) localizedName];
                          [v110 addObject:v115];
                        }

                        v112 = [v111 countByEnumeratingWithState:&v155 objects:v193 count:16];
                      }

                      while (v112);
                    }

                    [v105 setObject:v110 forKeyedSubscript:&unk_284483C00];
                    if (*(a1 + 64) && (v116 = CFAbsoluteTimeGetCurrent(), v117 = *(*(a1 + 80) + 8), v116 - *(v117 + 24) >= *(a1 + 104)) && (*(v117 + 24) = v116, LOBYTE(v151) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
                    {
                      *a3 = 1;
                    }

                    else
                    {
                      v118 = [MEMORY[0x277CBEB38] dictionary];
                      v151 = 0;
                      v152 = &v151;
                      v153 = 0x2020000000;
                      v154 = 0;
                      v119 = [v143 eventCollection];
                      v120 = [v119 eventMomentNodes];
                      v148[0] = MEMORY[0x277D85DD0];
                      v148[1] = 3221225472;
                      v148[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_275;
                      v148[3] = &unk_278889050;
                      v150 = &v151;
                      v121 = v118;
                      v149 = v121;
                      [v120 enumerateNodesUsingBlock:v148];

                      if (*(a1 + 64) && (v122 = CFAbsoluteTimeGetCurrent(), v123 = *(*(a1 + 80) + 8), v122 - *(v123 + 24) >= *(a1 + 104)) && (*(v123 + 24) = v122, v147 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
                      {
                        *a3 = 1;
                      }

                      else
                      {
                        v124 = v152[3];
                        v125 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v121, "count")}];
                        v144[0] = MEMORY[0x277D85DD0];
                        v144[1] = 3221225472;
                        v144[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3_280;
                        v144[3] = &unk_278883C48;
                        v146 = v124 * 0.3;
                        v126 = v125;
                        v145 = v126;
                        [v121 enumerateKeysAndObjectsUsingBlock:v144];
                        [v105 setObject:v126 forKeyedSubscript:&unk_284483C18];
                        if (*(a1 + 64) && (v127 = CFAbsoluteTimeGetCurrent(), v128 = *(*(a1 + 80) + 8), v127 - *(v128 + 24) >= *(a1 + 104)) && (*(v128 + 24) = v127, v147 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) |= v147, *(*(*(a1 + 88) + 8) + 24) == 1))
                        {
                          *a3 = 1;
                        }

                        else
                        {
                          v129 = *(a1 + 56);
                          v130 = [v143 UUID];
                          [v129 setObject:v105 forKeyedSubscript:v130];
                        }
                      }

                      _Block_object_dispose(&v151, 8);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_251(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 label];
  if (([v4 isEqualToString:@"Gathering"] & 1) == 0)
  {
    v5 = localizationKeyForMeaningLabel(v4);
    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:v5 value:v5 table:@"Localizable"];

      [*(a1 + 40) addObject:v7];
    }

    else
    {
      v8 = +[PGLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", buf, 0xCu);
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_253;
    v11[3] = &unk_278883BA8;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v3 traverseParentMeaningHierarchyUsingBlock:v11];
  }
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_269(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2;
  v4[3] = &unk_278885788;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_275(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberOfAssets];
  *(*(*(a1 + 40) + 8) + 24) += v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2_276;
  v5[3] = &unk_278883C20;
  v6 = *(a1 + 32);
  v7 = v4;
  [v3 enumerateSceneEdgesAndNodesUsingBlock:v5];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3_280(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  [a3 doubleValue];
  if (v5 >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2_276(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  if ([a2 isSearchableForEvent])
  {
    if ([v10 isIndexed])
    {
      v5 = [v10 sceneIdentifier];
      if (v5)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
        v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v8 = [v7 unsignedIntegerValue];

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40) + v8];
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];
      }
    }
  }
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addObjectsFromArray:v5];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_253(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 label];
  v4 = localizationKeyForMeaningLabel(v3);
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localizable"];

    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = +[PGLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", &v9, 0xCu);
    }
  }
}

- (PGSearchKeywordComputer)initWithGraph:(id)graph searchComputationCache:(id)cache
{
  graphCopy = graph;
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = PGSearchKeywordComputer;
  v9 = [(PGSearchKeywordComputer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, graph);
    objc_storeStrong(&v10->_searchComputationCache, cache);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    userLocale = v10->_userLocale;
    v10->_userLocale = currentLocale;

    v13 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:v10->_userLocale];
    holidayService = v10->_holidayService;
    v10->_holidayService = v13;
  }

  return v10;
}

@end