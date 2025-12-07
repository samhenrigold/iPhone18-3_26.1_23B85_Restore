@interface PGRecentPersonCentricSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (id)assetsByPersonLocalIdentifierWithOptions:(id)options progress:(id)progress;
- (id)assetsWithSinglePersonBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress;
- (id)assetsWithSinglePersonWithOptions:(id)options progress:(id)progress;
- (id)birthdayPersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)lastAssetWithPerson:(id)person beforeDate:(id)date matchingAssetUUID:(id)d;
- (id)longTimeNoSeePersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)nextBirthdayPersonPotentialSuggestionWithProgress:(id)progress;
- (id)nextLongTimeNoSeePersonPotentialSuggestionWithProgress:(id)progress;
- (id)nextPersonPotentialSuggestionWithProgress:(id)progress;
- (id)nextPotentialSuggestionWithProgress:(id)progress;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)personPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)suggestionWithPotentialSuggestion:(id)suggestion progress:(id)progress;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (id)verifiedPersonByPersonLocalIdentifier;
- (unint64_t)relationScoreWithPersonNode:(id)node;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
- (void)updateUsedPersonLocalIdentifiersFromPotentialSuggestions:(id)suggestions;
@end

@implementation PGRecentPersonCentricSuggester

- (void)updateUsedPersonLocalIdentifiersFromPotentialSuggestions:(id)suggestions
{
  v15 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        personLocalIdentifier = [*(*(&v10 + 1) + 8 * v8) personLocalIdentifier];
        [(NSMutableSet *)self->_usedPersonLocalIdentifiers addObject:personLocalIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [suggestionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)assetsWithSinglePersonBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress
{
  v49 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v13 = _Block_copy(progress);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v48 = dateCopy;
      *&v48[8] = 2112;
      *&v48[10] = endDateCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Computing eligible single-person assets between %@ and %@", buf, 0x16u);
    }

    verifiedPersonByPersonLocalIdentifier = [(PGRecentPersonCentricSuggester *)self verifiedPersonByPersonLocalIdentifier];
    if (![verifiedPersonByPersonLocalIdentifier count])
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: No verified person, no eligible asset", buf, 2u);
      }

      v16 = MEMORY[0x277CBEBF8];
      goto LABEL_50;
    }

    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{noVideoPredicate, 0}];
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", dateCopy];
      [v20 addObject:dateCopy];
    }

    if (endDateCopy)
    {
      endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", endDateCopy];
      [v20 addObject:endDateCopy];
    }

    if (dCopy)
    {
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
      [v20 addObject:dCopy];
    }

    v42 = dCopy;
    v43 = dateCopy;
    v41 = endDateCopy;
    if ([v20 count] <= 1)
    {
      [v20 firstObject];
    }

    else
    {
      [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v20];
    }
    v39 = ;
    v24 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v39];
    v25 = +[PGCurationManager assetPropertySetsForCuration];
    [v24 setFetchPropertySets:v25];

    v26 = MEMORY[0x277CD97A8];
    allValues = [verifiedPersonByPersonLocalIdentifier allValues];
    v44 = [v26 fetchAssetsForPersons:allValues options:v24];

    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v46 = 0;
        v13[2](v13, &v46, 0.4);
        if (v46)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v48 = 693;
            *&v48[4] = 2080;
            *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          goto LABEL_49;
        }

        v14 = Current;
      }
    }

    clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v30 = MEMORY[0x277CD97A8];
    curationContext = [session curationContext];
    v32 = [v30 clsAllAssetsFromFetchResult:v44 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

    if (v13)
    {
      v33 = CFAbsoluteTimeGetCurrent();
      endDateCopy = v41;
      if (v33 - v14 >= 0.01)
      {
        v46 = 0;
        v13[2](v13, &v46, 0.8);
        if (v46)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v48 = 698;
            *&v48[4] = 2080;
            *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
LABEL_48:

LABEL_49:
          dCopy = v42;

          dateCopy = v43;
LABEL_50:

          goto LABEL_51;
        }

        v14 = v33;
      }
    }

    else
    {
      endDateCopy = v41;
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __111__PGRecentPersonCentricSuggester_assetsWithSinglePersonBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke;
    v45[3] = &unk_2788894C0;
    v45[4] = self;
    v34 = [MEMORY[0x277CCAC30] predicateWithBlock:v45];
    v35 = [v32 filteredArrayUsingPredicate:v34];

    v36 = loggingConnection;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v35 count];
      *buf = 134217984;
      *v48 = v37;
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: found %lu eligible assets", buf, 0xCu);
    }

    if (v13 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v46 = 0, v13[2](v13, &v46, 1.0), v46))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v48 = 710;
        *&v48[4] = 2080;
        *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = v35;
    }

    goto LABEL_48;
  }

  v46 = 0;
  v13[2](v13, &v46, 0.0);
  if (v46 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v48 = 655;
    *&v48[4] = 2080;
    *&v48[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_51:

  return v16;
}

BOOL __111__PGRecentPersonCentricSuggester_assetsWithSinglePersonBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) assetIsValidForSuggesting:v3])
  {
    v4 = [v3 clsFaceInformationSummary];
    v5 = [v4 numberOfFaces] == 1 && objc_msgSend(v4, "numberOfGoodFacesOfVerifiedPersons") == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lastAssetWithPerson:(id)person beforeDate:(id)date matchingAssetUUID:(id)d
{
  v21[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277CCAC30];
  personCopy = person;
  date = [v9 predicateWithFormat:@"dateCreated < %@", date];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{date, 0}];
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
    [v12 addObject:dCopy];
  }

  if ([v12 count] <= 1)
  {
    [v12 firstObject];
  }

  else
  {
    [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v12];
  }
  v14 = ;
  v15 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v14];
  [v15 setFetchLimit:1];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v21[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v15 setSortDescriptors:v17];

  v18 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:personCopy options:v15];

  firstObject = [v18 firstObject];

  return firstObject;
}

- (id)verifiedPersonByPersonLocalIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  verifiedPersonByPersonLocalIdentifier = self->_verifiedPersonByPersonLocalIdentifier;
  if (!verifiedPersonByPersonLocalIdentifier)
  {
    session = [(PGAbstractSuggester *)self session];
    photoLibrary = [session photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setPersonContext:1];
    v7 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          localIdentifier = [v14 localIdentifier];
          [(NSDictionary *)v8 setObject:v14 forKeyedSubscript:localIdentifier];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = self->_verifiedPersonByPersonLocalIdentifier;
    self->_verifiedPersonByPersonLocalIdentifier = v8;

    verifiedPersonByPersonLocalIdentifier = self->_verifiedPersonByPersonLocalIdentifier;
  }

  return verifiedPersonByPersonLocalIdentifier;
}

- (id)nextPersonPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  if (!personPotentialSuggestionEnumerator)
  {
    personPotentialSuggestions = self->_personPotentialSuggestions;
    if (!personPotentialSuggestions)
    {
      v7 = [(PGRecentPersonCentricSuggester *)self personPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_personPotentialSuggestions;
      self->_personPotentialSuggestions = v7;

      [(PGRecentPersonCentricSuggester *)self updateUsedPersonLocalIdentifiersFromPotentialSuggestions:self->_personPotentialSuggestions];
      personPotentialSuggestions = self->_personPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)personPotentialSuggestions objectEnumerator];
    v10 = self->_personPotentialSuggestionEnumerator;
    self->_personPotentialSuggestionEnumerator = objectEnumerator;

    personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)personPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)nextLongTimeNoSeePersonPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  if (!longTimeNoSeePersonPotentialSuggestionEnumerator)
  {
    longTimeNoSeePersonPotentialSuggestions = self->_longTimeNoSeePersonPotentialSuggestions;
    if (!longTimeNoSeePersonPotentialSuggestions)
    {
      v7 = [(PGRecentPersonCentricSuggester *)self longTimeNoSeePersonPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_longTimeNoSeePersonPotentialSuggestions;
      self->_longTimeNoSeePersonPotentialSuggestions = v7;

      [(PGRecentPersonCentricSuggester *)self updateUsedPersonLocalIdentifiersFromPotentialSuggestions:self->_longTimeNoSeePersonPotentialSuggestions];
      longTimeNoSeePersonPotentialSuggestions = self->_longTimeNoSeePersonPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)longTimeNoSeePersonPotentialSuggestions objectEnumerator];
    v10 = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
    self->_longTimeNoSeePersonPotentialSuggestionEnumerator = objectEnumerator;

    longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)longTimeNoSeePersonPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)nextBirthdayPersonPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  if (!birthdayPersonPotentialSuggestionEnumerator)
  {
    birthdayPersonPotentialSuggestions = self->_birthdayPersonPotentialSuggestions;
    if (!birthdayPersonPotentialSuggestions)
    {
      v7 = [(PGRecentPersonCentricSuggester *)self birthdayPersonPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_birthdayPersonPotentialSuggestions;
      self->_birthdayPersonPotentialSuggestions = v7;

      [(PGRecentPersonCentricSuggester *)self updateUsedPersonLocalIdentifiersFromPotentialSuggestions:self->_birthdayPersonPotentialSuggestions];
      birthdayPersonPotentialSuggestions = self->_birthdayPersonPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)birthdayPersonPotentialSuggestions objectEnumerator];
    v10 = self->_birthdayPersonPotentialSuggestionEnumerator;
    self->_birthdayPersonPotentialSuggestionEnumerator = objectEnumerator;

    birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)birthdayPersonPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)personPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  v65 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v7 = _Block_copy(progressCopy);
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v52[3] >= 0.01)
    {
      v52[3] = Current;
      v50 = 0;
      v7[2](v7, &v50, 0.0);
      v9 = *(v56 + 24) | v50;
      *(v56 + 24) = v9;
      if (v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v62 = 511;
          v63 = 2080;
          v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v10 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  if (!self->_assetsByPersonLocalIdentifier)
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __81__PGRecentPersonCentricSuggester_personPotentialSuggestionsWithOptions_progress___block_invoke;
    v45[3] = &unk_27888A188;
    v46 = v7;
    v47 = &v51;
    v48 = &v55;
    v49 = 0x3F847AE147AE147BLL;
    v11 = [(PGRecentPersonCentricSuggester *)self assetsByPersonLocalIdentifierWithOptions:optionsCopy progress:v45];
    assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
    self->_assetsByPersonLocalIdentifier = v11;

    if (*(v56 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v62 = 518;
        v63 = 2080;
        v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v7)
  {
    v13 = CFAbsoluteTimeGetCurrent();
    if (v13 - v52[3] >= 0.01)
    {
      v52[3] = v13;
      v50 = 0;
      v7[2](v7, &v50, 0.5);
      v14 = *(v56 + 24) | v50;
      *(v56 + 24) = v14;
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v62 = 521;
          v63 = 2080;
          v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v15 = MEMORY[0x277CBEBF8];
        goto LABEL_51;
      }
    }
  }

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  verifiedPersonByPersonLocalIdentifier = [(PGRecentPersonCentricSuggester *)self verifiedPersonByPersonLocalIdentifier];
  v17 = [verifiedPersonByPersonLocalIdentifier count];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = verifiedPersonByPersonLocalIdentifier;
  objectEnumerator = [verifiedPersonByPersonLocalIdentifier objectEnumerator];
  v19 = [objectEnumerator countByEnumeratingWithState:&v41 objects:v60 count:16];
  if (v19)
  {
    v20 = 1.0 / v17;
    v21 = *v42;
    v22 = 0.0;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v24 = *(*(&v41 + 1) + 8 * i);
        if (v7)
        {
          v25 = CFAbsoluteTimeGetCurrent();
          if (v25 - v52[3] >= 0.01)
          {
            v52[3] = v25;
            v50 = 0;
            v7[2](v7, &v50, v22 * 0.4 + 0.5);
            v26 = *(v56 + 24) | v50;
            *(v56 + 24) = v26;
            if (v26)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v62 = 529;
                v63 = 2080;
                v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_41;
            }
          }
        }

        localIdentifier = [v24 localIdentifier];
        if (([(NSMutableSet *)self->_usedPersonLocalIdentifiers containsObject:localIdentifier]& 1) == 0)
        {
          v28 = [(NSDictionary *)self->_assetsByPersonLocalIdentifier objectForKeyedSubscript:localIdentifier];
          if (v28)
          {
            v29 = [[PGPotentialRecentPersonCentricSuggestion alloc] initWithPersonLocalIdentifier:localIdentifier assets:v28 notSeenSinceDate:0];
            [v40 addObject:v29];
          }
        }

        v22 = v20 + v22;
      }

      v19 = [objectEnumerator countByEnumeratingWithState:&v41 objects:v60 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (v7 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v52[3] >= 0.01) && (v52[3] = v30, v50 = 0, v7[2](v7, &v50, 0.9), v31 = *(v56 + 24) | v50, *(v56 + 24) = v31, (v31 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v62 = 545;
      v63 = 2080;
      v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_41:
    v15 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
    v59[0] = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:1];
    v59[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];

    [v40 sortUsingDescriptors:v34];
    if (v7 && (v35 = CFAbsoluteTimeGetCurrent(), v35 - v52[3] >= 0.01) && (v52[3] = v35, v50 = 0, v7[2](v7, &v50, 1.0), v36 = *(v56 + 24) | v50, *(v56 + 24) = v36, (v36 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v62 = 552;
        v63 = 2080;
        v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v15 = v40;
    }
  }

LABEL_51:
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v15;
}

void __81__PGRecentPersonCentricSuggester_personPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)longTimeNoSeePersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  v75 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v49 = _Block_copy(progressCopy);
  if (!v49 || (v5 = CFAbsoluteTimeGetCurrent(), v5 - v62[3] < 0.01) || (v62[3] = v5, v60 = 0, (*(v49 + 2))(v49, &v60, 0.0), v6 = *(v66 + 24) | v60, *(v66 + 24) = v6, (v6 & 1) == 0))
  {
    universalStartDate = [optionsCopy universalStartDate];
    if (universalStartDate)
    {
      if (!self->_assetsByPersonLocalIdentifier)
      {
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __94__PGRecentPersonCentricSuggester_longTimeNoSeePersonPotentialSuggestionsWithOptions_progress___block_invoke;
        v55[3] = &unk_27888A188;
        v56 = v49;
        v57 = &v61;
        v58 = &v65;
        v59 = 0x3F847AE147AE147BLL;
        v9 = [(PGRecentPersonCentricSuggester *)self assetsByPersonLocalIdentifierWithOptions:optionsCopy progress:v55];
        assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
        self->_assetsByPersonLocalIdentifier = v9;

        if (*(v66 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v72 = 462;
            v73 = 2080;
            v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_19;
        }
      }

      if (!v49 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v62[3] < 0.01) || (v62[3] = v11, v60 = 0, (*(v49 + 2))(v49, &v60, 0.5), v12 = *(v66 + 24) | v60, *(v66 + 24) = v12, (v12 & 1) == 0))
      {
        v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
        verifiedPersonByPersonLocalIdentifier = [(PGRecentPersonCentricSuggester *)self verifiedPersonByPersonLocalIdentifier];
        v14 = [verifiedPersonByPersonLocalIdentifier count];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        objectEnumerator = [verifiedPersonByPersonLocalIdentifier objectEnumerator];
        v16 = [objectEnumerator countByEnumeratingWithState:&v51 objects:v70 count:16];
        v43 = verifiedPersonByPersonLocalIdentifier;
        v46 = universalStartDate;
        if (v16)
        {
          v17 = 1.0 / v14;
          v48 = *v52;
          v18 = 0.0;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v52 != v48)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v20 = *(*(&v51 + 1) + 8 * i);
              if (v49)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v62[3] >= 0.01)
                {
                  v62[3] = Current;
                  v60 = 0;
                  (*(v49 + 2))(v49, &v60, v18 * 0.4 + 0.5);
                  v22 = *(v66 + 24) | v60;
                  *(v66 + 24) = v22;
                  if (v22)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      v72 = 473;
                      v73 = 2080;
                      v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    v7 = MEMORY[0x277CBEBF8];
                    goto LABEL_54;
                  }
                }
              }

              localIdentifier = [v20 localIdentifier];
              if (([(NSMutableSet *)self->_usedPersonLocalIdentifiers containsObject:localIdentifier]& 1) == 0)
              {
                v24 = [(NSDictionary *)self->_assetsByPersonLocalIdentifier objectForKeyedSubscript:localIdentifier];
                if (v24)
                {
                  additionalOptions = [optionsCopy additionalOptions];
                  v26 = [additionalOptions objectForKeyedSubscript:@"assetUUID"];

                  v27 = [(PGRecentPersonCentricSuggester *)self lastAssetWithPerson:v20 beforeDate:v46 matchingAssetUUID:v26];
                  creationDate = [v27 creationDate];
                  if (v27)
                  {
                    universalStartDate2 = [optionsCopy universalStartDate];
                    [universalStartDate2 timeIntervalSinceDate:creationDate];
                    v31 = v30 > 2592000.0;

                    if (v31)
                    {
                      v32 = [[PGPotentialRecentPersonCentricSuggestion alloc] initWithPersonLocalIdentifier:localIdentifier assets:v24 notSeenSinceDate:creationDate];
                      [v45 addObject:v32];
                    }
                  }
                }
              }

              v18 = v17 + v18;
            }

            v16 = [objectEnumerator countByEnumeratingWithState:&v51 objects:v70 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        if (v49 && (v33 = CFAbsoluteTimeGetCurrent(), v33 - v62[3] >= 0.01) && (v62[3] = v33, v60 = 0, (*(v49 + 2))(v49, &v60, 0.9), v34 = *(v66 + 24) | v60, *(v66 + 24) = v34, (v34 & 1) != 0))
        {
          v35 = v43;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v72 = 495;
            v73 = 2080;
            v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"notSeenSinceDate" ascending:{1, v43}];
          v69[0] = v36;
          v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
          v69[1] = v37;
          v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:1];
          v69[2] = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];

          [v45 sortUsingDescriptors:v39];
          if (v49 && (v40 = CFAbsoluteTimeGetCurrent(), v40 - v62[3] >= 0.01) && (v62[3] = v40, v60 = 0, (*(v49 + 2))(v49, &v60, 1.0), v41 = *(v66 + 24) | v60, *(v66 + 24) = v41, (v41 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v72 = 503;
              v73 = 2080;
              v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v7 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v7 = v45;
          }

LABEL_54:
          v35 = v43;
        }

        universalStartDate = v46;
        goto LABEL_56;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v72 = 465;
        v73 = 2080;
        v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

LABEL_19:
    v7 = MEMORY[0x277CBEBF8];
LABEL_56:

    goto LABEL_57;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v72 = 449;
    v73 = 2080;
    v74 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_57:
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  return v7;
}

void __94__PGRecentPersonCentricSuggester_longTimeNoSeePersonPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)birthdayPersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  *(&v75[2] + 4) = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v49 = _Block_copy(progressCopy);
  v47 = progressCopy;
  if (v49)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v66[3] >= 0.01)
    {
      v66[3] = Current;
      LOBYTE(info.numer) = 0;
      v49[2](v49, &info, 0.0);
      v8 = *(v70 + 24) | LOBYTE(info.numer);
      *(v70 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 67109378;
          LODWORD(v75[0]) = 381;
          WORD2(v75[0]) = 2080;
          *(v75 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  if (!self->_assetsByPersonLocalIdentifier)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke;
    v60[3] = &unk_27888A188;
    v61 = v49;
    v62 = &v65;
    v63 = &v69;
    v64 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentPersonCentricSuggester *)self assetsByPersonLocalIdentifierWithOptions:optionsCopy progress:v60];
    assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
    self->_assetsByPersonLocalIdentifier = v10;

    if (*(v70 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v75[0]) = 388;
        WORD2(v75[0]) = 2080;
        *(v75 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v49)
  {
    v12 = CFAbsoluteTimeGetCurrent();
    if (v12 - v66[3] >= 0.01)
    {
      v66[3] = v12;
      LOBYTE(info.numer) = 0;
      v49[2](v49, &info, 0.5);
      v13 = *(v70 + 24) | LOBYTE(info.numer);
      *(v70 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 67109378;
          LODWORD(v75[0]) = 391;
          WORD2(v75[0]) = 2080;
          *(v75 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v14 = MEMORY[0x277CBEBF8];
        goto LABEL_46;
      }
    }
  }

  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v17 = os_signpost_id_generate(loggingConnection);
  v18 = loggingConnection;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "BirthdayPersonPotentialSuggestions", "", &buf, 2u);
  }

  v46 = v19;

  info = 0;
  mach_timebase_info(&info);
  v43 = mach_absolute_time();
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localToday = [optionsCopy localToday];
  v22 = session;
  v23 = [MEMORY[0x277D27690] monthFromDate:localToday];
  v45 = localToday;
  v24 = [MEMORY[0x277D27690] dayFromDate:localToday];
  workingContext = [session workingContext];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_248;
  v51[3] = &unk_278883428;
  v54 = &v65;
  v55 = &v69;
  v44 = v49;
  v53 = v44;
  v51[4] = self;
  v56 = 0x3F847AE147AE147BLL;
  v57 = v23;
  v58 = v24;
  v26 = v20;
  v52 = v26;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v51];

  v27 = v22;
  if (*(v70 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 67109378;
      LODWORD(v75[0]) = 429;
      WORD2(v75[0]) = 2080;
      *(v75 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      v28 = MEMORY[0x277D86220];
LABEL_25:
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    v29 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v32 = v46;
    v33 = v32;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, v17, "BirthdayPersonPotentialSuggestions", "", &buf, 2u);
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v75[0] = "BirthdayPersonPotentialSuggestions";
      LOWORD(v75[1]) = 2048;
      *(&v75[1] + 2) = ((((v29 - v43) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    if (!v49 || (v34 = CFAbsoluteTimeGetCurrent(), v34 - v66[3] < 0.01) || (v66[3] = v34, v50 = 0, v44[2](v44, &v50, 0.9), v35 = *(v70 + 24) | v50, *(v70 + 24) = v35, (v35 & 1) == 0))
    {
      v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"relationshipScore" ascending:1];
      v73[0] = v36;
      v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
      v73[1] = v37;
      v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:1];
      v73[2] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];

      [v26 sortUsingDescriptors:v39];
      if (v49 && (v40 = CFAbsoluteTimeGetCurrent(), v40 - v66[3] >= 0.01) && (v66[3] = v40, v50 = 0, v44[2](v44, &v50, 1.0), v41 = *(v70 + 24) | v50, *(v70 + 24) = v41, (v41 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 67109378;
          LODWORD(v75[0]) = 441;
          WORD2(v75[0]) = 2080;
          *(v75 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v14 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v14 = v26;
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 67109378;
      LODWORD(v75[0]) = 433;
      WORD2(v75[0]) = 2080;
      *(v75 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      v28 = MEMORY[0x277D86220];
      goto LABEL_25;
    }
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_45:

LABEL_46:
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);

  return v14;
}

void __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_248(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_2;
  v7[3] = &unk_278883400;
  v4 = *(a1 + 48);
  v11 = *(a1 + 72);
  v10 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v12 = *(a1 + 80);
  v8 = v6;
  [v3 enumeratePersonNodesIncludingMe:1 withBlock:v7];
}

void __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 56) + 8), Current - *(v7 + 24) >= *(a1 + 72)) && (*(v7 + 24) = Current, (*(*(a1 + 48) + 16))(0.75), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v8 = [v5 localIdentifier];
    if ([v8 length])
    {
      if (([*(*(a1 + 32) + 72) containsObject:v8] & 1) == 0)
      {
        v9 = [v5 birthdayDate];
        if (v9 || ([v5 potentialBirthdayDate], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = v9;
          v11 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v8];
          if (v11)
          {
            v12 = [MEMORY[0x277D27690] monthFromDate:v10];
            v13 = [MEMORY[0x277D27690] dayFromDate:v10];
            if (v12 == *(a1 + 80) && v13 == *(a1 + 88))
            {
              v14 = -[PGPotentialRecentPersonCentricSuggestion initWithPersonLocalIdentifier:assets:relationshipScore:]([PGPotentialRecentPersonCentricSuggestion alloc], "initWithPersonLocalIdentifier:assets:relationshipScore:", v8, v11, [*(a1 + 32) relationScoreWithPersonNode:v5]);
              [*(a1 + 40) addObject:v14];
            }
          }
        }
      }
    }
  }
}

- (unint64_t)relationScoreWithPersonNode:(id)node
{
  nodeCopy = node;
  if ([nodeCopy isMyPartner] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredPartner"))
  {
    v4 = 1;
  }

  else if ([nodeCopy isMyChild] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredChild"))
  {
    v4 = 2;
  }

  else if ([nodeCopy isMyParent] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredParent"))
  {
    v4 = 3;
  }

  else if ([nodeCopy isMemberOfMyFamily] & 1) != 0 || (objc_msgSend(nodeCopy, "isInferredMemberOfMyFamily"))
  {
    v4 = 4;
  }

  else if ([nodeCopy isMyFriend])
  {
    v4 = 5;
  }

  else if ([nodeCopy isMyInferredFriend])
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

- (id)assetsByPersonLocalIdentifierWithOptions:(id)options progress:(id)progress
{
  v69 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v40 = _Block_copy(progressCopy);
  if (!v40 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v56[3] < 0.01) || (v56[3] = v6, v54 = 0, (*(v40 + 2))(v40, &v54, 0.0), v7 = *(v60 + 24) | v54, *(v60 + 24) = v7, (v7 & 1) == 0))
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __84__PGRecentPersonCentricSuggester_assetsByPersonLocalIdentifierWithOptions_progress___block_invoke;
    v49[3] = &unk_27888A188;
    v36 = v40;
    v50 = v36;
    v51 = &v55;
    v52 = &v59;
    v53 = 0x3F847AE147AE147BLL;
    v9 = [(PGRecentPersonCentricSuggester *)self assetsWithSinglePersonWithOptions:optionsCopy progress:v49];
    v33 = v9;
    if (*(v60 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v66 = 338;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v10 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v40 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v56[3] < 0.01) || (v56[3] = v11, v54 = 0, (*(v36 + 2))(v36, &v54, 0.8), v12 = *(v60 + 24) | v54, *(v60 + 24) = v12, (v12 & 1) == 0))
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [v9 count];
        v15 = v9;
        v16 = v14;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v15;
        v17 = [obj countByEnumeratingWithState:&v45 objects:v64 count:16];
        if (v17)
        {
          v18 = 1.0 / v16;
          v38 = *v46;
          v19 = 0.0;
          while (2)
          {
            v39 = v17;
            for (i = 0; i != v39; ++i)
            {
              if (*v46 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v45 + 1) + 8 * i);
              if (v40)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v56[3] >= 0.01)
                {
                  v56[3] = Current;
                  v54 = 0;
                  (*(v36 + 2))(v36, &v54, v19 * 0.2 + 0.8);
                  v23 = *(v60 + 24) | v54;
                  *(v60 + 24) = v23;
                  if (v23)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      v66 = 347;
                      v67 = 2080;
                      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_44;
                  }
                }
              }

              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              clsPersonLocalIdentifiers = [v21 clsPersonLocalIdentifiers];
              v25 = [clsPersonLocalIdentifiers countByEnumeratingWithState:&v41 objects:v63 count:16];
              if (v25)
              {
                v26 = *v42;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v42 != v26)
                    {
                      objc_enumerationMutation(clsPersonLocalIdentifiers);
                    }

                    v28 = *(*(&v41 + 1) + 8 * j);
                    v29 = [v13 objectForKeyedSubscript:v28];
                    if (!v29)
                    {
                      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      [v13 setObject:v29 forKeyedSubscript:v28];
                    }

                    [v29 addObject:v21];
                  }

                  v25 = [clsPersonLocalIdentifiers countByEnumeratingWithState:&v41 objects:v63 count:16];
                }

                while (v25);
              }

              v19 = v18 + v19;
            }

            v17 = [obj countByEnumeratingWithState:&v45 objects:v64 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        if (v40 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v56[3] >= 0.01) && (v56[3] = v30, v54 = 0, (*(v36 + 2))(v36, &v54, 1.0), v31 = *(v60 + 24) | v54, *(v60 + 24) = v31, (v31 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v66 = 363;
            v67 = 2080;
            v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_44:
          v8 = MEMORY[0x277CBEC10];
        }

        else
        {
          v8 = v13;
        }

        goto LABEL_47;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v66 = 340;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v10 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v8 = MEMORY[0x277CBEC10];
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v66 = 333;
    v67 = 2080;
    v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = MEMORY[0x277CBEC10];
LABEL_48:
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  return v8;
}

void __84__PGRecentPersonCentricSuggester_assetsByPersonLocalIdentifierWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)assetsWithSinglePersonWithOptions:(id)options progress:(id)progress
{
  progressCopy = progress;
  optionsCopy = options;
  additionalOptions = [optionsCopy additionalOptions];
  v9 = [additionalOptions objectForKeyedSubscript:@"assetUUID"];

  universalStartDate = [optionsCopy universalStartDate];
  universalEndDate = [optionsCopy universalEndDate];

  v12 = [(PGRecentPersonCentricSuggester *)self assetsWithSinglePersonBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:v9 progress:progressCopy];

  return v12;
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
  v12 = [(PGRecentPersonCentricSuggester *)self suggestionsWithOptions:v8 progress:&__block_literal_global_33294];
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
      v45 = 269;
      v46 = 2080;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(PGRecentPersonCentricSuggester *)self startSuggestingWithOptions:optionsCopy];
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
          v45 = 280;
          v46 = 2080;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = 1;
      }

      else
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __66__PGRecentPersonCentricSuggester_suggestionsWithOptions_progress___block_invoke;
        v28[3] = &unk_278886858;
        v29 = v6;
        v30 = &v36;
        v33 = v13;
        v34 = 1.0 / v12;
        v32 = 0x3F847AE147AE147BLL;
        v31 = &v40;
        v19 = [(PGRecentPersonCentricSuggester *)self nextSuggestionWithProgress:v28];
        v20 = v19;
        if (*(v41 + 24) == 1)
        {
          v18 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 285;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
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
        v45 = 295;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
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

void __66__PGRecentPersonCentricSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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
    *v8 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Resetting", v8, 2u);
  }

  birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  self->_birthdayPersonPotentialSuggestionEnumerator = 0;

  longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  self->_longTimeNoSeePersonPotentialSuggestionEnumerator = 0;

  personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  self->_personPotentialSuggestionEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  v45 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v4 = _Block_copy(progressCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v36[3] >= 0.01)
    {
      v36[3] = Current;
      v34 = 0;
      v4[2](v4, &v34, 0.0);
      v6 = *(v40 + 24) | v34;
      *(v40 + 24) = v6;
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v44 = 220;
          *&v44[4] = 2080;
          *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v7 = 0;
        goto LABEL_45;
      }
    }
  }

  session = [(PGAbstractSuggester *)self session];
  oslog = [session loggingConnection];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: nextSuggestion", buf, 2u);
  }

  v9 = 0;
  do
  {
    if (v9)
    {
      goto LABEL_32;
    }

    v10 = objc_autoreleasePoolPush();
    if (v4 && (v11 = CFAbsoluteTimeGetCurrent(), v11 - v36[3] >= 0.01) && (v36[3] = v11, v34 = 0, v4[2](v4, &v34, 0.5), v12 = *(v40 + 24) | v34, *(v40 + 24) = v12, (v12 & 1) != 0))
    {
      v13 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v44 = 227;
        *&v44[4] = 2080;
        *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = 0;
      v14 = 1;
    }

    else
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke;
      v29[3] = &unk_27888A188;
      v15 = v4;
      v30 = v15;
      v31 = &v35;
      v32 = &v39;
      v33 = 0x3F847AE147AE147BLL;
      v16 = [(PGRecentPersonCentricSuggester *)self nextPotentialSuggestionWithProgress:v29];
      v17 = v16;
      if (*(v40 + 24) == 1)
      {
        v14 = 1;
        v18 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v44 = 232;
          *&v44[4] = 2080;
          *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = 0;
      }

      else if (v16)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke_243;
        v24[3] = &unk_27888A188;
        v25 = v15;
        v26 = &v35;
        v27 = &v39;
        v28 = 0x3F847AE147AE147BLL;
        v9 = [(PGRecentPersonCentricSuggester *)self suggestionWithPotentialSuggestion:v17 progress:v24];
        if (*(v40 + 24) == 1)
        {
          v14 = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v44 = 241;
            *&v44[4] = 2080;
            *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v9 = 0;
        v14 = 3;
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  while (!v14);
  if (v14 != 3)
  {
LABEL_39:
    v7 = 0;
    goto LABEL_44;
  }

  if (v9)
  {
LABEL_32:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *v44 = v9;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Suggesting %{private}@", buf, 0xCu);
    }

    if (!v4)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Nothing to suggest", buf, 2u);
    }

    v9 = 0;
    if (!v4)
    {
      goto LABEL_43;
    }
  }

  v19 = CFAbsoluteTimeGetCurrent();
  if (v19 - v36[3] >= 0.01)
  {
    v36[3] = v19;
    v34 = 0;
    v4[2](v4, &v34, 1.0);
    v20 = *(v40 + 24) | v34;
    *(v40 + 24) = v20;
    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v44 = 253;
        *&v44[4] = 2080;
        *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_39;
    }
  }

LABEL_43:
  v9 = v9;
  v7 = v9;
LABEL_44:

LABEL_45:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v7;
}

void __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke(uint64_t a1, _BYTE *a2)
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

void __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke_243(uint64_t a1, _BYTE *a2)
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

- (id)suggestionWithPotentialSuggestion:(id)suggestion progress:(id)progress
{
  v96 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  progressCopy = progress;
  v7 = _Block_copy(progressCopy);
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v51 = progressCopy;
  v52 = suggestionCopy;
  if (!v7 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v78[3] < 0.01) || (v78[3] = v8, LOBYTE(v72[0]) = 0, v7[2](v7, v72, 0.0), v9 = *(v82 + 24) | LOBYTE(v72[0]), *(v82 + 24) = v9, (v9 & 1) == 0))
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    personLocalIdentifier = [suggestionCopy personLocalIdentifier];
    assets = [suggestionCopy assets];
    v14 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:assets options:0];
    oslog = loggingConnection;
    v48 = session;
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v78[3] >= 0.01)
      {
        v78[3] = Current;
        LOBYTE(v72[0]) = 0;
        v7[2](v7, v72, 0.2);
        v16 = *(v82 + 24) | LOBYTE(v72[0]);
        *(v82 + 24) = v16;
        if (v16)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0x9704000202;
            LOWORD(v91) = 2080;
            *(&v91 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

          v10 = 0;
          goto LABEL_49;
        }
      }
    }

    v53 = v14;
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(assets, "count")}];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v18 = assets;
    v19 = [v18 countByEnumeratingWithState:&v73 objects:v95 count:16];
    if (v19)
    {
      v20 = *v74;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v74 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v73 + 1) + 8 * i);
          localIdentifier = [v22 localIdentifier];
          [v17 setObject:v22 forKeyedSubscript:localIdentifier];
        }

        v19 = [v18 countByEnumeratingWithState:&v73 objects:v95 count:16];
      }

      while (v19);
    }

    buf = 0;
    *&v91 = &buf;
    *(&v91 + 1) = 0x3032000000;
    v92 = __Block_byref_object_copy__33312;
    v93 = __Block_byref_object_dispose__33313;
    v94 = 0;
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x2020000000;
    v72[3] = 0xFFEFFFFFFFFFFFFFLL;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0xFFEFFFFFFFFFFFFFLL;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v67[3] = 0;
    v24 = 1.0 / [v53 count];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __77__PGRecentPersonCentricSuggester_suggestionWithPotentialSuggestion_progress___block_invoke;
    v56[3] = &unk_2788833D8;
    v25 = v7;
    v58 = v25;
    v59 = &v77;
    v65 = 0x3F847AE147AE147BLL;
    v60 = v67;
    v61 = &v81;
    v66 = v24;
    v26 = personLocalIdentifier;
    v57 = v26;
    v62 = v72;
    v63 = &v68;
    p_buf = &buf;
    [v53 enumerateKeysAndObjectsUsingBlock:v56];
    if (*(v82 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_24:
        v10 = 0;
LABEL_48:

        _Block_object_dispose(v67, 8);
        _Block_object_dispose(&v68, 8);
        _Block_object_dispose(v72, 8);
        _Block_object_dispose(&buf, 8);

        v14 = v53;
LABEL_49:

        goto LABEL_50;
      }

      v86 = 67109378;
      v87 = 183;
      v88 = 2080;
      v89 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      v27 = MEMORY[0x277D86220];
LABEL_23:
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v86, 0x12u);
      goto LABEL_24;
    }

    if (v7)
    {
      v28 = CFAbsoluteTimeGetCurrent();
      if (v28 - v78[3] >= 0.01)
      {
        v78[3] = v28;
        v55 = 0;
        (v25)[2](v25, &v55, 0.8);
        v29 = *(v82 + 24) | v55;
        *(v82 + 24) = v29;
        if (v29)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_24;
          }

          v86 = 67109378;
          v87 = 185;
          v88 = 2080;
          v89 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v27 = MEMORY[0x277D86220];
          goto LABEL_23;
        }
      }
    }

    if (v69[3] >= 0.15 && ([v17 objectForKeyedSubscript:*(v91 + 40)], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = [[PGPeopleCentricSuggestion alloc] initWithPersonLocalIdentifier:v26 asset:v30];
      photoLibrary = [v48 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v33 = MEMORY[0x277CD9938];
      personLocalIdentifier2 = [v52 personLocalIdentifier];
      v85 = personLocalIdentifier2;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
      v46 = [v33 fetchPersonsWithLocalIdentifiers:v35 options:librarySpecificFetchOptions];

      firstObject = [v46 firstObject];
      displayName = [firstObject displayName];

      v38 = [displayName length];
      v39 = displayName;
      if (!v38)
      {
        v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v45 localizedStringForKey:@"PGPeopleTitleFormatGenericUnnamedPerson" value:@"PGPeopleTitleFormatGenericUnnamedPerson" table:@"Localizable"];
      }

      [(PGSingleAssetSuggestion *)v31 setTitle:v39];
      if (!v38)
      {
      }

      localCreationDate = [v30 localCreationDate];
      v41 = [MEMORY[0x277CCA968] localizedStringFromDate:localCreationDate dateStyle:2 timeStyle:0];
      [(PGSingleAssetSuggestion *)v31 setSubtitle:v41];

      if (!v7)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v86) = 0;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: no eligible best asset, cannot generate suggestion", &v86, 2u);
      }

      v30 = 0;
      v31 = 0;
      if (!v7)
      {
        goto LABEL_46;
      }
    }

    v42 = CFAbsoluteTimeGetCurrent();
    if (v42 - v78[3] >= 0.01)
    {
      v78[3] = v42;
      v55 = 0;
      (v25)[2](v25, &v55, 1.0);
      v43 = *(v82 + 24) | v55;
      *(v82 + 24) = v43;
      if (v43)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v86 = 67109378;
          v87 = 212;
          v88 = 2080;
          v89 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v86, 0x12u);
        }

        v10 = 0;
        goto LABEL_47;
      }
    }

LABEL_46:
    v10 = v31;
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x8D04000202;
    LOWORD(v91) = 2080;
    *(&v91 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v10 = 0;
LABEL_50:
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

  return v10;
}

void __77__PGRecentPersonCentricSuggester_suggestionWithPotentialSuggestion_progress___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  if (*(a1 + 40) && (Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 48) + 8), Current - *(v11 + 24) >= *(a1 + 96)) && (*(v11 + 24) = Current, v32 = 0, (*(*(a1 + 40) + 16))(*(*(*(a1 + 56) + 8) + 24) * 0.6 + 0.2), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    obj = a2;
    v12 = v8;
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 56) + 8) + 24);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v18 personLocalIdentifier];
          v20 = [v19 isEqualToString:*(a1 + 32)];

          if (v20)
          {
            [v18 quality];
            v22 = v21;
            [v18 size];
            v24 = v23;
            v25 = *(*(*(a1 + 72) + 8) + 24);
            v8 = v12;
            if (v22 > v25 || v22 == v25 && ((v26 = *(*(*(a1 + 80) + 8) + 24), v24 > v26) || v24 == v26 && [v12 compare:*(*(*(a1 + 88) + 8) + 40)] == -1))
            {
              objc_storeStrong((*(*(a1 + 88) + 8) + 40), obj);
              *(*(*(a1 + 72) + 8) + 24) = v22;
              *(*(*(a1 + 80) + 8) + 24) = v24;
            }

            goto LABEL_19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v8 = v12;
  }

LABEL_19:
}

- (id)nextPotentialSuggestionWithProgress:(id)progress
{
  v47 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = _Block_copy(progressCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (!v5 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v36[3] < 0.01) || (v36[3] = v6, v34 = 0, (*(v5 + 2))(v5, &v34, 0.0), v7 = *(v40 + 24) | v34, *(v40 + 24) = v7, (v7 & 1) == 0))
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke;
    v29[3] = &unk_27888A188;
    v9 = v5;
    v30 = v9;
    v31 = &v35;
    v32 = &v39;
    v33 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentPersonCentricSuggester *)self nextBirthdayPersonPotentialSuggestionWithProgress:v29];
    if (*(v40 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v44 = 112;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v11 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (v5)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v36[3] >= 0.01)
        {
          v36[3] = Current;
          v34 = 0;
          (*(v9 + 2))(v9, &v34, 0.33);
          v14 = *(v40 + 24) | v34;
          *(v40 + 24) = v14;
          if (v14)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v44 = 114;
            v45 = 2080;
            v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if (!v10)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_227;
        v24[3] = &unk_27888A188;
        v25 = v9;
        v26 = &v35;
        v27 = &v39;
        v28 = 0x3F847AE147AE147BLL;
        v10 = [(PGRecentPersonCentricSuggester *)self nextLongTimeNoSeePersonPotentialSuggestionWithProgress:v24];
        if (*(v40 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v44 = 120;
            v45 = 2080;
            v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_11;
        }
      }

      if (v5)
      {
        v15 = CFAbsoluteTimeGetCurrent();
        if (v15 - v36[3] >= 0.01)
        {
          v36[3] = v15;
          v34 = 0;
          (*(v9 + 2))(v9, &v34, 0.66);
          v16 = *(v40 + 24) | v34;
          *(v40 + 24) = v16;
          if (v16)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v44 = 123;
            v45 = 2080;
            v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if (!v10)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_228;
        v19[3] = &unk_27888A188;
        v20 = v9;
        v21 = &v35;
        v22 = &v39;
        v23 = 0x3F847AE147AE147BLL;
        v10 = [(PGRecentPersonCentricSuggester *)self nextPersonPotentialSuggestionWithProgress:v19];
        if (*(v40 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v44 = 130;
            v45 = 2080;
            v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_11;
        }
      }

      if (!v5 || (v17 = CFAbsoluteTimeGetCurrent(), v17 - v36[3] < 0.01) || (v36[3] = v17, v34 = 0, (*(v9 + 2))(v9, &v34, 1.0), v18 = *(v40 + 24) | v34, *(v40 + 24) = v18, (v18 & 1) == 0))
      {
        v10 = v10;
        v8 = v10;
        goto LABEL_12;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v44 = 133;
        v45 = 2080;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v11 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v44 = 107;
    v45 = 2080;
    v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_13:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v8;
}

void __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_227(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33 + 0.33);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_228(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33 + 0.66);
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
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Starting suggesting", buf, 2u);
  }

  assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
  self->_assetsByPersonLocalIdentifier = 0;

  birthdayPersonPotentialSuggestions = self->_birthdayPersonPotentialSuggestions;
  self->_birthdayPersonPotentialSuggestions = 0;

  longTimeNoSeePersonPotentialSuggestions = self->_longTimeNoSeePersonPotentialSuggestions;
  self->_longTimeNoSeePersonPotentialSuggestions = 0;

  personPotentialSuggestions = self->_personPotentialSuggestions;
  self->_personPotentialSuggestions = 0;

  birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  self->_birthdayPersonPotentialSuggestionEnumerator = 0;

  longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  self->_longTimeNoSeePersonPotentialSuggestionEnumerator = 0;

  personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  self->_personPotentialSuggestionEnumerator = 0;

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  usedPersonLocalIdentifiers = self->_usedPersonLocalIdentifiers;
  self->_usedPersonLocalIdentifiers = v14;

  workingContext = [session workingContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__PGRecentPersonCentricSuggester_startSuggestingWithOptions___block_invoke;
  v19[3] = &unk_27888A3B8;
  v19[4] = self;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v19];

  options = self->_options;
  self->_options = optionsCopy;
  v18 = optionsCopy;
}

void __61__PGRecentPersonCentricSuggester_startSuggestingWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 graph];
  v3 = [v5 meNodeWithFallbackInferredMeNode];
  v4 = [v3 localIdentifier];
  if ([v4 length])
  {
    [*(*(a1 + 32) + 72) addObject:v4];
  }
}

@end