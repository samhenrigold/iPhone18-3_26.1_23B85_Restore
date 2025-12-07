@interface PGMusicWrapper
+ (BOOL)cacheRemoveAllForPhotoLibrary:(id)library error:(id *)error;
+ (id)_expandTopicKeywordsDictionary:(id)dictionary;
+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context assetFetchResult:(id)result graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context memory:(id)memory graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)appleMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)cacheStatusWithPhotoLibrary:(id)library error:(id *)error;
+ (id)flexMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)generateFlexMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)generateMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (id)generateMusicCurationDebugInformationForSongWithAdamID:(id)d graphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)ds inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)fetchSongMetadataJSONForAdamIDs:(id)ds options:(id)options inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)requestFlexMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestFlexMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestFlexMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMaestroSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply;
+ (void)requestRecentlyUsedSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply;
@end

@implementation PGMusicWrapper

+ (id)flexMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v104 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  reporterCopy = reporter;
  topicKeywordsAndWeights = [optionsCopy topicKeywordsAndWeights];
  v14 = topicKeywordsAndWeights;
  if (topicKeywordsAndWeights && [topicKeywordsAndWeights count])
  {
    v96 = 0;
    v15 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v96];
    v16 = v96;
    if (!v15)
    {
      v41 = +[PGLogging sharedLogging];
      loggingConnection = [v41 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v99 = v16;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation with options failed when creating curator context, error: %@", buf, 0xCu);
      }

      if (error)
      {
        v43 = v16;
        v40 = 0;
        *error = v16;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_61;
    }

    v17 = [self _expandTopicKeywordsDictionary:v14];
    v18 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v15];
    v90 = v17;
    v19 = [[PGKeywordBasedFeatureExtractor alloc] initWithWeightByKeyword:v17];
    v20 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.2];
    v95 = 0;
    v88 = v19;
    v89 = v18;
    v21 = [(PGKeywordBasedFeatureExtractor *)v19 musicCurationFeaturesWithContext:v18 progressReporter:v20 error:&v95];
    v92 = v95;

    if (!v21)
    {
      v44 = +[PGLogging sharedLogging];
      loggingConnection2 = [v44 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v99 = v92;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music option-based curation failed to extract features with error: %@", buf, 0xCu);
      }

      v40 = 0;
      if (error)
      {
        *error = v92;
      }

      goto LABEL_60;
    }

    v79 = v21;
    photoLibrary = [managerCopy photoLibrary];
    v23 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];

    recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
    date = [MEMORY[0x277CBEAA8] date];
    v82 = v23;
    [v23 addSongIDs:recentlyUsedBundledSongIDs date:date];

    suggestedMood = [optionsCopy suggestedMood];
    v93 = &stru_2843F5C58;
    v83 = v15;
    v81 = v16;
    if ([optionsCopy shouldUseSpecificationOptionsForCuration])
    {
      v26 = +[PGLogging sharedLogging];
      loggingConnection3 = [v26 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Using specification options for flex", buf, 2u);
      }

      musicCurationSpecificationOptions = [optionsCopy musicCurationSpecificationOptions];
      genres = [musicCurationSpecificationOptions genres];
      firstObject = [genres firstObject];
      v31 = firstObject;
      v32 = &stru_2843F5C58;
      if (firstObject)
      {
        v32 = firstObject;
      }

      v93 = v32;

      phMoods = [musicCurationSpecificationOptions phMoods];
      v34 = phMoods;
      v21 = v79;
      if (phMoods && [phMoods count])
      {
        firstObject2 = [v34 firstObject];
        suggestedMood = [PGMusicCurationSpecificationOptions PHMemoryMoodFromNumber:firstObject2];
      }

      moodsText = [musicCurationSpecificationOptions moodsText];
      v37 = [moodsText count];

      if (v37)
      {
        moodsText2 = [musicCurationSpecificationOptions moodsText];
      }

      else
      {
        moodsText2 = MEMORY[0x277CBEBF8];
      }

      weightByLanguage = [musicCurationSpecificationOptions weightByLanguage];
      v47 = [weightByLanguage count];

      if (v47)
      {
        weightByLanguage2 = [musicCurationSpecificationOptions weightByLanguage];
      }

      else
      {
        weightByLanguage2 = MEMORY[0x277CBEC10];
      }

      weightByRegion = [musicCurationSpecificationOptions weightByRegion];
      v49 = [weightByRegion count];

      if (v49)
      {
        weightByRegion2 = [musicCurationSpecificationOptions weightByRegion];
      }

      else
      {
        weightByRegion2 = MEMORY[0x277CBEC10];
      }

      v15 = v83;
    }

    else
    {
      moodsText2 = MEMORY[0x277CBEBF8];
      weightByRegion2 = MEMORY[0x277CBEC10];
      weightByLanguage2 = MEMORY[0x277CBEC10];
      v21 = v79;
    }

    v50 = +[PGLogging sharedLogging];
    loggingConnection4 = [v50 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v99 = suggestedMood;
      v100 = 2112;
      v101 = v93;
      v102 = 2112;
      v103 = moodsText2;
      _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Final mood: %llu, genre: %@, moodsKeywordsFromStory: %@", buf, 0x20u);
    }

    v52 = [PGFlexMusicCurationParameters alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v55 = v52;
    v56 = v82;
    v57 = [(PGFlexMusicCurationParameters *)v55 initWithMood:suggestedMood moodKeywords:moodsText2 recentlyUsedSongs:v82 entityUUID:uUIDString useMoodKeywords:0 features:v21 musicCuratorContext:v15 genre:v93 weightByLanguage:weightByLanguage2 weightByRegion:weightByRegion2];

    v58 = +[PGLogging sharedLogging];
    loggingConnection5 = [v58 loggingConnection];

    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Flex Music using options", buf, 2u);
    }

    v60 = [reporterCopy childProgressReporterFromStart:0.2 toEnd:1.0];
    v94 = 0;
    v85 = v57;
    v40 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v57 progressReporter:v60 error:&v94];
    v61 = v94;

    if (!v40)
    {
      v71 = +[PGLogging sharedLogging];
      loggingConnection6 = [v71 loggingConnection];

      if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v99 = v61;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with Error: %@", buf, 0xCu);
      }

      v56 = v82;
      if (error)
      {
        v73 = v61;
        *error = v61;
      }

      goto LABEL_59;
    }

    musicCurationSpecificationOptions2 = [optionsCopy musicCurationSpecificationOptions];
    if (musicCurationSpecificationOptions2)
    {
      bestSongSuggestions4 = musicCurationSpecificationOptions2;
      musicCurationSpecificationOptions3 = [optionsCopy musicCurationSpecificationOptions];
      if (![musicCurationSpecificationOptions3 shouldDownloadKeyFlexSong])
      {
        goto LABEL_53;
      }

      bestSongSuggestions = [v40 bestSongSuggestions];
      if (!bestSongSuggestions)
      {
        goto LABEL_53;
      }

      v80 = bestSongSuggestions;
      bestSongSuggestions2 = [v40 bestSongSuggestions];
      firstObject3 = [bestSongSuggestions2 firstObject];
      if (!firstObject3)
      {
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      v76 = firstObject3;
      bestSongSuggestions3 = [v40 bestSongSuggestions];
      firstObject4 = [bestSongSuggestions3 firstObject];
      v77 = [firstObject4 uid];

      v56 = v82;
      if (v77)
      {
        v68 = +[PGLogging sharedLogging];
        loggingConnection7 = [v68 loggingConnection];

        if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cache the key flex song, which triggers the song assets download", buf, 2u);
        }

        bestSongSuggestions4 = [v40 bestSongSuggestions];
        musicCurationSpecificationOptions3 = [bestSongSuggestions4 firstObject];
        v80 = [musicCurationSpecificationOptions3 uid];
        v97 = v80;
        bestSongSuggestions2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
        [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:?];
        v56 = v82;
        goto LABEL_52;
      }
    }

LABEL_54:
    v70 = v40;
LABEL_59:

    v15 = v83;
    v16 = v81;
LABEL_60:

LABEL_61:
    goto LABEL_62;
  }

  v38 = +[PGLogging sharedLogging];
  loggingConnection8 = [v38 loggingConnection];

  if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation with options failed with empty keywords and weights dictionary", buf, 2u);
  }

  if (error)
  {
    [PGError errorWithCode:-8 description:@"Flex Music curation: No topic keywords and weights provided in options"];
    *error = v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_62:

  return v40;
}

+ (id)_expandTopicKeywordsDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = @"|";
    v22 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        if ([v11 containsString:v9])
        {
          v13 = v7;
          v14 = v8;
          v15 = v9;
          v16 = [v11 componentsSeparatedByString:v9];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v24;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v24 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [dictionary setObject:v12 forKeyedSubscript:*(*(&v23 + 1) + 8 * j)];
              }

              v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v18);
          }

          v9 = v15;
          v8 = v14;
          v7 = v13;
          v5 = v22;
        }

        else
        {
          [dictionary setObject:v12 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  return dictionary;
}

+ (id)appleMusicCurationWithOptions:(id)options graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  reporterCopy = reporter;
  topicKeywordsAndWeights = [optionsCopy topicKeywordsAndWeights];
  v14 = topicKeywordsAndWeights;
  if (topicKeywordsAndWeights && [topicKeywordsAndWeights count])
  {
    v47 = 0;
    v15 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v47];
    v16 = v47;
    if (!v15)
    {
      v30 = +[PGLogging sharedLogging];
      loggingConnection = [v30 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v16;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed when creating curator context, error: %@", buf, 0xCu);
      }

      if (error)
      {
        v32 = v16;
        v25 = 0;
        *error = v16;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_29;
    }

    v17 = [self _expandTopicKeywordsDictionary:v14];
    v18 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v15];
    v43 = v17;
    v19 = [[PGKeywordBasedFeatureExtractor alloc] initWithWeightByKeyword:v17];
    v20 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.2];
    v46 = 0;
    v41 = v19;
    v42 = v18;
    v21 = [(PGKeywordBasedFeatureExtractor *)v19 musicCurationFeaturesWithContext:v18 progressReporter:v20 error:&v46];
    v44 = v46;

    v22 = +[PGLogging sharedLogging];
    loggingConnection2 = [v22 loggingConnection];

    if (v21)
    {
      v40 = v16;
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music using options", buf, 2u);
      }

      v24 = [reporterCopy childProgressReporterFromStart:0.2 toEnd:1.0];
      v45 = 0;
      v25 = [PGMusicCurator curateMusicForFeatures:v21 context:v15 progressReporter:v24 error:&v45];
      v26 = v45;

      if (v25)
      {
        v27 = v25;
        v16 = v40;
      }

      else
      {
        v39 = v21;
        v35 = +[PGLogging sharedLogging];
        loggingConnection3 = [v35 loggingConnection];

        if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v49 = v26;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation error with error: %@", buf, 0xCu);
        }

        v21 = v39;
        v16 = v40;
        if (error)
        {
          v37 = v26;
          *error = v26;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v44;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed to extract features with error: %@", buf, 0xCu);
      }

      if (error)
      {
        v33 = v44;
        v34 = v44;
        v25 = 0;
        *error = v44;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v25 = 0;
    }

    v33 = v44;
    goto LABEL_28;
  }

  v28 = +[PGLogging sharedLogging];
  loggingConnection4 = [v28 loggingConnection];

  if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed with empty keywords and weights dictionary", buf, 2u);
  }

  if (error)
  {
    [PGError errorWithCode:-8 description:@"No topic keywords and weights provided in options"];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_30:

  return v25;
}

+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context assetFetchResult:(id)result graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  contextCopy = context;
  resultCopy = result;
  managerCopy = manager;
  reporterCopy = reporter;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__21547;
  v38 = __Block_byref_object_dispose__21548;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__21547;
  v32 = __Block_byref_object_dispose__21548;
  v33 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __122__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_assetFetchResult_graphManager_progressReporter_error___block_invoke;
  v22[3] = &unk_2788826E0;
  v26 = &v34;
  v15 = resultCopy;
  v23 = v15;
  v16 = contextCopy;
  v24 = v16;
  v17 = reporterCopy;
  v25 = v17;
  v27 = &v28;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v22];
  v18 = v35[5];
  if (v18)
  {
    v19 = v18;
  }

  else if (error)
  {
    v20 = v29[5];
    if (v20)
    {
      *error = v20;
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

void __122__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_assetFetchResult_graphManager_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [*(a1 + 32) fetchedObjects];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [PGMusicCurator extractMusicCurationFeaturesForAssets:v4 graph:v3 context:v5 progressReporter:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)_musicCurationFeaturesWithFeatureExtractionContext:(id)context memory:(id)memory graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  contextCopy = context;
  memoryCopy = memory;
  managerCopy = manager;
  reporterCopy = reporter;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__21547;
  v38 = __Block_byref_object_dispose__21548;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__21547;
  v32 = __Block_byref_object_dispose__21548;
  v33 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __112__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_memory_graphManager_progressReporter_error___block_invoke;
  v22[3] = &unk_2788826E0;
  v26 = &v34;
  v15 = memoryCopy;
  v23 = v15;
  v16 = contextCopy;
  v24 = v16;
  v17 = reporterCopy;
  v25 = v17;
  v27 = &v28;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v22];
  v18 = v35[5];
  if (v18)
  {
    v19 = v18;
  }

  else if (error)
  {
    v20 = v29[5];
    if (v20)
    {
      *error = v20;
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

void __112__PGMusicWrapper__musicCurationFeaturesWithFeatureExtractionContext_memory_graphManager_progressReporter_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 graph];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [PGMusicCurator extractMusicCurationFeaturesForMemory:v4 graph:v3 context:v5 progressReporter:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (void)requestMaestroSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  managerCopy = manager;
  optionsCopy = options;
  v10 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v10 loggingConnection];

  v12 = os_signpost_id_generate(loggingConnection);
  v13 = loggingConnection;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RequestMaestroSongsWithOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v32 = mach_absolute_time();
  v15 = [[PGMusicCurationOptions alloc] initWithOptionsDictionary:optionsCopy];

  v34 = 0;
  v16 = [managerCopy musicCuratorContextWithCurationOptions:v15 error:&v34];

  v17 = v34;
  if (v17)
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection2 = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] requestAllMaestroSongs Unable to get the musicCuratorContext: %@", buf, 0xCu);
    }

    v20 = [PGError xpcSafeErrorWithError:v17];
    replyCopy[2](replyCopy, 0, v20);
  }

  v33 = v17;
  v21 = [v16 extractSongIdKeywordMappings:&v33];
  v22 = v33;

  if (v22)
  {
    v23 = +[PGLogging sharedLogging];
    loggingConnection3 = [v23 loggingConnection];

    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v22;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] requestAllMaestroSongs Unable to extractSongIdKeywordMappings: %@", buf, 0xCu);
    }

    v25 = [PGError xpcSafeErrorWithError:v22];
    replyCopy[2](replyCopy, 0, v25);
  }

  v26 = [PGError xpcSafeErrorWithError:0];
  (replyCopy)[2](replyCopy, v21, v26);

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v14;
  v31 = v30;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, v12, "RequestMaestroSongsWithOptions", "", buf, 2u);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "RequestMaestroSongsWithOptions";
    v38 = 2048;
    v39 = ((((v27 - v32) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

+ (void)requestRecentlyUsedSongsWithOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v10 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v10 loggingConnection];

  v12 = os_signpost_id_generate(loggingConnection);
  v13 = loggingConnection;
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RequestRecentlyUsedSongsWithOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  spid = v12;
  v40 = mach_absolute_time();
  if (optionsCopy && (v16 = *MEMORY[0x277D3AE90], [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AE90]], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = [optionsCopy objectForKeyedSubscript:v16];
    v19 = v18;
    if (v18)
    {
      if ([v18 isEqualToString:*MEMORY[0x277D3AE80]])
      {
        v20 = managerCopy;
        photoLibrary = [managerCopy photoLibrary];
        v22 = [PGMusicCurationRecentlyUsedSongs recentlyUsedAppleMusicSongsFromPhotoLibrary:photoLibrary];

        allEntries = [v22 allEntries];
        v24 = +[PGLogging sharedLogging];
        loggingConnection2 = [v24 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = allEntries;
          v26 = "[MemoriesMusic] recentlyUsedAppleMusicSongs: %@";
LABEL_14:
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      if ([v19 isEqualToString:*MEMORY[0x277D3AE88]])
      {
        v20 = managerCopy;
        photoLibrary2 = [managerCopy photoLibrary];
        v22 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary2];

        allEntries = [v22 allEntries];
        v28 = +[PGLogging sharedLogging];
        loggingConnection2 = [v28 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = allEntries;
          v26 = "[MemoriesMusic] recentlyUsedFlexMusicSongs: %@";
          goto LABEL_14;
        }

LABEL_15:

        v29 = 0;
        v30 = allEntries;
        goto LABEL_20;
      }
    }

    v20 = managerCopy;
  }

  else
  {
    v20 = managerCopy;
    v19 = 0;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"requestRecentlyUsedSongsWithOptions is missing a required options key or value"];
  v31 = +[PGLogging sharedLogging];
  loggingConnection3 = [v31 loggingConnection];

  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = v22;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] %@", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:2 localizedDescription:v22];
  allEntries = 0;
  v30 = v29;
LABEL_20:
  v33 = [PGError xpcSafeErrorWithError:v29];
  replyCopy[2](replyCopy, allEntries, v33);

  v34 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v37 = v14;
  v38 = v37;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, spid, "RequestRecentlyUsedSongsWithOptions", "", buf, 2u);
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v43 = "RequestRecentlyUsedSongsWithOptions";
    v44 = 2048;
    v45 = ((((v34 - v40) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

+ (void)requestFlexMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v55 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  managerCopy = manager;
  optionsCopy = options;
  v11 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v11 loggingConnection];

  v13 = os_signpost_id_generate(loggingConnection);
  v14 = loggingConnection;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FlexMusicCurationUsingOptions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v48 = mach_absolute_time();
  v17 = +[PGLogging sharedLogging];
  loggingConnection2 = [v17 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Flex Music curation using curation options", buf, 2u);
  }

  v19 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_370];
  v49 = 0;
  v20 = [self flexMusicCurationWithOptions:optionsCopy graphManager:managerCopy progressReporter:v19 error:&v49];

  v21 = v49;
  if (v20)
  {
    expandedJsonRepresentation = [v20 expandedJsonRepresentation];
    if (expandedJsonRepresentation)
    {
      v23 = [PGError xpcSafeErrorWithError:0];
      replyCopy[2](replyCopy, expandedJsonRepresentation, v23);

      v24 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v27 = v15;
      v28 = v27;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v13, "FlexMusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "FlexMusicCurationUsingOptions";
        v53 = 2048;
        v54 = ((((v24 - v48) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    else
    {
      spid = v13;
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v20];
      v38 = +[PGLogging sharedLogging];
      loggingConnection3 = [v38 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v37;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with serialization error: %@", buf, 0xCu);
      }

      v47 = v37;
      v40 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v37];
      replyCopy[2](replyCopy, 0, v40);
      v41 = mach_absolute_time();
      v43 = info.numer;
      v42 = info.denom;
      v44 = v15;
      v45 = v44;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v45, OS_SIGNPOST_INTERVAL_END, spid, "FlexMusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "FlexMusicCurationUsingOptions";
        v53 = 2048;
        v54 = ((((v41 - v48) * v43) / v42) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }
  }

  else
  {
    v29 = +[PGLogging sharedLogging];
    loggingConnection4 = [v29 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v21;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation using options failed with Error: %@", buf, 0xCu);
    }

    v31 = [PGError xpcSafeErrorWithError:v21];
    replyCopy[2](replyCopy, 0, v31);

    v32 = mach_absolute_time();
    v34 = info.numer;
    v33 = info.denom;
    v35 = v15;
    v36 = v35;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, v13, "FlexMusicCurationUsingOptions", "", buf, 2u);
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "FlexMusicCurationUsingOptions";
      v53 = 2048;
      v54 = ((((v32 - v48) * v34) / v33) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

+ (void)requestMusicCurationWithCurationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v106 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v10 = +[PGLogging memoriesMusicLogging];
  loggingConnection = [v10 loggingConnection];

  v12 = loggingConnection;
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MusicCurationUsingOptions", "", buf, 2u);
  }

  spid = v13;

  info = 0;
  mach_timebase_info(&info);
  v86 = mach_absolute_time();
  shouldUseSpecificationOptionsForCuration = [optionsCopy shouldUseSpecificationOptionsForCuration];
  v18 = +[PGLogging sharedLogging];
  loggingConnection2 = [v18 loggingConnection];

  v20 = os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO);
  if (!shouldUseSpecificationOptionsForCuration)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation using curation options", buf, 2u);
    }

    musicCurationSpecificationOptions = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_364];
    v99 = 0;
    v32 = [self appleMusicCurationWithOptions:optionsCopy graphManager:managerCopy progressReporter:musicCurationSpecificationOptions error:&v99];
    v24 = v99;
    if (!v32)
    {
      v54 = +[PGLogging sharedLogging];
      loggingConnection3 = [v54 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v103 = v24;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation failed error: %@", buf, 0xCu);
      }

      v56 = [PGError xpcSafeErrorWithError:v24];
      v26 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v56);

      v27 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v57 = v15;
      v31 = v57;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      goto LABEL_53;
    }

    v33 = musicCurationSpecificationOptions;
    musicCurationSpecificationOptions = v32;
LABEL_21:

    keySongAdamID = [musicCurationSpecificationOptions keySongAdamID];

    if (keySongAdamID)
    {
      v38 = MEMORY[0x277CBEA60];
      keySongAdamID2 = [musicCurationSpecificationOptions keySongAdamID];
      v40 = [v38 arrayWithObjects:{keySongAdamID2, 0}];

      v41 = +[PGLogging sharedLogging];
      loggingConnection4 = [v41 loggingConnection];

      if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
      {
        v43 = [v40 objectAtIndexedSubscript:0];
        *buf = 138412290;
        v103 = v43;
        _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Start Caching the key Apple Music song %@ for MC. It should trigger the song assets download.", buf, 0xCu);
      }

      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_365;
      v97[3] = &unk_278884D38;
      v98 = v40;
      v45 = v40;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v45 progressReporter:ignoreProgress completionHandler:v97];
    }

    v84 = optionsCopy;
    v46 = +[PGLogging sharedLogging];
    loggingConnection5 = [v46 loggingConnection];

    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music option-based curation", buf, 2u);
    }

    v48 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
    v96 = 0;
    [managerCopy musicCurationInflationContextWithInflationOptions:v48 error:&v96];
    v50 = v49 = managerCopy;
    v24 = v96;
    v83 = v49;
    if (v50)
    {
      v95 = 0;
      v51 = [v49 musicCuratorContextWithCurationOptions:v84 error:&v95];
      v52 = v95;
      if (v51)
      {
        v53 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_368_21611];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_2;
        v88[3] = &unk_278881720;
        v91 = replyCopy;
        v92 = v86;
        v94 = info;
        v89 = v15;
        v93 = spid;
        v90 = musicCurationSpecificationOptions;
        [PGMusicCurator inflateDisplayMetadataForMusicCuration:v90 inflationContext:v50 curatorContext:v51 progressReporter:v53 completionHandler:v88];
      }

      else
      {
        v66 = +[PGLogging sharedLogging];
        loggingConnection6 = [v66 loggingConnection];

        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v103 = v52;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation musicCuratorContext error: %{public}@", buf, 0xCu);
        }

        v68 = [PGError xpcSafeErrorWithError:v52];
        (*(replyCopy + 2))(replyCopy, 0, v68);

        v69 = mach_absolute_time();
        v71 = info.numer;
        v70 = info.denom;
        v72 = v15;
        v73 = v72;
        if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v73, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
        }

        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v103 = "MusicCurationUsingOptions";
          v104 = 2048;
          v105 = ((((v69 - v86) * v71) / v70) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }
      }

      v26 = replyCopy;
    }

    else
    {
      v58 = +[PGLogging sharedLogging];
      loggingConnection7 = [v58 loggingConnection];

      if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v103 = v24;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation inflation error: %{public}@", buf, 0xCu);
      }

      v60 = [PGError xpcSafeErrorWithError:v24];
      v26 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v60);

      v61 = mach_absolute_time();
      v63 = info.numer;
      v62 = info.denom;
      v64 = v15;
      v65 = v64;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v65, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v103 = "MusicCurationUsingOptions";
        v104 = 2048;
        v105 = ((((v61 - v86) * v63) / v62) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    managerCopy = v83;
    optionsCopy = v84;
    goto LABEL_53;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation using specification options", buf, 2u);
  }

  musicCurationSpecificationOptions = [optionsCopy musicCurationSpecificationOptions];
  if (![musicCurationSpecificationOptions isQUEmpty])
  {
    v24 = [[PGSpecificationBasedMusicCurator alloc] initWithOptions:musicCurationSpecificationOptions];
    v100 = 0;
    v34 = [(PGSpecificationBasedMusicCurator *)v24 musicCurationAndReturnError:&v100];
    v35 = v100;
    v36 = v35;
    if (!v34)
    {
      v74 = +[PGLogging sharedLogging];
      loggingConnection8 = [v74 loggingConnection];

      if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v36 localizedDescription];
        *buf = 138412290;
        v103 = localizedDescription;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music specification-based curation failed with error: %@", buf, 0xCu);
      }

      v76 = [PGError xpcSafeErrorWithError:v36];
      v26 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v76);

      v77 = mach_absolute_time();
      v79 = info.numer;
      v78 = info.denom;
      v80 = v15;
      v81 = v80;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v81, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
      }

      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v103 = "MusicCurationUsingOptions";
        v104 = 2048;
        v105 = ((((v77 - v86) * v79) / v78) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      goto LABEL_53;
    }

    v33 = musicCurationSpecificationOptions;
    musicCurationSpecificationOptions = v34;
    goto LABEL_21;
  }

  v22 = +[PGLogging sharedLogging];
  loggingConnection9 = [v22 loggingConnection];

  if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v103 = @"Apple Music curation failed since specificationOptions is empty";
    _os_log_error_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_ERROR, "[MemoriesMusic] %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Apple Music curation failed since specificationOptions is empty"];
  v25 = [PGError xpcSafeErrorWithError:v24];
  v26 = replyCopy;
  (*(replyCopy + 2))(replyCopy, 0, v25);

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v15;
  v31 = v30;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, spid, "MusicCurationUsingOptions", "", buf, 2u);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
LABEL_36:
    *buf = 136315394;
    v103 = "MusicCurationUsingOptions";
    v104 = 2048;
    v105 = ((((v27 - v86) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_53:
}

void __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_365(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[PGLogging sharedLogging];
  v7 = [v6 loggingConnection];

  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cached Key Apple Music Song: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Attempt to cache key AM song failed with error: %{public}@", &v9, 0xCu);
  }
}

void __77__PGMusicWrapper_requestMusicCurationWithCurationOptions_graphManager_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 jsonRepresentation];
    if (v6)
    {
      v7 = +[PGLogging sharedLogging];
      v8 = [v7 loggingConnection];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Apple Music curation using provided options: %@", buf, 0xCu);
      }

      v9 = [PGError xpcSafeErrorWithError:0];
      (*(*(a1 + 48) + 16))();

      v10 = mach_absolute_time();
      v11 = *(a1 + 56);
      v13 = *(a1 + 72);
      v12 = *(a1 + 76);
      v14 = *(a1 + 32);
      v15 = v14;
      v16 = *(a1 + 64);
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_END, v16, "MusicCurationUsingOptions", "", buf, 2u);
      }

      v17 = *(a1 + 32);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "MusicCurationUsingOptions";
        v43 = 2048;
        v44 = ((((v10 - v11) * v13) / v12) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    else
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize inflated music curation object to JSON: %@", *(a1 + 40)];
      v30 = +[PGLogging sharedLogging];
      v31 = [v30 loggingConnection];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v29;
        _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation error: %@", buf, 0xCu);
      }

      v32 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v29];
      (*(*(a1 + 48) + 16))();
      v33 = mach_absolute_time();
      v34 = *(a1 + 56);
      v36 = *(a1 + 72);
      v35 = *(a1 + 76);
      v37 = *(a1 + 32);
      v38 = v37;
      v39 = *(a1 + 64);
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, v39, "MusicCurationUsingOptions", "", buf, 2u);
      }

      v40 = *(a1 + 32);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "MusicCurationUsingOptions";
        v43 = 2048;
        v44 = ((((v33 - v34) * v36) / v35) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v5;
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music option-based curation inflation failed with error: %@", buf, 0xCu);
    }

    v20 = [PGError xpcSafeErrorWithError:v5];
    (*(*(a1 + 48) + 16))();

    v21 = mach_absolute_time();
    v22 = *(a1 + 56);
    v24 = *(a1 + 72);
    v23 = *(a1 + 76);
    v25 = *(a1 + 32);
    v26 = v25;
    v27 = *(a1 + 64);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_END, v27, "MusicCurationUsingOptions", "", buf, 2u);
    }

    v28 = *(a1 + 32);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "MusicCurationUsingOptions";
      v43 = 2048;
      v44 = ((((v21 - v22) * v24) / v23) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }
}

+ (BOOL)cacheRemoveAllForPhotoLibrary:(id)library error:(id *)error
{
  v5 = [PGMusicCache cacheWithPhotoLibrary:library error:?];
  ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
  LOBYTE(error) = [v5 removeAllWithProgressReporter:ignoreProgress error:error];

  return error;
}

+ (id)cacheStatusWithPhotoLibrary:(id)library error:(id *)error
{
  v5 = [PGMusicCache cacheWithPhotoLibrary:library error:?];
  v6 = [v5 statusAndReturnError:error];

  return v6;
}

+ (id)generateMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  collectionCopy = collection;
  managerCopy = manager;
  reporterCopy = reporter;
  v12 = [managerCopy musicCuratorContextWithRecentlyUsedSongAdamIDs:0 error:error];
  if (v12)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__21547;
    v25 = __Block_byref_object_dispose__21548;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __110__PGMusicWrapper_generateMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke;
    v15[3] = &unk_278882EA0;
    v19 = &v21;
    v16 = collectionCopy;
    v17 = v12;
    v18 = reporterCopy;
    errorCopy = error;
    [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v15];
    v13 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __110__PGMusicWrapper_generateMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke(void *a1, void *a2)
{
  v6 = [a2 graph];
  v3 = [PGMusicCurator generateDebugInformationForAssetCollection:a1[4] graph:v6 context:a1[5] progressReporter:a1[6] error:a1[8]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)generateMusicCurationDebugInformationForSongWithAdamID:(id)d graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  dCopy = d;
  reporterCopy = reporter;
  v11 = [manager musicCuratorContextWithRecentlyUsedSongAdamIDs:0 error:error];
  if (v11)
  {
    v12 = [PGMusicCurator generateDebugInformationForSongWithAdamID:dCopy context:v11 progressReporter:reporterCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)generateFlexMusicCurationDebugInformationForAssetCollection:(id)collection graphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  collectionCopy = collection;
  managerCopy = manager;
  reporterCopy = reporter;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__21547;
  v25 = __Block_byref_object_dispose__21548;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__PGMusicWrapper_generateFlexMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke;
  v16[3] = &unk_27888A7B8;
  v19 = &v21;
  v12 = collectionCopy;
  v17 = v12;
  v13 = reporterCopy;
  v18 = v13;
  errorCopy = error;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __114__PGMusicWrapper_generateFlexMusicCurationDebugInformationForAssetCollection_graphManager_progressReporter_error___block_invoke(void *a1, void *a2)
{
  v6 = [a2 graph];
  v3 = [PGFlexMusicCurator generateDebugInformationForAssetCollection:a1[4] graph:v6 progressReporter:a1[5] error:a1[7]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)fetchSongMetadataJSONForAdamIDs:(id)ds options:(id)options inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__PGMusicWrapper_fetchSongMetadataJSONForAdamIDs_options_inflationContext_progressReporter_completionHandler___block_invoke;
  v13[3] = &unk_278881748;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [PGMusicCurator fetchSongMetadataJSONForAdamIDs:ds options:options inflationContext:context progressReporter:reporter completionHandler:v13];
}

+ (void)fetchSongDisplayMetadataJSONForAdamIDs:(id)ds inflationContext:(id)context progressReporter:(id)reporter completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__PGMusicWrapper_fetchSongDisplayMetadataJSONForAdamIDs_inflationContext_progressReporter_completionHandler___block_invoke;
  v11[3] = &unk_278881748;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [PGMusicCurator fetchSongDisplayMetadataJSONForAdamIDs:ds inflationContext:context progressReporter:reporter completionHandler:v11];
}

+ (void)requestFlexMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v72 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building flex music curation context for asset fetch result.", buf, 2u);
  }

  if ([resultCopy count])
  {
    v69 = 0;
    v16 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v69];
    v17 = v69;
    if (v16)
    {
      v18 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_352_21639];
      v65 = v16;
      v66 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v16];
      v19 = +[PGLogging sharedLogging];
      loggingConnection2 = [v19 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features from asset fetch result for Flex Music curation", buf, 2u);
      }

      v21 = [v18 childProgressReporterFromStart:0.0 toEnd:0.2];
      v68 = 0;
      v22 = [self _musicCurationFeaturesWithFeatureExtractionContext:v66 assetFetchResult:resultCopy graphManager:managerCopy progressReporter:v21 error:&v68];
      v63 = v68;

      v64 = v22;
      if (v22)
      {
        v62 = v18;
        photoLibrary = [managerCopy photoLibrary];
        v24 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];

        v59 = optionsCopy;
        recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
        date = [MEMORY[0x277CBEAA8] date];
        v61 = v24;
        [v24 addSongIDs:recentlyUsedBundledSongIDs date:date];

        v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultCopy, "count")}];
        if ([resultCopy count])
        {
          v28 = 0;
          do
          {
            v29 = objc_autoreleasePoolPush();
            v30 = [resultCopy objectAtIndexedSubscript:v28];
            localIdentifier = [v30 localIdentifier];
            [v27 addObject:localIdentifier];

            objc_autoreleasePoolPop(v29);
            ++v28;
          }

          while (v28 < [resultCopy count]);
        }

        v32 = [v27 sortedArrayUsingSelector:sel_compare_];
        v33 = [PGFlexMusicCurationParameters alloc];
        v58 = v32;
        firstObject = [v32 firstObject];
        v35 = [(PGFlexMusicCurationParameters *)v33 initWithMood:16 moodKeywords:MEMORY[0x277CBEBF8] recentlyUsedSongs:v61 entityUUID:firstObject useMoodKeywords:0 features:v64 musicCuratorContext:v65];

        v67 = 0;
        v57 = v35;
        v36 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v35 progressReporter:v62 error:&v67];
        v37 = v67;
        v38 = v37;
        if (v36)
        {
          v60 = v37;
          jsonRepresentation = [v36 jsonRepresentation];
          if (jsonRepresentation)
          {
            v40 = +[PGLogging sharedLogging];
            loggingConnection3 = [v40 loggingConnection];

            if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v71 = jsonRepresentation;
              _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Flex Music curation for asset local identifiers: %@", buf, 0xCu);
            }

            v42 = [PGError xpcSafeErrorWithError:v60];
            replyCopy[2](replyCopy, jsonRepresentation, v42);
          }

          else
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v36];
            v54 = +[PGLogging sharedLogging];
            loggingConnection4 = [v54 loggingConnection];

            if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v71 = v42;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music serialization error: %@", buf, 0xCu);
            }

            v56 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v42];

            replyCopy[2](replyCopy, 0, v56);
            v60 = v56;
          }

          v18 = v62;
          v49 = v63;

          v53 = v60;
        }

        else
        {
          v51 = +[PGLogging sharedLogging];
          loggingConnection5 = [v51 loggingConnection];

          if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v71 = v38;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", buf, 0xCu);
          }

          [PGError xpcSafeErrorWithError:v38];
          jsonRepresentation = v53 = v38;
          replyCopy[2](replyCopy, 0, jsonRepresentation);
          v18 = v62;
          v49 = v63;
        }

        optionsCopy = v59;
        v16 = v65;
        v50 = v61;
      }

      else
      {
        v47 = +[PGLogging sharedLogging];
        loggingConnection6 = [v47 loggingConnection];

        v49 = v63;
        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v71 = v63;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music feature extraction error for assert fetch result: %@", buf, 0xCu);
        }

        v50 = [PGError xpcSafeErrorWithError:v63];
        replyCopy[2](replyCopy, 0, v50);
        v16 = v65;
      }
    }

    else
    {
      v45 = +[PGLogging sharedLogging];
      loggingConnection7 = [v45 loggingConnection];

      if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v17;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curator context error for asset fetch result: %@", buf, 0xCu);
      }

      v18 = [PGError xpcSafeErrorWithError:v17];
      replyCopy[2](replyCopy, 0, v18);
    }
  }

  else
  {
    v43 = +[PGLogging sharedLogging];
    loggingConnection8 = [v43 loggingConnection];

    if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v71 = @"Cannot curate music for an empty asset fetch result.";
      _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music Curation Error: %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Cannot curate music for an empty asset fetch result."];
    replyCopy[2](replyCopy, 0, v17);
  }
}

+ (void)requestFlexMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v132 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Flex Music curation context for asset collection.", buf, 2u);
  }

  v119 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_341];
  uuid = [collectionCopy uuid];
  v124 = 0;
  v17 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v124];
  v118 = v124;
  if (v17)
  {
    v117 = uuid;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = collectionCopy;
    v20 = MEMORY[0x277CBEBF8];
    v115 = optionsCopy;
    if ((isKindOfClass & 1) == 0)
    {
      v116 = MEMORY[0x277CBEBF8];
      v23 = 0;
      suggestedMood = 16;
      collectionCopy = v19;
LABEL_16:
      v114 = managerCopy;
      photoLibrary = [managerCopy photoLibrary];
      v39 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];

      recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
      date = [MEMORY[0x277CBEAA8] date];
      [v39 addSongIDs:recentlyUsedBundledSongIDs date:date];

      if ((isKindOfClass & 1) == 0)
      {
        photoLibrary2 = [v114 photoLibrary];
        v122 = 0;
        v43 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsForCollectionsFromPhotoLibrary:photoLibrary2 error:&v122];
        v44 = v122;

        v45 = +[PGLogging sharedLogging];
        loggingConnection2 = [v45 loggingConnection];

        if (!v43 || v44)
        {
          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v127 = v44;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Error getting the recently used Flex songs for collections. error=%@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v127 = v43;
            _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] recentlyUsedSongsForCollections = %@", buf, 0xCu);
          }

          [v39 appendWithOtherRecentlyUsed:v43];
        }

        optionsCopy = v115;
      }

      v111 = v39;
      v47 = [[PGFlexMusicCurationParameters alloc] initWithMood:suggestedMood moodKeywords:v116 recentlyUsedSongs:v39 entityUUID:v117 useMoodKeywords:0 features:v23 musicCuratorContext:v17];
      v48 = [v119 childProgressReporterFromStart:0.2 toEnd:1.0];
      v121 = 0;
      v110 = v47;
      v49 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v47 progressReporter:v48 error:&v121];
      v113 = v121;

      if (!v49)
      {
        v61 = +[PGLogging sharedLogging];
        loggingConnection3 = [v61 loggingConnection];

        v63 = v113;
        if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
        {
          uuid2 = [collectionCopy uuid];
          *buf = 138412546;
          v127 = uuid2;
          v128 = 2112;
          v129 = v113;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation failed for asset collection (%@) with Error: %@", buf, 0x16u);
        }

        v55 = [PGError xpcSafeErrorWithError:v113];
        replyCopy[2](replyCopy, 0, v55);
        managerCopy = v114;
        goto LABEL_68;
      }

      if (isKindOfClass)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = collectionCopy;
          v51 = v50;
          if (v50 && [(PGFlexMusicCurationManager *)v50 creationType]== 1)
          {
            v52 = +[PGLogging sharedLogging];
            loggingConnection4 = [v52 loggingConnection];

            if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] Generative PHMemory so extract the curated music", buf, 2u);
            }

            extractGenerativeMemoryMusicCuration = [(PGFlexMusicCurationManager *)v51 extractGenerativeMemoryMusicCuration];
            if (extractGenerativeMemoryMusicCuration)
            {
              v55 = extractGenerativeMemoryMusicCuration;
              v106 = v23;
              v56 = [extractGenerativeMemoryMusicCuration objectForKeyedSubscript:@"flexMusicSongIds"];
              v57 = v56;
              if (v56 && [v56 count])
              {
                v58 = +[PGLogging sharedLogging];
                loggingConnection5 = [v58 loggingConnection];

                if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Replacing replaceBestSongSuggestionsWithFlexSongIds", buf, 2u);
                }

                v60 = [v49 replaceBestSongSuggestionsWithFlexSongIds:v57];

                v49 = v60;
              }

LABEL_52:

              v70 = v55;
              v55 = v49;
              v23 = v106;
LABEL_53:

              jsonRepresentation = [v55 jsonRepresentation];
              if (!jsonRepresentation)
              {
                v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize flex music curation object to JSON: %@", v55];
                v97 = +[PGLogging sharedLogging];
                loggingConnection6 = [v97 loggingConnection];

                if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
                {
                  uuid3 = [collectionCopy uuid];
                  *buf = 138412546;
                  v127 = uuid3;
                  v128 = 2112;
                  v129 = v95;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curation failed for asset collection (%@) with serialization error: %@", buf, 0x16u);
                }

                v99 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v95];

                replyCopy[2](replyCopy, 0, v99);
                v63 = v99;
                managerCopy = v114;
                v96 = 0;
                goto LABEL_67;
              }

              v109 = replyCopy;
              v74 = +[PGLogging sharedLogging];
              loggingConnection7 = [v74 loggingConnection];

              v63 = v113;
              if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_INFO))
              {
                title = [collectionCopy title];
                uuid4 = [collectionCopy uuid];
                *buf = 138412802;
                v127 = title;
                v128 = 2112;
                v129 = uuid4;
                v130 = 2112;
                v131 = jsonRepresentation;
                _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Flex Music curation for asset collection (%@) with uuid '%@': %@", buf, 0x20u);
              }

              bestSongSuggestions = [v55 bestSongSuggestions];
              managerCopy = v114;
              if (bestSongSuggestions)
              {
                bestSongSuggestions5 = bestSongSuggestions;
                bestSongSuggestions2 = [v55 bestSongSuggestions];
                firstObject = [bestSongSuggestions2 firstObject];
                if (!firstObject)
                {
LABEL_62:

                  goto LABEL_63;
                }

                v82 = firstObject;
                bestSongSuggestions3 = [v55 bestSongSuggestions];
                firstObject2 = [bestSongSuggestions3 firstObject];
                v85 = [firstObject2 uid];

                v63 = v113;
                managerCopy = v114;

                if (v85)
                {
                  v86 = +[PGLogging sharedLogging];
                  loggingConnection8 = [v86 loggingConnection];

                  if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_INFO))
                  {
                    bestSongSuggestions4 = [v55 bestSongSuggestions];
                    firstObject3 = [bestSongSuggestions4 firstObject];
                    v90 = [firstObject3 uid];
                    title2 = [collectionCopy title];
                    uuid5 = [collectionCopy uuid];
                    *buf = 138412802;
                    v127 = v90;
                    v128 = 2112;
                    v129 = title2;
                    v130 = 2112;
                    v131 = uuid5;
                    _os_log_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cache the key flex song (%@) for collection with title '%@' and with uuid '%@'. This triggers the song assets download.", buf, 0x20u);

                    v63 = v113;
                  }

                  bestSongSuggestions5 = [v55 bestSongSuggestions];
                  bestSongSuggestions2 = [bestSongSuggestions5 firstObject];
                  v93 = [bestSongSuggestions2 uid];
                  v125 = v93;
                  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
                  [PGFlexMusicCacher cacheSongAudioAndArtworkForUIDs:v94];

                  managerCopy = v114;
                  goto LABEL_62;
                }
              }

LABEL_63:
              v95 = [PGError xpcSafeErrorWithError:v63];
              v96 = jsonRepresentation;
              replyCopy = v109;
              v109[2](v109, jsonRepresentation, v95);
              optionsCopy = v115;
LABEL_67:

LABEL_68:
              v37 = v116;
              uuid = v117;
LABEL_69:

              v36 = v118;
              goto LABEL_70;
            }
          }
        }

        else
        {
          v51 = 0;
        }

        v70 = 0;
        v55 = v49;
        goto LABEL_53;
      }

      backingCollectionLocalIdentifier = [optionsCopy backingCollectionLocalIdentifier];
      v65 = backingCollectionLocalIdentifier;
      v106 = v23;
      if (backingCollectionLocalIdentifier)
      {
        assetCollectionLocalIdentifier = backingCollectionLocalIdentifier;
      }

      else
      {
        assetCollectionLocalIdentifier = [optionsCopy assetCollectionLocalIdentifier];
      }

      v55 = assetCollectionLocalIdentifier;

      v51 = objc_alloc_init(PGFlexMusicCurationManager);
      cache = [v17 cache];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v120 = 0;
      v73 = [(PGFlexMusicCurationManager *)v51 adjustCurationForCollectionWithLocalIdentifier:v55 initialCuration:v49 cache:cache progressReporter:ignoreProgress error:&v120];
      v57 = v120;

      if (!v73)
      {
        v100 = +[PGLogging sharedLogging];
        loggingConnection9 = [v100 loggingConnection];

        uuid = v117;
        if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v127 = v117;
          v128 = 2112;
          v129 = v57;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Adjusting curation for collection (%@) failed with error: %@", buf, 0x16u);
        }

        v102 = [PGError xpcSafeErrorWithError:v113];
        replyCopy[2](replyCopy, 0, v102);

        v63 = v113;
        managerCopy = v114;
        optionsCopy = v115;
        v37 = v116;
        v23 = v106;
        goto LABEL_69;
      }

      v49 = v73;
      optionsCopy = v115;
      goto LABEL_52;
    }

    v108 = replyCopy;
    v21 = managerCopy;
    v22 = v19;
    v23 = v19;
    suggestedMood = [v23 suggestedMood];
    moodKeywords = [v23 moodKeywords];
    v25 = moodKeywords;
    if (moodKeywords)
    {
      v26 = moodKeywords;
    }

    else
    {
      v26 = v20;
    }

    v116 = v26;

    v27 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v17];
    v28 = +[PGLogging sharedLogging];
    loggingConnection10 = [v28 loggingConnection];

    if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_INFO))
    {
      uuid6 = [v23 uuid];
      *buf = 138412290;
      v127 = uuid6;
      _os_log_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features for memory: %@ for Flex Music curation", buf, 0xCu);
    }

    v31 = [v119 childProgressReporterFromStart:0.0 toEnd:0.2];
    v123 = 0;
    v32 = [self _musicCurationFeaturesWithFeatureExtractionContext:v27 memory:v23 graphManager:v21 progressReporter:v31 error:&v123];
    v33 = v123;

    if (v32)
    {

      v23 = v32;
      optionsCopy = v115;
      managerCopy = v21;
      replyCopy = v108;
      collectionCopy = v22;
      goto LABEL_16;
    }

    v67 = +[PGLogging sharedLogging];
    loggingConnection11 = [v67 loggingConnection];

    collectionCopy = v22;
    if (os_log_type_enabled(loggingConnection11, OS_LOG_TYPE_ERROR))
    {
      uuid7 = [v23 uuid];
      *buf = 138412546;
      v127 = uuid7;
      v128 = 2112;
      v129 = v33;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection11, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music feature extraction error for PHMemory (%@): %@", buf, 0x16u);
    }

    v69 = [PGError xpcSafeErrorWithError:v33];
    v108[2](v108, 0, v69);

    optionsCopy = v115;
    v37 = v116;
    managerCopy = v21;
    replyCopy = v108;
    uuid = v117;
    v36 = v118;
  }

  else
  {
    v34 = +[PGLogging sharedLogging];
    loggingConnection12 = [v34 loggingConnection];

    v36 = v118;
    if (os_log_type_enabled(loggingConnection12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v127 = v118;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection12, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Flex Music curator context error for asset fetch result: %@", buf, 0xCu);
    }

    v23 = [PGError xpcSafeErrorWithError:v118];
    replyCopy[2](replyCopy, 0, v23);
    v37 = MEMORY[0x277CBEBF8];
  }

LABEL_70:
}

+ (void)requestMusicCurationForAssetFetchResult:(id)result curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v120 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    assetCollectionLocalIdentifier = [optionsCopy assetCollectionLocalIdentifier];
    *buf = 138412290;
    v117 = assetCollectionLocalIdentifier;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation context for asset fetch result. assetCollectionLocalIdentifier = %@", buf, 0xCu);
  }

  if ([resultCopy count])
  {
    v17 = +[PGLogging memoriesMusicLogging];
    loggingConnection2 = [v17 loggingConnection];

    v19 = loggingConnection2;
    v20 = os_signpost_id_generate(v19);
    v21 = v19;
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "MusicCurationForAssetFetchResult", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v91 = mach_absolute_time();
    v114 = 0;
    v23 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v114];
    v24 = v114;
    if (!v23)
    {
      v37 = +[PGLogging sharedLogging];
      loggingConnection3 = [v37 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v117 = v24;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curator context error for asset fetch result: %@", buf, 0xCu);
      }

      v39 = [PGError xpcSafeErrorWithError:v24];
      replyCopy[2](replyCopy, 0, v39);
      goto LABEL_59;
    }

    v89 = v20;
    assetCollectionLocalIdentifier2 = [optionsCopy assetCollectionLocalIdentifier];

    v94 = v24;
    if (assetCollectionLocalIdentifier2)
    {
      v98 = replyCopy;
      v26 = optionsCopy;
      v27 = managerCopy;
      v28 = resultCopy;
      v29 = v27;
      photoLibrary = [v27 photoLibrary];
      v113 = 0;
      v31 = [PGMusicCurationRecentlyUsedSongs recentlyUsedAppleMusicSongsForCollectionsFromPhotoLibrary:photoLibrary error:&v113];
      v32 = v113;

      v33 = +[PGLogging sharedLogging];
      loggingConnection4 = [v33 loggingConnection];

      v95 = v32;
      if (!v31 || v32)
      {
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v117 = v32;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Error getting the recently used Apple Music songs for collections. error=%@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v117 = v31;
          _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] recentlyUsedSongsForCollections = %@", buf, 0xCu);
        }

        loggingConnection4 = [v23 recentlyUsedSongs];
        [loggingConnection4 appendWithOtherRecentlyUsed:v31];
      }

      resultCopy = v28;

      managerCopy = v29;
      optionsCopy = v26;
      replyCopy = v98;
    }

    else
    {
      v95 = 0;
    }

    v96 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_331];
    v99 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v23];
    v40 = +[PGLogging sharedLogging];
    loggingConnection5 = [v40 loggingConnection];

    if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features from asset fetch result for Apple Music curation", buf, 2u);
    }

    v42 = v96;
    v43 = [v96 childProgressReporterFromStart:0.0 toEnd:0.2];
    v112 = 0;
    v44 = [self _musicCurationFeaturesWithFeatureExtractionContext:v99 assetFetchResult:resultCopy graphManager:managerCopy progressReporter:v43 error:&v112];
    v93 = v112;

    v45 = +[PGLogging sharedLogging];
    loggingConnection6 = [v45 loggingConnection];

    v97 = v44;
    v92 = optionsCopy;
    if (!v44)
    {
      v58 = v23;
      v59 = v93;
      if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v117 = v93;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for asset fetch result: %@", buf, 0xCu);
      }

      v60 = [PGError xpcSafeErrorWithError:v93];
      replyCopy[2](replyCopy, 0, v60);
      v24 = v94;
      v39 = v95;
      goto LABEL_58;
    }

    if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music for asset fetch result.", buf, 2u);
    }

    v47 = [v96 childProgressReporterFromStart:0.2 toEnd:1.0];
    v111 = 0;
    v48 = [PGMusicCurator curateMusicForFeatures:v44 context:v23 progressReporter:v47 error:&v111];
    v90 = v111;

    v24 = v94;
    if (!v48)
    {
      v61 = +[PGLogging sharedLogging];
      loggingConnection7 = [v61 loggingConnection];

      if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v117 = v90;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error: %@", buf, 0xCu);
      }

      v58 = v23;

      v63 = [PGError xpcSafeErrorWithError:v90];
      replyCopy[2](replyCopy, 0, v63);
      v39 = v95;
      v59 = v93;
      goto LABEL_57;
    }

    backingCollectionLocalIdentifier = [optionsCopy backingCollectionLocalIdentifier];
    v86 = resultCopy;
    if (backingCollectionLocalIdentifier || ([optionsCopy assetCollectionLocalIdentifier], (backingCollectionLocalIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v50 = backingCollectionLocalIdentifier;
      v83 = managerCopy;
      v84 = v22;
      v51 = objc_alloc_init(PGMusicCurationManager);
      cache = [v23 cache];
      ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
      v110 = 0;
      v85 = v50;
      v54 = [(PGMusicCurationManager *)v51 adjustCurationForCollection:v50 initialCuration:v48 cache:cache progressReporter:ignoreProgress error:&v110];
      v55 = v110;

      if (!v54)
      {
        v87 = v55;
        v88 = v51;
        v64 = +[PGLogging sharedLogging];
        loggingConnection8 = [v64 loggingConnection];

        if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_ERROR))
        {
          assetCollectionLocalIdentifier3 = [optionsCopy assetCollectionLocalIdentifier];
          *buf = 138412546;
          v117 = assetCollectionLocalIdentifier3;
          v118 = 2112;
          v119 = v55;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Adjusting curation for collection (%@) failed with error: %@", buf, 0x16u);
        }

        v39 = v95;
        v66 = [PGError xpcSafeErrorWithError:v95];
        replyCopy[2](replyCopy, 0, v66);
        resultCopy = v86;
        managerCopy = v83;
        v22 = v84;
        goto LABEL_56;
      }

      v56 = v54;
      v57 = off_27887B000;
      managerCopy = v83;
      v22 = v84;
    }

    else
    {
      v85 = 0;
      v56 = v48;
      v57 = off_27887B000;
    }

    v88 = v56;
    keySongAdamID = [(PGMusicCurationManager *)v56 keySongAdamID];

    if (keySongAdamID)
    {
      v68 = MEMORY[0x277CBEA60];
      keySongAdamID2 = [(PGMusicCurationManager *)v88 keySongAdamID];
      v70 = [v68 arrayWithObjects:{keySongAdamID2, 0}];

      sharedLogging = [(__objc2_class *)v57[222] sharedLogging];
      loggingConnection9 = [sharedLogging loggingConnection];

      if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_INFO))
      {
        v73 = [v70 objectAtIndexedSubscript:0];
        *buf = 138412290;
        v117 = v73;
        _os_log_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_INFO, "[MemoriesMusic] Start Caching the key Apple Music song %@ for the collection. It should trigger the song assets download.", buf, 0xCu);
      }

      ignoreProgress2 = [MEMORY[0x277D22C80] ignoreProgress];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_334;
      v108[3] = &unk_278884D38;
      v109 = v70;
      v75 = v70;
      [PGMusicAudioCacher cacheSongAudioForAdamIDs:v75 progressReporter:ignoreProgress2 completionHandler:v108];

      v57 = off_27887B000;
    }

    sharedLogging2 = [(__objc2_class *)v57[222] sharedLogging];
    loggingConnection10 = [sharedLogging2 loggingConnection];

    if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music curation for asset fetch result.", buf, 2u);
    }

    v66 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
    v107 = 0;
    v78 = [managerCopy musicCurationInflationContextWithInflationOptions:v66 error:&v107];
    v87 = v107;
    if (v78)
    {
      v79 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_338];
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_2;
      v100[3] = &unk_278881720;
      v103 = replyCopy;
      v101 = v88;
      v104 = v91;
      v106 = info;
      v102 = v22;
      v105 = v89;
      [PGMusicCurator inflateDisplayMetadataForMusicCuration:v101 inflationContext:v78 curatorContext:0 progressReporter:v79 completionHandler:v100];
    }

    else
    {
      v80 = +[PGLogging sharedLogging];
      loggingConnection11 = [v80 loggingConnection];

      if (os_log_type_enabled(loggingConnection11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v117 = v87;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection11, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for assets: %{public}@", buf, 0xCu);
      }

      v79 = [PGError xpcSafeErrorWithError:v87];
      replyCopy[2](replyCopy, 0, v79);
    }

    resultCopy = v86;

    v39 = v95;
LABEL_56:
    v58 = v23;

    v42 = v96;
    v59 = v93;
    v63 = v85;
LABEL_57:

    v60 = v90;
LABEL_58:

    v23 = v58;
    optionsCopy = v92;
LABEL_59:

    goto LABEL_60;
  }

  v35 = +[PGLogging sharedLogging];
  loggingConnection12 = [v35 loggingConnection];

  if (os_log_type_enabled(loggingConnection12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v117 = @"Cannot curate music for an empty asset fetch result.";
    _os_log_error_impl(&dword_22F0FC000, loggingConnection12, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error: %@", buf, 0xCu);
  }

  v22 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Cannot curate music for an empty asset fetch result."];
  replyCopy[2](replyCopy, 0, v22);
LABEL_60:
}

void __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_334(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[PGLogging sharedLogging];
  v7 = [v6 loggingConnection];

  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Cached Key Apple Music Song: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Attempt to cache key AM song failed with error: %{public}@", &v9, 0xCu);
  }
}

void __93__PGMusicWrapper_requestMusicCurationForAssetFetchResult_curationOptions_graphManager_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    v19 = +[PGLogging sharedLogging];
    v20 = [v19 loggingConnection];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for asset fetch result: %@", buf, 0xCu);
    }

    v7 = [PGError xpcSafeErrorWithError:v5];
    v18 = *(*(a1 + 48) + 16);
    goto LABEL_14;
  }

  v6 = [a2 jsonRepresentation];
  if (v6)
  {
    v7 = v6;
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Apple Music curation for asset fetch result: %@", buf, 0xCu);
    }

    v10 = mach_absolute_time();
    v11 = *(a1 + 56);
    v13 = *(a1 + 72);
    v12 = *(a1 + 76);
    v14 = *(a1 + 40);
    v15 = v14;
    v16 = *(a1 + 64);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_END, v16, "MusicCurationForAssetFetchResult", "", buf, 2u);
    }

    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "MusicCurationForAssetFetchResult";
      v27 = 2048;
      v28 = ((((v10 - v11) * v13) / v12) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v18 = *(*(a1 + 48) + 16);
LABEL_14:
    v18();
    goto LABEL_18;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize inflated music curation object to JSON: %@", *(a1 + 32)];
  v22 = +[PGLogging sharedLogging];
  v23 = [v22 loggingConnection];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v21;
    _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for asset fetch result: %@", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v21];
  (*(*(a1 + 48) + 16))();

  v7 = 0;
LABEL_18:
}

+ (void)requestMusicCurationForAssetCollection:(id)collection curationOptions:(id)options graphManager:(id)manager reply:(id)reply
{
  v122[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  managerCopy = manager;
  replyCopy = reply;
  photoLibrary = [collectionCopy photoLibrary];
  if ([collectionCopy assetCollectionType] == 4)
  {
    v15 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v15 loggingConnection];

    v17 = loggingConnection;
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MusicCurationForMemory", "", buf, 2u);
    }

    v92 = v18;

    info = 0;
    mach_timebase_info(&info);
    v91 = mach_absolute_time();
    v103 = collectionCopy;
    v21 = +[PGLogging sharedLogging];
    loggingConnection2 = [v21 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      uuid = [v103 uuid];
      *buf = 138412290;
      v119 = uuid;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] Building Apple Music curation context for asset collection: %@.", buf, 0xCu);
    }

    v116 = 0;
    v24 = [managerCopy musicCuratorContextWithCurationOptions:optionsCopy error:&v116];
    v25 = v116;
    v100 = managerCopy;
    if (v24)
    {
      v94 = v25;
      v26 = v103;
      v98 = photoLibrary;
      if ([v103 creationType] != 1)
      {
        goto LABEL_18;
      }

      v27 = +[PGLogging sharedLogging];
      loggingConnection3 = [v27 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[MemoriesMusic] Generative PHMemory so extract the curated music", buf, 2u);
      }

      extractGenerativeMemoryMusicCuration = [v103 extractGenerativeMemoryMusicCuration];
      if (extractGenerativeMemoryMusicCuration)
      {
        v95 = extractGenerativeMemoryMusicCuration;
        v30 = +[PGLogging sharedLogging];
        loggingConnection4 = [v30 loggingConnection];

        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
        {
          uuid2 = [v103 uuid];
          *buf = 138412290;
          v119 = uuid2;
          _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[MemoriesMusic] bypassMusicForTopicElection=YES for generative memory: %@", buf, 0xCu);
        }

        [v24 setBypassMusicForTopicElection:1];
      }

      else
      {
LABEL_18:
        v95 = 0;
      }

      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v41 = [standardUserDefaults BOOLForKey:@"overrideMusicCuration"];

      if (v41)
      {
        v42 = optionsCopy;
        selfCopy = self;
        v101 = collectionCopy;
        v44 = v20;
        v45 = v42;
        v46 = replyCopy;
        v47 = managerCopy;
        v48 = v24;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Media/PhotoData/Caches/GraphService/musicCurationOverride.plist"];
        v50 = [v49 objectForKeyedSubscript:@"memoryUUID"];
        uuid3 = [v103 uuid];
        v52 = [uuid3 isEqualToString:v50];

        if (v52)
        {
          [v48 setMusicCurationOverrideDictionary:v49];
        }

        v24 = v48;
        managerCopy = v47;
        replyCopy = v46;
        v53 = v45;
        v20 = v44;
        collectionCopy = v101;
        v26 = v103;
        self = selfCopy;
        optionsCopy = v53;
      }

      v102 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_21707];
      v97 = v24;
      v99 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v24];
      v54 = +[PGLogging sharedLogging];
      loggingConnection5 = [v54 loggingConnection];

      photoLibrary = v98;
      if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_INFO))
      {
        uuid4 = [v26 uuid];
        *buf = 138412290;
        v119 = uuid4;
        _os_log_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_INFO, "[MemoriesMusic] Extracting music curation features for memory: %@ for Apple Music curation", buf, 0xCu);
      }

      v57 = [v102 childProgressReporterFromStart:0.0 toEnd:0.2];
      v115 = 0;
      v58 = [self _musicCurationFeaturesWithFeatureExtractionContext:v99 memory:v26 graphManager:managerCopy progressReporter:v57 error:&v115];
      v93 = v115;

      v59 = +[PGLogging sharedLogging];
      loggingConnection6 = [v59 loggingConnection];

      v96 = v58;
      if (v58)
      {
        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_INFO))
        {
          uuid5 = [v26 uuid];
          *buf = 138412290;
          v119 = uuid5;
          _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_INFO, "[MemoriesMusic] Curating Apple Music for PHMemory: %@.", buf, 0xCu);
        }

        v62 = [v102 childProgressReporterFromStart:0.2 toEnd:1.0];
        v114 = 0;
        v63 = [PGMusicCurator curateMusicForFeatures:v58 context:v97 progressReporter:v62 error:&v114];
        v89 = v114;

        v64 = +[PGLogging sharedLogging];
        loggingConnection7 = [v64 loggingConnection];

        if (v63)
        {
          if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_INFO))
          {
            uuid6 = [v103 uuid];
            *buf = 138412290;
            v119 = uuid6;
            _os_log_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_INFO, "[MemoriesMusic] Inflating Apple Music curation for PHMemory: %@.", buf, 0xCu);
          }

          if (v95)
          {
            v67 = [v95 objectForKeyedSubscript:@"appleMusicSongIds"];
            v68 = v67;
            if (v67 && [v67 count])
            {
              v69 = +[PGLogging sharedLogging];
              loggingConnection8 = [v69 loggingConnection];

              if (os_log_type_enabled(loggingConnection8, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, loggingConnection8, OS_LOG_TYPE_INFO, "[MemoriesMusic] Replacing replaceBestMusicSuggestionsWithAdamIds", buf, 2u);
              }

              v71 = [v63 replaceBestMusicSuggestionsWithAdamIds:v68];

              v63 = v71;
              v72 = managerCopy;
            }

            else
            {
              v72 = managerCopy;
            }

            managerCopy = v72;
          }

          v113 = 0;
          v90 = [[PGMusicCurationInflationOptions alloc] initWithInflationActionSource:1];
          v79 = [managerCopy musicCurationInflationContextWithInflationOptions:? error:?];
          v88 = 0;
          if (v79)
          {
            v80 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_318];
            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __92__PGMusicWrapper_requestMusicCurationForAssetCollection_curationOptions_graphManager_reply___block_invoke_2;
            v104[3] = &unk_2788816F8;
            v105 = v103;
            v109 = replyCopy;
            v106 = v63;
            v107 = v105;
            v110 = v91;
            v112 = info;
            v108 = v20;
            v111 = v92;
            [PGMusicCurator inflateDisplayMetadataForMusicCuration:v106 inflationContext:v79 curatorContext:0 progressReporter:v80 completionHandler:v104];

            v81 = v88;
          }

          else
          {
            v82 = +[PGLogging sharedLogging];
            loggingConnection9 = [v82 loggingConnection];

            v81 = v88;
            if (os_log_type_enabled(loggingConnection9, OS_LOG_TYPE_ERROR))
            {
              uuid7 = [v103 uuid];
              *buf = 138412546;
              v119 = uuid7;
              v120 = 2114;
              v121 = v88;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection9, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for PHMemory (%@): %{public}@", buf, 0x16u);
            }

            v80 = [PGError xpcSafeErrorWithError:v88];
            (*(replyCopy + 2))(replyCopy, 0, v80);
          }

          v26 = v103;
          v24 = v97;
          v77 = v93;
          v73 = v94;
          v78 = v89;
        }

        else
        {
          v26 = v103;
          if (os_log_type_enabled(loggingConnection7, OS_LOG_TYPE_ERROR))
          {
            uuid8 = [v103 uuid];
            *buf = 138412546;
            v119 = uuid8;
            v120 = 2112;
            v121 = v89;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection7, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
          }

          v78 = v89;
          v63 = [PGError xpcSafeErrorWithError:v89];
          (*(replyCopy + 2))(replyCopy, 0, v63);
          v24 = v97;
          v77 = v93;
          v73 = v94;
        }

        photoLibrary = v98;
      }

      else
      {
        v77 = v93;
        if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
        {
          uuid9 = [v26 uuid];
          *buf = 138412546;
          v119 = uuid9;
          v120 = 2112;
          v121 = v93;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
        }

        v78 = [PGError xpcSafeErrorWithError:v93];
        (*(replyCopy + 2))(replyCopy, 0, v78);
        v24 = v97;
        v73 = v94;
      }

      v76 = v95;
    }

    else
    {
      v73 = v25;
      v74 = +[PGLogging sharedLogging];
      loggingConnection10 = [v74 loggingConnection];

      v26 = v103;
      if (os_log_type_enabled(loggingConnection10, OS_LOG_TYPE_ERROR))
      {
        uuid10 = [v103 uuid];
        *buf = 138412546;
        v119 = uuid10;
        v120 = 2112;
        v121 = v73;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection10, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
      }

      v76 = [PGError xpcSafeErrorWithError:v73];
      (*(replyCopy + 2))(replyCopy, 0, v76);
    }

    librarySpecificFetchOptions = v20;
    managerCopy = v100;
  }

  else
  {
    v33 = +[PGLogging sharedLogging];
    loggingConnection11 = [v33 loggingConnection];

    if (os_log_type_enabled(loggingConnection11, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [collectionCopy localIdentifier];
      *buf = 138412290;
      v119 = localIdentifier;
      _os_log_impl(&dword_22F0FC000, loggingConnection11, OS_LOG_TYPE_INFO, "[MemoriesMusic] requestMusicCurationForAssetCollection delegating to requestMusicCurationForAssetFetchResult for assetCollection.localIdentifier: %@", buf, 0xCu);
    }

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    v122[0] = *MEMORY[0x277CD9AA8];
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v37];

    v20 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
    localIdentifier2 = [collectionCopy localIdentifier];
    v39 = [optionsCopy copyWithAssetCollectionLocalIdentifier:localIdentifier2];

    [self requestMusicCurationForAssetFetchResult:v20 curationOptions:v39 graphManager:managerCopy reply:replyCopy];
    optionsCopy = v39;
  }
}

void __92__PGMusicWrapper_requestMusicCurationForAssetCollection_curationOptions_graphManager_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    v21 = +[PGLogging sharedLogging];
    v22 = [v21 loggingConnection];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 32) uuid];
      *buf = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = *&v5;
      _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation inflation error for PHMemory (%@): %@", buf, 0x16u);
    }

    v7 = [PGError xpcSafeErrorWithError:v5];
    v20 = *(*(a1 + 64) + 16);
    goto LABEL_14;
  }

  v6 = [a2 jsonRepresentation];
  if (v6)
  {
    v7 = v6;
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 48) title];
      v11 = [*(a1 + 48) uuid];
      *buf = 138412802;
      v30 = v10;
      v31 = 2112;
      v32 = *&v11;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] Successfully produced Apple Music curation for asset collection (%@) with uuid '%@': %@", buf, 0x20u);
    }

    v12 = mach_absolute_time();
    v13 = *(a1 + 72);
    v15 = *(a1 + 88);
    v14 = *(a1 + 92);
    v16 = *(a1 + 56);
    v17 = v16;
    v18 = *(a1 + 80);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_END, v18, "MusicCurationForMemory", "", buf, 2u);
    }

    v19 = *(a1 + 56);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "MusicCurationForMemory";
      v31 = 2048;
      v32 = ((((v12 - v13) * v15) / v14) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v20 = *(*(a1 + 64) + 16);
LABEL_14:
    v20();
    goto LABEL_18;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to serialize inflated music curation object to JSON: %@", *(a1 + 40)];
  v24 = +[PGLogging sharedLogging];
  v25 = [v24 loggingConnection];

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v28 = [*(a1 + 32) uuid];
    *buf = 138412546;
    v30 = v28;
    v31 = 2112;
    v32 = *&v23;
    _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Apple Music curation error for PHMemory (%@): %@", buf, 0x16u);
  }

  v26 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:v23];
  (*(*(a1 + 64) + 16))();

  v7 = 0;
LABEL_18:
}

@end