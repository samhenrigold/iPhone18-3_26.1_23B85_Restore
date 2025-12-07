@interface PGGraphPetIdentityProcessor
+ (id)fetchInterestingEligiblePetsForWallpaperWithWorkingContext:(id)context curationContext:(id)curationContext;
+ (id)fetchPetPersonsWithDetectionType:(signed __int16)type photoLibrary:(id)library;
+ (id)fetchPetPersonsWithNoKeyFaceAndDetectionType:(signed __int16)type photoLibrary:(id)library;
- (PGGraph)graph;
- (PGGraphPetIdentityProcessor)initWithDetectionType:(signed __int16)type photoLibrary:(id)library graph:(id)graph loggingConnection:(id)connection cache:(id)cache;
- (PHPhotoLibrary)photoLibrary;
- (id)fetchPetPersons;
@end

@implementation PGGraphPetIdentityProcessor

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (PGGraph)graph
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);

  return WeakRetained;
}

- (id)fetchPetPersons
{
  v3 = objc_opt_class();
  detectionType = [(PGGraphPetIdentityProcessor *)self detectionType];
  photoLibrary = [(PGGraphPetIdentityProcessor *)self photoLibrary];
  v6 = [v3 fetchPetPersonsWithDetectionType:detectionType photoLibrary:photoLibrary];

  return v6;
}

- (PGGraphPetIdentityProcessor)initWithDetectionType:(signed __int16)type photoLibrary:(id)library graph:(id)graph loggingConnection:(id)connection cache:(id)cache
{
  libraryCopy = library;
  graphCopy = graph;
  connectionCopy = connection;
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = PGGraphPetIdentityProcessor;
  v16 = [(PGGraphPetIdentityProcessor *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_detectionType = type;
    objc_storeWeak(&v16->_graph, graphCopy);
    objc_storeWeak(&v17->_photoLibrary, libraryCopy);
    objc_storeStrong(&v17->_loggingConnection, connection);
    objc_storeStrong(&v17->_cache, cache);
  }

  return v17;
}

+ (id)fetchInterestingEligiblePetsForWallpaperWithWorkingContext:(id)context curationContext:(id)curationContext
{
  v44[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  curationContextCopy = curationContext;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4845;
  v42 = __Block_byref_object_dispose__4846;
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __106__PGGraphPetIdentityProcessor_fetchInterestingEligiblePetsForWallpaperWithWorkingContext_curationContext___block_invoke;
  v37[3] = &unk_27888A5C0;
  v37[4] = &v38;
  [contextCopy performSynchronousConcurrentGraphReadUsingBlock:v37];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"localIdentifier", v39[5]];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"type", 1];
  photoLibrary = [contextCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844854C0];
  if ([v39[5] count])
  {
    v11 = MEMORY[0x277CCA920];
    v44[0] = v7;
    v44[1] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v13 = [v11 orPredicateWithSubpredicates:v12];
    [librarySpecificFetchOptions setPredicate:v13];
  }

  else
  {
    [librarySpecificFetchOptions setPredicate:v8];
  }

  v14 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
  if ([v14 count])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__4845;
    v35 = __Block_byref_object_dispose__4846;
    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __106__PGGraphPetIdentityProcessor_fetchInterestingEligiblePetsForWallpaperWithWorkingContext_curationContext___block_invoke_269;
    v30[3] = &unk_2788800B8;
    v30[4] = &v31;
    [v14 enumerateObjectsUsingBlock:v30];
    userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];
    allKeys = [v32[5] allKeys];
    v17 = [userFeedbackCalculator userFeedbackTypeByPersonUUIDForPersonUUIDs:allKeys];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4845;
    v28 = __Block_byref_object_dispose__4846;
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __106__PGGraphPetIdentityProcessor_fetchInterestingEligiblePetsForWallpaperWithWorkingContext_curationContext___block_invoke_2;
    v23[3] = &unk_27887F768;
    v23[4] = &v31;
    v23[5] = &v24;
    [v17 enumerateKeysAndObjectsUsingBlock:v23];
    v18 = [v25[5] count];
    if (v18 == [v14 count])
    {
      v19 = v14;
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CD9888]);
      v19 = [v21 initWithExistingFetchResult:v14 filteredObjectIDs:v25[5]];
    }

    v20 = v19;
    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v20 = v14;
  }

  _Block_object_dispose(&v38, 8);

  return v20;
}

void __106__PGGraphPetIdentityProcessor_fetchInterestingEligiblePetsForWallpaperWithWorkingContext_curationContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 meNode];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 collection];
    v7 = [v6 ownedPetNodes];
    v8 = [v7 localIdentifiers];
    v9 = [v8 allObjects];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(*(*(a1 + 32) + 8) + 40) sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = +[PGLogging sharedLogging];
    v16 = [v15 loggingConnection];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEFAULT, "[PetIdentityProcessor] No me node in graph, cannot find user's inferred pets for wallpaper suggestions! Still searching for favorited pets...", v17, 2u);
    }
  }
}

void __106__PGGraphPetIdentityProcessor_fetchInterestingEligiblePetsForWallpaperWithWorkingContext_curationContext___block_invoke_269(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __106__PGGraphPetIdentityProcessor_fetchInterestingEligiblePetsForWallpaperWithWorkingContext_curationContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 unsignedIntValue] - 4 <= 0xFFFFFFFD)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = [v6 objectID];
      [v8 addObject:v9];
    }

    else
    {
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Unable to find pet for UUID %@", &v12, 0xCu);
      }
    }
  }
}

+ (id)fetchPetPersonsWithNoKeyFaceAndDetectionType:(signed __int16)type photoLibrary:(id)library
{
  typeCopy = type;
  v11[1] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:v7];

  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludeTorsoOnlyPerson:1];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = nil", @"keyFace"];
  [librarySpecificFetchOptions setInternalPredicate:v8];

  v9 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v9;
}

+ (id)fetchPetPersonsWithDetectionType:(signed __int16)type photoLibrary:(id)library
{
  typeCopy = type;
  v10[1] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:v7];

  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludeTorsoOnlyPerson:1];
  v8 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v8;
}

@end