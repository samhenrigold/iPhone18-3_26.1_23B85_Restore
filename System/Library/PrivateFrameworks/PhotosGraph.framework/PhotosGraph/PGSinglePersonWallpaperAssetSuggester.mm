@interface PGSinglePersonWallpaperAssetSuggester
+ (BOOL)candidate:(id)candidate andFace:(id)face passesPostfilteringWithContext:(id)context curationContext:(id)curationContext statistics:(id *)statistics;
+ (BOOL)passesFilteringWithAsset:(id)asset forTopWallpaperSuggestions:(BOOL)suggestions curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (id)_assetExpressionWithFilteringContext:(id)context;
+ (id)prefilteringInternalPredicateWithContext:(id)context;
+ (id)prefilteringSubpredicatesWithContext:(id)context;
- (PGSinglePersonWallpaperAssetSuggester)initWithPersonLocalIdentifiers:(id)identifiers curationContext:(id)context loggingConnection:(id)connection;
- (id)assetsFromCandidates:(id)candidates;
- (id)unsortedCandidatesFromPersonLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (void)computeSuggestedAssetsWithNumberOfSuggestions:(unint64_t)suggestions progressBlock:(id)block;
- (void)logPosterFilteringStatistics:(id *)statistics;
@end

@implementation PGSinglePersonWallpaperAssetSuggester

- (id)assetsFromCandidates:(id)candidates
{
  v46 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = candidatesCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        assetUUID = [*(*(&v39 + 1) + 8 * i) assetUUID];
        [v5 addObject:assetUUID];
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v8);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  photoLibrary = [(CLSCurationContext *)self->_curationContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchPropertySets:self->_assetFetchPropertySets];
  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v5 options:librarySpecificFetchOptions];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        uuid = [v20 uuid];
        [v12 setObject:v20 forKeyedSubscript:uuid];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v17);
  }

  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v12 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * k)];
        if (v28)
        {
          [v22 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(context);

  return v22;
}

- (void)logPosterFilteringStatistics:(id *)statistics
{
  v57 = *MEMORY[0x277D85DE8];
  primaryFilteringContext = [(PGSinglePersonWallpaperAssetSuggester *)self primaryFilteringContext];
  bypassCropScoreCheck = [primaryFilteringContext bypassCropScoreCheck];

  loggingConnection = self->_loggingConnection;
  v8 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO);
  if (bypassCropScoreCheck)
  {
    if (!v8)
    {
      return;
    }

    var0 = statistics->var0;
    var1 = statistics->var1;
    var2 = statistics->var2;
    var3 = statistics->var3;
    var4 = statistics->var4;
    var8 = statistics->var8;
    var9 = statistics->var9;
    var10 = statistics->var10;
    var11 = statistics->var11;
    v33 = 67111168;
    v34 = var0;
    v35 = 1024;
    v36 = var1;
    v37 = 1024;
    v38 = var2;
    v39 = 1024;
    v40 = var3;
    v41 = 1024;
    v42 = var9;
    v43 = 1024;
    v44 = var4;
    v45 = 1024;
    v46 = var8;
    v47 = 1024;
    v48 = var10;
    v49 = 1024;
    v50 = var11;
    v18 = "[PGSinglePersonWallpaperAssetSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for aesthetics+wallpaper, %d for face quality, %d for not safe for display, %d for low light, %d for sensitive location";
    v19 = loggingConnection;
    v20 = 56;
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v21 = statistics->var0;
    v22 = statistics->var1;
    v23 = statistics->var2;
    v24 = statistics->var3;
    v25 = statistics->var4;
    var5 = statistics->var5;
    var6 = statistics->var6;
    var7 = statistics->var7;
    v30 = statistics->var8;
    v29 = statistics->var9;
    v31 = statistics->var10;
    v32 = statistics->var11;
    v33 = 67111936;
    v34 = v21;
    v35 = 1024;
    v36 = v22;
    v37 = 1024;
    v38 = v23;
    v39 = 1024;
    v40 = v24;
    v41 = 1024;
    v42 = v29;
    v43 = 1024;
    v44 = v25;
    v45 = 1024;
    v46 = var5;
    v47 = 1024;
    v48 = var6;
    v49 = 1024;
    v50 = var7;
    v51 = 1024;
    v52 = v30;
    v53 = 1024;
    v54 = v31;
    v55 = 1024;
    v56 = v32;
    v18 = "[PGSinglePersonWallpaperAssetSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for aesthetics+wallpaper, %d for face quality, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for low light, %d for sensitive location";
    v19 = loggingConnection;
    v20 = 74;
  }

  _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, v18, &v33, v20);
}

- (id)unsortedCandidatesFromPersonLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v134 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  blockCopy = block;
  v6 = _Block_copy(blockCopy);
  v7 = 0.0;
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v101) = 0;
      v6[2](v6, &v101, 0.0);
      if (v101 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 193;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
        v10 = blockCopy;
        goto LABEL_96;
      }

      v7 = Current;
    }
  }

  v92 = v6;
  photoLibrary = [(CLSCurationContext *)self->_curationContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  v86 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  v87 = [objc_opt_class() prefilteringInternalPredicateWithContext:self->_primaryFilteringContext];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v13 = identifiersCopy;
  v14 = [v13 countByEnumeratingWithState:&v111 objects:v133 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v112;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v112 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:*(*(&v111 + 1) + 8 * i)];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v111 objects:v133 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"personForFace.personUUID", v12];
  v20 = MEMORY[0x277CCA920];
  v83 = v19;
  v132[0] = v19;
  v132[1] = v87;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  v23 = v86;
  [v86 setInternalPredicate:v22];

  v24 = self->_loggingConnection;
  v25 = os_signpost_id_generate(v24);
  v26 = v24;
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PGSinglePersonWallpaperAssetSuggesterFaceFetch", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v28 = mach_absolute_time();
  v91 = [MEMORY[0x277CD9868] fetchFacesWithOptions:v86];
  v29 = mach_absolute_time();
  v30 = info;
  v31 = v27;
  v32 = v31;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, v25, "PGSinglePersonWallpaperAssetSuggesterFaceFetch", "", buf, 2u);
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGSinglePersonWallpaperAssetSuggesterFaceFetch";
    *&buf[12] = 2048;
    *&buf[14] = ((((v29 - v28) * v30.numer) / v30.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v82 = v32;
  loggingConnection = self->_loggingConnection;
  v34 = v91;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v35 = loggingConnection;
    v36 = [v91 count];
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Found %d candidates after prefiltering", buf, 8u);
  }

  v6 = v92;
  if (v92)
  {
    v37 = CFAbsoluteTimeGetCurrent();
    if (v37 - v7 >= 0.01)
    {
      LOBYTE(v101) = 0;
      v92[2](v92, &v101, 0.2);
      if (v101)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 222;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
        v38 = photoLibrary;
        v10 = blockCopy;
        v39 = v83;
        goto LABEL_95;
      }

      v7 = v37;
    }
  }

  v89 = v12;
  v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v91, "count")}];
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v125 = 0u;
  memset(buf, 0, sizeof(buf));
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  v40 = +[PGCurationManager assetPropertySetsForCuration];
  v90 = [v40 arrayByAddingObject:*MEMORY[0x277CD9AE0]];

  v41 = [v91 count];
  if (![v91 count])
  {
LABEL_69:
    v75 = self->_loggingConnection;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      v76 = v75;
      v77 = [v95 count];
      *v115 = 67109120;
      *&v115[4] = v77;
      _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Found %d candidates after postfiltering", v115, 8u);
    }

    v120 = v129;
    v121 = v130;
    v122 = v131;
    v116 = v125;
    v117 = v126;
    v118 = v127;
    v119 = v128;
    *v115 = *buf;
    *&v115[16] = *&buf[16];
    [(PGSinglePersonWallpaperAssetSuggester *)self logPosterFilteringStatistics:v115];
    secondaryFilteringContext = [(PGSinglePersonWallpaperAssetSuggester *)self secondaryFilteringContext];

    v23 = v86;
    v12 = v89;
    if (secondaryFilteringContext)
    {
      v79 = self->_loggingConnection;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        *v115 = 0;
        _os_log_impl(&dword_22F0FC000, v79, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Secondary filtering...", v115, 2u);
      }

      v120 = v107;
      v121 = v108;
      v122 = v109;
      v116 = v103;
      v117 = v104;
      v118 = v105;
      v119 = v106;
      *v115 = v101;
      *&v115[16] = v102;
      [(PGSinglePersonWallpaperAssetSuggester *)self logPosterFilteringStatistics:v115];
    }

    if (*&buf[4] >= 1)
    {
      [MEMORY[0x277D3C798] logInfo:self->_loggingConnection prefix:@"[PGSinglePersonWallpaperAssetSuggester]" avoidForKeyAssetStatistics:&v126];
    }

    v38 = photoLibrary;
    v10 = blockCopy;
    v39 = v83;
    v80 = v95;
    if (v6 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v100 = 0, (v6)[2](v6, &v100, 1.0), v100))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v115 = 67109378;
        *&v115[4] = 278;
        *&v115[8] = 2080;
        *&v115[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v115, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v9 = v95;
    }

    goto LABEL_94;
  }

  v42 = 0;
  v43 = 0.75 / v41;
  v44 = 0.2;
  while (1)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = MEMORY[0x277CCAA78];
    v47 = [v34 count];
    if (v47 - v42 >= 0xC8)
    {
      v48 = 200;
    }

    else
    {
      v48 = v47 - v42;
    }

    v49 = [v46 indexSetWithIndexesInRange:{v42, v48}];
    v50 = [v34 objectsAtIndexes:v49];

    v51 = [MEMORY[0x277CD97A8] fetchAssetsGroupedByFaceUUIDForFaces:v50 fetchPropertySets:v90];
    v52 = v44 + v43 * 0.3;
    if (v6)
    {
      v53 = CFAbsoluteTimeGetCurrent();
      v12 = v89;
      if (v53 - v7 >= 0.01)
      {
        v100 = 0;
        (v6)[2](v6, &v100, v52);
        if (v100)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v115 = 67109378;
            *&v115[4] = 236;
            *&v115[8] = 2080;
            *&v115[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v115, 0x12u);
          }

          v38 = photoLibrary;
          v10 = blockCopy;
          goto LABEL_90;
        }

        v7 = v53;
      }
    }

    v94 = v42;
    v54 = MEMORY[0x277CD97A8];
    allValues = [v51 allValues];
    [v54 prefetchOnAssets:allValues options:14 curationContext:self->_curationContext];

    v56 = v52 + v43 * 0.3;
    if (v6)
    {
      v57 = CFAbsoluteTimeGetCurrent();
      if (v57 - v7 >= 0.01)
      {
        v100 = 0;
        (v6)[2](v6, &v100, v56);
        if (!v100)
        {
          v7 = v57;
          goto LABEL_47;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v115 = 67109378;
          *&v115[4] = 242;
          *&v115[8] = 2080;
          *&v115[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v115, 0x12u);
        }

        v38 = photoLibrary;
        v10 = blockCopy;
        v12 = v89;
LABEL_90:
        v39 = v83;
        v80 = v95;

        objc_autoreleasePoolPop(v45);
        v9 = MEMORY[0x277CBEBF8];
        v23 = v86;
        goto LABEL_94;
      }
    }

LABEL_47:
    v93 = v45;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v58 = v50;
    v59 = [v58 countByEnumeratingWithState:&v96 objects:v123 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v97;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v97 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v96 + 1) + 8 * j);
          uuid = [v63 uuid];
          v65 = [v51 objectForKeyedSubscript:uuid];

          if (v65)
          {
            forbiddenAssetUUIDs = self->_forbiddenAssetUUIDs;
            uuid2 = [v65 uuid];
            LODWORD(forbiddenAssetUUIDs) = [(NSSet *)forbiddenAssetUUIDs containsObject:uuid2];

            if (forbiddenAssetUUIDs)
            {
              v68 = self->_loggingConnection;
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                v69 = v68;
                uuid3 = [v65 uuid];
                *v115 = 138412290;
                *&v115[4] = uuid3;
                _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Avoiding asset %@ because it has been rejected by the user", v115, 0xCu);
              }
            }

            else
            {
              v71 = [[PGSinglePersonWallpaperAssetCandidate alloc] initWithAsset:v65];
              if ([objc_opt_class() candidate:v71 andFace:v63 passesPostfilteringWithContext:self->_primaryFilteringContext curationContext:self->_curationContext statistics:buf] && (!self->_secondaryFilteringContext || objc_msgSend(objc_opt_class(), "candidate:andFace:passesPostfilteringWithContext:curationContext:statistics:", v71, v63, self->_secondaryFilteringContext, self->_curationContext, &v101)))
              {
                [v95 addObject:v71];
              }
            }
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v96 objects:v123 count:16];
      }

      while (v60);
    }

    v44 = v56 + v43 * 0.4;
    v6 = v92;
    if (!v92)
    {
      v34 = v91;
      v73 = v93;
      v74 = v94;
      goto LABEL_68;
    }

    v72 = CFAbsoluteTimeGetCurrent();
    v34 = v91;
    v73 = v93;
    v74 = v94;
    if (v72 - v7 >= 0.01)
    {
      break;
    }

LABEL_68:

    objc_autoreleasePoolPop(v73);
    v42 = v74 + 200;
    if (v42 >= [v34 count])
    {
      goto LABEL_69;
    }
  }

  v100 = 0;
  (v92)[2](v92, &v100, v44);
  if (!v100)
  {
    v7 = v72;
    goto LABEL_68;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v115 = 67109378;
    *&v115[4] = 264;
    *&v115[8] = 2080;
    *&v115[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v115, 0x12u);
  }

  objc_autoreleasePoolPop(v93);
  v9 = MEMORY[0x277CBEBF8];
  v38 = photoLibrary;
  v10 = blockCopy;
  v23 = v86;
  v12 = v89;
  v39 = v83;
  v80 = v95;
LABEL_94:

LABEL_95:
LABEL_96:

  return v9;
}

- (void)computeSuggestedAssetsWithNumberOfSuggestions:(unint64_t)suggestions progressBlock:(id)block
{
  v78 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  if (v5 && (v6 = CFAbsoluteTimeGetCurrent(), v6 - v68[3] >= 0.01) && (v68[3] = v6, LOBYTE(info.numer) = 0, (*(v5 + 2))(v5, &info, 0.0), v7 = *(v72 + 24) | LOBYTE(info.numer), *(v72 + 24) = v7, (v7 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v77 = 83;
      *&v77[4] = 2080;
      *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
      v8 = MEMORY[0x277D86220];
LABEL_44:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v9 = self->_loggingConnection;
    v10 = os_signpost_id_generate(v9);
    v11 = v9;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGSinglePersonWallpaperAssetSuggesterCandidateFiltering", "", buf, 2u);
    }

    v59 = v12;

    info = 0;
    mach_timebase_info(&info);
    v13 = mach_absolute_time();
    personLocalIdentifiers = self->_personLocalIdentifiers;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __101__PGSinglePersonWallpaperAssetSuggester_computeSuggestedAssetsWithNumberOfSuggestions_progressBlock___block_invoke;
    v61[3] = &unk_27888A188;
    v54 = v5;
    v62 = v54;
    v63 = &v67;
    v64 = &v71;
    v65 = 0x3F847AE147AE147BLL;
    v58 = [(PGSinglePersonWallpaperAssetSuggester *)self unsortedCandidatesFromPersonLocalIdentifiers:personLocalIdentifiers progressBlock:v61];
    if (*(v72 + 24) == 1)
    {
      LOBYTE(v15) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v77 = 90;
        *&v77[4] = 2080;
        *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v16 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v19 = v59;
      v20 = v19;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v10, "PGSinglePersonWallpaperAssetSuggesterCandidateFiltering", "", buf, 2u);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v77 = "PGSinglePersonWallpaperAssetSuggesterCandidateFiltering";
        *&v77[8] = 2048;
        *&v77[10] = ((((v16 - v13) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (v5 && (Current = CFAbsoluteTimeGetCurrent(), Current - v68[3] >= 0.01) && (v68[3] = Current, LOBYTE(v60.numer) = 0, (*(v54 + 2))(v54, &v60, 0.5), v22 = *(v72 + 24) | LOBYTE(v60.numer), *(v72 + 24) = v22, (v22 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v77 = 93;
          *&v77[4] = 2080;
          *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        LOBYTE(v15) = 1;
      }

      else
      {
        v23 = self->_loggingConnection;
        v24 = os_signpost_id_generate(v23);
        v25 = v23;
        v26 = v25;
        spid = v24;
        v51 = v24 - 1;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PGSinglePersonWallpaperAssetSuggesterCandidateDeduping", "", buf, 2u);
        }

        v52 = v26;

        v60 = 0;
        mach_timebase_info(&v60);
        v49 = mach_absolute_time();
        v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
        v75[0] = v27;
        v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"headroomEngaged" ascending:1];
        v75[1] = v28;
        v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceQualityPenalty" ascending:1];
        v75[2] = v29;
        v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
        v75[3] = v30;
        v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
        v75[4] = v31;
        v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"aestheticScore" ascending:0];
        v75[5] = v32;
        v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
        v75[6] = v33;
        v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
        v75[7] = v34;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:8];

        v35 = MEMORY[0x277D3C810];
        primaryFilteringContext = [(PGSinglePersonWallpaperAssetSuggester *)self primaryFilteringContext];
        [primaryFilteringContext timeIntervalForCandidateDeduping];
        v37 = [v35 sortedDedupedCandidatesFromCandidates:v58 sortDescriptors:v53 timeIntervalForCandidateDeduping:suggestions targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

        v15 = *(v72 + 24);
        if (v15 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v77 = 108;
            *&v77[4] = 2080;
            *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v38 = mach_absolute_time();
          v40 = v60.numer;
          v39 = v60.denom;
          v41 = v52;
          v42 = v41;
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGSinglePersonWallpaperAssetSuggesterCandidateDeduping", "", buf, 2u);
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v77 = "PGSinglePersonWallpaperAssetSuggesterCandidateDeduping";
            *&v77[8] = 2048;
            *&v77[10] = ((((v38 - v49) * v40) / v39) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v43 = [(PGSinglePersonWallpaperAssetSuggester *)self assetsFromCandidates:v37];
          objectEnumerator = [v43 objectEnumerator];
          suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
          self->_suggestedAssetEnumerator = objectEnumerator;

          self->_numberOfSuggestedAssets = [v37 count];
        }
      }
    }

    objc_autoreleasePoolPop(context);
    if (v5)
    {
      v46 = v15;
    }

    else
    {
      v46 = 1;
    }

    if ((v46 & 1) == 0)
    {
      v47 = CFAbsoluteTimeGetCurrent();
      if (v47 - v68[3] >= 0.01)
      {
        v68[3] = v47;
        LOBYTE(info.numer) = 0;
        (*(v54 + 2))(v54, &info, 1.0);
        v48 = *(v72 + 24) | LOBYTE(info.numer);
        *(v72 + 24) = v48;
        if ((v48 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v77 = 115;
          *&v77[4] = 2080;
          *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_44;
        }
      }
    }
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
}

void __101__PGSinglePersonWallpaperAssetSuggester_computeSuggestedAssetsWithNumberOfSuggestions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (PGSinglePersonWallpaperAssetSuggester)initWithPersonLocalIdentifiers:(id)identifiers curationContext:(id)context loggingConnection:(id)connection
{
  identifiersCopy = identifiers;
  contextCopy = context;
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = PGSinglePersonWallpaperAssetSuggester;
  v12 = [(PGSinglePersonWallpaperAssetSuggester *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personLocalIdentifiers, identifiers);
    objc_storeStrong(&v13->_curationContext, context);
    objc_storeStrong(&v13->_loggingConnection, connection);
    v14 = objc_alloc_init(PGSinglePersonWallpaperAssetSuggesterScoringContext);
    scoringContext = v13->_scoringContext;
    v13->_scoringContext = v14;

    v16 = objc_alloc_init(PGSinglePersonWallpaperAssetSuggesterDistancingContext);
    distancingContext = v13->_distancingContext;
    v13->_distancingContext = v16;
  }

  return v13;
}

+ (BOOL)passesFilteringWithAsset:(id)asset forTopWallpaperSuggestions:(BOOL)suggestions curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v70 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  v14 = [PGSinglePersonWallpaperAssetSuggesterFilteringContext alloc];
  if (suggestions)
  {
    v15 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v14 initForTopPeopleInOrientation:orientation];
  }

  else
  {
    v15 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v14 initForPeopleInOrientation:orientation];
  }

  v16 = v15;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844859D0];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v19 = [MEMORY[0x277CD9868] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  if ([v19 count] == 1)
  {
    firstObject = [v19 firstObject];
    if ([firstObject detectionType] != 1)
    {
      v38 = 0;
      if (reason)
      {
        *reason = @"No Human Face";
      }

LABEL_60:

      goto LABEL_61;
    }

    v48 = photoLibrary;
    reasonCopy = reason;
    selfCopy = self;
    v47 = v19;
    v51 = contextCopy;
    v52 = assetCopy;
    v50 = v16;
    [self prefilteringSubpredicatesWithContext:v16];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v58 = 0u;
    v20 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v56;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v56 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v55 + 1) + 8 * i);
          [librarySpecificFetchOptions setInternalPredicate:v24];
          v25 = MEMORY[0x277CD9868];
          localIdentifier = [firstObject localIdentifier];
          v68 = localIdentifier;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
          v28 = [v25 fetchFacesWithLocalIdentifiers:v27 options:librarySpecificFetchOptions];
          firstObject2 = [v28 firstObject];

          if (!firstObject2)
          {
            pg_wallpaperSuggestionReason = [v24 pg_wallpaperSuggestionReason];
            v37 = pg_wallpaperSuggestionReason;
            if (reasonCopy)
            {
              v43 = pg_wallpaperSuggestionReason;
              *reasonCopy = v37;
            }

            assetCopy = v52;
            v30 = obj;
            v16 = v50;
            v19 = v47;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              uuid = [firstObject uuid];
              *buf = 138412802;
              *&buf[4] = uuid;
              *&buf[12] = 2112;
              *&buf[14] = v37;
              *&buf[22] = 2112;
              *&buf[24] = v24;
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Face %@ fails subpredicate '%@': %@", buf, 0x20u);
            }

            v38 = 0;
            firstObject3 = obj;
            contextCopy = v51;
            goto LABEL_59;
          }
        }

        v21 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v30 = obj;

    v16 = v50;
    v31 = [self prefilteringInternalPredicateWithContext:v50];
    [librarySpecificFetchOptions setInternalPredicate:v31];

    v32 = MEMORY[0x277CD9868];
    localIdentifier2 = [firstObject localIdentifier];
    v67 = localIdentifier2;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v35 = [v32 fetchFacesWithLocalIdentifiers:v34 options:librarySpecificFetchOptions];
    firstObject3 = [v35 firstObject];

    assetCopy = v52;
    v37 = [[PGSinglePersonWallpaperAssetCandidate alloc] initWithAsset:v52];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    memset(buf, 0, sizeof(buf));
    contextCopy = v51;
    v38 = [selfCopy candidate:v37 andFace:firstObject3 passesPostfilteringWithContext:v50 curationContext:v51 statistics:buf];
    if (v38)
    {
      v39 = reasonCopy;
      if (!reasonCopy)
      {
        goto LABEL_58;
      }

      v40 = @"Pass";
    }

    else
    {
      v39 = reasonCopy;
      if (!reasonCopy)
      {
        goto LABEL_58;
      }

      if (*buf <= 0)
      {
        if (*&buf[4] <= 0)
        {
          if (*&buf[8] <= 0)
          {
            if (*&buf[12] <= 0)
            {
              if (*&buf[16] <= 0)
              {
                if (*&buf[20] <= 0)
                {
                  if (*&buf[24] <= 0)
                  {
                    if (*&buf[28] <= 0)
                    {
                      if (v60 <= 0)
                      {
                        if (v60 <= 0)
                        {
                          if (*(&v60 + 4) <= 0)
                          {
                            if (SHIDWORD(v60) <= 0)
                            {
                              v40 = @"Unknown Reason";
                            }

                            else
                            {
                              v40 = @"Sensitive Location";
                            }
                          }

                          else
                          {
                            v40 = @"Low Light";
                          }
                        }

                        else
                        {
                          v40 = @"Low Aesthetic&Wallpaper";
                        }
                      }

                      else
                      {
                        v40 = @"Not Safe for Display";
                      }
                    }

                    else
                    {
                      v40 = @"Low Crop Score";
                    }

                    contextCopy = v51;
                    assetCopy = v52;
                    v39 = reasonCopy;
                    v16 = v50;
                    v30 = obj;
                  }

                  else
                  {
                    v40 = @"Low Resolution";
                  }
                }

                else
                {
                  v40 = @"Clock Overlap";
                }
              }

              else
              {
                v40 = @"Low Face Quality";
              }
            }

            else
            {
              v40 = @"Low Wallpaper Score";
            }
          }

          else
          {
            v40 = @"Low Aesthetics";
          }
        }

        else
        {
          v40 = @"Avoid for Key Asset";
        }
      }

      else
      {
        v40 = @"Is Utility";
      }
    }

    *v39 = v40;
LABEL_58:
    v19 = v47;
LABEL_59:

    photoLibrary = v48;
    goto LABEL_60;
  }

  if (reason)
  {
    if ([v19 count] <= 1)
    {
      v41 = @"No Face";
    }

    else
    {
      v41 = @"Too Many Faces";
    }

    v38 = 0;
    *reason = v41;
  }

  else
  {
    v38 = 0;
  }

LABEL_61:

  return v38;
}

+ (BOOL)candidate:(id)candidate andFace:(id)face passesPostfilteringWithContext:(id)context curationContext:(id)curationContext statistics:(id *)statistics
{
  candidateCopy = candidate;
  faceCopy = face;
  contextCopy = context;
  curationContextCopy = curationContext;
  asset = [candidateCopy asset];
  curationModel = [asset curationModel];
  userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];

  LODWORD(curationContextCopy) = [curationModel isUtilityForMemoriesWithAsset:asset userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];
  if (curationContextCopy)
  {
    v18 = 0;
    ++statistics->var0;
    goto LABEL_22;
  }

  if ([curationModel avoidIfPossibleForKeyAssetWithAsset:asset statistics:&statistics->var12])
  {
    v18 = 0;
    ++statistics->var1;
    goto LABEL_22;
  }

  aestheticsModel = [curationModel aestheticsModel];
  overallAestheticScoreNode = [aestheticsModel overallAestheticScoreNode];
  [overallAestheticScoreNode highPrecisionOperatingPoint];
  v22 = v21;

  [candidateCopy aestheticScore];
  if (v23 < v22)
  {
    v18 = 0;
    ++statistics->var2;
    goto LABEL_22;
  }

  [contextCopy absoluteMinimumWallpaperScore];
  v25 = v24;
  if (v24 < 0.0)
  {
    wallpaperScoreModel = [curationModel wallpaperScoreModel];
    minimumWallpaperScoreNode = [wallpaperScoreModel minimumWallpaperScoreNode];
    [minimumWallpaperScoreNode highRecallOperatingPoint];
    v25 = v28;
  }

  [candidateCopy wallpaperScore];
  if (v25 > v29)
  {
    v18 = 0;
    ++statistics->var3;
    goto LABEL_22;
  }

  v30 = [curationModel isAestheticallyPrettyGoodWithAsset:asset];
  [contextCopy minimumWallpaperScore];
  v32 = v31;
  if (v31 < 0.0)
  {
    wallpaperScoreModel2 = [curationModel wallpaperScoreModel];
    peopleNode = [wallpaperScoreModel2 peopleNode];
    [peopleNode operatingPoint];
    v32 = v35;
  }

  [candidateCopy wallpaperScore];
  if (v32 <= v36)
  {
    v37 = 1;
  }

  else
  {
    v37 = v30;
  }

  if ((v37 & 1) == 0)
  {
    v18 = 0;
    ++statistics->var9;
    goto LABEL_22;
  }

  [contextCopy minimumFaceQuality];
  v39 = v38;
  if (v38 < 0.0)
  {
    curationModel2 = [asset curationModel];
    faceModel = [curationModel2 faceModel];
    qualityNode = [faceModel qualityNode];
    [qualityNode highRecallOperatingPoint];
    v39 = v43;
  }

  [faceCopy quality];
  if (v44 < v39)
  {
    v18 = 0;
    ++statistics->var4;
    goto LABEL_22;
  }

  v46 = v44;
  [contextCopy faceQualityPenaltyCutOff];
  v48 = v47;
  if (v47 < 0.0)
  {
    curationModel3 = [asset curationModel];
    faceModel2 = [curationModel3 faceModel];
    qualityNode2 = [faceModel2 qualityNode];
    [qualityNode2 highPrecisionOperatingPoint];
    v48 = v52;
  }

  [candidateCopy setFaceQualityPenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v46, v39, v48)}];
  if (([contextCopy bypassCropScoreCheck] & 1) == 0)
  {
    v62 = objc_alloc(MEMORY[0x277D3C828]);
    asset2 = [candidateCopy asset];
    v64 = [v62 initWithAsset:asset2 classification:1 headroomFeasible:1];

    v65 = [v64 cropForOrientation:{objc_msgSend(contextCopy, "orientation")}];
    if ([v65 passesClockOverlap])
    {
      [candidateCopy setHeadroomEngaged:{objc_msgSend(v65, "headroomEngaged")}];
      if ([v65 layoutVariant] == 2 || (objc_msgSend(v65, "cropZoomRatio"), v67 = v66, objc_msgSend(contextCopy, "maximumCropZoomRatio"), v67 <= v68))
      {
        [v65 cropScore];
        v71 = v70;
        [contextCopy minimumCropScore];
        if (v71 >= v72)
        {

          goto LABEL_26;
        }

        v69 = 28;
      }

      else
      {
        v69 = 24;
      }
    }

    else
    {
      v69 = 20;
    }

    ++*(&statistics->var0 + v69);

    v18 = 0;
    goto LABEL_22;
  }

LABEL_26:
  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:asset])
  {
    [contextCopy maximumLowLightScore];
    v54 = v53;
    if (v53 < 0.0)
    {
      curationModel4 = [asset curationModel];
      aestheticsModel2 = [curationModel4 aestheticsModel];
      lowLightNode = [aestheticsModel2 lowLightNode];
      [lowLightNode operatingPoint];
      v54 = v58;
    }

    aestheticProperties = [asset aestheticProperties];
    [aestheticProperties lowLight];
    v61 = v60;

    if (v54 >= v61)
    {
      if ([PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:asset])
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

  else
  {
    v18 = 0;
    ++statistics->var8;
  }

LABEL_22:

  return v18;
}

+ (id)prefilteringInternalPredicateWithContext:(id)context
{
  v3 = [self prefilteringSubpredicatesWithContext:context];
  v4 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v3];

  return v4;
}

+ (id)prefilteringSubpredicatesWithContext:(id)context
{
  v46[4] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [contextCopy deviceAspectRatio];
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = MEMORY[0x277CCAC30];
  [contextCopy maximumFaceRoll];
  v10 = -v9;
  [contextCopy maximumFaceRoll];
  v12 = [v8 predicateWithFormat:@"%K >= %f AND %K <= %f", @"roll", *&v10, @"roll", v11];
  [v12 pg_setWallpaperSuggestionReason:@"High Face Roll"];
  v45 = v12;
  [v7 addObject:v12];
  if ([contextCopy requiresSmile])
  {
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K IN { %d, %d } AND %K != %d AND %K != %d) OR (%K == %d)", @"ageType", 1, 2, @"faceExpressionType", 3, @"faceExpressionType", 2, @"smileType", 2];
    [v13 pg_setWallpaperSuggestionReason:@"Failed Face Expression"];
    [v7 addObject:v13];
  }

  if ([contextCopy requiresNoBlink])
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"eyesState", 2];
    [v14 pg_setWallpaperSuggestionReason:@"Closed Eyes"];
    [v7 addObject:v14];
  }

  v15 = MEMORY[0x277CCAC30];
  if (v6 <= 1.0)
  {
    v16 = v6;
  }

  else
  {
    v16 = 1.0;
  }

  [contextCopy minimumFaceSize];
  v18 = v17;
  [contextCopy maximumFaceSize];
  v44 = [v15 predicateWithFormat:@"%K <= %K * %f AND %K BETWEEN { %f, %f }", @"sourceWidth", @"sourceHeight", *&v16, @"size", v18, v19];
  v20 = MEMORY[0x277CCAC30];
  [contextCopy minimumFaceSize];
  v22 = v6 * v21;
  [contextCopy maximumFaceSize];
  v24 = [v20 predicateWithFormat:@"%K >= %K * %f AND %K BETWEEN { %f, %f }", @"sourceWidth", @"sourceHeight", fmax(v6, 1.0), @"size", *&v22, v6 * v23];
  v25 = MEMORY[0x277CCAC30];
  [contextCopy minimumFaceSize];
  v27 = v26;
  [contextCopy maximumFaceSize];
  v29 = [v25 predicateWithFormat:@"%K >= %K * %f AND %K < %K AND %K >= (%f * %K) / %K AND %K <= (%f * %K) / %K", @"sourceWidth", @"sourceHeight", *&v6, @"sourceWidth", @"sourceHeight", @"size", v27, @"sourceWidth", @"sourceHeight", @"size", v28, @"sourceWidth", @"sourceHeight"];
  v30 = MEMORY[0x277CCAC30];
  [contextCopy minimumFaceSize];
  v32 = v6 * v31;
  [contextCopy maximumFaceSize];
  v34 = [v30 predicateWithFormat:@"%K > %K AND %K <= %K * %f AND %K >= (%f * %K) / %K AND %K <= (%f * %K)  / %K", @"sourceWidth", @"sourceHeight", @"sourceWidth", @"sourceHeight", *&v6, @"size", *&v32, @"sourceHeight", @"sourceWidth", @"size", v6 * v33, @"sourceHeight", @"sourceWidth"];
  v35 = MEMORY[0x277CCA920];
  v46[0] = v44;
  v46[1] = v24;
  v46[2] = v29;
  v46[3] = v34;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  v37 = [v35 orPredicateWithSubpredicates:v36];

  [v37 pg_setWallpaperSuggestionReason:@"Face Size Out of Range"];
  [v7 addObject:v37];
  v38 = [self _assetExpressionWithFilteringContext:contextCopy];
  v39 = MEMORY[0x277CCA918];
  v40 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"%@.@count", v38];
  v41 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&unk_284483288];
  v42 = [v39 predicateWithLeftExpression:v40 rightExpression:v41 modifier:0 type:5 options:0];

  [v42 pg_setWallpaperSuggestionReason:@"Invalid Asset"];
  [v7 addObject:v42];

  return v7;
}

+ (id)_assetExpressionWithFilteringContext:(id)context
{
  v24[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  contextCopy = context;
  v4 = [v3 alloc];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K == %d", @"kind", 0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K != %d", @"kindSubtype", 10];
  v24[1] = v6;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K != %d", @"kindSubtype", 1];
  v24[2] = v7;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT ($asset.%K IN %@)", @"playbackStyle", &unk_2844859B8];
  v24[3] = v8;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY($asset.%K, $face, $face != NIL).@count == %d", @"detectedFaces", 1];
  v24[4] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K == NO AND $asset.%K == %d", @"hidden", @"trashedState", 0];
  v24[5] = v10;
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K >= %d", @"additionalAttributes.sceneAnalysisVersion", 77];
  v24[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:7];
  v13 = [v4 initWithArray:v12];

  LODWORD(v5) = [contextCopy styleableFilter];
  if (v5)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K > %d", @"currentSleetCast", 0];
    v23[0] = v14;
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K > 0", @"additionalAttributes.sleetIsReversible"];
    v23[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    [v13 addObjectsFromArray:v16];
  }

  v17 = MEMORY[0x277CCA9C0];
  v18 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"assetForFace"];
  v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];
  v20 = [v17 expressionForSubquery:v18 usingIteratorVariable:@"asset" predicate:v19];

  return v20;
}

@end