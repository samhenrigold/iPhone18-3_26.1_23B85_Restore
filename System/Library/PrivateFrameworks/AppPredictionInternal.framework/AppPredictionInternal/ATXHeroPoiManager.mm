@interface ATXHeroPoiManager
- (id)cachedPoiCategory;
- (id)currentPoiCategory;
- (id)mostRecentHighestRankedPoiCategory:(id)category;
- (id)poiCategoryEventsWithStreamPublisher:(id)publisher;
- (id)poiCategoryPublisherBookmark;
- (id)poiCategoryStream;
- (id)poiCategoryStreamPublisher;
- (void)donateHeroPoiPredictions:(id)predictions;
- (void)donatePoiCategoryToBiome:(id)biome rank:(unint64_t)rank date:(id)date;
- (void)logCompletion:(id)completion;
@end

@implementation ATXHeroPoiManager

- (id)currentPoiCategory
{
  v16 = *MEMORY[0x277D85DE8];
  poiCategoryStreamPublisher = [(ATXHeroPoiManager *)self poiCategoryStreamPublisher];
  v4 = [(ATXHeroPoiManager *)self poiCategoryEventsWithStreamPublisher:poiCategoryStreamPublisher];
  cachedPoiCategory = [(ATXHeroPoiManager *)self cachedPoiCategory];
  if ([v4 count])
  {
    v6 = [(ATXHeroPoiManager *)self mostRecentHighestRankedPoiCategory:v4];

    v7 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = [v7 initWithSuiteName:*MEMORY[0x277D41CF0]];
    [v8 setObject:v6 forKey:@"currentPoiCategory"];
    v9 = v6;
  }

  else
  {
    v10 = __atxlog_handle_hero(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = 14400;
      v14 = 2112;
      v15 = cachedPoiCategory;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "No new POI category received from poiCategory stream since the last saved bookmark within the past %lu seconds, returning cached POI category: %@", &v12, 0x16u);
    }

    v9 = cachedPoiCategory;
  }

  return v9;
}

- (id)poiCategoryStreamPublisher
{
  v3 = CFAbsoluteTimeGetCurrent() + -14400.0;
  poiCategoryStream = [(ATXHeroPoiManager *)self poiCategoryStream];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v6 = [poiCategoryStream atx_publisherFromStartTime:v5];

  return v6;
}

- (id)poiCategoryStream
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_poiCategoryStream && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v3 = BiomeLibrary();
    location = [v3 Location];
    pointOfInterest = [location PointOfInterest];
    category = [pointOfInterest Category];
    poiCategoryStream = selfCopy->_poiCategoryStream;
    selfCopy->_poiCategoryStream = category;
  }

  v8 = selfCopy->_poiCategoryStream;
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)poiCategoryPublisherBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"poiCategoryPublisherBookmarkURL"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = MEMORY[0x277CEBBF8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v7 = [v5 bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:v6];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CEBBF8]);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v7 = [v8 initWithURLPath:v4 versionNumber:v9 bookmark:0 metadata:0];
  }

  return v7;
}

- (id)cachedPoiCategory
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D41CF0]];
  defaultHeroPOICategory = [v3 objectForKey:@"currentPoiCategory"];
  if (!defaultHeroPOICategory)
  {
    v5 = +[ATXHeroAndClipConstants sharedInstance];
    defaultHeroPOICategory = [v5 defaultHeroPOICategory];
  }

  return defaultHeroPOICategory;
}

- (void)donateHeroPoiPredictions:(id)predictions
{
  v27 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v5 = __atxlog_handle_hero(predictionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134217984;
    v26 = COERCE_DOUBLE([predictionsCopy count]);
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Received %lu Hero POI predictions.", &v25, 0xCu);
  }

  v6 = objc_opt_new();
  if ([predictionsCopy count])
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    getCurrentPreciseLocation = [mEMORY[0x277D41BF8] getCurrentPreciseLocation];

    v11 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSinceNow];
      v25 = 134217984;
      v26 = -v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Took %f seconds to fetch precise location", &v25, 0xCu);
    }

    if (getCurrentPreciseLocation)
    {
      v14 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:predictionsCopy currentLocation:getCurrentPreciseLocation];

      predictionsCopy = __atxlog_handle_hero(v15);
      if (os_log_type_enabled(predictionsCopy, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 count];
        v25 = 134217984;
        v26 = *&v16;
        _os_log_impl(&dword_2263AA000, predictionsCopy, OS_LOG_TYPE_DEFAULT, "Left with %lu hero poi predictions after removing predictions based on gps location.", &v25, 0xCu);
      }
    }

    else
    {
      v17 = __atxlog_handle_hero(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroAppManager donateHeroAppPredictions:v17];
      }

      v14 = objc_opt_new();
    }

    predictionsCopy = v14;
  }

  if ([predictionsCopy count])
  {
    if ([predictionsCopy count])
    {
      v18 = 0;
      do
      {
        v19 = [predictionsCopy objectAtIndexedSubscript:v18];
        poiCategory = [v19 poiCategory];

        if ([poiCategory length])
        {
          [(ATXHeroPoiManager *)self donatePoiCategoryToBiome:poiCategory rank:v18 date:v6];
        }

        else
        {
          v21 = __atxlog_handle_hero(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [(ATXHeroPoiManager *)&v25 donateHeroPoiPredictions:v21];
          }
        }

        ++v18;
      }

      while (v18 < [predictionsCopy count]);
    }
  }

  else
  {
    v22 = __atxlog_handle_hero(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Hero POI predictions count is zero. Donating ATXDefaultHeroPOICategory to Biome", &v25, 2u);
    }

    v23 = +[ATXHeroAndClipConstants sharedInstance];
    defaultHeroPOICategory = [v23 defaultHeroPOICategory];
    [(ATXHeroPoiManager *)self donatePoiCategoryToBiome:defaultHeroPOICategory rank:0 date:v6];
  }
}

- (void)donatePoiCategoryToBiome:(id)biome rank:(unint64_t)rank date:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CF12C0];
  dateCopy = date;
  biomeCopy = biome;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rank];
  v13 = [v11 initWithPoiCategory:biomeCopy rank:v12 timestamp:dateCopy];

  v15 = __atxlog_handle_hero(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Sending event to Biome: %@.", &v18, 0xCu);
  }

  poiCategoryStream = [(ATXHeroPoiManager *)self poiCategoryStream];
  source = [poiCategoryStream source];
  [source sendEvent:v13];
}

- (void)logCompletion:(id)completion
{
  completionCopy = completion;
  state = [completionCopy state];
  if (state)
  {
    v5 = __atxlog_handle_hero(state);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeroPoiManager *)completionCopy logCompletion:v5];
    }
  }
}

- (id)mostRecentHighestRankedPoiCategory:(id)category
{
  categoryCopy = category;
  lastObject = [categoryCopy lastObject];
  eventBody = [lastObject eventBody];
  timestamp = [eventBody timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = +[ATXHeroAndClipConstants sharedInstance];
  defaultHeroPOICategory = [v9 defaultHeroPOICategory];

  v11 = [categoryCopy count];
  if (v11 >= 1)
  {
    v12 = v11 + 1;
    while (1)
    {
      v13 = [categoryCopy objectAtIndex:v12 - 2];
      eventBody2 = [v13 eventBody];
      timestamp2 = [eventBody2 timestamp];
      [timestamp2 timeIntervalSinceReferenceDate];
      v17 = v16;

      if (v17 < v8)
      {
        break;
      }

      eventBody3 = [v13 eventBody];
      rank = [eventBody3 rank];

      if (!rank)
      {
        eventBody4 = [v13 eventBody];
        poiCategory = [eventBody4 poiCategory];

        defaultHeroPOICategory = poiCategory;
        break;
      }

      if (--v12 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:

  return defaultHeroPOICategory;
}

- (id)poiCategoryEventsWithStreamPublisher:(id)publisher
{
  publisherCopy = publisher;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__84;
  v23 = __Block_byref_object_dispose__84;
  poiCategoryPublisherBookmark = [(ATXHeroPoiManager *)self poiCategoryPublisherBookmark];
  v5 = objc_opt_new();
  bookmark = [v20[5] bookmark];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__ATXHeroPoiManager_poiCategoryEventsWithStreamPublisher___block_invoke;
  v18[3] = &unk_27859FB30;
  v18[4] = self;
  v18[5] = &v19;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__ATXHeroPoiManager_poiCategoryEventsWithStreamPublisher___block_invoke_2;
  v16[3] = &unk_278596F60;
  v7 = v5;
  v17 = v7;
  v8 = [publisherCopy sinkWithBookmark:bookmark completion:v18 receiveInput:v16];

  v9 = v20[5];
  v15 = 0;
  [v9 saveBookmarkWithError:&v15];
  v10 = v15;
  v11 = v10;
  if (v10)
  {
    v12 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeroPoiManager *)v11 poiCategoryEventsWithStreamPublisher:v12];
    }
  }

  v13 = v7;

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __58__ATXHeroPoiManager_poiCategoryEventsWithStreamPublisher___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 logCompletion:a2];
  [*(*(*(a1 + 40) + 8) + 40) setBookmark:v6];
}

- (void)donateHeroPoiPredictions:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "NIL POI category received in Hero POI Manager", buf, 2u);
}

- (void)logCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error in receiving events from POI category stream: %@", &v4, 0xCu);
}

- (void)poiCategoryEventsWithStreamPublisher:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unable to save POI category bookmark due to : %@", &v2, 0xCu);
}

@end