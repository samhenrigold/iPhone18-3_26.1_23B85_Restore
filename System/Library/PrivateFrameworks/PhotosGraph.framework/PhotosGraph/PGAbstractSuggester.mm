@interface PGAbstractSuggester
+ (id)_sharedLibraryPersonIdentifiersInLibrary:(id)library withScope:(id)scope;
+ (id)internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:(unint64_t)version;
+ (id)suggestedPersonLocalIdentifiersFromSharingSuggestionResults:(id)results forMomentNodes:(id)nodes containsUnverifiedPersons:(BOOL *)persons;
+ (id)suggesterWithSession:(id)session;
- (BOOL)assetIsValidForSuggesting:(id)suggesting;
- (BOOL)hasSuggestableScenesWithAsset:(id)asset;
- (BOOL)processedAssetIsValidForSuggesting:(id)suggesting allowGuestAsset:(BOOL)asset;
- (PGAbstractSuggester)initWithSession:(id)session;
- (PGSuggestionSession)session;
- (double)userFeedbackScoreWithAsset:(id)asset;
- (id)defaultAssetFetchOptionsWithInternalPredicate:(id)predicate;
- (id)sharingSuggestionResultsForMomentNodes:(id)nodes withWorkingContext:(id)context;
- (void)_prefetchSharedLibraryStateIfNeeded;
@end

@implementation PGAbstractSuggester

- (PGSuggestionSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (id)sharingSuggestionResultsForMomentNodes:(id)nodes withWorkingContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  contextCopy = context;
  if ([nodesCopy count])
  {
    v32 = [[PGSharingManager alloc] initWithWorkingContext:contextCopy];
    v8 = objc_opt_new();
    [v8 setSharingStream:1];
    v31 = v8;
    [v8 setIncludeUnverified:1];
    v9 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = nodesCopy;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v10);
          }

          localIdentifier = [*(*(&v37 + 1) + 8 * i) localIdentifier];
          [v9 addObject:localIdentifier];
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
    }

    v17 = v31;
    v16 = v32;
    v18 = [(PGSharingManager *)v32 suggestionResultsForAssetLocalIdentifiers:0 momentLocalIdentifiers:v9 options:v31];
    [(PGAbstractSuggester *)self _prefetchSharedLibraryStateIfNeeded];
    if (self->_isSharedLibraryEnabled)
    {
      v29 = contextCopy;
      v30 = nodesCopy;
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * j);
            person = [v25 person];
            localIdentifier2 = [person localIdentifier];

            if (!localIdentifier2 || ![(NSSet *)self->_sharedLibraryPersonIdentifiers containsObject:localIdentifier2])
            {
              [v19 addObject:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v22);
      }

      contextCopy = v29;
      nodesCopy = v30;
      v17 = v31;
      v16 = v32;
    }

    else
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

- (void)_prefetchSharedLibraryStateIfNeeded
{
  if (!self->_prefetchedSharedLibraryState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    photoLibrary = [WeakRetained photoLibrary];

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v6 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
    firstObject = [v6 firstObject];

    self->_isSharedLibraryEnabled = firstObject != 0;
    if (firstObject)
    {
      v8 = [PGAbstractSuggester _sharedLibraryPersonIdentifiersInLibrary:photoLibrary withScope:firstObject];
      sharedLibraryPersonIdentifiers = self->_sharedLibraryPersonIdentifiers;
      self->_sharedLibraryPersonIdentifiers = v8;
    }

    self->_prefetchedSharedLibraryState = 1;
  }
}

- (BOOL)hasSuggestableScenesWithAsset:(id)asset
{
  v24 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  suggestableScenesHelper = self->_suggestableScenesHelper;
  curationModel = [assetCopy curationModel];
  v7 = [(CLSSceneConfidenceThresholdHelper *)suggestableScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:curationModel];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  sceneClassifications = [assetCopy sceneClassifications];
  v9 = [sceneClassifications countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(sceneClassifications);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "extendedSceneIdentifier")}];
        v14 = [v7 objectForKeyedSubscript:v13];

        if (v14)
        {
          [v12 confidence];
          v16 = v15;
          [v14 doubleValue];
          if (v16 >= v17)
          {

            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = [sceneClassifications countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v9;
}

- (id)defaultAssetFetchOptionsWithInternalPredicate:(id)predicate
{
  v14[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:0];
  v8 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v9 = v8;
  if (predicateCopy)
  {
    v10 = MEMORY[0x277CCA920];
    v14[0] = predicateCopy;
    v14[1] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];
    [librarySpecificFetchOptions setInternalPredicate:v12];
  }

  else
  {
    [librarySpecificFetchOptions setInternalPredicate:v8];
  }

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];

  return librarySpecificFetchOptions;
}

- (BOOL)processedAssetIsValidForSuggesting:(id)suggesting allowGuestAsset:(BOOL)asset
{
  assetCopy = asset;
  suggestingCopy = suggesting;
  if ([suggestingCopy clsIsUtility] & 1) != 0 || (-[PGAbstractSuggester userFeedbackScoreWithAsset:](self, "userFeedbackScoreWithAsset:", suggestingCopy), v7 < *MEMORY[0x277CD9CB8]) || (objc_msgSend(suggestingCopy, "clsAvoidIfPossibleAsKeyItemForMemories:allowGuestAsset:", 0, assetCopy))
  {
    v8 = 0;
  }

  else
  {
    clsFaceInformationSummary = [suggestingCopy clsFaceInformationSummary];
    if ([clsFaceInformationSummary numberOfFaces])
    {
      v8 = [clsFaceInformationSummary numberOfGoodFacesOfVerifiedPersons] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (double)userFeedbackScoreWithAsset:(id)asset
{
  v27 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  uuid = [assetCopy uuid];
  clsPersonAndPetLocalIdentifiers = [assetCopy clsPersonAndPetLocalIdentifiers];
  v7 = [clsPersonAndPetLocalIdentifiers count];
  if (v7)
  {
    selfCopy = self;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = clsPersonAndPetLocalIdentifiers;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:*(*(&v22 + 1) + 8 * v13)];
          if (v14)
          {
            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    self = selfCopy;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  curationContext = [WeakRetained curationContext];
  userFeedbackCalculator = [curationContext userFeedbackCalculator];
  [userFeedbackCalculator scoreForKeyAssetUUID:uuid personsUUIDsInKeyAsset:v8 memoryFeatures:0];
  v19 = v18;

  return v19;
}

- (BOOL)assetIsValidForSuggesting:(id)suggesting
{
  suggestingCopy = suggesting;
  sceneAnalysisProperties = [suggestingCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  v7 = *MEMORY[0x277D3ADE8];
  v9 = sceneAnalysisVersion > v7 && ([suggestingCopy faceAdjustmentVersion], v8 = ;
  return v9;
}

- (PGAbstractSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v5 = [(PGAbstractSuggester *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
    v6->_lastSuggestionWasColliding = 0;
    v7 = objc_alloc(MEMORY[0x277D3C7B0]);
    v8 = +[PGGraphSceneNode suggestableSceneNames];
    allObjects = [v8 allObjects];
    v10 = [v7 initWithSceneNames:allObjects thresholdType:1];
    suggestableScenesHelper = v6->_suggestableScenesHelper;
    v6->_suggestableScenesHelper = v10;

    *&v6->_prefetchedSharedLibraryState = 0;
    sharedLibraryPersonIdentifiers = v6->_sharedLibraryPersonIdentifiers;
    v6->_sharedLibraryPersonIdentifiers = 0;
  }

  return v6;
}

+ (id)suggestedPersonLocalIdentifiersFromSharingSuggestionResults:(id)results forMomentNodes:(id)nodes containsUnverifiedPersons:(BOOL *)persons
{
  v42 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  nodesCopy = nodes;
  if ([resultsCopy count])
  {
    v30 = nodesCopy;
    personsCopy = persons;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = nodesCopy;
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v12 += [*(*(&v36 + 1) + 8 * i) numberOfAssetsWithPersons];
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
      v15 = v12 < 0xA;
    }

    else
    {
      v15 = 1;
    }

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = resultsCopy;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v33;
      do
      {
        v22 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v32 + 1) + 8 * v22);
          person = [v23 person];
          if ([person isVerified] && (objc_msgSend(v23, "sourceWeight"), v25 >= 1.0) && (v15 || (objc_msgSend(v23, "weight"), v26 > 1.0)))
          {
            localIdentifier = [person localIdentifier];
            [v16 addObject:localIdentifier];
          }

          else
          {
            v20 = 1;
          }

          ++v22;
        }

        while (v19 != v22);
        v28 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
        v19 = v28;
      }

      while (v28);
    }

    else
    {
      v20 = 0;
    }

    nodesCopy = v30;
    *personsCopy = v20 & 1;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (id)_sharedLibraryPersonIdentifiersInLibrary:(id)library withScope:(id)scope
{
  v58 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  scopeCopy = scope;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v38 = libraryCopy;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v37 = scopeCopy;
  [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:scopeCopy options:?];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v54 = 0u;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    v39 = *v52;
    do
    {
      v11 = 0;
      v41 = v9;
      do
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        personCondition = [v12 personCondition];
        v15 = personCondition;
        if (personCondition && [personCondition criteria] == 1)
        {
          personUUIDs = [v15 personUUIDs];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v17 = [personUUIDs countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v48;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v48 != v19)
                {
                  objc_enumerationMutation(personUUIDs);
                }

                v21 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v47 + 1) + 8 * i)];
                [v7 addObject:v21];
              }

              v18 = [personUUIDs countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v18);
          }

          v10 = v39;
          v9 = v41;
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v9);
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v37 options:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [v38 librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setFetchLimit:1];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v44;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v43 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        v31 = [MEMORY[0x277CD9938] fetchPersonForShareParticipant:v29 options:librarySpecificFetchOptions2];
        firstObject = [v31 firstObject];

        if (firstObject)
        {
          localIdentifier = [firstObject localIdentifier];
          [v42 addObject:localIdentifier];
        }

        objc_autoreleasePoolPop(v30);
      }

      v26 = [v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v26);
  }

  v34 = [v42 setByAddingObjectsFromSet:v7];

  return v34;
}

+ (id)internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:(unint64_t)version
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
  v12[0] = v5;
  v6 = MEMORY[0x277D3ACE0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v8 = [v6 predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToSceneVersion:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v4 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (id)suggesterWithSession:(id)session
{
  sessionCopy = session;
  v5 = [[self alloc] initWithSession:sessionCopy];

  return v5;
}

@end