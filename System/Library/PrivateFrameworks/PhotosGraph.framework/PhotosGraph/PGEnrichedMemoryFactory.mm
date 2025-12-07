@interface PGEnrichedMemoryFactory
+ (double)notificationScoreForNotificationLevel:(int64_t)level electionScore:(double)score;
+ (int64_t)notificationLevelForTriggeredMemory:(id)memory withLocalDate:(id)date graph:(id)graph;
+ (void)requestFlexMusicCurationForEnrichedMemories:(id)memories context:(id)context photoLibrary:(id)library graph:(id)graph progressReporter:(id)reporter resultHandler:(id)handler;
+ (void)requestMusicCurationForEnrichedMemories:(id)memories context:(id)context graph:(id)graph progressReporter:(id)reporter resultHandler:(id)handler;
- (PGEnrichedMemoryFactory)initWithMemoryCurationSession:(id)session graph:(id)graph serviceManager:(id)manager;
- (id)_curatedAssetsWithFeeder:(id)feeder options:(id)options progressBlock:(id)block;
- (id)_extendedCuratedAssetsWithFeeder:(id)feeder options:(id)options progressBlock:(id)block;
- (id)_keyAssetWithFeeder:(id)feeder options:(id)options progressBlock:(id)block;
- (id)_memoryEnricherFromTriggeredMemory:(id)memory;
- (id)curatedAssetUUIDsWithTriggeredMemory:(id)memory keyAsset:(id)asset extendedCuratedAssetUUIDs:(id)ds targetCurationDuration:(double)duration allowGuestAsset:(BOOL)guestAsset progressReporter:(id)reporter;
- (id)debugEnrichedMemoryWithTriggeredMemory:(id)memory withConfiguration:(id)configuration progressReporter:(id)reporter;
- (id)enrichedMemoryWithTriggeredMemory:(id)memory withConfiguration:(id)configuration progressReporter:(id)reporter debug:(BOOL)debug;
- (unint64_t)_numberOfGuestAssetInAssets:(id)assets;
@end

@implementation PGEnrichedMemoryFactory

+ (double)notificationScoreForNotificationLevel:(int64_t)level electionScore:(double)score
{
  if ((level - 2) > 2)
  {
    v4 = MEMORY[0x277CD9C38];
  }

  else
  {
    v4 = qword_278884EF0[level - 2];
  }

  v5 = fmax(score, 0.0);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  return v5 * *MEMORY[0x277CD9C48] + *v4;
}

+ (int64_t)notificationLevelForTriggeredMemory:(id)memory withLocalDate:(id)date graph:(id)graph
{
  memoryCopy = memory;
  dateCopy = date;
  graphCopy = graph;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  labels = [v12 labels];

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = +[PGGraph stellarMeanings];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke;
  v37[3] = &unk_27888A200;
  v16 = v14;
  v38 = v16;
  [v15 enumerateIndexesUsingBlock:v37];

  triggerTypes = [memoryCopy triggerTypes];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke_2;
  v31[3] = &unk_278884ED0;
  v36 = &v39;
  v18 = memoryCopy;
  v32 = v18;
  v19 = labels;
  v33 = v19;
  v20 = v16;
  v34 = v20;
  v21 = memoryMomentNodes;
  v35 = v21;
  [triggerTypes enumerateIndexesUsingBlock:v31];

  if (v40[3] != 4)
  {
    switch([v18 memoryCategory])
    {
      case 0:
      case 7:
      case 12:
      case 13:
      case 14:
      case 15:
      case 20:
      case 24:
        v22 = v40;
        v23 = v40[3];
        if (v23 <= 1)
        {
          v23 = 1;
        }

        goto LABEL_14;
      case 2:
      case 3:
      case 4:
        goto LABEL_7;
      case 5:
      case 6:
        memoryFeatureNodes2 = [v18 memoryFeatureNodes];
        v26 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection subsetInCollection:memoryFeatureNodes2];
        anyNode = [v26 anyNode];

        if ([anyNode rankInGraph:graphCopy] > 1)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      case 9:
      case 27:
        v22 = v40;
        v23 = v40[3];
        if (v23 <= 2)
        {
          v23 = 2;
        }

        goto LABEL_14;
      case 10:
      case 11:
      case 17:
      case 18:
      case 19:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
        goto LABEL_3;
      case 16:
        if ([v19 containsObject:@"Birthday"])
        {
LABEL_7:
          anyNode = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
          if ([PGPeopleInferencesConveniences anyPersonNodes:anyNode belongToBestSocialGroupsInGraph:graphCopy])
          {
LABEL_8:
            v40[3] = 3;
          }

LABEL_9:
        }

        else
        {
          v29 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:memoryFeatureNodes];
          v30 = [v29 count];

          if (v30)
          {
LABEL_3:
            v22 = v40;
            v23 = 3;
LABEL_14:
            v22[3] = v23;
          }
        }

        break;
      default:
        break;
    }
  }

  v27 = v40[3];

  _Block_object_dispose(&v39, 8);
  return v27;
}

void __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = PGMeaningLabelForMeaning(a2);
  [v2 addObject:v3];
}

void __97__PGEnrichedMemoryFactory_Notification__notificationLevelForTriggeredMemory_withLocalDate_graph___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3)
{
  switch(a2)
  {
    case 0:
    case 7:
    case 16:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
      v5 = *(*(a1 + 64) + 8);
      v6 = *(v5 + 24);
      if (v6 <= 1)
      {
        v6 = 1;
      }

      goto LABEL_13;
    case 1:
    case 3:
    case 12:
    case 17:
      goto LABEL_7;
    case 2:
    case 15:
      goto LABEL_9;
    case 4:
      if ([*(a1 + 40) containsObject:@"Anniversary"])
      {
        goto LABEL_9;
      }

      if ([*(a1 + 40) intersectsSet:*(a1 + 48)])
      {
LABEL_7:
        v5 = *(*(a1 + 64) + 8);
        v6 = 3;
      }

      else
      {
        v7 = [*(a1 + 56) personNodes];
        v8 = [v7 count];

        if (!v8)
        {
          goto LABEL_14;
        }

LABEL_11:
        v5 = *(*(a1 + 64) + 8);
        v6 = *(v5 + 24);
        if (v6 <= 2)
        {
          v6 = 2;
        }
      }

LABEL_13:
      *(v5 + 24) = v6;
LABEL_14:
      *a3 = *(*(*(a1 + 64) + 8) + 24) == 4;
      return;
    case 5:
      if ([*(a1 + 32) memoryCategory] != 8)
      {
        goto LABEL_14;
      }

LABEL_9:
      v5 = *(*(a1 + 64) + 8);
      v6 = 4;
      goto LABEL_13;
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 18:
    case 19:
    case 27:
      goto LABEL_11;
    default:
      goto LABEL_14;
  }
}

+ (void)requestMusicCurationForEnrichedMemories:(id)memories context:(id)context graph:(id)graph progressReporter:(id)reporter resultHandler:(id)handler
{
  memoriesCopy = memories;
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  handlerCopy = handler;
  v16 = graphCopy;
  v44 = handlerCopy;
  date = [MEMORY[0x277CBEAA8] date];
  v40 = memoriesCopy;
  v39 = [memoriesCopy count];
  if (v39)
  {
    v17 = 0;
    v18 = v39;
    v38 = reporterCopy;
    v19 = &unk_2810A4000;
    v36 = graphCopy;
    while (1)
    {
      v20 = objc_autoreleasePoolPush();
      if ([reporterCopy isCancelled])
      {
        break;
      }

      v21 = (v17 + 0.5) / v18;
      v22 = [v40 objectAtIndexedSubscript:v17];
      v23 = [reporterCopy childProgressReporterFromStart:v17 / v18 toEnd:v21];
      v24 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:contextCopy];
      v46 = 0;
      v25 = [v19 + 3160 extractMusicCurationFeaturesForEnrichedMemory:v22 graph:v16 context:v24 progressReporter:v23 error:&v46];
      v26 = v46;
      if (v25)
      {
        v41 = v26;
        v42 = v23;
        context = v20;
        v27 = [reporterCopy childProgressReporterFromStart:v21 toEnd:++v17 / v18];
        v28 = v19;
        v29 = v27;
        v45 = 0;
        v30 = [v28 + 3160 curateMusicForFeatures:v25 context:contextCopy progressReporter:v27 error:&v45];
        v31 = v45;
        if (v30)
        {
          recentlyUsedSongs = [contextCopy recentlyUsedSongs];
          [recentlyUsedSongs addMusicCuration:v30 date:date];

          v16 = v36;
        }

        v44[2]();

        objc_autoreleasePoolPop(context);
        reporterCopy = v38;
        v19 = &unk_2810A4000;
      }

      else
      {
        v33 = v26;
        (v44[2])(v44, v22, 0, v26);

        objc_autoreleasePoolPop(v20);
        ++v17;
      }

      if (v17 == v39)
      {
        goto LABEL_14;
      }
    }

    v34 = +[PGLogging sharedLogging];
    loggingConnection = [v34 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] (MemoriesMusic) Cancelling Apple Music curation for enriched memories.", buf, 2u);
    }

    objc_autoreleasePoolPop(v20);
    v16 = v36;
  }

LABEL_14:
}

+ (void)requestFlexMusicCurationForEnrichedMemories:(id)memories context:(id)context photoLibrary:(id)library graph:(id)graph progressReporter:(id)reporter resultHandler:(id)handler
{
  memoriesCopy = memories;
  contextCopy = context;
  libraryCopy = library;
  graphCopy = graph;
  reporterCopy = reporter;
  handlerCopy = handler;
  v52 = memoriesCopy;
  v17 = [memoriesCopy count];
  v45 = reporterCopy;
  v53 = [reporterCopy progressReportersForParallelOperationsWithCount:v17];
  v46 = libraryCopy;
  v18 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:libraryCopy];
  date = [MEMORY[0x277CBEAA8] date];
  v51 = v17;
  if (!v17)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v20 = v17;
  v48 = v18;
  v49 = contextCopy;
  while (1)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [v53 objectAtIndexedSubscript:v19];
    if ([v22 isCancelled])
    {
      break;
    }

    v23 = [v52 objectAtIndexedSubscript:v19];
    v24 = v19 / v20;
    v25 = v19++ + 0.5;
    v26 = v25 / v20;
    v27 = [v22 childProgressReporterFromStart:v24 toEnd:v25 / v20];
    v28 = v27;
    if (!contextCopy)
    {
      if ([v27 isCancelledWithProgress:1.0])
      {
        v43 = +[PGLogging sharedLogging];
        loggingConnection = [v43 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] (MemoriesMusic) Cancelling Flex Music curation for enriched memories.", buf, 2u);
        }

        goto LABEL_20;
      }

      v55 = v28;
      v57 = v21;
      v29 = 0;
      goto LABEL_9;
    }

    v29 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:contextCopy];
    v59 = 0;
    v30 = [PGMusicCurator extractMusicCurationFeaturesForEnrichedMemory:v23 graph:graphCopy context:v29 progressReporter:v28 error:&v59];
    v31 = v59;
    v32 = v31;
    if (v30)
    {
      v55 = v28;
      v57 = v21;

      v29 = v30;
LABEL_9:
      v56 = v22;
      v32 = [v22 childProgressReporterFromStart:v26 toEnd:v19 / v20];
      v33 = [PGFlexMusicCurationParameters alloc];
      suggestedMood = [v23 suggestedMood];
      [v23 legacyMoodKeywords];
      v36 = v35 = v23;
      uniqueMemoryIdentifier = [v35 uniqueMemoryIdentifier];
      v38 = [(PGFlexMusicCurationParameters *)v33 initWithMood:suggestedMood moodKeywords:v36 recentlyUsedSongs:v48 entityUUID:uniqueMemoryIdentifier useMoodKeywords:0 features:v29 musicCuratorContext:contextCopy];

      v58 = 0;
      v39 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v38 progressReporter:v32 error:&v58];
      v40 = v58;
      if (v39)
      {
        [v48 addFlexMusicCuration:v39 date:date];
      }

      handlerCopy[2]();
      v18 = v48;
      v23 = v35;

      contextCopy = v49;
      v22 = v56;
      v21 = v57;
      v28 = v55;
      goto LABEL_13;
    }

    (handlerCopy[2])(handlerCopy, v23, 0, v31);
LABEL_13:

    objc_autoreleasePoolPop(v21);
    if (v51 == v19)
    {
      goto LABEL_21;
    }
  }

  v41 = +[PGLogging sharedLogging];
  loggingConnection2 = [v41 loggingConnection];

  v23 = loggingConnection2;
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] (MemoriesMusic) Cancelling Flex Music curation for enriched memories.", buf, 2u);
  }

LABEL_20:

  objc_autoreleasePoolPop(v21);
LABEL_21:
}

- (id)_extendedCuratedAssetsWithFeeder:(id)feeder options:(id)options progressBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  optionsCopy = options;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v37 = feederCopy;
  if (!v11 || (v12 = CFAbsoluteTimeGetCurrent(), v12 - v50[3] < 0.01) || (v50[3] = v12, v48 = 0, (*(v11 + 2))(v11, &v48, 0.0), v13 = *(v54 + 24) | v48, *(v54 + 24) = v13, (v13 & 1) == 0))
  {
    allItems = [feederCopy allItems];
    if (![allItems count])
    {
      v14 = allItems;
LABEL_27:

      goto LABEL_28;
    }

    photoLibrary = [(PGMemoryCurationSession *)self->_memoryCurationSession photoLibrary];
    v16 = [[PGDejunkerDeduper_PHAsset alloc] initWithSimilarityModelClass:objc_opt_class()];
    [(PGDejunkerDeduper *)v16 setLoggingConnection:self->_loggingConnection];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke;
    v43[3] = &unk_27888A188;
    v17 = v11;
    v44 = v17;
    v45 = &v49;
    v46 = &v53;
    v47 = 0x3F847AE147AE147BLL;
    v18 = [(PGDejunkerDeduper_PHAsset *)v16 dejunkedDedupedAssetsInAssets:allItems options:optionsCopy debugInfo:0 progressBlock:v43];
    if (*(v54 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v58 = 592;
        v59 = 2080;
        v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v19 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v20 = [PGCurationManager maximumNumberOfItemsForDuration:10 withTotalNumberOfItems:-1];
      if ([v18 count] > v20)
      {
        v35 = -[PGCurationOptions initWithDuration:]([PGCurationOptions alloc], "initWithDuration:", [optionsCopy duration]);
        [(PGCurationOptions *)v35 setLastPassMovieAdditionEnabled:0];
        identifiersOfRequiredItems = [optionsCopy identifiersOfRequiredItems];
        [(PGCurationOptions *)v35 setUuidsOfRequiredAssets:identifiersOfRequiredItems];

        v33 = optionsCopy;
        v22 = objc_alloc(MEMORY[0x277CD98D0]);
        v23 = MEMORY[0x277CBEB98];
        v24 = +[PGCurationManager assetPropertySetsForCuration];
        v25 = [v23 setWithArray:v24];
        v34 = [v22 initWithObjects:v18 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:v25 identifier:0 registerIfNeeded:0];

        v26 = objc_alloc(MEMORY[0x277D27710]);
        curationContext = [(PGMemoryCurationSession *)self->_memoryCurationSession curationContext];
        v28 = [v26 initWithAssetFetchResult:v34 curationContext:curationContext];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke_294;
        v38[3] = &unk_27888A188;
        v39 = v17;
        v40 = &v49;
        v41 = &v53;
        v42 = 0x3F847AE147AE147BLL;
        v29 = [(PGEnrichedMemoryFactory *)self _curatedAssetsWithFeeder:v28 options:v35 progressBlock:v38];

        optionsCopy = v33;
        if (*(v54 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v58 = 606;
            v59 = 2080;
            v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v14 = MEMORY[0x277CBEBF8];
          v18 = v29;
          goto LABEL_26;
        }

        v18 = v29;
      }

      if (!v11 || (Current = CFAbsoluteTimeGetCurrent(), Current - v50[3] < 0.01) || (v50[3] = Current, v48 = 0, (*(v17 + 2))(v17, &v48, 1.0), v31 = *(v54 + 24) | v48, *(v54 + 24) = v31, (v31 & 1) == 0))
      {
        v18 = v18;
        v14 = v18;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v58 = 609;
        v59 = 2080;
        v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v19 = MEMORY[0x277D86220];
        goto LABEL_11;
      }
    }

    v14 = MEMORY[0x277CBEBF8];
LABEL_26:

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v58 = 578;
    v59 = 2080;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_28:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  return v14;
}

void __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __82__PGEnrichedMemoryFactory__extendedCuratedAssetsWithFeeder_options_progressBlock___block_invoke_294(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_curatedAssetsWithFeeder:(id)feeder options:(id)options progressBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  feederCopy = feeder;
  v11 = objc_alloc_init(PGCurator_PHAsset);
  [(PGCurator *)v11 setLoggingConnection:self->_loggingConnection];
  v12 = [(PGCurator_PHAsset *)v11 bestAssetsForFeeder:feederCopy options:optionsCopy debugInfo:0 progressBlock:blockCopy];

  return v12;
}

- (id)_keyAssetWithFeeder:(id)feeder options:(id)options progressBlock:(id)block
{
  feederCopy = feeder;
  optionsCopy = options;
  blockCopy = block;
  curationManager = [(PGMemoryCurationSession *)self->_memoryCurationSession curationManager];
  referencePersonLocalIdentifiers = [optionsCopy referencePersonLocalIdentifiers];
  v13 = [referencePersonLocalIdentifiers count];

  if (v13)
  {
    allItems = [feederCopy allItems];
    referencePersonLocalIdentifiers2 = [optionsCopy referencePersonLocalIdentifiers];
    minimumNumberOfReferencePersons = [optionsCopy minimumNumberOfReferencePersons];
    allowGuestAsset = [optionsCopy allowGuestAsset];
    LOBYTE(v22) = [optionsCopy wantsGoodSquareCropScore];
    [curationManager bestAssetInAssets:allItems forReferencePersonLocalIdentifiers:referencePersonLocalIdentifiers2 requiredMinimumNumberOfReferencePersons:minimumNumberOfReferencePersons forMemories:1 forSocialGroup:0 allowGuestAsset:allowGuestAsset wantsGoodSquareCropScore:v22];
  }

  else
  {
    v18 = [PGKeyCurator_PHAsset alloc];
    curationCriteriaFactory = [curationManager curationCriteriaFactory];
    allItems = [(PGKeyCurator *)v18 initWithCurationCriteriaFactory:curationCriteriaFactory];

    referencePersonLocalIdentifiers2 = [optionsCopy curationCriteria];
    [(PGKeyCurator_PHAsset *)allItems keyAssetWithFeeder:feederCopy options:optionsCopy criteria:referencePersonLocalIdentifiers2 debugInfo:0 progressBlock:blockCopy];
  }
  v20 = ;

  return v20;
}

- (unint64_t)_numberOfGuestAssetInAssets:(id)assets
{
  v15 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [assetsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) sourceType] == 32)
        {
          ++v6;
        }
      }

      v5 = [assetsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)curatedAssetUUIDsWithTriggeredMemory:(id)memory keyAsset:(id)asset extendedCuratedAssetUUIDs:(id)ds targetCurationDuration:(double)duration allowGuestAsset:(BOOL)guestAsset progressReporter:(id)reporter
{
  guestAssetCopy = guestAsset;
  v92 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  assetCopy = asset;
  dsCopy = ds;
  reporterCopy = reporter;
  v16 = self->_loggingConnection;
  v17 = os_signpost_id_generate(v16);
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "MemoryCurationForLength", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v20 = mach_absolute_time();
  v21 = [(PGEnrichedMemoryFactory *)self _memoryEnricherFromTriggeredMemory:memoryCopy];
  if (!v21)
  {
    v25 = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  v22 = objc_opt_class();
  v74 = NSStringFromClass(v22);
  v23 = reporterCopy;
  *buf = 0;
  v84 = buf;
  v85 = 0x2020000000;
  v86 = 0;
  v24 = [v23 isCancelledWithProgress:0.0];
  v84[24] = v24;
  if (v24)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v88 = 67109378;
      *v89 = 494;
      *&v89[4] = 2080;
      *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v88, 0x12u);
    }

    v25 = MEMORY[0x277CBEBF8];
    goto LABEL_24;
  }

  v73 = [v21 relevantFeederForTriggeredMemory:memoryCopy inGraph:self->_graph allowGuestAsset:guestAssetCopy progressReporter:v23];
  if (v73)
  {
    if (v84[24])
    {
      v84[24] = 1;
      goto LABEL_16;
    }

    v26 = [v23 isCancelledWithProgress:0.05];
    v84[24] = v26;
    if (v26)
    {
LABEL_16:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v88 = 67109378;
        *v89 = 503;
        *&v89[4] = 2080;
        *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v27 = MEMORY[0x277D86220];
LABEL_21:
        _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v88, 0x12u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v72 = [v21 relevantCurationFeederForTriggeredMemory:memoryCopy relevantFeeder:v73 inGraph:self->_graph allowGuestAsset:guestAssetCopy progressReporter:v23];
    if (!v72)
    {
      v72 = v73;
    }

    if (v84[24])
    {
      v84[24] = 1;
LABEL_36:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v88 = 67109378;
        *v89 = 511;
        *&v89[4] = 2080;
        *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v88, 0x12u);
      }

      v25 = MEMORY[0x277CBEBF8];
      goto LABEL_72;
    }

    v33 = [v23 isCancelledWithProgress:0.3];
    v84[24] = v33;
    if (v33)
    {
      goto LABEL_36;
    }

    v69 = [v21 uuidsOfRequiredAssetsWithKeyAsset:assetCopy triggeredMemory:memoryCopy inGraph:self->_graph progressReporter:v23];
    v34 = MEMORY[0x277CCAC30];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __155__PGEnrichedMemoryFactory_curatedAssetUUIDsWithTriggeredMemory_keyAsset_extendedCuratedAssetUUIDs_targetCurationDuration_allowGuestAsset_progressReporter___block_invoke;
    v81[3] = &unk_278886008;
    v65 = dsCopy;
    v82 = v65;
    v35 = [v34 predicateWithBlock:v81];
    v68 = [v69 filteredSetUsingPredicate:v35];

    v70 = self->_loggingConnection;
    v36 = os_signpost_id_generate(v70);
    v37 = v70;
    v38 = v37;
    v63 = v36 - 1;
    spid = v36;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v39 = v37;
      v40 = os_signpost_enabled(v37);
      v38 = v39;
      if (v40)
      {
        *v88 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CuratedAsset", "", v88, 2u);
        v38 = v39;
      }
    }

    v67 = v38;

    v80 = 0;
    mach_timebase_info(&v80);
    v62 = mach_absolute_time();
    v41 = [v21 curationOptionsWithRequiredAssetUUIDs:v68 eligibleAssetUUIDs:v65 triggeredMemory:memoryCopy];
    [v41 setUseDurationBasedCuration:1];
    [v41 setMinimumDuration:0.0];
    [v41 setTargetDuration:duration];
    [v41 setFailIfMinimumDurationNotReached:0];
    v71 = v41;
    if (v84[24])
    {
      v84[24] = 1;
LABEL_45:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v88 = 67109378;
        *v89 = 528;
        *&v89[4] = 2080;
        *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v88, 0x12u);
      }

      v25 = MEMORY[0x277CBEBF8];
      goto LABEL_71;
    }

    v42 = [v23 isCancelledWithProgress:0.35];
    v84[24] = v42;
    if (v42)
    {
      goto LABEL_45;
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __155__PGEnrichedMemoryFactory_curatedAssetUUIDsWithTriggeredMemory_keyAsset_extendedCuratedAssetUUIDs_targetCurationDuration_allowGuestAsset_progressReporter___block_invoke_284;
    v77[3] = &unk_278889448;
    v79 = buf;
    v61 = v23;
    v78 = v61;
    v66 = [(PGEnrichedMemoryFactory *)self _curatedAssetsWithFeeder:v72 options:v41 progressBlock:v77];
    if (v84[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v88 = 67109378;
        *v89 = 533;
        *&v89[4] = 2080;
        *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v88, 0x12u);
      }

      v25 = MEMORY[0x277CBEBF8];
      goto LABEL_70;
    }

    v43 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v66];
    allObjects = [v43 allObjects];

    v44 = mach_absolute_time();
    numer = v80.numer;
    denom = v80.denom;
    v47 = v67;
    v48 = v47;
    if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *v88 = 138412290;
      *v89 = v74;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAsset", "%@", v88, 0xCu);
    }

    v49 = v48;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v74];
      *v88 = 136315650;
      *v89 = "CuratedAsset";
      *&v89[8] = 2112;
      *&v89[10] = v50;
      v90 = 2048;
      v91 = ((((v44 - v62) * numer) / denom) / 1000000.0);
      v51 = v50;
      _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v88, 0x20u);
    }

    v52 = mach_absolute_time();
    v54 = info.numer;
    v53 = info.denom;
    v55 = v19;
    v56 = v55;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
    {
      *v88 = 138412290;
      *v89 = v74;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v56, OS_SIGNPOST_INTERVAL_END, v17, "MemoryCurationForLength", "%@", v88, 0xCu);
    }

    v57 = v56;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v74];
      *v88 = 136315650;
      *v89 = "MemoryCurationForLength";
      *&v89[8] = 2112;
      *&v89[10] = v58;
      v90 = 2048;
      v91 = ((((v52 - v20) * v54) / v53) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v88, 0x20u);
    }

    if (v84[24])
    {
      v84[24] = 1;
    }

    else
    {
      v59 = [v61 isCancelledWithProgress:1.0];
      v84[24] = v59;
      if ((v59 & 1) == 0)
      {
        v25 = allObjects;
LABEL_69:

LABEL_70:
LABEL_71:

LABEL_72:
        goto LABEL_23;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v88 = 67109378;
      *v89 = 540;
      *&v89[4] = 2080;
      *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v88, 0x12u);
    }

    v25 = MEMORY[0x277CBEBF8];
    goto LABEL_69;
  }

  if (v84[24])
  {
    v84[24] = 1;
  }

  else
  {
    v28 = [v23 isCancelledWithProgress:1.0];
    v84[24] = v28;
    if ((v28 & 1) == 0)
    {
      v30 = self->_loggingConnection;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *v88 = 138412290;
        *v89 = v32;
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] nil feeder for triggered memory from enricher %@", v88, 0xCu);
      }

      goto LABEL_22;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v88 = 67109378;
    *v89 = 498;
    *&v89[4] = 2080;
    *&v89[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
    v27 = MEMORY[0x277D86220];
    goto LABEL_21;
  }

LABEL_22:
  v25 = MEMORY[0x277CBEBF8];
LABEL_23:

LABEL_24:
  _Block_object_dispose(buf, 8);

LABEL_25:

  return v25;
}

uint64_t __155__PGEnrichedMemoryFactory_curatedAssetUUIDsWithTriggeredMemory_keyAsset_extendedCuratedAssetUUIDs_targetCurationDuration_allowGuestAsset_progressReporter___block_invoke_284(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.25];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)enrichedMemoryWithTriggeredMemory:(id)memory withConfiguration:(id)configuration progressReporter:(id)reporter debug:(BOOL)debug
{
  debugCopy = debug;
  v301 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  configurationCopy = configuration;
  reporterCopy = reporter;
  v11 = self->_loggingConnection;
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MemoryElectionEnrichment", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v261 = mach_absolute_time();
  v15 = [[PGEnrichedMemory alloc] initWithTriggeredMemory:memoryCopy];
  if ([configurationCopy skipEnrichment])
  {
    v16 = v15;
    goto LABEL_72;
  }

  allowGuestAsset = [configurationCopy allowGuestAsset];
  v267 = [(PGEnrichedMemoryFactory *)self _memoryEnricherFromTriggeredMemory:memoryCopy];
  v17 = objc_opt_class();
  v262 = NSStringFromClass(v17);
  v18 = reporterCopy;
  *buf = 0;
  v294 = buf;
  v295 = 0x2020000000;
  v296 = 0;
  v266 = v18;
  v19 = [v18 isCancelledWithProgress:0.0];
  v294[24] = v19;
  if (v19)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v298 = 67109378;
      *v299 = 239;
      *&v299[4] = 2080;
      *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
    }

    v16 = 0;
    goto LABEL_71;
  }

  v20 = self->_loggingConnection;
  v21 = os_signpost_id_generate(v20);
  v22 = v20;
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v298 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Feeder", "", v298, 2u);
  }

  v257 = v23;

  v292 = 0;
  mach_timebase_info(&v292);
  v24 = mach_absolute_time();
  v25 = [v267 relevantFeederForTriggeredMemory:memoryCopy inGraph:self->_graph allowGuestAsset:allowGuestAsset progressReporter:v266];
  v260 = v25;
  if (v25)
  {
    -[PGEnrichedMemory setNumberOfRelevantAssets:](v15, "setNumberOfRelevantAssets:", [v25 numberOfItems]);
    if (v294[24])
    {
      v294[24] = 1;
      goto LABEL_19;
    }

    v26 = [v266 isCancelledWithProgress:0.05];
    v294[24] = v26;
    if (v26)
    {
LABEL_19:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 256;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

      goto LABEL_21;
    }

    v256 = [v267 relevantCurationFeederForTriggeredMemory:memoryCopy relevantFeeder:v260 inGraph:self->_graph allowGuestAsset:allowGuestAsset progressReporter:v266];
    if (!v256)
    {
      v256 = v260;
    }

    if (v294[24])
    {
      v294[24] = 1;
LABEL_35:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 264;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

      v16 = 0;
      goto LABEL_68;
    }

    v32 = [v266 isCancelledWithProgress:0.1];
    v294[24] = v32;
    if (v32)
    {
      goto LABEL_35;
    }

    v255 = [v267 relevantKeyCurationFeederForTriggeredMemory:memoryCopy inGraph:self->_graph allowGuestAsset:allowGuestAsset progressReporter:v266];
    if (!v255)
    {
      v255 = v256;
    }

    if (v294[24])
    {
      v294[24] = 1;
LABEL_43:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 272;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

      v16 = 0;
      goto LABEL_67;
    }

    v33 = [v266 isCancelledWithProgress:0.15];
    v294[24] = v33;
    if (v33)
    {
      goto LABEL_43;
    }

    v253 = mach_absolute_time();
    numer = v292.numer;
    denom = v292.denom;
    v36 = v257;
    v37 = v36;
    v38 = v36;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v39 = os_signpost_enabled(v36);
      v37 = v38;
      if (v39)
      {
        *v298 = 138412290;
        *v299 = v262;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, v21, "Feeder", "%@", v298, 0xCu);
        v37 = v38;
      }
    }

    v40 = v38;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
      v42 = v41 = (((v253 - v24) * numer) / denom) / 1000000.0;
      *v298 = 136315650;
      *v299 = "Feeder";
      *&v299[8] = 2112;
      *&v299[10] = v42;
      *&v299[18] = 2048;
      v300 = v41;
      _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
    }

    v43 = self->_loggingConnection;
    v44 = os_signpost_id_generate(v43);
    v45 = v43;
    v46 = v45;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *v298 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v44, "KeyAsset", "", v298, 2u);
    }

    v252 = v46;

    v291 = 0;
    mach_timebase_info(&v291);
    v247 = mach_absolute_time();
    v47 = [v267 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:self->_graph];
    [v47 setAllowGuestAsset:allowGuestAsset];
    v288[0] = MEMORY[0x277D85DD0];
    v288[1] = 3221225472;
    v288[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke;
    v288[3] = &unk_278889448;
    v290 = buf;
    v249 = v266;
    v251 = v47;
    v289 = v249;
    v254 = [(PGEnrichedMemoryFactory *)self _keyAssetWithFeeder:v255 options:v47 progressBlock:v288];
    if (v294[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 285;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v48 = MEMORY[0x277D86220];
LABEL_64:
        _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
        goto LABEL_65;
      }

      goto LABEL_65;
    }

    if (!v254)
    {
      goto LABEL_61;
    }

    if ([v254 clsAvoidIfPossibleAsKeyItemForMemories:1 allowGuestAsset:allowGuestAsset])
    {
      if (v294[24])
      {
        v294[24] = 1;
LABEL_62:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v298 = 67109378;
          *v299 = 287;
          *&v299[4] = 2080;
          *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
          v48 = MEMORY[0x277D86220];
          goto LABEL_64;
        }

LABEL_65:
        v16 = 0;
LABEL_66:

LABEL_67:
LABEL_68:

        goto LABEL_69;
      }

LABEL_61:
      v49 = [v249 isCancelledWithProgress:1.0];
      v294[24] = v49;
      if ((v49 & 1) == 0)
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *v298 = 138412290;
          *v299 = memoryCopy;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] No viable key asset found, returning nil enrichedMemory for %@", v298, 0xCu);
        }

        if (debugCopy)
        {
          [(PGEnrichedMemory *)v15 setFailureReason:3];
          v16 = v15;
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      goto LABEL_62;
    }

    uuid = [v254 uuid];
    [(PGEnrichedMemory *)v15 setKeyAssetUUID:uuid];

    v245 = mach_absolute_time();
    v53 = v291.numer;
    v52 = v291.denom;
    v54 = v252;
    v55 = v54;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *v298 = 138412290;
      *v299 = v262;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_END, v44, "KeyAsset", "%@", v298, 0xCu);
    }

    v56 = v55;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v262 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
      *v298 = 136315650;
      *v299 = "KeyAsset";
      *&v299[8] = 2112;
      *&v299[10] = v262;
      *&v299[18] = 2048;
      v300 = ((((v245 - v247) * v53) / v52) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
    }

    v248 = [v267 uuidsOfRequiredAssetsWithKeyAsset:v254 triggeredMemory:memoryCopy inGraph:self->_graph progressReporter:v249];
    v58 = self->_loggingConnection;
    v59 = os_signpost_id_generate(v58);
    v60 = v58;
    v61 = v60;
    v237 = v59 - 1;
    if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
    {
      *v298 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v61, OS_SIGNPOST_INTERVAL_BEGIN, v59, "ExtendedCuratedAsset", "", v298, 2u);
    }

    spid = v59;
    v246 = v61;

    v287 = 0;
    mach_timebase_info(&v287);
    v234 = mach_absolute_time();
    context = objc_autoreleasePoolPush();
    v62 = [v267 extendedCurationOptionsWithRequiredAssetUUIDs:v248 triggeredMemory:memoryCopy];
    v284[0] = MEMORY[0x277D85DD0];
    v284[1] = 3221225472;
    v284[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_262;
    v284[3] = &unk_278889448;
    v286 = buf;
    log = v249;
    v285 = log;
    v63 = [(PGEnrichedMemoryFactory *)self _extendedCuratedAssetsWithFeeder:v256 options:v62 progressBlock:v284];
    v241 = v62;
    v64 = v294[24];
    if (v64 == 1)
    {
      v65 = MEMORY[0x277D86220];
      v66 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 316;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

      v250 = 0;
    }

    else
    {
      v65 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v63];
      v250 = [v267 extendedCurationOptionsWithRequiredAssetUUIDs:v65 triggeredMemory:memoryCopy];
    }

    objc_autoreleasePoolPop(context);
    if (v64)
    {
      goto LABEL_98;
    }

    if (v294[24])
    {
      v294[24] = 1;
      goto LABEL_96;
    }

    v68 = [log isCancelledWithProgress:0.3];
    v294[24] = v68;
    if (v68)
    {
LABEL_96:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 323;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

LABEL_98:
      v16 = 0;
LABEL_99:

      goto LABEL_66;
    }

    v69 = objc_autoreleasePoolPush();
    v281[0] = MEMORY[0x277D85DD0];
    v281[1] = 3221225472;
    v281[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_264;
    v281[3] = &unk_278889448;
    v283 = buf;
    v228 = log;
    v282 = v228;
    contexta = [(PGEnrichedMemoryFactory *)self _extendedCuratedAssetsWithFeeder:v260 options:v250 progressBlock:v281];
    v70 = v294[24];
    if (v70 == 1)
    {
      v71 = MEMORY[0x277D86220];
      v72 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 331;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v69);
    if (v70)
    {
      v16 = 0;
LABEL_128:

      goto LABEL_99;
    }

    v242 = [PGMemoryGenerationHelper assetUUIDsFromAssets:contexta];
    allObjects = [v242 allObjects];
    [(PGEnrichedMemory *)v15 setExtendedCuratedAssetUUIDs:allObjects];

    v74 = mach_absolute_time();
    v75 = v287.numer;
    v76 = v287.denom;
    v77 = v246;
    v78 = v77;
    if (v237 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
    {
      *v298 = 138412290;
      *v299 = v262;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v78, OS_SIGNPOST_INTERVAL_END, spid, "ExtendedCuratedAsset", "%@", v298, 0xCu);
    }

    v79 = v78;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
      v81 = v80 = (((v74 - v234) * v75) / v76) / 1000000.0;
      *v298 = 136315650;
      *v299 = "ExtendedCuratedAsset";
      *&v299[8] = 2112;
      *&v299[10] = v81;
      *&v299[18] = 2048;
      v300 = v80;
      _os_log_impl(&dword_22F0FC000, v79, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
    }

    v82 = self->_loggingConnection;
    v83 = os_signpost_id_generate(v82);
    loga = v82;
    v235 = v83;
    v84 = v83 - 1;
    if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(loga))
    {
      *v298 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, loga, OS_SIGNPOST_INTERVAL_BEGIN, v83, "CuratedAsset", "", v298, 2u);
    }

    v280 = 0;
    mach_timebase_info(&v280);
    spida = mach_absolute_time();
    v238 = [v267 curationOptionsWithRequiredAssetUUIDs:v248 eligibleAssetUUIDs:v242 triggeredMemory:memoryCopy];
    if (v294[24])
    {
      v294[24] = 1;
LABEL_117:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 344;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

      v16 = 0;
      goto LABEL_127;
    }

    v85 = [v228 isCancelledWithProgress:0.3];
    v294[24] = v85;
    if (v85)
    {
      goto LABEL_117;
    }

    v225 = objc_autoreleasePoolPush();
    v277[0] = MEMORY[0x277D85DD0];
    v277[1] = 3221225472;
    v277[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_266;
    v277[3] = &unk_278889448;
    v279 = buf;
    v223 = v228;
    v278 = v223;
    v229 = [(PGEnrichedMemoryFactory *)self _curatedAssetsWithFeeder:v256 options:v238 progressBlock:v277];
    v86 = v294[24];
    if (v86 == 1)
    {
      v87 = MEMORY[0x277D86220];
      v88 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 353;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v225);
    if (v86)
    {
      goto LABEL_125;
    }

    v89 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v229];
    allObjects2 = [v89 allObjects];
    [(PGEnrichedMemory *)v15 setCuratedAssetUUIDs:allObjects2];

    v91 = mach_absolute_time();
    v92 = v280.numer;
    v93 = v280.denom;
    v94 = loga;
    v95 = v94;
    if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
    {
      *v298 = 138412290;
      *v299 = v262;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v95, OS_SIGNPOST_INTERVAL_END, v235, "CuratedAsset", "%@", v298, 0xCu);
    }

    v96 = v95;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      v2622 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
      *v298 = 136315650;
      *v299 = "CuratedAsset";
      *&v299[8] = 2112;
      *&v299[10] = v2622;
      *&v299[18] = 2048;
      v300 = ((((v91 - spida) * v92) / v93) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
    }

    v98 = [v229 count];
    minimumNumberOfCuratedAssets = [configurationCopy minimumNumberOfCuratedAssets];
    v100 = minimumNumberOfCuratedAssets;
    if (v98 < minimumNumberOfCuratedAssets)
    {
      if (v294[24])
      {
        v294[24] = 1;
LABEL_141:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_125:
          v16 = 0;
LABEL_126:

LABEL_127:
          goto LABEL_128;
        }

        *v298 = 67109378;
        *v299 = 363;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v105 = MEMORY[0x277D86220];
LABEL_143:
        _os_log_impl(&dword_22F0FC000, v105, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
        goto LABEL_125;
      }

      v104 = [v223 isCancelledWithProgress:1.0];
      v294[24] = v104;
      if (v104)
      {
        goto LABEL_141;
      }

      v132 = self->_loggingConnection;
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        *v298 = 67109634;
        *v299 = v98;
        *&v299[4] = 1024;
        *&v299[6] = v100;
        *&v299[10] = 2112;
        *&v299[12] = memoryCopy;
        _os_log_impl(&dword_22F0FC000, v132, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] Not enough curated assets, found %d but require at least %d, returning nil enrichedMemory for %@", v298, 0x18u);
      }

      if (!debugCopy)
      {
        goto LABEL_125;
      }

      [(PGEnrichedMemory *)v15 setFailureReason:4];
LABEL_174:
      v16 = v15;
      goto LABEL_126;
    }

    if (allowGuestAsset)
    {
      v101 = [(PGEnrichedMemoryFactory *)self _numberOfGuestAssetInAssets:v229];
      [configurationCopy maximumRatioOfGuestAssets];
      v102 = v101 / v98;
      if (v102 > v103)
      {
        if (v294[24])
        {
          v294[24] = 1;
        }

        else
        {
          v133 = [v223 isCancelledWithProgress:1.0];
          v294[24] = v133;
          if ((v133 & 1) == 0)
          {
            v137 = self->_loggingConnection;
            if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
            {
              *v298 = 138412802;
              *v299 = memoryCopy;
              *&v299[8] = 2048;
              *&v299[10] = v101;
              *&v299[18] = 2048;
              *&v300 = (v102 * v98);
              _os_log_impl(&dword_22F0FC000, v137, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] Too many guest assets featured for %@: %lu > %lu", v298, 0x20u);
            }

            if (!debugCopy)
            {
              goto LABEL_125;
            }

            [(PGEnrichedMemory *)v15 setFailureReason:5];
            goto LABEL_174;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_125;
        }

        *v298 = 67109378;
        *v299 = 378;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        v105 = MEMORY[0x277D86220];
        goto LABEL_143;
      }

      [(PGEnrichedMemory *)v15 setFeaturesGuestAssets:v101 != 0];
    }

    else
    {
      [(PGEnrichedMemory *)v15 setFeaturesGuestAssets:0];
    }

    v106 = self->_loggingConnection;
    v107 = os_signpost_id_generate(v106);
    v259 = v106;
    spidb = v107;
    v108 = v107 - 1;
    if (v108 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v259))
    {
      *v298 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v259, OS_SIGNPOST_INTERVAL_BEGIN, spidb, "RepresentativeAssets", "", v298, 2u);
    }

    v276 = 0;
    mach_timebase_info(&v276);
    v226 = mach_absolute_time();
    allItems = [v260 allItems];
    v273[0] = MEMORY[0x277D85DD0];
    v273[1] = 3221225472;
    v273[2] = __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_269;
    v273[3] = &unk_278889448;
    v275 = buf;
    v224 = v223;
    v274 = v224;
    v236 = [PGCurationManager representativeAssetsForAssets:allItems extendedCuratedAssets:contexta progressBlock:v273];

    if (v294[24] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 399;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

      v16 = 0;
      goto LABEL_216;
    }

    v110 = [PGMemoryGenerationHelper assetUUIDsFromAssets:v236];
    allObjects3 = [v110 allObjects];
    [(PGEnrichedMemory *)v15 setRepresentativeAssetUUIDs:allObjects3];

    v112 = mach_absolute_time();
    v113 = v276.numer;
    v114 = v276.denom;
    v115 = v259;
    v116 = v115;
    if (v108 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
    {
      *v298 = 138412290;
      *v299 = v262;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v116, OS_SIGNPOST_INTERVAL_END, spidb, "RepresentativeAssets", "%@", v298, 0xCu);
    }

    v117 = v116;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v2623 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
      *v298 = 136315650;
      *v299 = "RepresentativeAssets";
      *&v299[8] = 2112;
      *&v299[10] = v2623;
      *&v299[18] = 2048;
      v300 = ((((v112 - v226) * v113) / v114) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v117, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
    }

    v119 = self->_loggingConnection;
    v120 = os_signpost_id_generate(v119);
    v227 = v119;
    v218 = v120;
    v121 = v120 - 1;
    if (v120 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
    {
      *v298 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v227, OS_SIGNPOST_INTERVAL_BEGIN, v120, "TitleGeneration", "", v298, 2u);
    }

    v272 = 0;
    mach_timebase_info(&v272);
    v213 = mach_absolute_time();
    spidc = [v267 titleGeneratorForTriggeredMemory:memoryCopy withKeyAsset:v254 curatedAssets:v229 extendedCuratedAssets:contexta titleGenerationContext:self->_titleGenerationContext inGraph:self->_graph];
    if (spidc)
    {
      title = [spidc title];
      stringValue = [title stringValue];
      v222 = [stringValue stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

      if ([v222 length])
      {
        [(PGEnrichedMemory *)v15 setTitle:v222];
        subtitle = [spidc subtitle];
        stringValue2 = [subtitle stringValue];
        [(PGEnrichedMemory *)v15 setSubtitle:stringValue2];

        subtitle2 = [(PGEnrichedMemory *)v15 subtitle];
        v125 = [subtitle2 length] == 0;

        if (v125)
        {
          if (v294[24])
          {
            v294[24] = 1;
          }

          else
          {
            v145 = [v224 isCancelledWithProgress:1.0];
            v294[24] = v145;
            if ((v145 & 1) == 0)
            {
              v161 = self->_loggingConnection;
              if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
              {
                *v298 = 138412290;
                *v299 = memoryCopy;
                _os_log_error_impl(&dword_22F0FC000, v161, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] No subtitle generated, returning nil enrichedMemory for %@", v298, 0xCu);
              }

              if (debugCopy)
              {
                [(PGEnrichedMemory *)v15 setFailureReason:8];
                v16 = v15;
                goto LABEL_213;
              }

LABEL_212:
              v16 = 0;
LABEL_213:

              goto LABEL_214;
            }
          }

          v146 = MEMORY[0x277D86220];
          v147 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
          {
            *v298 = 67109378;
            *v299 = 437;
            *&v299[4] = 2080;
            *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
          }

LABEL_211:

          goto LABEL_212;
        }

        -[PGEnrichedMemory setTitleCategory:](v15, "setTitleCategory:", [title category]);
        v264 = mach_absolute_time();
        v126 = v272.numer;
        v127 = v272.denom;
        v128 = v227;
        v129 = v128;
        if (v121 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v128))
        {
          *v298 = 138412290;
          *v299 = v262;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v129, OS_SIGNPOST_INTERVAL_END, v218, "TitleGeneration", "%@", v298, 0xCu);
        }

        v130 = v129;
        if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
        {
          v2624 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
          *v298 = 136315650;
          *v299 = "TitleGeneration";
          *&v299[8] = 2112;
          *&v299[10] = v2624;
          *&v299[18] = 2048;
          v300 = ((((v264 - v213) * v126) / v127) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v130, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
        }

        if (v294[24])
        {
          v294[24] = 1;
          goto LABEL_196;
        }

        v138 = [v224 isCancelledWithProgress:0.5];
        v294[24] = v138;
        if (v138)
        {
LABEL_196:
          v139 = MEMORY[0x277D86220];
          v140 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
          {
            *v298 = 67109378;
            *v299 = 448;
            *&v299[4] = 2080;
            *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
          }

          goto LABEL_211;
        }

        v148 = self->_loggingConnection;
        v149 = os_signpost_id_generate(v148);
        v150 = v148;
        v151 = v150;
        v219 = v149;
        v152 = v149 - 1;
        if (v152 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v150))
        {
          *v298 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v151, OS_SIGNPOST_INTERVAL_BEGIN, v219, "ChapterTitleGeneration", "", v298, 2u);
        }

        v271 = 0;
        mach_timebase_info(&v271);
        v214 = mach_absolute_time();
        v265 = [v267 chapterTitleGeneratorForTriggeredMemory:memoryCopy curatedAssets:v229 extendedCuratedAssets:contexta titleGenerationContext:self->_titleGenerationContext inGraph:self->_graph];
        if (v265)
        {
          generateChapterTitles = [v265 generateChapterTitles];
          [(PGEnrichedMemory *)v15 setChapterTitles:generateChapterTitles];
        }

        v154 = mach_absolute_time();
        v155 = v271.numer;
        v156 = v271.denom;
        v157 = v151;
        v158 = v157;
        if (v152 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v157))
        {
          *v298 = 138412290;
          *v299 = v262;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v158, OS_SIGNPOST_INTERVAL_END, v219, "ChapterTitleGeneration", "%@", v298, 0xCu);
        }

        v220 = v158;
        if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
        {
          v2625 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
          *v298 = 136315650;
          *v299 = "ChapterTitleGeneration";
          *&v299[8] = 2112;
          *&v299[10] = v2625;
          *&v299[18] = 2048;
          v300 = ((((v154 - v214) * v155) / v156) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v220, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
        }

        if (v294[24])
        {
          v294[24] = 1;
LABEL_238:
          v163 = MEMORY[0x277D86220];
          v164 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
          {
LABEL_241:
            v16 = 0;
LABEL_242:

            goto LABEL_213;
          }

          *v298 = 67109378;
          *v299 = 457;
          *&v299[4] = 2080;
          *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
LABEL_240:
          _os_log_impl(&dword_22F0FC000, v163, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
          goto LABEL_241;
        }

        v162 = [v224 isCancelledWithProgress:0.55];
        v294[24] = v162;
        if (v162)
        {
          goto LABEL_238;
        }

        v165 = objc_opt_class();
        localDate = [configurationCopy localDate];
        -[PGEnrichedMemory setNotificationLevel:](v15, "setNotificationLevel:", [v165 notificationLevelForTriggeredMemory:memoryCopy withLocalDate:localDate graph:self->_graph]);

        v167 = objc_opt_class();
        notificationLevel = [(PGEnrichedMemory *)v15 notificationLevel];
        [(PGEnrichedMemory *)v15 electionScore];
        [v167 notificationScoreForNotificationLevel:notificationLevel electionScore:?];
        [(PGEnrichedMemory *)v15 setScore:?];
        if (v294[24])
        {
          v294[24] = 1;
LABEL_246:
          v163 = MEMORY[0x277D86220];
          v170 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
          {
            goto LABEL_241;
          }

          *v298 = 67109378;
          *v299 = 463;
          *&v299[4] = 2080;
          *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
          goto LABEL_240;
        }

        v169 = [v224 isCancelledWithProgress:0.6];
        v294[24] = v169;
        if (v169)
        {
          goto LABEL_246;
        }

        v171 = self->_loggingConnection;
        v172 = os_signpost_id_generate(v171);
        v173 = v171;
        v174 = v173;
        if (v172 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v173))
        {
          *v298 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v174, OS_SIGNPOST_INTERVAL_BEGIN, v172, "MoodGenerator", "", v298, 2u);
        }

        v270 = 0;
        mach_timebase_info(&v270);
        v215 = mach_absolute_time();
        [v267 generateMoodForEnrichedMemory:v15 extendedCuratedAssets:contexta configuration:configurationCopy inGraph:self->_graph];
        v211 = mach_absolute_time();
        v175 = v270;
        v176 = v174;
        v177 = v176;
        if (v172 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v176))
        {
          *v298 = 138412290;
          *v299 = v262;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v177, OS_SIGNPOST_INTERVAL_END, v172, "MoodGenerator", "%@", v298, 0xCu);
        }

        v163 = v177;
        if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
        {
          v2626 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
          *v298 = 136315650;
          *v299 = "MoodGenerator";
          *&v299[8] = 2112;
          *&v299[10] = v2626;
          *&v299[18] = 2048;
          v300 = ((((v211 - v215) * v175.numer) / v175.denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v163, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
        }

        if (v294[24])
        {
          v294[24] = 1;
          goto LABEL_259;
        }

        v179 = [v224 isCancelledWithProgress:0.7];
        v294[24] = v179;
        if (v179)
        {
LABEL_259:
          v180 = MEMORY[0x277D86220];
          v181 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
          {
            *v298 = 67109378;
            *v299 = 470;
            *&v299[4] = 2080;
            *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
            _os_log_impl(&dword_22F0FC000, v180, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
          }

          goto LABEL_275;
        }

        v182 = self->_loggingConnection;
        v183 = os_signpost_id_generate(v182);
        v216 = v182;
        v208 = v183;
        v209 = v183 - 1;
        if (v183 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v216))
        {
          *v298 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v216, OS_SIGNPOST_INTERVAL_BEGIN, v183, "MoodKeywordComputer", "", v298, 2u);
        }

        v269 = 0;
        mach_timebase_info(&v269);
        v207 = mach_absolute_time();
        moodKeywordComputer = self->_moodKeywordComputer;
        suggestedMood = [(PGEnrichedMemory *)v15 suggestedMood];
        graph = self->_graph;
        locationHelper = [(PGMemoryCurationSession *)self->_memoryCurationSession locationHelper];
        v186 = [(PGMoodKeywordComputer *)moodKeywordComputer moodKeywordsForTriggeredMemory:memoryCopy suggestedMood:suggestedMood inGraph:graph locationHelper:locationHelper];
        [(PGEnrichedMemory *)v15 setLegacyMoodKeywords:v186];

        v187 = mach_absolute_time();
        v188 = v269;
        v189 = v216;
        v190 = v189;
        if (v209 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v189))
        {
          *v298 = 138412290;
          *v299 = v262;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v190, OS_SIGNPOST_INTERVAL_END, v208, "MoodKeywordComputer", "%@", v298, 0xCu);
        }

        v180 = v190;
        if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
          v192 = v191 = (((v187 - v207) * v188.numer) / v188.denom) / 1000000.0;
          *v298 = 136315650;
          *v299 = "MoodKeywordComputer";
          *&v299[8] = 2112;
          *&v299[10] = v192;
          *&v299[18] = 2048;
          v300 = v191;
          _os_log_impl(&dword_22F0FC000, v180, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
        }

        if (v294[24])
        {
          v294[24] = 1;
        }

        else
        {
          v193 = [v224 isCancelledWithProgress:0.8];
          v294[24] = v193;
          if ((v193 & 1) == 0)
          {
            v196 = mach_absolute_time();
            v198 = info.numer;
            v197 = info.denom;
            v199 = v14;
            v200 = v199;
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v199))
            {
              *v298 = 138412290;
              *v299 = v262;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v200, OS_SIGNPOST_INTERVAL_END, v12, "MemoryElectionEnrichment", "%@", v298, 0xCu);
            }

            v201 = v200;
            if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v262];
              v203 = v202 = (((v196 - v261) * v198) / v197) / 1000000.0;
              *v298 = 136315650;
              *v299 = "MemoryElectionEnrichment";
              *&v299[8] = 2112;
              *&v299[10] = v203;
              *&v299[18] = 2048;
              v300 = v202;
              _os_log_impl(&dword_22F0FC000, v201, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v298, 0x20u);
            }

            if (v294[24])
            {
              v294[24] = 1;
            }

            else
            {
              v204 = [v224 isCancelledWithProgress:1.0];
              v294[24] = v204;
              if ((v204 & 1) == 0)
              {
                v16 = v15;
                goto LABEL_276;
              }
            }

            v205 = MEMORY[0x277D86220];
            v206 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v205, OS_LOG_TYPE_INFO))
            {
              *v298 = 67109378;
              *v299 = 480;
              *&v299[4] = 2080;
              *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
            }

            goto LABEL_274;
          }
        }

        v194 = MEMORY[0x277D86220];
        v195 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
        {
          *v298 = 67109378;
          *v299 = 477;
          *&v299[4] = 2080;
          *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
        }

LABEL_274:

LABEL_275:
        v16 = 0;
LABEL_276:

        goto LABEL_242;
      }

      if (v294[24])
      {
        v294[24] = 1;
      }

      else
      {
        v141 = [v224 isCancelledWithProgress:1.0];
        v294[24] = v141;
        if ((v141 & 1) == 0)
        {
          v160 = self->_loggingConnection;
          if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
          {
            *v298 = 138412290;
            *v299 = memoryCopy;
            _os_log_error_impl(&dword_22F0FC000, v160, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] No title generated, returning nil enrichedMemory for %@", v298, 0xCu);
          }

          if (debugCopy)
          {
            [(PGEnrichedMemory *)v15 setFailureReason:7];
            v16 = v15;
            goto LABEL_214;
          }

          goto LABEL_203;
        }
      }

      v142 = MEMORY[0x277D86220];
      v143 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
      {
        *v298 = 67109378;
        *v299 = 423;
        *&v299[4] = 2080;
        *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
      }

LABEL_203:
      v16 = 0;
LABEL_214:

      goto LABEL_215;
    }

    if (v294[24])
    {
      v294[24] = 1;
    }

    else
    {
      v134 = [v224 isCancelledWithProgress:1.0];
      v294[24] = v134;
      if ((v134 & 1) == 0)
      {
        v144 = self->_loggingConnection;
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          *v298 = 138412290;
          *v299 = memoryCopy;
          _os_log_impl(&dword_22F0FC000, v144, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] Nil titleGenerator, returning nil enrichedMemory for %@", v298, 0xCu);
        }

        if (debugCopy)
        {
          [(PGEnrichedMemory *)v15 setFailureReason:6];
          v16 = v15;
          goto LABEL_215;
        }

LABEL_188:
        v16 = 0;
LABEL_215:

LABEL_216:
        goto LABEL_126;
      }
    }

    v135 = MEMORY[0x277D86220];
    v136 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
    {
      *v298 = 67109378;
      *v299 = 409;
      *&v299[4] = 2080;
      *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
    }

    goto LABEL_188;
  }

  if (v294[24])
  {
    v294[24] = 1;
LABEL_23:
    v28 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v298 = 67109378;
      *v299 = 245;
      *&v299[4] = 2080;
      *&v299[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGEnrichedMemoryFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v298, 0x12u);
    }

    v16 = 0;
    goto LABEL_70;
  }

  v27 = [v266 isCancelledWithProgress:1.0];
  v294[24] = v27;
  if (v27)
  {
    goto LABEL_23;
  }

  v29 = self->_loggingConnection;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    *v298 = 138412290;
    *v299 = v31;
    _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEFAULT, "[PGEnrichedMemoryFactory] nil feeder for triggered memory from enricher %@", v298, 0xCu);
  }

  if (debugCopy)
  {
    [(PGEnrichedMemory *)v15 setFailureReason:2];
    v16 = v15;
    goto LABEL_69;
  }

LABEL_21:
  v16 = 0;
LABEL_69:
  v28 = v260;
LABEL_70:

LABEL_71:
  _Block_object_dispose(buf, 8);

LABEL_72:

  return v16;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.15];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_262(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.2];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_264(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.25];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_266(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.05 + 0.3];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __102__PGEnrichedMemoryFactory_enrichedMemoryWithTriggeredMemory_withConfiguration_progressReporter_debug___block_invoke_269(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.1 + 0.4];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)debugEnrichedMemoryWithTriggeredMemory:(id)memory withConfiguration:(id)configuration progressReporter:(id)reporter
{
  memoryCopy = memory;
  v9 = [(PGEnrichedMemoryFactory *)self enrichedMemoryWithTriggeredMemory:memoryCopy withConfiguration:configuration progressReporter:reporter debug:1];
  if (!v9)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGEnrichedMemoryFactory] A non nil enrichedMemory with a failure reason should be specified when enriching triggered memory if debug = YES", v12, 2u);
    }

    v9 = [[PGEnrichedMemory alloc] initWithTriggeredMemory:memoryCopy];
    [(PGEnrichedMemory *)v9 setFailureReason:1];
  }

  return v9;
}

- (id)_memoryEnricherFromTriggeredMemory:(id)memory
{
  v14 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v5 = [[PGMemoryGenerator alloc] initWithMemoryCurationSession:self->_memoryCurationSession loggingConnection:self->_loggingConnection];
  memoryCategory = [memoryCopy memoryCategory];
  if (memoryCategory > 200)
  {
    if ((memoryCategory - 201) < 0x15 || (memoryCategory - 301) < 2 || memoryCategory == 401)
    {
LABEL_5:
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v9 = loggingConnection;
        v12 = 134217984;
        memoryCategory2 = [memoryCopy memoryCategory];
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "+[PGEnrichedMemoryFactory memoryGeneratorClassFromTriggeredMemory:] is not compatible with legacy category: %lu", &v12, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    switch(memoryCategory)
    {
      case 1:
        v7 = PGSingleMomentMemoryGenerator;
        goto LABEL_38;
      case 2:
      case 5:
      case 11:
        goto LABEL_5;
      case 3:
        v7 = PGPersonMemoryGenerator;
        goto LABEL_38;
      case 4:
        v7 = PGEarlyMomentsWithPeopleMemoryGenerator;
        goto LABEL_38;
      case 6:
        v7 = PGSocialGroupMemoryGenerator;
        goto LABEL_38;
      case 7:
        v7 = PGLastMonthAtHomeMemoryGenerator;
        goto LABEL_38;
      case 8:
        v7 = PGYearInReviewMemoryGenerator;
        goto LABEL_38;
      case 9:
        v7 = PGFoodieMemoryGenerator;
        goto LABEL_38;
      case 10:
        v7 = PGMyPetMemoryGenerator;
        goto LABEL_38;
      case 12:
        v7 = PGPlaceLocationMemoryGenerator;
        goto LABEL_38;
      case 13:
        v7 = PGPlaceRegionMemoryGenerator;
        goto LABEL_38;
      case 14:
        v7 = PGPlaceAreaMemoryGenerator;
        goto LABEL_38;
      case 15:
      case 22:
        break;
      case 16:
        v7 = PGMeaningfulEventMemoryGenerator;
        goto LABEL_38;
      case 17:
        v7 = PGMeaningAggregationMemoryGenerator;
        goto LABEL_38;
      case 18:
        v7 = PGRecurrentTripMemoryGenerator;
        goto LABEL_38;
      case 19:
        v7 = PGTripMemoryGenerator;
        goto LABEL_38;
      case 20:
        v7 = PGPastSupersetMemoryGenerator;
        goto LABEL_38;
      case 21:
        v7 = PGSeasonMemoryGenerator;
        goto LABEL_38;
      case 23:
        v7 = PGDayInHistoryAggregationMemoryGenerator;
        goto LABEL_38;
      case 24:
        v7 = PGRecentHighlightsMemoryGenerator;
        goto LABEL_38;
      case 25:
        v7 = PGChildActivityMemoryGenerator;
        goto LABEL_38;
      case 26:
        v7 = PGExcitingMomentsMemoryGenerator;
        goto LABEL_38;
      case 27:
        v7 = PGTrendsMemoryGenerator;
        goto LABEL_38;
      case 28:
        v7 = PGMyPetOutdoorMemoryGenerator;
        goto LABEL_38;
      case 29:
        v7 = PGChildAndPersonMemoryGenerator;
        goto LABEL_38;
      case 30:
        v7 = PGChildOutdoorMemoryGenerator;
        goto LABEL_38;
      case 31:
        v7 = PGOngoingTripMemoryGenerator;
LABEL_38:
        v10 = [[v7 alloc] initWithMemoryCurationSession:self->_memoryCurationSession loggingConnection:self->_loggingConnection];

        v5 = v10;
        break;
      default:
        if ((memoryCategory - 101) < 2)
        {
          goto LABEL_5;
        }

        break;
    }
  }

  return v5;
}

- (PGEnrichedMemoryFactory)initWithMemoryCurationSession:(id)session graph:(id)graph serviceManager:(id)manager
{
  sessionCopy = session;
  graphCopy = graph;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = PGEnrichedMemoryFactory;
  v12 = [(PGEnrichedMemoryFactory *)&v20 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.PhotosGraph", "EnrichedMemoryFactory");
    loggingConnection = v12->_loggingConnection;
    v12->_loggingConnection = v13;

    objc_storeStrong(&v12->_memoryCurationSession, session);
    v15 = objc_alloc_init(PGMoodKeywordComputer);
    moodKeywordComputer = v12->_moodKeywordComputer;
    v12->_moodKeywordComputer = v15;

    v17 = [[PGTitleGenerationContext alloc] initWithGraph:graphCopy serviceManager:managerCopy];
    titleGenerationContext = v12->_titleGenerationContext;
    v12->_titleGenerationContext = v17;

    objc_storeStrong(&v12->_graph, graph);
  }

  return v12;
}

@end