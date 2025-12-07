@interface PGRecentFavoriteSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (id)favoritedAssetsBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)reasonsForSuggestion:(id)suggestion;
- (id)suggestedAssetsInAssets:(id)assets;
- (id)suggestedAssetsInAssets:(id)assets options:(id)options;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
@end

@implementation PGRecentFavoriteSuggester

- (id)reasonsForSuggestion:(id)suggestion
{
  v13[2] = *MEMORY[0x277D85DE8];
  keyAssets = [suggestion keyAssets];
  firstObject = [keyAssets firstObject];

  v5 = MEMORY[0x277CCACA8];
  [firstObject curationScore];
  v7 = [v5 stringWithFormat:@"curation = %.3f", v6];
  v8 = MEMORY[0x277CCACA8];
  [firstObject overallAestheticScore];
  v10 = [v8 stringWithFormat:@"aesthetics = %.3f", v9];
  v13[0] = v7;
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v11;
}

- (id)suggestedAssetsInAssets:(id)assets options:(id)options
{
  optionsCopy = options;
  v7 = [(PGRecentFavoriteSuggester *)self suggestedAssetsInAssets:assets];
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
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  assetsCopy = assets;
  v5 = [v3 sortDescriptorWithKey:@"curationScore" ascending:0];
  v12[0] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v12[1] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v12[2] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v10 = [assetsCopy sortedArrayUsingDescriptors:v9];

  return v10;
}

- (id)favoritedAssetsBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress
{
  v50 = *MEMORY[0x277D85DE8];
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

    loggingConnection = [session loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v49 = dateCopy;
      *&v49[8] = 2112;
      *&v49[10] = endDateCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Favorite: Computing eligible favorited assets between %@ and %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"favorite == YES"];
    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v41 = [objc_opt_class() internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:1];
    v42 = noVideoPredicate;
    v43 = v20;
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, noVideoPredicate, v41, 0}];
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", dateCopy];
      [v22 addObject:dateCopy];
    }

    if (endDateCopy)
    {
      endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", endDateCopy];
      [v22 addObject:endDateCopy];
    }

    if (dCopy)
    {
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
      [v22 addObject:dCopy];
    }

    v44 = dCopy;
    v40 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v22];
    v26 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:?];
    v27 = +[PGCurationManager assetPropertySetsForCuration];
    [v26 setFetchPropertySets:v27];

    v45 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v26];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v47 = 0;
        v13[2](v13, &v47, 0.4);
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v49 = 212;
            *&v49[4] = 2080;
            *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          goto LABEL_43;
        }

        v14 = Current;
      }
    }

    v39 = dateCopy;
    clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v30 = MEMORY[0x277CD97A8];
    curationContext = [v18 curationContext];
    v32 = [v30 clsAllAssetsFromFetchResult:v45 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

    if (v13)
    {
      v33 = CFAbsoluteTimeGetCurrent();
      if (v33 - v14 >= 0.01)
      {
        v47 = 0;
        v13[2](v13, &v47, 0.8);
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v49 = 217;
            *&v49[4] = 2080;
            *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          dCopy = v44;
LABEL_42:

          dateCopy = v39;
LABEL_43:

          goto LABEL_44;
        }

        v14 = v33;
      }
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __99__PGRecentFavoriteSuggester_favoritedAssetsBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke;
    v46[3] = &unk_2788894C0;
    v46[4] = self;
    v34 = [MEMORY[0x277CCAC30] predicateWithBlock:v46];
    v35 = [v32 filteredArrayUsingPredicate:v34];

    v36 = loggingConnection;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v35 count];
      *buf = 134217984;
      *v49 = v37;
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEFAULT, "Recent Favorite: found %lu eligible assets", buf, 0xCu);
    }

    dCopy = v44;
    if (v13 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v47 = 0, v13[2](v13, &v47, 1.0), v47))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v49 = 224;
        *&v49[4] = 2080;
        *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = v35;
    }

    goto LABEL_42;
  }

  v47 = 0;
  v13[2](v13, &v47, 0.0);
  if (v47 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v49 = 170;
    *&v49[4] = 2080;
    *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
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
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Favorite: Resetting", v6, 2u);
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
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Favorite: nextSuggestion", &v21, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  if (!suggestedAssetEnumerator)
  {
    suggestedAssets = self->_suggestedAssets;
    if (!suggestedAssets)
    {
      universalStartDate = [(PGSuggestionOptions *)self->_options universalStartDate];
      universalEndDate = [(PGSuggestionOptions *)self->_options universalEndDate];
      v11 = [(PGRecentFavoriteSuggester *)self favoritedAssetsBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:0 progress:progressCopy];
      v12 = [(PGRecentFavoriteSuggester *)self suggestedAssetsInAssets:v11];
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
  if (nextObject && (v17 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:301 asset:nextObject]) != 0)
  {
    v18 = v17;
    if ([(PGSuggestionOptions *)self->_options computeReasons])
    {
      v19 = [(PGRecentFavoriteSuggester *)self reasonsForSuggestion:v18];
      [(PGSingleAssetSuggestion *)v18 setReasons:v19];
    }

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138477827;
      v22 = v18;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Favorite: Suggesting %{private}@", &v21, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Favorite: Nothing to suggest", &v21, 2u);
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
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Favorite: Starting suggesting", v10, 2u);
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
  v7 = [(PGRecentFavoriteSuggester *)self favoritedAssetsBetweenStartDate:0 andEndDate:0 matchingAssetUUID:uuid progress:&__block_literal_global];

  v8 = [(PGRecentFavoriteSuggester *)self suggestedAssetsInAssets:v7];
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
  v62 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v6 = _Block_copy(progressCopy);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (!v6 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v50[3] < 0.01) || (v50[3] = v7, v48 = 0, (*(v6 + 2))(v6, &v48, 0.0), v8 = *(v54 + 24) | v48, *(v54 + 24) = v8, (v8 & 1) == 0))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    universalStartDate = [optionsCopy universalStartDate];
    universalEndDate = [optionsCopy universalEndDate];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __61__PGRecentFavoriteSuggester_suggestionsWithOptions_progress___block_invoke;
    v43[3] = &unk_27888A188;
    v12 = v6;
    v44 = v12;
    v45 = &v49;
    v46 = &v53;
    v47 = 0x3F847AE147AE147BLL;
    v33 = universalEndDate;
    v35 = [(PGRecentFavoriteSuggester *)self favoritedAssetsBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:0 progress:v43];
    if (*(v54 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v59 = 59;
        v60 = 2080;
        v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
        v13 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (v6)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v50[3] >= 0.01)
        {
          v50[3] = Current;
          v48 = 0;
          (*(v12 + 2))(v12, &v48, 0.5);
          v15 = *(v54 + 24) | v48;
          *(v54 + 24) = v15;
          if (v15)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v59 = 61;
            v60 = 2080;
            v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
            v13 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if ([v35 count])
      {
        v16 = [(PGRecentFavoriteSuggester *)self suggestedAssetsInAssets:v35 options:optionsCopy];
        maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
        selfCopy = self;
        if (maximumNumberOfSuggestions)
        {
          v18 = maximumNumberOfSuggestions;
        }

        else
        {
          v18 = -1;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        obj = v16;
        v19 = [obj countByEnumeratingWithState:&v39 objects:v57 count:16];
        if (v19)
        {
          v20 = *v40;
          v31 = v12 + 16;
          v21 = 0.0;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v39 + 1) + 8 * i);
              if (v6)
              {
                v24 = CFAbsoluteTimeGetCurrent();
                if (v24 - v50[3] >= 0.01)
                {
                  v50[3] = v24;
                  v48 = 0;
                  (*(v12 + 2))(v12, &v48, v21 * 0.5 + 0.5);
                  v25 = *(v54 + 24) | v48;
                  *(v54 + 24) = v25;
                  if (v25)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      v59 = 72;
                      v60 = 2080;
                      v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_11;
                  }
                }
              }

              v26 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:301 asset:v23];
              if (v26)
              {
                if ([optionsCopy computeReasons])
                {
                  v27 = [(PGRecentFavoriteSuggester *)selfCopy reasonsForSuggestion:v26];
                  [(PGSingleAssetSuggestion *)v26 setReasons:v27];
                }

                [v10 addObject:{v26, v31}];
                if ([v10 count] >= v18)
                {

                  goto LABEL_38;
                }

                v21 = 1.0 / v18 + v21;
              }
            }

            v19 = [obj countByEnumeratingWithState:&v39 objects:v57 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_38:
      }

      if (!v6 || (v28 = CFAbsoluteTimeGetCurrent(), v28 - v50[3] < 0.01) || (v50[3] = v28, v48 = 0, (*(v12 + 2))(v12, &v48, 1.0), v29 = *(v54 + 24) | v48, *(v54 + 24) = v29, (v29 & 1) == 0))
      {
        v9 = v10;
        goto LABEL_45;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v59 = 92;
        v60 = 2080;
        v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v9 = MEMORY[0x277CBEBF8];
LABEL_45:

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v59 = 50;
    v60 = 2080;
    v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentFavoriteSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_46:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  return v9;
}

void __61__PGRecentFavoriteSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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