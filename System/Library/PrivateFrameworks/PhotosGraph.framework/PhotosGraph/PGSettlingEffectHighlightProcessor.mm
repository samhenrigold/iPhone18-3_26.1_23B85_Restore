@interface PGSettlingEffectHighlightProcessor
+ (BOOL)candidate:(id)candidate passesFilteringWithStatistics:(id *)statistics;
- ($C310A9A4ADCE7DE5CA50D45CD0B5CDBE)statistics;
- (PGSettlingEffectHighlightProcessor)initWithPhotoLibrary:(id)library;
- (id)fetchHighlightCandidatesWithProgressReporter:(id)reporter;
- (void)logStatistics:(id *)statistics;
@end

@implementation PGSettlingEffectHighlightProcessor

- ($C310A9A4ADCE7DE5CA50D45CD0B5CDBE)statistics
{
  v3 = *&self[1].var1;
  *&retstr->var0 = *&self->var3.var3;
  *&retstr->var3.var1 = v3;
  retstr->var3.var5 = self[1].var3.var2;
  return self;
}

- (void)logStatistics:(id *)statistics
{
  v10 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var2 = statistics->var2;
    v8 = 67109120;
    v9 = var2;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] %d on-demand settling effect score requested", &v8, 8u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var1 = statistics->var1;
    v8 = 67109120;
    v9 = var1;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] Filtered out %d for settlingEffectScore", &v8, 8u);
  }
}

- (id)fetchHighlightCandidatesWithProgressReporter:(id)reporter
{
  v67 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 44;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectHighlightProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v66 = 0;
    memset(buf, 0, sizeof(buf));
    v6 = self->_loggingConnection;
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v62 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchHighlightCandidates", "", v62, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v10 = mach_absolute_time();
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v12 = [PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:1];
    [librarySpecificFetchOptions setFetchPropertySets:v12];

    settlingEffectAssetInternalSortDescriptors = [MEMORY[0x277D3C810] settlingEffectAssetInternalSortDescriptors];
    [librarySpecificFetchOptions setInternalSortDescriptors:settlingEffectAssetInternalSortDescriptors];

    v14 = [MEMORY[0x277D3C810] fetchLivePhotoTabHighlightCandidateAssetsWithOptions:librarySpecificFetchOptions excludeExistingWallpapers:1 statistics:buf | 0xC];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v16 = loggingConnection;
      v17 = [v14 count];
      *v62 = 67109120;
      *&v62[4] = v17;
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] Found %d highlight candidate assets", v62, 8u);
    }

    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v62 = 67109378;
        *&v62[4] = 56;
        *&v62[8] = 2080;
        *&v62[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectHighlightProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v62, 0x12u);
      }

      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v49 = v7 - 1;
      spid = v7;
      v51 = librarySpecificFetchOptions;
      v52 = v9;
      v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = [v14 count];
      v19 = 0;
      v20 = 0;
      v50 = v18 / 0xC8;
      v21 = (1.0 / v18 + 1.0) * 0.8;
      v22 = 0x277CCA000uLL;
      v54 = v14;
      do
      {
        v53 = v20;
        v55 = [*(v22 + 2680) indexSetWithIndexesInRange:?];
        v23 = [v14 objectsAtIndexes:?];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v58;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v58 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v57 + 1) + 8 * i);
              v30 = objc_autoreleasePoolPush();
              v31 = [[PGSettlingEffectWallpaperSuggestionCandidate alloc] initWithAsset:v29 suggestion:0];
              if ([objc_opt_class() candidate:v31 passesFilteringWithStatistics:buf])
              {
                [v56 addObject:v31];
              }

              if ([reporterCopy isCancelledWithProgress:v21 * v19 + 0.2])
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v62 = 67109378;
                  *&v62[4] = 78;
                  *&v62[8] = 2080;
                  *&v62[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectHighlightProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v62, 0x12u);
                }

                objc_autoreleasePoolPop(v30);
                v5 = MEMORY[0x277CBEBF8];
                librarySpecificFetchOptions = v51;
                v9 = v52;
                v14 = v54;
                goto LABEL_32;
              }

              ++v19;

              objc_autoreleasePoolPop(v30);
            }

            v26 = [v24 countByEnumeratingWithState:&v57 objects:v64 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v32 = self->_loggingConnection;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = v32;
          firstIndex = [v55 firstIndex];
          lastIndex = [v55 lastIndex];
          *v62 = 134218240;
          *&v62[4] = firstIndex;
          *&v62[12] = 2048;
          *&v62[14] = lastIndex;
          _os_log_debug_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_DEBUG, "[PGSettlingEffectHighlightProcessor] processed candidates from %lu to %lu", v62, 0x16u);
        }

        v14 = v54;
        v20 = v53 + 1;
        v22 = 0x277CCA000;
      }

      while (v53 != v50);
      v37 = +[PGSettlingEffectWallpaperSuggestionCandidate sortDescriptorsForProcessing];
      v5 = [v56 sortedArrayUsingDescriptors:v37];

      *buf = [v5 count];
      v38 = self->_loggingConnection;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v40 = v38;
        v41 = [v56 count];
        *v62 = 67109120;
        *&v62[4] = v41;
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] Found %d candidates", v62, 8u);
      }

      v42 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v9 = v52;
      v45 = v52;
      v46 = v45;
      librarySpecificFetchOptions = v51;
      if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *v62 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, spid, "FetchHighlightCandidates", "", v62, 2u);
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *v62 = 136315394;
        *&v62[4] = "FetchHighlightCandidates";
        *&v62[12] = 2048;
        *&v62[14] = ((((v42 - v10) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v62, 0x16u);
      }

      *v62 = *buf;
      *&v62[16] = *&buf[16];
      v63 = v66;
      [(PGSettlingEffectHighlightProcessor *)self logStatistics:v62];
      v47 = *&buf[16];
      *&self->_statistics.numberOfHighlightCandidatesForFRC = *buf;
      *&self->_statistics.highlightStatistics.numberOfHighlightCandidates = v47;
      self->_statistics.highlightStatistics.numberOfEliminationsThruDeviceOwner = v66;
LABEL_32:
    }
  }

  return v5;
}

- (PGSettlingEffectHighlightProcessor)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = PGSettlingEffectHighlightProcessor;
  v6 = [(PGSettlingEffectHighlightProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = os_log_create("com.apple.PhotosGraph", "suggestions");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;
  }

  return v7;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithStatistics:(id *)statistics
{
  asset = [candidate asset];
  v12 = 0;
  [PGSettlingEffectScoreHelper analyzedSettlingEffectScoreForAsset:asset requestedOnDemand:&v12];
  v7 = v6;
  if (v12 == 1)
  {
    ++statistics->var2;
  }

  mediaAnalysisProperties = [asset mediaAnalysisProperties];
  +[PGSettlingEffectWallpaperSuggesterFilteringContext minimumSettlingEffectScoreForSuggestionSubtype:mediaAnalysisVersion:](PGSettlingEffectWallpaperSuggesterFilteringContext, "minimumSettlingEffectScoreForSuggestionSubtype:mediaAnalysisVersion:", 0, [mediaAnalysisProperties mediaAnalysisVersion]);
  v10 = v9;

  if (v10 > v7)
  {
    ++statistics->var1;
  }

  return v10 <= v7;
}

@end