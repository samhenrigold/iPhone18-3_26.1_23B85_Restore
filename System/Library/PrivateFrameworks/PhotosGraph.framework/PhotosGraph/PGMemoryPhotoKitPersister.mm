@interface PGMemoryPhotoKitPersister
+ (void)setStoryColorGradeKindFromPhotosGraphProperties:(id)properties onMemoryChangeRequest:(id)request;
- (BOOL)_shouldPrefetchAudioForMemoriesInPhotoLibrary:(id)library withConfiguration:(id)configuration;
- (BOOL)_shouldPrefetchMetadataForMemoriesInPhotoLibrary:(id)library withConfiguration:(id)configuration;
- (BOOL)persistLocalMemoriesFromEnrichedMemories:(id)memories localMemoriesToDelete:(id)delete progressReporter:(id)reporter error:(id *)error;
- (BOOL)updateExistingMemories:(id)memories localMemoryByUniqueIdentifier:(id)identifier progressReporter:(id)reporter;
- (PGMemoryPhotoKitPersister)initWithPhotoLibrary:(id)library;
- (id)_encodedFeaturesFromFeatureNodes:(id)nodes;
- (id)_memoryCreationRequestForEnrichedMemory:(id)memory pendingState:(unsigned __int16)state creationDate:(id)date photosGraphDataDictionary:(id)dictionary;
- (id)_photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:(id)memories;
- (id)_photosGraphDataDictionaryForEnrichedMemory:(id)memory;
- (id)memoryLocalIdentifiersFromPersistingEnrichedMemories:(id)memories withPendingState:(unsigned __int16)state graph:(id)graph progressReporter:(id)reporter error:(id *)error;
- (unint64_t)_memoryIndexOffsetOnDate:(id)date includePendingMemories:(BOOL)memories;
- (void)cacheMusicAudioAndArtworkForEnrichedMemories:(id)memories inflationContext:(id)context photoLibrary:(id)library;
@end

@implementation PGMemoryPhotoKitPersister

- (BOOL)_shouldPrefetchAudioForMemoriesInPhotoLibrary:(id)library withConfiguration:(id)configuration
{
  libraryCopy = library;
  if (configuration)
  {
    audioFilePrefetchThresholdInDays = [configuration audioFilePrefetchThresholdInDays];
  }

  else
  {
    audioFilePrefetchThresholdInDays = 15;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:-audioFilePrefetchThresholdInDays * 86400.0];

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastViewedDate >= %@", v8];
  [librarySpecificFetchOptions setInternalPredicate:v10];

  [librarySpecificFetchOptions setFetchLimit:1];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v12 = [v11 count] != 0;

  return v12;
}

- (BOOL)_shouldPrefetchMetadataForMemoriesInPhotoLibrary:(id)library withConfiguration:(id)configuration
{
  libraryCopy = library;
  if (configuration)
  {
    metadataPrefetchThresholdInDays = [configuration metadataPrefetchThresholdInDays];
  }

  else
  {
    metadataPrefetchThresholdInDays = 60;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:-metadataPrefetchThresholdInDays * 86400.0];

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastViewedDate >= %@", v8];
  [librarySpecificFetchOptions setInternalPredicate:v10];

  [librarySpecificFetchOptions setFetchLimit:1];
  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v12 = [v11 count] != 0;

  return v12;
}

- (void)cacheMusicAudioAndArtworkForEnrichedMemories:(id)memories inflationContext:(id)context photoLibrary:(id)library
{
  v50 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  contextCopy = context;
  libraryCopy = library;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = memoriesCopy;
  v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        flexMusicCuration = [v14 flexMusicCuration];
        bestSongSuggestions = [flexMusicCuration bestSongSuggestions];
        firstObject = [bestSongSuggestions firstObject];
        v18 = [firstObject uid];

        if (v18)
        {
          [v9 addObject:v18];
        }

        if (self->_isAppleMusicSubscriber)
        {
          musicCuration = [v14 musicCuration];
          keySongAdamID = [musicCuration keySongAdamID];

          if (keySongAdamID)
          {
            [v37 addObject:keySongAdamID];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:v9];
  }

  if ([v37 count])
  {
    v21 = +[PGMusicCuratorConfigurationWrapper defaultConfiguration];
    v22 = dispatch_group_create();
    v23 = [(PGMemoryPhotoKitPersister *)self _shouldPrefetchMetadataForMemoriesInPhotoLibrary:v35 withConfiguration:v21];
    loggingConnection = self->_loggingConnection;
    v25 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v25)
      {
        *buf = 138412290;
        v48 = v37;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] prefetching song display metadata for adam IDs: %@", buf, 0xCu);
      }

      dispatch_group_enter(v22);
      allObjects = [v37 allObjects];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __104__PGMemoryPhotoKitPersister_cacheMusicAudioAndArtworkForEnrichedMemories_inflationContext_photoLibrary___block_invoke;
      v41[3] = &unk_278882840;
      v42 = v22;
      [PGMusicCurator fetchSongDisplayMetadataJSONForAdamIDs:allObjects inflationContext:contextCopy progressReporter:ignoreProgress completionHandler:v41];
    }

    else if (v25)
    {
      *buf = 138412290;
      v48 = v37;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] usage is such that no song display metadata prefetching will be done for adam IDs: %@", buf, 0xCu);
    }

    v28 = [(PGMemoryPhotoKitPersister *)self _shouldPrefetchAudioForMemoriesInPhotoLibrary:v35 withConfiguration:v21];
    v29 = self->_loggingConnection;
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 138412290;
        v48 = v37;
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] caching song audio for adam IDs: %@", buf, 0xCu);
      }

      dispatch_group_enter(v22);
      allObjects2 = [v37 allObjects];
      ignoreProgress2 = [MEMORY[0x277D22C80] ignoreProgress];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __104__PGMemoryPhotoKitPersister_cacheMusicAudioAndArtworkForEnrichedMemories_inflationContext_photoLibrary___block_invoke_258;
      v39[3] = &unk_278884D38;
      v40 = v22;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:allObjects2 progressReporter:ignoreProgress2 completionHandler:v39];
    }

    else if (v30)
    {
      *buf = 138412290;
      v48 = v37;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[MemoriesMusic] usage is such that no song audio caching will be done for adam IDs: %@", buf, 0xCu);
    }

    v33 = dispatch_time(0, 20000000000);
    dispatch_group_wait(v22, v33);
  }
}

- (BOOL)updateExistingMemories:(id)memories localMemoryByUniqueIdentifier:(id)identifier progressReporter:(id)reporter
{
  v28 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  identifierCopy = identifier;
  reporterCopy = reporter;
  if ([memoriesCopy count])
  {
    v11 = self->_loggingConnection;
    photoLibrary = self->_photoLibrary;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__PGMemoryPhotoKitPersister_updateExistingMemories_localMemoryByUniqueIdentifier_progressReporter___block_invoke;
    v19[3] = &unk_2788827F0;
    v19[4] = self;
    v20 = reporterCopy;
    v13 = memoriesCopy;
    v21 = v13;
    v22 = identifierCopy;
    v14 = v11;
    v23 = v14;
    v18 = 0;
    v15 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v19 error:&v18];
    v16 = v18;
    if ((v15 & 1) == 0 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v25 = v13;
      v26 = 2112;
      v27 = v16;
      _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "Failed to update the enriched memories %{private}@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

void __99__PGMemoryPhotoKitPersister_updateExistingMemories_localMemoryByUniqueIdentifier_progressReporter___block_invoke(uint64_t a1)
{
  v97[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) librarySpecificFetchOptions];
  [v2 setIncludeGuestAssets:1];
  v97[0] = *MEMORY[0x277CD9AA8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:1];
  [v2 setFetchPropertySets:v3];

  v72 = *(a1 + 40);
  v4 = [*(a1 + 48) count];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v78 = a1;
  obj = *(a1 + 48);
  v71 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v71)
  {
    v6 = 1.0 / v4;
    v7 = 0x277CD9000uLL;
    v69 = *v85;
    v8 = 0.0;
    *&v5 = 138478083;
    v67 = v5;
    v70 = v2;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v85 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v11 = *(v78 + 56);
        v12 = [v10 uniqueMemoryIdentifier];
        v13 = [v11 objectForKeyedSubscript:v12];

        v14 = [v13 title];
        if ([v14 length])
        {

LABEL_9:
          v17 = [v13 title];
          v18 = [v10 title];
          v82 = [v17 isEqualToString:v18] ^ 1;

          goto LABEL_10;
        }

        v15 = [v10 title];
        v16 = [v15 length];

        if (v16)
        {
          goto LABEL_9;
        }

        v82 = 0;
LABEL_10:
        v19 = [v13 subtitle];
        if ([v19 length])
        {

LABEL_13:
          v22 = [v13 subtitle];
          v23 = [v10 subtitle];
          v81 = [v22 isEqualToString:v23] ^ 1;

          goto LABEL_14;
        }

        v20 = [v10 subtitle];
        v21 = [v20 length];

        if (v21)
        {
          goto LABEL_13;
        }

        v81 = 0;
LABEL_14:
        v24 = [*(v7 + 1960) fetchKeyCuratedAssetInAssetCollection:v13 referenceAsset:0 options:v2];
        v25 = [v24 firstObject];

        v26 = [v10 keyAssetUUID];
        v27 = [v25 uuid];
        v76 = v25;
        v80 = v26;
        if (v27 == v26)
        {
          v29 = 0;
        }

        else
        {
          v28 = [v25 uuid];
          v29 = [v28 isEqualToString:v26] ^ 1;
        }

        v30 = [*(v7 + 1960) fetchCuratedAssetsInAssetCollection:v13 options:v2];
        v31 = [v30 fetchedObjects];

        v75 = v31;
        v32 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v31];
        v33 = [v10 curatedAssetUUIDs];
        if ([v32 count] || objc_msgSend(v33, "count"))
        {
          v34 = v33;
          v35 = [MEMORY[0x277CBEB98] setWithArray:v33];
          v36 = [v32 isEqualToSet:v35] ^ 1;
        }

        else
        {
          v34 = v33;
          v36 = 0;
        }

        v74 = v32;
        v37 = [*(v7 + 1960) fetchExtendedCuratedAssetsInAssetCollection:v13 options:v2];
        v38 = [v37 fetchedObjects];

        v73 = v38;
        v39 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v38];
        v40 = [v10 extendedCuratedAssetUUIDs];
        v79 = v40;
        if ([v39 count] || objc_msgSend(v40, "count"))
        {
          v41 = [MEMORY[0x277CBEB98] setWithArray:v40];
          v42 = [v39 isEqualToSet:v41] ^ 1;
        }

        else
        {
          v42 = 0;
        }

        v43 = [MEMORY[0x277CD98E8] changeRequestForMemory:v13];
        v44 = [MEMORY[0x277CBEAA8] date];
        [v43 setLastEnrichmentDate:v44];

        v45 = [v13 photosGraphVersion];
        if (v45 != [v10 photosGraphVersion])
        {
          [v43 setPhotosGraphVersion:{objc_msgSend(v10, "photosGraphVersion")}];
        }

        v46 = [v13 isRejected];
        if (v46 != [v10 failedEnrichment])
        {
          [v43 setRejected:{objc_msgSend(v10, "failedEnrichment")}];
        }

        if ((v82 | v81 | v29 | v36 | v42))
        {
          v47 = *(v78 + 64);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 138413570;
            *v89 = v13;
            *&v89[8] = 1024;
            *&v89[10] = v82;
            *&v89[14] = 1024;
            *&v89[16] = v81;
            v90 = 1024;
            v91 = v29;
            v92 = 1024;
            v93 = v36;
            v94 = 1024;
            v95 = v42;
            _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "Updating Memory: %@, title %d, subtitle %d, keyAsset %d, curation %d, extendedCuration %d", buf, 0x2Au);
          }

          if (v82)
          {
            v48 = [v10 title];
            [v43 setTitle:v48];
          }

          if (v81)
          {
            v49 = [v10 subtitle];
            [v43 setSubtitle:v49];
          }

          if ((v29 | v36 | v42))
          {
            v50 = [v10 representativeAssetUUIDs];
            [v43 setRepresentativeAssetUUIDs:v50 curatedAssetUUIDs:v34 extendedCuratedAssetUUIDs:v79 keyAssetUUID:v80];
          }

          [v13 score];
          v52 = v51;
          [v10 score];
          if (v52 != v53)
          {
            [v10 score];
            [v43 setScore:?];
          }

          v54 = [*(v78 + 32) _photosGraphDataDictionaryForEnrichedMemory:v10];
          v55 = [v54 objectForKeyedSubscript:@"storyColorGradeKind"];
          v56 = [v55 integerValue];

          if (!v56)
          {
            v57 = [v54 objectForKeyedSubscript:@"storyColorGradeCategory"];
            v56 = PFStoryColorGradeKindDefaultForColorGradeCategory();
          }

          if ([v13 storyColorGradeKind] != v56)
          {
            [v43 setStoryColorGradeKind:v56];
          }

          v58 = [v13 photosGraphProperties];
          if ([v58 count])
          {

LABEL_45:
            v60 = [v13 photosGraphProperties];
            v61 = [v60 isEqualToDictionary:v54];

            if ((v61 & 1) == 0)
            {
              v83 = 0;
              v62 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v54 requiringSecureCoding:1 error:&v83];
              v63 = v83;
              if (v62)
              {
                [v43 setPhotosGraphData:v62];
              }

              else
              {
                v64 = *(v78 + 64);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = v67;
                  *v89 = v54;
                  *&v89[8] = 2112;
                  *&v89[10] = v63;
                  _os_log_error_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_ERROR, "Failed to archived feature dictionary for photos graph data %{private}@. Error: %@", buf, 0x16u);
                }
              }
            }
          }

          else
          {
            v59 = [v54 count];

            if (v59)
            {
              goto LABEL_45;
            }
          }
        }

        v8 = v6 + v8;
        v65 = [v72 isCancelledWithProgress:v8];
        v66 = v65;
        if (v65 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v89 = 357;
          *&v89[4] = 2080;
          *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(context);
        v2 = v70;
        v7 = 0x277CD9000;
        if (v66)
        {
          goto LABEL_62;
        }
      }

      v71 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v71);
  }

LABEL_62:
}

- (id)_encodedFeaturesFromFeatureNodes:(id)nodes
{
  v17 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allFeatures = [nodesCopy allFeatures];
  v6 = [allFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allFeatures);
        }

        encodedFeature = [*(*(&v12 + 1) + 8 * i) encodedFeature];
        [v4 addObject:encodedFeature];
      }

      v7 = [allFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (unint64_t)_memoryIndexOffsetOnDate:(id)date includePendingMemories:(BOOL)memories
{
  memoriesCopy = memories;
  v33[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:memoriesCopy];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v33[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", dateCopy];
  [librarySpecificFetchOptions setPredicate:dateCopy];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v29 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v25 = librarySpecificFetchOptions;
    v14 = 0;
    v15 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = MEMORY[0x277D27690];
        creationDate = [v17 creationDate];
        v21 = [v19 compareDate:dateCopy toDate:creationDate toUnitGranularity:16];

        if (!v21)
        {
          ++v14;
        }

        objc_autoreleasePoolPop(v18);
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v13);

    if (v14)
    {
      loggingConnection = self->_loggingConnection;
      librarySpecificFetchOptions = v25;
      if (os_log_type_enabled(selfCopy->_loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v31 = v14;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Using memory index offset of %d", buf, 8u);
      }
    }

    else
    {
      librarySpecificFetchOptions = v25;
    }
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (id)_memoryCreationRequestForEnrichedMemory:(id)memory pendingState:(unsigned __int16)state creationDate:(id)date photosGraphDataDictionary:(id)dictionary
{
  stateCopy = state;
  v33 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  dictionaryCopy = dictionary;
  v26 = self->_loggingConnection;
  v10 = MEMORY[0x277CD98E8];
  dateCopy = date;
  title = [memoryCopy title];
  subtitle = [memoryCopy subtitle];
  memoryCategory = [memoryCopy memoryCategory];
  representativeAssetUUIDs = [memoryCopy representativeAssetUUIDs];
  curatedAssetUUIDs = [memoryCopy curatedAssetUUIDs];
  extendedCuratedAssetUUIDs = [memoryCopy extendedCuratedAssetUUIDs];
  keyAssetUUID = [memoryCopy keyAssetUUID];
  v19 = [v10 creationRequestForMemoryWithTitle:title subtitle:subtitle creationDate:dateCopy category:memoryCategory subcategory:0 representativeAssetUUIDs:representativeAssetUUIDs curatedAssetUUIDs:curatedAssetUUIDs extendedCuratedAssetUUIDs:extendedCuratedAssetUUIDs keyAssetUUID:keyAssetUUID];

  [v19 setPhotosGraphVersion:{objc_msgSend(memoryCopy, "photosGraphVersion")}];
  [v19 setPendingState:stateCopy];
  uniqueMemoryIdentifier = [memoryCopy uniqueMemoryIdentifier];
  [v19 setGraphMemoryIdentifier:uniqueMemoryIdentifier];

  if (stateCopy == 2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v19 setLastEnrichmentDate:date];
  }

  else
  {
    [v19 setLastEnrichmentDate:0];
  }

  if ([memoryCopy failedEnrichment])
  {
    [v19 setRejected:1];
  }

  else
  {
    [v19 setRejected:0];
    if (stateCopy != 2)
    {
      [v19 setFeaturedState:1];
    }

    [objc_opt_class() setStoryColorGradeKindFromPhotosGraphProperties:dictionaryCopy onMemoryChangeRequest:v19];
    v28 = 0;
    v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionaryCopy requiringSecureCoding:1 error:&v28];
    v23 = v28;
    if (v22)
    {
      [v19 setPhotosGraphData:v22];
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v30 = dictionaryCopy;
      v31 = 2112;
      v32 = v23;
      _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "Failed to archived feature dictionary for photos graph data %{private}@. Error: %@", buf, 0x16u);
    }

    [memoryCopy score];
    [v19 setScore:?];
  }

  return v19;
}

- (id)memoryLocalIdentifiersFromPersistingEnrichedMemories:(id)memories withPendingState:(unsigned __int16)state graph:(id)graph progressReporter:(id)reporter error:(id *)error
{
  stateCopy = state;
  v75 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  graphCopy = graph;
  reporterCopy = reporter;
  if (error)
  {
    *error = 0;
  }

  if (![memoriesCopy count])
  {
    v15 = MEMORY[0x277CBEBF8];
    goto LABEL_26;
  }

  errorCopy = error;
  if (stateCopy == 2)
  {
    v13 = 0;
    v14 = 0;
LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pendingState = %d", 1];
  [librarySpecificFetchOptions setPredicate:v17];

  v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v19 = loggingConnection;
    *buf = 67109120;
    *&buf[4] = [v14 count];
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Found %d existing pending memories", buf, 8u);
  }

  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setIncludePendingMemories:1];
  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"featuredState = %d", 1];
  [librarySpecificFetchOptions2 setPredicate:v21];

  v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions2];
  v22 = self->_loggingConnection;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v22;
    v24 = [v13 count];
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Found %d existing featured memories", buf, 8u);
  }

  if (!stateCopy)
  {
    v25 = 0;
    v50 = [v14 count] != 0;
    goto LABEL_16;
  }

  if (stateCopy != 1)
  {
    goto LABEL_14;
  }

  v25 = [v14 count] != 0;
LABEL_15:
  v50 = 0;
LABEL_16:
  v26 = [(PGMemoryPhotoKitPersister *)self _enforceUniqueCreationDatesWithPendingState:stateCopy];
  firstObject = [memoriesCopy firstObject];
  creationDate = [firstObject creationDate];

  v29 = 0;
  *buf = 0;
  v72 = buf;
  v73 = 0x2020000000;
  if (v26)
  {
    v30 = [memoriesCopy count];
    v29 = [(PGMemoryPhotoKitPersister *)self _memoryIndexOffsetOnDate:creationDate includePendingMemories:v50]+ v30;
  }

  v31 = v14;
  v32 = v25;
  v33 = v31;
  v48 = v13;
  selfCopy = self;
  v74 = v29;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = creationDate;
  v35 = [(PGMemoryPhotoKitPersister *)self _photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:memoriesCopy];
  photoLibrary = self->_photoLibrary;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __128__PGMemoryPhotoKitPersister_memoryLocalIdentifiersFromPersistingEnrichedMemories_withPendingState_graph_progressReporter_error___block_invoke;
  v54[3] = &unk_278882818;
  v55 = reporterCopy;
  v37 = memoriesCopy;
  v64 = v26;
  v56 = v37;
  v62 = buf;
  v38 = v35;
  v57 = v38;
  selfCopy2 = self;
  v63 = stateCopy;
  v39 = v34;
  v59 = v39;
  v65 = v50;
  v40 = v33;
  v60 = v40;
  v66 = v32;
  v41 = v48;
  v61 = v41;
  v53 = 0;
  LOBYTE(v33) = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v54 error:&v53];
  v42 = v53;
  if (v33)
  {
    v15 = v39;
  }

  else
  {
    v43 = selfCopy->_loggingConnection;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v67 = 138478083;
      v68 = v37;
      v69 = 2112;
      v70 = v42;
      _os_log_error_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_ERROR, "[PGMemoryPhotoKitPersister] Failed to persist the enriched memories %{private}@. Error: %@", v67, 0x16u);
    }

    if (errorCopy)
    {
      v44 = v42;
      v15 = 0;
      *errorCopy = v42;
    }

    else
    {
      v15 = 0;
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_26:

  return v15;
}

void __128__PGMemoryPhotoKitPersister_memoryLocalIdentifiersFromPersistingEnrichedMemories_withPendingState_graph_progressReporter_error___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v53 = *(a1 + 32);
  v2 = [*(a1 + 40) count];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v3 = *(a1 + 40);
  v54 = [v3 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v54)
  {
    v4 = 1.0 / v2;
    v52 = *v68;
    v5 = 0.0;
    while (2)
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v67 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 creationDate];
        if (*(a1 + 98) == 1)
        {
          v10 = [v7 creationDate];
          v11 = [v10 dateByAddingTimeInterval:*(*(*(a1 + 88) + 8) + 24)];

          --*(*(*(a1 + 88) + 8) + 24);
          v9 = v11;
        }

        v12 = *(a1 + 48);
        v13 = [v7 uniqueMemoryIdentifier];
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = [*(a1 + 56) _memoryCreationRequestForEnrichedMemory:v7 pendingState:*(a1 + 96) creationDate:v9 photosGraphDataDictionary:v14];
        v16 = *(a1 + 64);
        v17 = [v15 placeholderForCreatedMemory];
        v18 = [v17 localIdentifier];
        [v16 addObject:v18];

        v5 = v4 + v5;
        if ([v53 isCancelledWithProgress:v5])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v75 = 163;
            *&v75[4] = 2080;
            *&v75[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v8);
          goto LABEL_47;
        }

        objc_autoreleasePoolPop(v8);
      }

      v54 = [v3 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v54)
      {
        continue;
      }

      break;
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = v19;
  if (*(a1 + 99) == 1)
  {
    v52 = v19;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v20 = *(a1 + 72);
    v21 = [v20 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v64;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v64 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v63 + 1) + 8 * j);
          v26 = [MEMORY[0x277CD98E8] changeRequestForMemory:{v25, v52}];
          [v26 setPendingState:0];
          v27 = *(*(a1 + 56) + 16);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = v27;
            v29 = [v25 uuid];
            *buf = 138412290;
            *v75 = v29;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Unpending memory with uuid %@", buf, 0xCu);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v22);
    }

    v3 = v52;
  }

  else if (*(a1 + 100) == 1)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v30 = *(a1 + 72);
    v31 = [v30 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v60;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v60 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v59 + 1) + 8 * k) uuid];
          [v3 addObject:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v32);
    }

    [MEMORY[0x277CD98E8] deleteMemories:*(a1 + 72)];
    v36 = *(*(a1 + 56) + 16);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 72);
      v38 = v36;
      v39 = [v37 count];
      *buf = 67109120;
      *v75 = v39;
      _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Deleting %d previously existing pending memories", buf, 8u);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v40 = *(a1 + 80);
  v41 = [v40 countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v56;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v55 + 1) + 8 * m);
        v46 = [v45 uuid];
        v47 = [v3 containsObject:v46];

        if ((v47 & 1) == 0)
        {
          v48 = [MEMORY[0x277CD98E8] changeRequestForMemory:v45];
          [v48 setFeaturedState:0];
          v49 = *(*(a1 + 56) + 16);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = v49;
            v51 = [v45 uuid];
            *buf = 138412290;
            *v75 = v51;
            _os_log_impl(&dword_22F0FC000, v50, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Clearing currently featured state for memory with uuid %@", buf, 0xCu);
          }
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v55 objects:v71 count:16];
    }

    while (v42);
  }

LABEL_47:
}

- (BOOL)persistLocalMemoriesFromEnrichedMemories:(id)memories localMemoriesToDelete:(id)delete progressReporter:(id)reporter error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  deleteCopy = delete;
  reporterCopy = reporter;
  if (error)
  {
    *error = 0;
  }

  if (![memoriesCopy count] && !objc_msgSend(deleteCopy, "count"))
  {
    LOBYTE(v18) = 1;
    goto LABEL_12;
  }

  v13 = [(PGMemoryPhotoKitPersister *)self _photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:memoriesCopy];
  photoLibrary = self->_photoLibrary;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __115__PGMemoryPhotoKitPersister_persistLocalMemoriesFromEnrichedMemories_localMemoriesToDelete_progressReporter_error___block_invoke;
  v30[3] = &unk_2788827F0;
  v31 = reporterCopy;
  v15 = deleteCopy;
  v32 = v15;
  v16 = memoriesCopy;
  v33 = v16;
  v17 = v13;
  v34 = v17;
  selfCopy = self;
  v29 = 0;
  v18 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v30 error:&v29];
  v19 = v29;
  loggingConnection = self->_loggingConnection;
  if (v18)
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v21 = loggingConnection;
      v22 = [v16 count];
      v23 = [v15 count];
      *buf = 134218240;
      v37 = v22;
      v38 = 2048;
      v39 = v23;
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[PGMemoryPhotoKitPersister] Successfully persisted %lu and deleted %lu enriched local memories", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v26 = loggingConnection;
    v27 = [v16 count];
    v28 = [v15 count];
    *buf = 134218498;
    v37 = v27;
    v38 = 2048;
    v39 = v28;
    v40 = 2112;
    v41 = v19;
    _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "[PGMemoryPhotoKitPersister] Failed to persist %lu and delete %lu enriched local memories. Error: %@", buf, 0x20u);

    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (error)
  {
LABEL_10:
    v24 = v19;
    *error = v19;
  }

LABEL_11:

LABEL_12:
  return v18;
}

void __115__PGMemoryPhotoKitPersister_persistLocalMemoriesFromEnrichedMemories_localMemoriesToDelete_progressReporter_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([*(a1 + 40) count])
  {
    [MEMORY[0x277CD98E8] deleteMemories:*(a1 + 40)];
  }

  v3 = 0.1;
  if ([v2 isCancelledWithProgress:0.1])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v25 = 91;
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v4 = [*(a1 + 48) count];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(a1 + 48);
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0.9 / v4;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 56);
          v13 = [v10 uniqueMemoryIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          v15 = *(a1 + 64);
          v16 = [v10 creationDate];
          v17 = [v15 _memoryCreationRequestForEnrichedMemory:v10 pendingState:2 creationDate:v16 photosGraphDataDictionary:v14];

          v3 = v7 + v3;
          if ([v2 isCancelledWithProgress:v3])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v25 = 98;
              v26 = 2080;
              v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPhotoKitPersister.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v11);
            goto LABEL_18;
          }

          objc_autoreleasePoolPop(v11);
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }
}

- (id)_photosGraphDataDictionaryForEnrichedMemory:(id)memory
{
  memoryCopy = memory;
  if ([memoryCopy failedEnrichment])
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  else
  {
    v6 = [[PGMemoryPhotosGraphProperties alloc] initWithEnrichedMemory:memoryCopy neighborScoreComputer:self->_neighborScoreComputer isAppleMusicSubscriber:self->_isAppleMusicSubscriber photoLibrary:self->_photoLibrary loggingConnection:self->_loggingConnection];
    dictionary = [(PGMemoryPhotosGraphProperties *)v6 dictionary];
  }

  return dictionary;
}

- (id)_photosGraphDataDictionaryByEnrichedMemoryIdentifierForEnrichedMemories:(id)memories
{
  v21 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = memoriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(PGMemoryPhotoKitPersister *)self _photosGraphDataDictionaryForEnrichedMemory:v11, v16];
        uniqueMemoryIdentifier = [v11 uniqueMemoryIdentifier];
        [v5 setObject:v13 forKeyedSubscript:uniqueMemoryIdentifier];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (PGMemoryPhotoKitPersister)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v14.receiver = self;
  v14.super_class = PGMemoryPhotoKitPersister;
  v6 = [(PGMemoryPhotoKitPersister *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = os_log_create("com.apple.PhotosGraph", "MemoryPhotoKitPersister");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;

    v10 = objc_alloc_init(PGNeighborScoreComputer);
    neighborScoreComputer = v7->_neighborScoreComputer;
    v7->_neighborScoreComputer = v10;

    ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
    v7->_isAppleMusicSubscriber = [PGMusicCatalogMonitor checkMusicCatalogEligibilityWithProgressReporter:ignoreProgress];
  }

  return v7;
}

+ (void)setStoryColorGradeKindFromPhotosGraphProperties:(id)properties onMemoryChangeRequest:(id)request
{
  propertiesCopy = properties;
  requestCopy = request;
  v6 = [propertiesCopy objectForKeyedSubscript:@"storyColorGradeKind"];
  integerValue = [v6 integerValue];

  if (!integerValue)
  {
    v8 = [propertiesCopy objectForKeyedSubscript:@"storyColorGradeCategory"];
    integerValue = PFStoryColorGradeKindDefaultForColorGradeCategory();
  }

  [requestCopy setStoryColorGradeKind:integerValue];
}

@end