@interface PGZeroKeywordComputer
+ (id)contextualHolidayZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block;
+ (id)zeroKeywordLog;
- (PGZeroKeywordComputer)initWithPhotoLibrary:(id)library curationManager:(id)manager searchComputationCache:(id)cache;
- (id)_tripZeroKeywordWithGraph:(id)graph curationContext:(id)context score:(double *)score;
- (id)_zeroKeywordDisplayMeaningNodeForMeaningNode:(id)node;
- (id)_zeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block;
- (id)contextualDateZeroKeywordsWithGraph:(id)graph options:(id)options;
- (id)contextualMeaningAndTripZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block;
- (id)contextualPersonZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block;
- (id)contextualSceneZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block;
- (id)contextualSeasonZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options;
- (id)contextualSocialGroupZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block;
- (id)eventZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block;
- (id)meaningNodeZeroKeywordForDisplayMeaningNode:(id)node collectionUUIDsToAvoid:(id)avoid curationContext:(id)context;
- (id)momentNodesOverlappingLocalDateInterval:(id)interval inGraph:(id)graph;
- (id)peopleZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block;
- (id)placeZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block;
- (id)sceneZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block;
- (id)socialGroupKeyAssetLocalIdentifierWithPersonLocalIdentifiers:(id)identifiers;
- (id)socialGroupKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block;
- (id)tripRankedKeywordWithGraph:(id)graph curationContext:(id)context;
- (id)zeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block;
@end

@implementation PGZeroKeywordComputer

- (id)momentNodesOverlappingLocalDateInterval:(id)interval inGraph:(id)graph
{
  v5 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:interval inGraph:graph];
  if ([(PGZeroKeywordComputer *)self shouldFilterMomentNodesWithPresence])
  {
    momentNodesWhereMeIsPresent = [(PGZeroKeywordComputer *)self momentNodesWhereMeIsPresent];
    v7 = [v5 collectionByIntersecting:momentNodesWhereMeIsPresent];

    v5 = v7;
  }

  return v5;
}

- (id)_zeroKeywordDisplayMeaningNodeForMeaningNode:(id)node
{
  nodeCopy = node;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32890;
  v16 = __Block_byref_object_dispose__32891;
  v17 = 0;
  graph = [nodeCopy graph];
  zeroKeywordMappingByMeaningLabel = [graph zeroKeywordMappingByMeaningLabel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__PGZeroKeywordComputer_Contextual___zeroKeywordDisplayMeaningNodeForMeaningNode___block_invoke;
  v9[3] = &unk_278883368;
  v6 = nodeCopy;
  v10 = v6;
  v11 = &v12;
  [zeroKeywordMappingByMeaningLabel enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __82__PGZeroKeywordComputer_Contextual___zeroKeywordDisplayMeaningNodeForMeaningNode___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [v10 mappedMeaningNodes];
  if ([v6 containsObject:*(a1 + 32)])
  {
    v7 = [v10 displayNode];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (id)contextualDateZeroKeywordsWithGraph:(id)graph options:(id)options
{
  v6 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  graphCopy = graph;
  array = [v6 array];
  v10 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];

  if (v10)
  {
    currentLocalDate = v10;
  }

  else
  {
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  }

  v12 = currentLocalDate;

  v13 = [MEMORY[0x277D27690] dateByAddingYears:-1 toDate:v12];
  v14 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v13];
  v15 = [MEMORY[0x277D27690] dateByAddingDays:3 toDate:v13];
  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
  v17 = [(PGZeroKeywordComputer *)self momentNodesOverlappingLocalDateInterval:v16 inGraph:graphCopy];

  if ([v17 count])
  {
    v27 = array;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"PGZeroKeywordOneYearAgoSearchableText" value:@"PGZeroKeywordOneYearAgoSearchableText" table:@"Localizable"];

    v20 = MEMORY[0x277D3ACF8];
    locale = [MEMORY[0x277D3AD78] locale];
    LODWORD(v20) = [v20 nlpSearchSupportsLocale:locale];

    if (v20)
    {
      v22 = [v17 set];
      v23 = bestEventNodeForEventNodes(v22);

      if (v23)
      {
        localIdentifier = [v23 localIdentifier];
        v25 = zeroKeywordWithAttributes(7, 8, v19, v19, 0, localIdentifier);

        [v27 addObject:v25];
      }
    }

    array = v27;
  }

  return array;
}

- (id)contextualMeaningAndTripZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v10 = 0.0;
  v47 = _Block_copy(blockCopy);
  v36 = optionsCopy;
  if (v47)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v51) = 0;
      v47[2](v47, &v51, 0.0);
      if (v51 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x1CE04000202;
          LOWORD(v65) = 2080;
          *(&v65 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_54;
      }

      v10 = Current;
    }
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
  v14 = v13;
  if (v13)
  {
    currentLocalDate = v13;
  }

  else
  {
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  }

  array = [MEMORY[0x277CBEB18] array];
  v46 = [MEMORY[0x277CBEB58] set];
  v40 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:currentLocalDate];
  v39 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:currentLocalDate];
  v38 = [(PGZeroKeywordComputer *)self momentNodesOverlappingLocalDateInterval:v39 inGraph:graphCopy];
  v15 = [v38 set];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  buf = v16;
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&v65 = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *(&v65 + 1) = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];

  v37 = [v15 sortedArrayUsingDescriptors:v19];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  reverseObjectEnumerator = [v37 reverseObjectEnumerator];
  v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (!v21)
  {
    v44 = 0;
    goto LABEL_46;
  }

  v23 = 0;
  v44 = 0;
  v24 = *v58;
  *&v22 = 67109378;
  v34 = v22;
  while (2)
  {
    v25 = 0;
    do
    {
      if (*v58 != v24)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v26 = *(*(&v57 + 1) + 8 * v25);
      if (![v26 isInteresting])
      {
        goto LABEL_34;
      }

      if ((v23 & 1) == 0)
      {
        if (![v26 isPartOfTrip])
        {
          v23 = 0;
          goto LABEL_24;
        }

        v27 = [(PGZeroKeywordComputer *)self tripZeroKeywordWithGraph:graphCopy curationContext:contextCopy];
        if (v27)
        {
          [array addObject:v27];
        }
      }

      v23 = 1;
LABEL_24:
      buf = 0;
      *&v65 = &buf;
      *(&v65 + 1) = 0x3032000000;
      v66 = __Block_byref_object_copy__32890;
      v67 = __Block_byref_object_dispose__32891;
      v68 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__32890;
      v55 = __Block_byref_object_dispose__32891;
      v56 = 0;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __121__PGZeroKeywordComputer_Contextual__contextualMeaningAndTripZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
      v50[3] = &unk_278883340;
      v50[4] = self;
      v50[5] = &buf;
      v50[6] = &v51;
      [v26 enumerateMeaningEdgesAndNodesUsingBlock:v50];
      if (*(v65 + 40) && ([v46 containsObject:v52[5]] & 1) == 0 && (-[PGZeroKeywordComputer meaningNodeZeroKeywordForDisplayMeaningNode:collectionUUIDsToAvoid:curationContext:](self, "meaningNodeZeroKeywordForDisplayMeaningNode:collectionUUIDsToAvoid:curationContext:", v52[5], 0, contextCopy), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [array addObject:v28];

        v29 = 0;
        v30 = 1;
      }

      else
      {
        if (v47)
        {
          v31 = CFAbsoluteTimeGetCurrent();
          if (v31 - v10 >= 0.01)
          {
            v49 = 0;
            (v47)[2](v47, &v49, 0.5);
            if (v49 | v44 & 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v61[0] = v34;
                v61[1] = 527;
                v62 = 2080;
                v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v61, 0x12u);
              }

              v29 = 0;
              v30 = 0;
              v44 = 1;
            }

            else
            {
              v30 = 0;
              v44 = 0;
              v29 = 1;
            }

            goto LABEL_32;
          }
        }

        v30 = 0;
        v29 = 1;
      }

      v31 = v10;
LABEL_32:
      _Block_object_dispose(&v51, 8);

      _Block_object_dispose(&buf, 8);
      if (!v29)
      {

        if (v30)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v10 = v31;
LABEL_34:
      ++v25;
    }

    while (v21 != v25);
    v32 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v69 count:16];
    v21 = v32;
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_46:

  v31 = v10;
LABEL_47:
  if (v47 && CFAbsoluteTimeGetCurrent() - v31 >= 0.01 && (LOBYTE(v51) = 0, v47[2](v47, &v51, 1.0), v51 | v44 & 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x21204000202;
      LOWORD(v65) = 2080;
      *(&v65 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

LABEL_44:
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = array;
  }

LABEL_54:

  return v12;
}

void __121__PGZeroKeywordComputer_Contextual__contextualMeaningAndTripZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _zeroKeywordDisplayMeaningNodeForMeaningNode:v6];
  if (v7)
  {
    if ([v11 isReliable])
    {
      if ([v6 countOfEdgesWithLabel:@"MEANING" domain:700] >= 3)
      {
        [v11 confidence];
        v9 = v8;
        [*(*(*(a1 + 40) + 8) + 40) confidence];
        if (v9 > v10)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
        }
      }
    }
  }
}

- (id)contextualSceneZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  optionsCopy = options;
  blockCopy = block;
  v8 = 0.0;
  v46 = _Block_copy(blockCopy);
  if (v46)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v53[0]) = 0;
      v46[2](v46, v53, 0.0);
      if (LOBYTE(v53[0]) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x19204000202;
          LOWORD(v62) = 2080;
          *(&v62 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
        goto LABEL_46;
      }

      v8 = Current;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
  v12 = v11;
  if (v11)
  {
    currentLocalDate = v11;
  }

  else
  {
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  }

  v40 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:currentLocalDate];
  v39 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:currentLocalDate];
  v45 = [MEMORY[0x277CBEB58] set];
  v38 = [(PGZeroKeywordComputer *)self momentNodesOverlappingLocalDateInterval:v39 inGraph:graphCopy];
  v13 = [v38 set];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  buf = v14;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&v62 = v15;
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *(&v62 + 1) = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];

  v37 = [v13 sortedArrayUsingDescriptors:v17];

  v57 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  reverseObjectEnumerator = [v37 reverseObjectEnumerator];
  v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (!v19)
  {
    v44 = 0;
    goto LABEL_38;
  }

  v44 = 0;
  v21 = *v55;
  *&v20 = 67109378;
  v35 = v20;
  while (2)
  {
    v22 = 0;
    do
    {
      if (*v55 != v21)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v23 = *(*(&v54 + 1) + 8 * v22);
      if (![v23 isInteresting])
      {
        goto LABEL_26;
      }

      buf = 0;
      *&v62 = &buf;
      *(&v62 + 1) = 0x3032000000;
      v63 = __Block_byref_object_copy__32890;
      v64 = __Block_byref_object_dispose__32891;
      v65 = 0;
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v53[3] = 0;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __96__PGZeroKeywordComputer_Contextual__contextualSceneZeroKeywordsWithGraph_options_progressBlock___block_invoke;
      v49[3] = &unk_278883318;
      v24 = v45;
      v50 = v24;
      v51 = v53;
      p_buf = &buf;
      [v23 enumerateSceneEdgesAndNodesUsingBlock:v49];
      v25 = *(v62 + 40);
      if (v25 && ([v25 targetNode], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "localizedName"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", objc_msgSend(v26, "sceneIdentifier")), v28 = objc_claimAutoreleasedReturnValue(), zeroKeywordWithAttributes(3, 13, v27, 0, 0, v28), v29 = objc_claimAutoreleasedReturnValue(), v28, objc_msgSend(array, "addObject:", v29), objc_msgSend(v24, "addObject:", v26), LOBYTE(v28) = objc_msgSend(array, "count") < 2, v29, v27, v26, (v28 & 1) == 0))
      {
        v32 = 0;
        v31 = 1;
      }

      else
      {
        if (v46)
        {
          v30 = CFAbsoluteTimeGetCurrent();
          if (v30 - v8 >= 0.01)
          {
            v48 = 0;
            (v46)[2](v46, &v48, 0.5);
            if (v48 | v44 & 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v58[0] = v35;
                v58[1] = 451;
                v59 = 2080;
                v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v58, 0x12u);
              }

              v32 = 0;
              v31 = 0;
              v44 = 1;
            }

            else
            {
              v31 = 0;
              v44 = 0;
              v32 = 1;
            }

            goto LABEL_24;
          }
        }

        v31 = 0;
        v32 = 1;
      }

      v30 = v8;
LABEL_24:

      _Block_object_dispose(v53, 8);
      _Block_object_dispose(&buf, 8);

      if (!v32)
      {

        if (v31)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v8 = v30;
LABEL_26:
      ++v22;
    }

    while (v19 != v22);
    v33 = [reverseObjectEnumerator countByEnumeratingWithState:&v54 objects:v66 count:16];
    v19 = v33;
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v30 = v8;
LABEL_39:
  if (v46 && CFAbsoluteTimeGetCurrent() - v30 >= 0.01 && (LOBYTE(v53[0]) = 0, v46[2](v46, v53, 1.0), LOBYTE(v53[0]) | v44 & 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x1C604000202;
      LOWORD(v62) = 2080;
      *(&v62 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

LABEL_36:
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = array;
  }

LABEL_46:

  return v10;
}

void __96__PGZeroKeywordComputer_Contextual__contextualSceneZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    if ([v9 isReliable])
    {
      if ([v9 numberOfSearchConfidenceAssets])
      {
        if ([v6 isSuitableForSuggestions])
        {
          if ([v6 isIndexed])
          {
            v7 = [v9 numberOfSearchConfidenceAssets];
            v8 = (([v6 level] - 1) * 0.1 + 1.0) * v7;
            if (v8 > *(*(*(a1 + 40) + 8) + 24))
            {
              objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
              *(*(*(a1 + 40) + 8) + 24) = v8;
            }
          }
        }
      }
    }
  }
}

- (id)contextualSeasonZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options
{
  v30 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  v10 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  array = [v10 array];
  v13 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];

  if (v13)
  {
    currentLocalDate = v13;
  }

  else
  {
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  }

  v15 = currentLocalDate;

  v16 = [graphCopy seasonNodeForLocalDate:v15];
  if ([MEMORY[0x277D27690] isFirstTenDaysOfSeasonForLocalDate:v15])
  {
    v17 = [graphCopy previousSeasonNodeForSeasonNode:v16];
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      name = [v17 name];
      v28 = 138412290;
      v29 = name;
      v21 = "Contextual Season ZK : previous season %@";
LABEL_9:
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, v21, &v28, 0xCu);
    }
  }

  else
  {
    v17 = v16;
    v22 = +[PGLogging sharedLogging];
    loggingConnection = [v22 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      name = [v17 name];
      v28 = 138412290;
      v29 = name;
      v21 = "Contextual Season ZK : current season %@";
      goto LABEL_9;
    }
  }

  if (v17)
  {
    photoLibrary = self->_photoLibrary;
    curationManager = self->_curationManager;
    searchComputationCache = [(PGZeroKeywordComputer *)self searchComputationCache];
    v26 = seasonNodeZeroKeyword(v17, photoLibrary, curationManager, searchComputationCache, contextCopy);

    if (v26)
    {
      [array addObject:v26];
    }
  }

  return array;
}

- (id)contextualSocialGroupZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block
{
  v100 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  optionsCopy = options;
  blockCopy = block;
  v11 = 0.0;
  v71 = _Block_copy(blockCopy);
  if (!v71)
  {
    goto LABEL_8;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_8;
  }

  v93 = 0;
  v71[2](v71, &v93, 0.0);
  if (v93 != 1)
  {
    v11 = Current;
LABEL_8:
    v62 = blockCopy;
    array = [MEMORY[0x277CBEB18] array];
    v15 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];
    v63 = optionsCopy;
    v16 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    v17 = v16;
    if (v16)
    {
      currentLocalDate = v16;
    }

    else
    {
      currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    }

    v67 = currentLocalDate;

    v19 = [MEMORY[0x277CBEB58] set];
    v73 = [MEMORY[0x277CBEB58] set];
    selfCopy = self;
    v20 = self->_photoLibrary;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    aBlock[3] = &unk_278883250;
    v64 = graphCopy;
    v21 = graphCopy;
    v89 = v21;
    v60 = v20;
    v90 = v60;
    v61 = v19;
    v91 = v61;
    v66 = array;
    v92 = v66;
    v70 = _Block_copy(aBlock);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v15;
    v22 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v85;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v85 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v84 + 1) + 8 * i);
          v95 = @"name";
          v96 = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
          v82[3] = &unk_278889240;
          v83 = v73;
          [v21 enumerateNodesWithLabel:@"People" domain:300 properties:v27 usingBlock:v82];
        }

        v23 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
      }

      while (v23);
    }

    v70[2](v70, v73);
    if (v71)
    {
      v28 = CFAbsoluteTimeGetCurrent();
      v30 = v66;
      v29 = v67;
      if (v28 - v11 >= 0.01)
      {
        v93 = 0;
        v71[2](v71, &v93, 0.5);
        if (v93)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 205;
            LOWORD(v99) = 2080;
            *(&v99 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v13 = MEMORY[0x277CBEBF8];
          blockCopy = v62;
LABEL_64:

          goto LABEL_65;
        }

        v11 = v28;
      }
    }

    else
    {
      v30 = v66;
      v29 = v67;
    }

    v65 = [v30 count];
    v58 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-1 toDate:v29];
    v68 = v29;
    v57 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v58 endDate:v29];
    v56 = [PGZeroKeywordComputer momentNodesOverlappingLocalDateInterval:selfCopy inGraph:"momentNodesOverlappingLocalDateInterval:inGraph:"];
    v31 = [v56 set];
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    *buf = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
    *&v99 = v33;
    v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    *(&v99 + 1) = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

    v36 = [v31 sortedArrayUsingDescriptors:v35];

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v59 = v36;
    reverseObjectEnumerator = [v36 reverseObjectEnumerator];
    v38 = [reverseObjectEnumerator countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v79;
      while (2)
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v79 != v40)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v42 = *(*(&v78 + 1) + 8 * j);
          v43 = objc_autoreleasePoolPush();
          [v73 removeAllObjects];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_243;
          v76[3] = &unk_278889240;
          v44 = v73;
          v77 = v44;
          [v42 enumeratePersonNodesUsingBlock:v76];
          v70[2](v70, v44);
          if (v71)
          {
            v45 = CFAbsoluteTimeGetCurrent();
            if (v45 - v11 >= 0.01)
            {
              v93 = 0;
              v71[2](v71, &v93, 0.5);
              if (v93)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *&buf[4] = 225;
                  LOWORD(v99) = 2080;
                  *(&v99 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v43);
                v13 = MEMORY[0x277CBEBF8];
                optionsCopy = v63;
                graphCopy = v64;
                blockCopy = v62;
                v30 = v66;
                v29 = v68;
                goto LABEL_63;
              }

              v11 = v45;
            }
          }

          objc_autoreleasePoolPop(v43);
        }

        v39 = [reverseObjectEnumerator countByEnumeratingWithState:&v78 objects:v94 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v30 = v66;
    if ([v66 count] == v65)
    {
      v46 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:v68];
      firstObject = [v59 firstObject];
      previousMomentNode = [firstObject previousMomentNode];

      graphCopy = v64;
      blockCopy = v62;
      if ([v66 count] == v65 && previousMomentNode)
      {
        while (1)
        {
          localEndDate = [previousMomentNode localEndDate];
          v50 = [localEndDate compare:v46];

          if (v50 == -1)
          {
            break;
          }

          v51 = objc_autoreleasePoolPush();
          if ([previousMomentNode isInteresting])
          {
            [v73 removeAllObjects];
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_244;
            v74[3] = &unk_278889240;
            v52 = v73;
            v75 = v52;
            [previousMomentNode enumeratePersonNodesUsingBlock:v74];
            v70[2](v70, v52);
            if (v71)
            {
              v53 = CFAbsoluteTimeGetCurrent();
              if (v53 - v11 >= 0.01)
              {
                v93 = 0;
                v71[2](v71, &v93, 0.5);
                if (v93)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *&buf[4] = 244;
                    LOWORD(v99) = 2080;
                    *(&v99 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  objc_autoreleasePoolPop(v51);
                  v13 = MEMORY[0x277CBEBF8];
                  optionsCopy = v63;
                  v29 = v68;
                  goto LABEL_63;
                }

                v11 = v53;
              }
            }
          }

          v48PreviousMomentNode = [previousMomentNode previousMomentNode];

          objc_autoreleasePoolPop(v51);
          if ([v66 count] == v65)
          {
            previousMomentNode = v48PreviousMomentNode;
            if (v48PreviousMomentNode)
            {
              continue;
            }
          }

          goto LABEL_55;
        }
      }

      v48PreviousMomentNode = previousMomentNode;
LABEL_55:
    }

    else
    {
      graphCopy = v64;
      blockCopy = v62;
    }

    v29 = v68;
    optionsCopy = v63;
    if (v71 && CFAbsoluteTimeGetCurrent() - v11 >= 0.01 && (v93 = 0, v71[2](v71, &v93, 1.0), v93))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 251;
        LOWORD(v99) = 2080;
        *(&v99 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v13 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v13 = v66;
    }

LABEL_63:

    goto LABEL_64;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 167;
    LOWORD(v99) = 2080;
    *(&v99 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_65:

  return v13;
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) maximalSocialGroupsOverlappingMemberLocalIdentifiers:a2];
  v10 = [PGPeopleUtilities validateSocialGroups:v3 withPhotoLibrary:*(a1 + 40) graph:*(a1 + 32)];

  v4 = [v10 count] == 1;
  v5 = v10;
  if (v4)
  {
    v6 = [v10 firstObject];
    v7 = personUUIDsFromPersonLocalIdentifiers(v6);
    v8 = PLSearchSocialGroupLookupIdentifier();

    if (([*(a1 + 48) containsObject:v8] & 1) == 0)
    {
      v9 = zeroKeywordWithAttributes(1, 5, 0, 0, v8, v6);
      [*(a1 + 56) addObject:v9];
      [*(a1 + 48) addObject:v8];
    }

    v5 = v10;
  }
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_243(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_244(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

- (id)contextualPersonZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block
{
  v120 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  optionsCopy = options;
  blockCopy = block;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v65 = _Block_copy(blockCopy);
  v55 = optionsCopy;
  if (v65 && (v8 = CFAbsoluteTimeGetCurrent(), v8 - v107[3] >= 0.01) && (v107[3] = v8, v105 = 0, (*(v65 + 2))(v65, &v105, 0.0), v9 = *(v111 + 24) | v105, *(v111 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 48;
      LOWORD(v119) = 2080;
      *(&v119 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];
    v12 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    v13 = v12;
    if (v12)
    {
      currentLocalDate = v12;
    }

    else
    {
      currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    }

    v14 = [MEMORY[0x277CBEB58] set];
    array2 = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    aBlock[3] = &unk_2788831D8;
    v53 = v14;
    v103 = v53;
    v59 = array2;
    v104 = v59;
    v63 = _Block_copy(aBlock);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v98 objects:v117 count:16];
    if (v16)
    {
      v17 = *v99;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v99 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v98 + 1) + 8 * i);
          v115 = @"name";
          v116 = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
          v92[3] = &unk_278883200;
          v93 = v63;
          v94 = v65;
          v95 = &v106;
          v97 = 0x3F847AE147AE147BLL;
          v96 = &v110;
          [graphCopy enumerateNodesWithLabel:@"People" domain:300 properties:v20 usingBlock:v92];

          if (*(v111 + 24) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 81;
              LOWORD(v119) = 2080;
              *(&v119 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
            v27 = v93;
            v54 = obj;
            goto LABEL_55;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v98 objects:v117 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v21 = filteredKeywords(v59, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0.0);
    [array addObjectsFromArray:v21];

    [v59 removeAllObjects];
    v22 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-1 toDate:currentLocalDate];
    v23 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:1 toDate:currentLocalDate];
    v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v23];
    v25 = [MEMORY[0x277D27690] yearFromDate:v22];
    v54 = v22;
    v26 = [MEMORY[0x277D27690] yearFromDate:v23];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_238;
    v82[3] = &unk_278883228;
    v88 = v25;
    v50 = v24;
    v83 = v50;
    v91 = v25 != v26;
    v60 = v63;
    v84 = v60;
    v89 = v26;
    v61 = v65;
    v85 = v61;
    v86 = &v106;
    v90 = 0x3F847AE147AE147BLL;
    v87 = &v110;
    [graphCopy enumerateNodesWithLabel:0 domain:300 usingBlock:v82];
    if (*(v111 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 119;
        LOWORD(v119) = 2080;
        *(&v119 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v28 = filteredKeywords(v59, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0.0);
      [array addObjectsFromArray:v28];

      [v59 removeAllObjects];
      v49 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v54 endDate:currentLocalDate];
      v48 = [PGZeroKeywordComputer momentNodesOverlappingLocalDateInterval:"momentNodesOverlappingLocalDateInterval:inGraph:" inGraph:?];
      v29 = [v48 set];
      v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
      *buf = v30;
      v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
      *&v119 = v31;
      v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
      *(&v119 + 1) = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

      v52 = [v29 sortedArrayUsingDescriptors:v33];

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      reverseObjectEnumerator = [v52 reverseObjectEnumerator];
      v35 = [reverseObjectEnumerator countByEnumeratingWithState:&v78 objects:v114 count:16];
      if (v35)
      {
        v36 = *v79;
        while (2)
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v79 != v36)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v38 = *(*(&v78 + 1) + 8 * j);
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_239;
            v72[3] = &unk_278883200;
            v73 = v60;
            v74 = v61;
            v75 = &v106;
            v76 = &v110;
            v77 = 0x3F847AE147AE147BLL;
            [v38 enumeratePersonNodesUsingBlock:v72];
            if (*(v111 + 24) == 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 138;
                LOWORD(v119) = 2080;
                *(&v119 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_45;
            }
          }

          v35 = [reverseObjectEnumerator countByEnumeratingWithState:&v78 objects:v114 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      if (![v59 count])
      {
        v39 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:currentLocalDate];
        firstObject = [v52 firstObject];
        previousMomentNode = [firstObject previousMomentNode];

        while (1)
        {
          if ([v59 count] || !previousMomentNode || (objc_msgSend(previousMomentNode, "localEndDate"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "compare:", v39) == -1, v42, v43))
          {

            break;
          }

          if ([previousMomentNode isInteresting])
          {
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_240;
            v66[3] = &unk_278883200;
            v67 = v60;
            v68 = v61;
            v69 = &v106;
            v70 = &v110;
            v71 = 0x3F847AE147AE147BLL;
            [previousMomentNode enumeratePersonNodesUsingBlock:v66];
            if (*(v111 + 24) == 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 153;
                LOWORD(v119) = 2080;
                *(&v119 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_45;
            }
          }

          v41PreviousMomentNode = [previousMomentNode previousMomentNode];

          previousMomentNode = v41PreviousMomentNode;
        }
      }

      if (v65 && (Current = CFAbsoluteTimeGetCurrent(), Current - v107[3] >= 0.01) && (v107[3] = Current, v105 = 0, (*(v61 + 2))(v61, &v105, 1.0), v46 = *(v111 + 24) | v105, *(v111 + 24) = v46, (v46 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 159;
          LOWORD(v119) = 2080;
          *(&v119 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_45:
        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = array;
      }
    }

    v27 = v23;
LABEL_55:
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);

  return v10;
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 localIdentifier];
  v4 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v3];
  if ([v4 length] && (objc_msgSend(*(a1 + 32), "containsObject:", v4) & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
    v5 = [v12 name];
    v6 = zeroKeywordWithAttributes(0, 1, v5, 0, v4, v3);

    v7 = [v12 collection];
    v8 = [v7 momentNodes];
    v9 = [v8 count];

    v10 = *(a1 + 40);
    v11 = [[PGRankedZeroKeyword alloc] initWithKeyword:v6 score:v9];
    [v10 addObject:v11];
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 40) + 16))(0.5);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_238(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 birthdayDate];
  if (v6)
  {
    v7 = [MEMORY[0x277D27690] dateBySettingYear:*(a1 + 72) ofDate:v6];
    if (([*(a1 + 32) containsDate:v7] & 1) != 0 || *(a1 + 96) == 1 && (objc_msgSend(MEMORY[0x277D27690], "dateBySettingYear:ofDate:", *(a1 + 80), v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v7 = v8, objc_msgSend(*(a1 + 32), "containsDate:", v8)))
    {
      (*(*(a1 + 40) + 16))();
    }

    if (*(a1 + 48))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = *(*(a1 + 56) + 8);
      if (Current - *(v10 + 24) >= *(a1 + 88))
      {
        *(v10 + 24) = Current;
        (*(*(a1 + 48) + 16))(0.5);
        *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *a3 = 1;
        }
      }
    }
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_239(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 40) + 16))(0.5);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_240(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 40) + 16))(0.5);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

+ (id)contextualHolidayZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block
{
  v84 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  optionsCopy = options;
  blockCopy = block;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v47 = _Block_copy(blockCopy);
  v38 = optionsCopy;
  if (!v47 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v70[3] < 0.01) || (v70[3] = v8, LOBYTE(v77) = 0, (*(v47 + 2))(v47, &v77, 0.0), v9 = *(v74 + 24) | v77, *(v74 + 24) = v9, (v9 & 1) == 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [optionsCopy objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    v13 = v12;
    if (v12)
    {
      currentLocalDate = v12;
    }

    else
    {
      currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    }

    v15 = currentLocalDate;

    v43 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-1 toDate:v15];
    v42 = [MEMORY[0x277D27690] endOfDayForDate:v15];
    v16 = MEMORY[0x277D27690];
    v17 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v15];
    v41 = [v16 startOfDayForDate:v17];

    v40 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:1 toDate:v15];
    v48 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:currentLocale];
    v44 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection nodesInGraph:graphCopy];
    v18 = MEMORY[0x277D22BF8];
    v19 = +[PGGraphHolidayNode datesOfCelebration];
    v20 = [v18 adjacencyWithSources:v44 relation:v19 targetsClass:objc_opt_class()];

    sources = [v20 sources];
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    v67[3] = &unk_278888D00;
    v23 = v22;
    v68 = v23;
    [sources enumerateNodesUsingBlock:v67];
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    targets = [v20 targets];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
    v65[3] = &unk_2788875A8;
    v26 = v24;
    v66 = v26;
    [targets enumerateNodesUsingBlock:v65];

    holidayNames = [sources holidayNames];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_3;
    v60[3] = &unk_2788832A0;
    v28 = v20;
    v61 = v28;
    v29 = v23;
    v62 = v29;
    v30 = v26;
    v63 = v30;
    v31 = array;
    v64 = v31;
    [v48 enumerateEventRulesWithNames:holidayNames betweenLocalDate:v43 andLocalDate:v42 usingBlock:v60];
    if (*(v74 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x13604000202;
        LOWORD(v82) = 2080;
        *(&v82 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_28;
    }

    if ([v31 count] >= 3)
    {
      [v31 removeObjectsInRange:{0, objc_msgSend(v31, "count") - 2}];
    }

    buf = 0;
    *&v82 = &buf;
    *(&v82 + 1) = 0x2020000000;
    v83 = 2;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_257;
    v50[3] = &unk_2788832F0;
    v51 = v28;
    v52 = v29;
    v53 = v30;
    v32 = v31;
    v54 = v32;
    p_buf = &buf;
    v33 = v47;
    v55 = v33;
    v57 = &v69;
    v58 = &v73;
    v59 = 0x3F847AE147AE147BLL;
    [v48 enumerateEventRulesWithNames:holidayNames betweenLocalDate:v41 andLocalDate:v40 usingBlock:v50];
    if (*(v74 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v77 = 67109378;
        v78 = 362;
        v79 = 2080;
        v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        v34 = MEMORY[0x277D86220];
LABEL_19:
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v77, 0x12u);
      }
    }

    else
    {
      if (!v47 || (Current = CFAbsoluteTimeGetCurrent(), Current - v70[3] < 0.01) || (v70[3] = Current, v49 = 0, (*(v33 + 2))(v33, &v49, 1.0), v36 = *(v74 + 24) | v49, *(v74 + 24) = v36, (v36 & 1) == 0))
      {
        v10 = v32;
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v77 = 67109378;
        v78 = 364;
        v79 = 2080;
        v80 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        v34 = MEMORY[0x277D86220];
        goto LABEL_19;
      }
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_27:

    _Block_object_dispose(&buf, 8);
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x10304000202;
    LOWORD(v82) = 2080;
    *(&v82 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_29:
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  return v10;
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_4;
  v10[3] = &unk_278883278;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  [v7 enumerateTargetsBySourceWithBlock:v10];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_257(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2_258;
  v16[3] = &unk_2788832C8;
  v9 = *(a1 + 32);
  v17 = *(a1 + 40);
  v10 = v7;
  v18 = v10;
  v19 = *(a1 + 48);
  v11 = v8;
  v20 = v11;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v21 = v12;
  v22 = v13;
  v23 = a4;
  [v9 enumerateTargetsBySourceWithBlock:v16];
  if (*(a1 + 64))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v15 = *(*(a1 + 80) + 8);
    if (Current - *(v15 + 24) >= *(a1 + 96))
    {
      *(v15 + 24) = Current;
      (*(*(a1 + 64) + 16))(0.5);
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2_258(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 elementIdentifiers];
  v7 = [v6 firstElement];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  v41 = v10;
  v11 = [v10 name];
  v12 = [*(a1 + 40) name];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v37 = v5;
    v14 = [v5 elementIdentifiers];
    v15 = [v14 indexArray];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      v19 = *MEMORY[0x277D3B1D8];
      v20 = *MEMORY[0x277D3B180];
      v38 = *v52;
      v39 = a1;
      do
      {
        v21 = 0;
        v40 = v17;
        do
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v51 + 1) + 8 * v21)];
          v23 = [v22 localDate];
          if ([*(a1 + 56) containsObject:v23])
          {
            v24 = holidayNodeZeroKeyword(v41);
            if (v24)
            {
              v45 = v21;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v46 = *(a1 + 64);
              v25 = [v46 countByEnumeratingWithState:&v47 objects:v55 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v48;
                v43 = v23;
                v44 = v22;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v48 != v27)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v29 = *(*(&v47 + 1) + 8 * i);
                    v30 = [v24 objectForKeyedSubscript:v19];
                    v31 = [v29 objectForKeyedSubscript:v19];
                    v32 = [v30 isEqualToString:v31];

                    v33 = [v24 objectForKeyedSubscript:v20];
                    v34 = [v29 objectForKeyedSubscript:v20];
                    v35 = [v33 isEqualToString:v34];

                    if (v32)
                    {
                      v36 = v35 == 0;
                    }

                    else
                    {
                      v36 = 1;
                    }

                    if (!v36)
                    {

                      v18 = v38;
                      a1 = v39;
                      v17 = v40;
                      v22 = v44;
                      v21 = v45;
                      v23 = v43;
                      goto LABEL_23;
                    }
                  }

                  v26 = [v46 countByEnumeratingWithState:&v47 objects:v55 count:16];
                  v23 = v43;
                  v22 = v44;
                }

                while (v26);
              }

              a1 = v39;
              [*(v39 + 64) addObject:v24];
              --*(*(*(v39 + 72) + 8) + 24);
              v18 = v38;
              v17 = v40;
              v21 = v45;
              if (!*(*(*(v39 + 72) + 8) + 24))
              {
                **(v39 + 80) = 1;
              }
            }

LABEL_23:
          }

          ++v21;
        }

        while (v21 != v17);
        v17 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v17);
    }

    v5 = v37;
  }
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 elementIdentifiers];
  v7 = [v6 firstElement];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v10 name];
  v12 = [*(a1 + 40) name];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = [v5 elementIdentifiers];
    v15 = [v14 indexArray];

    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v19)];
          v21 = [v20 localDate];
          if ([*(a1 + 56) containsObject:v21])
          {
            v22 = holidayNodeZeroKeyword(v10);
            if (v22)
            {
              [*(a1 + 64) addObject:v22];
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }
}

- (id)meaningNodeZeroKeywordForDisplayMeaningNode:(id)node collectionUUIDsToAvoid:(id)avoid curationContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  avoidCopy = avoid;
  contextCopy = context;
  label = [nodeCopy label];
  graph = [nodeCopy graph];
  zeroKeywordMappingByMeaningLabel = [graph zeroKeywordMappingByMeaningLabel];
  v14 = [zeroKeywordMappingByMeaningLabel objectForKeyedSubscript:label];
  mappedMeaningNodes = [v14 mappedMeaningNodes];
  if ([mappedMeaningNodes count])
  {
    if (!isSuitableForZeroKeywordWithMeanings(mappedMeaningNodes))
    {
      v26 = 0;
      goto LABEL_12;
    }

    v34 = zeroKeywordMappingByMeaningLabel;
    photoLibrary = self->_photoLibrary;
    curationManager = self->_curationManager;
    searchComputationCache = [(PGZeroKeywordComputer *)self searchComputationCache];
    v19 = avoidCopy;
    v20 = searchComputationCache;
    v32 = contextCopy;
    v33 = v19;
    v21 = bestAssetIdentifiersForMeaningNodes(mappedMeaningNodes, v19, photoLibrary, curationManager, searchComputationCache, graph, contextCopy);

    v22 = zeroKeywordLocalizationKeyForMeaningLabel(label);
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:v22 value:v22 table:@"Localizable"];

    localizedName = [nodeCopy localizedName];
    if ([v21 count])
    {
      v26 = zeroKeywordWithAttributes(5, 13, v24, localizedName, 0, v21);
    }

    else
    {
      v26 = 0;
    }

    contextCopy = v32;
    avoidCopy = v33;
  }

  else
  {
    v34 = zeroKeywordMappingByMeaningLabel;
    v27 = contextCopy;
    v28 = +[PGLogging sharedLogging];
    loggingConnection = [v28 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      label2 = [nodeCopy label];
      *buf = 138412290;
      v36 = label2;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot find root applicable meaning nodes for display meaning %@", buf, 0xCu);
    }

    v26 = 0;
    contextCopy = v27;
  }

  zeroKeywordMappingByMeaningLabel = v34;
LABEL_12:

  return v26;
}

- (id)_tripZeroKeywordWithGraph:(id)graph curationContext:(id)context score:(double *)score
{
  v67 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  longTripNodes = [graphCopy longTripNodes];
  if (![longTripNodes count])
  {
    shortTripNodes = [graphCopy shortTripNodes];

    longTripNodes = shortTripNodes;
  }

  if ([(PGZeroKeywordComputer *)self shouldFilterMomentNodesWithPresence])
  {
    v50 = graphCopy;
    v52 = contextCopy;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(longTripNodes, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v11 = longTripNodes;
    v12 = [v11 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v61;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v60 + 1) + 8 * i);
          collection = [v16 collection];
          momentNodes = [collection momentNodes];
          momentNodesWhereMeIsPresent = [(PGZeroKeywordComputer *)self momentNodesWhereMeIsPresent];
          v20 = [momentNodes intersectsCollection:momentNodesWhereMeIsPresent];

          if (v20)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v13);
    }

    graphCopy = v50;
    contextCopy = v52;
    longTripNodes = v10;
  }

  if (![longTripNodes count])
  {
    v46 = 0;
    goto LABEL_37;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = longTripNodes;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (!v22)
  {
    v46 = 0;
LABEL_34:

    v23 = v22;
LABEL_36:

    goto LABEL_37;
  }

  v48 = longTripNodes;
  v51 = graphCopy;
  v53 = contextCopy;
  v23 = 0;
  v24 = 0;
  v25 = *v57;
  do
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v57 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v56 + 1) + 8 * j);
      localStartDate = [v27 localStartDate];
      if (!v23 || [MEMORY[0x277D27690] compareDate:localStartDate toDate:v23 toUnitGranularity:16] == 1)
      {
        v29 = localStartDate;

        v30 = v27;
        v23 = v29;
        v24 = v30;
      }
    }

    v22 = [v21 countByEnumeratingWithState:&v56 objects:v65 count:16];
  }

  while (v22);

  if (!v24)
  {
    v46 = 0;
    graphCopy = v51;
    contextCopy = v53;
    longTripNodes = v48;
    goto LABEL_36;
  }

  eventEnrichmentMomentNodes = [v24 eventEnrichmentMomentNodes];
  uuids = [eventEnrichmentMomentNodes uuids];
  searchComputationCache = [(PGZeroKeywordComputer *)self searchComputationCache];
  uUID = [v24 UUID];
  allObjects = [uuids allObjects];
  v22 = [searchComputationCache keyAssetLocalIdentifierForNodeIdentifier:uUID withAssociatedMomentUUIDs:allObjects];

  if (!v22)
  {
    temporaryArray = [eventEnrichmentMomentNodes temporaryArray];
    v55 = 0;
    v22 = bestAssetIdentifierForMomentNodes(temporaryArray, &v55, v53);
    v37 = v55;

    searchComputationCache2 = [(PGZeroKeywordComputer *)self searchComputationCache];
    uUID2 = [v24 UUID];
    [searchComputationCache2 setKeyAssetLocalIdentifier:v22 forNodeIdentifier:uUID2 withAssociatedMomentUUID:v37];
  }

  if (v22)
  {
    graphCopy = v51;
    longTripNodes = v48;
    if (score)
    {
      allTripNodes = [v51 allTripNodes];
      v41 = [allTripNodes count];

      *score = v41;
    }

    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v42 localizedStringForKey:@"PGMeaningTripZeroKeywordText" value:@"PGMeaningTripZeroKeywordText" table:@"Localizable"];

    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];

    v64 = v22;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v46 = zeroKeywordWithAttributes(5, 13, v21, v44, 0, v45);

    contextCopy = v53;
    goto LABEL_34;
  }

  v46 = 0;
  graphCopy = v51;
  contextCopy = v53;
  longTripNodes = v48;
LABEL_37:

  return v46;
}

- (id)tripRankedKeywordWithGraph:(id)graph curationContext:(id)context
{
  v8 = 0.0;
  v4 = [(PGZeroKeywordComputer *)self _tripZeroKeywordWithGraph:graph curationContext:context score:&v8];
  v5 = [PGRankedZeroKeyword alloc];
  v6 = [(PGRankedZeroKeyword *)v5 initWithKeyword:v4 score:v8];

  return v6;
}

- (id)sceneZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block
{
  v106 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  optionsCopy = options;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v48 = blockCopy;
  v51 = v8;
  if (!v8 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v90[3] < 0.01) || (v90[3] = v9, v98[0] = 0, (*(v8 + 2))(v8, v98, 0.0), v10 = *(v94 + 24) | v98[0], *(v94 + 24) = v10, (v10 & 1) == 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    v53 = [MEMORY[0x277CBEB58] set];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    v84[3] = &unk_27888A188;
    v12 = v8;
    v85 = v12;
    v86 = &v89;
    v87 = &v93;
    v88 = 0x3F847AE147AE147BLL;
    v49 = [(PGZeroKeywordComputer *)self contextualSceneZeroKeywordsWithGraph:graphCopy options:optionsCopy progressBlock:v84];
    if (*(v94 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:
        v11 = MEMORY[0x277CBEBF8];
LABEL_56:

        goto LABEL_57;
      }

      *buf = 67109378;
      *&buf[4] = 696;
      LOWORD(v103) = 2080;
      *(&v103 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      v13 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_11;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v14 = v49;
    v15 = [v14 countByEnumeratingWithState:&v80 objects:v105 count:16];
    if (v15)
    {
      v16 = *v81;
      v17 = *MEMORY[0x277D3B180];
LABEL_14:
      v18 = 0;
      while (1)
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v80 + 1) + 8 * v18);
        [array addObject:v19];
        v20 = [v19 objectForKeyedSubscript:v17];
        [v53 addObject:v20];

        if ([v19 count] > 2)
        {
          break;
        }

        if (v15 == ++v18)
        {
          v15 = [v14 countByEnumeratingWithState:&v80 objects:v105 count:16];
          if (v15)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    if (v51)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v90[3] >= 0.01)
      {
        v90[3] = Current;
        v98[0] = 0;
        (*(v12 + 2))(v12, v98, 0.1);
        v22 = *(v94 + 24) | v98[0];
        *(v94 + 24) = v22;
        if (v22)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_11;
          }

          *buf = 67109378;
          *&buf[4] = 707;
          LOWORD(v103) = 2080;
          *(&v103 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          v13 = MEMORY[0x277D86220];
          goto LABEL_10;
        }
      }
    }

    v23 = [MEMORY[0x277CBEB58] set];
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    *buf = 0;
    *&v103 = buf;
    *(&v103 + 1) = 0x2020000000;
    v104 = 0x3FB999999999999ALL;
    v26 = [(PGGraphNodeCollection *)PGGraphSceneNodeCollection nodesInGraph:graphCopy];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_346;
    v69[3] = &unk_278888230;
    v46 = v12;
    v75 = v46;
    v76 = &v89;
    v77 = buf;
    v78 = &v93;
    v79 = 0x3F847AE147AE147BLL;
    v55 = dictionary;
    v70 = v55;
    v71 = v53;
    v56 = v23;
    v72 = v56;
    v47 = v24;
    v73 = v47;
    selfCopy = self;
    [v26 enumerateNodesUsingBlock:v69];

    if (*(v94 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v98 = 67109378;
        v99 = 763;
        v100 = 2080;
        v101 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v27 = MEMORY[0x277D86220];
LABEL_28:
        _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v98, 0x12u);
      }
    }

    else
    {
      if (v51)
      {
        v28 = CFAbsoluteTimeGetCurrent();
        if (v28 - v90[3] >= 0.01)
        {
          v90[3] = v28;
          v68 = 0;
          (*(v46 + 2))(v46, &v68, 0.8);
          v29 = *(v94 + 24) | v68;
          *(v94 + 24) = v29;
          if (v29)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_29;
            }

            *v98 = 67109378;
            v99 = 765;
            v100 = 2080;
            v101 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v27 = MEMORY[0x277D86220];
            goto LABEL_28;
          }
        }
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v30 = v47;
      v31 = [v30 countByEnumeratingWithState:&v64 objects:v97 count:16];
      if (v31)
      {
        v32 = *v65;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v65 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v64 + 1) + 8 * i);
            v35 = objc_autoreleasePoolPush();
            v36 = -[CLSSceneTaxonomyHierarchy nodeForIdentifier:](self->_sceneTaxonomy, "nodeForIdentifier:", [v34 unsignedLongLongValue]);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_355;
            v58[3] = &unk_278888258;
            v37 = v30;
            v59 = v37;
            v60 = v55;
            v61 = v34;
            v38 = v36;
            v62 = v38;
            v63 = v56;
            [v38 visitParentsUsingNameBlock:v58];

            objc_autoreleasePoolPop(v35);
          }

          v31 = [v37 countByEnumeratingWithState:&v64 objects:v97 count:16];
        }

        while (v31);
      }

      if (v51)
      {
        v39 = CFAbsoluteTimeGetCurrent();
        if (v39 - v90[3] >= 0.01)
        {
          v90[3] = v39;
          v68 = 0;
          (*(v46 + 2))(v46, &v68, 0.9);
          v40 = *(v94 + 24) | v68;
          *(v94 + 24) = v40;
          if (v40)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_29;
            }

            *v98 = 67109378;
            v99 = 792;
            v100 = 2080;
            v101 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v27 = MEMORY[0x277D86220];
            goto LABEL_28;
          }
        }
      }

      allObjects = [v56 allObjects];
      v42 = filteredKeywords(allObjects, 0xAuLL, 0xFuLL, 0.9);
      [array addObjectsFromArray:v42];

      if ([array count] >= 0x10)
      {
        [array removeObjectsInRange:{15, objc_msgSend(array, "count") - 15}];
      }

      if (!v51 || (v43 = CFAbsoluteTimeGetCurrent(), v43 - v90[3] < 0.01) || (v90[3] = v43, v68 = 0, (*(v46 + 2))(v46, &v68, 1.0), v44 = *(v94 + 24) | v68, *(v94 + 24) = v44, (v44 & 1) == 0))
      {
        v11 = array;
        goto LABEL_55;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v98 = 67109378;
        v99 = 803;
        v100 = 2080;
        v101 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v27 = MEMORY[0x277D86220];
        goto LABEL_28;
      }
    }

LABEL_29:
    v11 = MEMORY[0x277CBEBF8];
LABEL_55:

    _Block_object_dispose(buf, 8);
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 687;
    LOWORD(v103) = 2080;
    *(&v103 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_57:
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  return v11;
}

void __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_346(uint64_t a1, void *a2, _BYTE *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 72) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 80) + 8), Current - *(v8 + 24) >= *(a1 + 104)) && (*(v8 + 24) = Current, LOBYTE(v27) = 0, (*(*(a1 + 72) + 16))(*(*(*(a1 + 88) + 8) + 24)), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = (*(*(*(a1 + 88) + 8) + 24) + 0.8) * 0.5;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
    v26[3] = &unk_278888208;
    v26[4] = &v27;
    [v5 enumerateMomentEdgesAndNodesUsingBlock:v26];
    v9 = [v5 level];
    v10 = (v9 - 1);
    if (!v9)
    {
      v10 = 0.0;
    }

    v11 = (v10 * 0.1 + 1.0) * v28[3];
    v28[3] = v11;
    if (v11 != 0.0 && [v5 isSuitableForSuggestions] && objc_msgSend(v5, "isIndexed"))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "sceneIdentifier")}];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v12];
      if ([*(a1 + 40) containsObject:v12])
      {
        v13 = [PGRankedZeroKeyword alloc];
        v14 = [(PGRankedZeroKeyword *)v13 initWithKeyword:0 score:v28[3]];
        [*(a1 + 48) addObject:v14];
        [*(a1 + 56) setObject:v14 forKeyedSubscript:v12];
      }

      else
      {
        v15 = [v5 label];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGScene%@ZeroKeywordText", v15];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:v14 value:v14 table:@"Localizable"];

        if (v17 == v14)
        {
          v18 = +[PGLogging sharedLogging];
          v19 = [v18 loggingConnection];

          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [v5 label];
            *buf = 138412290;
            v32 = v20;
            _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "No ZK title key for scene with label %@", buf, 0xCu);
          }

          v21 = [v5 localizedName];

          v17 = v21;
        }

        v22 = [v5 localizedName];
        v23 = zeroKeywordWithAttributes(3, 13, v17, v22, 0, v12);
        v24 = [PGRankedZeroKeyword alloc];
        v25 = [(PGRankedZeroKeyword *)v24 initWithKeyword:v23 score:v28[3]];
        [*(a1 + 48) addObject:v25];
        [*(a1 + 56) setObject:v25 forKeyedSubscript:v12];
      }
    }

    _Block_object_dispose(&v27, 8);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_355(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    v9 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v10 = [v8 numberOfAssets];
    v11 = v10 / [v9 numberOfAssets];
    if (v11 >= 0.75)
    {
      v12 = +[PGLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(a1 + 56) name];
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v14;
        v20 = 2048;
        v21 = v11;
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Filtering out scene ZK %@ because child scene %@ covers %f of the assets", &v16, 0x20u);
      }

      [*(a1 + 64) removeObject:v7];
    }
  }

  return 0;
}

void __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isReliable];
  v4 = 0.0;
  if (v3)
  {
    v4 = [v5 numberOfSearchConfidenceAssets];
  }

  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
}

- (id)eventZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v136 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v82 = _Block_copy(blockCopy);
  if (!v82 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v118[3] < 0.01) || (v118[3] = v9, v127[0] = 0, (*(v82 + 2))(v82, v127, 0.0), v10 = *(v122 + 24) | v127[0], *(v122 + 24) = v10, (v10 & 1) == 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    v78 = [MEMORY[0x277CBEB58] set];
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v13 = objc_opt_class();
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
    v112[3] = &unk_27888A188;
    v14 = v82;
    v113 = v14;
    v114 = &v117;
    v116 = 0x3F847AE147AE147BLL;
    v115 = &v121;
    v68 = [v13 contextualHolidayZeroKeywordsWithGraph:graphCopy options:optionsCopy progressBlock:v112];
    v80 = array;
    if (*(v122 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:
        v11 = MEMORY[0x277CBEBF8];
LABEL_89:

        goto LABEL_90;
      }

      *buf = 67109378;
      *&buf[4] = 545;
      LOWORD(v133) = 2080;
      *(&v133 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      v15 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_11;
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v16 = v68;
    v17 = [v16 countByEnumeratingWithState:&v108 objects:v135 count:16];
    if (v17)
    {
      v18 = *v109;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v109 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [array addObject:*(*(&v108 + 1) + 8 * v19)];
        if ([array count] > 2)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v108 objects:v135 count:16];
          if (v17)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    if (v82)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v118[3] >= 0.01)
      {
        v118[3] = Current;
        v127[0] = 0;
        (*(v14 + 2))(v14, v127, 0.3);
        v21 = *(v122 + 24) | v127[0];
        *(v122 + 24) = v21;
        if (v21)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_11;
          }

          *buf = 67109378;
          *&buf[4] = 554;
          LOWORD(v133) = 2080;
          *(&v133 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          v15 = MEMORY[0x277D86220];
          goto LABEL_10;
        }
      }
    }

    v22 = [(PGZeroKeywordComputer *)self contextualDateZeroKeywordsWithGraph:graphCopy options:optionsCopy];
    [array addObjectsFromArray:v22];

    v23 = [(PGZeroKeywordComputer *)self contextualSeasonZeroKeywordsWithGraph:graphCopy curationContext:contextCopy options:optionsCopy];
    [array addObjectsFromArray:v23];

    v24 = [MEMORY[0x277CBEB58] set];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_340;
    v103[3] = &unk_27888A188;
    v66 = v14;
    v104 = v66;
    v105 = &v117;
    v106 = &v121;
    v107 = 0x3F847AE147AE147BLL;
    v25 = [(PGZeroKeywordComputer *)self contextualMeaningAndTripZeroKeywordsWithGraph:graphCopy curationContext:contextCopy options:optionsCopy progressBlock:v103];
    v65 = v25;
    if (*(v122 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 572;
        LOWORD(v133) = 2080;
        *(&v133 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_88;
    }

    *buf = 0;
    *&v133 = buf;
    *(&v133 + 1) = 0x2020000000;
    v134 = 0x3FE0000000000000;
    v26 = v25;
    v27 = [v25 count];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v26;
    v28 = [obj countByEnumeratingWithState:&v99 objects:v131 count:16];
    if (v28)
    {
      v81 = 0;
      v29 = 0.1 / v27;
      v75 = *v100;
      v73 = *MEMORY[0x277D3B1D8];
      v72 = *MEMORY[0x277D3B180];
      while (2)
      {
        v74 = v28;
        for (i = 0; i != v74; ++i)
        {
          if (*v100 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v99 + 1) + 8 * i);
          if (v82)
          {
            v32 = CFAbsoluteTimeGetCurrent();
            if (v32 - v118[3] >= 0.01)
            {
              v118[3] = v32;
              v98 = 0;
              (*(v66 + 2))(v66, &v98, *(v133 + 24));
              v33 = *(v122 + 24) | v98;
              *(v122 + 24) = v33;
              if (v33)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v127 = 67109378;
                  v128 = 578;
                  v129 = 2080;
                  v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v127, 0x12u);
                }

                goto LABEL_86;
              }
            }
          }

          *(v133 + 24) = v29 + *(v133 + 24);
          [v80 addObject:v31];
          v34 = [v31 objectForKeyedSubscript:v73];
          [v78 addObject:v34];

          v35 = [v31 objectForKeyedSubscript:v72];
          if ([v35 count])
          {
            firstObject = [v35 firstObject];
            v37 = MEMORY[0x277CD97A8];
            v126 = firstObject;
            v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
            v39 = [v37 fetchAssetsWithLocalIdentifiers:v38 options:librarySpecificFetchOptions];

            if ([v39 count])
            {
              v40 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:v39 withType:3 options:librarySpecificFetchOptions];
              v96 = 0u;
              v97 = 0u;
              v95 = 0u;
              v94 = 0u;
              v41 = v40;
              v42 = [v41 countByEnumeratingWithState:&v94 objects:v125 count:16];
              if (v42)
              {
                v43 = *v95;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v95 != v43)
                    {
                      objc_enumerationMutation(v41);
                    }

                    uuid = [*(*(&v94 + 1) + 8 * j) uuid];
                    [v24 addObject:uuid];
                  }

                  v42 = [v41 countByEnumeratingWithState:&v94 objects:v125 count:16];
                }

                while (v42);
              }
            }

            if (v81 >= 2)
            {

              goto LABEL_53;
            }

            ++v81;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v99 objects:v131 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_53:

    if (v82)
    {
      v46 = CFAbsoluteTimeGetCurrent();
      if (v46 - v118[3] >= 0.01)
      {
        v118[3] = v46;
        v98 = 0;
        (*(v66 + 2))(v66, &v98, 0.6);
        v47 = *(v122 + 24) | v98;
        *(v122 + 24) = v47;
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v127 = 67109378;
            v128 = 604;
            v129 = 2080;
            v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v127, 0x12u);
          }

LABEL_86:
          v11 = MEMORY[0x277CBEBF8];
          goto LABEL_87;
        }
      }
    }

    zeroKeywordMappingByMeaningLabel = [graphCopy zeroKeywordMappingByMeaningLabel];
    array2 = [MEMORY[0x277CBEB18] array];
    *(v133 + 24) = 0x3FE3333333333333;
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_341;
    v83[3] = &unk_2788881E0;
    v90 = buf;
    v50 = v66;
    v93 = 0x3F847AE147AE147BLL;
    v91 = &v117;
    v92 = &v121;
    v89 = v50;
    v83[4] = self;
    v84 = v24;
    v51 = contextCopy;
    v85 = v51;
    v86 = librarySpecificFetchOptions;
    v52 = v78;
    v87 = v52;
    v53 = array2;
    v88 = v53;
    [zeroKeywordMappingByMeaningLabel enumerateKeysAndObjectsUsingBlock:v83];
    if (*(v122 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v127 = 67109378;
        v128 = 656;
        v129 = 2080;
        v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v54 = MEMORY[0x277D86220];
LABEL_61:
        _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v127, 0x12u);
      }
    }

    else
    {
      if (!v82 || (v55 = CFAbsoluteTimeGetCurrent(), v55 - v118[3] < 0.01) || (v118[3] = v55, v98 = 0, (*(v50 + 2))(v50, &v98, 0.9), v56 = *(v122 + 24) | v98, *(v122 + 24) = v56, (v56 & 1) == 0))
      {
        v57 = [(PGZeroKeywordComputer *)self tripRankedKeywordWithGraph:graphCopy curationContext:v51];
        v58 = v57;
        if (v57)
        {
          zeroKeyword = [v57 zeroKeyword];
          v60 = [zeroKeyword objectForKeyedSubscript:*MEMORY[0x277D3B1D8]];

          if (([v52 containsObject:v60] & 1) == 0)
          {
            [v53 addObject:v58];
          }
        }

        v61 = filteredKeywords(v53, 7uLL, 0xFuLL, 0.35);
        [v80 addObjectsFromArray:v61];

        if ([v80 count] >= 0x10)
        {
          [v80 removeObjectsInRange:{15, objc_msgSend(v80, "count") - 15}];
        }

        if (v82 && (v62 = CFAbsoluteTimeGetCurrent(), v62 - v118[3] >= 0.01) && (v118[3] = v62, v98 = 0, (*(v50 + 2))(v50, &v98, 1.0), v63 = *(v122 + 24) | v98, *(v122 + 24) = v63, (v63 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v127 = 67109378;
            v128 = 679;
            v129 = 2080;
            v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v127, 0x12u);
          }

          v11 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v11 = v80;
        }

        goto LABEL_82;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v127 = 67109378;
        v128 = 658;
        v129 = 2080;
        v130 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v54 = MEMORY[0x277D86220];
        goto LABEL_61;
      }
    }

    v11 = MEMORY[0x277CBEBF8];
LABEL_82:

LABEL_87:
    _Block_object_dispose(buf, 8);
LABEL_88:

    goto LABEL_89;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 531;
    LOWORD(v133) = 2080;
    *(&v133 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_90:
  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v121, 8);

  return v11;
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_340(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_341(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v31 = a2;
  v7 = a3;
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 88) + 8) + 24) = (*(*(*(a1 + 88) + 8) + 24) + 0.9) * 0.5;
  v37 = a1;
  v33 = v7;
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v9 = *(*(a1 + 96) + 8), Current - *(v9 + 24) >= *(a1 + 112)) && (*(v9 + 24) = Current, LOBYTE(v45) = 0, (*(*(a1 + 80) + 16))(*(*(*(a1 + 88) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v34 = [v7 displayNode];
    v36 = [*(a1 + 32) meaningNodeZeroKeywordForDisplayMeaningNode:v34 collectionUUIDsToAvoid:*(a1 + 40) curationContext:*(a1 + 48)];
    v35 = [v36 objectForKeyedSubscript:*MEMORY[0x277D3B180]];
    if ([v35 count])
    {
      v10 = [v35 firstObject];
      v11 = MEMORY[0x277CD97A8];
      v55[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
      v13 = [v11 fetchAssetsWithLocalIdentifiers:v12 options:*(a1 + 56)];

      if ([v13 count])
      {
        v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:v13 withType:3 options:*(a1 + 56)];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v15)
        {
          v16 = *v50;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v50 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = v37[5];
              v19 = [*(*(&v49 + 1) + 8 * i) uuid];
              [v18 addObject:v19];
            }

            v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v15);
        }
      }
    }

    if (v36)
    {
      v20 = v37[8];
      v21 = [v36 objectForKeyedSubscript:*MEMORY[0x277D3B1D8]];
      LOBYTE(v20) = [v20 containsObject:v21];

      if ((v20 & 1) == 0)
      {
        v45 = 0;
        v46 = &v45;
        v47 = 0x2020000000;
        v48 = 0;
        v22 = [MEMORY[0x277CBEB58] set];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v23 = [v33 mappedMeaningNodes];
        v24 = [v23 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v24)
        {
          v25 = *v42;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v41 + 1) + 8 * j);
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_2;
              v38[3] = &unk_2788881B8;
              v39 = v22;
              v40 = &v45;
              [v27 enumerateMeaningfulEventsUsingBlock:v38];
            }

            v24 = [v23 countByEnumeratingWithState:&v41 objects:v53 count:16];
          }

          while (v24);
        }

        v28 = [v22 count];
        v29 = v37[9];
        v30 = [[PGRankedZeroKeyword alloc] initWithKeyword:v36 score:v28 + v46[3] * 2.22044605e-16];
        [v29 addObject:v30];

        _Block_object_dispose(&v45, 8);
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
    v3 = [v5 eventCollection];
    v4 = [v3 eventMomentNodes];
    *(*(*(a1 + 40) + 8) + 24) += [v4 numberOfAssets];
  }
}

- (id)placeZeroKeywordsWithGraph:(id)graph options:(id)options progressBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  optionsCopy = options;
  v10 = _Block_copy(block);
  if (v10 && CFAbsoluteTimeGetCurrent() >= 0.01 && (v25 = 0, v10[2](v10, &v25, 0.0), v25 == 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v28 = 516;
      v29 = 2080;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    array = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [[PGPlaceZeroKeywordGenerator alloc] initWithGraph:graphCopy photoLibrary:self->_photoLibrary searchComputationCache:self->_searchComputationCache options:optionsCopy];
    generatePlaceZeroKeywords = [(PGPlaceZeroKeywordGenerator *)v12 generatePlaceZeroKeywords];
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = generatePlaceZeroKeywords;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          getZeroKeywordDict = [*(*(&v21 + 1) + 8 * i) getZeroKeywordDict];
          [array addObject:getZeroKeywordDict];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v16);
    }
  }

  return array;
}

- (id)socialGroupKeyAssetLocalIdentifierWithPersonLocalIdentifiers:(id)identifiers
{
  v28[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"type" ascending:1];
  v28[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"manualOrder" ascending:0];
  v28[1] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v28[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  v10 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
  v11 = MEMORY[0x277CBEB18];
  fetchedObjects = [v10 fetchedObjects];
  v13 = [v11 arrayWithArray:fetchedObjects];

  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:{1, v15}];
  v27[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  [librarySpecificFetchOptions2 setSortDescriptors:v17];

  [librarySpecificFetchOptions2 setFetchLimit:100];
  v18 = 0;
  do
  {
    v19 = v18;
    v18 = [MEMORY[0x277CD97A8] fetchAssetsContainingAllPersons:v13 options:librarySpecificFetchOptions2];

    if ([v18 count])
    {
      break;
    }

    firstObject = [v13 firstObject];
    [v13 removeObject:firstObject];
  }

  while ([v13 count]);
  v21 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v18 title:&stru_2843F5C58 subtitle:&stru_2843F5C58 titleFontName:&stru_2843F5C58];
  v22 = objc_alloc_init(PGKeyAssetCurationOptions);
  v23 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
  [(PGKeyAssetCurationOptions *)v22 setReferencePersonLocalIdentifiers:v23];

  [(PGKeyAssetCurationOptions *)v22 setFocusOnPeople:1];
  [(PGKeyAssetCurationOptions *)v22 setComplete:1];
  v24 = [(PGCurationManager *)self->_curationManager curatedKeyAssetForAssetCollection:v21 curatedAssetCollection:0 options:v22 criteria:0 curationContext:self->_curationContext];
  localIdentifier = [v24 localIdentifier];

  return localIdentifier;
}

- (id)socialGroupKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v144 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  v95 = _Block_copy(blockCopy);
  v82 = blockCopy;
  if (!v95 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v127[3] < 0.01) || (v127[3] = v10, v125 = 0, (*(v95 + 2))(v95, &v125, 0.0), v11 = *(v131 + 24) | v125, *(v131 + 24) = v11, (v11 & 1) == 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    v94 = [MEMORY[0x277CBEB58] set];
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = __92__PGZeroKeywordComputer_socialGroupKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
    v120[3] = &unk_27888A188;
    v87 = v95;
    v121 = v87;
    v122 = &v126;
    v124 = 0x3F847AE147AE147BLL;
    v123 = &v130;
    v13 = [(PGZeroKeywordComputer *)self contextualSocialGroupZeroKeywordsWithGraph:graphCopy options:optionsCopy progressBlock:v120];
    v80 = v13;
    if (*(v131 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v141 = 334;
        v142 = 2080;
        v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v14 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v116 objects:v139 count:16];
      if (v16)
      {
        v17 = *v117;
        v18 = *MEMORY[0x277D3B180];
LABEL_14:
        v19 = 0;
        while (1)
        {
          if (*v117 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v116 + 1) + 8 * v19);
          [array addObject:v20];
          v21 = [v20 objectForKeyedSubscript:v18];
          [v94 addObject:v21];

          if ([array count] > 2)
          {
            break;
          }

          if (v16 == ++v19)
          {
            v16 = [v15 countByEnumeratingWithState:&v116 objects:v139 count:16];
            if (v16)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      if (!v95 || (v22 = CFAbsoluteTimeGetCurrent(), v22 - v127[3] < 0.01) || (v127[3] = v22, v125 = 0, (*(v87 + 2))(v87, &v125, 0.3), v23 = *(v131 + 24) | v125, *(v131 + 24) = v23, (v23 & 1) == 0))
      {
        socialGroupNodesSortedByImportance = [graphCopy socialGroupNodesSortedByImportance];
        v79 = [socialGroupNodesSortedByImportance sortedArrayWithOptions:16 usingComparator:&__block_literal_global_62226];
        if (v95 && (v24 = CFAbsoluteTimeGetCurrent(), v24 - v127[3] >= 0.01) && (v127[3] = v24, v125 = 0, (*(v87 + 2))(v87, &v125, 0.5), v25 = *(v131 + 24) | v125, *(v131 + 24) = v25, (v25 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v141 = 366;
            v142 = 2080;
            v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v12 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v99 = objc_opt_new();
          v89 = [v79 mutableCopy];
          v26 = [v79 count];
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          obj = v79;
          v27 = [obj countByEnumeratingWithState:&v112 objects:v138 count:16];
          if (v27)
          {
            v29 = 0;
            v30 = 0.3 / v26;
            v92 = *v113;
            v31 = 0.5;
            *&v28 = 67109378;
            v77 = v28;
            while (2)
            {
              v90 = v27;
              for (i = 0; i != v90; i = i + 1)
              {
                if (*v113 != v92)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v112 + 1) + 8 * i);
                context = objc_autoreleasePoolPush();
                if (v95 && (Current = CFAbsoluteTimeGetCurrent(), Current - v127[3] >= 0.01) && (v127[3] = Current, v125 = 0, (*(v87 + 2))(v87, &v125, v31), v35 = *(v131 + 24) | v125, *(v131 + 24) = v35, (v35 & 1) != 0))
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = v77;
                    v141 = 377;
                    v142 = 2080;
                    v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v36 = 0;
                }

                else
                {
                  personNodes = [v33 personNodes];
                  v38 = [personNodes count];
                  if (v38 == 1)
                  {
                    ++v29;
                  }

                  [v89 removeObject:v33];
                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v39 = v89;
                  v40 = [v39 countByEnumeratingWithState:&v108 objects:v137 count:16];
                  if (v40)
                  {
                    v41 = *v109;
                    while (2)
                    {
                      for (j = 0; j != v40; ++j)
                      {
                        if (*v109 != v41)
                        {
                          objc_enumerationMutation(v39);
                        }

                        v43 = *(*(&v108 + 1) + 8 * j);
                        personNodes2 = [v43 personNodes];
                        v45 = [personNodes2 count];
                        if ((v38 - v45) >= 2)
                        {

                          goto LABEL_61;
                        }

                        if (v38 == 1 && v45 == 1 && v29 >= 5)
                        {
                          [v99 addObject:v43];
                        }
                      }

                      v40 = [v39 countByEnumeratingWithState:&v108 objects:v137 count:16];
                      if (v40)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_61:

                  v31 = v30 + v31;
                  v36 = 1;
                }

                objc_autoreleasePoolPop(context);
                if (!v36)
                {

                  goto LABEL_71;
                }
              }

              v27 = [obj countByEnumeratingWithState:&v112 objects:v138 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          if (v95 && (v47 = CFAbsoluteTimeGetCurrent(), v47 - v127[3] >= 0.01) && (v127[3] = v47, v125 = 0, (*(v87 + 2))(v87, &v125, 0.8), v48 = *(v131 + 24) | v125, *(v131 + 24) = v48, (v48 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v141 = 408;
              v142 = 2080;
              v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_71:
            v12 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v83 = [graphCopy fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:{socialGroupNodesSortedByImportance, v77}];
            v49 = [graphCopy memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:? shouldIncludeMeNode:? simulateMeNodeNotSet:?];
            v93 = [PGPeopleUtilities validateKeyedSocialGroups:v49 withPhotoLibrary:self->_photoLibrary graph:graphCopy];

            v50 = [socialGroupNodesSortedByImportance count];
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v91 = socialGroupNodesSortedByImportance;
            v51 = [v91 countByEnumeratingWithState:&v104 objects:v136 count:16];
            if (v51)
            {
              v52 = 0.2 / v50;
              contexta = *v105;
              v53 = 0.8;
              while (2)
              {
                for (k = 0; k != v51; ++k)
                {
                  if (*v105 != contexta)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v55 = *(*(&v104 + 1) + 8 * k);
                  if (v95)
                  {
                    v56 = CFAbsoluteTimeGetCurrent();
                    if (v56 - v127[3] >= 0.01)
                    {
                      v127[3] = v56;
                      v125 = 0;
                      (*(v87 + 2))(v87, &v125, v53);
                      v57 = *(v131 + 24) | v125;
                      *(v131 + 24) = v57;
                      if (v57)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          v141 = 418;
                          v142 = 2080;
                          v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

                        goto LABEL_116;
                      }
                    }
                  }

                  if ([array count] > 0xE)
                  {
                    goto LABEL_105;
                  }

                  if (([v99 containsObject:v55] & 1) == 0)
                  {
                    uUID = [v55 UUID];
                    v59 = [v93 objectForKey:uUID];

                    if (v59)
                    {
                      uUID2 = [v55 UUID];
                      v61 = [v93 objectForKeyedSubscript:uUID2];

                      if ([v61 count] >= 2 && (objc_msgSend(v94, "containsObject:", v61) & 1) == 0)
                      {
                        v102 = 0u;
                        v103 = 0u;
                        v100 = 0u;
                        v101 = 0u;
                        v62 = v61;
                        v63 = [v62 countByEnumeratingWithState:&v100 objects:v135 count:16];
                        if (v63)
                        {
                          v64 = *v101;
                          while (2)
                          {
                            for (m = 0; m != v63; ++m)
                            {
                              if (*v101 != v64)
                              {
                                objc_enumerationMutation(v62);
                              }

                              v66 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:*(*(&v100 + 1) + 8 * m)];
                              userFeedbackCalculator = [contextCopy userFeedbackCalculator];
                              v68 = [userFeedbackCalculator userFeedbackTypeForPersonUUID:v66];

                              if (v68 == 2)
                              {
                                if ([v62 count] < 3)
                                {
LABEL_98:
                                  v70 = v62;
                                  goto LABEL_101;
                                }
                              }

                              else if (v68 == 3)
                              {
                                goto LABEL_98;
                              }
                            }

                            v63 = [v62 countByEnumeratingWithState:&v100 objects:v135 count:16];
                            if (v63)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        [v94 addObject:v62];
                        v69 = personUUIDsFromPersonLocalIdentifiers(v62);
                        v70 = PLSearchSocialGroupLookupIdentifier();

                        v71 = [(PGZeroKeywordComputer *)self socialGroupKeyAssetLocalIdentifierWithPersonLocalIdentifiers:v62];
                        v72 = v71;
                        if (v71)
                        {
                          v134 = v71;
                          v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
                        }

                        else
                        {
                          v66 = MEMORY[0x277CBEBF8];
                        }

                        v73 = zeroKeywordForSocialGroupWithIdentifier(v70, v62, v66);
                        [array addObject:v73];

LABEL_101:
                      }
                    }
                  }

                  v53 = v52 + v53;
                }

                v51 = [v91 countByEnumeratingWithState:&v104 objects:v136 count:16];
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

LABEL_105:

            if ([array count] >= 0x10)
            {
              [array removeObjectsInRange:{15, objc_msgSend(array, "count") - 15}];
            }

            if (v95 && (v74 = CFAbsoluteTimeGetCurrent(), v74 - v127[3] >= 0.01) && (v127[3] = v74, v125 = 0, (*(v87 + 2))(v87, &v125, 1.0), v75 = *(v131 + 24) | v125, *(v131 + 24) = v75, (v75 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v141 = 470;
                v142 = 2080;
                v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

LABEL_116:
              v12 = MEMORY[0x277CBEBF8];
            }

            else
            {
              v12 = array;
            }
          }
        }

        goto LABEL_120;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v141 = 345;
        v142 = 2080;
        v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v14 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v12 = MEMORY[0x277CBEBF8];
LABEL_120:

    goto LABEL_121;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v141 = 324;
    v142 = 2080;
    v143 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_121:
  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v130, 8);

  return v12;
}

void __92__PGZeroKeywordComputer_socialGroupKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __92__PGZeroKeywordComputer_socialGroupKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_330(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 personNodes];
  v6 = [v5 count];

  v7 = [v4 personNodes];

  v8 = [v7 count];
  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)peopleZeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v157 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v109 = _Block_copy(blockCopy);
  v95 = optionsCopy;
  if (v109)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v140[3] >= 0.01)
    {
      v140[3] = Current;
      v138 = 0;
      v109[2](v109, &v138, 0.0);
      v11 = *(v144 + 24) | v138;
      *(v144 + 24) = v11;
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v154 = 158;
          v155 = 2080;
          v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_108;
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB58] set];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __91__PGZeroKeywordComputer_peopleZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
  v133[3] = &unk_27888A188;
  v107 = v109;
  v134 = v107;
  v135 = &v139;
  v137 = 0x3F847AE147AE147BLL;
  v136 = &v143;
  v97 = [(PGZeroKeywordComputer *)self contextualPersonZeroKeywordsWithGraph:graphCopy options:optionsCopy progressBlock:v133];
  if (*(v144 + 24) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_11:
      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_107;
    }

    *buf = 67109378;
    v154 = 168;
    v155 = 2080;
    v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    v14 = MEMORY[0x277D86220];
LABEL_10:
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_11;
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v15 = v97;
  v16 = [v15 countByEnumeratingWithState:&v129 objects:v152 count:16];
  if (v16)
  {
    v17 = *v130;
    v18 = *MEMORY[0x277D3B180];
LABEL_14:
    v19 = 0;
    while (1)
    {
      if (*v130 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v129 + 1) + 8 * v19);
      [array addObject:v20];
      v21 = [v20 objectForKeyedSubscript:v18];
      [v13 addObject:v21];

      if ([array count] > 2)
      {
        break;
      }

      if (v16 == ++v19)
      {
        v16 = [v15 countByEnumeratingWithState:&v129 objects:v152 count:16];
        if (v16)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  if (v109)
  {
    v22 = CFAbsoluteTimeGetCurrent();
    if (v22 - v140[3] >= 0.01)
    {
      v140[3] = v22;
      v138 = 0;
      v107[2](v107, &v138, 0.4);
      v23 = *(v144 + 24) | v138;
      *(v144 + 24) = v23;
      if (v23)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        *buf = 67109378;
        v154 = 179;
        v155 = 2080;
        v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v14 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284486420];
  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"type" ascending:0];
  v151[0] = v24;
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"manualOrder" ascending:1];
  v151[1] = v25;
  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"detectionType" ascending:1];
  v151[2] = v26;
  v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v151[3] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  [librarySpecificFetchOptions setSortDescriptors:v28];

  v29 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
  v30 = [v29 count];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v29;
  v31 = [obj countByEnumeratingWithState:&v125 objects:v150 count:16];
  if (!v31)
  {
    goto LABEL_45;
  }

  v32 = 0.3 / v30;
  v33 = *v126;
  v34 = 0.4;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v126 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v125 + 1) + 8 * i);
      if (v109)
      {
        v37 = CFAbsoluteTimeGetCurrent();
        if (v37 - v140[3] >= 0.01)
        {
          v140[3] = v37;
          v138 = 0;
          v107[2](v107, &v138, v34);
          v38 = *(v144 + 24) | v138;
          *(v144 + 24) = v38;
          if (v38)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v154 = 196;
              v155 = 2080;
              v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_105;
          }
        }
      }

      if ([array count] > 0xE)
      {
        goto LABEL_45;
      }

      localIdentifier = [v36 localIdentifier];
      if (([v13 containsObject:localIdentifier] & 1) == 0)
      {
        [v13 addObject:localIdentifier];
        userFeedbackCalculator = [contextCopy userFeedbackCalculator];
        uuid = [v36 uuid];
        v42 = [userFeedbackCalculator userFeedbackTypeForPersonUUID:uuid];

        if ((v42 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          detectionType = [v36 detectionType];
          if (detectionType - 3 >= 2)
          {
            if (detectionType != 1)
            {
              goto LABEL_43;
            }

            v44 = detectionType;
          }

          else
          {
            v44 = 6;
          }

          name = [v36 name];
          uuid2 = [v36 uuid];
          v47 = zeroKeywordWithAttributes(0, v44, name, 0, uuid2, localIdentifier);

          if (v47)
          {
            [array addObject:v47];
          }
        }
      }

LABEL_43:

      v34 = v32 + v34;
    }

    v31 = [obj countByEnumeratingWithState:&v125 objects:v150 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_45:

  if ([array count] >= 0x10)
  {
    [array removeObjectsInRange:{15, objc_msgSend(array, "count") - 15}];
  }

  if (v109 && (v48 = CFAbsoluteTimeGetCurrent(), v48 - v140[3] >= 0.01) && (v140[3] = v48, v138 = 0, v107[2](v107, &v138, 0.7), v49 = *(v144 + 24) | v138, *(v144 + 24) = v49, (v49 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v154 = 247;
      v155 = 2080;
      v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_105:
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    bestSocialGroupNodes = [graphCopy bestSocialGroupNodes];
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __91__PGZeroKeywordComputer_peopleZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_326;
    v123[3] = &unk_278888170;
    v51 = graphCopy;
    v124 = v51;
    v52 = [bestSocialGroupNodes indexesOfObjectsPassingTest:v123];
    v53 = [bestSocialGroupNodes objectsAtIndexes:v52];
    v94 = bestSocialGroupNodes;

    v93 = [v51 fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:v53];
    v54 = [v51 memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:? shouldIncludeMeNode:? simulateMeNodeNotSet:?];
    v106 = [PGPeopleUtilities validateKeyedSocialGroups:v54 withPhotoLibrary:self->_photoLibrary graph:v51];

    v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    objectEnumerator = [v106 objectEnumerator];
    v57 = [objectEnumerator countByEnumeratingWithState:&v119 objects:v149 count:16];
    if (v57)
    {
      v58 = *v120;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v120 != v58)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [v55 addObjectsFromArray:*(*(&v119 + 1) + 8 * j)];
        }

        v57 = [objectEnumerator countByEnumeratingWithState:&v119 objects:v149 count:16];
      }

      while (v57);
    }

    v92 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v55 inGraph:v51];
    personNodeByLocalIdentifier = [v92 personNodeByLocalIdentifier];
    v60 = [v94 count];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v101 = v53;
    v61 = [v101 countByEnumeratingWithState:&v115 objects:v148 count:16];
    if (v61)
    {
      v62 = 0.3 / v60;
      v63 = *v116;
      v64 = 0.7;
      while (2)
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v116 != v63)
          {
            objc_enumerationMutation(v101);
          }

          v66 = *(*(&v115 + 1) + 8 * k);
          uUID = [v66 UUID];
          v68 = [v106 objectForKey:uUID];

          v64 = v62 + v64;
          if (v68)
          {
            uUID2 = [v66 UUID];
            v70 = [v106 objectForKeyedSubscript:uUID2];

            v100 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v70, "count")}];
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v104 = v70;
            v71 = [v104 countByEnumeratingWithState:&v111 objects:v147 count:16];
            if (v71)
            {
              v72 = *v112;
              while (2)
              {
                for (m = 0; m != v71; ++m)
                {
                  if (*v112 != v72)
                  {
                    objc_enumerationMutation(v104);
                  }

                  v74 = *(*(&v111 + 1) + 8 * m);
                  if (v109)
                  {
                    v75 = CFAbsoluteTimeGetCurrent();
                    if (v75 - v140[3] >= 0.01)
                    {
                      v140[3] = v75;
                      v138 = 0;
                      v107[2](v107, &v138, v64);
                      v76 = *(v144 + 24) | v138;
                      *(v144 + 24) = v76;
                      if (v76)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          v154 = 280;
                          v155 = 2080;
                          v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

                        goto LABEL_100;
                      }
                    }
                  }

                  if (([v13 containsObject:v74] & 1) == 0)
                  {
                    v77 = [personNodeByLocalIdentifier objectForKeyedSubscript:v74];
                    v78 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v74];
                    userFeedbackCalculator2 = [contextCopy userFeedbackCalculator];
                    v80 = [userFeedbackCalculator2 userFeedbackTypeForPersonUUID:v78];

                    if ((v80 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      name2 = [v77 name];
                      v82 = zeroKeywordWithAttributes(0, 1, name2, 0, v78, v74);

                      [v100 addObject:v82];
                    }
                  }
                }

                v71 = [v104 countByEnumeratingWithState:&v111 objects:v147 count:16];
                if (v71)
                {
                  continue;
                }

                break;
              }
            }

            if ([v100 count] && objc_msgSend(array, "count"))
            {
              v83 = [array count];
              v84 = [v100 count];
              v85 = v84 + [array count] - 15;
              if (v85 >= 1)
              {
                v86 = v83 - 1;
                do
                {
                  v87 = [array objectAtIndexedSubscript:v86];
                  v88 = [v100 containsObject:v87];

                  if ((v88 & 1) == 0)
                  {
                    [array removeObjectAtIndex:v86];
                    --v85;
                  }

                  --v86;
                }

                while (v85 > 0);
              }

              [array addObjectsFromArray:v100];
            }

            goto LABEL_91;
          }
        }

        v61 = [v101 countByEnumeratingWithState:&v115 objects:v148 count:16];
        if (v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_91:

    if (v109 && (v89 = CFAbsoluteTimeGetCurrent(), v89 - v140[3] >= 0.01) && (v140[3] = v89, v138 = 0, v107[2](v107, &v138, 1.0), v90 = *(v144 + 24) | v138, *(v144 + 24) = v90, (v90 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v154 = 316;
        v155 = 2080;
        v156 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_100:
      v12 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v12 = array;
    }
  }

LABEL_107:
LABEL_108:
  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);

  return v12;
}

void __91__PGZeroKeywordComputer_peopleZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_zeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v106 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v97[3] < 0.01) || (v97[3] = v15, LOBYTE(info.numer) = 0, (*(v14 + 2))(v14, &info, 0.0), v16 = *(v101 + 24) | LOBYTE(info.numer), *(v101 + 24) = v16, (v16 & 1) == 0))
  {
    meNodeCollection = [graphCopy meNodeCollection];
    if ([graphCopy isSharedLibraryEnabled])
    {
      v18 = [meNodeCollection count];
      self->_shouldFilterMomentNodesWithPresence = v18 != 0;
      if (v18)
      {
        momentNodesWithPresence = [meNodeCollection momentNodesWithPresence];
        momentNodesWhereMeIsPresent = self->_momentNodesWhereMeIsPresent;
        self->_momentNodesWhereMeIsPresent = momentNodesWithPresence;
      }
    }

    else
    {
      self->_shouldFilterMomentNodesWithPresence = 0;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v22 = objc_autoreleasePoolPush();
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
    v91[3] = &unk_27888A188;
    v23 = v14;
    v92 = v23;
    v93 = &v96;
    v94 = &v100;
    v95 = 0x3F847AE147AE147BLL;
    v24 = [(PGZeroKeywordComputer *)self peopleZeroKeywordsWithGraph:graphCopy curationContext:contextCopy options:optionsCopy progressBlock:v91];
    [dictionary setObject:v24 forKeyedSubscript:&unk_284484638];

    v25 = *(v101 + 24);
    if (v25 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v105 = 103;
      *&v105[4] = 2080;
      *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v22);
    if (v25)
    {
      goto LABEL_30;
    }

    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v97[3] >= 0.01)
      {
        v97[3] = Current;
        LOBYTE(info.numer) = 0;
        (*(v23 + 2))(v23, &info, 0.2);
        v27 = *(v101 + 24) | LOBYTE(info.numer);
        *(v101 + 24) = v27;
        if (v27)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v105 = 106;
            *&v105[4] = 2080;
            *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v28 = MEMORY[0x277D86220];
LABEL_29:
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_30;
          }

          goto LABEL_30;
        }
      }
    }

    v29 = objc_autoreleasePoolPush();
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_294;
    v86[3] = &unk_27888A188;
    v30 = v23;
    v87 = v30;
    v88 = &v96;
    v89 = &v100;
    v90 = 0x3F847AE147AE147BLL;
    v31 = [(PGZeroKeywordComputer *)self socialGroupKeywordsWithGraph:graphCopy curationContext:contextCopy options:optionsCopy progressBlock:v86];
    [dictionary setObject:v31 forKeyedSubscript:&unk_284484650];

    v32 = *(v101 + 24);
    if (v32 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v105 = 113;
      *&v105[4] = 2080;
      *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v29);
    if (v32)
    {
      goto LABEL_30;
    }

    if (v14)
    {
      v33 = CFAbsoluteTimeGetCurrent();
      if (v33 - v97[3] >= 0.01)
      {
        v97[3] = v33;
        LOBYTE(info.numer) = 0;
        (*(v30 + 2))(v30, &info, 0.4);
        v34 = *(v101 + 24) | LOBYTE(info.numer);
        *(v101 + 24) = v34;
        if (v34)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v105 = 116;
            *&v105[4] = 2080;
            *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v28 = MEMORY[0x277D86220];
            goto LABEL_29;
          }

LABEL_30:
          v17 = MEMORY[0x277CBEC10];
LABEL_31:

          goto LABEL_32;
        }
      }
    }

    zeroKeywordLog = [objc_opt_class() zeroKeywordLog];
    v37 = os_signpost_id_generate(zeroKeywordLog);
    v38 = zeroKeywordLog;
    v39 = v38;
    spid = v37;
    v66 = v37 - 1;
    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "ZeroKeywordComputerPlaceZKW", "", buf, 2u);
    }

    v67 = v39;

    info = 0;
    mach_timebase_info(&info);
    v64 = mach_absolute_time();
    v40 = objc_autoreleasePoolPush();
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_297;
    v80[3] = &unk_27888A188;
    v41 = v30;
    v81 = v41;
    v82 = &v96;
    v83 = &v100;
    v84 = 0x3F847AE147AE147BLL;
    v42 = [(PGZeroKeywordComputer *)self placeZeroKeywordsWithGraph:graphCopy options:optionsCopy progressBlock:v80];
    [dictionary setObject:v42 forKeyedSubscript:&unk_284484668];

    v43 = *(v101 + 24);
    if (v43 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v105 = 125;
      *&v105[4] = 2080;
      *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v40);
    if (v43)
    {
      goto LABEL_71;
    }

    v44 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v47 = v67;
    v48 = v47;
    if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, spid, "ZeroKeywordComputerPlaceZKW", "", buf, 2u);
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v105 = "ZeroKeywordComputerPlaceZKW";
      *&v105[8] = 2048;
      *&v105[10] = ((((v44 - v64) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v14 && (v49 = CFAbsoluteTimeGetCurrent(), v49 - v97[3] >= 0.01) && (v97[3] = v49, v79 = 0, (*(v41 + 2))(v41, &v79, 0.6), v50 = *(v101 + 24) | v79, *(v101 + 24) = v50, (v50 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v105 = 130;
        *&v105[4] = 2080;
        *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v51 = MEMORY[0x277D86220];
LABEL_70:
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v52 = objc_autoreleasePoolPush();
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_301;
      v74[3] = &unk_27888A188;
      v53 = v41;
      v75 = v53;
      v76 = &v96;
      v77 = &v100;
      v78 = 0x3F847AE147AE147BLL;
      v54 = [(PGZeroKeywordComputer *)self eventZeroKeywordsWithGraph:graphCopy curationContext:contextCopy options:optionsCopy progressBlock:v74];
      [dictionary setObject:v54 forKeyedSubscript:&unk_284484680];

      v55 = *(v101 + 24);
      if (v55 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v105 = 137;
        *&v105[4] = 2080;
        *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v52);
      if (v55)
      {
        goto LABEL_71;
      }

      if (v14 && (v56 = CFAbsoluteTimeGetCurrent(), v56 - v97[3] >= 0.01) && (v97[3] = v56, v79 = 0, (*(v53 + 2))(v53, &v79, 0.8), v57 = *(v101 + 24) | v79, *(v101 + 24) = v57, (v57 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v105 = 140;
          *&v105[4] = 2080;
          *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          v51 = MEMORY[0x277D86220];
          goto LABEL_70;
        }
      }

      else
      {
        v58 = objc_autoreleasePoolPush();
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_304;
        v69[3] = &unk_27888A188;
        v59 = v53;
        v70 = v59;
        v71 = &v96;
        v72 = &v100;
        v73 = 0x3F847AE147AE147BLL;
        v60 = [(PGZeroKeywordComputer *)self sceneZeroKeywordsWithGraph:graphCopy options:optionsCopy progressBlock:v69];
        [dictionary setObject:v60 forKeyedSubscript:&unk_284484698];

        v61 = *(v101 + 24);
        if (v61 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v105 = 147;
          *&v105[4] = 2080;
          *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v58);
        if ((v61 & 1) == 0)
        {
          if (!v14 || (v62 = CFAbsoluteTimeGetCurrent(), v62 - v97[3] < 0.01) || (v97[3] = v62, v79 = 0, (*(v59 + 2))(v59, &v79, 1.0), v63 = *(v101 + 24) | v79, *(v101 + 24) = v63, (v63 & 1) == 0))
          {
            v17 = dictionary;
            goto LABEL_72;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v105 = 150;
            *&v105[4] = 2080;
            *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v51 = MEMORY[0x277D86220];
            goto LABEL_70;
          }
        }
      }
    }

LABEL_71:
    v17 = MEMORY[0x277CBEC10];
LABEL_72:

    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v105 = 88;
    *&v105[4] = 2080;
    *&v105[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = MEMORY[0x277CBEC10];
LABEL_32:
  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);

  return v17;
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_294(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_297(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_301(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.6);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_304(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)zeroKeywordsWithGraph:(id)graph curationContext:(id)context options:(id)options progressBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  contextCopy = context;
  graphCopy = graph;
  zeroKeywordLog = [objc_opt_class() zeroKeywordLog];
  v15 = os_signpost_id_generate(zeroKeywordLog);
  v16 = zeroKeywordLog;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "ZeroKeywordComputer-ZeroKeywordComputing", "", buf, 2u);
  }

  v18 = [(PGZeroKeywordComputer *)self _zeroKeywordsWithGraph:graphCopy curationContext:contextCopy options:optionsCopy progressBlock:blockCopy];

  v19 = v17;
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v15, "ZeroKeywordComputer-ZeroKeywordComputing", "", v22, 2u);
  }

  return v18;
}

- (PGZeroKeywordComputer)initWithPhotoLibrary:(id)library curationManager:(id)manager searchComputationCache:(id)cache
{
  libraryCopy = library;
  managerCopy = manager;
  cacheCopy = cache;
  v20.receiver = self;
  v20.super_class = PGZeroKeywordComputer;
  v12 = [(PGZeroKeywordComputer *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, library);
    objc_storeStrong(&v13->_curationManager, manager);
    v14 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v13->_photoLibrary];
    curationContext = v13->_curationContext;
    v13->_curationContext = v14;

    objc_storeStrong(&v13->_searchComputationCache, cache);
    v16 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    sceneTaxonomy = v13->_sceneTaxonomy;
    v13->_sceneTaxonomy = v16;

    v13->_shouldFilterMomentNodesWithPresence = 0;
    momentNodesWhereMeIsPresent = v13->_momentNodesWhereMeIsPresent;
    v13->_momentNodesWhereMeIsPresent = 0;
  }

  return v13;
}

+ (id)zeroKeywordLog
{
  if (zeroKeywordLog_onceToken != -1)
  {
    dispatch_once(&zeroKeywordLog_onceToken, &__block_literal_global_366);
  }

  v3 = zeroKeywordLog_zeroKeywordLog;

  return v3;
}

void __39__PGZeroKeywordComputer_zeroKeywordLog__block_invoke()
{
  v0 = os_log_create("com.apple.PhotosGraph", "ZeroKeywordComputer");
  v1 = zeroKeywordLog_zeroKeywordLog;
  zeroKeywordLog_zeroKeywordLog = v0;
}

@end