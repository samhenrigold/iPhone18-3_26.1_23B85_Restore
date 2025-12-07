@interface PGDayGroupAbstractEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
- (NSString)identifier;
- (PGDayGroupAbstractEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection;
- (double)promotionScoreWithHighlightInfo:(id)info;
- (id)_childHighlightsToFetchCurationForHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter;
- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter;
- (id)extendedCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block;
- (id)highlightInfoWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context;
- (id)summaryCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block;
- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error;
- (unsigned)enrichmentStateWithHighlightInfo:(id)info highlightTailorContext:(id)context;
@end

@implementation PGDayGroupAbstractEnrichmentProfile

- (id)_childHighlightsToFetchCurationForHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = infoCopy;
  childHighlights = [infoCopy childHighlights];
  v8 = [childHighlights countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(childHighlights);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (+[PGHighlightEnrichmentUtilities canUseSharingComposition:forSharingFilter:](PGHighlightEnrichmentUtilities, "canUseSharingComposition:forSharingFilter:", [v13 sharingComposition], filterCopy))
        {
          [v13 promotionScore];
          v15 = fabs(v14 + -0.2);
          if ((v15 <= 2.22044605e-16) | v10 & 1)
          {
            if (((v15 <= 2.22044605e-16) & v10) != 0)
            {
              v10 = 1;
              continue;
            }
          }

          else
          {
            [v6 removeAllObjects];
            v10 = 1;
          }

          objectID = [v13 objectID];
          [v6 addObject:objectID];
        }
      }

      v9 = [childHighlights countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)summaryCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block
{
  filterCopy = filter;
  v66 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v39 = blockCopy;
  if (!v9 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v53[3] < 0.01) || (v53[3] = v10, v51 = 0, v9[2](v9, &v51, 0.0), v11 = *(v57 + 24) | v51, *(v57 + 24) = v11, (v11 & 1) == 0))
  {
    v40 = [(PGDayGroupAbstractEnrichmentProfile *)self _childHighlightsToFetchCurationForHighlightInfo:infoCopy sharingFilter:filterCopy];
    photoLibrary = [(PGCurationManager *)self->_curationManager photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v15 = +[PGHighlightEnrichmentUtilities assetPropertySetsForEnrichment];
    [librarySpecificFetchOptions setFetchPropertySets:v15];

    v16 = MEMORY[0x277CCA920];
    v17 = [PGHighlightEnrichmentUtilities internalPredicateForFetchingAssetsForSharingFilter:filterCopy];
    v61[0] = v17;
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"highlightBeingSummaryAssets", v40];
    v61[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v20 = [v16 andPredicateWithSubpredicates:v19];
    [librarySpecificFetchOptions setInternalPredicate:v20];

    v21 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v24)
    {
      v25 = *v48;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v23);
          }

          uuid = [*(*(&v47 + 1) + 8 * i) uuid];
          [v22 addObject:uuid];
        }

        v24 = [v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v24);
    }

    if (v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v53[3] >= 0.01)
      {
        v53[3] = Current;
        v51 = 0;
        v9[2](v9, &v51, 0.5);
        v29 = *(v57 + 24) | v51;
        *(v57 + 24) = v29;
        if (v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 163;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/DayGroup/PGDayGroupAbstractEnrichmentProfile.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v12 = MEMORY[0x277CBEBF8];
          goto LABEL_32;
        }
      }
    }

    v30 = [(PGDayGroupAbstractEnrichmentProfile *)self curationOptionsWithHighlightInfo:infoCopy sharingFilter:filterCopy];
    [v30 setUuidsOfEligibleAssets:v22];
    [v30 setDuration:21];
    v31 = objc_alloc_init(PGCurator_PHAsset);
    [(PGCurator *)v31 setLoggingConnection:self->_loggingConnection];
    feeder = [infoCopy feeder];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __100__PGDayGroupAbstractEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke;
    v42[3] = &unk_27888A188;
    v33 = v9;
    v43 = v33;
    v44 = &v52;
    v45 = &v56;
    v46 = 0x3F847AE147AE147BLL;
    v34 = [(PGCurator_PHAsset *)v31 bestAssetsForFeeder:feeder options:v30 debugInfo:0 progressBlock:v42];

    if (*(v57 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 175;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/DayGroup/PGDayGroupAbstractEnrichmentProfile.m";
        v35 = MEMORY[0x277D86220];
LABEL_23:
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v9 || (v36 = CFAbsoluteTimeGetCurrent(), v36 - v53[3] < 0.01) || (v53[3] = v36, v51 = 0, v33[2](v33, &v51, 1.0), v37 = *(v57 + 24) | v51, *(v57 + 24) = v37, (v37 & 1) == 0))
      {
        v12 = v34;
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 177;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/DayGroup/PGDayGroupAbstractEnrichmentProfile.m";
        v35 = MEMORY[0x277D86220];
        goto LABEL_23;
      }
    }

    v12 = MEMORY[0x277CBEBF8];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v63 = 145;
    v64 = 2080;
    v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/DayGroup/PGDayGroupAbstractEnrichmentProfile.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_33:
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  return v12;
}

void __100__PGDayGroupAbstractEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)extendedCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block
{
  filterCopy = filter;
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v9 = _Block_copy(block);
  v10 = 0.0;
  if (!v9 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v12 = 0;
    goto LABEL_4;
  }

  v28 = 0;
  v9[2](v9, &v28, 0.0);
  v12 = v28;
  if (v28 != 1)
  {
    v10 = Current;
LABEL_4:
    v13 = [(PGDayGroupAbstractEnrichmentProfile *)self _childHighlightsToFetchCurationForHighlightInfo:infoCopy sharingFilter:filterCopy];
    photoLibrary = [(PGCurationManager *)self->_curationManager photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v16 = +[PGHighlightEnrichmentUtilities assetPropertySetsForEnrichment];
    [librarySpecificFetchOptions setFetchPropertySets:v16];

    v17 = MEMORY[0x277CCA920];
    v18 = [PGHighlightEnrichmentUtilities internalPredicateForFetchingAssetsForSharingFilter:filterCopy];
    v30[0] = v18;
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"highlightBeingExtendedAssets", v13];
    v30[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v21 = [v17 andPredicateWithSubpredicates:v20];
    [librarySpecificFetchOptions setInternalPredicate:v21];

    v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v29[0] = v22;
    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v29[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    [librarySpecificFetchOptions setInternalSortDescriptors:v24];

    v25 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    if (v9 && CFAbsoluteTimeGetCurrent() - v10 >= 0.01 && (v28 = 0, v9[2](v9, &v28, 1.0), v12 | v28))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v32 = 138;
        v33 = 2080;
        v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/DayGroup/PGDayGroupAbstractEnrichmentProfile.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      fetchedObjects = MEMORY[0x277CBEBF8];
    }

    else
    {
      fetchedObjects = [v25 fetchedObjects];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v32 = 120;
    v33 = 2080;
    v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/DayGroup/PGDayGroupAbstractEnrichmentProfile.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  fetchedObjects = MEMORY[0x277CBEBF8];
LABEL_12:

  return fetchedObjects;
}

- (double)promotionScoreWithHighlightInfo:(id)info
{
  infoCopy = info;
  v6 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  infoCopy = info;
  v7 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error
{
  infoCopy = info;
  assetsCopy = assets;
  assetCopy = asset;
  v15 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v15);
}

- (id)highlightInfoWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context
{
  contextCopy = context;
  graphCopy = graph;
  highlightCopy = highlight;
  v10 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:highlightCopy graph:graphCopy highlightTailorContext:contextCopy];

  return v10;
}

- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options
{
  highlightCopy = highlight;
  v7 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (unsigned)enrichmentStateWithHighlightInfo:(id)info highlightTailorContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  childHighlights = [info childHighlights];
  v7 = [childHighlights countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 4;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(childHighlights);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        uuid = [v12 uuid];
        enrichmentState = [contextCopy pendingEnrichmentStateForHighlightUUID:uuid];

        if (!enrichmentState)
        {
          enrichmentState = [v12 enrichmentState];
        }

        if (v10 >= enrichmentState)
        {
          v10 = enrichmentState;
        }
      }

      v8 = [childHighlights countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 4;
  }

  return v10;
}

- (NSString)identifier
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (PGDayGroupAbstractEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection
{
  managerCopy = manager;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = PGDayGroupAbstractEnrichmentProfile;
  v9 = [(PGDayGroupAbstractEnrichmentProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curationManager, manager);
    objc_storeStrong(&v10->_loggingConnection, connection);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableDebugInfos = v10->_mutableDebugInfos;
    v10->_mutableDebugInfos = v11;
  }

  return v10;
}

@end