@interface PGCityscapeWallpaperSuggester
+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics;
+ (BOOL)isPositiveWithUrbanSceneLabelsForAsset:(id)asset;
+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (CLSSceneTaxonomyHierarchy)sceneTaxonomy;
+ (id)candidatesFromAssets:(id)assets;
+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds;
- (PGCityscapeWallpaperSuggester)initWithSession:(id)session;
- (id)fetchCandidateAssets;
- (id)fetchUnsortedCandidatesWithProgressReporter:(id)reporter;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)logPosterFilteringStatistics:(id *)statistics;
- (void)setupFilteringContexts;
@end

@implementation PGCityscapeWallpaperSuggester

- (void)logPosterFilteringStatistics:(id *)statistics
{
  v41 = *MEMORY[0x277D85DE8];
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
    var11 = statistics->var11;
    v18[0] = 67111936;
    v18[1] = var0;
    v19 = 1024;
    v20 = var1;
    v21 = 1024;
    v22 = var2;
    v23 = 1024;
    v24 = var3;
    v25 = 1024;
    v26 = var9;
    v27 = 1024;
    v28 = var4;
    v29 = 1024;
    v30 = var5;
    v31 = 1024;
    v32 = var6;
    v33 = 1024;
    v34 = var7;
    v35 = 1024;
    v36 = var8;
    v37 = 1024;
    v38 = var10;
    v39 = 1024;
    v40 = var11;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for aesthetics+wallpaper, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for positive people scene, %d for low light, %d for sensitive location", v18, 0x4Au);
  }
}

- (id)fetchUnsortedCandidatesWithProgressReporter:(id)reporter
{
  v81 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 333;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    fetchCandidateAssets = [(PGCityscapeWallpaperSuggester *)self fetchCandidateAssets];
    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 339;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = loggingConnection;
      v8 = os_signpost_id_generate(v7);
      v9 = v7;
      v10 = v9;
      v38 = v8 - 1;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGCityscapeWallpaperSuggesterFilterCandidates", "", buf, 2u);
      }

      spid = v8;
      v39 = loggingConnection;

      info = 0;
      mach_timebase_info(&info);
      v37 = mach_absolute_time();
      v40 = [fetchCandidateAssets count] / 0xC8uLL;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      memset(buf, 0, sizeof(buf));
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      curationContext = [session curationContext];
      v11 = 0;
      v12 = 0;
      oslog = v10;
      v42 = reporterCopy;
      while (1)
      {
        v46 = v12;
        context = objc_autoreleasePoolPush();
        v45 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:?];
        v13 = [fetchCandidateAssets objectsAtIndexes:?];
        v14 = MEMORY[0x277CD97A8];
        curationContext2 = [session curationContext];
        [v14 prefetchOnAssets:v13 options:14 curationContext:curationContext2];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v50 objects:v72 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v51;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v51 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v50 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              if ([objc_opt_class() isPositiveWithUrbanSceneLabelsForAsset:v21])
              {
                v23 = [[PGCityscapeWallpaperSuggestionCandidate alloc] initWithAsset:v21];
                if ([objc_opt_class() candidate:v23 passesFilteringWithContext:self->_primaryFilteringContext curationContext:curationContext thresholdHelper:self->_peopleSceneConfidenceThresholdHelper statistics:buf] && (!self->_secondaryFilteringContext || objc_msgSend(objc_opt_class(), "candidate:passesFilteringWithContext:curationContext:thresholdHelper:statistics:", v23, self->_secondaryFilteringContext, curationContext, self->_peopleSceneConfidenceThresholdHelper, &v54)))
                {
                  [v48 addObject:v23];
                }

                ++v11;
              }

              objc_autoreleasePoolPop(v22);
            }

            v18 = [v16 countByEnumeratingWithState:&v50 objects:v72 count:16];
          }

          while (v18);
        }

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v24 = oslog;
          firstIndex = [v45 firstIndex];
          lastIndex = [v45 lastIndex];
          *v64 = 134218240;
          *&v64[4] = firstIndex;
          *&v64[12] = 2048;
          *&v64[14] = lastIndex;
          _os_log_debug_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEBUG, "[PGCityscapeWallpaperSuggester] processed candidates from %lu to %lu", v64, 0x16u);
        }

        reporterCopy = v42;
        if ([v42 isCancelledWithProgress:1.0 / (v40 + 1) * 0.8 * v46 + 0.2])
        {
          break;
        }

        objc_autoreleasePoolPop(context);
        v12 = v46 + 1;
        if (v46 == v40)
        {
          v28 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v31 = oslog;
          v32 = v31;
          if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
          {
            *v64 = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, spid, "PGCityscapeWallpaperSuggesterFilterCandidates", "", v64, 2u);
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *v64 = 136315394;
            *&v64[4] = "PGCityscapeWallpaperSuggesterFilterCandidates";
            *&v64[12] = 2048;
            *&v64[14] = ((((v28 - v37) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v64, 0x16u);
          }

          v27 = v48;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *v64 = 67109120;
            *&v64[4] = v11;
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Found %d positive cityscape assets", v64, 8u);
          }

          v33 = v32;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = [v48 count];
            *v64 = 67109120;
            *&v64[4] = v34;
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Found %d candidates after postfiltering", v64, 8u);
          }

          v69 = v78;
          v70 = v79;
          v71 = v80;
          v65 = v74;
          v66 = v75;
          v67 = v76;
          v68 = v77;
          *v64 = *buf;
          *&v64[16] = *&buf[16];
          [(PGCityscapeWallpaperSuggester *)self logPosterFilteringStatistics:v64];
          if (self->_secondaryFilteringContext)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *v64 = 0;
              _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Secondary filtering...", v64, 2u);
            }

            v69 = v60;
            v70 = v61;
            v71 = v62;
            v65 = v56;
            v66 = v57;
            v67 = v58;
            v68 = v59;
            *v64 = v54;
            *&v64[16] = v55;
            [(PGCityscapeWallpaperSuggester *)self logPosterFilteringStatistics:v64];
          }

          if (*&buf[4] >= 1)
          {
            [MEMORY[0x277D3C798] logInfo:v33 prefix:@"[PGCityscapeWallpaperSuggester]" avoidForKeyAssetStatistics:&v75];
          }

          v5 = v48;
          loggingConnection = v39;
          goto LABEL_50;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v64 = 67109378;
        *&v64[4] = 379;
        *&v64[8] = 2080;
        *&v64[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v64, 0x12u);
      }

      objc_autoreleasePoolPop(context);
      v5 = MEMORY[0x277CBEBF8];
      loggingConnection = v39;
      v27 = v48;
LABEL_50:
    }
  }

  return v5;
}

- (id)fetchCandidateAssets
{
  v30[1] = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v4 = os_signpost_id_generate(loggingConnection);
  v5 = loggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGCityscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  v10 = +[PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:](PGWallpaperSuggestionUtilities, "assetFetchPropertySetsIncludingGating:", [objc_opt_class() filtersForTopSuggestions]);
  [librarySpecificFetchOptions setFetchPropertySets:v10];

  v11 = objc_opt_class();
  forbiddenAssetUUIDs = [session forbiddenAssetUUIDs];
  v13 = [v11 prefilteringInternalPredicateWithForbiddenAssetUUIDs:forbiddenAssetUUIDs];
  [librarySpecificFetchOptions setInternalPredicate:v13];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v30[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v15];

  v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v17 = v6;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v16 count];
    *buf = 134217984;
    v27 = v18;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Fetched %lu candidate assets.", buf, 0xCu);
  }

  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v17;
  v23 = v22;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v4, "PGCityscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "PGCityscapeWallpaperSuggesterFetchCandidates";
    v28 = 2048;
    v29 = ((((v19 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v16;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v141[6] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v5 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  v6 = [v5 isCancelledWithProgress:0.0];
  *(v134 + 24) = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v139 = 131;
      *&v139[4] = 2080;
      *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_29;
  }

  maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
  session = [(PGAbstractSuggester *)self session];
  [session loggingConnection];
  v10 = v118 = session;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  spid = v11;
  v114 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGCityscapeWallpaperSuggester", "", buf, 2u);
  }

  oslog = v13;

  info = 0;
  mach_timebase_info(&info);
  v113 = mach_absolute_time();
  additionalOptions = [optionsCopy additionalOptions];

  if (additionalOptions)
  {
    additionalOptions2 = [optionsCopy additionalOptions];
    v16 = [additionalOptions2 objectForKey:@"filteringContext"];

    if (v16)
    {
      [(PGCityscapeWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext updateFilteringContextWithDictionary:v16];
      [(PGCityscapeWallpaperSuggesterFilteringContext *)self->_secondaryFilteringContext updateFilteringContextWithDictionary:v16];
    }
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v139 = maximumNumberOfSuggestions;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Starting to generate %d suggestions.", buf, 8u);
  }

  v17 = [v5 childProgressReporterFromStart:0.0 toEnd:0.39];
  [(PGCityscapeWallpaperSuggester *)self fetchUnsortedCandidatesWithProgressReporter:v17];
  v119 = v117 = v17;
  if (![v119 count])
  {
    if (v134[3])
    {
      *(v134 + 24) = 1;
    }

    else
    {
      v21 = [v5 isCancelledWithProgress:1.0];
      *(v134 + 24) = v21;
      if ((v21 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Found 0 unsorted candidate.", buf, 2u);
        }

        v32 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v35 = oslog;
        v36 = v35;
        if (v114 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, spid, "PGCityscapeWallpaperSuggester", "", buf, 2u);
        }

        if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        *buf = 136315394;
        *v139 = "PGCityscapeWallpaperSuggester";
        *&v139[8] = 2048;
        *&v139[10] = ((((v32 - v113) * numer) / denom) / 1000000.0);
        v20 = "[Performance] %s: %f ms";
        v19 = v36;
        v22 = 22;
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v139 = 154;
      *&v139[4] = 2080;
      *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      v19 = MEMORY[0x277D86220];
      v20 = "Cancelled at line %d in file %s";
      goto LABEL_25;
    }

LABEL_27:
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  if (v134[3])
  {
    *(v134 + 24) = 1;
    goto LABEL_20;
  }

  v18 = [v5 isCancelledWithProgress:0.4];
  *(v134 + 24) = v18;
  if (v18)
  {
LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v139 = 161;
      *&v139[4] = 2080;
      *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      v19 = MEMORY[0x277D86220];
      v20 = "Cancelled at line %d in file %s";
LABEL_25:
      v22 = 18;
LABEL_26:
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, v20, buf, v22);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
  v141[0] = v24;
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cropScorePenalty" ascending:1];
  v141[1] = v25;
  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
  v141[2] = v26;
  v27 = [MEMORY[0x277D3C828] cropScoreSortDescriptorForOrientation:{-[PGCityscapeWallpaperSuggesterFilteringContext orientation](self->_primaryFilteringContext, "orientation")}];
  v141[3] = v27;
  v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v141[4] = v28;
  v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
  v141[5] = v29;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:6];

  v30 = MEMORY[0x277D3C810];
  primaryFilteringContext = [(PGCityscapeWallpaperSuggester *)self primaryFilteringContext];
  [primaryFilteringContext timeIntervalForCandidateDeduping];
  v103 = [v30 sortedDedupedCandidatesFromCandidates:v119 sortDescriptors:v106 timeIntervalForCandidateDeduping:maximumNumberOfSuggestions targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

  if (v134[3])
  {
    *(v134 + 24) = 1;
LABEL_42:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v139 = 173;
      *&v139[4] = 2080;
      *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_128;
  }

  v37 = [v5 isCancelledWithProgress:0.8];
  *(v134 + 24) = v37;
  if (v37)
  {
    goto LABEL_42;
  }

  suggestionTypes = [objc_opt_class() suggestionTypes];
  firstIndex = [suggestionTypes firstIndex];

  suggestionSubtypes = [objc_opt_class() suggestionSubtypes];
  firstIndex2 = [suggestionSubtypes firstIndex];

  assetGater = self->_assetGater;
  v41 = [PGWallpaperSuggestionAccumulator alloc];
  if (assetGater)
  {
    v42 = 2 * maximumNumberOfSuggestions;
  }

  else
  {
    v42 = 0;
  }

  if (assetGater)
  {
    v43 = 5;
  }

  else
  {
    v43 = 0;
  }

  v102 = [(PGWallpaperSuggestionAccumulator *)v41 initWithTargetNumberOfSuggestions:maximumNumberOfSuggestions targetMinimumNumberOfGatedSuggestions:v43 maximumNumberOfSuggestionsToTryForGating:v42 loggingConnection:oslog];
  date = [MEMORY[0x277CBEAA8] date];
  v101 = [date dateByAddingTimeInterval:120.0];
  v44 = [v103 count];
  log = oslog;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v45 = [MEMORY[0x277CCABB0] numberWithDouble:120.0];
    *buf = 67109890;
    *v139 = v44;
    *&v139[4] = 2112;
    *&v139[6] = date;
    *&v139[14] = 2112;
    *&v139[16] = v45;
    LOWORD(v140[0]) = 2112;
    *(v140 + 2) = v101;
    _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Start processing %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", buf, 0x26u);
  }

  if (v44 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v44;
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v103;
  v47 = [obj countByEnumeratingWithState:&v128 objects:v137 count:16];
  if (!v47)
  {
    v98 = 0;
    v100 = 0;
    v104 = 0;
    v108 = 0;
LABEL_105:

LABEL_106:
    suggestions = [(PGWallpaperSuggestionAccumulator *)v102 suggestions];
    v82 = self->_assetGater;
    v83 = log;
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_INFO);
    if (v82)
    {
      if (!v84)
      {
        goto LABEL_112;
      }

      v85 = [suggestions count];
      numberOfGatedSuggestions = [(PGWallpaperSuggestionAccumulator *)v102 numberOfGatedSuggestions];
      *buf = 67109376;
      *v139 = v85;
      *&v139[4] = 1024;
      *&v139[6] = numberOfGatedSuggestions;
      v87 = "[PGCityscapeWallpaperSuggester] Generated %d suggestions (%d gated)";
      v88 = v83;
      v89 = 14;
    }

    else
    {
      if (!v84)
      {
        goto LABEL_112;
      }

      v90 = [suggestions count];
      *buf = 67109120;
      *v139 = v90;
      v87 = "[PGCityscapeWallpaperSuggester] Generated %d suggestions";
      v88 = v83;
      v89 = 8;
    }

    _os_log_impl(&dword_22F0FC000, v88, OS_LOG_TYPE_INFO, v87, buf, v89);
LABEL_112:

    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *v139 = v108;
      *&v139[4] = 1024;
      *&v139[6] = v104;
      *&v139[10] = 1024;
      *&v139[12] = v100;
      *&v139[16] = 1024;
      *&v139[18] = v98;
      *&v139[22] = 1024;
      v140[0] = HIDWORD(v98);
      _os_log_impl(&dword_22F0FC000, v83, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Tried %d assets, %d passed, rejected %d for clock overlap, %d for low resolution, %d for low crop score.", buf, 0x20u);
    }

    if (v134[3])
    {
      *(v134 + 24) = 1;
    }

    else
    {
      v91 = [v5 isCancelledWithProgress:1.0];
      *(v134 + 24) = v91;
      if ((v91 & 1) == 0)
      {
        v92 = mach_absolute_time();
        v93 = info.numer;
        v94 = info.denom;
        v95 = v83;
        v96 = v95;
        if (v114 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v96, OS_SIGNPOST_INTERVAL_END, spid, "PGCityscapeWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v139 = "PGCityscapeWallpaperSuggester";
          *&v139[8] = 2048;
          *&v139[10] = ((((v92 - v113) * v93) / v94) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v7 = suggestions;
        goto LABEL_126;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v139 = 266;
      *&v139[4] = 2080;
      *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
LABEL_126:

    goto LABEL_127;
  }

  v49 = 0;
  v115 = 0;
  v98 = 0;
  v100 = 0;
  v104 = 0;
  v108 = 0;
  v50 = 0.1 / v46;
  v110 = *v129;
  *&v48 = 138412290;
  v97 = v48;
LABEL_58:
  v109 = v47;
  v51 = 0;
  while (1)
  {
    if (*v129 != v110)
    {
      objc_enumerationMutation(obj);
    }

    v52 = *(*(&v128 + 1) + 8 * v51);
    v53 = objc_autoreleasePoolPush();
    v54 = [PGSingleAssetSuggestion alloc];
    asset = [v52 asset];
    v56 = [(PGSingleAssetSuggestion *)v54 initWithType:firstIndex subtype:firstIndex2 asset:asset];

    v57 = self->_assetGater;
    if (v57)
    {
      asset2 = [v52 asset];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __65__PGCityscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
      v124[3] = &unk_27887F968;
      v126 = &v133;
      v125 = v5;
      v127 = v50 * v49;
      v59 = [(PGWallpaperSuggestionAssetGater *)v57 gateAsset:asset2 progressBlock:v124];

      -[PGSingleAssetSuggestion setAvailableFeatures:](v56, "setAvailableFeatures:", [v59 availableFeatures]);
      passesAnyGating = [v59 passesAnyGating];
      didTimeout = [v59 didTimeout];

      v115 += didTimeout;
    }

    else
    {
      passesAnyGating = 1;
    }

    if (v134[3])
    {
      *(v134 + 24) = 1;
LABEL_67:
      v63 = 1;
      v64 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v139 = 210;
        *&v139[4] = 2080;
        *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_98;
    }

    v62 = [v5 isCancelledWithProgress:v50 * v49 + 0.9];
    *(v134 + 24) = v62;
    if (v62)
    {
      goto LABEL_67;
    }

    ++v108;
    if ((passesAnyGating & 1) != 0 || (([v52 cropResult], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "cropForOrientation:", -[PGCityscapeWallpaperSuggesterFilteringContext orientation](self->_primaryFilteringContext, "orientation")), v66 = objc_claimAutoreleasedReturnValue(), v65, !-[PGCityscapeWallpaperSuggesterFilteringContext ignoreClockOverlap](self->_primaryFilteringContext, "ignoreClockOverlap")) ? (v67 = objc_msgSend(v66, "passesClockOverlap")) : (v67 = 1), (objc_msgSend(v66, "cropZoomRatio", v97), v69 = v68, -[PGCityscapeWallpaperSuggesterFilteringContext maximumCropZoomRatio](self->_primaryFilteringContext, "maximumCropZoomRatio"), v71 = v70, objc_msgSend(v66, "cropScore"), v73 = v72, -[PGCityscapeWallpaperSuggesterFilteringContext minimumCropScore](self->_primaryFilteringContext, "minimumCropScore"), v69 <= v71) ? (v75 = v67) : (v75 = 0), v73 >= v74 ? (v76 = v75) : (v76 = 0), v66, v76))
    {
      [(PGWallpaperSuggestionAccumulator *)v102 addSuggestion:v56 passingGating:passesAnyGating, v97];
      ++v104;
      if ([(PGWallpaperSuggestionAccumulator *)v102 accumulationIsComplete])
      {
        v63 = 2;
        goto LABEL_98;
      }
    }

    else
    {
      if (v67)
      {
        if (v69 > v71)
        {
          LODWORD(v98) = v98 + 1;
          v77 = @"low resolution";
        }

        else
        {
          ++HIDWORD(v98);
          v77 = @"low cropScore";
        }
      }

      else
      {
        ++v100;
        v77 = @"clock overlap";
      }

      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = v97;
        *v139 = v77;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Rejecting non-gated suggestion because of %@.", buf, 0xCu);
      }
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    [v101 timeIntervalSinceDate:date2];
    v80 = v79;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v139 = v108;
      *&v139[4] = 1024;
      *&v139[6] = v104;
      *&v139[10] = 2048;
      *&v139[12] = v80;
      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", buf, 0x18u);
    }

    if (v115 > 1 || v80 < 0.0)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v139 = v115;
        *&v139[4] = 1024;
        *&v139[6] = 1;
        *&v139[10] = 2048;
        *&v139[12] = v80;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", buf, 0x18u);
      }

      v63 = 2;
    }

    else
    {
      v63 = 0;
    }

LABEL_98:
    objc_autoreleasePoolPop(v53);
    if (v63)
    {
      break;
    }

    ++v51;
    ++v49;
    if (v109 == v51)
    {
      v47 = [obj countByEnumeratingWithState:&v128 objects:v137 count:16];
      if (v47)
      {
        goto LABEL_58;
      }

      goto LABEL_105;
    }
  }

  if (v63 == 2)
  {
    goto LABEL_106;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_127:

LABEL_128:
LABEL_28:

LABEL_29:
  _Block_object_dispose(&v133, 8);

  return v7;
}

uint64_t __65__PGCityscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(a1 + 48) * a2 + 0.9];
    v2 = *(*(a1 + 40) + 8);
  }

  *(v2 + 24) = result;
  return result;
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
    [(PGCityscapeWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGCityscapeWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
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
  v5 = [PGCityscapeWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForCityscapesInOrientation:2];
    primaryFilteringContext = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v6;

    v8 = [[PGCityscapeWallpaperSuggesterFilteringContext alloc] initForCityscapesInOrientation:1];
  }

  else
  {
    v9 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForCityscapesInOrientation:1];
    v10 = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = selfCopy->_secondaryFilteringContext;
  selfCopy->_secondaryFilteringContext = v8;
}

- (PGCityscapeWallpaperSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = PGCityscapeWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v13 initWithSession:sessionCopy];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      loggingConnection = [sessionCopy loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:4 loggingConnection:loggingConnection];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;

      [(PGWallpaperSuggestionAssetGater *)v5->_assetGater setEnableSettlingEffect:0];
    }

    v10 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    peopleSceneConfidenceThresholdHelper = v5->_peopleSceneConfidenceThresholdHelper;
    v5->_peopleSceneConfidenceThresholdHelper = v10;

    [(PGCityscapeWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v38[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  if ([self isPositiveWithUrbanSceneLabelsForAsset:assetCopy])
  {
    photoLibrary = [assetCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v13 = [self prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
    [librarySpecificFetchOptions setInternalPredicate:v13];

    v14 = MEMORY[0x277CD97A8];
    localIdentifier = [assetCopy localIdentifier];
    v38[0] = localIdentifier;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:librarySpecificFetchOptions];
    firstObject = [v17 firstObject];

    if (!firstObject)
    {
      v23 = 0;
      if (reason)
      {
        *reason = @"Fails Predicate";
      }

      goto LABEL_29;
    }

    filtersForTopSuggestions = [objc_opt_class() filtersForTopSuggestions];
    v20 = [[PGCityscapeWallpaperSuggestionCandidate alloc] initWithAsset:assetCopy];
    v21 = [PGCityscapeWallpaperSuggesterFilteringContext alloc];
    if (filtersForTopSuggestions)
    {
      v22 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v21 initForTopCityscapesInOrientation:orientation];
    }

    else
    {
      v22 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v21 initForCityscapesInOrientation:orientation];
    }

    v24 = v22;
    v35 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    v36 = v20;
    if ([self candidate:v20 passesFilteringWithContext:v24 curationContext:contextCopy thresholdHelper:? statistics:?])
    {
      if (filtersForTopSuggestions)
      {
        v25 = [PGWallpaperSuggestionAssetGater alloc];
        v26 = [(PGWallpaperSuggestionAssetGater *)v25 initWithType:4 loggingConnection:MEMORY[0x277D86220]];
        v23 = 1;
        [(PGWallpaperSuggestionAssetGater *)v26 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v26 setIsUserInitiated:1];
        v34 = [(PGWallpaperSuggestionAssetGater *)v26 gateAsset:assetCopy progressBlock:&__block_literal_global_504];
        if ([v34 passesAnyGating])
        {
          v27 = @"Pass Segmented";
        }

        else
        {
          cropResult = [(PGCityscapeWallpaperSuggestionCandidate *)v20 cropResult];
          v29 = [cropResult cropForOrientation:orientation];

          if (([v24 ignoreClockOverlap] & 1) != 0 || objc_msgSend(v29, "passesClockOverlap"))
          {
            [v29 cropScore];
            v31 = v30;
            [v24 minimumCropScore];
            v23 = v31 >= v32;
            if (v31 < v32)
            {
              v27 = @"Low Crop Score";
            }

            else
            {
              v27 = @"Pass Unsegmented";
            }
          }

          else
          {
            v23 = 0;
            v27 = @"Clock Overlap";
          }
        }

        if (!reason)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = @"Pass";
        v23 = 1;
        if (!reason)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!reason)
      {
        v23 = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v23 = 0;
      v27 = @"Unknown Reason";
    }

    *reason = v27;
    goto LABEL_28;
  }

  v23 = 0;
  if (reason)
  {
    *reason = @"No Urban Scene";
  }

LABEL_30:

  return v23;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics
{
  v70 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  contextCopy = context;
  helperCopy = helper;
  curationContextCopy = curationContext;
  asset = [candidateCopy asset];
  curationModel = [asset curationModel];
  userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];

  LODWORD(curationContextCopy) = [curationModel isUtilityForMemoriesWithAsset:asset userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];
  if (curationContextCopy)
  {
    v18 = 0;
    ++statistics->var0;
    goto LABEL_44;
  }

  if ([curationModel avoidIfPossibleForKeyAssetWithAsset:asset statistics:&statistics->var12])
  {
    v18 = 0;
    ++statistics->var1;
    goto LABEL_44;
  }

  aestheticsModel = [curationModel aestheticsModel];
  overallAestheticScoreNode = [aestheticsModel overallAestheticScoreNode];
  [overallAestheticScoreNode highPrecisionOperatingPoint];
  v22 = v21;

  [asset overallAestheticScore];
  if (v22 > v23)
  {
    v18 = 0;
    ++statistics->var2;
    goto LABEL_44;
  }

  [contextCopy absoluteMinimumWallpaperScore];
  v25 = v24;
  if (v24 < 0.0)
  {
    wallpaperScoreModel = [curationModel wallpaperScoreModel];
    minimumWallpaperScoreNode = [wallpaperScoreModel minimumWallpaperScoreNode];
    [minimumWallpaperScoreNode operatingPoint];
    v25 = v28;
  }

  [candidateCopy wallpaperScore];
  if (v25 > v29)
  {
    v18 = 0;
    ++statistics->var3;
    goto LABEL_44;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PGCityscapeWallpaperSuggesterAestheticScore"];
  v32 = v31;

  if (v32 <= 0.0)
  {
    v34 = [curationModel isAestheticallyPrettyGoodWithAsset:asset];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v68 = 134217984;
      v69 = v32;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Using custom aesthetics score %.2f ", &v68, 0xCu);
    }

    [asset overallAestheticScore];
    v34 = v32 <= v33;
  }

  [contextCopy minimumWallpaperScore];
  v36 = v35;
  if (v35 < 0.0)
  {
    wallpaperScoreModel2 = [curationModel wallpaperScoreModel];
    cityscapeNode = [wallpaperScoreModel2 cityscapeNode];
    [cityscapeNode highRecallOperatingPoint];
    v36 = v39;
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 doubleForKey:@"PGCityscapeWallpaperSuggesterWallpaperScore"];
  v42 = v41;

  if (v42 > 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v68 = 134217984;
      v69 = v42;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Using custom wallpaper score %.2f ", &v68, 0xCu);
    }

    v36 = v42;
  }

  [candidateCopy wallpaperScore];
  if (v36 <= v43)
  {
    v44 = 1;
  }

  else
  {
    v44 = v34;
  }

  if ((v44 & 1) == 0)
  {
    v18 = 0;
    ++statistics->var9;
    goto LABEL_44;
  }

  if (([contextCopy bypassCropScoreCheck] & 1) == 0)
  {
    cropResult = [candidateCopy cropResult];
    v46 = [cropResult cropForOrientation:{objc_msgSend(contextCopy, "orientation")}];

    if (([contextCopy ignoreClockOverlap] & 1) != 0 || objc_msgSend(v46, "passesClockOverlap"))
    {
      [v46 cropZoomRatio];
      v48 = v47;
      [contextCopy maximumCropZoomRatio];
      if (v48 <= v49)
      {
        [v46 cropScore];
        v52 = v51;
        [contextCopy minimumCropScore];
        if (v52 >= v53)
        {
          v64 = v53;
          [contextCopy cropScorePenaltyCutOff];
          [candidateCopy setCropScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v52, v64, v65)}];

          goto LABEL_27;
        }

        v50 = 24;
      }

      else
      {
        v50 = 20;
      }
    }

    else
    {
      v50 = 16;
    }

    ++*(&statistics->var0 + v50);

    v18 = 0;
    goto LABEL_44;
  }

LABEL_27:
  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:asset])
  {
    if ([PGWallpaperSuggestionUtilities foundDominantPeopleSceneInAsset:asset withConfidenceThresholdHelper:helperCopy])
    {
      v18 = 0;
      ++statistics->var8;
    }

    else
    {
      [contextCopy maximumLowLightScore];
      v55 = v54;
      if (v54 < 0.0)
      {
        curationModel2 = [asset curationModel];
        aestheticsModel2 = [curationModel2 aestheticsModel];
        lowLightNode = [aestheticsModel2 lowLightNode];
        [lowLightNode operatingPoint];
        v55 = v59;
      }

      aestheticProperties = [asset aestheticProperties];
      [aestheticProperties lowLight];
      v62 = v61;

      if (v55 >= v62)
      {
        asset2 = [candidateCopy asset];
        v67 = [PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:asset2];

        if (v67)
        {
          v18 = 0;
          ++statistics->var11;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
        ++statistics->var10;
      }
    }
  }

  else
  {
    v18 = 0;
    ++statistics->var7;
  }

LABEL_44:

  return v18;
}

+ (BOOL)isPositiveWithUrbanSceneLabelsForAsset:(id)asset
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = @"cityscape";
  v12 = @"skyscraper";
  v13 = @"Q702492";
  v14 = @"Q200250";
  v15 = @"Q174782";
  v16 = @"Q18142";
  v17 = @"Q2997369";
  v18 = @"Q1050303";
  v19 = @"Q515";
  v20 = @"Q2651004";
  v21 = @"Q2319498";
  v22 = @"Q1349760";
  v23 = @"Q223750";
  v24 = @"Q4198718";
  v25 = @"Q957904";
  v4 = MEMORY[0x277CBEA60];
  assetCopy = asset;
  v6 = [v4 arrayWithObjects:&v11 count:15];
  v7 = [PGSceneAssetFilter alloc];
  sceneTaxonomy = [self sceneTaxonomy];
  v9 = [(PGSceneAssetFilter *)v7 initForEntityNetWithSceneNames:v6 positiveSceneCustomSignalModelBlock:&__block_literal_global_6546 secondaryPositiveScenes:MEMORY[0x277CBEBF8] positiveDominantScenes:MEMORY[0x277CBEBF8] positiveDominantSceneCustomSignalModelBlock:0 positiveSemDevScenes:MEMORY[0x277CBEBF8] negativeScenes:MEMORY[0x277CBEBF8] sceneTaxonomy:sceneTaxonomy, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26];

  LOBYTE(sceneTaxonomy) = [v9 passesWithAsset:assetCopy];
  return sceneTaxonomy;
}

+ (id)candidatesFromAssets:(id)assets
{
  v19 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PGCityscapeWallpaperSuggestionCandidate alloc];
        v12 = [(PGCityscapeWallpaperSuggestionCandidate *)v11 initWithAsset:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v4 addObject:v5];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
  [v4 addObject:v6];
  v7 = [MEMORY[0x277D3ACE0] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToSceneVersion:&unk_2844823B8];
  [v4 addObject:v7];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K > %d", @"additionalAttributes", @"faceAnalysisVersion", 0];
  [v4 addObject:v8];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == %d", @"detectedFaces", 0];
  [v4 addObject:v9];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"playbackStyle", &unk_2844854F0];
  [v4 addObject:v10];
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", dsCopy];
    [v4 addObject:dsCopy];
  }

  v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];

  return v12;
}

+ (CLSSceneTaxonomyHierarchy)sceneTaxonomy
{
  v2 = sceneTaxonomy_sceneTaxonomy;
  if (!sceneTaxonomy_sceneTaxonomy)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:0];
    v4 = sceneTaxonomy_sceneTaxonomy;
    sceneTaxonomy_sceneTaxonomy = v3;

    v2 = sceneTaxonomy_sceneTaxonomy;
  }

  return v2;
}

@end