@interface PGHighlightTailor
- (BOOL)enrichAllHighlightsWithOptions:(unint64_t)options progressBlock:(id)block;
- (BOOL)enrichDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights withOptions:(unint64_t)options progressBlock:(id)block;
- (BOOL)enrichHighlights:(id)highlights options:(unint64_t)options progressBlock:(id)block;
- (BOOL)shouldEnrichHighlight:(id)highlight withEnrichmentProfile:(id)profile options:(unint64_t)options;
- (PGHighlightTailor)initWithWorkingContext:(id)context;
- (double)highlightVisibilityWeightForItem:(id)item;
- (id)allHighlightModelsNeedingEnrichmentForHighlightSubtype:(int64_t)subtype options:(unint64_t)options;
- (id)allHighlightsNeedingEnrichmentWithOptions:(unint64_t)options;
- (id)assetSortDescriptors;
- (id)bestEnrichmentProfileForHighlight:(id)highlight options:(unint64_t)options;
- (id)computeChangedVisibilityScoresForItems:(id)items;
- (id)enrichmentValuesForHighlight:(id)highlight usingEnrichmentProfile:(id)profile graph:(id)graph options:(unint64_t)options reportChangedValuesOnly:(BOOL)only highlightTailorContext:(id)context progressBlock:(id)block;
- (id)initForTesting;
- (id)keyAssetFromHighlight:(id)highlight sharingFilter:(unsigned __int16)filter;
- (id)sortedCurationOfType:(unsigned __int16)type fromHighlight:(id)highlight;
- (unint64_t)tailorOptionsAllowedForHighlight:(id)highlight originalOptions:(unint64_t)options;
- (void)writeHighlightEnrichmentValues:(id)values toChangeRequest:(id)request highlight:(id)highlight options:(unint64_t)options;
@end

@implementation PGHighlightTailor

- (id)sortedCurationOfType:(unsigned __int16)type fromHighlight:(id)highlight
{
  typeCopy = type;
  highlightCopy = highlight;
  photoLibrary = [highlightCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  assetSortDescriptors = [(PGHighlightTailor *)self assetSortDescriptors];
  [librarySpecificFetchOptions setSortDescriptors:assetSortDescriptors];

  [librarySpecificFetchOptions setHighlightCurationType:typeCopy];
  v10 = +[PGHighlightEnrichmentUtilities assetPropertySetsForEnrichment];
  [librarySpecificFetchOptions setFetchPropertySets:v10];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v11 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:highlightCopy options:librarySpecificFetchOptions];

  fetchedObjects = [v11 fetchedObjects];

  return fetchedObjects;
}

- (id)keyAssetFromHighlight:(id)highlight sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  workingContext = self->_workingContext;
  highlightCopy = highlight;
  photoLibrary = [(PGManagerWorkingContext *)workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  [librarySpecificFetchOptions setSharingFilter:filterCopy];
  v9 = [MEMORY[0x277CD97A8] fetchKeyCuratedAssetInAssetCollection:highlightCopy referenceAsset:0 options:librarySpecificFetchOptions];

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)bestEnrichmentProfileForHighlight:(id)highlight options:(unint64_t)options
{
  v20 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_enrichmentProfiles;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 canEnrichHighlight:highlightCopy withOptions:{options, v15}])
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)enrichDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights withOptions:(unint64_t)options progressBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  groupHighlightsCopy = groupHighlights;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v60[3] >= 0.01)
    {
      v60[3] = Current;
      LOBYTE(info.numer) = 0;
      v9[2](v9, &info, 0.0);
      v11 = *(v64 + 24) | LOBYTE(info.numer);
      *(v64 + 24) = v11;
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v68 = 960;
          *&v68[4] = 2080;
          *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
          v12 = MEMORY[0x277D86220];
LABEL_37:
          _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }
  }

  v13 = [highlightsCopy count];
  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = self->_loggingConnection;
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "EnrichDayHighlights", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v18 = mach_absolute_time();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke;
    v53[3] = &unk_27888A188;
    v54 = v9;
    v55 = &v59;
    v56 = &v63;
    v57 = 0x3F847AE147AE147BLL;
    v19 = [(PGHighlightTailor *)self enrichHighlights:highlightsCopy options:options progressBlock:v53];
    v20 = *(v64 + 24);
    if (v20 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v68 = 970;
        *&v68[4] = 2080;
        *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v42 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v23 = v17;
      v24 = v23;
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 134217984;
        *v68 = v13;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v15, "EnrichDayHighlights", "Day Highlight count (%ld)", buf, 0xCu);
      }

      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Day Highlight count (%ld)", v13];
        *buf = 136315650;
        *v68 = "EnrichDayHighlights";
        *&v68[8] = 2112;
        *&v68[10] = v26;
        v69 = 2048;
        v70 = ((((v42 - v18) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(context);
    if (v20)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = 1;
  }

  if ([groupHighlightsCopy count])
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self->_loggingConnection;
    v30 = os_signpost_id_generate(v29);
    v31 = v29;
    v32 = v31;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "EnrichDayGroupHighlights", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v33 = mach_absolute_time();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke_251;
    v48[3] = &unk_27888A188;
    v49 = v9;
    v50 = &v59;
    v51 = &v63;
    v52 = 0x3F847AE147AE147BLL;
    LOBYTE(v19) = [(PGHighlightTailor *)self enrichHighlights:groupHighlightsCopy options:options progressBlock:v48];
    v34 = mach_absolute_time();
    v35 = info;
    v36 = v32;
    v37 = v36;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      v38 = [groupHighlightsCopy count];
      *buf = 134217984;
      *v68 = v38;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v37, OS_SIGNPOST_INTERVAL_END, v30, "EnrichDayGroupHighlights", "Day Group Highlight count (%ld)", buf, 0xCu);
    }

    v39 = v37;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Day Group Highlight count (%ld)", objc_msgSend(groupHighlightsCopy, "count")];
      *buf = 136315650;
      *v68 = "EnrichDayGroupHighlights";
      *&v68[8] = 2112;
      *&v68[10] = v40;
      v69 = 2048;
      v70 = ((((v34 - v33) * v35.numer) / v35.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
  }

  if (*(v64 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v68 = 982;
      *&v68[4] = 2080;
      *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
      v12 = MEMORY[0x277D86220];
      goto LABEL_37;
    }

LABEL_38:
    LOBYTE(v19) = 0;
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  return v19;
}

void __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke_251(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)allHighlightsNeedingEnrichmentWithOptions:(unint64_t)options
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(PGHighlightTailor *)self allHighlightModelsNeedingEnrichmentForHighlightSubtype:1000000301 options:options];
  [v5 addObjectsFromArray:v6];
  v7 = [(PGHighlightTailor *)self allHighlightModelsNeedingEnrichmentForHighlightSubtype:1000000304 options:options];
  [v5 addObjectsFromArray:v7];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v21[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"kind" ascending:1];
  v21[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:1];
  v21[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v5 sortUsingDescriptors:v11];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = loggingConnection;
    v15 = 134218496;
    v16 = [v6 count];
    v17 = 2048;
    v18 = [v7 count];
    v19 = 2048;
    v20 = [v5 count];
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "%tu day highlights and %tu day groups to enrich (%tu total)", &v15, 0x20u);
  }

  return v5;
}

- (BOOL)enrichAllHighlightsWithOptions:(unint64_t)options progressBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v7 && (Current = CFAbsoluteTimeGetCurrent(), Current - v36[3] >= 0.01) && (v36[3] = Current, LOBYTE(info.numer) = 0, (*(v7 + 2))(v7, &info, 0.0), v9 = *(v40 + 24) | LOBYTE(info.numer), *(v40 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v44 = 918;
      *&v44[4] = 2080;
      *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [(PGHighlightTailor *)self allHighlightsNeedingEnrichmentWithOptions:options];
    v12 = [v11 count];
    if (v12)
    {
      context = objc_autoreleasePoolPush();
      v13 = self->_loggingConnection;
      v14 = os_signpost_id_generate(v13);
      v15 = v13;
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "EnrichHighlights", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v17 = mach_absolute_time();
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__PGHighlightTailor_enrichAllHighlightsWithOptions_progressBlock___block_invoke;
      v29[3] = &unk_27888A188;
      v30 = v7;
      v31 = &v35;
      v32 = &v39;
      v33 = 0x3F847AE147AE147BLL;
      v10 = [(PGHighlightTailor *)self enrichHighlights:v11 options:options progressBlock:v29];
      v18 = *(v40 + 24);
      if (v18 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v44 = 929;
          *&v44[4] = 2080;
          *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v27 = v17;
        v26 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v21 = v16;
        v22 = v21;
        if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 134217984;
          *v44 = v12;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v14, "EnrichHighlights", "Highlight count (%ld)", buf, 0xCu);
        }

        v23 = v22;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Highlight count (%ld)", v12];
          *buf = 136315650;
          *v44 = "EnrichHighlights";
          *&v44[8] = 2112;
          *&v44[10] = v24;
          v45 = 2048;
          v46 = ((((v26 - v27) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(context);
      if (v18)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v10;
}

void __66__PGHighlightTailor_enrichAllHighlightsWithOptions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)enrichHighlights:(id)highlights options:(unint64_t)options progressBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  blockCopy = block;
  v9 = [highlightsCopy count];
  if (v9)
  {
    v10 = v9;
    v11 = self->_loggingConnection;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    v15 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "EnrichHighlights", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v32 = mach_absolute_time();
    *buf = 0;
    v45 = buf;
    v46 = 0x2020000000;
    v47 = 0;
    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    spid = v12;
    serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
    v18 = self->_loggingConnection;
    workingContext = self->_workingContext;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke;
    v34[3] = &unk_2788841A0;
    v40 = blockCopy;
    v42 = v10;
    v20 = v18;
    v35 = v20;
    selfCopy = self;
    v21 = photoLibrary;
    v37 = v21;
    optionsCopy = options;
    v22 = serviceManager;
    v38 = v22;
    v39 = highlightsCopy;
    v41 = buf;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v34];
    v23 = mach_absolute_time();
    v24 = info;
    v25 = v14;
    v26 = v25;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v49 = 134217984;
      v50 = v10;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_END, spid, "EnrichHighlights", "Highlight count (%ld)", v49, 0xCu);
    }

    v27 = v26;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Highlight count (%ld)", v10];
      *v49 = 136315650;
      v50 = "EnrichHighlights";
      v51 = 2112;
      v52 = v28;
      v53 = 2048;
      v54 = ((((v23 - v32) * v24.numer) / v24.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v49, 0x20u);
    }

    v29 = v45[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = 1;
  }

  return v29 & 1;
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v3 = _Block_copy(*(a1 + 72));
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v64 = v3;
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v87[3] >= 0.01)
    {
      v87[3] = Current;
      LOBYTE(v94) = 0;
      (v64)[2](v64, &v94, 0.0);
      v5 = *(v91 + 24) | v94;
      *(v91 + 24) = v5;
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 785;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_80;
      }
    }
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Starting enrichment on %lu highlights.", buf, 0xCu);
    v7 = *(a1 + 32);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_225;
  aBlock[3] = &unk_278884178;
  v84 = buf;
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v81 = v8;
  v82 = v9;
  v83 = v10;
  v85 = *(a1 + 96);
  v55 = _Block_copy(aBlock);
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = [v54 graph];
  v58 = [[PGHighlightTailorContext alloc] initWithPhotoLibrary:*(a1 + 48) graph:v56 serviceManager:*(a1 + 56) loggingConnection:*(a1 + 32)];
  v79 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  obj = *(a1 + 64);
  v11 = [obj countByEnumeratingWithState:&v76 objects:v98 count:16];
  if (!v11)
  {
    v13 = 0.0;
    goto LABEL_63;
  }

  v66 = 0;
  v12 = 1.0 / v6;
  v60 = *v77;
  v13 = 0.0;
  while (2)
  {
    v59 = v11;
    for (i = 0; i != v59; ++i)
    {
      if (*v77 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(a1 + 32);
      if (*(*&buf[8] + 24) == 1)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          LOWORD(v94) = 0;
          _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Encountered error performing change request. Stopping enrichment.", &v94, 2u);
        }

        goto LABEL_77;
      }

      v16 = *(*(&v76 + 1) + 8 * i);
      v17 = v15;
      v18 = os_signpost_id_generate(v17);
      v19 = v17;
      v20 = v19;
      spid = v18;
      v65 = v18 - 1;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        LOWORD(v94) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "EnrichOneHighlight", "", &v94, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v61 = mach_absolute_time();
      v21 = objc_autoreleasePoolPush();
      v22 = [v16 assetCollection];
      v23 = [v22 localIdentifier];

      v24 = [*(a1 + 40) bestEnrichmentProfileForHighlight:v16 options:*(a1 + 96)];
      if (v24)
      {
        v25 = *(a1 + 32);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v94 = 138412546;
          *v95 = v23;
          *&v95[8] = 2112;
          *&v95[10] = v24;
          _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Enriching highlight %@ with profile %@", &v94, 0x16u);
        }

        if (![*(a1 + 40) shouldEnrichHighlight:v16 withEnrichmentProfile:v24 options:*(a1 + 96)])
        {
          v30 = *(a1 + 32);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [v24 identifier];
            v94 = 138412546;
            *v95 = v23;
            *&v95[8] = 2112;
            *&v95[10] = v31;
            _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGHighlightTailor] %@ already up to date with profile %@", &v94, 0x16u);
          }

LABEL_31:
          v28 = 0;
          goto LABEL_35;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 96);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_233;
        v68[3] = &unk_278886858;
        v69 = v64;
        v70 = &v86;
        v73 = v13;
        v74 = v12;
        v72 = 0x3F847AE147AE147BLL;
        v71 = &v90;
        v28 = [v26 enrichmentValuesForHighlight:v16 usingEnrichmentProfile:v24 graph:v56 options:v27 reportChangedValuesOnly:1 highlightTailorContext:v58 progressBlock:v68];
        if (*(v91 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v94 = 67109378;
            *v95 = 853;
            *&v95[4] = 2080;
            *&v95[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v94, 0x12u);
          }

LABEL_42:
          v38 = 0;
          goto LABEL_44;
        }

        v32 = *(a1 + 32);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v24 identifier];
          v94 = 138412802;
          *v95 = v23;
          *&v95[8] = 2112;
          *&v95[10] = v33;
          v96 = 2112;
          v97 = v28;
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Enriched %@ with profile %@, values: %@", &v94, 0x20u);
        }
      }

      else
      {
        if (![v16 enrichmentState])
        {
          goto LABEL_31;
        }

        v28 = objc_alloc_init(PGHighlightEnrichmentValues);
        [(PGHighlightEnrichmentValues *)v28 setClearCurations:1];
        v29 = *(a1 + 32);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v94 = 138412290;
          *v95 = v23;
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[PGHighlightTailor] No profile, reset highlight %@ to not enriched", &v94, 0xCu);
        }
      }

LABEL_35:
      ++v66;
      v34 = *(a1 + 32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 88);
        v94 = 134218240;
        *v95 = v66;
        *&v95[8] = 2048;
        *&v95[10] = v35;
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Enrichment progress: %ld / %ld", &v94, 0x16u);
      }

      v13 = v12 + v13;
      if (v64)
      {
        v36 = CFAbsoluteTimeGetCurrent();
        if (v36 - v87[3] >= 0.01)
        {
          v87[3] = v36;
          v67 = 0;
          (v64)[2](v64, &v67, v13);
          v37 = *(v91 + 24) | v67;
          *(v91 + 24) = v37;
          if (v37)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v94 = 67109378;
              *v95 = 873;
              *&v95[4] = 2080;
              *&v95[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v94, 0x12u);
            }

            goto LABEL_42;
          }
        }
      }

      v38 = 1;
LABEL_44:

      objc_autoreleasePoolPop(v21);
      if (!v38)
      {

LABEL_77:
        goto LABEL_79;
      }

      v39 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v42 = v20;
      v43 = v42;
      if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        LOWORD(v94) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "EnrichOneHighlight", "", &v94, 2u);
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v94 = 136315394;
        *v95 = "EnrichOneHighlight";
        *&v95[8] = 2048;
        *&v95[10] = ((((v39 - v61) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v94, 0x16u);
      }

      if (v28)
      {
        if (![(PGHighlightEnrichmentValues *)v28 hasChanges])
        {
          v44 = *(a1 + 32);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [v16 uuid];
            v94 = 138412290;
            *v95 = v45;
            _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "No change in enrichment for highlight %@", &v94, 0xCu);
          }
        }

        if ([(PGHighlightEnrichmentValues *)v28 hasChanges]|| *(a1 + 96) == 0xFF)
        {
          v46 = [(PGHighlightEnrichmentValues *)v28 enrichmentState];
          v47 = [v16 uuid];
          [(PGHighlightTailorContext *)v58 savePendingEnrichmentState:v46 forHighlightUUID:v47];

          [v63 addObject:v28];
          if ([v63 count] >= 0x14)
          {
            v48 = v63;
            v63 = objc_alloc_init(MEMORY[0x277CBEB18]);

            v55[2](v55, v48);
          }
        }
      }
    }

    v11 = [obj countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_63:

  if (v64 && (v49 = CFAbsoluteTimeGetCurrent(), v49 - v87[3] >= 0.01) && (v87[3] = v49, LOBYTE(info.numer) = 0, (v64)[2](v64, &info, v13), v50 = *(v91 + 24) | LOBYTE(info.numer), *(v91 + 24) = v50, (v50 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v94 = 67109378;
      *v95 = 900;
      *&v95[4] = 2080;
      *&v95[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
      v51 = MEMORY[0x277D86220];
      goto LABEL_73;
    }
  }

  else
  {
    v55[2](v55, v63);
    dispatch_group_wait(*(*(a1 + 40) + 24), 0xFFFFFFFFFFFFFFFFLL);
    if (v64 && (v52 = CFAbsoluteTimeGetCurrent(), v52 - v87[3] >= 0.01) && (v87[3] = v52, LOBYTE(info.numer) = 0, (v64)[2](v64, &info, 1.0), v53 = *(v91 + 24) | LOBYTE(info.numer), *(v91 + 24) = v53, (v53 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v94 = 67109378;
        *v95 = 906;
        *&v95[4] = 2080;
        *&v95[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
        v51 = MEMORY[0x277D86220];
LABEL_73:
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v94, 0x12u);
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }
  }

LABEL_79:

  _Block_object_dispose(buf, 8);
LABEL_80:
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_225(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Encountered error performing change request. Stopping enrichment.", buf, 2u);
    }
  }

  else if ([v3 count])
  {
    dispatch_group_enter(*(*(a1 + 40) + 24));
    v6 = *(a1 + 32);
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CommitBatchOfHighlightEnrichmentChanges", "", buf, 2u);
    }

    *buf = 0;
    mach_timebase_info(buf);
    v10 = mach_absolute_time();
    v11 = *(a1 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_226;
    v24[3] = &unk_278889B18;
    v12 = v4;
    v13 = *(a1 + 40);
    v25 = v12;
    v26 = v13;
    v27 = *(a1 + 64);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_2;
    v17[3] = &unk_278884150;
    v21 = v10;
    v22 = v7;
    v18 = v9;
    v23 = *buf;
    v16 = *(a1 + 32);
    v14 = v16.i64[0];
    v19 = vextq_s8(v16, v16, 8uLL);
    v20 = *(a1 + 56);
    v15 = v9;
    [v11 performChanges:v24 completionHandler:v17];
  }
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_233(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + a3 * *(a1 + 72));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_226(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 highlight];
        v9 = [v8 changeRequest];
        if (v9)
        {
          [*(a1 + 40) writeHighlightEnrichmentValues:v7 toChangeRequest:v9 highlight:v8 options:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = *(a1 + 64);
  v8 = *(a1 + 80);
  v7 = *(a1 + 84);
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CommitBatchOfHighlightEnrichmentChanges", "", &v14, 2u);
  }

  v12 = *(a1 + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "CommitBatchOfHighlightEnrichmentChanges";
    v16 = 2048;
    v17 = ((((v5 - v6) * v8) / v7) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v14, 0x16u);
  }

  dispatch_group_leave(*(*(a1 + 40) + 24));
  if (v4)
  {
    v13 = *(a1 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error performing enrichment change request: %@", &v14, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (BOOL)shouldEnrichHighlight:(id)highlight withEnrichmentProfile:(id)profile options:(unint64_t)options
{
  optionsCopy = options;
  highlightCopy = highlight;
  profileCopy = profile;
  if ((optionsCopy & 0x40000000) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && [highlightCopy isUpToDate])
  {
    enrichmentState = [highlightCopy enrichmentState];
    v10 = enrichmentState < [profileCopy targetEnrichmentState];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)allHighlightModelsNeedingEnrichmentForHighlightSubtype:(int64_t)subtype options:(unint64_t)options
{
  optionsCopy = options;
  v14[1] = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  if ((optionsCopy & 0x40000000) == 0)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(enrichmentVersion != highlightVersion) || (enrichmentState != %ld)", 4];
    [librarySpecificFetchOptions setInternalPredicate:v10];
  }

  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:subtype options:librarySpecificFetchOptions];
  if ([v11 count])
  {
    fetchedObjects = [v11 fetchedObjects];
  }

  else
  {
    fetchedObjects = MEMORY[0x277CBEBF8];
  }

  return fetchedObjects;
}

- (void)writeHighlightEnrichmentValues:(id)values toChangeRequest:(id)request highlight:(id)highlight options:(unint64_t)options
{
  optionsCopy = options;
  v69 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  requestCopy = request;
  highlightCopy = highlight;
  if ([valuesCopy clearCurations])
  {
    [requestCopy setEnrichmentState:0];
    [requestCopy clearCurations];
    goto LABEL_49;
  }

  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  if (optionsCopy == -1)
  {
    enrichmentState = [valuesCopy enrichmentState];
    if (enrichmentState == 0xFFFF)
    {
      if (![highlightCopy enrichmentState])
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v15 = enrichmentState;
    [requestCopy setEnrichmentState:enrichmentState];
    if (v15)
    {
LABEL_6:
      date = [MEMORY[0x277CBEAA8] date];
      [requestCopy setLastEnrichmentDate:date];

      [requestCopy didEnrichHighlight];
    }
  }

LABEL_7:
  [valuesCopy promotionScore];
  if (v17 != -1.0)
  {
    [requestCopy setPromotionScore:?];
  }

  if ([valuesCopy smartDescriptionPrivateUpdated])
  {
    smartDescriptionPrivate = [valuesCopy smartDescriptionPrivate];
    [requestCopy setSmartDescription:smartDescriptionPrivate];
  }

  if ([valuesCopy verboseSmartDescriptionPrivateUpdated])
  {
    verboseSmartDescriptionPrivate = [valuesCopy verboseSmartDescriptionPrivate];
    [requestCopy setVerboseSmartDescription:verboseSmartDescriptionPrivate];
  }

  if ([valuesCopy smartDescriptionSharedUpdated])
  {
    smartDescriptionShared = [valuesCopy smartDescriptionShared];
    [requestCopy setSmartDescriptionShared:smartDescriptionShared];
  }

  if ([valuesCopy verboseSmartDescriptionSharedUpdated])
  {
    verboseSmartDescriptionShared = [valuesCopy verboseSmartDescriptionShared];
    [requestCopy setVerboseSmartDescriptionShared:verboseSmartDescriptionShared];
  }

  if ([valuesCopy smartDescriptionMixedUpdated])
  {
    smartDescriptionMixed = [valuesCopy smartDescriptionMixed];
    [requestCopy setSmartDescriptionMixed:smartDescriptionMixed];
  }

  v59 = highlightCopy;
  if ([valuesCopy verboseSmartDescriptionMixedUpdated])
  {
    verboseSmartDescriptionMixed = [valuesCopy verboseSmartDescriptionMixed];
    [requestCopy setVerboseSmartDescriptionMixed:verboseSmartDescriptionMixed];
  }

  momentTitleByMomentUUID = [valuesCopy momentTitleByMomentUUID];
  v25 = momentTitleByMomentUUID;
  if (momentTitleByMomentUUID)
  {
    allKeys = [momentTitleByMomentUUID allKeys];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke;
    v66[3] = &unk_278884128;
    v67 = v25;
    [requestCopy enumerateMomentChangeRequestsForUUIDs:allKeys inPhotoLibrary:photoLibrary usingBlock:v66];
  }

  momentProcessedLocationByMomentUUID = [valuesCopy momentProcessedLocationByMomentUUID];
  v28 = momentProcessedLocationByMomentUUID;
  if (momentProcessedLocationByMomentUUID)
  {
    allKeys2 = [momentProcessedLocationByMomentUUID allKeys];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke_2;
    v64[3] = &unk_278884128;
    v65 = v28;
    [requestCopy enumerateMomentChangeRequestsForUUIDs:allKeys2 inPhotoLibrary:photoLibrary usingBlock:v64];
  }

  keyAssetPrivate = [valuesCopy keyAssetPrivate];
  if (keyAssetPrivate)
  {
    [requestCopy setKeyAssetPrivate:keyAssetPrivate];
  }

  keyAssetShared = [valuesCopy keyAssetShared];
  if (keyAssetShared)
  {
    [requestCopy setKeyAssetShared:keyAssetShared];
  }

  mixedSharingCompositionKeyAssetRelationshipValue = [valuesCopy mixedSharingCompositionKeyAssetRelationshipValue];
  v33 = mixedSharingCompositionKeyAssetRelationshipValue;
  if (mixedSharingCompositionKeyAssetRelationshipValue)
  {
    [requestCopy setMixedSharingCompositionKeyAssetRelationship:{objc_msgSend(mixedSharingCompositionKeyAssetRelationshipValue, "unsignedShortValue")}];
  }

  extendedCuration = [valuesCopy extendedCuration];
  if (extendedCuration)
  {
    [requestCopy setAssets:extendedCuration forCurationType:2];
  }

  v54 = keyAssetShared;
  summaryCuration = [valuesCopy summaryCuration];
  v36 = summaryCuration;
  if (summaryCuration)
  {
    if ([summaryCuration count])
    {
      [requestCopy setAssets:v36 forCurationType:1];
    }

    else
    {
      [requestCopy clearCurationWithType:1];
    }
  }

  v51 = v36;
  v52 = extendedCuration;
  v53 = v33;
  v55 = keyAssetPrivate;
  v56 = v28;
  v57 = v25;
  v58 = photoLibrary;
  mood = [valuesCopy mood];
  if (mood != -1)
  {
    [requestCopy setMood:mood];
  }

  visibilityScoreByAsset = [valuesCopy visibilityScoreByAsset];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  visibilityScoreByAsset2 = [valuesCopy visibilityScoreByAsset];
  keyEnumerator = [visibilityScoreByAsset2 keyEnumerator];

  v41 = [keyEnumerator countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v61;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v45 = *(*(&v60 + 1) + 8 * i);
        v46 = [visibilityScoreByAsset objectForKey:v45];
        [v46 doubleValue];
        v48 = v47;
        [v45 highlightVisibilityScore];
        if (v48 != v49)
        {
          v50 = [MEMORY[0x277CD97B0] changeRequestForAsset:v45];
          [v46 doubleValue];
          [v50 setHighlightVisibilityScore:?];
        }
      }

      v42 = [keyEnumerator countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v42);
  }

  highlightCopy = v59;
LABEL_49:
}

void __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 title];
    v8 = [v7 stringValue];

    [v12 setTitle:v8];
    v9 = [v6 subtitle];
    v10 = [v9 stringValue];

    [v12 setSubtitle:v10];
    v11 = [v6 locationNames];
    [v12 setLocalizedLocationNames:v11];
  }
}

void __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v4 objectForKeyedSubscript:a3];
  v6 = [v5 unsignedShortValue];

  [v7 setProcessedLocation:v6];
}

- (id)enrichmentValuesForHighlight:(id)highlight usingEnrichmentProfile:(id)profile graph:(id)graph options:(unint64_t)options reportChangedValuesOnly:(BOOL)only highlightTailorContext:(id)context progressBlock:(id)block
{
  onlyCopy = only;
  v379 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  profileCopy = profile;
  graphCopy = graph;
  contextCopy = context;
  blockCopy = block;
  v367 = 0;
  v368 = &v367;
  v369 = 0x2020000000;
  v370 = 0;
  v363 = 0;
  v364 = &v363;
  v365 = 0x2020000000;
  v366 = 0;
  v306 = _Block_copy(blockCopy);
  if (!v306 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v364[3] < 0.01) || (v364[3] = v13, info[0] = 0, v306[2](v306, info, 0.0), v14 = *(v368 + 24) | info[0], *(v368 + 24) = v14, (v14 & 1) == 0))
  {
    v304 = [profileCopy highlightInfoWithHighlight:highlightCopy graph:graphCopy highlightTailorContext:contextCopy];
    if (!v304)
    {
      v15 = 0;
LABEL_247:

      goto LABEL_248;
    }

    v291 = [[PGHighlightEnrichmentValues alloc] initWithHighlight:highlightCopy];
    assetCollection = [highlightCopy assetCollection];
    v288 = [(PGHighlightTailor *)self tailorOptionsAllowedForHighlight:assetCollection originalOptions:options];
    isUpToDate = [highlightCopy isUpToDate];
    v287 = [profileCopy enrichmentStateWithHighlightInfo:v304 highlightTailorContext:contextCopy];
    enrichmentState = [highlightCopy enrichmentState];
    v290 = assetCollection;
    if ((options & 0x40000000) == 0 && ((isUpToDate ^ 1) & 1) == 0 && v287 == enrichmentState)
    {
      goto LABEL_11;
    }

    sharingComposition = [assetCollection sharingComposition];
    v284 = onlyCopy;
    if (sharingComposition)
    {
      if (sharingComposition == 1)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = 0;
        v27 = 0;
        v28 = v290;
        goto LABEL_26;
      }

      if (sharingComposition != 2)
      {
        v25 = objc_autoreleasePoolPush();
        v29 = 0;
        v281 = 0;
        v280 = 0;
        v26 = 0;
        goto LABEL_30;
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = objc_autoreleasePoolPush();
    v28 = assetCollection;
    v26 = [(PGHighlightTailor *)self keyAssetFromHighlight:assetCollection sharingFilter:0];
    v27 = 1;
    if (v24)
    {
LABEL_26:
      v29 = [(PGHighlightTailor *)self keyAssetFromHighlight:v28 sharingFilter:1];
      if (v27)
      {
        v30 = +[PGHighlightEnrichmentUtilities keyAssetForMixedSharingCompositionKeyAssetRelationship:keyAssetPrivate:keyAssetShared:](PGHighlightEnrichmentUtilities, "keyAssetForMixedSharingCompositionKeyAssetRelationship:keyAssetPrivate:keyAssetShared:", [v28 mixedSharingCompositionKeyAssetRelationship], v26, v29);
        v281 = 1;
        v280 = 0x100000001;
      }

      else
      {
        v280 = 0x100000000;
        v30 = 0;
        v281 = 0;
      }

LABEL_32:
      if ((v288 & 8) == 0)
      {
        v31 = v26;
        v286 = v29;
        v283 = v30;
LABEL_69:
        v285 = v31;
        uuid = [v31 uuid];
        [v304 setKeyAssetPrivateUUID:uuid];

        uuid2 = [v286 uuid];
        [v304 setKeyAssetSharedUUID:uuid2];
        v43 = 1;
LABEL_70:

        objc_autoreleasePoolPop(v25);
        if (!v43)
        {
LABEL_76:

          goto LABEL_245;
        }

        if (v306)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v364[3] >= 0.01)
          {
            v364[3] = Current;
            info[0] = 0;
            v306[2](v306, info, 0.1);
            v54 = *(v368 + 24) | info[0];
            *(v368 + 24) = v54;
            if (v54)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 277;
                *&buf[8] = 2080;
                *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_76;
            }
          }
        }

        assetSortDescriptors = [(PGHighlightTailor *)self assetSortDescriptors];
        v55 = objc_autoreleasePoolPush();
        v56 = [(PGHighlightTailor *)self sortedCurationOfType:2 fromHighlight:v290];
        v57 = v56;
        if ((v288 & 0x10) == 0)
        {
          v58 = v56;
LABEL_140:
          [v304 setNumberOfExtendedAssets:{objc_msgSend(v58, "count")}];
          v62 = [v58 valueForKey:@"uuid"];
          [v304 setUuidsOfEligibleAssets:v62];
          v277 = v58;
          v70 = 1;
LABEL_141:

          objc_autoreleasePoolPop(v55);
          if (!v70)
          {
LABEL_244:

            goto LABEL_245;
          }

          if (v306)
          {
            v97 = CFAbsoluteTimeGetCurrent();
            if (v97 - v364[3] >= 0.01)
            {
              v364[3] = v97;
              info[0] = 0;
              v306[2](v306, info, 0.2);
              v98 = *(v368 + 24) | info[0];
              *(v368 + 24) = v98;
              if (v98)
              {
                v99 = MEMORY[0x277D86220];
                v100 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *&buf[4] = 351;
                  *&buf[8] = 2080;
                  *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

LABEL_147:

                goto LABEL_244;
              }
            }
          }

          if (v288)
          {
            [profileCopy promotionScoreWithHighlightInfo:v304];
            v102 = v101;
            [v290 promotionScore];
            if (!v284 || v102 != v103)
            {
              [(PGHighlightEnrichmentValues *)v291 setPromotionScore:v102];
            }

            [v304 setPromotionScore:v102];
          }

          if (v306)
          {
            v104 = CFAbsoluteTimeGetCurrent();
            if (v104 - v364[3] >= 0.01)
            {
              v364[3] = v104;
              info[0] = 0;
              v306[2](v306, info, 0.3);
              v105 = *(v368 + 24) | info[0];
              *(v368 + 24) = v105;
              if (v105)
              {
                v106 = MEMORY[0x277D86220];
                v107 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *&buf[4] = 362;
                  *&buf[8] = 2080;
                  *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                goto LABEL_147;
              }
            }
          }

          if ((v288 & 0x20) == 0)
          {
LABEL_202:
            if (v306)
            {
              v134 = CFAbsoluteTimeGetCurrent();
              if (v134 - v364[3] >= 0.01)
              {
                v364[3] = v134;
                info[0] = 0;
                v306[2](v306, info, 0.4);
                v135 = *(v368 + 24) | info[0];
                *(v368 + 24) = v135;
                if (v135)
                {
                  v136 = MEMORY[0x277D86220];
                  v137 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *&buf[4] = 405;
                    *&buf[8] = 2080;
                    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_244;
                }
              }
            }

            if ((v288 & 0x10) == 0)
            {
LABEL_238:
              if (v306)
              {
                v159 = CFAbsoluteTimeGetCurrent();
                if (v159 - v364[3] >= 0.01)
                {
                  v364[3] = v159;
                  info[0] = 0;
                  v306[2](v306, info, 0.6);
                  v160 = *(v368 + 24) | info[0];
                  *(v368 + 24) = v160;
                  if (v160)
                  {
                    v161 = MEMORY[0x277D86220];
                    v162 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *&buf[4] = 441;
                      *&buf[8] = 2080;
                      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_244;
                  }
                }
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v375 = 1;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_211;
              aBlock[3] = &unk_278884100;
              v326 = v284;
              v325 = buf;
              aBlock[4] = self;
              spidb = highlightCopy;
              v324 = spidb;
              v301 = _Block_copy(aBlock);
              if ((v288 & 2) != 0)
              {
                v164 = self->_loggingConnection;
                v165 = os_signpost_id_generate(v164);
                v166 = v164;
                v167 = v166;
                if (v165 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v166))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v167, OS_SIGNPOST_INTERVAL_BEGIN, v165, "PGHighlightTailorGenerateTitle", "", info, 2u);
                }

                v322 = 0;
                mach_timebase_info(&v322);
                v168 = mach_absolute_time();
                if (v281)
                {
                  v169 = objc_autoreleasePoolPush();
                  v321 = 0;
                  v170 = [profileCopy titleWithHighlightInfo:v304 sharingFilter:0 curatedAssets:v277 keyAsset:v285 createVerboseTitle:0 error:&v321];
                  v171 = v321;
                  title = [v170 title];
                  stringValue = [title stringValue];

                  smartDescriptionPrivate = [v290 smartDescriptionPrivate];
                  if (v301[2](v301, stringValue, smartDescriptionPrivate, v171))
                  {
                    [(PGHighlightEnrichmentValues *)v291 setSmartDescriptionPrivate:stringValue];
                  }

                  objc_autoreleasePoolPop(v169);
                }

                if (HIDWORD(v280))
                {
                  v175 = objc_autoreleasePoolPush();
                  v320 = 0;
                  v176 = [profileCopy titleWithHighlightInfo:v304 sharingFilter:1 curatedAssets:v277 keyAsset:v286 createVerboseTitle:0 error:&v320];
                  v177 = v320;
                  title2 = [v176 title];
                  stringValue2 = [title2 stringValue];

                  smartDescriptionShared = [v290 smartDescriptionShared];
                  if (v301[2](v301, stringValue2, smartDescriptionShared, v177))
                  {
                    [(PGHighlightEnrichmentValues *)v291 setSmartDescriptionShared:stringValue2];
                  }

                  objc_autoreleasePoolPop(v175);
                }

                if (v280)
                {
                  v181 = objc_autoreleasePoolPush();
                  v319 = 0;
                  v182 = [profileCopy titleWithHighlightInfo:v304 sharingFilter:2 curatedAssets:v277 keyAsset:v283 createVerboseTitle:0 error:&v319];
                  v183 = v319;
                  title3 = [v182 title];
                  stringValue3 = [title3 stringValue];

                  smartDescriptionMixed = [v290 smartDescriptionMixed];
                  if (v301[2](v301, stringValue3, smartDescriptionMixed, v183))
                  {
                    [(PGHighlightEnrichmentValues *)v291 setSmartDescriptionMixed:stringValue3];
                  }

                  objc_autoreleasePoolPop(v181);
                }

                v187 = mach_absolute_time();
                numer = v322.numer;
                denom = v322.denom;
                v190 = v167;
                v191 = v190;
                if (v165 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v190))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v191, OS_SIGNPOST_INTERVAL_END, v165, "PGHighlightTailorGenerateTitle", "", info, 2u);
                }

                v192 = v191;
                if (os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
                {
                  *info = 136315394;
                  *&info[4] = "PGHighlightTailorGenerateTitle";
                  *&info[12] = 2048;
                  *&info[14] = ((((v187 - v168) * numer) / denom) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v192, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", info, 0x16u);
                }
              }

              if (v306)
              {
                v193 = CFAbsoluteTimeGetCurrent();
                if (v193 - v364[3] >= 0.01)
                {
                  v364[3] = v193;
                  LOBYTE(v322.numer) = 0;
                  (v306)[2](v306, &v322, 0.7);
                  v194 = *(v368 + 24) | LOBYTE(v322.numer);
                  *(v368 + 24) = v194;
                  if (v194)
                  {
                    v195 = MEMORY[0x277D86220];
                    v196 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
                    {
                      *info = 67109378;
                      *&info[4] = 498;
                      *&info[8] = 2080;
                      *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                    }

                    goto LABEL_353;
                  }
                }
              }

              if ((v288 & 4) != 0)
              {
                v197 = self->_loggingConnection;
                v198 = os_signpost_id_generate(v197);
                v199 = v197;
                v200 = v199;
                if (v198 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v199))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v200, OS_SIGNPOST_INTERVAL_BEGIN, v198, "PGHighlightTailorGenerateVerboseTitle", "", info, 2u);
                }

                v322 = 0;
                mach_timebase_info(&v322);
                v201 = mach_absolute_time();
                if (v281)
                {
                  v202 = objc_autoreleasePoolPush();
                  v318 = 0;
                  v203 = [profileCopy titleWithHighlightInfo:v304 sharingFilter:0 curatedAssets:0 keyAsset:0 createVerboseTitle:1 error:&v318];
                  v204 = v318;
                  title4 = [v203 title];
                  stringValue4 = [title4 stringValue];

                  verboseSmartDescriptionPrivate = [v290 verboseSmartDescriptionPrivate];
                  if (v301[2](v301, stringValue4, verboseSmartDescriptionPrivate, v204))
                  {
                    [(PGHighlightEnrichmentValues *)v291 setVerboseSmartDescriptionPrivate:stringValue4];
                  }

                  objc_autoreleasePoolPop(v202);
                }

                if (HIDWORD(v280))
                {
                  v208 = objc_autoreleasePoolPush();
                  v317 = 0;
                  v209 = [profileCopy titleWithHighlightInfo:v304 sharingFilter:1 curatedAssets:0 keyAsset:0 createVerboseTitle:1 error:&v317];
                  v210 = v317;
                  title5 = [v209 title];
                  stringValue5 = [title5 stringValue];

                  verboseSmartDescriptionShared = [v290 verboseSmartDescriptionShared];
                  if (v301[2](v301, stringValue5, verboseSmartDescriptionShared, v210))
                  {
                    [(PGHighlightEnrichmentValues *)v291 setVerboseSmartDescriptionShared:stringValue5];
                  }

                  objc_autoreleasePoolPop(v208);
                }

                if (v280)
                {
                  v214 = objc_autoreleasePoolPush();
                  v316 = 0;
                  v215 = [profileCopy titleWithHighlightInfo:v304 sharingFilter:2 curatedAssets:0 keyAsset:0 createVerboseTitle:1 error:&v316];
                  v216 = v316;
                  title6 = [v215 title];
                  stringValue6 = [title6 stringValue];

                  verboseSmartDescriptionMixed = [v290 verboseSmartDescriptionMixed];
                  if (v301[2](v301, stringValue6, verboseSmartDescriptionMixed, v216))
                  {
                    [(PGHighlightEnrichmentValues *)v291 setVerboseSmartDescriptionMixed:stringValue6];
                  }

                  objc_autoreleasePoolPop(v214);
                }

                v220 = mach_absolute_time();
                v221 = v322.numer;
                v222 = v322.denom;
                v223 = v200;
                v224 = v223;
                if (v198 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v223))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v224, OS_SIGNPOST_INTERVAL_END, v198, "PGHighlightTailorGenerateVerboseTitle", "", info, 2u);
                }

                v225 = v224;
                if (os_log_type_enabled(v225, OS_LOG_TYPE_INFO))
                {
                  *info = 136315394;
                  *&info[4] = "PGHighlightTailorGenerateVerboseTitle";
                  *&info[12] = 2048;
                  *&info[14] = ((((v220 - v201) * v221) / v222) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v225, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", info, 0x16u);
                }
              }

              if (v306)
              {
                v226 = CFAbsoluteTimeGetCurrent();
                if (v226 - v364[3] >= 0.01)
                {
                  v364[3] = v226;
                  LOBYTE(v322.numer) = 0;
                  (v306)[2](v306, &v322, 0.8);
                  v227 = *(v368 + 24) | LOBYTE(v322.numer);
                  *(v368 + 24) = v227;
                  if (v227)
                  {
                    v228 = MEMORY[0x277D86220];
                    v229 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
                    {
                      *info = 67109378;
                      *&info[4] = 533;
                      *&info[8] = 2080;
                      *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                    }

                    goto LABEL_353;
                  }
                }
              }

              if ((v288 & 0x40) != 0)
              {
                v282 = objc_autoreleasePoolPush();
                feeder = [v304 feeder];
                allItems = [feeder allItems];
                v232 = [(PGHighlightTailor *)self computeChangedVisibilityScoresForItems:allItems];
                v233 = v232;
                if (v284)
                {
                  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                  v314 = 0u;
                  v315 = 0u;
                  v312 = 0u;
                  v313 = 0u;
                  keyEnumerator = [v233 keyEnumerator];
                  v236 = [keyEnumerator countByEnumeratingWithState:&v312 objects:v372 count:16];
                  if (v236)
                  {
                    v237 = *v313;
                    do
                    {
                      for (i = 0; i != v236; ++i)
                      {
                        if (*v313 != v237)
                        {
                          objc_enumerationMutation(keyEnumerator);
                        }

                        v239 = *(*(&v312 + 1) + 8 * i);
                        v240 = [v233 objectForKey:v239];
                        [v239 highlightVisibilityScore];
                        v242 = v241;
                        [v240 doubleValue];
                        if (v243 != v242)
                        {
                          [strongToStrongObjectsMapTable setObject:v240 forKey:v239];
                        }
                      }

                      v236 = [keyEnumerator countByEnumeratingWithState:&v312 objects:v372 count:16];
                    }

                    while (v236);
                  }

                  v244 = strongToStrongObjectsMapTable;
                }

                else
                {
                  v244 = v232;
                }

                if ([v244 count])
                {
                  [(PGHighlightEnrichmentValues *)v291 setVisibilityScoreByAsset:v244];
                }

                objc_autoreleasePoolPop(v282);
              }

              if (v306)
              {
                v245 = CFAbsoluteTimeGetCurrent();
                if (v245 - v364[3] >= 0.01)
                {
                  v364[3] = v245;
                  LOBYTE(v322.numer) = 0;
                  (v306)[2](v306, &v322, 0.9);
                  v246 = *(v368 + 24) | LOBYTE(v322.numer);
                  *(v368 + 24) = v246;
                  if (v246)
                  {
                    v247 = MEMORY[0x277D86220];
                    v248 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                    {
                      *info = 67109378;
                      *&info[4] = 558;
                      *&info[8] = 2080;
                      *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                    }

                    goto LABEL_353;
                  }
                }
              }

              if ((v288 & 0x80) == 0)
              {
LABEL_347:
                if (!v306 || (v262 = CFAbsoluteTimeGetCurrent(), v262 - v364[3] < 0.01) || (v364[3] = v262, LOBYTE(v322.numer) = 0, (v306)[2](v306, &v322, 0.95), v263 = *(v368 + 24) | LOBYTE(v322.numer), *(v368 + 24) = v263, (v263 & 1) == 0))
                {
                  if (options == 0xFF)
                  {
                    v266 = [profileCopy canUseLocationInformationWithHighlightInfo:v304 graph:graphCopy];
                    v267 = *(*&buf[8] + 24);
                    if (v287 >= 2)
                    {
                      v268 = 2;
                    }

                    else
                    {
                      v268 = v287;
                    }

                    if ((v267 & v266) != 0)
                    {
                      v269 = v287;
                    }

                    else
                    {
                      v269 = v268;
                    }

                    if ((v266 & 1) == 0)
                    {
                      v270 = self->_loggingConnection;
                      if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
                      {
                        *info = 67109376;
                        *&info[4] = v287;
                        *&info[8] = 1024;
                        *&info[10] = v269;
                        _os_log_impl(&dword_22F0FC000, v270, OS_LOG_TYPE_DEFAULT, "[PGHighlightTailor] Couldn't satisfy enrichment state %d: not enough location data available. Falling back to enrichment state %d", info, 0xEu);
                      }

                      v267 = *(*&buf[8] + 24);
                    }

                    if (!v267)
                    {
                      v271 = self->_loggingConnection;
                      if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                      {
                        *info = 67109376;
                        *&info[4] = v287;
                        *&info[8] = 1024;
                        *&info[10] = v269;
                        _os_log_impl(&dword_22F0FC000, v271, OS_LOG_TYPE_DEFAULT, "[PGHighlightTailor] Couldn't satisfy enrichment state %d: error encountered while generating titles. Falling back to enrichment state %d", info, 0xEu);
                      }
                    }

                    if ([spidb enrichmentState] != v269)
                    {
                      [(PGHighlightEnrichmentValues *)v291 setEnrichmentState:v269];
                    }
                  }

                  _Block_object_dispose(buf, 8);
                  assetCollection = v290;
LABEL_11:
                  if (!v306 || (v19 = CFAbsoluteTimeGetCurrent(), v19 - v364[3] < 0.01) || (v364[3] = v19, info[0] = 0, v306[2](v306, info, 1.0), v20 = *(v368 + 24) | info[0], *(v368 + 24) = v20, (v20 & 1) == 0))
                  {
                    v15 = v291;
LABEL_246:

                    goto LABEL_247;
                  }

                  v21 = MEMORY[0x277D86220];
                  v22 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *&buf[4] = 604;
                    *&buf[8] = 2080;
                    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

LABEL_245:
                  v15 = 0;
                  assetCollection = v290;
                  goto LABEL_246;
                }

                v264 = MEMORY[0x277D86220];
                v265 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
                {
                  *info = 67109378;
                  *&info[4] = 579;
                  *&info[8] = 2080;
                  *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                }

LABEL_353:
                _Block_object_dispose(buf, 8);

                goto LABEL_245;
              }

              v289 = objc_autoreleasePoolPush();
              v249 = [profileCopy momentProcessedLocationByMomentUUIDWithHighlightInfo:v304 graph:graphCopy];
              v250 = v249;
              if (v284)
              {
                if ([v249 count])
                {
                  v251 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v304 momentFetchResult];
                  v310 = 0u;
                  v311 = 0u;
                  v308 = 0u;
                  v252 = v309 = 0u;
                  v253 = [v252 countByEnumeratingWithState:&v308 objects:v371 count:16];
                  if (v253)
                  {
                    v254 = *v309;
                    do
                    {
                      for (j = 0; j != v253; ++j)
                      {
                        if (*v309 != v254)
                        {
                          objc_enumerationMutation(v252);
                        }

                        v256 = *(*(&v308 + 1) + 8 * j);
                        uuid3 = [v256 uuid];
                        v258 = [v250 objectForKeyedSubscript:uuid3];
                        unsignedShortValue = [v258 unsignedShortValue];

                        if ([v256 processedLocation] != unsignedShortValue)
                        {
                          v260 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:unsignedShortValue];
                          [v251 setObject:v260 forKeyedSubscript:uuid3];
                        }
                      }

                      v253 = [v252 countByEnumeratingWithState:&v308 objects:v371 count:16];
                    }

                    while (v253);
                  }

                  v261 = v251;
                }

                else
                {
                  v261 = v250;
                }

                if (![v261 count])
                {
                  goto LABEL_346;
                }
              }

              else
              {
                v261 = v249;
              }

              [(PGHighlightEnrichmentValues *)v291 setMomentProcessedLocationByMomentUUID:v261];
LABEL_346:

              objc_autoreleasePoolPop(v289);
              goto LABEL_347;
            }

            v300 = objc_autoreleasePoolPush();
            v138 = self->_loggingConnection;
            v139 = os_signpost_id_generate(v138);
            v140 = v138;
            v141 = v140;
            if (v139 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v140))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v141, OS_SIGNPOST_INTERVAL_BEGIN, v139, "PGHighlightTailorGenerateSummaryCuration", "", buf, 2u);
            }

            *info = 0;
            mach_timebase_info(info);
            v142 = mach_absolute_time();
            v143 = [(PGHighlightTailor *)self sortedCurationOfType:1 fromHighlight:v290];
            if (v281)
            {
              v332[0] = MEMORY[0x277D85DD0];
              v332[1] = 3221225472;
              v332[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_209;
              v332[3] = &unk_27888A188;
              v333 = v306;
              v334 = &v363;
              v336 = 0x3F847AE147AE147BLL;
              v335 = &v367;
              v144 = [profileCopy summaryCurationWithHighlightInfo:v304 sharingFilter:0 progressBlock:v332];
            }

            else
            {
              v144 = 0;
            }

            if ((v280 & 0x100000000) != 0)
            {
              v327[0] = MEMORY[0x277D85DD0];
              v327[1] = 3221225472;
              v327[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_2;
              v327[3] = &unk_27888A188;
              v328 = v306;
              v329 = &v363;
              v331 = 0x3F847AE147AE147BLL;
              v330 = &v367;
              v145 = [profileCopy summaryCurationWithHighlightInfo:v304 sharingFilter:1 progressBlock:v327];

              v146 = v144 != 0;
              v147 = v280;
              if (!v144)
              {
                v147 = 0;
              }

              if (v147 == 1 && v145)
              {
                v148 = [v144 arrayByAddingObjectsFromArray:v145];
LABEL_226:
                v150 = v148;
                v151 = [v148 sortedArrayUsingDescriptors:assetSortDescriptors];

                if (!v284 || ([v151 isEqualToArray:v143] & 1) == 0)
                {
                  if (v151)
                  {
                    v152 = v151;
                  }

                  else
                  {
                    v152 = MEMORY[0x277CBEBF8];
                  }

                  [(PGHighlightEnrichmentValues *)v291 setSummaryCuration:v152];
                }

                v153 = mach_absolute_time();
                v154 = *info;
                v155 = *&info[4];
                v156 = v141;
                v157 = v156;
                if (v139 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v156))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v157, OS_SIGNPOST_INTERVAL_END, v139, "PGHighlightTailorGenerateSummaryCuration", "", buf, 2u);
                }

                v158 = v157;
                if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *&buf[4] = "PGHighlightTailorGenerateSummaryCuration";
                  *&buf[12] = 2048;
                  *&buf[14] = ((((v153 - v142) * v154) / v155) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v158, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v300);
                goto LABEL_238;
              }
            }

            else
            {
              v145 = 0;
              v146 = v144 != 0;
            }

            if (v146)
            {
              v149 = v144;
            }

            else
            {
              v149 = v145;
            }

            v148 = v149;
            goto LABEL_226;
          }

          context = objc_autoreleasePoolPush();
          v108 = self->_loggingConnection;
          v109 = os_signpost_id_generate(v108);
          v110 = v108;
          v111 = v110;
          v276 = v109 - 1;
          if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v110))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v111, OS_SIGNPOST_INTERVAL_BEGIN, v109, "PGHighlightTailorGenerateMomentTitles", "", buf, 2u);
          }

          v272 = v109;
          v275 = v111;

          *info = 0;
          mach_timebase_info(info);
          v273 = mach_absolute_time();
          v112 = [profileCopy momentTitleByMomentUUIDWithHighlightInfo:v304];
          v113 = v112;
          if (v284)
          {
            if ([v112 count])
            {
              v299 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v304 momentFetchResult];
              v339 = 0u;
              v340 = 0u;
              v337 = 0u;
              spida = v338 = 0u;
              v114 = [spida countByEnumeratingWithState:&v337 objects:v376 count:16];
              if (!v114)
              {
                goto LABEL_188;
              }

              v115 = *v338;
              while (1)
              {
                for (k = 0; k != v114; ++k)
                {
                  if (*v338 != v115)
                  {
                    objc_enumerationMutation(spida);
                  }

                  v117 = *(*(&v337 + 1) + 8 * k);
                  uuid4 = [v117 uuid];
                  v119 = [v113 objectForKeyedSubscript:uuid4];

                  title7 = [v119 title];
                  stringValue7 = [title7 stringValue];

                  title8 = [v117 title];
                  if ([stringValue7 length] || !objc_msgSend(title8, "length"))
                  {
                    v123 = ![stringValue7 length] || stringValue7 == title8;
                    if (v123 || ([stringValue7 isEqualToString:title8] & 1) != 0)
                    {
                      subtitle = [v119 subtitle];
                      stringValue8 = [subtitle stringValue];

                      localizedSubtitle = [v117 localizedSubtitle];
                      if ([stringValue8 length] || !objc_msgSend(localizedSubtitle, "length")) && (!objc_msgSend(stringValue8, "length") || stringValue8 == localizedSubtitle || (objc_msgSend(stringValue8, "isEqualToString:", localizedSubtitle)))
                      {

                        goto LABEL_186;
                      }
                    }
                  }

                  stringValue8 = [v117 uuid];
                  [v299 setObject:v119 forKeyedSubscript:stringValue8];
LABEL_186:
                }

                v114 = [spida countByEnumeratingWithState:&v337 objects:v376 count:16];
                if (!v114)
                {
LABEL_188:

                  v127 = v299;
                  goto LABEL_194;
                }
              }
            }

            v127 = v113;
LABEL_194:
            if (![v127 count])
            {
              goto LABEL_196;
            }
          }

          else
          {
            v127 = v112;
          }

          [(PGHighlightEnrichmentValues *)v291 setMomentTitleByMomentUUID:v127, v272];
LABEL_196:
          v128 = mach_absolute_time();
          v129 = *info;
          v130 = *&info[4];
          v131 = v275;
          v132 = v131;
          if (v276 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v132, OS_SIGNPOST_INTERVAL_END, v272, "PGHighlightTailorGenerateMomentTitles", "", buf, 2u);
          }

          v133 = v132;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "PGHighlightTailorGenerateMomentTitles";
            *&buf[12] = 2048;
            *&buf[14] = ((((v128 - v273) * v129) / v130) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v133, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_202;
        }

        v59 = self->_loggingConnection;
        v60 = os_signpost_id_generate(v59);
        v61 = v59;
        v62 = v61;
        v63 = v60 - 1;
        if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "PGHighlightTailorGenerateExtendedCuration", "", buf, 2u);
        }

        spid = v60;

        *info = 0;
        mach_timebase_info(info);
        v298 = mach_absolute_time();
        if (v281)
        {
          v354[0] = MEMORY[0x277D85DD0];
          v354[1] = 3221225472;
          v354[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_204;
          v354[3] = &unk_27888A188;
          v355 = v306;
          v356 = &v363;
          v358 = 0x3F847AE147AE147BLL;
          v357 = &v367;
          v64 = [profileCopy extendedCurationWithHighlightInfo:v304 sharingFilter:0 progressBlock:v354];
          if (*(v368 + 24) == 1)
          {
            v65 = MEMORY[0x277D86220];
            v66 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 292;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_94:
            v277 = 0;
            v70 = 0;
            goto LABEL_141;
          }
        }

        else
        {
          v64 = 0;
        }

        if (HIDWORD(v280))
        {
          v349[0] = MEMORY[0x277D85DD0];
          v349[1] = 3221225472;
          v349[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_205;
          v349[3] = &unk_27888A188;
          v350 = v306;
          v351 = &v363;
          v353 = 0x3F847AE147AE147BLL;
          v352 = &v367;
          v67 = [profileCopy extendedCurationWithHighlightInfo:v304 sharingFilter:1 progressBlock:v349];
          if (*(v368 + 24) == 1)
          {
            v68 = MEMORY[0x277D86220];
            v69 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 300;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_94;
          }
        }

        else
        {
          v67 = 0;
        }

        if (v280)
        {
          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          v64 = v64;
          v71 = [v64 countByEnumeratingWithState:&v345 objects:v378 count:16];
          if (v71)
          {
            v72 = v57;
            v73 = *v346;
            v74 = MEMORY[0x277D3C778];
            v75 = *MEMORY[0x277D3C778];
            while (2)
            {
              for (m = 0; m != v71; ++m)
              {
                if (*v346 != v73)
                {
                  objc_enumerationMutation(v64);
                }

                [*(*(&v345 + 1) + 8 * m) curationScore];
                if (v77 > v75)
                {
                  v278 = 0;
                  goto LABEL_108;
                }
              }

              v71 = [v64 countByEnumeratingWithState:&v345 objects:v378 count:16];
              if (v71)
              {
                continue;
              }

              break;
            }

            v278 = 1;
LABEL_108:
            v57 = v72;
          }

          else
          {
            v74 = MEMORY[0x277D3C778];
            v278 = 1;
          }

          v78 = v57;
          v343 = 0u;
          v344 = 0u;
          v341 = 0u;
          v342 = 0u;
          v67 = v67;
          v79 = [v67 countByEnumeratingWithState:&v341 objects:v377 count:16];
          if (v79)
          {
            v80 = *v342;
            v81 = *v74;
LABEL_112:
            v82 = 0;
            while (1)
            {
              if (*v342 != v80)
              {
                objc_enumerationMutation(v67);
              }

              [*(*(&v341 + 1) + 8 * v82) curationScore];
              if (v83 > v81)
              {
                break;
              }

              if (v79 == ++v82)
              {
                v79 = [v67 countByEnumeratingWithState:&v341 objects:v377 count:16];
                if (v79)
                {
                  goto LABEL_112;
                }

                goto LABEL_118;
              }
            }

            v57 = v78;
            if ((v278 & 1) == 0)
            {
              goto LABEL_190;
            }

            v84 = v64;
            v64 = 0;
          }

          else
          {
LABEL_118:

            v57 = v78;
            if (v278)
            {
LABEL_190:
              v85 = v64 != 0;
              if (v64 && v67)
              {
                v87 = [v64 arrayByAddingObjectsFromArray:v67];
LABEL_128:
                v88 = v87;
                v89 = [v87 sortedArrayUsingDescriptors:assetSortDescriptors];

                if (!v284 || ([v89 isEqualToArray:v57] & 1) == 0)
                {
                  if (v89)
                  {
                    v90 = v89;
                  }

                  else
                  {
                    v90 = MEMORY[0x277CBEBF8];
                  }

                  [(PGHighlightEnrichmentValues *)v291 setExtendedCuration:v90];
                }

                v91 = mach_absolute_time();
                v92 = *info;
                v93 = *&info[4];
                v94 = v62;
                v95 = v94;
                if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v95, OS_SIGNPOST_INTERVAL_END, spid, "PGHighlightTailorGenerateExtendedCuration", "", buf, 2u);
                }

                v96 = v95;
                if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *&buf[4] = "PGHighlightTailorGenerateExtendedCuration";
                  *&buf[12] = 2048;
                  *&buf[14] = ((((v91 - v298) * v92) / v93) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v58 = v89;
                goto LABEL_140;
              }

LABEL_124:
              if (v85)
              {
                v86 = v64;
              }

              else
              {
                v86 = v67;
              }

              v87 = v86;
              goto LABEL_128;
            }

            v84 = v67;
            v67 = 0;
          }
        }

        v85 = v64 != 0;
        goto LABEL_124;
      }

      v32 = self->_loggingConnection;
      v33 = os_signpost_id_generate(v32);
      v34 = v32;
      uuid2 = v34;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, uuid2, OS_SIGNPOST_INTERVAL_BEGIN, v33, "PGHighlightTailorGenerateKeyAsset", "", buf, 2u);
      }

      *info = 0;
      mach_timebase_info(info);
      v36 = mach_absolute_time();
      v37 = highlightCopy;
      if (v281)
      {
        v361[0] = MEMORY[0x277D85DD0];
        v361[1] = 3221225472;
        v361[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke;
        v361[3] = &unk_27888A188;
        v362[0] = v306;
        v362[1] = &v363;
        v362[3] = 0x3F847AE147AE147BLL;
        v362[2] = &v367;
        v285 = [profileCopy keyAssetWithHighlightInfo:v304 sharingFilter:0 graph:graphCopy progressBlock:v361];
        if (*(v368 + 24) == 1)
        {
          v38 = v362;
          v39 = MEMORY[0x277D86220];
          v40 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 236;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v286 = 0;
LABEL_51:

          v283 = 0;
          v43 = 0;
          goto LABEL_70;
        }

        if (!v284 || ([v285 isEqual:v26] & 1) == 0)
        {
          [(PGHighlightEnrichmentValues *)v291 setKeyAssetPrivate:v285];
        }

        v37 = highlightCopy;
      }

      else
      {
        v285 = 0;
      }

      if (HIDWORD(v280))
      {
        v359[0] = MEMORY[0x277D85DD0];
        v359[1] = 3221225472;
        v359[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_202;
        v359[3] = &unk_27888A188;
        v360[0] = v306;
        v360[1] = &v363;
        v360[3] = 0x3F847AE147AE147BLL;
        v360[2] = &v367;
        v286 = [profileCopy keyAssetWithHighlightInfo:v304 sharingFilter:1 graph:graphCopy progressBlock:v359];
        if (*(v368 + 24) == 1)
        {
          v38 = v360;
          v41 = MEMORY[0x277D86220];
          v42 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 246;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_51;
        }

        if (!v284 || ([v286 isEqual:v29] & 1) == 0)
        {
          [(PGHighlightEnrichmentValues *)v291 setKeyAssetShared:v286];
        }

        v37 = highlightCopy;
      }

      else
      {
        v286 = 0;
      }

      if (v280)
      {
        v44 = +[PGHighlightEnrichmentUtilities mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:](PGHighlightEnrichmentUtilities, "mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:", v285, v286, [v37 kind] == 3);
        v283 = [PGHighlightEnrichmentUtilities keyAssetForMixedSharingCompositionKeyAssetRelationship:v44 keyAssetPrivate:v285 keyAssetShared:v286];
      }

      else
      {
        v44 = 0;
        v283 = 0;
      }

      if (!v284 || [v290 mixedSharingCompositionKeyAssetRelationship] != v44)
      {
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
        [(PGHighlightEnrichmentValues *)v291 setMixedSharingCompositionKeyAssetRelationshipValue:v45];
      }

      v46 = mach_absolute_time();
      v47 = *info;
      v48 = *&info[4];
      v49 = uuid2;
      v50 = v49;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v50, OS_SIGNPOST_INTERVAL_END, v33, "PGHighlightTailorGenerateKeyAsset", "", buf, 2u);
      }

      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "PGHighlightTailorGenerateKeyAsset";
        *&buf[12] = 2048;
        *&buf[14] = ((((v46 - v36) * v47) / v48) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v31 = v285;
      goto LABEL_69;
    }

    v281 = 1;
    v29 = 0;
    v280 = 0;
LABEL_30:
    v30 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 170;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = 0;
LABEL_248:
  _Block_object_dispose(&v363, 8);
  _Block_object_dispose(&v367, 8);

  return v15;
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_202(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_204(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.05 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_205(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.05 + 0.15);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_209(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_211(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 24);
  if (v9)
  {
    v12 = 0;
  }

  *(v11 + 24) = v12;
  if (*(a1 + 56))
  {
    if (v9)
    {
      v13 = *(*(a1 + 32) + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        v15 = v13;
        v16 = [v14 uuid];
        v19 = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Failed to generate title for highlight %@: %@", &v19, 0x16u);
      }

      goto LABEL_9;
    }

    if (!(v7 | v8))
    {
LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }

    v17 = 1;
    if (v7 && v8)
    {
      v17 = [v7 isEqualToString:v8] ^ 1;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_10:

  return v17;
}

- (unint64_t)tailorOptionsAllowedForHighlight:(id)highlight originalOptions:(unint64_t)options
{
  kind = [highlight kind];
  v6 = -1073741824;
  if (kind == 3)
  {
    v6 = -1073741793;
  }

  if (!kind)
  {
    v6 = -1073741569;
  }

  return v6 & options;
}

- (id)computeChangedVisibilityScoresForItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [(PGHighlightTailor *)self highlightVisibilityWeightForItem:v11, v17];
        v13 = v12;
        v14 = MEMORY[0x277CD97A8];
        [v11 clsHighlightVisibilityScore];
        if (([v14 isScore:? closeToValue:?] & 1) == 0)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
          [strongToStrongObjectsMapTable setObject:v15 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return strongToStrongObjectsMapTable;
}

- (double)highlightVisibilityWeightForItem:(id)item
{
  itemCopy = item;
  [itemCopy clsContentScore];
  v5 = v4;
  [itemCopy clsAutoplaySuggestionScore];
  v7 = v6;
  if ([itemCopy isVideo])
  {
    [itemCopy clsDuration];
    if (v8 >= 2.0 && ([itemCopy clsHasPoorResolution] & 1) == 0)
    {
      clsIsLongExposure = [itemCopy clsIsLongExposure];
      clsIsLoopOrBounce = 1;
      goto LABEL_7;
    }
  }

  clsIsLoopOrBounce = [itemCopy clsIsLoopOrBounce];
  clsIsLongExposure = [itemCopy clsIsLongExposure];
  v11 = 0.0;
  if (clsIsLoopOrBounce)
  {
LABEL_7:
    v11 = 20.0;
  }

  v12 = 100.0;
  if (clsIsLongExposure)
  {
    v12 = 0.0;
  }

  if (!((v7 > 0.5) | clsIsLoopOrBounce & 1))
  {
    v12 = 0.0;
  }

  v13 = (v11 + v12 + v5 * 10.0) / 130.0;

  return v13;
}

- (id)assetSortDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = PGHighlightTailor;
  return [(PGHighlightTailor *)&v3 init];
}

- (PGHighlightTailor)initWithWorkingContext:(id)context
{
  v26[6] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = PGHighlightTailor;
  v6 = [(PGHighlightTailor *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
    curationManager = [contextCopy curationManager];
    loggingConnection = [contextCopy loggingConnection];
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = loggingConnection;
    v11 = loggingConnection;

    v12 = [[PGAggregationEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v26[0] = v12;
    v13 = [(PGDayGroupAbstractEnrichmentProfile *)[PGTripEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v26[1] = v13;
    v14 = [(PGDefaultEnrichmentProfile *)[PGCompleteEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v26[2] = v14;
    v15 = [(PGDefaultEnrichmentProfile *)[PGSceneCompleteEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v26[3] = v15;
    v16 = [(PGDefaultEnrichmentProfile *)[PGPartialEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v26[4] = v16;
    v17 = [[PGDefaultEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v26[5] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];
    enrichmentProfiles = v7->_enrichmentProfiles;
    v7->_enrichmentProfiles = v18;

    v20 = dispatch_group_create();
    enrichmentCommitGroup = v7->_enrichmentCommitGroup;
    v7->_enrichmentCommitGroup = v20;

    v22 = [[PGMoodGenerationContext alloc] initWithReferenceDate:0];
    moodGenerationContext = v7->_moodGenerationContext;
    v7->_moodGenerationContext = v22;
  }

  return v7;
}

@end