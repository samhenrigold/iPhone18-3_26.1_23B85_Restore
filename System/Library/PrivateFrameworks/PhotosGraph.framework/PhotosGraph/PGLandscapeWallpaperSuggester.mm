@interface PGLandscapeWallpaperSuggester
+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics;
+ (BOOL)isPositiveLandscapeAsset:(id)asset;
+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (id)candidatesFromAssets:(id)assets;
+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds;
- (PGLandscapeWallpaperSuggester)initWithSession:(id)session;
- (id)fetchCandidateAssets;
- (id)fetchUnsortedCandidatesWithProgressReporter:(id)reporter;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)logPosterFilteringStatistics:(id *)statistics;
- (void)setupFilteringContexts;
@end

@implementation PGLandscapeWallpaperSuggester

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
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for positive people scene, %d for low light, %d for sensitive location", v17, 0x44u);
  }
}

- (id)fetchUnsortedCandidatesWithProgressReporter:(id)reporter
{
  v92 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 321;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    fetchCandidateAssets = [(PGLandscapeWallpaperSuggester *)self fetchCandidateAssets];
    v51 = loggingConnection;
    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 327;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = loggingConnection;
      v9 = os_signpost_id_generate(v8);
      v10 = v8;
      v11 = v10;
      v50 = v9 - 1;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGLandscapeWallpaperSuggesterFilterCandidates", "", buf, 2u);
      }

      spid = v9;

      info = 0;
      mach_timebase_info(&info);
      v49 = mach_absolute_time();
      v12 = [fetchCandidateAssets count];
      v55 = v12;
      v13 = v12 + 199;
      v90 = 0u;
      memset(v91, 0, 28);
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      memset(buf, 0, sizeof(buf));
      v74 = 0u;
      memset(v75, 0, 28);
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      curationContext = [session curationContext];
      if (v13 >= 0xC8)
      {
        v26 = 0;
        v52 = v13 / 0xC8;
        v27 = 1.0 / (v13 / 0xC8) * 0.8;
        *&v15 = 134218240;
        v47 = v15;
        oslog = v11;
        v54 = reporterCopy;
        while (1)
        {
          v59 = v26;
          context = objc_autoreleasePoolPush();
          v58 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v47, spid}];
          v28 = [fetchCandidateAssets objectsAtIndexes:?];
          v29 = MEMORY[0x277CD97A8];
          curationContext2 = [session curationContext];
          [v29 prefetchOnAssets:v28 options:14 curationContext:curationContext2];

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          obj = v28;
          v31 = off_27887B000;
          v63 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
          if (v63)
          {
            v62 = *v65;
            do
            {
              for (i = 0; i != v63; ++i)
              {
                if (*v65 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v64 + 1) + 8 * i);
                v34 = objc_autoreleasePoolPush();
                v35 = [objc_alloc(v31[208]) initWithAsset:v33];
                v36 = objc_opt_class();
                primaryFilteringContext = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
                LODWORD(v36) = [v36 candidate:v35 passesFilteringWithContext:primaryFilteringContext curationContext:curationContext thresholdHelper:self->_peopleSceneConfidenceThresholdHelper statistics:buf];

                if (v36)
                {
                  secondaryFilteringContext = [(PGLandscapeWallpaperSuggester *)self secondaryFilteringContext];
                  if (!secondaryFilteringContext || (v39 = secondaryFilteringContext, v40 = objc_opt_class(), -[PGLandscapeWallpaperSuggester secondaryFilteringContext](self, "secondaryFilteringContext"), v41 = v7, v42 = objc_claimAutoreleasedReturnValue(), LODWORD(v40) = [v40 candidate:v35 passesFilteringWithContext:v42 curationContext:curationContext thresholdHelper:self->_peopleSceneConfidenceThresholdHelper statistics:&v68], v42, v7 = v41, v31 = off_27887B000, v39, v40))
                  {
                    [v7 addObject:v35];
                  }
                }

                objc_autoreleasePoolPop(v34);
              }

              v63 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
            }

            while (v63);
          }

          v11 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v43 = oslog;
            firstIndex = [v58 firstIndex];
            lastIndex = [v58 lastIndex];
            *v77 = v47;
            *&v77[4] = firstIndex;
            *&v77[12] = 2048;
            *&v77[14] = lastIndex;
            _os_log_debug_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_DEBUG, "[PGLandscapeWallpaperSuggester] processed candidates from %lu to %lu", v77, 0x16u);
          }

          reporterCopy = v54;
          if ([v54 isCancelledWithProgress:v27 * v59 + 0.2])
          {
            break;
          }

          objc_autoreleasePoolPop(context);
          v26 = v59 + 1;
          if (v59 + 1 == v52)
          {
            goto LABEL_13;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v77 = 67109378;
          *&v77[4] = 361;
          *&v77[8] = 2080;
          *&v77[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v77, 0x12u);
        }

        objc_autoreleasePoolPop(context);
        v5 = MEMORY[0x277CBEBF8];
      }

      else
      {
LABEL_13:
        v16 = curationContext;
        v17 = v7;
        v18 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v21 = v11;
        v22 = v21;
        if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *v77 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, spid, "PGLandscapeWallpaperSuggesterFilterCandidates", "", v77, 2u);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v77 = 136315394;
          *&v77[4] = "PGLandscapeWallpaperSuggesterFilterCandidates";
          *&v77[12] = 2048;
          *&v77[14] = ((((v18 - v49) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v77, 0x16u);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v77 = 67109120;
          *&v77[4] = v55;
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Found %d positive landscape assets", v77, 8u);
        }

        v23 = v22;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v17 count];
          *v77 = 67109120;
          *&v77[4] = v24;
          _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Found %d candidates after postfiltering", v77, 8u);
        }

        v82 = v90;
        v83[0] = v91[0];
        *(v83 + 12) = *(v91 + 12);
        v78 = v86;
        v79 = v87;
        v80 = v88;
        v81 = v89;
        *v77 = *buf;
        *&v77[16] = *&buf[16];
        [(PGLandscapeWallpaperSuggester *)self logPosterFilteringStatistics:v77];
        secondaryFilteringContext2 = [(PGLandscapeWallpaperSuggester *)self secondaryFilteringContext];

        if (secondaryFilteringContext2)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v77 = 0;
            _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Secondary filtering...", v77, 2u);
          }

          v82 = v74;
          v83[0] = v75[0];
          *(v83 + 12) = *(v75 + 12);
          v78 = v70;
          v79 = v71;
          v80 = v72;
          v81 = v73;
          *v77 = v68;
          *&v77[16] = v69;
          [(PGLandscapeWallpaperSuggester *)self logPosterFilteringStatistics:v77];
        }

        if (*&buf[4] >= 1)
        {
          [MEMORY[0x277D3C798] logInfo:v23 prefix:@"[PGLandscapeWallpaperSuggester]" avoidForKeyAssetStatistics:&v86 + 12];
        }

        v7 = v17;
        v5 = v17;
        curationContext = v16;
      }
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
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGLandscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
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
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Fetched %lu candidate assets.", buf, 0xCu);
  }

  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v17;
  v23 = v22;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v4, "PGLandscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "PGLandscapeWallpaperSuggesterFetchCandidates";
    v28 = 2048;
    v29 = ((((v19 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v16;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v148[8] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v5 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = 0;
  v6 = [v5 isCancelledWithProgress:0.0];
  *(v141 + 24) = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v146 = 100;
      *&v146[4] = 2080;
      *&v146[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_29;
  }

  maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
  session = [(PGAbstractSuggester *)self session];
  [session loggingConnection];
  v10 = v125 = session;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  spid = v11;
  v119 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGLandscapeWallpaperSuggester", "", buf, 2u);
  }

  oslog = v13;

  info = 0;
  mach_timebase_info(&info);
  v118 = mach_absolute_time();
  additionalOptions = [optionsCopy additionalOptions];

  if (additionalOptions)
  {
    additionalOptions2 = [optionsCopy additionalOptions];
    v16 = [additionalOptions2 objectForKey:@"filteringContext"];

    if (v16)
    {
      [(PGLandscapeWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext updateFilteringContextWithDictionary:v16];
      [(PGLandscapeWallpaperSuggesterFilteringContext *)self->_secondaryFilteringContext updateFilteringContextWithDictionary:v16];
    }
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v146 = maximumNumberOfSuggestions;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Starting to generate %d suggestions.", buf, 8u);
  }

  v124 = [v5 childProgressReporterFromStart:0.0 toEnd:0.39];
  v126 = [(PGLandscapeWallpaperSuggester *)self fetchUnsortedCandidatesWithProgressReporter:?];
  if (![v126 count])
  {
    if (v141[3])
    {
      *(v141 + 24) = 1;
    }

    else
    {
      v20 = [v5 isCancelledWithProgress:1.0];
      *(v141 + 24) = v20;
      if ((v20 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Found 0 unsorted candidate.", buf, 2u);
        }

        v33 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v36 = oslog;
        v37 = v36;
        if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v37, OS_SIGNPOST_INTERVAL_END, spid, "PGLandscapeWallpaperSuggester", "", buf, 2u);
        }

        if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        *buf = 136315394;
        *v146 = "PGLandscapeWallpaperSuggester";
        *&v146[8] = 2048;
        *&v146[10] = ((((v33 - v118) * numer) / denom) / 1000000.0);
        v19 = "[Performance] %s: %f ms";
        v18 = v37;
        v21 = 22;
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v146 = 123;
      *&v146[4] = 2080;
      *&v146[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      v18 = MEMORY[0x277D86220];
      v19 = "Cancelled at line %d in file %s";
      goto LABEL_25;
    }

LABEL_27:
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  if (v141[3])
  {
    *(v141 + 24) = 1;
    goto LABEL_20;
  }

  v17 = [v5 isCancelledWithProgress:0.4];
  *(v141 + 24) = v17;
  if (v17)
  {
LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v146 = 130;
      *&v146[4] = 2080;
      *&v146[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      v18 = MEMORY[0x277D86220];
      v19 = "Cancelled at line %d in file %s";
LABEL_25:
      v21 = 18;
LABEL_26:
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, v19, buf, v21);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
  v148[0] = v23;
  v123 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScorePenalty" ascending:1];
  v148[1] = v123;
  v120 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"aestheticsScorePenalty" ascending:1];
  v148[2] = v120;
  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cropScorePenalty" ascending:1];
  v148[3] = v24;
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
  v148[4] = v25;
  v26 = MEMORY[0x277D3C828];
  primaryFilteringContext = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
  v28 = [v26 cropScoreSortDescriptorForOrientation:{objc_msgSend(primaryFilteringContext, "orientation")}];
  v148[5] = v28;
  v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v148[6] = v29;
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
  v148[7] = v30;
  v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:8];

  v31 = MEMORY[0x277D3C810];
  primaryFilteringContext2 = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
  [primaryFilteringContext2 timeIntervalForCandidateDeduping];
  v108 = [v31 sortedDedupedCandidatesFromCandidates:v126 sortDescriptors:v111 timeIntervalForCandidateDeduping:maximumNumberOfSuggestions targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

  if (v141[3])
  {
    *(v141 + 24) = 1;
LABEL_42:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v146 = 144;
      *&v146[4] = 2080;
      *&v146[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_122;
  }

  v38 = [v5 isCancelledWithProgress:0.8];
  *(v141 + 24) = v38;
  if (v38)
  {
    goto LABEL_42;
  }

  suggestionTypes = [objc_opt_class() suggestionTypes];
  firstIndex = [suggestionTypes firstIndex];

  suggestionSubtypes = [objc_opt_class() suggestionSubtypes];
  firstIndex2 = [suggestionSubtypes firstIndex];

  assetGater = self->_assetGater;
  v42 = [PGWallpaperSuggestionAccumulator alloc];
  if (assetGater)
  {
    v43 = 2 * maximumNumberOfSuggestions;
  }

  else
  {
    v43 = 0;
  }

  if (assetGater)
  {
    v44 = 5;
  }

  else
  {
    v44 = 0;
  }

  v107 = [(PGWallpaperSuggestionAccumulator *)v42 initWithTargetNumberOfSuggestions:maximumNumberOfSuggestions targetMinimumNumberOfGatedSuggestions:v44 maximumNumberOfSuggestionsToTryForGating:v43 loggingConnection:oslog];
  date = [MEMORY[0x277CBEAA8] date];
  v106 = [date dateByAddingTimeInterval:120.0];
  v45 = [v108 count];
  log = oslog;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:120.0];
    *buf = 67109890;
    *v146 = v45;
    *&v146[4] = 2112;
    *&v146[6] = date;
    *&v146[14] = 2112;
    *&v146[16] = v46;
    LOWORD(v147[0]) = 2112;
    *(v147 + 2) = v106;
    _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Start processing %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", buf, 0x26u);
  }

  if (v45 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v45;
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v108;
  v48 = [obj countByEnumeratingWithState:&v135 objects:v144 count:16];
  if (!v48)
  {
    v102 = 0;
    v104 = 0;
    v109 = 0;
    v113 = 0;
LABEL_99:

LABEL_100:
    suggestions = [(PGWallpaperSuggestionAccumulator *)v107 suggestions];
    v86 = self->_assetGater;
    v87 = log;
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_INFO);
    if (v86)
    {
      if (!v88)
      {
        goto LABEL_106;
      }

      v89 = [suggestions count];
      numberOfGatedSuggestions = [(PGWallpaperSuggestionAccumulator *)v107 numberOfGatedSuggestions];
      *buf = 67109376;
      *v146 = v89;
      *&v146[4] = 1024;
      *&v146[6] = numberOfGatedSuggestions;
      v91 = "[PGLandscapeWallpaperSuggester] Generated %d suggestions (%d gated)";
      v92 = v87;
      v93 = 14;
    }

    else
    {
      if (!v88)
      {
        goto LABEL_106;
      }

      v94 = [suggestions count];
      *buf = 67109120;
      *v146 = v94;
      v91 = "[PGLandscapeWallpaperSuggester] Generated %d suggestions";
      v92 = v87;
      v93 = 8;
    }

    _os_log_impl(&dword_22F0FC000, v92, OS_LOG_TYPE_INFO, v91, buf, v93);
LABEL_106:

    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *v146 = v113;
      *&v146[4] = 1024;
      *&v146[6] = v109;
      *&v146[10] = 1024;
      *&v146[12] = v104;
      *&v146[16] = 1024;
      *&v146[18] = v102;
      *&v146[22] = 1024;
      v147[0] = HIDWORD(v102);
      _os_log_impl(&dword_22F0FC000, v87, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Tried %d assets, %d passed, rejected %d for clock overlap, %d for low resolution, %d for low crop score.", buf, 0x20u);
    }

    if (v141[3])
    {
      *(v141 + 24) = 1;
    }

    else
    {
      v95 = [v5 isCancelledWithProgress:1.0];
      *(v141 + 24) = v95;
      if ((v95 & 1) == 0)
      {
        v96 = mach_absolute_time();
        v97 = info.numer;
        v98 = info.denom;
        v99 = v87;
        v100 = v99;
        if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v100, OS_SIGNPOST_INTERVAL_END, spid, "PGLandscapeWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v146 = "PGLandscapeWallpaperSuggester";
          *&v146[8] = 2048;
          *&v146[10] = ((((v96 - v118) * v97) / v98) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v100, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v7 = suggestions;
        goto LABEL_120;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v146 = 240;
      *&v146[4] = 2080;
      *&v146[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
LABEL_120:

    goto LABEL_121;
  }

  v50 = 0;
  v121 = 0;
  v102 = 0;
  v104 = 0;
  v109 = 0;
  v113 = 0;
  v51 = 0.1 / v47;
  v115 = *v136;
  *&v49 = 138412290;
  v101 = v49;
LABEL_58:
  v114 = v48;
  v52 = 0;
  while (1)
  {
    if (*v136 != v115)
    {
      objc_enumerationMutation(obj);
    }

    v53 = *(*(&v135 + 1) + 8 * v52);
    v54 = objc_autoreleasePoolPush();
    v55 = [PGSingleAssetSuggestion alloc];
    asset = [v53 asset];
    v57 = [(PGSingleAssetSuggestion *)v55 initWithType:firstIndex subtype:firstIndex2 asset:asset];

    if (self->_assetGater)
    {
      asset2 = [v53 asset];
      v59 = [PGSettlingEffectWallpaperSuggesterFilteringContext shouldRunSettlingEffectForAsset:asset2 subtype:604];

      [(PGWallpaperSuggestionAssetGater *)self->_assetGater setEnableSettlingEffect:v59];
      v60 = self->_assetGater;
      asset3 = [v53 asset];
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __65__PGLandscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
      v131[3] = &unk_27887F968;
      v133 = &v140;
      v132 = v5;
      v134 = v51 * v50;
      v62 = [(PGWallpaperSuggestionAssetGater *)v60 gateAsset:asset3 progressBlock:v131];

      -[PGSingleAssetSuggestion setAvailableFeatures:](v57, "setAvailableFeatures:", [v62 availableFeatures]);
      passesAnyGating = [v62 passesAnyGating];
      LODWORD(asset2) = [v62 didTimeout];

      v121 += asset2;
    }

    else
    {
      passesAnyGating = 1;
    }

    if (v141[3])
    {
      *(v141 + 24) = 1;
LABEL_67:
      v65 = 1;
      v66 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v146 = 184;
        *&v146[4] = 2080;
        *&v146[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_92;
    }

    v64 = [v5 isCancelledWithProgress:v51 * v50 + 0.9];
    *(v141 + 24) = v64;
    if (v64)
    {
      goto LABEL_67;
    }

    ++v113;
    if ((passesAnyGating & 1) != 0 || (([v53 cropResult], v67 = objc_claimAutoreleasedReturnValue(), -[PGLandscapeWallpaperSuggester primaryFilteringContext](self, "primaryFilteringContext"), v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "cropForOrientation:", objc_msgSend(v68, "orientation")), v69 = objc_claimAutoreleasedReturnValue(), v68, v67, -[PGLandscapeWallpaperSuggester primaryFilteringContext](self, "primaryFilteringContext"), v70 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v70, "ignoreClockOverlap") & 1) == 0) ? (v105 = objc_msgSend(v69, "passesClockOverlap")) : (v105 = 1), v70, objc_msgSend(v69, "cropZoomRatio"), v72 = v71, -[PGLandscapeWallpaperSuggester primaryFilteringContext](self, "primaryFilteringContext"), v73 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v73, "maximumCropZoomRatio"), v75 = v74, v73, objc_msgSend(v69, "cropScore"), v77 = v76, -[PGLandscapeWallpaperSuggester primaryFilteringContext](self, "primaryFilteringContext"), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v78, "minimumCropScore"), v80 = v77 >= v79, v78, v69, (v105 & (v72 <= v75) & v80) != 0))
    {
      [(PGWallpaperSuggestionAccumulator *)v107 addSuggestion:v57 passingGating:passesAnyGating, v101];
      ++v109;
      if ([(PGWallpaperSuggestionAccumulator *)v107 accumulationIsComplete])
      {
        v65 = 2;
        goto LABEL_92;
      }
    }

    else
    {
      if (v105)
      {
        if (v72 > v75)
        {
          LODWORD(v102) = v102 + 1;
          v81 = @"low resolution";
        }

        else
        {
          ++HIDWORD(v102);
          v81 = @"low cropScore";
        }
      }

      else
      {
        ++v104;
        v81 = @"clock overlap";
      }

      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = v101;
        *v146 = v81;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Rejecting non-gated suggestion because of %@.", buf, 0xCu);
      }
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    [v106 timeIntervalSinceDate:date2];
    v84 = v83;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v146 = v113;
      *&v146[4] = 1024;
      *&v146[6] = v109;
      *&v146[10] = 2048;
      *&v146[12] = v84;
      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", buf, 0x18u);
    }

    if (v121 > 1 || v84 < 0.0)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v146 = v121;
        *&v146[4] = 1024;
        *&v146[6] = 1;
        *&v146[10] = 2048;
        *&v146[12] = v84;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", buf, 0x18u);
      }

      v65 = 2;
    }

    else
    {
      v65 = 0;
    }

LABEL_92:
    objc_autoreleasePoolPop(v54);
    if (v65)
    {
      break;
    }

    ++v52;
    ++v50;
    if (v114 == v52)
    {
      v48 = [obj countByEnumeratingWithState:&v135 objects:v144 count:16];
      if (v48)
      {
        goto LABEL_58;
      }

      goto LABEL_99;
    }
  }

  if (v65 == 2)
  {
    goto LABEL_100;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_121:

LABEL_122:
LABEL_28:

LABEL_29:
  _Block_object_dispose(&v140, 8);

  return v7;
}

uint64_t __65__PGLandscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, double a2)
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
    [(PGLandscapeWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGLandscapeWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
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
  v5 = [PGLandscapeWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v5 initForLandscapesInOrientation:2];
    primaryFilteringContext = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v6;

    v8 = [[PGLandscapeWallpaperSuggesterFilteringContext alloc] initForLandscapesInOrientation:1];
  }

  else
  {
    v9 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v5 initForLandscapesInOrientation:1];
    v10 = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = selfCopy->_secondaryFilteringContext;
  selfCopy->_secondaryFilteringContext = v8;
}

- (PGLandscapeWallpaperSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = PGLandscapeWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v13 initWithSession:sessionCopy];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      loggingConnection = [sessionCopy loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:3 loggingConnection:loggingConnection];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;
    }

    v10 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    peopleSceneConfidenceThresholdHelper = v5->_peopleSceneConfidenceThresholdHelper;
    v5->_peopleSceneConfidenceThresholdHelper = v10;

    [(PGLandscapeWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v38[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  if ([self isPositiveLandscapeAsset:assetCopy])
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
    v20 = [[PGLandscapeWallpaperSuggestionCandidate alloc] initWithAsset:assetCopy];
    v21 = [PGLandscapeWallpaperSuggesterFilteringContext alloc];
    if (filtersForTopSuggestions)
    {
      v22 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v21 initForTopLandscapesInOrientation:orientation];
    }

    else
    {
      v22 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v21 initForLandscapesInOrientation:orientation];
    }

    v24 = v22;
    v35 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    v36 = v20;
    if ([self candidate:v20 passesFilteringWithContext:v24 curationContext:contextCopy thresholdHelper:? statistics:?])
    {
      if (filtersForTopSuggestions)
      {
        v25 = [PGWallpaperSuggestionAssetGater alloc];
        v26 = [(PGWallpaperSuggestionAssetGater *)v25 initWithType:3 loggingConnection:MEMORY[0x277D86220]];
        v23 = 1;
        [(PGWallpaperSuggestionAssetGater *)v26 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v26 setIsUserInitiated:1];
        v34 = [(PGWallpaperSuggestionAssetGater *)v26 gateAsset:assetCopy progressBlock:&__block_literal_global_233];
        if ([v34 passesAnyGating])
        {
          v27 = @"Pass Segmented";
        }

        else
        {
          cropResult = [(PGLandscapeWallpaperSuggestionCandidate *)v20 cropResult];
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
    *reason = @"Not Landscape";
  }

LABEL_30:

  return v23;
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
    landscapeNode = [wallpaperScoreModel landscapeNode];
    [landscapeNode highRecallOperatingPoint];
    v18 = v21;
  }

  [candidateCopy wallpaperScore];
  if (v18 > v22)
  {
    v23 = 0;
    ++statistics->var3;
    goto LABEL_35;
  }

  [contextCopy wallpaperScorePenaltyCutOff];
  v25 = v24;
  if (v24 < 0.0)
  {
    wallpaperScoreModel2 = [curationModel wallpaperScoreModel];
    landscapeNode2 = [wallpaperScoreModel2 landscapeNode];
    [landscapeNode2 highPrecisionOperatingPoint];
    v25 = v28;
  }

  [candidateCopy wallpaperScore];
  [candidateCopy setWallpaperScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v29, v18, v25)}];
  userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];
  v31 = [curationModel isUtilityForMemoriesWithAsset:asset userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];

  if (v31)
  {
    v23 = 0;
    ++statistics->var0;
    goto LABEL_35;
  }

  if ([curationModel avoidIfPossibleForKeyAssetWithAsset:asset statistics:&statistics->var11])
  {
    v23 = 0;
    ++statistics->var1;
    goto LABEL_35;
  }

  [contextCopy minimumAestheticsScore];
  v33 = v32;
  if (v32 < 0.0)
  {
    aestheticsModel = [curationModel aestheticsModel];
    overallAestheticScoreNode = [aestheticsModel overallAestheticScoreNode];
    [overallAestheticScoreNode highPrecisionOperatingPoint];
    v33 = v36;
  }

  [asset overallAestheticScore];
  v38 = v37;
  if (v33 > v37)
  {
    v23 = 0;
    ++statistics->var2;
    goto LABEL_35;
  }

  [contextCopy aestheticsScorePenaltyCutOff];
  v40 = v39;
  if (v39 < 0.0)
  {
    aestheticsModel2 = [curationModel aestheticsModel];
    [aestheticsModel2 aestheticScoreThresholdToBeAestheticallyPrettyGood];
    v40 = v42;
  }

  [candidateCopy setAestheticsScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v38, v33, v40)}];
  if (([contextCopy bypassCropScoreCheck] & 1) == 0)
  {
    cropResult = [candidateCopy cropResult];
    v44 = [cropResult cropForOrientation:{objc_msgSend(contextCopy, "orientation")}];

    if (([contextCopy ignoreClockOverlap] & 1) != 0 || objc_msgSend(v44, "passesClockOverlap"))
    {
      [v44 cropZoomRatio];
      v46 = v45;
      [contextCopy maximumCropZoomRatio];
      if (v46 <= v47)
      {
        [v44 cropScore];
        v50 = v49;
        [contextCopy minimumCropScore];
        if (v50 >= v51)
        {
          v62 = v51;
          [contextCopy cropScorePenaltyCutOff];
          [candidateCopy setCropScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v50, v62, v63)}];

          goto LABEL_18;
        }

        ++statistics->var6;
LABEL_34:

        v23 = 0;
        goto LABEL_35;
      }

      v48 = 20;
    }

    else
    {
      v48 = 16;
    }

    ++*(&statistics->var0 + v48);
    goto LABEL_34;
  }

LABEL_18:
  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:asset])
  {
    if ([PGWallpaperSuggestionUtilities foundDominantPeopleSceneInAsset:asset withConfidenceThresholdHelper:helperCopy])
    {
      v23 = 0;
      ++statistics->var8;
    }

    else
    {
      [contextCopy maximumLowLightScore];
      v53 = v52;
      if (v52 < 0.0)
      {
        curationModel2 = [asset curationModel];
        aestheticsModel3 = [curationModel2 aestheticsModel];
        lowLightNode = [aestheticsModel3 lowLightNode];
        [lowLightNode operatingPoint];
        v53 = v57;
      }

      aestheticProperties = [asset aestheticProperties];
      [aestheticProperties lowLight];
      v60 = v59;

      if (v53 >= v60)
      {
        asset2 = [candidateCopy asset];
        v65 = [PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:asset2];

        if (v65)
        {
          v23 = 0;
          ++statistics->var10;
        }

        else
        {
          v23 = 1;
        }
      }

      else
      {
        v23 = 0;
        ++statistics->var9;
      }
    }
  }

  else
  {
    v23 = 0;
    ++statistics->var7;
  }

LABEL_35:

  return v23;
}

+ (BOOL)isPositiveLandscapeAsset:(id)asset
{
  v25 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy clsSceneClassifications];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 extendedSceneIdentifier] == 2147481597)
        {
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [standardUserDefaults doubleForKey:@"PGLandscapeWallpaperSuggesterNatureSceneThreshold"];
          v13 = v12;

          if (v13 <= 0.0)
          {
            curationModel = [assetCopy curationModel];
            cityNatureModel = [curationModel cityNatureModel];

            natureNode = [cityNatureModel natureNode];
            [natureNode operatingPoint];
            v13 = v17;
          }

          [v9 confidence];
          v10 = v18 >= v13;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
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
        v11 = [PGLandscapeWallpaperSuggestionCandidate alloc];
        v12 = [(PGLandscapeWallpaperSuggestionCandidate *)v11 initWithAsset:v10, v14];
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
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K > %d", @"additionalAttributes", @"faceAnalysisVersion", 0];
  [v4 addObject:v7];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == %d", @"detectedFaces", 0];
  [v4 addObject:v8];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"playbackStyle", &unk_284485418];
  [v4 addObject:v9];
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", dsCopy];
    [v4 addObject:dsCopy];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 32000;
  v12 = MEMORY[0x277D3CAB8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__PGLandscapeWallpaperSuggester_prefilteringInternalPredicateWithForbiddenAssetUUIDs___block_invoke;
  v17[3] = &unk_27887EC40;
  v19 = v20;
  v13 = v11;
  v18 = v13;
  [v12 enumerateModelsAscending:0 usingBlock:v17];
  v14 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v13];
  [v4 addObject:v14];
  v15 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];

  _Block_object_dispose(v20, 8);

  return v15;
}

void __86__PGLandscapeWallpaperSuggester_prefilteringInternalPredicateWithForbiddenAssetUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 doubleForKey:@"PGLandscapeWallpaperSuggesterNatureSceneThreshold"];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = [v3 natureNode];
    [v7 operatingPoint];
    v6 = v8;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Using custom natureNodeOperatingPoint %.3f ", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(additionalAttributes, $a, $a.sceneAnalysisVersion >= %d AND $a.sceneAnalysisVersion < %d AND SUBQUERY($a.sceneClassifications, $s, $s.sceneIdentifier = %d AND $s.confidence >= %f).@count != 0).@count != 0", objc_msgSend(v3, "version"), *(*(*(a1 + 40) + 8) + 24), 2147481597, *&v6];
  [*(a1 + 32) addObject:v9];
  *(*(*(a1 + 40) + 8) + 24) = [v3 version];
}

@end