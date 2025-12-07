@interface PGRecentSocialGroupCentricSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (id)assetsMatchingSocialGroup:(id)group betweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d;
- (id)assetsWithPersonsBetweenStartDate:(id)date andEndDate:(id)endDate matchAssetUUID:(id)d;
- (id)longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:(id)progress;
- (id)nextSocialGroupPotentialSuggestionWithProgress:(id)progress;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)potentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)socialGroupPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (id)verifiedPersons;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
- (void)usePotentialSuggestions:(id)suggestions;
@end

@implementation PGRecentSocialGroupCentricSuggester

- (void)usePotentialSuggestions:(id)suggestions
{
  v14 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        [(NSMutableSet *)self->_usedPotentialSuggestions addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [suggestionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)assetsMatchingSocialGroup:(id)group betweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  groupCopy = group;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = dateCopy;
    v34 = 2112;
    v35 = endDateCopy;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Computing eligible socialgroup assets between %@ and %@", buf, 0x16u);
  }

  v16 = [(PGRecentSocialGroupCentricSuggester *)self assetsWithPersonsBetweenStartDate:dateCopy andEndDate:endDateCopy matchAssetUUID:dCopy];

  v17 = [MEMORY[0x277CBEB98] setWithArray:groupCopy];
  v18 = [groupCopy count];

  v19 = MEMORY[0x277CCAC30];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __111__PGRecentSocialGroupCentricSuggester_assetsMatchingSocialGroup_betweenStartDate_andEndDate_matchingAssetUUID___block_invoke;
  v29 = &unk_2788817C0;
  v30 = v17;
  v31 = v18 >> 1;
  v20 = v17;
  v21 = [v19 predicateWithBlock:&v26];
  v22 = [v16 filteredArrayUsingPredicate:{v21, v26, v27, v28, v29}];

  v23 = loggingConnection;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 count];
    *buf = 134217984;
    v33 = v24;
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: found %lu eligible assets", buf, 0xCu);
  }

  return v22;
}

BOOL __111__PGRecentSocialGroupCentricSuggester_assetsMatchingSocialGroup_betweenStartDate_andEndDate_matchingAssetUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clsPersonLocalIdentifiers];
  v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
  [v5 intersectSet:*(a1 + 32)];
  v6 = [v5 count];
  if (v6 >= 2 && (v7 = v6, v6 >= *(a1 + 40)))
  {
    v9 = [v3 clsFaceInformationSummary];
    v10 = [v9 numberOfFaces];
    v11 = v10 - v7;
    if (v10 < v7)
    {
      v11 = 0;
    }

    v8 = v11 < v7 && vcvtd_n_f64_u64(v7, 1uLL) <= [v9 numberOfGoodFacesOfVerifiedPersons];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)assetsWithPersonsBetweenStartDate:(id)date andEndDate:(id)endDate matchAssetUUID:(id)d
{
  v70 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  eligibleAssets = self->_eligibleAssets;
  if (!eligibleAssets)
  {
    session = [(PGAbstractSuggester *)self session];
    photoLibrary = [session photoLibrary];
    clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v54 = objc_autoreleasePoolPush();
    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{noVideoPredicate, 0}];
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", dateCopy];
      [v14 addObject:dateCopy];
    }

    v58 = v14;
    if (endDateCopy)
    {
      endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", endDateCopy];
      [v14 addObject:endDateCopy];
    }

    if (dCopy)
    {
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
      [v14 addObject:dCopy];
    }

    v56 = endDateCopy;
    v57 = dateCopy;
    v55 = dCopy;
    v53 = noVideoPredicate;
    if ([v14 count] <= 1)
    {
      [v14 firstObject];
    }

    else
    {
      [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v14];
    }
    v52 = ;
    v18 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v52];
    v19 = +[PGCurationManager assetPropertySetsForCuration];
    [v18 setFetchPropertySets:v19];

    [v18 setChunkSizeForFetch:500];
    verifiedPersons = [(PGRecentSocialGroupCentricSuggester *)self verifiedPersons];
    v51 = v18;
    v60 = [MEMORY[0x277CD97A8] fetchAssetsForPersons:? options:?];
    v20 = [v60 count];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v59 = v20;
      do
      {
        context = objc_autoreleasePoolPush();
        if (v21 - v22 >= 0x1F4)
        {
          v23 = 500;
        }

        else
        {
          v23 = v21 - v22;
        }

        v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v22, v23}];
        v25 = [v60 objectsAtIndexes:v24];

        v26 = objc_alloc(MEMORY[0x277CD98D0]);
        fetchType = [v60 fetchType];
        fetchPropertySets = [v60 fetchPropertySets];
        v29 = [v26 initWithObjects:v25 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

        v30 = MEMORY[0x277CD97A8];
        curationContext = [session curationContext];
        v32 = [v30 clsAllAssetsFromFetchResult:v29 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v66;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v66 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v65 + 1) + 8 * i);
              if ([(PGAbstractSuggester *)self assetIsValidForSuggesting:v38])
              {
                uuid = [v38 uuid];
                [v12 addObject:uuid];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v65 objects:v69 count:16];
          }

          while (v35);
        }

        objc_autoreleasePoolPop(context);
        v22 += 500;
        v21 = v59;
      }

      while (v22 < v59);
    }

    objc_autoreleasePoolPop(v54);
    v40 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v12];
    v41 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v40];
    v42 = +[PGCurationManager assetPropertySetsForCuration];
    [v41 setFetchPropertySets:v42];

    v43 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v41];
    v44 = MEMORY[0x277CD97A8];
    curationContext2 = [session curationContext];
    v46 = [v44 clsAllAssetsFromFetchResult:v43 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext2];
    v47 = self->_eligibleAssets;
    self->_eligibleAssets = v46;

    eligibleAssets = self->_eligibleAssets;
    endDateCopy = v56;
    dateCopy = v57;
    dCopy = v55;
  }

  v48 = eligibleAssets;

  return eligibleAssets;
}

- (id)verifiedPersons
{
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setPersonContext:1];
  v5 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
  fetchedObjects = [v5 fetchedObjects];

  return fetchedObjects;
}

- (id)potentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  optionsCopy = options;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = [(PGAbstractSuggester *)self session];
  workingContext = [session workingContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke;
  v14[3] = &unk_27888A638;
  v15 = optionsCopy;
  v9 = v6;
  v16 = v9;
  v10 = optionsCopy;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [*(a1 + 32) universalStartDate];
  v5 = [*(a1 + 32) universalEndDate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke_2;
  v8[3] = &unk_278881798;
  v9 = v5;
  v10 = v4;
  v11 = *(a1 + 40);
  v6 = v4;
  v7 = v5;
  [v3 enumerateSocialGroupsWithBlock:v8 includeInvalidGroups:0];
}

void __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  if ([v9 count] >= 2)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v43 = v12;
      v44 = v11;
      v45 = v10;
      v46 = v9;
      v16 = 0;
      v17 = 0;
      v18 = *v56;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          v21 = [v20 universalStartDate];
          if ([v21 compare:*(a1 + 32)] == 1 || (objc_msgSend(v20, "universalEndDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "compare:", *(a1 + 40)), v22, v23 == -1))
          {
            if ([v21 compare:*(a1 + 40)] == -1)
            {
              if (v16)
              {
                v24 = [v21 laterDate:v16];

                v16 = v24;
              }

              else
              {
                v16 = v21;
              }
            }
          }

          else
          {
            v17 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v15);

      if ((v17 & 1) == 0)
      {
        v10 = v45;
        v9 = v46;
        v12 = v43;
        v11 = v44;
        goto LABEL_38;
      }

      if (v16)
      {
        [*(a1 + 40) timeIntervalSinceDate:v16];
        if (v25 <= 2592000.0)
        {

          v16 = 0;
        }
      }

      v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v46, "count")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v27 = v46;
      v28 = [v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v52;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v52 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v51 + 1) + 8 * j) localIdentifier];
            [v26 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
        }

        while (v29);
      }

      v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v34 = v13;
      v35 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
      v11 = v44;
      if (v35)
      {
        v36 = v35;
        v37 = *v48;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [*(*(&v47 + 1) + 8 * k) localIdentifier];
            [v33 addObject:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v36);
      }

      v40 = [PGPotentialRecentSocialGroupCentricSuggestion alloc];
      v10 = v45;
      *&v41 = a5;
      v42 = [(PGPotentialRecentSocialGroupCentricSuggestion *)v40 initWithPersonLocalIdentifiers:v26 personWeights:v45 momentLocalIdentifiers:v33 weight:v16 notSeenSinceDate:v41];
      [*(a1 + 48) addObject:v42];

      v9 = v46;
      v12 = v43;
    }

    else
    {
      v16 = 0;
      v26 = v13;
    }

LABEL_38:
  }

  objc_autoreleasePoolPop(v12);
}

- (id)nextSocialGroupPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  if (!socialGroupPotentialSuggestionEnumerator)
  {
    socialGroupPotentialSuggestions = self->_socialGroupPotentialSuggestions;
    if (!socialGroupPotentialSuggestions)
    {
      v7 = [(PGRecentSocialGroupCentricSuggester *)self socialGroupPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_socialGroupPotentialSuggestions;
      self->_socialGroupPotentialSuggestions = v7;

      [(PGRecentSocialGroupCentricSuggester *)self usePotentialSuggestions:self->_socialGroupPotentialSuggestions];
      socialGroupPotentialSuggestions = self->_socialGroupPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)socialGroupPotentialSuggestions objectEnumerator];
    v10 = self->_socialGroupPotentialSuggestionEnumerator;
    self->_socialGroupPotentialSuggestionEnumerator = objectEnumerator;

    socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)socialGroupPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  if (!longTimeNoSeeSocialGroupPotentialSuggestionEnumerator)
  {
    longTimeNoSeeSocialGroupPotentialSuggestions = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
    if (!longTimeNoSeeSocialGroupPotentialSuggestions)
    {
      v7 = [(PGRecentSocialGroupCentricSuggester *)self longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
      self->_longTimeNoSeeSocialGroupPotentialSuggestions = v7;

      [(PGRecentSocialGroupCentricSuggester *)self usePotentialSuggestions:self->_longTimeNoSeeSocialGroupPotentialSuggestions];
      longTimeNoSeeSocialGroupPotentialSuggestions = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)longTimeNoSeeSocialGroupPotentialSuggestions objectEnumerator];
    v10 = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
    self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = objectEnumerator;

    longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)longTimeNoSeeSocialGroupPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)socialGroupPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  v68 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v42 = _Block_copy(progressCopy);
  v38 = progressCopy;
  if (v42)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v55[3] >= 0.01)
    {
      v55[3] = Current;
      v53 = 0;
      v42[2](v42, &v53, 0.0);
      v8 = *(v59 + 24) | v53;
      *(v59 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v65 = 288;
          v66 = 2080;
          v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  selfCopy = self;
  if (!self->_allPotentialSuggestions)
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __91__PGRecentSocialGroupCentricSuggester_socialGroupPotentialSuggestionsWithOptions_progress___block_invoke;
    v48[3] = &unk_27888A188;
    v49 = v42;
    v50 = &v54;
    v51 = &v58;
    v52 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentSocialGroupCentricSuggester *)self potentialSuggestionsWithOptions:optionsCopy progress:v48];
    allPotentialSuggestions = self->_allPotentialSuggestions;
    self->_allPotentialSuggestions = v10;

    if (*(v59 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v65 = 295;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v42)
  {
    v12 = CFAbsoluteTimeGetCurrent();
    if (v12 - v55[3] >= 0.01)
    {
      v55[3] = v12;
      v53 = 0;
      v42[2](v42, &v53, 0.3);
      v13 = *(v59 + 24) | v53;
      *(v59 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v65 = 298;
          v66 = 2080;
          v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v14 = MEMORY[0x277CBEBF8];
        goto LABEL_51;
      }
    }
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(NSArray *)self->_allPotentialSuggestions count];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_allPotentialSuggestions;
  v16 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v63 count:16];
  if (v16)
  {
    v17 = 1.0 / v15;
    v18 = *v45;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        if (v42)
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v55[3] >= 0.01)
          {
            v55[3] = v22;
            v53 = 0;
            v42[2](v42, &v53, v19 * 0.6 + 0.3);
            v23 = *(v59 + 24) | v53;
            *(v59 + 24) = v23;
            if (v23)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v65 = 305;
                v66 = 2080;
                v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_41;
            }
          }
        }

        if (([(NSMutableSet *)self->_usedPotentialSuggestions containsObject:v21]& 1) == 0)
        {
          v24 = objc_autoreleasePoolPush();
          additionalOptions = [optionsCopy additionalOptions];
          v26 = [additionalOptions objectForKeyedSubscript:@"assetUUID"];

          personLocalIdentifiers = [v21 personLocalIdentifiers];
          universalStartDate = [optionsCopy universalStartDate];
          universalEndDate = [optionsCopy universalEndDate];
          v30 = [(PGRecentSocialGroupCentricSuggester *)selfCopy assetsMatchingSocialGroup:personLocalIdentifiers betweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:v26];

          if ([v30 count])
          {
            [v21 setAssets:v30];
            [v39 addObject:v21];
          }

          objc_autoreleasePoolPop(v24);
          self = selfCopy;
        }

        v19 = v17 + v19;
      }

      v16 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v63 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (v42 && (v31 = CFAbsoluteTimeGetCurrent(), v31 - v55[3] >= 0.01) && (v55[3] = v31, v53 = 0, v42[2](v42, &v53, 0.9), v32 = *(v59 + 24) | v53, *(v59 + 24) = v32, (v32 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v65 = 325;
      v66 = 2080;
      v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_41:
    v14 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
    v62 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];

    [v39 sortUsingDescriptors:v34];
    if (v42 && (v35 = CFAbsoluteTimeGetCurrent(), v35 - v55[3] >= 0.01) && (v55[3] = v35, v53 = 0, v42[2](v42, &v53, 1.0), v36 = *(v59 + 24) | v53, *(v59 + 24) = v36, (v36 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v65 = 331;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v14 = v39;
    }
  }

LABEL_51:
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  return v14;
}

void __91__PGRecentSocialGroupCentricSuggester_socialGroupPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  v71 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v46 = _Block_copy(progressCopy);
  v41 = progressCopy;
  if (v46)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v58[3] >= 0.01)
    {
      v58[3] = Current;
      v56 = 0;
      v46[2](v46, &v56, 0.0);
      v8 = *(v62 + 24) | v56;
      *(v62 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v68 = 233;
          v69 = 2080;
          v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  selfCopy = self;
  if (!self->_allPotentialSuggestions)
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __104__PGRecentSocialGroupCentricSuggester_longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions_progress___block_invoke;
    v51[3] = &unk_27888A188;
    v52 = v46;
    v53 = &v57;
    v54 = &v61;
    v55 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentSocialGroupCentricSuggester *)self potentialSuggestionsWithOptions:optionsCopy progress:v51];
    allPotentialSuggestions = self->_allPotentialSuggestions;
    self->_allPotentialSuggestions = v10;

    if (*(v62 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v68 = 240;
        v69 = 2080;
        v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v46)
  {
    v12 = CFAbsoluteTimeGetCurrent();
    if (v12 - v58[3] >= 0.01)
    {
      v58[3] = v12;
      v56 = 0;
      v46[2](v46, &v56, 0.3);
      v13 = *(v62 + 24) | v56;
      *(v62 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v68 = 243;
          v69 = 2080;
          v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v14 = MEMORY[0x277CBEBF8];
        goto LABEL_52;
      }
    }
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(NSArray *)self->_allPotentialSuggestions count];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_allPotentialSuggestions;
  v16 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v66 count:16];
  if (v16)
  {
    v17 = 1.0 / v15;
    v18 = *v48;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v47 + 1) + 8 * i);
        if (v46)
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v58[3] >= 0.01)
          {
            v58[3] = v22;
            v56 = 0;
            v46[2](v46, &v56, v19 * 0.6 + 0.3);
            v23 = *(v62 + 24) | v56;
            *(v62 + 24) = v23;
            if (v23)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v68 = 250;
                v69 = 2080;
                v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_42;
            }
          }
        }

        if (([(NSMutableSet *)self->_usedPotentialSuggestions containsObject:v21]& 1) == 0)
        {
          notSeenSinceDate = [v21 notSeenSinceDate];
          v25 = notSeenSinceDate == 0;

          self = selfCopy;
          if (!v25)
          {
            v26 = objc_autoreleasePoolPush();
            additionalOptions = [optionsCopy additionalOptions];
            v28 = [additionalOptions objectForKeyedSubscript:@"assetUUID"];

            personLocalIdentifiers = [v21 personLocalIdentifiers];
            universalStartDate = [optionsCopy universalStartDate];
            universalEndDate = [optionsCopy universalEndDate];
            v32 = [(PGRecentSocialGroupCentricSuggester *)selfCopy assetsMatchingSocialGroup:personLocalIdentifiers betweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:v28];

            if ([v32 count])
            {
              [v21 setAssets:v32];
              [v42 addObject:v21];
            }

            objc_autoreleasePoolPop(v26);
            self = selfCopy;
          }
        }

        v19 = v17 + v19;
      }

      v16 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v66 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (v46 && (v33 = CFAbsoluteTimeGetCurrent(), v33 - v58[3] >= 0.01) && (v58[3] = v33, v56 = 0, v46[2](v46, &v56, 0.9), v34 = *(v62 + 24) | v56, *(v62 + 24) = v34, (v34 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v68 = 273;
      v69 = 2080;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_42:
    v14 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"notSeenSinceDate" ascending:1];
    v65[0] = v35;
    v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
    v65[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];

    [v42 sortUsingDescriptors:v37];
    if (v46 && (v38 = CFAbsoluteTimeGetCurrent(), v38 - v58[3] >= 0.01) && (v58[3] = v38, v56 = 0, v46[2](v46, &v56, 1.0), v39 = *(v62 + 24) | v56, *(v62 + 24) = v39, (v39 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v68 = 280;
        v69 = 2080;
        v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v14 = v42;
    }
  }

LABEL_52:
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  return v14;
}

void __104__PGRecentSocialGroupCentricSuggester_longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date
{
  v23[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dateCopy = date;
  v8 = objc_alloc_init(PGSuggestionOptions);
  [(PGSuggestionOptions *)v8 setLocalToday:dateCopy];

  creationDate = [assetCopy creationDate];
  [(PGSuggestionOptions *)v8 setUniversalStartDate:creationDate];

  v22 = @"assetUUID";
  uuid = [assetCopy uuid];
  v23[0] = uuid;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  [(PGSuggestionOptions *)v8 setAdditionalOptions:v11];

  [(PGSuggestionOptions *)v8 setMaximumNumberOfSuggestions:1];
  v12 = [(PGRecentSocialGroupCentricSuggester *)self suggestionsWithOptions:v8 progress:&__block_literal_global_21961];
  if ([v12 count] == 1)
  {
    firstObject = [v12 firstObject];
    keyAssets = [firstObject keyAssets];
    if ([keyAssets count] == 1)
    {
      firstObject2 = [v12 firstObject];
      keyAssets2 = [firstObject2 keyAssets];
      firstObject3 = [keyAssets2 firstObject];
      uuid2 = [firstObject3 uuid];
      uuid3 = [assetCopy uuid];
      v19 = [uuid2 isEqualToString:uuid3];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v48 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v6 = _Block_copy(progressCopy);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v37[3] >= 0.01) && (v37[3] = v7, v35 = 0, (*(v6 + 2))(v6, &v35, 0.0), v8 = *(v41 + 24) | v35, *(v41 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v45 = 176;
      v46 = 2080;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(PGRecentSocialGroupCentricSuggester *)self startSuggestingWithOptions:optionsCopy];
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
    v11 = 0;
    if (maximumNumberOfSuggestions)
    {
      v12 = maximumNumberOfSuggestions;
    }

    else
    {
      v12 = -1;
    }

    v13 = 0.0;
    v14 = MEMORY[0x277D86220];
    while (v11 < v12)
    {
      v15 = objc_autoreleasePoolPush();
      if (v6 && (Current = CFAbsoluteTimeGetCurrent(), Current - v37[3] >= 0.01) && (v37[3] = Current, v35 = 0, (*(v6 + 2))(v6, &v35, v13), v17 = *(v41 + 24) | v35, *(v41 + 24) = v17, (v17 & 1) != 0))
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v45 = 187;
          v46 = 2080;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = 1;
      }

      else
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __71__PGRecentSocialGroupCentricSuggester_suggestionsWithOptions_progress___block_invoke;
        v28[3] = &unk_278886858;
        v29 = v6;
        v30 = &v36;
        v33 = v13;
        v34 = 1.0 / v12;
        v32 = 0x3F847AE147AE147BLL;
        v31 = &v40;
        v19 = [(PGRecentSocialGroupCentricSuggester *)self nextSuggestionWithProgress:v28];
        v20 = v19;
        if (*(v41 + 24) == 1)
        {
          v18 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 192;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else if (v19)
        {
          [v27 addObject:v19];
          v18 = 0;
          ++v11;
          v13 = 1.0 / v12 + v13;
        }

        else
        {
          v18 = 3;
        }
      }

      objc_autoreleasePoolPop(v15);
      if (v18)
      {
        if (v18 != 3)
        {
          v9 = MEMORY[0x277CBEBF8];
          v21 = v27;
          goto LABEL_35;
        }

        break;
      }
    }

    v21 = v27;
    if (v6 && (v22 = CFAbsoluteTimeGetCurrent(), v22 - v37[3] >= 0.01) && (v37[3] = v22, v35 = 0, (*(v6 + 2))(v6, &v35, 1.0), v23 = *(v41 + 24) | v35, *(v41 + 24) = v23, (v23 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 202;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v9 = v27;
    }

LABEL_35:
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v9;
}

void __71__PGRecentSocialGroupCentricSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)reset
{
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Resetting", v7, 2u);
  }

  longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = 0;

  socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  self->_socialGroupPotentialSuggestionEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  v61 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v3 = _Block_copy(progressCopy);
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v52[3] >= 0.01)
    {
      v52[3] = Current;
      v50 = 0;
      (*(v3 + 2))(v3, &v50, 0.0);
      v5 = *(v56 + 24) | v50;
      *(v56 + 24) = v5;
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v60 = 97;
          *&v60[4] = 2080;
          *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v6 = 0;
        goto LABEL_66;
      }
    }
  }

  session = [(PGAbstractSuggester *)self session];
  workingContext = [session workingContext];
  curationManager = [workingContext curationManager];

  loggingConnection = [session loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: nextSuggestion", buf, 2u);
  }

  v9 = 0;
  v38 = (v3 + 16);
  v10 = loggingConnection;
  do
  {
    if (v9)
    {
      goto LABEL_53;
    }

    v11 = objc_autoreleasePoolPush();
    if (!v3 || (v10 = loggingConnection, v12 = CFAbsoluteTimeGetCurrent(), v12 - v52[3] < 0.01) || (v52[3] = v12, v50 = 0, (*(v3 + 2))(v3, &v50, 0.5), v13 = *(v56 + 24) | v50, *(v56 + 24) = v13, (v13 & 1) == 0))
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke;
      v45[3] = &unk_27888A188;
      v15 = v3;
      v46 = v15;
      v47 = &v51;
      v49 = 0x3F847AE147AE147BLL;
      v48 = &v55;
      v16 = [(PGRecentSocialGroupCentricSuggester *)self nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:v45];
      v17 = v16;
      if (*(v56 + 24) == 1)
      {
        v14 = 1;
        v18 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v60 = 112;
          *&v60[4] = 2080;
          *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = 0;
        goto LABEL_48;
      }

      if (!v16)
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke_189;
        v40[3] = &unk_27888A188;
        v41 = v15;
        v42 = &v51;
        v44 = 0x3F847AE147AE147BLL;
        v43 = &v55;
        v17 = [(PGRecentSocialGroupCentricSuggester *)self nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:v40];
        if (*(v56 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v60 = 119;
            *&v60[4] = 2080;
            *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }
      }

      if (!v3 || (v19 = CFAbsoluteTimeGetCurrent(), v19 - v52[3] < 0.01) || (v52[3] = v19, v50 = 0, (*v38)(v15, &v50, 0.5), v20 = *(v56 + 24) | v50, *(v56 + 24) = v20, (v20 & 1) == 0))
      {
        if (!v17)
        {
          v9 = 0;
          v14 = 3;
LABEL_49:

          v10 = loggingConnection;
          goto LABEL_50;
        }

        personLocalIdentifiers = [v17 personLocalIdentifiers];
        v22 = objc_alloc_init(PGKeyAssetCurationOptions);
        v23 = [MEMORY[0x277CBEB98] setWithArray:personLocalIdentifiers];
        [(PGKeyAssetCurationOptions *)v22 setReferencePersonLocalIdentifiers:v23];

        assets = [v17 assets];
        v25 = [curationManager bestAssetInAssets:assets options:v22];

        if (v3 && (v26 = CFAbsoluteTimeGetCurrent(), v26 - v52[3] >= 0.01) && (v52[3] = v26, v50 = 0, (*v38)(v15, &v50, 0.5), v27 = *(v56 + 24) | v50, *(v56 + 24) = v27, (v27 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v60 = 131;
            *&v60[4] = 2080;
            *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          v14 = 1;
        }

        else
        {
          if (v25)
          {
            v9 = [[PGPeopleCentricSuggestion alloc] initWithPersonLocalIdentifiers:personLocalIdentifiers asset:v25];
            v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v29 = [v28 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];
            [(PGSingleAssetSuggestion *)v9 setTitle:v29];

            localCreationDate = [v25 localCreationDate];
            v31 = [MEMORY[0x277CCA968] localizedStringFromDate:localCreationDate dateStyle:2 timeStyle:0];
            [(PGSingleAssetSuggestion *)v9 setSubtitle:v31];
          }

          else
          {
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Recent SocialGroup Centric: bestAssetInAssets returned nil, cannot generate suggestion", buf, 2u);
            }

            v9 = 0;
          }

          v14 = 0;
        }

LABEL_48:
        goto LABEL_49;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v60 = 122;
        *&v60[4] = 2080;
        *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_32:
      v9 = 0;
      v14 = 1;
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v60 = 107;
      *&v60[4] = 2080;
      *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = 0;
    v14 = 1;
LABEL_50:
    objc_autoreleasePoolPop(v11);
  }

  while (!v14);
  if (v14 != 3)
  {
LABEL_60:
    v6 = 0;
    goto LABEL_65;
  }

  if (v9)
  {
LABEL_53:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *v60 = v9;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Suggesting %{private}@", buf, 0xCu);
    }

    if (v3)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Nothing to suggest", buf, 2u);
  }

  v9 = 0;
  if (!v3)
  {
    goto LABEL_64;
  }

LABEL_56:
  v32 = CFAbsoluteTimeGetCurrent();
  if (v32 - v52[3] >= 0.01)
  {
    v52[3] = v32;
    v50 = 0;
    (*(v3 + 2))(v3, &v50, 1.0);
    v33 = *(v56 + 24) | v50;
    *(v56 + 24) = v33;
    if (v33)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v60 = 161;
        *&v60[4] = 2080;
        *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_60;
    }
  }

LABEL_64:
  v9 = v9;
  v6 = v9;
LABEL_65:

LABEL_66:
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v6;
}

void __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke_189(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)startSuggestingWithOptions:(id)options
{
  optionsCopy = options;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Starting suggesting", v14, 2u);
  }

  allPotentialSuggestions = self->_allPotentialSuggestions;
  self->_allPotentialSuggestions = 0;

  usedPotentialSuggestions = self->_usedPotentialSuggestions;
  self->_usedPotentialSuggestions = 0;

  longTimeNoSeeSocialGroupPotentialSuggestions = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
  self->_longTimeNoSeeSocialGroupPotentialSuggestions = 0;

  socialGroupPotentialSuggestions = self->_socialGroupPotentialSuggestions;
  self->_socialGroupPotentialSuggestions = 0;

  longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = 0;

  socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  self->_socialGroupPotentialSuggestionEnumerator = 0;

  options = self->_options;
  self->_options = optionsCopy;
}

@end