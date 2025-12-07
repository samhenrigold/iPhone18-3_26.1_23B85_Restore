@interface PGBirthdayContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options;
- (PGBirthdayContextualRule)initWithGraph:(id)graph photoLibrary:(id)library curationManager:(id)manager loggingConnection:(id)connection;
- (id)_bestAssetInCuratedAssets:(id)assets forPerson:(id)person contextualScore:(double *)score;
- (id)_bestBirthdayCelebrationAssetForHighlightNode:(id)node assetCollection:(id)collection curationContext:(id)context;
- (id)_fetchCuratedAssetsForHighlightItem:(id)item intersectingAssets:(id)assets;
- (id)_filterCuratedAssets:(id)assets forHighlightItem:(id)item;
- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block;
@end

@implementation PGBirthdayContextualRule

- (id)_bestBirthdayCelebrationAssetForHighlightNode:(id)node assetCollection:(id)collection curationContext:(id)context
{
  contextCopy = context;
  collectionCopy = collection;
  nodeCopy = node;
  graph = [nodeCopy graph];
  curationCriteriaFactory = [(PGCurationManager *)self->_curationManager curationCriteriaFactory];
  v13 = [curationCriteriaFactory curationCriteriaWithCollection:nodeCopy meaningLabel:@"Birthday" inGraph:graph client:0];

  v14 = objc_alloc_init(PGKeyAssetCurationOptions);
  curationManager = self->_curationManager;
  uUID = [nodeCopy UUID];

  v17 = [(PGCurationManager *)curationManager curatedKeyAssetForCollectionUUID:uUID curatedAssetCollection:collectionCopy options:v14 criteria:v13 curationContext:contextCopy];

  return v17;
}

- (id)_bestAssetInCuratedAssets:(id)assets forPerson:(id)person contextualScore:(double *)score
{
  v58 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  personCopy = person;
  localIdentifier = [personCopy localIdentifier];
  v45 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:assetsCopy options:0];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = assetsCopy;
  v46 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v46)
  {
    v43 = 0;
    v44 = *v53;
    v8 = 0.5;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        localIdentifier2 = [v11 localIdentifier];
        v13 = [v45 objectForKeyedSubscript:localIdentifier2];

        v47 = [v13 count];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v49;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v49 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v48 + 1) + 8 * j);
              personLocalIdentifier = [v19 personLocalIdentifier];
              v21 = [personLocalIdentifier isEqualToString:localIdentifier];

              if (v21)
              {
                v22 = v19;

                if (v22)
                {
                  pixelWidth = [v11 pixelWidth];
                  v24 = 1.3333 / (pixelWidth / [v11 pixelHeight]);
                  [v22 size];
                  v26 = v25 * v24;
                  v27 = 0.0;
                  if (v26 >= 0.05 && v26 <= v8)
                  {
                    v29 = 0.15;
                    if (v26 > 0.15)
                    {
                      v8 = 0.5;
                      v26 = 0.5 - fmin(v26, 0.5);
                      v29 = 0.35;
                    }

                    v27 = v26 / v29;
                  }

                  v30 = ceil(v27 * 4.0) * 0.25;
                  [v11 overallAestheticScore];
                  v32 = ceil(v31 * 10.0) / 10.0;
                  [v11 curationScore];
                  v34 = 1.0 / v47 + v30 * 0.1 + v32 * 0.01 + ceil(v33 * 10.0) / 10.0 * 0.01;
                  [v22 quality];
                  v36 = v34 + fmax(v35, 0.0) * 0.001;
                  if (!v43 || v36 > v9)
                  {
                    v37 = v11;

                    *score = v36;
                    v43 = v37;
                    v9 = v36;
                  }
                }

                goto LABEL_27;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v22 = 0;
LABEL_27:
      }

      v46 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v46);
  }

  else
  {
    v43 = 0;
  }

  v38 = v43;
  return v43;
}

- (id)_fetchCuratedAssetsForHighlightItem:(id)item intersectingAssets:(id)assets
{
  itemCopy = item;
  assetsCopy = assets;
  v8 = [(PGBirthdayContextualRule *)self _filterCuratedAssets:assetsCopy forHighlightItem:itemCopy];
  if ([v8 count])
  {
    extendedCuratedAssets = [itemCopy extendedCuratedAssets];
    v10 = [MEMORY[0x277CBEB98] setWithArray:extendedCuratedAssets];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self in %@", v10];
    v12 = [assetsCopy filteredArrayUsingPredicate:v11];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)_filterCuratedAssets:(id)assets forHighlightItem:(id)item
{
  v5 = MEMORY[0x277CCAC30];
  itemCopy = item;
  assetsCopy = assets;
  startDate = [itemCopy startDate];
  endDate = [itemCopy endDate];

  v10 = [v5 predicateWithFormat:@"creationDate >= %@ && creationDate <= %@", startDate, endDate];
  v11 = [assetsCopy filteredArrayUsingPredicate:v10];

  return v11;
}

- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block
{
  filterCopy = filter;
  v121 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  optionsCopy = options;
  readerCopy = reader;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy && [(NSArray *)self->_availablePersons count])
  {
    startDate = [highlightCopy startDate];
    endDate = [highlightCopy endDate];
    v17 = endDate;
    if (startDate && endDate)
    {
      v89 = readerCopy;
      v112 = 0;
      firstObject = [(NSArray *)self->_availablePersons firstObject];
      photoLibrary = [firstObject photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v92 = filterCopy;
      v21 = [PGHighlightEnrichmentUtilities internalPredicateForFetchingAssetsForSharingFilter:filterCopy];
      v71 = v17;
      v72 = startDate;
      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlightBeingExtendedAssets != nil && dateCreated >= %@ && dateCreated <= %@", startDate, v17];
      v23 = MEMORY[0x277CCA920];
      v69 = v22;
      v70 = v21;
      v117[0] = v21;
      v117[1] = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
      v25 = [v23 andPredicateWithSubpredicates:v24];
      v87 = librarySpecificFetchOptions;
      [librarySpecificFetchOptions setInternalPredicate:v25];

      v88 = objc_opt_new();
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v26 = self->_availablePersons;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v108 objects:v116 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v109;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v109 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v108 + 1) + 8 * i);
            v32 = objc_autoreleasePoolPush();
            v33 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:v31 options:v87];
            if ([v33 count])
            {
              fetchedObjects = [v33 fetchedObjects];
              localIdentifier = [v31 localIdentifier];
              [v88 setObject:fetchedObjects forKeyedSubscript:localIdentifier];
            }

            objc_autoreleasePoolPop(v32);
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v108 objects:v116 count:16];
        }

        while (v28);
      }

      readerCopy = v89;
      if ([v88 count])
      {
        localDateComponents = [highlightCopy localDateComponents];
        localTodayComponents = [optionsCopy localTodayComponents];
        v38 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v68 = localDateComponents;
        [v38 setYear:{objc_msgSend(localDateComponents, "year")}];
        [v38 setMonth:{objc_msgSend(localTodayComponents, "month")}];
        v67 = localTodayComponents;
        [v38 setDay:{objc_msgSend(localTodayComponents, "day")}];
        [v38 setHour:12];
        [v38 setMinute:0];
        v66 = v38;
        [v38 setSecond:0];
        v39 = v92;
        [highlightCopy childHighlightItemsForHighlightFilter:v92];
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        obj = v107 = 0u;
        v77 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
        if (v77)
        {
          v76 = *v105;
          selfCopy = self;
LABEL_17:
          v40 = 0;
          while (1)
          {
            if (*v105 != v76)
            {
              v41 = v40;
              objc_enumerationMutation(obj);
              v40 = v41;
            }

            v80 = v40;
            v42 = *(*(&v104 + 1) + 8 * v40);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v81 = self->_availablePersons;
            v84 = [(NSArray *)v81 countByEnumeratingWithState:&v100 objects:v114 count:16];
            if (v84)
            {
              v82 = v42;
              v83 = *v101;
              while (2)
              {
                for (j = 0; j != v84; ++j)
                {
                  if (*v101 != v83)
                  {
                    objc_enumerationMutation(v81);
                  }

                  v44 = *(*(&v100 + 1) + 8 * j);
                  v45 = objc_autoreleasePoolPush();
                  v93 = v44;
                  localIdentifier2 = [v44 localIdentifier];
                  v47 = [v88 objectForKeyedSubscript:localIdentifier2];

                  v48 = [(PGBirthdayContextualRule *)self _filterCuratedAssets:v47 forHighlightItem:v42];
                  if ([v48 count])
                  {
                    v86 = v48;
                    v85 = j;
                    v49 = [readerCopy fetchChildHighlightItemsForHighlightItem:v42 sharingFilter:v39];
                    v96 = 0u;
                    v97 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    v95 = v49;
                    v50 = [v95 countByEnumeratingWithState:&v96 objects:v113 count:16];
                    if (v50)
                    {
                      v51 = v50;
                      v90 = 0;
                      v91 = 0;
                      v52 = *v97;
                      v53 = -1.79769313e308;
                      do
                      {
                        for (k = 0; k != v51; ++k)
                        {
                          if (*v97 != v52)
                          {
                            objc_enumerationMutation(v95);
                          }

                          v55 = *(*(&v96 + 1) + 8 * k);
                          v56 = objc_autoreleasePoolPush();
                          if (MEMORY[0x231902060]([readerCopy visibilityStateForHighlightItem:v55 sharingFilter:v39]))
                          {
                            v57 = v47;
                            v58 = [(PGBirthdayContextualRule *)selfCopy _fetchCuratedAssetsForHighlightItem:v55 intersectingAssets:v47];
                            if ([v58 count])
                            {
                              *buf = 0;
                              v59 = [(PGBirthdayContextualRule *)selfCopy _bestAssetInCuratedAssets:v58 forPerson:v93 contextualScore:buf];
                              v60 = v59;
                              if (v59)
                              {
                                v61 = *buf;
                                if (*buf <= v53)
                                {
                                  v61 = v53;
                                }

                                else
                                {
                                  v62 = v59;

                                  v63 = v55;
                                  v90 = v63;
                                  v91 = v62;
                                  readerCopy = v89;
                                }
                              }

                              else
                              {
                                v61 = v53;
                              }

                              v53 = v61;
                              v39 = v92;
                            }

                            v47 = v57;
                          }

                          objc_autoreleasePoolPop(v56);
                        }

                        v51 = [v95 countByEnumeratingWithState:&v96 objects:v113 count:16];
                      }

                      while (v51);
                    }

                    else
                    {
                      v90 = 0;
                      v91 = 0;
                      v53 = -1.79769313e308;
                    }

                    self = selfCopy;
                    if (v91)
                    {
                      blockCopy[2](blockCopy, v91, v90, v82, &v112, v53);

                      objc_autoreleasePoolPop(v45);
                      goto LABEL_52;
                    }

                    v42 = v82;
                    j = v85;
                    v64 = v90;
                  }

                  else
                  {

                    v64 = 0;
                  }

                  objc_autoreleasePoolPop(v45);
                }

                v84 = [(NSArray *)v81 countByEnumeratingWithState:&v100 objects:v114 count:16];
                if (v84)
                {
                  continue;
                }

                break;
              }
            }

LABEL_52:

            if (v112)
            {
              break;
            }

            v40 = v80 + 1;
            if (v80 + 1 == v77)
            {
              v77 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
              if (v77)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }
      }

      v17 = v71;
      startDate = v72;
    }

    else
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = startDate;
        v119 = 2112;
        v120 = v17;
        _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "[PGBirthdayContextualRule] Unable to enumerate contextual key assets, year highlight missing date info: startDate = %@, endDate = %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options
{
  v47 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  localTodayComponents = [optionsCopy localTodayComponents];

  month = [localTodayComponents month];
  v9 = [localTodayComponents day];
  v10 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:self->_graph];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke;
  v34[3] = &unk_2788864B0;
  v34[4] = self;
  v37 = month;
  v38 = v9;
  v11 = v5;
  v35 = v11;
  v12 = v6;
  v36 = v12;
  v28 = v10;
  [v10 enumerateNodesUsingBlock:v34];
  v13 = +[PGGraphPersonNode personScoreSortDescriptors];
  [v11 sortUsingDescriptors:v13];

  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_191;
  v31[3] = &unk_2788864D8;
  v16 = v15;
  v32 = v16;
  v17 = v14;
  v33 = v17;
  [v11 enumerateObjectsUsingBlock:v31];
  objc_storeStrong(&self->_personNodeByLocalIdentifier, v14);
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v19 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:v12 options:librarySpecificFetchOptions];
  fetchedObjects = [v19 fetchedObjects];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_2;
  v29[3] = &unk_278886500;
  v21 = v16;
  v30 = v21;
  v22 = [fetchedObjects sortedArrayUsingComparator:v29];
  availablePersons = self->_availablePersons;
  self->_availablePersons = v22;

  v24 = [(NSArray *)self->_availablePersons count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_availablePersons;
    *buf = 138413059;
    selfCopy = self;
    v41 = 1024;
    v42 = v24 != 0;
    v43 = 2048;
    v44 = v24;
    v45 = 2113;
    v46 = v26;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d, for %lu persons: %{private}@", buf, 0x26u);
  }

  return v24 != 0;
}

void __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isMeNode] & 1) != 0 || (objc_msgSend(v3, "isFavorite") & 1) != 0 || (objc_msgSend(v3, "collection"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "socialGroupNodes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v7 = [v3 birthdayDateComponents];
    if (!v7)
    {
      v7 = [v3 potentialBirthdayDateComponents];
      if (!v7)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = *(*(a1 + 32) + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138477827;
        v14 = v3;
        _os_log_debug_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEBUG, "No birthday date found for %{private}@, taking the potential birthday.", &v13, 0xCu);
      }
    }

    if ([v7 month] == *(a1 + 56) && objc_msgSend(v7, "day") == *(a1 + 64))
    {
      v9 = *(*(a1 + 32) + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138477827;
        v14 = v3;
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Can provide contextual asset for person %{private}@", &v13, 0xCu);
      }

      [*(a1 + 40) addObject:v3];
      v10 = *(a1 + 48);
      v11 = [v3 localIdentifier];
      [v10 addObject:v11];
    }

    goto LABEL_13;
  }

  v12 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138477827;
    v14 = v3;
    _os_log_debug_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEBUG, "Skipping person %{private}@, not part of any social groups nor favorited.", &v13, 0xCu);
  }

LABEL_14:
}

void __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_191(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = [v5 localIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
}

uint64_t __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 localIdentifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = *(a1 + 32);
  v10 = [v6 localIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (PGBirthdayContextualRule)initWithGraph:(id)graph photoLibrary:(id)library curationManager:(id)manager loggingConnection:(id)connection
{
  graphCopy = graph;
  libraryCopy = library;
  managerCopy = manager;
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = PGBirthdayContextualRule;
  v15 = [(PGBirthdayContextualRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_graph, graph);
    objc_storeStrong(&v16->_photoLibrary, library);
    objc_storeStrong(&v16->_curationManager, manager);
    objc_storeStrong(&v16->_loggingConnection, connection);
  }

  return v16;
}

@end