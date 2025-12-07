@interface PGRecentAestheticsSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)niceAssetsBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress;
- (id)reasonsForSuggestion:(id)suggestion;
- (id)suggestedAssetsInAssets:(id)assets;
- (id)suggestedAssetsInAssets:(id)assets options:(id)options;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
@end

@implementation PGRecentAestheticsSuggester

- (id)reasonsForSuggestion:(id)suggestion
{
  v13[2] = *MEMORY[0x277D85DE8];
  keyAssets = [suggestion keyAssets];
  firstObject = [keyAssets firstObject];

  v5 = MEMORY[0x277CCACA8];
  [firstObject overallAestheticScore];
  v7 = [v5 stringWithFormat:@"aesthetics = %.3f", v6];
  v8 = MEMORY[0x277CCACA8];
  [firstObject curationScore];
  v10 = [v8 stringWithFormat:@"curation = %.3f", v9];
  v13[0] = v7;
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v11;
}

- (id)suggestedAssetsInAssets:(id)assets options:(id)options
{
  optionsCopy = options;
  v7 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:assets];
  maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];

  if (maximumNumberOfSuggestions < [v7 count])
  {
    v9 = [v7 subarrayWithRange:{0, maximumNumberOfSuggestions}];

    v7 = v9;
  }

  return v7;
}

- (id)suggestedAssetsInAssets:(id)assets
{
  v25 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 clsPeopleCount] || -[PGAbstractSuggester hasSuggestableScenesWithAsset:](self, "hasSuggestableScenesWithAsset:", v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v23[0] = v12;
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"curationScore" ascending:0];
  v23[1] = v13;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v23[2] = v14;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v23[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  v17 = [v5 sortedArrayUsingDescriptors:v16];

  return v17;
}

- (id)niceAssetsBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress
{
  v53 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v13 = _Block_copy(progress);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    session = [(PGAbstractSuggester *)self session];
    v18 = session;
    if (!session)
    {
      v16 = MEMORY[0x277CBEBF8];
LABEL_44:

      goto LABEL_45;
    }

    v42 = session;
    loggingConnection = [session loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v52 = dateCopy;
      *&v52[8] = 2112;
      *&v52[10] = endDateCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Computing eligible nice assets between %@ and %@", buf, 0x16u);
    }

    0x3FE4CCCCCCCCCCCDLL = [MEMORY[0x277CCAC30] predicateWithFormat:@"overallAestheticScore >= %f", 0x3FE4CCCCCCCCCCCDLL];
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore > %f", *MEMORY[0x277D3C768]];
    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v43 = [objc_opt_class() internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:1];
    v44 = noVideoPredicate;
    v45 = v21;
    v46 = 0x3FE4CCCCCCCCCCCDLL;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{0x3FE4CCCCCCCCCCCDLL, v21, noVideoPredicate, v43, 0}];
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", dateCopy];
      [v23 addObject:dateCopy];
    }

    if (endDateCopy)
    {
      endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", endDateCopy];
      [v23 addObject:endDateCopy];
    }

    v18 = v42;
    if (dCopy)
    {
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
      [v23 addObject:dCopy];
    }

    v47 = dCopy;
    v41 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v23];
    v27 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:?];
    v28 = +[PGCurationManager assetPropertySetsForCuration];
    [v27 setFetchPropertySets:v28];

    v48 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v27];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v50 = 0;
        v13[2](v13, &v50, 0.4);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v52 = 222;
            *&v52[4] = 2080;
            *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          goto LABEL_43;
        }

        v14 = Current;
      }
    }

    v40 = dateCopy;
    clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v31 = MEMORY[0x277CD97A8];
    curationContext = [v42 curationContext];
    v33 = [v31 clsAllAssetsFromFetchResult:v48 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

    if (v13)
    {
      v34 = CFAbsoluteTimeGetCurrent();
      if (v34 - v14 >= 0.01)
      {
        v50 = 0;
        v13[2](v13, &v50, 0.8);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v52 = 227;
            *&v52[4] = 2080;
            *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          dCopy = v47;
LABEL_42:

          dateCopy = v40;
LABEL_43:

          goto LABEL_44;
        }

        v14 = v34;
      }
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __96__PGRecentAestheticsSuggester_niceAssetsBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke;
    v49[3] = &unk_2788894C0;
    v49[4] = self;
    v35 = [MEMORY[0x277CCAC30] predicateWithBlock:v49];
    v36 = [v33 filteredArrayUsingPredicate:v35];

    v37 = loggingConnection;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v36 count];
      *buf = 134217984;
      *v52 = v38;
      _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: found %lu eligible assets", buf, 0xCu);
    }

    dCopy = v47;
    if (v13 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v50 = 0, v13[2](v13, &v50, 1.0), v50))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v52 = 234;
        *&v52[4] = 2080;
        *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = v36;
    }

    goto LABEL_42;
  }

  v50 = 0;
  v13[2](v13, &v50, 0.0);
  if (v50 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v52 = 179;
    *&v52[4] = 2080;
    *&v52[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_45:

  return v16;
}

- (void)reset
{
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Resetting", v6, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  self->_suggestedAssetEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  v23 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: nextSuggestion", &v21, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  if (!suggestedAssetEnumerator)
  {
    suggestedAssets = self->_suggestedAssets;
    if (!suggestedAssets)
    {
      universalStartDate = [(PGSuggestionOptions *)self->_options universalStartDate];
      universalEndDate = [(PGSuggestionOptions *)self->_options universalEndDate];
      v11 = [(PGRecentAestheticsSuggester *)self niceAssetsBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:0 progress:progressCopy];
      v12 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:v11];
      v13 = self->_suggestedAssets;
      self->_suggestedAssets = v12;

      suggestedAssets = self->_suggestedAssets;
    }

    objectEnumerator = [(NSArray *)suggestedAssets objectEnumerator];
    v15 = self->_suggestedAssetEnumerator;
    self->_suggestedAssetEnumerator = objectEnumerator;

    suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  }

  nextObject = [(NSEnumerator *)suggestedAssetEnumerator nextObject];
  if (nextObject && (v17 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:303 asset:nextObject]) != 0)
  {
    v18 = v17;
    if ([(PGSuggestionOptions *)self->_options computeReasons])
    {
      v19 = [(PGRecentAestheticsSuggester *)self reasonsForSuggestion:v18];
      [(PGSingleAssetSuggestion *)v18 setReasons:v19];
    }

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138477827;
      v22 = v18;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Suggesting %{private}@", &v21, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Nothing to suggest", &v21, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)startSuggestingWithOptions:(id)options
{
  optionsCopy = options;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Starting suggesting", v10, 2u);
  }

  suggestedAssets = self->_suggestedAssets;
  self->_suggestedAssets = 0;

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  self->_suggestedAssetEnumerator = 0;

  options = self->_options;
  self->_options = optionsCopy;
}

- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v7 = [(PGRecentAestheticsSuggester *)self niceAssetsBetweenStartDate:0 andEndDate:0 matchingAssetUUID:uuid progress:&__block_literal_global_42627];

  v8 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:v7];
  if ([v8 count] == 1)
  {
    firstObject = [v8 firstObject];
    uuid2 = [firstObject uuid];
    uuid3 = [assetCopy uuid];
    v12 = [uuid2 isEqualToString:uuid3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v66 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v7 = _Block_copy(progressCopy);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  if (!v7 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v54[3] < 0.01) || (v54[3] = v8, v52 = 0, (*(v7 + 2))(v7, &v52, 0.0), v9 = *(v58 + 24) | v52, *(v58 + 24) = v9, (v9 & 1) == 0))
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    universalStartDate = [optionsCopy universalStartDate];
    universalEndDate = [optionsCopy universalEndDate];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63__PGRecentAestheticsSuggester_suggestionsWithOptions_progress___block_invoke;
    v47[3] = &unk_27888A188;
    v14 = v7;
    v48 = v14;
    v49 = &v53;
    v50 = &v57;
    v51 = 0x3F847AE147AE147BLL;
    v39 = universalEndDate;
    v42 = [(PGRecentAestheticsSuggester *)self niceAssetsBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:0 progress:v47];
    v38 = universalStartDate;
    if (*(v58 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 65;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
        v15 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (v7)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v54[3] >= 0.01)
        {
          v54[3] = Current;
          v52 = 0;
          (*(v14 + 2))(v14, &v52, 0.5);
          v17 = *(v58 + 24) | v52;
          *(v58 + 24) = v17;
          if (v17)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v63 = 67;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
            v15 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if ([v42 count])
      {
        v36 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:v42 options:optionsCopy];
        if ([v36 count])
        {
          maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
          if (maximumNumberOfSuggestions)
          {
            v19 = maximumNumberOfSuggestions;
          }

          else
          {
            v19 = -1;
          }

          v20 = v36;
          v21 = [v36 count];
          selfCopy = self;
          if (v21 >= v19)
          {
            v22 = v19;
          }

          else
          {
            v22 = v21;
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          obj = v20;
          v23 = [obj countByEnumeratingWithState:&v43 objects:v61 count:16];
          if (v23)
          {
            v24 = 1.0 / v22;
            v25 = *v44;
            v26 = 0.0;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v44 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v43 + 1) + 8 * i);
                if (v7)
                {
                  v29 = CFAbsoluteTimeGetCurrent();
                  if (v29 - v54[3] >= 0.01)
                  {
                    v54[3] = v29;
                    v52 = 0;
                    (*(v14 + 2))(v14, &v52, v26 * 0.5 + 0.5);
                    v30 = *(v58 + 24) | v52;
                    *(v58 + 24) = v30;
                    if (v30)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v63 = 80;
                        v64 = 2080;
                        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      goto LABEL_11;
                    }
                  }
                }

                v31 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:303 asset:v28];
                if (v31)
                {
                  if ([optionsCopy computeReasons])
                  {
                    v32 = [(PGRecentAestheticsSuggester *)selfCopy reasonsForSuggestion:v31];
                    [(PGSingleAssetSuggestion *)v31 setReasons:v32];
                  }

                  [v11 addObject:v31];
                  if ([v11 count] >= v19)
                  {

                    goto LABEL_42;
                  }

                  v26 = v24 + v26;
                }
              }

              v23 = [obj countByEnumeratingWithState:&v43 objects:v61 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_42:
        }
      }

      if (!v7 || (v33 = CFAbsoluteTimeGetCurrent(), v33 - v54[3] < 0.01) || (v54[3] = v33, v52 = 0, (*(v14 + 2))(v14, &v52, 1.0), v34 = *(v58 + 24) | v52, *(v58 + 24) = v34, (v34 & 1) == 0))
      {
        v10 = v11;
        goto LABEL_50;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 101;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
        v15 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v10 = MEMORY[0x277CBEBF8];
LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v63 = 56;
    v64 = 2080;
    v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_51:
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  return v10;
}

void __63__PGRecentAestheticsSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end