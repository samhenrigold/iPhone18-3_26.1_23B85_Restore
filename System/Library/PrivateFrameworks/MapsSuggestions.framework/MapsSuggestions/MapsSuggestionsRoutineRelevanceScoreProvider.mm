@interface MapsSuggestionsRoutineRelevanceScoreProvider
- (MapsSuggestionsRelevanceScore)_confidencesForMapItem:(uint64_t)item;
- (MapsSuggestionsRoutineRelevanceScoreProvider)initWithRoutine:(id)routine;
- (NSObject)_confidencesForMapItems:(uint64_t)items;
- (NSString)uniqueName;
- (char)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion;
- (id).cxx_construct;
- (uint64_t)_fetchLOIsWithCallback:(uint64_t *)callback;
- (void)preLoad;
@end

@implementation MapsSuggestionsRoutineRelevanceScoreProvider

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsRoutineRelevanceScoreProvider)initWithRoutine:(id)routine
{
  routineCopy = routine;
  v20.receiver = self;
  v20.super_class = MapsSuggestionsRoutineRelevanceScoreProvider;
  v6 = [(MapsSuggestionsRoutineRelevanceScoreProvider *)&v20 init];
  if (v6)
  {
    GEOConfigGetDouble();
    v8 = MapsSuggestionsNowWithOffset(-v7);
    fetchEntriesFromDate = v6->_fetchEntriesFromDate;
    v6->_fetchEntriesFromDate = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v18, @"MapsSuggestionsRoutineRelevanceScoreProviderQueue", v10);
    v11 = v18;
    v18 = 0;
    innerQueue = v6->_queue._innerQueue;
    v6->_queue._innerQueue = v11;

    v13 = v19;
    v19 = 0;
    name = v6->_queue._name;
    v6->_queue._name = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    routineLocations = v6->_routineLocations;
    v6->_routineLocations = v15;

    objc_storeStrong(&v6->_routine, routine);
  }

  return v6;
}

- (char)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  addressesCopy = addresses;
  itemsCopy = items;
  completionCopy = completion;
  v15 = completionCopy;
  if (!completionCopy)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineRelevanceScoreProvider.mm";
      v27 = 1024;
      v28 = 67;
      v29 = 2082;
      v30 = "[MapsSuggestionsRoutineRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      v31 = 2082;
      v32 = "nil == (completion)";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. nil completion", buf, 0x26u);
    }

    goto LABEL_10;
  }

  if (MapsSuggestionsLoggingIsVerbose(completionCopy, v14))
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v26 = "[MapsSuggestionsRoutineRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (!itemsCopy)
  {
    itemsCopy = GEOFindOrCreateLog();
    if (os_log_type_enabled(itemsCopy, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, itemsCopy, OS_LOG_TYPE_DEBUG, "mapItems was nil", buf, 2u);
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineRelevanceScoreProvider.mm";
      v27 = 1024;
      v28 = 75;
      v29 = 2082;
      v30 = "[MapsSuggestionsRoutineRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      v31 = 2082;
      v32 = "[mapItems isKindOfClass:[NSMutableArray class]]";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for mapItems results in undefined behaviour", buf, 0x26u);
    }

LABEL_10:

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v20 = [itemsCopy copy];

  if ([v20 count])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __101__MapsSuggestionsRoutineRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke;
    v22[3] = &unk_1E81F5488;
    v23 = v20;
    v24 = v15;
    itemsCopy = v20;
    MSg::Queue::async<MapsSuggestionsRoutineRelevanceScoreProvider>(&self->_queue, self, v22);

    v18 = 1;
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineRelevanceScoreProvider.mm";
      v27 = 1024;
      v28 = 80;
      v29 = 2082;
      v30 = "[MapsSuggestionsRoutineRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      v31 = 2082;
      v32 = "0u == [mapItems count]";
      _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. 0 mapItems passed", buf, 0x26u);
    }

    v18 = 0;
    itemsCopy = v20;
  }

LABEL_17:

  return v18;
}

void __101__MapsSuggestionsRoutineRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [(MapsSuggestionsRoutineRelevanceScoreProvider *)a2 _confidencesForMapItems:?];
  (*(v2 + 16))(v2);
}

- (NSObject)_confidencesForMapItems:(uint64_t)items
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (items)
  {
    v3 = [*(items + 40) count];
    if (v3 == [*(items + 48) count])
    {
      v4 = *(items + 40);
      objc_sync_enter(v4);
      if (v3)
      {
        objc_sync_exit(v4);

        v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = v27;
        v5 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v5)
        {
          v6 = *v30;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v30 != v6)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v29 + 1) + 8 * i);
              null = [MEMORY[0x1E695DFB0] null];
              if (v8)
              {
                v10 = null == v8;
              }

              else
              {
                v10 = 1;
              }

              v11 = v10;

              if (v11)
              {
                v12 = [[MapsSuggestionsRelevanceScore alloc] initWithConfidence:MapsSuggestionsConfidenceDontKnow()];
                [v4 addObject:v12];
              }

              else
              {
                v12 = [(MapsSuggestionsRoutineRelevanceScoreProvider *)items _confidencesForMapItem:v8];
                [(MapsSuggestionsRelevanceScore *)v12 confidence];
                if (v15 == MapsSuggestionsConfidenceDontKnow() && MapsSuggestionsLoggingIsVerbose(v13, v14))
                {
                  v16 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                  {
                    name = [v8 name];
                    [v8 coordinate];
                    v19 = v18;
                    [v8 coordinate];
                    *buf = 138412802;
                    *&buf[4] = name;
                    v35 = 2048;
                    v36 = v19;
                    v37 = 2048;
                    v38 = v20;
                    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "mapItem %@ , %f , %f was NOT found in CoreRoutine", buf, 0x20u);
                  }
                }

                [v4 addObject:v12];
              }
            }

            v5 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v5);
        }

        v21 = [v4 count];
        if (v21 == [obj count])
        {
          v4 = v4;
          v22 = v4;
LABEL_31:

          goto LABEL_32;
        }

        v25 = GEOFindOrCreateLog();
        [MapsSuggestionsRoutineRelevanceScoreProvider _confidencesForMapItems:v25];
      }

      else
      {
        v24 = GEOFindOrCreateLog();
        [(MapsSuggestionsRoutineRelevanceScoreProvider *)v24 _confidencesForMapItems:v4];
      }

      v22 = 0;
      goto LABEL_31;
    }

    v23 = GEOFindOrCreateLog();
    [(MapsSuggestionsRoutineRelevanceScoreProvider *)v23 _confidencesForMapItems:buf];
    v4 = v33;
    v22 = *buf;
    goto LABEL_31;
  }

  v22 = 0;
LABEL_32:

  return v22;
}

- (void)preLoad
{
  v7 = *MEMORY[0x1E69E9840];
  if (MapsSuggestionsLoggingIsVerbose(self, a2))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v6 = "[MapsSuggestionsRoutineRelevanceScoreProvider preLoad]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MapsSuggestionsRoutineRelevanceScoreProvider_preLoad__block_invoke;
  v4[3] = &unk_1E81F54D8;
  v4[4] = self;
  MSg::Queue::async<MapsSuggestionsRoutineRelevanceScoreProvider>(&self->_queue, self, v4);
}

void __55__MapsSuggestionsRoutineRelevanceScoreProvider_preLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__MapsSuggestionsRoutineRelevanceScoreProvider_preLoad__block_invoke_2;
  v10[3] = &unk_1E81F54B0;
  v5 = v4;
  v11 = v5;
  objc_copyWeak(&v12, &location);
  [(MapsSuggestionsRoutineRelevanceScoreProvider *)v3 _fetchLOIsWithCallback:v10];

  GEOConfigGetDouble();
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  if (dispatch_semaphore_wait(v5, v7))
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "RoutineRelevanceScoreProvider preload timed out", v9, 2u);
    }
  }

  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __55__MapsSuggestionsRoutineRelevanceScoreProvider_preLoad__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      v12 = WeakRetained[5];
      objc_sync_enter(v12);
      v13 = [v7 copy];
      v14 = v11[5];
      v11[5] = v13;

      objc_sync_exit(v12);
      v15 = v11[6];
      objc_sync_enter(v15);
      v16 = [v8 copy];
      v17 = v11[6];
      v11[6] = v16;

      objc_sync_exit(v15);
      dispatch_semaphore_signal(*(a1 + 32));
    }

    else
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 136446722;
        v20 = "MapsSuggestionsRoutineRelevanceScoreProvider.mm";
        v21 = 1026;
        v22 = 103;
        v23 = 2082;
        v24 = "[MapsSuggestionsRoutineRelevanceScoreProvider preLoad]_block_invoke_2";
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v19, 0x1Cu);
      }
    }
  }
}

- (uint64_t)_fetchLOIsWithCallback:(uint64_t *)callback
{
  v3 = a2;
  v5 = v3;
  if (callback)
  {
    if (v3)
    {
      if (MapsSuggestionsLoggingIsVerbose(v3, v4))
      {
        v6 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Calling CoreRoutine SPI", buf, 2u);
        }
      }

      objc_initWeak(buf, callback);
      mEMORY[0x1E69A22C8] = [MEMORY[0x1E69A22C8] sharedManager];
      v8 = [mEMORY[0x1E69A22C8] isEnabledForSubTestWithName:@"MSGPPTTest_Insights_ACRanking_RoutineCall"];

      if (v8)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"MSGPPTTest_Insights_ACRanking_RoutineCallBEGIN" object:0];
      }

      v10 = callback[4];
      v11 = callback[1];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__MapsSuggestionsRoutineRelevanceScoreProvider__fetchLOIsWithCallback___block_invoke;
      v14[3] = &unk_1E81F5500;
      objc_copyWeak(&v16, buf);
      v15 = v5;
      [v10 fetchLocationsSinceDate:v11 handler:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
      callback = 1;
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      [MapsSuggestionsRoutineRelevanceScoreProvider _fetchLOIsWithCallback:v13];
      callback = 0;
    }
  }

  return callback;
}

- (MapsSuggestionsRelevanceScore)_confidencesForMapItem:(uint64_t)item
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (item)
  {
    v4 = objc_alloc_init(MapsSuggestionsRelevanceScore);
    geoFenceMapRegionOrNil = [v3 geoFenceMapRegionOrNil];
    GEOMapRectForMapRegion();

    v6 = *(item + 40);
    objc_sync_enter(v6);
    v7 = [*(item + 40) count];
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = [*(item + 40) objectAtIndexedSubscript:v9];

        [v10 coordinate];
        [v10 coordinate];
        GEOMapPointForCoordinate();
        if (GEOMapRectContainsPoint())
        {
          break;
        }

        ++v9;
        v8 = v10;
        if (v7 == v9)
        {
          goto LABEL_8;
        }
      }

      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        name = [v3 name];
        [v3 coordinate];
        v14 = v13;
        [v3 coordinate];
        v19 = 138412802;
        v20 = name;
        v21 = 2048;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "mapItem %@ , %f , %f was found in CoreRoutine. Setting High Confidence", &v19, 0x20u);
      }

      [(MapsSuggestionsRelevanceScore *)v4 setConfidence:MapsSuggestionsConfidenceDefinitelyTrue()];
      v16 = *(item + 48);
      objc_sync_enter(v16);
      if ([*(item + 48) count] > v9)
      {
        v17 = [*(item + 48) objectAtIndexedSubscript:v9];
        [(MapsSuggestionsRelevanceScore *)v4 setLastInteractionTime:v17];
      }

      objc_sync_exit(v16);

      objc_sync_exit(v6);
    }

    else
    {
      v10 = 0;
LABEL_8:
      objc_sync_exit(v6);

      [(MapsSuggestionsRelevanceScore *)v4 setConfidence:MapsSuggestionsConfidenceDontKnow()];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __71__MapsSuggestionsRoutineRelevanceScoreProvider__fetchLOIsWithCallback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69A22C8] sharedManager];
  v11 = [v10 isEnabledForSubTestWithName:@"MSGPPTTest_Insights_ACRanking_RoutineCall"];

  if (v11)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"MSGPPTTest_Insights_ACRanking_RoutineCallEND" object:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = v9;
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "Error while fetching locations: %@", &v23, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v23 = 67109120;
        LODWORD(v24) = [v7 count];
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "CoreRoutine returned %u locations", &v23, 8u);
      }

      IsVerbose = MapsSuggestionsLoggingIsVerbose(v17, v18);
      if (IsVerbose)
      {
        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = 138412290;
          v24 = v7;
          _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "Locations: %@", &v23, 0xCu);
        }
      }

      if (MapsSuggestionsLoggingIsVerbose(IsVerbose, v20))
      {
        v22 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = 138412290;
          v24 = v8;
          _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "Visits: %@", &v23, 0xCu);
        }
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446722;
      v24 = "MapsSuggestionsRoutineRelevanceScoreProvider.mm";
      v25 = 1026;
      v26 = 192;
      v27 = 2082;
      v28 = "[MapsSuggestionsRoutineRelevanceScoreProvider _fetchLOIsWithCallback:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v23, 0x1Cu);
    }
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)_confidencesForMapItems:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136446978;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Return count must be same as input count!", v4, v5, v6, v7, v8);
  }
}

- (uint64_t)_confidencesForMapItems:(NSObject *)a1 .cold.2(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "No routine locations. Returning nil", v5, 2u);
  }

  return objc_sync_exit(a2);
}

- (void)_confidencesForMapItems:(void *)a3 .cold.3(NSObject *a1, NSObject **a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136446978;
    OUTLINED_FUNCTION_4();
    *(&v6[3] + 2) = 124;
    OUTLINED_FUNCTION_3();
    v7 = "locationCount != [_routineVisits count]";
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Number of routine locations and visits are different. This is not allowed. Returning nil", v6, 0x26u);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)_fetchLOIsWithCallback:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136446978;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. nil callback", v4, v5, v6, v7, v8);
  }
}

@end