@interface PGPetWallpaperSuggester
+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics;
+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (id)prefilteringInternalPredicateWithContext:(id)context;
- (PGPetWallpaperSuggester)initWithSession:(id)session;
- (id)candidatesForPet:(id)pet;
- (id)fetchPets;
- (id)sortedCandidatesByPetLocalIdentifierFromPets:(id)pets maximumNumberOfSuggestions:(unint64_t)suggestions progressReporter:(id)reporter;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)logPosterFilteringStatistics:(id *)statistics;
- (void)setupFilteringContexts;
@end

@implementation PGPetWallpaperSuggester

- (void)logPosterFilteringStatistics:(id *)statistics
{
  v38 = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var0 = statistics->var0;
    var1 = statistics->var1;
    var2 = statistics->var2;
    var3 = statistics->var3;
    var4 = statistics->var4;
    var5 = statistics->var5;
    var6 = statistics->var6;
    var7 = statistics->var7;
    var8 = statistics->var8;
    var9 = statistics->var9;
    var10 = statistics->var10;
    v17[0] = 67111680;
    v17[1] = var0;
    v18 = 1024;
    v19 = var1;
    v20 = 1024;
    v21 = var2;
    v22 = 1024;
    v23 = var3;
    v24 = 1024;
    v25 = var4;
    v26 = 1024;
    v27 = var5;
    v28 = 1024;
    v29 = var6;
    v30 = 1024;
    v31 = var7;
    v32 = 1024;
    v33 = var8;
    v34 = 1024;
    v35 = var9;
    v36 = 1024;
    v37 = var10;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for positive people scene, %d for low light, %d for sensitive location", v17, 0x44u);
  }
}

- (id)candidatesForPet:(id)pet
{
  v90 = *MEMORY[0x277D85DE8];
  petCopy = pet;
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  curationContext = [session curationContext];
  loggingConnection = [session loggingConnection];
  v8 = os_signpost_id_generate(loggingConnection);
  v9 = loggingConnection;
  v10 = v9;
  v49 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGPetWallpaperFindCandidateForPet", "", buf, 2u);
  }

  spid = v8;

  info = 0;
  mach_timebase_info(&info);
  v48 = mach_absolute_time();
  v52 = photoLibrary;
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844853B8];
  v12 = objc_opt_class();
  primaryFilteringContext = [(PGPetWallpaperSuggester *)self primaryFilteringContext];
  v14 = [v12 prefilteringInternalPredicateWithContext:primaryFilteringContext];
  [librarySpecificFetchOptions setInternalPredicate:v14];

  v51 = librarySpecificFetchOptions;
  v15 = [MEMORY[0x277CD9868] fetchFacesForPerson:petCopy options:librarySpecificFetchOptions];
  v16 = v10;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v15 count];
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu faces.", buf, 0xCu);
  }

  v54 = petCopy;

  selfCopy = self;
  v50 = +[PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:](PGWallpaperSuggestionUtilities, "assetFetchPropertySetsIncludingGating:", [objc_opt_class() filtersForTopSuggestions]);
  v18 = [MEMORY[0x277CD97A8] fetchAssetsGroupedByFaceUUIDForFaces:v15 fetchPropertySets:?];
  v19 = MEMORY[0x277CD97A8];
  allValues = [v18 allValues];
  [v19 prefetchOnAssets:allValues options:14 curationContext:curationContext];

  v21 = v16;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v18 count];
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu assets.", buf, 0xCu);
  }

  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = session;
  forbiddenAssetUUIDs = [session forbiddenAssetUUIDs];
  v88 = 0u;
  memset(v89, 0, 28);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  *buf = 0u;
  v83 = 0u;
  v71 = 0u;
  memset(v72, 0, 28);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v15;
  v23 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v62;
    do
    {
      v26 = 0;
      v57 = v24;
      do
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v61 + 1) + 8 * v26);
        uuid = [v27 uuid];
        v29 = [v18 objectForKeyedSubscript:uuid];

        if (v29)
        {
          uuid2 = [v29 uuid];
          v31 = [forbiddenAssetUUIDs containsObject:uuid2];

          if (v31)
          {
            v32 = v21;
            if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_INFO))
            {
              uuid3 = [v29 uuid];
              *v74 = 138412290;
              *&v74[4] = uuid3;
              _os_log_impl(&dword_22F0FC000, &v32->super, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Avoiding asset %@ because it has been rejected by the user", v74, 0xCu);
            }
          }

          else
          {
            v32 = [[PGPetWallpaperSuggestionCandidate alloc] initWithFace:v27 inAsset:v29];
            v34 = objc_opt_class();
            primaryFilteringContext2 = [(PGPetWallpaperSuggester *)selfCopy primaryFilteringContext];
            LODWORD(v34) = [v34 candidate:v32 passesFilteringWithContext:primaryFilteringContext2 curationContext:curationContext thresholdHelper:selfCopy->_peopleSceneConfidenceThresholdHelper statistics:buf];

            if (v34)
            {
              if (!selfCopy->_secondaryFilteringContext || (v36 = objc_opt_class(), -[PGPetWallpaperSuggester secondaryFilteringContext](selfCopy, "secondaryFilteringContext"), v37 = objc_claimAutoreleasedReturnValue(), LODWORD(v36) = [v36 candidate:v32 passesFilteringWithContext:v37 curationContext:curationContext thresholdHelper:selfCopy->_peopleSceneConfidenceThresholdHelper statistics:&v65], v37, v36))
              {
                [v55 addObject:v32];
              }
            }

            v24 = v57;
          }
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
    }

    while (v24);
  }

  v38 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v41 = v21;
  v42 = v41;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *v74 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGPetWallpaperFindCandidateForPet", "", v74, 2u);
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *v74 = 136315394;
    *&v74[4] = "PGPetWallpaperFindCandidateForPet";
    *&v74[12] = 2048;
    *&v74[14] = ((((v38 - v48) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v74, 0x16u);
  }

  v43 = v42;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = [v55 count];
    localIdentifier = [v54 localIdentifier];
    *v74 = 67109378;
    *&v74[4] = v44;
    *&v74[8] = 2112;
    *&v74[10] = localIdentifier;
    _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %d candidates after postfiltering for Pet %@", v74, 0x12u);
  }

  v79 = v88;
  v80[0] = v89[0];
  *(v80 + 12) = *(v89 + 12);
  v75 = v84;
  v76 = v85;
  v77 = v86;
  v78 = v87;
  *v74 = *buf;
  *&v74[16] = v83;
  [(PGPetWallpaperSuggester *)selfCopy logPosterFilteringStatistics:v74];
  if (selfCopy->_secondaryFilteringContext)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *v74 = 0;
      _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Secondary filtering...", v74, 2u);
    }

    v79 = v71;
    v80[0] = v72[0];
    *(v80 + 12) = *(v72 + 12);
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v78 = v70;
    *v74 = v65;
    *&v74[16] = v66;
    [(PGPetWallpaperSuggester *)selfCopy logPosterFilteringStatistics:v74];
  }

  if (*&buf[4] >= 1)
  {
    [MEMORY[0x277D3C798] logInfo:v43 prefix:@"[PGPetWallpaperSuggester]" avoidForKeyAssetStatistics:&v84 + 12];
  }

  return v55;
}

- (id)sortedCandidatesByPetLocalIdentifierFromPets:(id)pets maximumNumberOfSuggestions:(unint64_t)suggestions progressReporter:(id)reporter
{
  v64 = *MEMORY[0x277D85DE8];
  petsCopy = pets;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v61 = 231;
      *&v61[4] = 2080;
      *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEC10];
  }

  else
  {
    v45 = reporterCopy;
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    v11 = os_signpost_id_generate(loggingConnection);
    v12 = loggingConnection;
    v13 = v12;
    v43 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGPetWallpaperSuggesterFindCandidateForAllPets", "", buf, 2u);
    }

    spid = v11;

    info = 0;
    mach_timebase_info(&info);
    v42 = mach_absolute_time();
    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v46 = petsCopy;
    obj = petsCopy;
    v51 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v51)
    {
      v49 = *v56;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v56 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = v13;
            uuid = [v15 uuid];
            *buf = 138412290;
            *v61 = uuid;
            _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Finding candidates for Pet %@", buf, 0xCu);
          }

          v52 = v15;
          spid = [(PGPetWallpaperSuggester *)self candidatesForPet:v15, spid];
          v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
          v62[0] = v18;
          v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"headroomEngaged" ascending:1];
          v62[1] = v19;
          [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
          v21 = v20 = v13;
          v62[2] = v21;
          v22 = [MEMORY[0x277D3C828] cropScoreSortDescriptorForOrientation:{-[PGPetWallpaperSuggesterFilteringContext orientation](self->_primaryFilteringContext, "orientation")}];
          v62[3] = v22;
          v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
          v62[4] = v23;
          [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
          v25 = v24 = self;
          v62[5] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:6];

          self = v24;
          v13 = v20;

          v27 = MEMORY[0x277D3C810];
          primaryFilteringContext = [(PGPetWallpaperSuggester *)v24 primaryFilteringContext];
          [primaryFilteringContext timeIntervalForCandidateDeduping];
          v29 = [v27 sortedDedupedCandidatesFromCandidates:spid sortDescriptors:v26 timeIntervalForCandidateDeduping:suggestions targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

          if ([spid count])
          {
            localIdentifier = [v52 localIdentifier];
            [v48 setObject:v29 forKeyedSubscript:localIdentifier];

            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v31 = v13;
              v32 = [spid count];
              *buf = 134217984;
              *v61 = v32;
              _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu candidates.", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(context);
        }

        v51 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v51);
    }

    reporterCopy = v45;
    if ([v45 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v61 = 258;
        *&v61[4] = 2080;
        *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEC10];
      petsCopy = v46;
      v33 = session;
      v34 = v48;
    }

    else
    {
      v35 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v38 = v13;
      v39 = v38;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_END, spid, "PGPetWallpaperSuggesterFindCandidateForAllPets", "", buf, 2u);
      }

      v33 = session;
      v34 = v48;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v61 = "PGPetWallpaperSuggesterFindCandidateForAllPets";
        *&v61[8] = 2048;
        *&v61[10] = ((((v35 - v42) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v9 = v48;
      petsCopy = v46;
    }
  }

  return v9;
}

- (id)fetchPets
{
  v24 = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v4 = os_signpost_id_generate(loggingConnection);
  v5 = loggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGPetWallpaperSuggesterFetchPets", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Fetching inferred user's pets and user-verified pets... (Pets Parity enabled)", buf, 2u);
  }

  workingContext = [session workingContext];
  curationContext = [session curationContext];
  v10 = [PGGraphPetIdentityProcessor fetchInterestingEligiblePetsForWallpaperWithWorkingContext:workingContext curationContext:curationContext];

  v11 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v14 = v6;
  v15 = v14;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_END, v4, "PGPetWallpaperSuggesterFetchPets", "", buf, 2u);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "PGPetWallpaperSuggesterFetchPets";
    v22 = 2048;
    v23 = ((((v11 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v16 = v15;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v10 count];
    *buf = 134217984;
    v21 = v17;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu pets", buf, 0xCu);
  }

  return v10;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v60 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v8 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:progressCopy];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v9 = [v8 isCancelledWithProgress:0.0];
  *(v55 + 24) = v9;
  if (!v9)
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
    v14 = loggingConnection;
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGPetWallpaperSuggester", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v40 = mach_absolute_time();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v59 = maximumNumberOfSuggestions;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Starting to generate %d suggestions.", buf, 8u);
    }

    fetchPets = [(PGPetWallpaperSuggester *)self fetchPets];
    if (v55[3])
    {
      *(v55 + 24) = 1;
LABEL_13:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v59 = 102;
        *&v59[4] = 2080;
        *&v59[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_40;
    }

    v18 = [v8 isCancelledWithProgress:0.2];
    *(v55 + 24) = v18;
    if (v18)
    {
      goto LABEL_13;
    }

    v38 = [v8 childProgressReporterFromStart:0.2 toEnd:0.79];
    v39 = [(PGPetWallpaperSuggester *)self sortedCandidatesByPetLocalIdentifierFromPets:fetchPets maximumNumberOfSuggestions:maximumNumberOfSuggestions progressReporter:?];
    if (v55[3])
    {
      *(v55 + 24) = 1;
LABEL_19:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v59 = 107;
        *&v59[4] = 2080;
        *&v59[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_39;
    }

    v19 = [v8 isCancelledWithProgress:0.8];
    *(v55 + 24) = v19;
    if (v19)
    {
      goto LABEL_19;
    }

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    suggestionTypes = [objc_opt_class() suggestionTypes];
    firstIndex = [suggestionTypes firstIndex];

    suggestionSubtypes = [objc_opt_class() suggestionSubtypes];
    firstIndex2 = [suggestionSubtypes firstIndex];

    v22 = self->_assetGater == 0;
    v23 = 5;
    if (!self->_assetGater)
    {
      v23 = 0;
    }

    v24 = 2 * maximumNumberOfSuggestions;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __59__PGPetWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
    v42[3] = &unk_27887EBF0;
    if (v22)
    {
      v24 = 0;
    }

    v48 = maximumNumberOfSuggestions;
    v49 = v23;
    v50 = v24;
    v25 = v17;
    v43 = v25;
    v47 = &v54;
    v26 = v8;
    v51 = firstIndex;
    v52 = firstIndex2;
    v44 = v26;
    selfCopy = self;
    v27 = v36;
    v46 = v27;
    [v39 enumerateKeysAndObjectsUsingBlock:v42];
    if (v55[3])
    {
      *(v55 + 24) = 1;
    }

    else
    {
      v28 = [v26 isCancelledWithProgress:1.0];
      *(v55 + 24) = v28;
      if ((v28 & 1) == 0)
      {
        v37 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v31 = v25;
        v32 = v31;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, v15, "PGPetWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v59 = "PGPetWallpaperSuggester";
          *&v59[8] = 2048;
          *&v59[10] = ((((v37 - v40) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v10 = v27;
        goto LABEL_38;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v59 = 211;
      *&v59[4] = 2080;
      *&v59[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_38:

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v59 = 91;
    *&v59[4] = 2080;
    *&v59[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_41:
  _Block_object_dispose(&v54, 8);

  return v10;
}

void __59__PGPetWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v74 = a2;
  v7 = a3;
  v70 = [[PGWallpaperSuggestionAccumulator alloc] initWithTargetNumberOfSuggestions:*(a1 + 72) targetMinimumNumberOfGatedSuggestions:*(a1 + 80) maximumNumberOfSuggestionsToTryForGating:*(a1 + 88) loggingConnection:*(a1 + 32)];
  v8 = [MEMORY[0x277CBEAA8] date];
  v73 = [v8 dateByAddingTimeInterval:120.0];
  v9 = [v7 count];
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = v10;
    v13 = [v11 numberWithDouble:120.0];
    buf = 67109890;
    LODWORD(v82[0]) = v9;
    WORD2(v82[0]) = 2112;
    *(v82 + 6) = v8;
    HIWORD(v82[1]) = 2112;
    v82[2] = v13;
    LOWORD(v83[0]) = 2112;
    *(v83 + 2) = v73;
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Start processing %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", &buf, 0x26u);
  }

  v67 = v8;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v7;
  v71 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (!v71)
  {
    v66 = 0;
    v68 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    goto LABEL_51;
  }

  v65 = a4;
  v66 = 0;
  v14 = 0;
  v68 = 0;
  v15 = 0;
  v16 = 0;
  v72 = *v77;
  do
  {
    v17 = 0;
    do
    {
      if (*v77 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v76 + 1) + 8 * v17);
      v19 = *(*(a1 + 64) + 8);
      if (*(v19 + 24))
      {
        v20 = 1;
      }

      else
      {
        v20 = [*(a1 + 40) isCancelledWithProgress:0.85];
        v19 = *(*(a1 + 64) + 8);
      }

      *(v19 + 24) = v20;
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        *v65 = 1;
        v51 = obj;
        v52 = v67;
        goto LABEL_59;
      }

      v21 = [PGPetWallpaperSuggestion alloc];
      v22 = *(a1 + 96);
      v23 = *(a1 + 98);
      v24 = [v18 asset];
      v25 = [(PGPetWallpaperSuggestion *)v21 initWithPetLocalIdentifier:v74 type:v22 subtype:v23 asset:v24];

      v75 = 1;
      if (!*(*(a1 + 48) + 48))
      {
        ++v16;
LABEL_19:
        v35 = 1;
        goto LABEL_27;
      }

      v26 = [v18 asset];
      v27 = [PGSettlingEffectWallpaperSuggesterFilteringContext shouldRunSettlingEffectForAsset:v26 subtype:603];

      [*(*(a1 + 48) + 48) setEnableSettlingEffect:v27];
      v28 = *(*(a1 + 48) + 48);
      v29 = [v18 asset];
      v30 = [v28 gateAsset:v29 hasPetFace:&v75];

      -[PGSingleAssetSuggestion setAvailableFeatures:](v25, "setAvailableFeatures:", [v30 availableFeatures]);
      v31 = [v30 passesAnyGating];
      v14 += [v30 didTimeout];

      ++v16;
      if (v75 != 1 || (v31 & 1) != 0)
      {
        if ((v75 & v31) != 1)
        {
          if (v75)
          {
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        goto LABEL_19;
      }

      v32 = [v18 cropResult];
      v33 = [v32 cropForOrientation:{objc_msgSend(*(*(a1 + 48) + 64), "orientation")}];

      if ([*(*(a1 + 48) + 64) ignoreClockOverlap])
      {
        v34 = 0;
      }

      else
      {
        v34 = [v33 passesClockOverlap] ^ 1;
      }

      [v33 cropZoomRatio];
      v37 = v36;
      [*(*(a1 + 48) + 64) maximumCropZoomRatio];
      v39 = v38;
      [v33 cropScore];
      v41 = v40;
      [*(*(a1 + 48) + 64) minimumCropScore];
      v43 = v42;

      if ((v34 & 1) != 0 || v37 > v39 || v41 < v43)
      {
        if (v75)
        {
          if (v34)
          {
LABEL_36:
            ++HIDWORD(v68);
            v48 = @"clock overlap";
          }

          else if (v37 <= v39)
          {
            ++HIDWORD(v66);
            v48 = @"low cropScore";
          }

          else
          {
            LODWORD(v66) = v66 + 1;
            v48 = @"low resolution";
          }

LABEL_38:
          v49 = *(a1 + 32);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            buf = 138412290;
            v82[0] = v48;
            _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Rejecting non-gated suggestion because of %@.", &buf, 0xCu);
          }

          goto LABEL_28;
        }

LABEL_37:
        LODWORD(v68) = v68 + 1;
        v48 = @"no pet face";
        goto LABEL_38;
      }

      v35 = 0;
LABEL_27:
      [(PGWallpaperSuggestionAccumulator *)v70 addSuggestion:v25 passingGating:v35, v65];
      ++v15;
      if ([(PGWallpaperSuggestionAccumulator *)v70 accumulationIsComplete])
      {
        goto LABEL_50;
      }

LABEL_28:
      v44 = [MEMORY[0x277CBEAA8] date];
      [v73 timeIntervalSinceDate:v44];
      v46 = v45;
      v47 = *(a1 + 32);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        buf = 67109632;
        LODWORD(v82[0]) = v16;
        WORD2(v82[0]) = 1024;
        *(v82 + 6) = v15;
        WORD1(v82[1]) = 2048;
        *(&v82[1] + 4) = v46;
        _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", &buf, 0x18u);
      }

      if (v14 > 1 || v46 < 0.0)
      {
        v53 = *(a1 + 32);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          buf = 67109632;
          LODWORD(v82[0]) = v14;
          WORD2(v82[0]) = 1024;
          *(v82 + 6) = 1;
          WORD1(v82[1]) = 2048;
          *(&v82[1] + 4) = v46;
          _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", &buf, 0x18u);
        }

LABEL_50:
        goto LABEL_51;
      }

      ++v17;
    }

    while (v71 != v17);
    v50 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
    v71 = v50;
  }

  while (v50);
LABEL_51:

  v51 = [(PGWallpaperSuggestionAccumulator *)v70 suggestions];
  [*(a1 + 56) addObjectsFromArray:v51];
  v54 = *(*(a1 + 48) + 48);
  v55 = *(a1 + 32);
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
  if (v54)
  {
    v52 = v67;
    if (v56)
    {
      v57 = v55;
      v58 = [v51 count];
      v59 = [(PGWallpaperSuggestionAccumulator *)v70 numberOfGatedSuggestions];
      buf = 67109634;
      LODWORD(v82[0]) = v58;
      WORD2(v82[0]) = 1024;
      *(v82 + 6) = v59;
      WORD1(v82[1]) = 2112;
      *(&v82[1] + 4) = v74;
      v60 = "[PGPetWallpaperSuggester] Generated %d suggestions (%d gated) for pet %@";
      v61 = v57;
      v62 = 24;
      goto LABEL_56;
    }
  }

  else
  {
    v52 = v67;
    if (v56)
    {
      v57 = v55;
      v63 = [v51 count];
      buf = 67109378;
      LODWORD(v82[0]) = v63;
      WORD2(v82[0]) = 2112;
      *(v82 + 6) = v74;
      v60 = "[PGPetWallpaperSuggester] Generated %d suggestions for pet %@";
      v61 = v57;
      v62 = 18;
LABEL_56:
      _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, v60, &buf, v62);
    }
  }

  v64 = *(a1 + 32);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    buf = 67110400;
    LODWORD(v82[0]) = v16;
    WORD2(v82[0]) = 1024;
    *(v82 + 6) = v15;
    WORD1(v82[1]) = 1024;
    HIDWORD(v82[1]) = v68;
    LOWORD(v82[2]) = 1024;
    *(&v82[2] + 2) = HIDWORD(v68);
    HIWORD(v82[2]) = 1024;
    v83[0] = v66;
    LOWORD(v83[1]) = 1024;
    *(&v83[1] + 2) = HIDWORD(v66);
    _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Tried %d assets, %d passed, rejected %d for no pet face, %d for clock overlap, %d for low resolution, %d for low crop score.", &buf, 0x26u);
  }

LABEL_59:
}

- (void)setupFilteringContexts
{
  selfCopy = self;
  v3 = objc_opt_class();
  if (!selfCopy)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_11:
    v14 = _PFAssertFailHandler();
    [(PGPetWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGPetWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    objc_claimAutoreleasedReturnValue();
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_11;
  }

  IsIPad = PLPhysicalDeviceIsIPad();
  v5 = [PGPetWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGPetWallpaperSuggesterFilteringContext *)v5 initForPetsInOrientation:2];
    primaryFilteringContext = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v6;

    v8 = [[PGPetWallpaperSuggesterFilteringContext alloc] initForPetsInOrientation:1];
  }

  else
  {
    v9 = [(PGPetWallpaperSuggesterFilteringContext *)v5 initForPetsInOrientation:1];
    v10 = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = selfCopy->_secondaryFilteringContext;
  selfCopy->_secondaryFilteringContext = v8;
}

- (PGPetWallpaperSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = PGPetWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v13 initWithSession:sessionCopy];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      loggingConnection = [sessionCopy loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:2 loggingConnection:loggingConnection];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;
    }

    v10 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    peopleSceneConfidenceThresholdHelper = v5->_peopleSceneConfidenceThresholdHelper;
    v5->_peopleSceneConfidenceThresholdHelper = v10;

    [(PGPetWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v62[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844853E8];
  v14 = [MEMORY[0x277CD9868] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  if ([v14 count] == 1)
  {
    firstObject = [v14 firstObject];
    if (([firstObject detectionType] - 5) <= 0xFFFCu)
    {
      v16 = 0;
      if (reason)
      {
        *reason = @"No Pet Found";
      }

      goto LABEL_45;
    }

    reasonCopy = reason;
    v52 = firstObject;
    filtersForTopSuggestions = [objc_opt_class() filtersForTopSuggestions];
    v19 = [PGPetWallpaperSuggesterFilteringContext alloc];
    v47 = filtersForTopSuggestions;
    v49 = contextCopy;
    orientationCopy = orientation;
    if (filtersForTopSuggestions)
    {
      v20 = [(PGPetWallpaperSuggesterFilteringContext *)v19 initForTopPetsInOrientation:orientation];
    }

    else
    {
      v20 = [(PGPetWallpaperSuggesterFilteringContext *)v19 initForPetsInOrientation:orientation];
    }

    v21 = v20;
    v22 = [self prefilteringInternalPredicateWithContext:v20];
    [librarySpecificFetchOptions setInternalPredicate:v22];

    v23 = MEMORY[0x277CD9868];
    localIdentifier = [firstObject localIdentifier];
    v62[0] = localIdentifier;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
    v26 = [v23 fetchFacesWithLocalIdentifiers:v25 options:librarySpecificFetchOptions];
    firstObject2 = [v26 firstObject];

    v51 = v21;
    if (!firstObject2)
    {
      contextCopy = v49;
      v16 = 0;
      if (reasonCopy)
      {
        *reasonCopy = @"Fails Predicate";
      }

      firstObject = v52;
      goto LABEL_44;
    }

    v28 = [[PGPetWallpaperSuggestionCandidate alloc] initWithFace:firstObject2 inAsset:assetCopy];
    v29 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = v28;
    v31 = v28;
    contextCopy = v49;
    v45 = v29;
    v46 = firstObject2;
    if ([self candidate:v31 passesFilteringWithContext:v21 curationContext:v49 thresholdHelper:? statistics:?])
    {
      v16 = 1;
      v32 = reasonCopy;
      if (v47)
      {
        v33 = [PGWallpaperSuggestionAssetGater alloc];
        v34 = [(PGWallpaperSuggestionAssetGater *)v33 initWithType:2 loggingConnection:MEMORY[0x277D86220]];
        [(PGWallpaperSuggestionAssetGater *)v34 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v34 setIsUserInitiated:1];
        v53 = 1;
        asset = [(PGPetWallpaperSuggestionCandidate *)v30 asset];
        v36 = [(PGWallpaperSuggestionAssetGater *)v34 gateAsset:asset hasPetFace:&v53];

        v48 = v36;
        if (v53)
        {
          if ([v36 passesAnyGating])
          {
            v37 = @"Pass Segmented";
            v16 = 1;
          }

          else
          {
            cropResult = [(PGPetWallpaperSuggestionCandidate *)v30 cropResult];
            v39 = [cropResult cropForOrientation:orientationCopy];

            if (([v51 ignoreClockOverlap] & 1) != 0 || objc_msgSend(v39, "passesClockOverlap"))
            {
              [v39 cropScore];
              v41 = v40;
              [v51 minimumCropScore];
              v16 = v41 >= v42;
              if (v41 < v42)
              {
                v37 = @"Low Crop Score";
              }

              else
              {
                v37 = @"Pass Unsegmented";
              }
            }

            else
            {
              v16 = 0;
              v37 = @"Clock Overlap";
            }

            v32 = reasonCopy;
          }
        }

        else
        {
          v16 = 0;
          v37 = @"No Pet Face";
        }
      }

      else
      {
        v37 = @"Pass";
      }

      firstObject = v52;
      if (!v32)
      {
        goto LABEL_43;
      }
    }

    else
    {
      firstObject = v52;
      v32 = reasonCopy;
      if (!reasonCopy)
      {
        v16 = 0;
LABEL_43:

        firstObject2 = v46;
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }

      if (v54 <= 0)
      {
        if (SDWORD1(v54) <= 0)
        {
          if (SDWORD2(v54) <= 0)
          {
            if (SHIDWORD(v54) <= 0)
            {
              if (v55 <= 0)
              {
                if (SDWORD1(v55) <= 0)
                {
                  if (SDWORD2(v55) <= 0)
                  {
                    if (SHIDWORD(v55) <= 0)
                    {
                      if (v56 <= 0)
                      {
                        if (SDWORD1(v56) <= 0)
                        {
                          v16 = 0;
                          if (SDWORD2(v56) <= 0)
                          {
                            v37 = @"Unknown Reason";
                          }

                          else
                          {
                            v37 = @"Sensitive Location";
                          }
                        }

                        else
                        {
                          v16 = 0;
                          v37 = @"Low Light";
                        }
                      }

                      else
                      {
                        v16 = 0;
                        v37 = @"People Scene";
                      }
                    }

                    else
                    {
                      v16 = 0;
                      v37 = @"Not Safe for Display";
                    }

                    firstObject = v52;
                    v32 = reasonCopy;
                  }

                  else
                  {
                    v16 = 0;
                    v37 = @"Low Crop Score";
                  }
                }

                else
                {
                  v16 = 0;
                  v37 = @"Low Resolution";
                }
              }

              else
              {
                v16 = 0;
                v37 = @"Clock Overlap";
              }
            }

            else
            {
              v16 = 0;
              v37 = @"Low Wallpaper Score";
            }
          }

          else
          {
            v16 = 0;
            v37 = @"Low Aesthetics";
          }
        }

        else
        {
          v16 = 0;
          v37 = @"Avoid for Key Asset";
        }
      }

      else
      {
        v16 = 0;
        v37 = @"Is Utility";
      }
    }

    *v32 = v37;
    goto LABEL_43;
  }

  if (reason)
  {
    if ([v14 count] <= 1)
    {
      v17 = @"No Face";
    }

    else
    {
      v17 = @"Too Many Faces";
    }

    v16 = 0;
    *reason = v17;
  }

  else
  {
    v16 = 0;
  }

LABEL_46:

  return v16;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics
{
  candidateCopy = candidate;
  contextCopy = context;
  curationContextCopy = curationContext;
  helperCopy = helper;
  asset = [candidateCopy asset];
  curationModel = [asset curationModel];
  [contextCopy minimumWallpaperScore];
  v18 = v17;
  if (v17 < 0.0)
  {
    wallpaperScoreModel = [curationModel wallpaperScoreModel];
    face = [candidateCopy face];
    detectionType = [face detectionType];

    v18 = 1.79769313e308;
    if (detectionType > 2u)
    {
      if (detectionType == 3)
      {
        dogNode = [wallpaperScoreModel dogNode];
        goto LABEL_13;
      }

      if (detectionType == 4)
      {
        dogNode = [wallpaperScoreModel catNode];
LABEL_13:
        v23 = dogNode;
        [dogNode operatingPoint];
        v18 = v24;
      }
    }

    else
    {
      if (detectionType < 2u)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "This is supposed to be a pet!!!", v50, 2u);
        }

        v18 = 1.79769313e308;
        goto LABEL_14;
      }

      if (detectionType == 2)
      {
        dogNode = [wallpaperScoreModel petNode];
        goto LABEL_13;
      }
    }

LABEL_14:
  }

  [candidateCopy wallpaperScore];
  if (v18 > v25)
  {
    v26 = 0;
    ++statistics->var3;
    goto LABEL_43;
  }

  userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];
  v28 = [curationModel isUtilityForMemoriesWithAsset:asset userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];

  if (v28)
  {
    v26 = 0;
    ++statistics->var0;
    goto LABEL_43;
  }

  if ([curationModel avoidIfPossibleForKeyAssetWithAsset:asset statistics:&statistics->var11])
  {
    v26 = 0;
    ++statistics->var1;
    goto LABEL_43;
  }

  if (([curationModel isAestheticallyPrettyGoodWithAsset:asset] & 1) == 0)
  {
    v26 = 0;
    ++statistics->var2;
    goto LABEL_43;
  }

  if (([contextCopy bypassCropScoreCheck] & 1) == 0)
  {
    cropResult = [candidateCopy cropResult];
    v30 = [cropResult cropForOrientation:{objc_msgSend(contextCopy, "orientation")}];

    if (([contextCopy ignoreClockOverlap] & 1) == 0 && !objc_msgSend(v30, "passesClockOverlap"))
    {
      v34 = 16;
      goto LABEL_41;
    }

    [candidateCopy setHeadroomEngaged:{objc_msgSend(v30, "headroomEngaged")}];
    if ([v30 layoutVariant] != 2)
    {
      [v30 cropZoomRatio];
      v32 = v31;
      [contextCopy maximumCropZoomRatio];
      if (v32 > v33)
      {
        v34 = 20;
LABEL_41:
        ++*(&statistics->var0 + v34);
        goto LABEL_42;
      }
    }

    [v30 cropScore];
    v36 = v35;
    [contextCopy minimumCropScore];
    if (v36 < v37)
    {
      ++statistics->var6;
LABEL_42:

      v26 = 0;
      goto LABEL_43;
    }
  }

  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:asset])
  {
    if ([PGWallpaperSuggestionUtilities foundDominantPeopleSceneInAsset:asset withConfidenceThresholdHelper:helperCopy])
    {
      v26 = 0;
      ++statistics->var8;
    }

    else
    {
      [contextCopy maximumLowLightScore];
      v39 = v38;
      if (v38 < 0.0)
      {
        curationModel2 = [asset curationModel];
        aestheticsModel = [curationModel2 aestheticsModel];
        lowLightNode = [aestheticsModel lowLightNode];
        [lowLightNode operatingPoint];
        v39 = v43;
      }

      aestheticProperties = [asset aestheticProperties];
      [aestheticProperties lowLight];
      v46 = v45;

      if (v39 >= v46)
      {
        asset2 = [candidateCopy asset];
        v49 = [PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:asset2];

        if (v49)
        {
          v26 = 0;
          ++statistics->var10;
        }

        else
        {
          v26 = 1;
        }
      }

      else
      {
        v26 = 0;
        ++statistics->var9;
      }
    }
  }

  else
  {
    v26 = 0;
    ++statistics->var7;
  }

LABEL_43:

  return v26;
}

+ (id)prefilteringInternalPredicateWithContext:(id)context
{
  v3 = MEMORY[0x277CBEB18];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CCAC30];
  [contextCopy minimumFaceSize];
  v8 = v7;
  [contextCopy maximumFaceSize];
  v10 = v9;

  v11 = [v6 predicateWithFormat:@"%K >= %f AND %K < %f", @"size", v8, @"size", v10];
  [v5 addObject:v11];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == %d", @"assetForFace", @"kind", 0];
  [v5 addObject:v12];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K.%K IN %@)", @"assetForFace", @"playbackStyle", &unk_2844853D0];
  [v5 addObject:v13];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K != %d", @"assetForFace", @"kindSubtype", 1];
  [v5 addObject:v14];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K.@count == %d", @"assetForFace", @"detectedFaces", 1];
  [v5 addObject:v15];
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == NO AND %K.%K == %d", @"assetForFace", @"hidden", @"assetForFace", @"trashedState", 0];
  [v5 addObject:v16];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K.%K >= %d", @"assetForFace", @"additionalAttributes", @"sceneAnalysisVersion", 77];
  [v5 addObject:v17];
  v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];

  return v18;
}

@end