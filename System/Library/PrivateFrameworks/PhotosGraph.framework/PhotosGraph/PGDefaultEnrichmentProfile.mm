@interface PGDefaultEnrichmentProfile
+ (double)evaluatedDurationsWithAssets:(id)assets options:(id)options;
+ (double)evaluatedDurationsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter options:(id)options;
+ (double)targetCurationDurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter options:(id)options;
+ (double)targetCurationDurationWithPrivateAssets:(id)assets sharedAssets:(id)sharedAssets sharingFilter:(unsigned __int16)filter options:(id)options;
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
- (PGCurationOptions)curationOptions;
- (PGDefaultEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection;
- (PGKeyAssetCurationOptions)keyAssetCurationOptions;
- (double)promotionScoreWithHighlightInfo:(id)info;
- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter;
- (id)debugInfoDictionaryByAddingItemInfosToDebugInfo:(id)info;
- (id)extendedCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block;
- (id)faceInfosWithAsset:(id)asset;
- (id)highlightInfoWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context;
- (id)keyAssetCurationCriteriaWithHighlightInfo:(id)info graph:(id)graph;
- (id)keyAssetWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter graph:(id)graph progressBlock:(id)block;
- (id)momentProcessedLocationByMomentUUIDWithHighlightInfo:(id)info graph:(id)graph;
- (id)momentTitleByMomentUUIDWithHighlightInfo:(id)info;
- (id)summaryCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block;
- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error;
@end

@implementation PGDefaultEnrichmentProfile

- (id)faceInfosWithAsset:(id)asset
{
  v38[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  photoLibrary = [(PGCurationManager *)self->_curationManager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v38[0] = *MEMORY[0x277CD9BC0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  v26 = assetCopy;
  v9 = [MEMORY[0x277CD9868] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v9;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v30)
  {
    v28 = *v32;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        faceClusteringProperties = [v11 faceClusteringProperties];
        faceprint = [faceClusteringProperties faceprint];

        v35[0] = @"personLocalIdentifier";
        personLocalIdentifier = [v11 personLocalIdentifier];
        v15 = personLocalIdentifier;
        v16 = @"unknown";
        if (personLocalIdentifier)
        {
          v16 = personLocalIdentifier;
        }

        v36[0] = v16;
        v35[1] = @"size";
        v17 = MEMORY[0x277CCABB0];
        [v11 size];
        v18 = [v17 numberWithDouble:?];
        v36[1] = v18;
        v35[2] = @"quality";
        v19 = MEMORY[0x277CCABB0];
        [v11 quality];
        v20 = [v19 numberWithDouble:?];
        v36[2] = v20;
        v35[3] = @"faceprint";
        faceprintData = [faceprint faceprintData];
        v22 = faceprintData;
        if (!faceprintData)
        {
          data = [MEMORY[0x277CBEA90] data];
          v22 = data;
        }

        v36[3] = v22;
        v35[4] = @"faceprintVersion";
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(faceprint, "faceprintVersion")}];
        v36[4] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];

        if (!faceprintData)
        {
        }

        [v29 addObject:v24];
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v30);
  }

  return v29;
}

- (id)debugInfoDictionaryByAddingItemInfosToDebugInfo:(id)info
{
  v4 = MEMORY[0x277D3C7A0];
  infoCopy = info;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__PGDefaultEnrichmentProfile_debugInfoDictionaryByAddingItemInfosToDebugInfo___block_invoke;
  v10[3] = &unk_278883A40;
  v11 = v6;
  selfCopy = self;
  v7 = v6;
  v8 = [infoCopy dictionaryRepresentationWithAppendExtraItemInfoBlock:v10];

  return v8;
}

void __78__PGDefaultEnrichmentProfile_debugInfoDictionaryByAddingItemInfosToDebugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  [v5 curationScore];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKeyedSubscript:@"persistedCurationScore"];

  v9 = [v5 creationDate];
  [v6 setObject:v9 forKeyedSubscript:@"creationDate"];

  v10 = [v5 localCreationDate];
  [v6 setObject:v10 forKeyedSubscript:@"localCreationDate"];

  v11 = [v5 location];
  v12 = v11;
  if (v11)
  {
    [v11 coordinate];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x277CE4278];
    v16 = *(MEMORY[0x277CE4278] + 8);
  }

  v61.latitude = v14;
  v61.longitude = v16;
  if (CLLocationCoordinate2DIsValid(v61))
  {
    v59[0] = @"latitude";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v59[1] = @"longitude";
    v60[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v60[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    [v6 setObject:v19 forKeyedSubscript:@"location"];
  }

  else
  {
    [v6 setObject:&unk_284487348 forKeyedSubscript:@"location"];
  }

  v20 = [v5 clsSceneprint];
  if (v20)
  {
    v58 = 0;
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v58];
    [v6 setObject:v21 forKeyedSubscript:@"sceneprint"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingVideo")}];
  [v6 setObject:v22 forKeyedSubscript:@"isInterestingVideo"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingLivePhoto")}];
  [v6 setObject:v23 forKeyedSubscript:@"isInterestingLivePhoto"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingPanorama")}];
  [v6 setObject:v24 forKeyedSubscript:@"isInterestingPanorama"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingSDOF")}];
  [v6 setObject:v25 forKeyedSubscript:@"isInterestingSDOF"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingHDR")}];
  [v6 setObject:v26 forKeyedSubscript:@"isInterestingHDR"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingAudioClassification")}];
  [v6 setObject:v27 forKeyedSubscript:@"hasInterestingAudioClassification"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasCustomPlaybackVariation")}];
  [v6 setObject:v28 forKeyedSubscript:@"hasCustomPlaybackVariation"];

  v29 = MEMORY[0x277CCABB0];
  [v5 clsSharpnessScore];
  v30 = [v29 numberWithDouble:?];
  [v6 setObject:v30 forKeyedSubscript:@"sharpnessScore"];

  v31 = MEMORY[0x277CCABB0];
  [v5 clsExposureScore];
  v32 = [v31 numberWithDouble:?];
  [v6 setObject:v32 forKeyedSubscript:@"exposureScore"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsBlurry")}];
  [v6 setObject:v33 forKeyedSubscript:@"isBlurry"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInhabited")}];
  [v6 setObject:v34 forKeyedSubscript:@"isInhabited"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingScenes")}];
  [v6 setObject:v35 forKeyedSubscript:@"hasInterestingScenes"];

  v36 = [v5 clsPersonLocalIdentifiers];
  [v6 setObject:v36 forKeyedSubscript:@"peopleNames"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isVideo")}];
  [v6 setObject:v37 forKeyedSubscript:@"isVideo"];

  v38 = [PGCurationManager sceneInfoWithAsset:v5 curationSession:*(a1 + 32)];
  [v6 setObject:v38 forKeyedSubscript:@"scenes"];

  v39 = MEMORY[0x277CCABB0];
  [v5 clsHighlightVisibilityScore];
  v40 = [v39 numberWithDouble:?];
  [v6 setObject:v40 forKeyedSubscript:@"highlightVisibilityScore"];

  v41 = MEMORY[0x277CCABB0];
  [v5 clsAutoplaySuggestionScore];
  v42 = [v41 numberWithDouble:?];
  [v6 setObject:v42 forKeyedSubscript:@"autoplaySuggestionScore"];

  v43 = MEMORY[0x277CCABB0];
  [v5 clsFaceScore];
  v44 = [v43 numberWithDouble:?];
  [v6 setObject:v44 forKeyedSubscript:@"faceScore"];

  v45 = [*(a1 + 40) faceInfosWithAsset:v5];
  [v6 setObject:v45 forKeyedSubscript:@"faceInfos"];

  v46 = MEMORY[0x277CCABB0];
  [v5 clsDuration];
  v47 = [v46 numberWithDouble:?];
  [v6 setObject:v47 forKeyedSubscript:@"duration"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsNonMemorable")}];
  [v6 setObject:v48 forKeyedSubscript:@"isNonMemorable"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLoopOrBounce")}];
  [v6 setObject:v49 forKeyedSubscript:@"isLoopOrBounce"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLongExposure")}];
  [v6 setObject:v50 forKeyedSubscript:@"isLongExposure"];

  v51 = MEMORY[0x277CCABB0];
  [v5 pl_gpsHorizontalAccuracy];
  v52 = [v51 numberWithDouble:?];
  [v6 setObject:v52 forKeyedSubscript:@"gpsHorizontalAccuracy"];

  v53 = MEMORY[0x277CCABB0];
  [v5 clsSquareCropScore];
  v54 = [v53 numberWithDouble:?];
  [v6 setObject:v54 forKeyedSubscript:@"squareCropScore"];

  v55 = [v5 clsFaceInformationSummary];
  v56 = [v55 dictionaryRepresentation];
  [v6 setObject:v56 forKeyedSubscript:@"faceInformationSummary"];

  v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInSharedLibrary")}];
  [v6 setObject:v57 forKeyedSubscript:@"isInSharedLibrary"];
}

- (id)summaryCurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter progressBlock:(id)block
{
  filterCopy = filter;
  v106 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  blockCopy = block;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v65 = _Block_copy(blockCopy);
  v66 = infoCopy;
  if (v65 && (v8 = CFAbsoluteTimeGetCurrent(), v8 - v92[3] >= 0.01) && (v92[3] = v8, v90 = 0, (*(v65 + 2))(v65, &v90, 0.0), v9 = *(v96 + 24) | v90, *(v96 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v103 = 479;
      v104 = 2080;
      v105 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    feeder = [infoCopy feeder];
    highlightTailorContext = [infoCopy highlightTailorContext];
    curationContext = [highlightTailorContext curationContext];

    allItems = [feeder allItems];
    highlightTailorContext2 = [infoCopy highlightTailorContext];
    [highlightTailorContext2 topTierAestheticScore];
    v15 = [PGMemoryGenerationHelper scoringContextForMemoriesWithAssets:allItems withTopTierAestheticScore:?];

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v17 = allItems;
    v18 = [v17 countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v18)
    {
      v19 = *v87;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v87 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v86 + 1) + 8 * i);
          if ([v21 prepareWithAlternateJunkingHeuristics:1 withContext:v15 curationContext:curationContext blockSocialMediaImportedAssets:PGHighlightEnrichmentBlockSocialMediaImportedAssets])
          {
            [v16 addObject:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v86 objects:v101 count:16];
      }

      while (v18);
    }

    v22 = [(PGDefaultEnrichmentProfile *)self curationOptionsWithHighlightInfo:v66 sharingFilter:filterCopy];
    [v22 setDuration:21];
    v67 = v22;
    initForMemories = [[PGDejunkerDeduperOptions alloc] initForMemories];
    [initForMemories setPersonDedupingType:3];
    uuidsOfRequiredAssets = [v22 uuidsOfRequiredAssets];
    [initForMemories setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];

    uuidsOfEligibleAssets = [v67 uuidsOfEligibleAssets];
    [initForMemories setIdentifiersOfEligibleItems:uuidsOfEligibleAssets];

    v26 = [[PGDejunkerDeduper_PHAsset alloc] initWithSimilarityModelClass:objc_opt_class()];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __91__PGDefaultEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke;
    v81[3] = &unk_27888A188;
    v59 = v65;
    v82 = v59;
    v83 = &v91;
    v84 = &v95;
    v85 = 0x3F847AE147AE147BLL;
    v27 = [(PGDejunkerDeduper_PHAsset *)v26 dejunkedDedupedAssetsInAssets:v17 options:initForMemories debugInfo:0 progressBlock:v81];
    v28 = v27;
    v29 = *(v96 + 24);
    if (v29 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v103 = 508;
        v104 = 2080;
        v105 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v30 = MEMORY[0x277CBEB98];
      v31 = [v27 valueForKey:@"uuid"];
      v32 = [v30 setWithArray:v31];
      [v67 setUuidsOfEligibleAssets:v32];
    }

    if (v29)
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v33 = objc_alloc_init(PGCurator_PHAsset);
      [(PGCurator *)v33 setLoggingConnection:self->_loggingConnection];
      if (self->_collectsDebugInfo)
      {
        v34 = objc_alloc(MEMORY[0x277D276A0]);
        allItems2 = [feeder allItems];
        v36 = [v34 initWithItems:allItems2];
      }

      else
      {
        v36 = 0;
      }

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __91__PGDefaultEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke_335;
      v76[3] = &unk_27888A188;
      v60 = v59;
      v77 = v60;
      v78 = &v91;
      v79 = &v95;
      v80 = 0x3F847AE147AE147BLL;
      v37 = [(PGCurator_PHAsset *)v33 bestAssetsForFeeder:feeder options:v67 debugInfo:v36 progressBlock:v76];
      if (*(v96 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v103 = 520;
          v104 = 2080;
          v105 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        if (self->_collectsDebugInfo)
        {
          v38 = [(PGDefaultEnrichmentProfile *)self debugInfoDictionaryByAddingItemInfosToDebugInfo:v36];
          v39 = [v38 mutableCopy];

          dictionaryRepresentation = [v67 dictionaryRepresentation];
          [v39 setObject:dictionaryRepresentation forKeyedSubscript:@"curationOptions"];

          [(NSMutableDictionary *)self->_debugInfos setObject:v39 forKeyedSubscript:@"curation"];
        }

        v57 = v37;
        v58 = v36;
        if (v37 && [v37 count])
        {
          v41 = [v37 count];
          uuidsOfRequiredAssets2 = [v67 uuidsOfRequiredAssets];
          LODWORD(v41) = v41 == [uuidsOfRequiredAssets2 count];

          v43 = v37;
          if (v41)
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v44 = v37;
            v45 = [v44 countByEnumeratingWithState:&v72 objects:v100 count:16];
            if (v45)
            {
              v46 = v33;
              v47 = *v73;
              v43 = MEMORY[0x277CBEBF8];
              while (2)
              {
                for (j = 0; j != v45; ++j)
                {
                  if (*v73 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  if (([*(*(&v72 + 1) + 8 * j) clsIsUtility] & 1) == 0)
                  {
                    v43 = v44;
                    goto LABEL_45;
                  }
                }

                v45 = [v44 countByEnumeratingWithState:&v72 objects:v100 count:16];
                if (v45)
                {
                  continue;
                }

                break;
              }

LABEL_45:
              v33 = v46;
            }

            else
            {
              v43 = MEMORY[0x277CBEBF8];
            }
          }

          v63 = v43;
        }

        else
        {
          v63 = MEMORY[0x277CBEBF8];
        }

        v49 = v33;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v50 = v16;
        v51 = [v50 countByEnumeratingWithState:&v68 objects:v99 count:16];
        if (v51)
        {
          v52 = *v69;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v69 != v52)
              {
                objc_enumerationMutation(v50);
              }

              [*(*(&v68 + 1) + 8 * k) prepareWithAlternateJunkingHeuristics:0 withContext:v15 curationContext:curationContext blockSocialMediaImportedAssets:PGHighlightEnrichmentBlockSocialMediaImportedAssets];
            }

            v51 = [v50 countByEnumeratingWithState:&v68 objects:v99 count:16];
          }

          while (v51);
        }

        v33 = v49;
        v37 = v57;
        v36 = v58;
        if (v65 && (Current = CFAbsoluteTimeGetCurrent(), Current - v92[3] >= 0.01) && (v92[3] = Current, v90 = 0, (*(v60 + 2))(v60, &v90, 1.0), v55 = *(v96 + 24) | v90, *(v96 + 24) = v55, (v55 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v103 = 550;
            v104 = 2080;
            v105 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v10 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v10 = v63;
        }
      }
    }
  }

  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  return v10;
}

void __91__PGDefaultEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __91__PGDefaultEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke_335(uint64_t a1, _BYTE *a2, double a3)
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
  v53 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (!v9 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v42[3] < 0.01) || (v42[3] = v10, v40 = 0, (*(v9 + 2))(v9, &v40, 0.0), v11 = *(v46 + 24) | v40, *(v46 + 24) = v11, (v11 & 1) == 0))
  {
    feeder = [infoCopy feeder];
    if (self->_collectsDebugInfo)
    {
      v13 = objc_alloc(MEMORY[0x277D276A0]);
      allItems = [feeder allItems];
      v33 = [v13 initWithItems:allItems];
    }

    else
    {
      v33 = 0;
    }

    extendedCurationOptions = [(PGDefaultEnrichmentProfile *)self extendedCurationOptions];
    if (!extendedCurationOptions)
    {
      extendedCurationOptions = [[PGDejunkerDeduperOptions alloc] initForCuratedLibrary];
      v16 = [infoCopy uuidsOfRequiredAssetsForSharingFilter:filterCopy];
      if ([v16 count])
      {
        [extendedCurationOptions setIdentifiersOfRequiredItems:v16];
      }
    }

    v17 = [[PGDejunkerDeduper_PHAsset alloc] initWithSimilarityModelClass:objc_opt_class()];
    [(PGDejunkerDeduper *)v17 setLoggingConnection:self->_loggingConnection];
    allItems2 = [feeder allItems];
    highlight = [infoCopy highlight];
    v20 = +[PGHighlightEnrichmentUtilities filteredAssetsInAssets:withSharingComposition:forSharingFilter:](PGHighlightEnrichmentUtilities, "filteredAssetsInAssets:withSharingComposition:forSharingFilter:", allItems2, [highlight sharingComposition], filterCopy);

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __92__PGDefaultEnrichmentProfile_extendedCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke;
    v35[3] = &unk_27888A188;
    v21 = v9;
    v36 = v21;
    v37 = &v41;
    v38 = &v45;
    v39 = 0x3F847AE147AE147BLL;
    v22 = [(PGDejunkerDeduper_PHAsset *)v17 dejunkedDedupedAssetsInAssets:v20 options:extendedCurationOptions debugInfo:v33 progressBlock:v35];
    v23 = v22;
    if (*(v46 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v50 = 457;
        v51 = 2080;
        v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
        v24 = MEMORY[0x277D86220];
LABEL_17:
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (![v22 count])
      {
        v25 = v20;

        v23 = v25;
      }

      if (self->_collectsDebugInfo)
      {
        v26 = [(PGDefaultEnrichmentProfile *)self debugInfoDictionaryByAddingItemInfosToDebugInfo:v33];
        v27 = [v26 mutableCopy];

        v28 = [extendedCurationOptions dictionaryRepresentationRestrictingToGlobalOptions:0];
        [v27 setObject:v28 forKeyedSubscript:@"curationOptions"];

        [(NSMutableDictionary *)self->_debugInfos setObject:v27 forKeyedSubscript:@"extended"];
      }

      if (!v9 || (Current = CFAbsoluteTimeGetCurrent(), Current - v42[3] < 0.01) || (v42[3] = Current, v40 = 0, (*(v21 + 2))(v21, &v40, 1.0), v30 = *(v46 + 24) | v40, *(v46 + 24) = v30, (v30 & 1) == 0))
      {
        v23 = v23;
        v12 = v23;
        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v50 = 471;
        v51 = 2080;
        v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
        v24 = MEMORY[0x277D86220];
        goto LABEL_17;
      }
    }

    v12 = MEMORY[0x277CBEBF8];
LABEL_29:

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v50 = 433;
    v51 = 2080;
    v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_30:
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v12;
}

void __92__PGDefaultEnrichmentProfile_extendedCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  infoCopy = info;
  curationOptions = [(PGDefaultEnrichmentProfile *)self curationOptions];
  [infoCopy promotionScore];
  if (v8 == -1.0)
  {
    [(PGDefaultEnrichmentProfile *)self promotionScoreWithHighlightInfo:infoCopy];
  }

  if (v8 > 0.4)
  {
    durationForSummary = [objc_opt_class() durationForSummary];
    v10 = curationOptions;
LABEL_7:
    [v10 setDuration:durationForSummary];
    goto LABEL_8;
  }

  if (v8 == 0.4)
  {
    v10 = curationOptions;
    durationForSummary = 12;
    goto LABEL_7;
  }

  if (v8 < 0.4)
  {
    [curationOptions setDuration:12];
    [curationOptions setFocusOnInterestingItems:1];
  }

LABEL_8:
  v11 = [infoCopy uuidsOfRequiredAssetsForSharingFilter:filterCopy];
  if ([v11 count])
  {
    [curationOptions setUuidsOfRequiredAssets:v11];
  }

  uuidsOfEligibleAssets = [infoCopy uuidsOfEligibleAssets];
  if ([uuidsOfEligibleAssets count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:uuidsOfEligibleAssets];
    [curationOptions setUuidsOfEligibleAssets:v13];
  }

  [curationOptions setSharingFilter:filterCopy];
  [curationOptions setUseDurationBasedCuration:1];
  [curationOptions setMinimumDuration:0.0];
  [objc_opt_class() targetCurationDurationWithHighlightInfo:infoCopy sharingFilter:filterCopy options:curationOptions];
  [curationOptions setTargetDuration:?];
  [curationOptions setFailIfMinimumDurationNotReached:0];

  return curationOptions;
}

- (id)keyAssetWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter graph:(id)graph progressBlock:(id)block
{
  filterCopy = filter;
  v56 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  graphCopy = graph;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (v11 && (v12 = CFAbsoluteTimeGetCurrent(), v12 - v45[3] >= 0.01) && (v45[3] = v12, v43 = 0, (*(v11 + 2))(v11, &v43, 0.0), v13 = *(v49 + 24) | v43, *(v49 + 24) = v13, (v13 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v53 = 286;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v14 = 0;
  }

  else
  {
    v15 = [infoCopy assetsForSharingFilter:filterCopy];
    if ([v15 count])
    {
      keyAssetCurationOptions = [(PGDefaultEnrichmentProfile *)self keyAssetCurationOptions];
      v32 = [(PGDefaultEnrichmentProfile *)self keyAssetCurationCriteriaWithHighlightInfo:infoCopy graph:graphCopy];
      highlight = [infoCopy highlight];
      v18 = [highlight type] == 5;

      if (v18)
      {
        v19 = +[PGUserDefaults useIconicScoreForTrips];
        [keyAssetCurationOptions setUseIconicScore:v19];
        [keyAssetCurationOptions setAvoidPromotingAutoplayableItemsWhenUsingIconicScore:v19];
      }

      if (self->_collectsDebugInfo)
      {
        v20 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v15];
      }

      else
      {
        v20 = 0;
      }

      v21 = [PGKeyCurator_PHAsset alloc];
      curationCriteriaFactory = [(PGCurationManager *)self->_curationManager curationCriteriaFactory];
      v31 = [(PGKeyCurator *)v21 initWithCurationCriteriaFactory:curationCriteriaFactory];

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __90__PGDefaultEnrichmentProfile_keyAssetWithHighlightInfo_sharingFilter_graph_progressBlock___block_invoke;
      v38[3] = &unk_27888A188;
      v23 = v11;
      v39 = v23;
      v40 = &v44;
      v41 = &v48;
      v42 = 0x3F847AE147AE147BLL;
      v24 = [(PGKeyCurator_PHAsset *)v31 keyAssetInAssets:v15 options:keyAssetCurationOptions criteria:v32 debugInfo:v20 progressBlock:v38];
      if (v20)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __90__PGDefaultEnrichmentProfile_keyAssetWithHighlightInfo_sharingFilter_graph_progressBlock___block_invoke_2;
        v35[3] = &unk_278883A40;
        v36 = v32;
        v37 = graphCopy;
        v25 = [v20 dictionaryRepresentationWithAppendExtraItemInfoBlock:v35];
        v26 = [v25 mutableCopy];

        dictionaryRepresentation = [keyAssetCurationOptions dictionaryRepresentation];
        [v26 setObject:dictionaryRepresentation forKeyedSubscript:@"curationOptions"];

        [(NSMutableDictionary *)self->_debugInfos setObject:v26 forKeyedSubscript:@"keyAsset"];
      }

      if (v11 && (Current = CFAbsoluteTimeGetCurrent(), Current - v45[3] >= 0.01) && (v45[3] = Current, v43 = 0, (*(v23 + 2))(v23, &v43, 1.0), v29 = *(v49 + 24) | v43, *(v49 + 24) = v29, (v29 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v53 = 330;
          v54 = 2080;
          v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/Enrichment Profile/PGDefaultEnrichmentProfile.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v14 = 0;
      }

      else
      {
        v14 = v24;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v14;
}

void __90__PGDefaultEnrichmentProfile_keyAssetWithHighlightInfo_sharingFilter_graph_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __90__PGDefaultEnrichmentProfile_keyAssetWithHighlightInfo_sharingFilter_graph_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v12 = 0;
    v13 = 0.0;
    v8 = [v7 passesForItem:v5 score:&v13 graph:*(a1 + 40) reasonString:&v12];
    v9 = v12;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v6 setObject:v10 forKeyedSubscript:@"passesCriteria"];

    if (v8)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v6 setObject:v11 forKeyedSubscript:@"criteriaScore"];
    }

    [v6 setObject:v9 forKeyedSubscript:@"criteriaReason"];
  }
}

- (double)promotionScoreWithHighlightInfo:(id)info
{
  infoCopy = info;
  highlightNode = [infoCopy highlightNode];
  targetEnrichmentState = [(PGDefaultEnrichmentProfile *)self targetEnrichmentState];
  numberOfExtendedAssets = [infoCopy numberOfExtendedAssets];
  highlightTailorContext = [infoCopy highlightTailorContext];

  neighborScoreComputer = [highlightTailorContext neighborScoreComputer];
  [PGGraphHighlightNode promotionScoreWithHighlightNode:highlightNode enrichmentState:targetEnrichmentState numberOfExtendedAssets:numberOfExtendedAssets neighborScoreComputer:neighborScoreComputer];
  v11 = v10;

  return v11;
}

- (id)momentProcessedLocationByMomentUUIDWithHighlightInfo:(id)info graph:(id)graph
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  graphCopy = graph;
  v7 = [PGGraphMomentNodeCollection alloc];
  momentNodes = [infoCopy momentNodes];
  v9 = [(MAElementCollection *)v7 initWithSet:momentNodes graph:graphCopy];

  v10 = MEMORY[0x277D22BF8];
  v11 = +[PGGraphMomentNode poiOfMoment];
  v12 = [v10 adjacencyWithSources:v9 relation:v11 targetsClass:objc_opt_class()];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __89__PGDefaultEnrichmentProfile_momentProcessedLocationByMomentUUIDWithHighlightInfo_graph___block_invoke;
  v31[3] = &unk_27887F230;
  v14 = v13;
  v32 = v14;
  [v12 enumerateTargetsBySourceWithBlock:v31];
  if ([v14 count])
  {
    v25 = v9;
    v26 = graphCopy;
    momentFetchResult = [infoCopy momentFetchResult];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [momentFetchResult countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(momentFetchResult);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          uuid = [v20 uuid];
          v22 = [v14 objectForKeyedSubscript:uuid];

          if (v22 && [v20 processedLocation] != 6)
          {
            [v14 removeObjectForKey:uuid];
          }
        }

        v17 = [momentFetchResult countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      v23 = v14;
    }

    else
    {
      v23 = 0;
    }

    v9 = v25;
    graphCopy = v26;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void __89__PGDefaultEnrichmentProfile_momentProcessedLocationByMomentUUIDWithHighlightInfo_graph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 labels];
  v6 = [v5 containsObject:@"Travel"];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v10 uuids];
    v9 = [v8 anyObject];
    [v7 setObject:&unk_284482160 forKeyedSubscript:v9];
  }
}

- (id)momentTitleByMomentUUIDWithHighlightInfo:(id)info
{
  v39 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  momentNodes = [infoCopy momentNodes];
  v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(momentNodes, "count")}];
  v20 = infoCopy;
  highlightTailorContext = [infoCopy highlightTailorContext];
  titleGenerationContext = [highlightTailorContext titleGenerationContext];

  v23 = titleGenerationContext;
  locationHelper = [titleGenerationContext locationHelper];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = momentNodes;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v22 = *v34;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v33 + 1) + 8 * i);
        v9 = [[PGTitleGenerator alloc] initWithMomentNode:v28 type:0 titleGenerationContext:v23];
        [(PGTitleGenerator *)v9 setPreferredTitleType:2];
        [(PGTitleGenerator *)v9 setLineBreakBehavior:2];
        title = [(PGTitleGenerator *)v9 title];
        subtitle = [(PGTitleGenerator *)v9 subtitle];
        array = [MEMORY[0x277CBEB18] array];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        usedLocationNodes = [(PGTitleGenerator *)v9 usedLocationNodes];
        v12 = [usedLocationNodes countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(usedLocationNodes);
              }

              v16 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:*(*(&v29 + 1) + 8 * j) locationHelper:locationHelper];
              if (v16)
              {
                [array addObject:v16];
              }
            }

            v13 = [usedLocationNodes countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v13);
        }

        v17 = [[PGTitleTuple alloc] initWithWithTitle:title subtitle:subtitle locationNames:array];
        uuid = [v28 uuid];
        [v24 setObject:v17 forKeyedSubscript:uuid];
      }

      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  return v24;
}

- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error
{
  titleCopy = title;
  filterCopy = filter;
  infoCopy = info;
  highlightNode = [infoCopy highlightNode];
  v14 = [PGHighlightEnrichmentUtilities filteredMomentNodesWithHighlightNode:highlightNode forSharingFilter:filterCopy];
  if ([v14 count])
  {
    if (titleCopy)
    {
      v15 = [PGHighlightTitleGenerator alloc];
      highlightNode2 = [infoCopy highlightNode];
      highlightTailorContext = [infoCopy highlightTailorContext];
      titleGenerationContext = [highlightTailorContext titleGenerationContext];
      v19 = [(PGHighlightTitleGenerator *)v15 initWithCollection:highlightNode2 filteredMomentNodes:v14 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:1 titleGenerationContext:titleGenerationContext];

      error = [(PGHighlightTitleGenerator *)v19 titleTuple];
    }

    else
    {
      v19 = [PGHighlightEnrichmentUtilities filteredSummarizedFeaturesForHighlightWithInfo:infoCopy sharingFilter:filterCopy];
      v23 = [PGDayHighlightTitleGenerator alloc];
      highlightTailorContext2 = [infoCopy highlightTailorContext];
      titleGenerationContext2 = [highlightTailorContext2 titleGenerationContext];
      v26 = [(PGDayHighlightTitleGenerator *)v23 initWithSummarizedFeatures:v19 momentNodes:v14 titleGenerationContext:titleGenerationContext2 loggingConnection:self->_loggingConnection];

      error = [(PGDayHighlightTitleGenerator *)v26 titleTuple];
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = MEMORY[0x277CCACA8];
    v19 = PHDescriptionForSharingFilter();
    v22 = [v21 stringWithFormat:@"No moment nodes for sharing filter %@", v19];
    *error = [v20 errorWithDescription:v22];

    error = 0;
  }

LABEL_8:

  return error;
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
  if (_os_feature_enabled_impl())
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [highlightCopy isRecent] ^ 1;
  }

  return v5;
}

- (id)keyAssetCurationCriteriaWithHighlightInfo:(id)info graph:(id)graph
{
  v60 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  graphCopy = graph;
  highlightNode = [infoCopy highlightNode];
  meaningLabels = [infoCopy meaningLabels];
  if ([meaningLabels count])
  {
    selfCopy = self;
    +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v10 = v57 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v47 = highlightNode;
      v48 = graphCopy;
      v13 = 0;
      v14 = *v55;
LABEL_4:
      v15 = 0;
      v16 = v13;
      while (1)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v54 + 1) + 8 * v15);

        if ([meaningLabels containsObject:v13])
        {
          break;
        }

        ++v15;
        v16 = v13;
        if (v12 == v15)
        {
          v12 = [v10 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          v13 = 0;
          v17 = 0;
          v18 = 0;
          v19 = v10;
          highlightNode = v47;
          graphCopy = v48;
          goto LABEL_33;
        }
      }

      if (!v13)
      {
        v17 = 0;
        v18 = 0;
        highlightNode = v47;
        graphCopy = v48;
        goto LABEL_39;
      }

      curationCriteriaFactory = [(PGCurationManager *)selfCopy->_curationManager curationCriteriaFactory];
      highlightNode = v47;
      graphCopy = v48;
      v18 = [curationCriteriaFactory curationCriteriaWithCollection:v47 meaningLabel:v13 inGraph:v48 client:0];

      scenesTrait = [v18 scenesTrait];
      [scenesTrait setTargetNumberOfMatches:3];

      if (!selfCopy->_collectsDebugInfo)
      {
        v17 = 0;
        goto LABEL_39;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", v13];
      if ([meaningLabels count] >= 2)
      {
        v45 = v19;
        v46 = infoCopy;
        v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v23 = v10;
        v24 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v51;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v51 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v50 + 1) + 8 * i);
              if (v28 != v13 && [meaningLabels containsObject:*(*(&v50 + 1) + 8 * i)])
              {
                [v22 addObject:v28];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v25);
        }

        v29 = [v22 componentsJoinedByString:@") - ("];
        v19 = [v45 stringByAppendingFormat:@" - (%@)", v29];

        infoCopy = v46;
        highlightNode = v47;
        graphCopy = v48;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Meanings: %@", v19];
    }

    else
    {
      v13 = 0;
      v17 = 0;
      v18 = 0;
      v19 = v10;
    }

LABEL_33:

LABEL_39:
    self = selfCopy;
    if (v18)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  isPartOfTrip = [highlightNode isPartOfTrip];
  curationCriteriaFactory2 = [(PGCurationManager *)self->_curationManager curationCriteriaFactory];
  v32 = curationCriteriaFactory2;
  if (!isPartOfTrip)
  {
    highlightTailorContext = [infoCopy highlightTailorContext];
    curationContext = [highlightTailorContext curationContext];
    v18 = [v32 petCurationCriteriaWithCollection:highlightNode client:0 curationContext:curationContext];

LABEL_35:
    v17 = 0;
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v18 = [curationCriteriaFactory2 tripCurationCriteriaWithCollection:highlightNode client:0];

  infoNode = [graphCopy infoNode];
  [infoNode topTierAestheticScoreForTripKeyAsset];
  v35 = v34;

  v36 = [PGCurationContentOrAestheticScoreTrait alloc];
  v37 = [(PGCurationContentOrAestheticScoreTrait *)v36 initWithMinimumContentScore:*MEMORY[0x277D3C760] minimumAestheticScore:v35];
  [v18 setContentOrAestheticScoreTrait:v37];

  if (!self->_collectsDebugInfo)
  {
    goto LABEL_35;
  }

  isPartOfShortTrip = [highlightNode isPartOfShortTrip];
  v39 = @"Part of Long Trip";
  if (isPartOfShortTrip)
  {
    v39 = @"Part of Short Trip";
  }

  v17 = v39;
  if (v18)
  {
LABEL_40:
    if (self->_collectsDebugInfo)
    {
      [(NSMutableDictionary *)self->_debugInfos setObject:v17 forKeyedSubscript:@"keyAssetReason"];
      v42 = [v18 niceDescriptionWithGraph:graphCopy];
      [(NSMutableDictionary *)self->_debugInfos setObject:v42 forKeyedSubscript:@"keyAssetCurationCriteria"];
    }
  }

LABEL_42:
  v43 = v18;

  return v18;
}

- (PGKeyAssetCurationOptions)keyAssetCurationOptions
{
  v2 = objc_alloc_init(PGKeyAssetCurationOptions);
  [(PGKeyAssetCurationOptions *)v2 setPromoteAutoplayableItems:1];

  return v2;
}

- (PGCurationOptions)curationOptions
{
  v2 = [[PGCurationOptions alloc] initWithDuration:0];
  [(PGCurationOptions *)v2 setLastPassMovieAdditionEnabled:0];

  return v2;
}

- (PGDefaultEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection
{
  managerCopy = manager;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = PGDefaultEnrichmentProfile;
  v9 = [(PGDefaultEnrichmentProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curationManager, manager);
    objc_storeStrong(&v10->_loggingConnection, connection);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    debugInfos = v10->_debugInfos;
    v10->_debugInfos = v11;
  }

  return v10;
}

+ (double)evaluatedDurationsWithAssets:(id)assets options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionsCopy = options;
  uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v28 = optionsCopy;
    v29 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if (uuidsOfEligibleAssets)
        {
          uuid = [*(*(&v30 + 1) + 8 * i) uuid];
          v17 = [uuidsOfEligibleAssets containsObject:uuid];

          if (!v17)
          {
            continue;
          }
        }

        if ([v15 isVideo])
        {
          ++v11;
        }

        else if ([v15 clsIsInterestingLivePhoto])
        {
          ++v29;
        }

        else
        {
          ++v12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
    v18 = v12;
    optionsCopy = v28;
    v19 = v29;
    v20 = v11;
  }

  else
  {
    v20 = 0.0;
    v19 = 0.0;
    v18 = 0.0;
  }

  [optionsCopy defaultDurationOfStillPhoto];
  v22 = v21;
  [optionsCopy defaultDurationOfLivePhoto];
  v24 = v23;
  [optionsCopy defaultDurationOfVideo];
  v26 = v25;

  return v24 * v19 + v22 * v18 + v26 * v20;
}

+ (double)evaluatedDurationsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter options:(id)options
{
  filterCopy = filter;
  optionsCopy = options;
  v9 = [info assetsForSharingFilter:filterCopy];
  [self evaluatedDurationsWithAssets:v9 options:optionsCopy];
  v11 = v10;

  return v11;
}

+ (double)targetCurationDurationWithPrivateAssets:(id)assets sharedAssets:(id)sharedAssets sharingFilter:(unsigned __int16)filter options:(id)options
{
  filterCopy = filter;
  optionsCopy = options;
  sharedAssetsCopy = sharedAssets;
  [self evaluatedDurationsWithAssets:assets options:optionsCopy];
  v13 = v12;
  [self evaluatedDurationsWithAssets:sharedAssetsCopy options:optionsCopy];
  v15 = v14;

  if (filterCopy)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  return v16 * 90.0 / (v13 + v15);
}

+ (double)targetCurationDurationWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter options:(id)options
{
  filterCopy = filter;
  infoCopy = info;
  optionsCopy = options;
  highlight = [infoCopy highlight];
  sharingComposition = [highlight sharingComposition];

  if (sharingComposition == 2)
  {
    v14 = [infoCopy assetsForSharingFilter:0];
    v15 = [infoCopy assetsForSharingFilter:1];
    [self targetCurationDurationWithPrivateAssets:v14 sharedAssets:v15 sharingFilter:filterCopy options:optionsCopy];
    v5 = v16;

    goto LABEL_10;
  }

  if (sharingComposition == 1)
  {
    v13 = filterCopy == 0;
  }

  else
  {
    if (sharingComposition)
    {
      goto LABEL_10;
    }

    v13 = filterCopy == 1;
  }

  if (v13)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 90.0;
  }

LABEL_10:

  return v5;
}

@end