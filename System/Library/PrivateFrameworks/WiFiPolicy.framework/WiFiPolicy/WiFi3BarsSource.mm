@interface WiFi3BarsSource
- (WiFi3BarsSource)initWithChangeHandler:(id)handler localStoreType:(unint64_t)type;
- (id)_descriptorForType:(unint64_t)type;
- (id)_matchSearchBSSIDs:(id)ds toResponse:(id)response;
- (void)_handleRemoteFetchResponse:(id)response;
- (void)fetch3BarsNetworksForLocation:(id)location forceRemote:(BOOL)remote trigger:(unint64_t)trigger completionHandler:(id)handler;
- (void)fetch3BarsNetworksPredictedForLocation:(id)location duration:(double)duration maxLocations:(unint64_t)locations completionHandler:(id)handler;
- (void)fetchCandidateNetworksMatchingBSSIDs:(id)ds completionHandler:(id)handler;
- (void)forceFetch3BarsNetworkMatchingBSSID:(id)d completionHandler:(id)handler;
- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler;
- (void)setCacheExpirationInDays:(unint64_t)days;
- (void)submitCacheAnalyticsEvent;
@end

@implementation WiFi3BarsSource

- (WiFi3BarsSource)initWithChangeHandler:(id)handler localStoreType:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = WiFi3BarsSource;
  v7 = [(WiFi3BarsSource *)&v26 init];
  if (!v7)
  {
    goto LABEL_15;
  }

  if (handlerCopy)
  {
    v8 = MEMORY[0x23839E400](handlerCopy);
    changeHandler = v7->changeHandler;
    v7->changeHandler = v8;
  }

  v10 = dispatch_queue_create("com.apple.wifi.3bars-source", MEMORY[0x277D85CD8]);
  queue = v7->_queue;
  v7->_queue = v10;

  if (!v7->_queue || (v12 = objc_alloc_init(MEMORY[0x277CBEB38]), networks = v7->_networks, v7->_networks = v12, networks, !v7->_networks))
  {
LABEL_15:
    v15 = 0;
LABEL_17:

    v7 = 0;
    goto LABEL_14;
  }

  v14 = [(WiFi3BarsSource *)v7 _descriptorForType:type];
  if (!v14)
  {
    [WiFi3BarsSource initWithChangeHandler:buf localStoreType:?];
    v15 = *buf;
    goto LABEL_17;
  }

  v15 = v14;
  storeURL = [v14 storeURL];
  v17 = [storeURL copy];
  storeURL = v7->_storeURL;
  v7->_storeURL = v17;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v7->_storeURL;
    *buf = 136315394;
    *&buf[4] = "[WiFi3BarsSource initWithChangeHandler:localStoreType:]";
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: source initialized with storeURL %@", buf, 0x16u);
  }

  v20 = [[TBDataSourceMediator alloc] initWithLocalStoreDescriptor:v15];
  sourceMediator = v7->_sourceMediator;
  v7->_sourceMediator = v20;

  if (!v7->_sourceMediator)
  {
    goto LABEL_17;
  }

  if (![v15 type])
  {
    v22 = [[WiFi3BarsTileFetcher alloc] initWithDataSourceMediator:v7->_sourceMediator];
    tileFetcher = v7->_tileFetcher;
    v7->_tileFetcher = v22;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v7->_tileFetcher;
      *buf = 136315394;
      *&buf[4] = "[WiFi3BarsSource initWithChangeHandler:localStoreType:]";
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: created tile fetcher %@ for server", buf, 0x16u);
    }
  }

  v7->_cacheExpirationInDays = 7;
LABEL_14:

  return v7;
}

- (void)fetch3BarsNetworksForLocation:(id)location forceRemote:(BOOL)remote trigger:(unint64_t)trigger completionHandler:(id)handler
{
  remoteCopy = remote;
  v39 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[WiFi3BarsSource fetch3BarsNetworksForLocation:forceRemote:trigger:completionHandler:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v13 = [date dateByAddingDays:{--[WiFi3BarsSource cacheExpirationInDays](self, "cacheExpirationInDays")}];

  v14 = [TBLocationFetchRequestDescriptor alloc];
  [locationCopy coordinate];
  v16 = v15;
  [locationCopy coordinate];
  v18 = v17;
  if (trigger == 1)
  {
    +[TBDefaults nearbyTileSearchRadius];
    v20 = [(TBLocationFetchRequestDescriptor *)v14 initWithLatitude:v13 longitude:v16 radius:v18 maxCacheAge:v19];
  }

  else
  {
    v20 = [(TBLocationFetchRequestDescriptor *)v14 initWithLatitude:v13 longitude:v16 maxCacheAge:v17];
  }

  v21 = v20;
  if (remoteCopy)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  v23 = [TBLocationFetchRequest fetchRequestWithDescriptor:v20 sourcePolicy:v22 cacheable:1];
  v35[0] = @"trigger";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:trigger];
  v35[1] = @"tileKey";
  v36[0] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v21, "primaryTileKey")}];
  v36[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v23 setUserInfo:v26];

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __87__WiFi3BarsSource_fetch3BarsNetworksForLocation_forceRemote_trigger_completionHandler___block_invoke;
  v32 = &unk_2789C8200;
  selfCopy = self;
  v34 = handlerCopy;
  v27 = handlerCopy;
  [v23 setResultsHandler:&v29];
  v28 = [(WiFi3BarsSource *)self sourceMediator:v29];
  [v28 executeFetchRequest:v23];
}

void __87__WiFi3BarsSource_fetch3BarsNetworksForLocation_forceRemote_trigger_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v10 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v7[2](v7);
  }

  [*(a1 + 32) _handleRemoteFetchResponse:v10];
  if (a4)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }
  }
}

- (void)_handleRemoteFetchResponse:(id)response
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  error = [responseCopy error];

  if (!error)
  {
    tiles = [responseCopy tiles];
    v8 = [tiles count];

    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      tiles2 = [responseCopy tiles];
      v12 = 136315394;
      v13 = "[WiFi3BarsSource _handleRemoteFetchResponse:]";
      v14 = 2048;
      uTF8String = [tiles2 count];
      v10 = MEMORY[0x277D86220];
      v11 = "%s: Fetched %lu tiles";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      tiles2 = [responseCopy results];
      v12 = 136315394;
      v13 = "[WiFi3BarsSource _handleRemoteFetchResponse:]";
      v14 = 2048;
      uTF8String = [tiles2 count];
      v10 = MEMORY[0x277D86220];
      v11 = "%s: Fetched %lu results";
    }

    _os_log_impl(&dword_2332D7000, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0x16u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    tiles2 = [responseCopy error];
    v6 = [tiles2 description];
    v12 = 136315394;
    v13 = "[WiFi3BarsSource _handleRemoteFetchResponse:]";
    v14 = 2080;
    uTF8String = [v6 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Failed fetch with error %s\n", &v12, 0x16u);

LABEL_10:
  }

LABEL_11:
}

- (void)fetch3BarsNetworksPredictedForLocation:(id)location duration:(double)duration maxLocations:(unint64_t)locations completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(WiFi3BarsSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke;
  block[3] = &unk_2789C8278;
  block[4] = self;
  v16 = locationCopy;
  durationCopy = duration;
  v17 = handlerCopy;
  locationsCopy = locations;
  v13 = handlerCopy;
  v14 = locationCopy;
  dispatch_async(queue, block);
}

void __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  objc_initWeak(&location, *(a1 + 32));
  dispatch_group_enter(v2);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_2;
  v16[3] = &unk_2789C8250;
  v18[1] = *(a1 + 56);
  v3 = v2;
  v17 = v3;
  objc_copyWeak(v18, &location);
  v4 = MEMORY[0x23839E400](v16);
  v5 = [MEMORY[0x277D01288] defaultManager];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEAA8] date];
  [v5 fetchNextPredictedLocationsOfInterestFromLocation:v6 startDate:v7 timeInterval:v4 withHandler:*(a1 + 64)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Querying current location", buf, 2u);
  }

  dispatch_group_enter(v3);
  v8 = objc_loadWeakRetained(&location);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_19;
  v13[3] = &unk_2789C8228;
  v10 = v3;
  v14 = v10;
  [v8 fetch3BarsNetworksForLocation:v9 forceRemote:0 trigger:2 completionHandler:v13];

  v11 = dispatch_time(0, 3600000000000);
  dispatch_group_wait(v10, v11);
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v26 = [v5 count];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35[0] = v26;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[predictedLocationsOfInterest count] <%ld>", buf, 0xCu);
  }

  if (!v6 && v26)
  {
    v25 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v31;
      v27 = v7;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          if (v10 < *(a1 + 48))
          {
            [v13 confidence];
            if (v15 >= 0.5)
            {
              dispatch_group_enter(*(a1 + 32));
              v16 = [v13 locationOfInterest];
              v17 = objc_alloc(MEMORY[0x277CE41F0]);
              v18 = [v16 location];
              [v18 latitude];
              v20 = v19;
              v21 = [v16 location];
              [v21 longitude];
              v23 = [v17 initWithLatitude:v20 longitude:v22];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                LODWORD(v35[0]) = v10 + 1;
                WORD2(v35[0]) = 2048;
                *(v35 + 6) = v26;
                _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Querying predicted location %d/%ld", buf, 0x12u);
              }

              WeakRetained = objc_loadWeakRetained((a1 + 40));
              v28[0] = MEMORY[0x277D85DD0];
              v28[1] = 3221225472;
              v28[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_15;
              v28[3] = &unk_2789C8228;
              v29 = *(a1 + 32);
              [WeakRetained fetch3BarsNetworksForLocation:v23 forceRemote:0 trigger:3 completionHandler:v28];

              ++v10;
              v7 = v27;
            }
          }

          objc_autoreleasePoolPop(v14);
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    v6 = 0;
    v5 = v25;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler
{
  handlerCopy = handler;
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  [sourceMediator prune3BarsNetworks:networks completionHandler:handlerCopy];
}

- (void)fetchCandidateNetworksMatchingBSSIDs:(id)ds completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[WiFi3BarsSource fetchCandidateNetworksMatchingBSSIDs:completionHandler:]";
    *&buf[12] = 2048;
    *&buf[14] = [dsCopy count];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetching candidates for %lu BSSIDS", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = os_transaction_create();
  v8 = [[TBNetworkFetchRequestDescriptor alloc] initWithBSSIDs:dsCopy];
  v9 = [TBNetworkFetchRequest fetchRequestWithDescriptor:v8 sourcePolicy:1];
  [v9 setUserInfo:&unk_2848BB100];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __74__WiFi3BarsSource_fetchCandidateNetworksMatchingBSSIDs_completionHandler___block_invoke;
  v16 = &unk_2789C82A0;
  selfCopy = self;
  v10 = dsCopy;
  v18 = v10;
  v11 = handlerCopy;
  v19 = v11;
  v20 = buf;
  [v9 setResultsHandler:&v13];
  v12 = [(WiFi3BarsSource *)self sourceMediator:v13];
  [v12 executeFetchRequest:v9];

  _Block_object_dispose(buf, 8);
}

void __74__WiFi3BarsSource_fetchCandidateNetworksMatchingBSSIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      v11 = 136315394;
      v12 = "[WiFi3BarsSource fetchCandidateNetworksMatchingBSSIDs:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetch error %@", &v11, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _matchSearchBSSIDs:*(a1 + 40) toResponse:v3];
  }

  v7 = *(a1 + 48);
  v8 = [v3 error];
  (*(v7 + 16))(v7, v6, v8);

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

- (id)_matchSearchBSSIDs:(id)ds toResponse:(id)response
{
  v57 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  responseCopy = response;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (objc_opt_respondsToSelector())
  {
    resultsByBSSID = [responseCopy resultsByBSSID];
    v8 = [resultsByBSSID count];

    if (v8)
    {
      resultsByBSSID2 = [responseCopy resultsByBSSID];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __49__WiFi3BarsSource__matchSearchBSSIDs_toResponse___block_invoke;
      v52[3] = &unk_2789C82C8;
      v53 = v29;
      [resultsByBSSID2 enumerateKeysAndObjectsUsingBlock:v52];

      goto LABEL_35;
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = dsCopy;
  v34 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (!v34)
  {
    goto LABEL_34;
  }

  v28 = dsCopy;
  v31 = responseCopy;
  v32 = *v49;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v49 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v48 + 1) + 8 * i);
      reformatBSSID = [v11 reformatBSSID];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      results = [responseCopy results];
      v38 = [(WiFi3BarsNetwork *)results countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (!v38)
      {
        v26 = 0;
        goto LABEL_29;
      }

      v33 = v11;
      v35 = i;
      v36 = results;
      v39 = 0;
      v37 = *v45;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v36);
          }

          v15 = *(*(&v44 + 1) + 8 * j);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          accessPoints = [v15 accessPoints];
          v17 = [accessPoints countByEnumeratingWithState:&v40 objects:v54 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v41;
            while (2)
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(accessPoints);
                }

                v21 = *(*(&v40 + 1) + 8 * k);
                v22 = objc_autoreleasePoolPush();
                bSSID = [v21 BSSID];
                v24 = [bSSID isEqualToString:reformatBSSID];

                if (v24)
                {
                  v25 = v15;

                  objc_autoreleasePoolPop(v22);
                  v39 = v25;
                  goto LABEL_24;
                }

                objc_autoreleasePoolPop(v22);
              }

              v18 = [accessPoints countByEnumeratingWithState:&v40 objects:v54 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v38 = [(WiFi3BarsNetwork *)v36 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v38);

      v26 = v39;
      if (v39)
      {
        results = [[WiFi3BarsNetwork alloc] initWithNetwork:v39];
        [v29 setObject:results forKey:v33];
        responseCopy = v31;
        i = v35;
LABEL_29:

        goto LABEL_31;
      }

      responseCopy = v31;
      i = v35;
LABEL_31:
    }

    v34 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v34);
  dsCopy = v28;
LABEL_34:

LABEL_35:

  return v29;
}

void __49__WiFi3BarsSource__matchSearchBSSIDs_toResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[WiFi3BarsNetwork alloc] initWithNetwork:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

- (void)forceFetch3BarsNetworkMatchingBSSID:(id)d completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[WiFi3BarsSource forceFetch3BarsNetworkMatchingBSSID:completionHandler:]";
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetching 3bars network for %{mask.hash}@", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{dCopy, 0}];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [date dateByAddingDays:{--[WiFi3BarsSource cacheExpirationInDays](self, "cacheExpirationInDays")}];

  v11 = [[TBNetworkFetchRequestDescriptor alloc] initWithBSSIDs:v8 maxCacheAge:v10];
  v12 = [TBNetworkFetchRequest fetchRequestWithDescriptor:v11 sourcePolicy:3 cacheable:1];
  [v12 setUserInfo:&unk_2848BB128];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__WiFi3BarsSource_forceFetch3BarsNetworkMatchingBSSID_completionHandler___block_invoke;
  v16[3] = &unk_2789C82F0;
  v16[4] = self;
  v17 = v8;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = v8;
  [v12 setResultsHandler:v16];
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  [sourceMediator executeFetchRequest:v12];
}

void __73__WiFi3BarsSource_forceFetch3BarsNetworkMatchingBSSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 error];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 error];
      v10 = 136315394;
      v11 = "[WiFi3BarsSource forceFetch3BarsNetworkMatchingBSSID:completionHandler:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetch error %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _matchSearchBSSIDs:*(a1 + 40) toResponse:v3];
  }

  [v4 setResults:v7];
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [v3 error];
    (*(v8 + 16))(v8, v4, v9);
  }
}

- (void)submitCacheAnalyticsEvent
{
  v24 = *MEMORY[0x277D85DE8];
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  local = [sourceMediator local];
  context = [local context];

  if (context)
  {
    v5 = +[TBTileMO fetchRequest];
    [v5 setIncludesSubentities:0];
    v6 = +[TBTileMO fetchRequest];
    [v6 setIncludesSubentities:0];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [date dateByAddingDays:-1];

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"created > %@", v8];
    [v6 setPredicate:v9];

    v17 = 0;
    v10 = [context countForFetchRequest:v5 error:&v17];
    v11 = v17;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error fetching all tiles %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = 0;
      v12 = [context countForFetchRequest:v6 error:&v16];
      v13 = v16;
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v14)
        {
          *buf = 136315394;
          v19 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error fetching last day tiles %@", buf, 0x16u);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 136315650;
          v19 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
          v20 = 2048;
          v21 = v10;
          v22 = 2048;
          v23 = v12;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: allCount: %lu lastDayCount: %lu", buf, 0x20u);
        }

        v15 = [TBCacheAnalyticsEvent cacheEventWithTotalCount:v10 last24HoursCount:v12];
        [TBAnalytics captureEvent:v15];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unable to get moc", buf, 0xCu);
  }
}

- (void)setCacheExpirationInDays:(unint64_t)days
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WiFi3BarsSource setCacheExpirationInDays:]";
    v9 = 2048;
    daysCopy = days;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: setting new cache expiration %lu", &v7, 0x16u);
  }

  self->_cacheExpirationInDays = days;
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  local = [sourceMediator local];
  [local setCacheExpirationInDays:days];
}

- (id)_descriptorForType:(unint64_t)type
{
  v3 = 0;
  if (type > 1)
  {
    if (type == 3)
    {
      v3 = +[TBCoreDataStoreDescriptor tempStoreDescriptor];
    }

    else if (type == 2)
    {
      v3 = +[TBCoreDataStoreDescriptor clientStoreDescriptor];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v3 = +[TBCoreDataStoreDescriptor directStoreDescriptor];
    }
  }

  else
  {
    v3 = +[TBCoreDataStoreDescriptor serverStoreDescriptor];
  }

  return v3;
}

- (void)initWithChangeHandler:(void *)a1 localStoreType:.cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[WiFi3BarsSource initWithChangeHandler:localStoreType:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: store descriptor is nil", &v2, 0xCu);
  }

  *a1 = 0;
}

@end