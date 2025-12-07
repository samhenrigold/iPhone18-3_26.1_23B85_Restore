@interface PGOnThisDaySmallMemorySuggester
- (id)momentByMomentLocalIdentifierWithMomentLocalIdentifiers:(id)identifiers;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear:(id)year;
- (id)suggestionWithMomentLocalIdentifier:(id)identifier;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
@end

@implementation PGOnThisDaySmallMemorySuggester

- (id)suggestionWithMomentLocalIdentifier:(id)identifier
{
  v55[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!self->_momentByMomentLocalIdentifier)
  {
    v4 = [(PGOnThisDaySmallMemorySuggester *)self momentByMomentLocalIdentifierWithMomentLocalIdentifiers:self->_suggestedMomentLocalIdentifiers];
    momentByMomentLocalIdentifier = self->_momentByMomentLocalIdentifier;
    self->_momentByMomentLocalIdentifier = v4;
  }

  if (!self->_titleDateMatchingTitleOnThisDay)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PGRelativeDateTitleOnThisDay" value:@"PGRelativeDateTitleOnThisDay" table:@"Localizable"];
    titleDateMatchingTitleOnThisDay = self->_titleDateMatchingTitleOnThisDay;
    self->_titleDateMatchingTitleOnThisDay = v7;
  }

  v9 = [(NSDictionary *)self->_momentByMomentLocalIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v9)
  {
    v29 = 0;
    goto LABEL_25;
  }

  session = [(PGAbstractSuggester *)self session];
  oslog = [session loggingConnection];
  workingContext = [session workingContext];
  curationManager = [workingContext curationManager];
  curationContext = [session curationContext];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__66635;
  v51 = __Block_byref_object_dispose__66636;
  v52 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __71__PGOnThisDaySmallMemorySuggester_suggestionWithMomentLocalIdentifier___block_invoke;
  v42[3] = &unk_278889308;
  v46 = &v47;
  v12 = curationManager;
  v43 = v12;
  v13 = v9;
  v44 = v13;
  v14 = curationContext;
  v45 = v14;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v42];
  v37 = v12;
  v15 = [v12 curatedKeyAssetForAssetCollection:v13 curatedAssetCollection:0 options:0 criteria:v48[5] curationContext:v14];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_19;
  }

  if ([(__CFString *)v15 isVideo])
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "On This Day: Picked key asset is a video, trying again with only images", buf, 2u);
    }

    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v18 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:noVideoPredicate];

    v19 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v13 options:v18];
    v20 = MEMORY[0x277CD97B8];
    fetchedObjects = [v19 fetchedObjects];
    photoLibrary = [workingContext photoLibrary];
    v23 = [v20 transientAssetCollectionWithAssets:fetchedObjects title:&stru_2843F5C58 identifier:0 photoLibrary:photoLibrary];

    v24 = [v37 curatedKeyAssetForAssetCollection:v23 curatedAssetCollection:0 options:0 criteria:v48[5] curationContext:v14];

    v16 = v24;
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  [(__CFString *)v16 fetchPropertySetsIfNeeded];
  v25 = MEMORY[0x277CD97A8];
  v55[0] = v16;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  curationContext2 = [session curationContext];
  [v25 prefetchOnAssets:v26 options:31 curationContext:curationContext2];

  if (![(PGAbstractSuggester *)self assetIsValidForSuggesting:v16])
  {

    v16 = 0;
LABEL_19:
    v32 = @"Failed picking a key asset";
LABEL_20:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v32;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "On This Day: %@", buf, 0xCu);
    }

    v29 = 0;
    goto LABEL_23;
  }

  [(__CFString *)v16 curationScore];
  if (v28 <= *MEMORY[0x277D3C768])
  {
    v35 = MEMORY[0x277CCACA8];
    [(__CFString *)v16 curationScore];
    v32 = [v35 stringWithFormat:@"Picked key asset %@ has too low a curation score %f", v16, v36];
    goto LABEL_20;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v16;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "On This Day: Picked key asset %@", buf, 0xCu);
  }

  v29 = [[PGSingleAssetSuggestion alloc] initWithType:4 subtype:401 asset:v16];
  if (!v29)
  {
    goto LABEL_24;
  }

  v30 = objc_alloc(MEMORY[0x277CCA970]);
  cls_localDate = [(__CFString *)v16 cls_localDate];
  v32 = [v30 initWithStartDate:cls_localDate duration:0.0];

  [(PGSingleAssetSuggestion *)v29 setTitle:self->_titleDateMatchingTitleOnThisDay];
  v33 = [PGTimeTitleUtility timeTitleWithDateInterval:v32 allowedFormats:33];
  [(PGSingleAssetSuggestion *)v29 setSubtitle:v33];

  [(PGSingleAssetSuggestion *)v29 setRelevanceDurationInDays:1];
LABEL_23:

LABEL_24:
  _Block_object_dispose(&v47, 8);

LABEL_25:

  return v29;
}

void __71__PGOnThisDaySmallMemorySuggester_suggestionWithMomentLocalIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v8 = [a2 graph];
  v5 = [v3 criteriaForKeyAssetCurationWithAssetCollection:v4 graph:v8 options:0 curationContext:a1[6]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)momentByMomentLocalIdentifierWithMomentLocalIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        localIdentifier = [v15 localIdentifier];
        [v9 setObject:v15 forKeyedSubscript:localIdentifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear:(id)year
{
  v24 = *MEMORY[0x277D85DE8];
  yearCopy = year;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  workingContext = [session workingContext];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "On This Day: Computing eligible moments", buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke;
  v19 = &unk_27888A638;
  v20 = yearCopy;
  v9 = v8;
  v21 = v9;
  v10 = yearCopy;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:&v16];
  v11 = loggingConnection;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 count];
    *buf = 134217984;
    v23 = v12;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "On This Day: found %lu eligible moments", buf, 0xCu);
  }

  v13 = v21;
  v14 = v9;

  return v9;
}

void __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke(uint64_t a1, void *a2)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = objc_alloc_init(PGNeighborScoreComputer);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 dateNodesIgnoringYearForLocalDate:*(a1 + 32)];
  v7 = [MEMORY[0x277D27690] yearFromDate:*(a1 + 32)];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke_2;
  v27[3] = &unk_2788892B8;
  v29 = v7;
  v8 = v5;
  v28 = v8;
  [v6 enumerateNodesUsingBlock:v27];
  v9 = MEMORY[0x277CCAC98];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke_4;
  v25[3] = &unk_2788892E0;
  v10 = v4;
  v26 = v10;
  v11 = [v9 sortDescriptorWithKey:@"self" ascending:0 comparator:v25];
  v31[0] = v11;
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"contentScore" ascending:0];
  v31[1] = v12;
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localIdentifier" ascending:1];
  v31[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];

  [v8 sortUsingDescriptors:v14];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v21 + 1) + 8 * v19) localIdentifier];
        [*(a1 + 40) addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v17);
  }
}

void __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 year] < *(a1 + 40))
  {
    v4 = [v3 collection];
    v5 = [v4 momentNodes];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke_3;
    v6[3] = &unk_278889290;
    v7 = *(a1 + 32);
    [v5 enumerateNodesUsingBlock:v6];
  }
}

BOOL __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 neighborScoreWithMomentNode:a2];
  v7 = [PGGraphMomentNode breakoutOfRoutineTypeWithNeighborScore:?];
  [*(a1 + 32) neighborScoreWithMomentNode:v6];
  v9 = v8;

  v10 = [PGGraphMomentNode breakoutOfRoutineTypeWithNeighborScore:v9];
  if (v10 == 2)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  if (v7 == 2)
  {
    return v10 != 2;
  }

  else
  {
    return v11;
  }
}

void __98__PGOnThisDaySmallMemorySuggester_sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 contentScore];
  if (v3 > *MEMORY[0x277D3C768])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)reset
{
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "On This Day: Resetting", v6, 2u);
  }

  suggestedMomentLocalIdentifierEnumerator = self->_suggestedMomentLocalIdentifierEnumerator;
  self->_suggestedMomentLocalIdentifierEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = _Block_copy(progressCopy);
  v6 = 0.0;
  if (!v5 || (v7 = CFAbsoluteTimeGetCurrent(), v7 < 0.01))
  {
LABEL_8:
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "On This Day: nextSuggestion", buf, 2u);
    }

    if (self->_suggestedMomentLocalIdentifierEnumerator)
    {
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      suggestedMomentLocalIdentifiers = self->_suggestedMomentLocalIdentifiers;
      if (!suggestedMomentLocalIdentifiers)
      {
        localToday = [(PGSuggestionOptions *)self->_options localToday];
        v13 = [(PGOnThisDaySmallMemorySuggester *)self sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear:localToday];
        v14 = self->_suggestedMomentLocalIdentifiers;
        self->_suggestedMomentLocalIdentifiers = v13;

        suggestedMomentLocalIdentifiers = self->_suggestedMomentLocalIdentifiers;
      }

      objectEnumerator = [(NSArray *)suggestedMomentLocalIdentifiers objectEnumerator];
      suggestedMomentLocalIdentifierEnumerator = self->_suggestedMomentLocalIdentifierEnumerator;
      self->_suggestedMomentLocalIdentifierEnumerator = objectEnumerator;

      if (!v5)
      {
        goto LABEL_22;
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v6 >= 0.01)
    {
      v23 = 0;
      v5[2](v5, &v23, 0.5);
      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v25[0] = 126;
          LOWORD(v25[1]) = 2080;
          *(&v25[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
LABEL_45:

        goto LABEL_46;
      }

      v6 = Current;
    }

LABEL_22:
    nextObject = 0;
    while (1)
    {
      v19 = nextObject;
      nextObject = [(NSEnumerator *)self->_suggestedMomentLocalIdentifierEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      v20 = objc_autoreleasePoolPush();
      if (v5)
      {
        v21 = CFAbsoluteTimeGetCurrent();
        if (v21 - v6 >= 0.01)
        {
          v23 = 0;
          v5[2](v5, &v23, 0.75);
          if (v23)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v25[0] = 132;
              LOWORD(v25[1]) = 2080;
              *(&v25[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v20);
            goto LABEL_43;
          }

          v6 = v21;
        }
      }

      v8 = [(PGOnThisDaySmallMemorySuggester *)self suggestionWithMomentLocalIdentifier:nextObject];
      objc_autoreleasePoolPop(v20);
      if (v8)
      {
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *v25 = v8;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "On This Day: Suggesting %{private}@", buf, 0xCu);
        }

        goto LABEL_34;
      }
    }

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "On This Day: Nothing to suggest", buf, 2u);
    }

    nextObject = 0;
    v8 = 0;
LABEL_34:
    if (v5)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v23 = 0;
        v5[2](v5, &v23, 0.0);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v25[0] = 144;
            LOWORD(v25[1]) = 2080;
            *(&v25[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_43:
          v8 = 0;
        }
      }
    }

    goto LABEL_45;
  }

  v23 = 0;
  v5[2](v5, &v23, 0.0);
  if (v23 != 1)
  {
    v6 = v7;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v25[0] = 110;
    LOWORD(v25[1]) = 2080;
    *(&v25[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_46:

  return v8;
}

- (void)startSuggestingWithOptions:(id)options
{
  optionsCopy = options;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "On This Day: Starting suggesting", v11, 2u);
  }

  suggestedMomentLocalIdentifiers = self->_suggestedMomentLocalIdentifiers;
  self->_suggestedMomentLocalIdentifiers = 0;

  momentByMomentLocalIdentifier = self->_momentByMomentLocalIdentifier;
  self->_momentByMomentLocalIdentifier = 0;

  suggestedMomentLocalIdentifierEnumerator = self->_suggestedMomentLocalIdentifierEnumerator;
  self->_suggestedMomentLocalIdentifierEnumerator = 0;

  options = self->_options;
  self->_options = optionsCopy;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v50 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v8 = _Block_copy(progressCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (!v8 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v36[3] < 0.01) || (v36[3] = v9, LOBYTE(v43) = 0, (*(v8 + 2))(v8, &v43, 0.0), v10 = *(v40 + 24) | v43, *(v40 + 24) = v10, (v10 & 1) == 0))
  {
    localToday = [optionsCopy localToday];
    v13 = [(PGOnThisDaySmallMemorySuggester *)self sortedMomentLocalIdentifiersWithDateIgnoringYearBeforeDateYear:localToday];

    v14 = [(PGOnThisDaySmallMemorySuggester *)self momentByMomentLocalIdentifierWithMomentLocalIdentifiers:v13];
    momentByMomentLocalIdentifier = self->_momentByMomentLocalIdentifier;
    self->_momentByMomentLocalIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
    if (maximumNumberOfSuggestions)
    {
      v18 = maximumNumberOfSuggestions;
    }

    else
    {
      v18 = -1;
    }

    buf = 0;
    *&v48 = &buf;
    *(&v48 + 1) = 0x2020000000;
    v49 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__PGOnThisDaySmallMemorySuggester_suggestionsWithOptions_progress___block_invoke;
    v26[3] = &unk_278889268;
    v19 = v8;
    v29 = &v35;
    p_buf = &buf;
    v31 = &v39;
    v32 = 0x3F847AE147AE147BLL;
    v28 = v19;
    v26[4] = self;
    v33 = 1.0 / v18;
    v20 = v16;
    v27 = v20;
    v34 = v18;
    [v13 enumerateObjectsUsingBlock:v26];
    if (*(v40 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v43 = 67109378;
        v44 = 84;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
        v21 = MEMORY[0x277D86220];
LABEL_13:
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v43, 0x12u);
      }
    }

    else
    {
      if (!v8 || (Current = CFAbsoluteTimeGetCurrent(), Current - v36[3] < 0.01) || (v36[3] = Current, v25 = 0, (*(v19 + 2))(v19, &v25, 1.0), v23 = *(v40 + 24) | v25, *(v40 + 24) = v23, (v23 & 1) == 0))
      {
        v11 = v20;
        goto LABEL_21;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v43 = 67109378;
        v44 = 86;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
        v21 = MEMORY[0x277D86220];
        goto LABEL_13;
      }
    }

    v11 = MEMORY[0x277CBEBF8];
LABEL_21:

    _Block_object_dispose(&buf, 8);
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x3D04000202;
    LOWORD(v48) = 2080;
    *(&v48 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOnThisDaySmallMemorySuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_22:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v11;
}

void __67__PGOnThisDaySmallMemorySuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 56) + 8), Current - *(v8 + 24) >= *(a1 + 80)) && (*(v8 + 24) = Current, (*(*(a1 + 48) + 16))(*(*(*(a1 + 64) + 8) + 24)), *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 72) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) suggestionWithMomentLocalIdentifier:v6];
    if (v9)
    {
      *(*(*(a1 + 64) + 8) + 24) = *(a1 + 88) + *(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 40) addObject:v9];
      if ([*(a1 + 40) count] >= *(a1 + 96))
      {
        *a4 = 1;
      }
    }
  }
}

@end