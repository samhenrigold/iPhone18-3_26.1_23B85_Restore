@interface TBCoreDataSource
- (BOOL)_canSupportRequest:(id)request;
- (TBCoreDataSource)initWithStoreDescriptor:(id)descriptor;
- (void)_createNewNetwork:(id)network tile:(id)tile withMOC:(id)c;
- (void)_createNewNetworkFromDictionary:(id)dictionary withMOC:(id)c;
- (void)_executeFetchRequest:(id)request;
- (void)_executePreferLocalFetchRequest:(id)request;
- (void)cacheFetchResponse:(id)response completionHandler:(id)handler;
- (void)executeFetchRequest:(id)request;
- (void)importObjectsWithArray:(id)array completionHandler:(id)handler;
- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler;
- (void)removeAllWithCompletionHandler:(id)handler;
- (void)removeWithFetchRequest:(id)request completionHandler:(id)handler;
@end

@implementation TBCoreDataSource

- (TBCoreDataSource)initWithStoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v32.receiver = self;
  v32.super_class = TBCoreDataSource;
  v5 = [(TBCoreDataSource *)&v32 init];
  descriptor = v5->_descriptor;
  v5->_descriptor = descriptorCopy;
  v7 = descriptorCopy;

  v8 = objc_alloc(MEMORY[0x277CBE450]);
  modelURL = [(TBCoreDataStoreDescriptor *)v7 modelURL];
  v10 = [v8 initWithContentsOfURL:modelURL];

  v11 = [[TBPersistenceManager alloc] initWithManagedObjectModel:v10 storeDescriptor:v7];
  persistenceManager = v5->_persistenceManager;
  v5->_persistenceManager = v11;

  v13 = v5->_persistenceManager;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke;
  v30[3] = &unk_2789C73D0;
  v14 = v5;
  v31 = v14;
  [(TBPersistenceManager *)v13 addPersistentStorage:v7 completionHandler:v30];
  modelURL2 = [(TBCoreDataStoreDescriptor *)v7 modelURL];
  NSLog(&cfstr_SObjectModelAt.isa, "[TBCoreDataSource initWithStoreDescriptor:]", modelURL2);

  storeURL = [(TBCoreDataStoreDescriptor *)v7 storeURL];
  NSLog(&cfstr_SStoreUrl.isa, "[TBCoreDataSource initWithStoreDescriptor:]", storeURL);

  v17 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  mergeByPropertyObjectTrumpMergePolicy = [MEMORY[0x277CBE460] mergeByPropertyObjectTrumpMergePolicy];
  [(NSManagedObjectContext *)v17 setMergePolicy:mergeByPropertyObjectTrumpMergePolicy];

  persistenceCoordinator = [(TBPersistenceManager *)v5->_persistenceManager persistenceCoordinator];
  [(NSManagedObjectContext *)v17 setPersistentStoreCoordinator:persistenceCoordinator];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [(NSManagedObjectContext *)v17 setTransactionAuthor:processName];

  context = v14->_context;
  v14->_context = v17;
  v23 = v17;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke_2;
  v28[3] = &unk_2789C7250;
  v24 = v14;
  v29 = v24;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v28];
  v25 = v29;
  v26 = v24;

  return v26;
}

void __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SAddThePersist.isa, "[TBCoreDataSource initWithStoreDescriptor:]_block_invoke", a2);
    *(*(a1 + 32) + 16) = 1;
  }
}

void __44__TBCoreDataSource_initWithStoreDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 jtrnDefaults];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 valueForKey:@"kWiFiCoreDataSourceExpirationDays"];
    *(*(a1 + 32) + 24) = [v4 intValue];

    v3 = v5;
  }

  else
  {
    *(*(a1 + 32) + 24) = 7;
  }
}

- (void)executeFetchRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy sourcePolicy] == 3)
  {
    [(TBCoreDataSource *)self _executePreferLocalFetchRequest:requestCopy];
  }

  else
  {
    [(TBCoreDataSource *)self _executeFetchRequest:requestCopy];
  }
}

- (void)_executePreferLocalFetchRequest:(id)request
{
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  preferLocalFetchDescriptor = [descriptor preferLocalFetchDescriptor];
  fetchRequest = [preferLocalFetchDescriptor fetchRequest];

  context = [(TBCoreDataSource *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TBCoreDataSource__executePreferLocalFetchRequest___block_invoke;
  v11[3] = &unk_2789C6C70;
  v11[4] = self;
  v12 = fetchRequest;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = fetchRequest;
  [context performBlock:v11];
}

void __52__TBCoreDataSource__executePreferLocalFetchRequest___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v17];
  v5 = v17;

  if (v5)
  {
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource _executePreferLocalFetchRequest:]_block_invoke", v5);
    v6 = *(a1 + 48);
    v7 = [TBErrorFetchResponse responseWithError:v5];
    [v6 handleResponse:v7];
LABEL_11:

    goto LABEL_12;
  }

  if (![v4 count])
  {
    v10 = [TBError alloc];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"pref local cache doesn't satisfy request (0 results)";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = v10;
    v13 = 103;
LABEL_10:
    v7 = [(TBError *)v12 initWithType:v13 userInfo:v11];

    v15 = *(a1 + 48);
    v16 = [TBErrorFetchResponse responseWithError:v7];
    [v15 handleResponse:v16];

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) handlePreferLocalResponse:v4];
  }

  v8 = [*(a1 + 48) preferLocalHandler];
  v9 = (v8)[2](v8, v4);

  if (!v9)
  {
    v14 = [TBError alloc];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"pref local cache doesn't satisfy request (1 or more missing results)";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = v14;
    v13 = 102;
    goto LABEL_10;
  }

  NSLog(&cfstr_SLocalResultsS.isa, "-[TBCoreDataSource _executePreferLocalFetchRequest:]_block_invoke", [v4 count]);
  [*(a1 + 32) _executeFetchRequest:*(a1 + 48)];
LABEL_12:
}

- (void)_executeFetchRequest:(id)request
{
  v40[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(TBCoreDataSource *)self _canSupportRequest:requestCopy])
  {
    if ([(TBCoreDataSource *)self hasStorageError])
    {
      v5 = [TBError alloc];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"Failed to add persistent store.";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      fetchRequest = [(TBError *)v5 initWithType:104 userInfo:v6];

      v8 = [TBErrorFetchResponse responseWithError:fetchRequest];
      [requestCopy handleResponse:v8];
    }

    else
    {
      descriptor = [requestCopy descriptor];
      localFetchDescriptor = [descriptor localFetchDescriptor];
      fetchRequest = [localFetchDescriptor fetchRequest];

      if (fetchRequest)
      {
        v13 = mach_absolute_time();
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v25 = 0;
        v26 = &v25;
        v27 = 0x3032000000;
        v28 = __Block_byref_object_copy__4;
        v29 = __Block_byref_object_dispose__4;
        v30 = 0;
        descriptor2 = [requestCopy descriptor];
        v15 = [descriptor2 type] == 1;

        if (v15)
        {
          [(TBError *)fetchRequest setResultType:2];
          [(TBError *)fetchRequest setPropertiesToFetch:&unk_2848BAD00];
          [(TBError *)fetchRequest setAllocationType:1];
          context = [(TBCoreDataSource *)self context];
          v17 = v24;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __41__TBCoreDataSource__executeFetchRequest___block_invoke;
          v24[3] = &unk_2789C73F8;
          v24[4] = self;
          v24[5] = fetchRequest;
          v24[7] = &v25;
          v24[6] = requestCopy;
          v24[8] = &v31;
          [context performBlockAndWait:v24];
        }

        else
        {
          context = [(TBCoreDataSource *)self context];
          v17 = v23;
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __41__TBCoreDataSource__executeFetchRequest___block_invoke_2;
          v23[3] = &unk_2789C7420;
          v23[4] = self;
          v23[5] = fetchRequest;
          v23[6] = requestCopy;
          v23[7] = &v31;
          [context performBlockAndWait:v23];
        }

        v21 = mach_absolute_time();
        v22 = MachTimeToSecs(v21 - v13);
        NSLog(&cfstr_SFetchedLuResu.isa, "[TBCoreDataSource _executeFetchRequest:]", v32[3], *&v22);
        [(TBDataSource *)self submitAnalyticsEventForFetchRequest:requestCopy duration:v26[5] error:v32[3] resultCount:v22];
        _Block_object_dispose(&v25, 8);

        _Block_object_dispose(&v31, 8);
      }

      else
      {
        v35 = *MEMORY[0x277CCA450];
        v36 = @"localFetchDescriptor is nil";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v19 = [TBError fetchMissingParametersErrorWithUserInfo:v18];

        v20 = [TBErrorFetchResponse responseWithError:v19];
        [requestCopy handleResponse:v20];
      }
    }
  }

  else
  {
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"unhandled fetch request type";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    fetchRequest = [TBError fetchMissingParametersErrorWithUserInfo:v9];

    v10 = [TBErrorFetchResponse responseWithError:fetchRequest];
    [requestCopy handleResponse:v10];
  }
}

void __41__TBCoreDataSource__executeFetchRequest___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    NSLog(&cfstr_SFailedFetchFo.isa, "[TBCoreDataSource _executeFetchRequest:]_block_invoke", v6);
    v7 = *(a1 + 48);
    v8 = [TBErrorFetchResponse responseWithError:*(*(*(a1 + 56) + 8) + 40)];
    [v7 handleResponse:v8];
  }

  else
  {
    v8 = +[TBNetworkMO fetchRequest];
    v9 = MEMORY[0x277CCAC30];
    v10 = [v5 valueForKey:@"network"];
    v11 = [v9 predicateWithFormat:@"self IN %@", v10];
    [v8 setPredicate:v11];

    [v8 setReturnsObjectsAsFaults:0];
    v12 = [*(a1 + 32) context];
    v13 = *(*(a1 + 56) + 8);
    v37 = *(v13 + 40);
    v14 = [v12 executeFetchRequest:v8 error:&v37];
    objc_storeStrong((v13 + 40), v37);

    v15 = *(*(*(a1 + 56) + 8) + 40);
    if (!v14 || v15)
    {
      NSLog(&cfstr_SFailedFetchFo_0.isa, "[TBCoreDataSource _executeFetchRequest:]_block_invoke", v15);
      v28 = *(a1 + 48);
      v16 = [TBErrorFetchResponse responseWithError:*(*(*(a1 + 56) + 8) + 40)];
      [v28 handleResponse:v16];
    }

    else
    {
      v29 = v14;
      v30 = v8;
      v16 = [MEMORY[0x277CBEB38] dictionary];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v31 = v5;
      v32 = v5;
      v17 = [v32 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v32);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [v21 objectForKey:@"bssid"];
            v23 = [v21 objectForKey:@"network"];
            v24 = [*(a1 + 32) context];
            v25 = [v24 objectWithID:v23];
            [v16 setObject:v25 forKey:v22];
          }

          v18 = [v32 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v18);
      }

      *(*(*(a1 + 64) + 8) + 24) = [v16 count];
      v26 = *(a1 + 48);
      v27 = [TBLocalFetchResponse responseWithResultsByBSSID:v16];
      [v26 handleResponse:v27];

      v8 = v30;
      v5 = v31;
      v14 = v29;
    }
  }
}

void __41__TBCoreDataSource__executeFetchRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v10];
  v5 = v10;

  if (v5)
  {
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource _executeFetchRequest:]_block_invoke_2", v5);
    v6 = *(a1 + 48);
    v7 = [TBErrorFetchResponse responseWithError:v5];
    [v6 handleResponse:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [v4 count];
    v8 = *(a1 + 48);
    v7 = [*(a1 + 40) entity];
    v9 = [TBLocalFetchResponse responseWithResults:v4 entityDescription:v7];
    [v8 handleResponse:v9];

    v5 = v9;
  }
}

- (BOOL)_canSupportRequest:(id)request
{
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  if ([descriptor type] == 1)
  {
    v5 = 1;
  }

  else
  {
    descriptor2 = [requestCopy descriptor];
    if ([descriptor2 type] == 2)
    {
      v5 = 1;
    }

    else
    {
      descriptor3 = [requestCopy descriptor];
      v5 = [descriptor3 type] == 3;
    }
  }

  return v5;
}

- (void)cacheFetchResponse:(id)response completionHandler:(id)handler
{
  v128 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v65 = responseCopy;
  NSLog(&cfstr_SCachingRespon.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", responseCopy);
  v64 = os_transaction_create();
  error = [responseCopy error];

  if (error)
  {
    error2 = [responseCopy error];
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", error2);

    if (handlerCopy)
    {
      error3 = [responseCopy error];
      handlerCopy[2](handlerCopy, error3);
    }
  }

  else
  {
    v63 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    persistenceManager = [(TBCoreDataSource *)self persistenceManager];
    persistenceCoordinator = [persistenceManager persistenceCoordinator];
    [v63 setPersistentStoreCoordinator:persistenceCoordinator];

    date = [MEMORY[0x277CBEAA8] date];
    v62 = [date dateByAddingDays:{--[TBCoreDataSource cacheExpirationInDays](self, "cacheExpirationInDays")}];

    tiles = [v65 tiles];
    v13 = [tiles count];

    if (v13)
    {
      v61 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(created < %@)", v62];
      [TBTileMO removeTilesUsingPredicate:v61 moc:v63];
      v14 = MEMORY[0x277CBEB18];
      tiles2 = [v65 tiles];
      v69 = [v14 arrayWithCapacity:{objc_msgSend(tiles2, "count")}];

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      tiles3 = [v65 tiles];
      v17 = [tiles3 countByEnumeratingWithState:&v120 objects:v127 count:16];
      if (v17)
      {
        v18 = *v121;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v121 != v18)
            {
              objc_enumerationMutation(tiles3);
            }

            v20 = MEMORY[0x277CCABB0];
            tile = [*(*(&v120 + 1) + 8 * i) tile];
            v22 = [v20 numberWithLongLong:{objc_msgSend(tile, "key")}];
            [v69 addObject:v22];
          }

          v17 = [tiles3 countByEnumeratingWithState:&v120 objects:v127 count:16];
        }

        while (v17);
      }

      v60 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(key IN %@)", v69];
      [TBTileMO removeTilesUsingPredicate:v60 moc:v63];
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke;
      v118[3] = &unk_2789C6630;
      v23 = v63;
      v119 = v23;
      [v23 performBlockAndWait:v118];
      tiles4 = [v65 tiles];
      v76 = [tiles4 count];

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = [v65 tiles];
      v68 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
      if (v68)
      {
        v79 = 0;
        v67 = *v115;
        do
        {
          v25 = 0;
          do
          {
            if (*v115 != v67)
            {
              v26 = v25;
              objc_enumerationMutation(obj);
              v25 = v26;
            }

            v71 = v25;
            v27 = *(*(&v114 + 1) + 8 * v25);
            context = objc_autoreleasePoolPush();
            tile2 = [v27 tile];
            v28 = [TBTileMO generateNewTileObjectFromMOC:v23];
            [v28 setKey:{objc_msgSend(tile2, "key")}];
            date2 = [MEMORY[0x277CBEAA8] date];
            [v28 setCreated:date2];

            if (objc_opt_respondsToSelector())
            {
              etag = [tile2 etag];
              [v28 setEtag:etag];
            }

            else
            {
              NSLog(&cfstr_STileDoesnTRes.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", tile2);
            }

            networks = [v27 networks];
            v32 = [networks count];
            NSLog(&cfstr_SLdResultsForT.isa, "-[TBCoreDataSource cacheFetchResponse:completionHandler:]", v32, v79++, [tile2 key]);
            v108 = 0;
            v109 = &v108;
            v110 = 0x3032000000;
            v111 = __Block_byref_object_copy__4;
            v112 = __Block_byref_object_dispose__4;
            v113 = 0;
            if (v32)
            {
              if (v32 >= 1)
              {
                v33 = 0;
                v34 = 1;
                do
                {
                  v35 = [networks objectAtIndexedSubscript:v33];
                  [(TBCoreDataSource *)self _createNewNetwork:v35 tile:v28 withMOC:v23];
                  v36 = v33 + 1;
                  if (100 * (v34 / 0x64) - 1 == v33 || v32 - 1 == v33)
                  {
                    NSLog(&cfstr_SSavingEntries.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v33 + 1, v32);
                    v98[0] = MEMORY[0x277D85DD0];
                    v98[1] = 3221225472;
                    v98[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_3;
                    v98[3] = &unk_2789C7448;
                    v99 = v23;
                    v100 = &v108;
                    v101 = v79;
                    v102 = v76;
                    [v99 performBlockAndWait:v98];
                  }

                  ++v34;
                  ++v33;
                }

                while (v32 != v36);
              }
            }

            else
            {
              NSLog(&cfstr_SSavingEmptyTi.isa, "-[TBCoreDataSource cacheFetchResponse:completionHandler:]", [tile2 key]);
              v103[0] = MEMORY[0x277D85DD0];
              v103[1] = 3221225472;
              v103[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_2;
              v103[3] = &unk_2789C7448;
              v104 = v23;
              v105 = &v108;
              v106 = v79;
              v107 = v76;
              [v104 performBlockAndWait:v103];
            }

            if (handlerCopy && v79 == v76)
            {
              handlerCopy[2](handlerCopy, v109[5]);
            }

            _Block_object_dispose(&v108, 8);

            objc_autoreleasePoolPop(context);
            v25 = v71 + 1;
          }

          while (v71 + 1 != v68);
          v68 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
        }

        while (v68);
      }
    }

    else
    {
      results = [v65 results];
      v39 = [results count];

      if (v39)
      {
        v40 = [MEMORY[0x277CBEB58] set];
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        results2 = [v65 results];
        v80 = [results2 countByEnumeratingWithState:&v94 objects:v125 count:16];
        if (v80)
        {
          v77 = *v95;
          do
          {
            for (j = 0; j != v80; ++j)
            {
              if (*v95 != v77)
              {
                objc_enumerationMutation(results2);
              }

              v42 = *(*(&v94 + 1) + 8 * j);
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              accessPoints = [v42 accessPoints];
              v44 = [accessPoints countByEnumeratingWithState:&v90 objects:v124 count:16];
              if (v44)
              {
                v45 = *v91;
                do
                {
                  for (k = 0; k != v44; ++k)
                  {
                    if (*v91 != v45)
                    {
                      objc_enumerationMutation(accessPoints);
                    }

                    v47 = *(*(&v90 + 1) + 8 * k);
                    bSSID = [v47 BSSID];

                    if (bSSID)
                    {
                      bSSID2 = [v47 BSSID];
                      [v40 addObject:bSSID2];
                    }

                    else
                    {
                      NSLog(&cfstr_SNullBssidForN.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v42);
                    }
                  }

                  v44 = [accessPoints countByEnumeratingWithState:&v90 objects:v124 count:16];
                }

                while (v44);
              }
            }

            v80 = [results2 countByEnumeratingWithState:&v94 objects:v125 count:16];
          }

          while (v80);
        }

        v78 = +[TBAccessPointMO fetchRequest];
        bssidPredicate = [v40 bssidPredicate];
        [v78 setPredicate:bssidPredicate];

        v51 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v78];
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_4;
        v87[3] = &unk_2789C6608;
        v52 = v63;
        v88 = v52;
        v75 = v51;
        v89 = v75;
        [v52 performBlockAndWait:v87];
        results3 = [v65 results];
        v54 = [results3 count];
        NSLog(&cfstr_SLdResultsAvai.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v54);
        v55 = v54 - 1;
        if (v54 >= 1)
        {
          v56 = 0;
          v57 = 1;
          do
          {
            v58 = [results3 objectAtIndexedSubscript:v56];
            [(TBCoreDataSource *)self _createNewNetwork:v58 tile:0 withMOC:v52];
            v59 = v56 + 1;
            if (v55 == v56 || 100 * (v57 / 0x64) - 1 == v56)
            {
              NSLog(&cfstr_SSavingEntries.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v56 + 1, v54);
              v108 = 0;
              v109 = &v108;
              v110 = 0x3032000000;
              v111 = __Block_byref_object_copy__4;
              v112 = __Block_byref_object_dispose__4;
              v113 = 0;
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_5;
              v82[3] = &unk_2789C7448;
              v83 = v52;
              v84 = &v108;
              v85 = v56 + 1;
              v86 = v54;
              [v83 performBlockAndWait:v82];
              if (handlerCopy && v55 == v56)
              {
                handlerCopy[2](handlerCopy, v109[5]);
              }

              _Block_object_dispose(&v108, 8);
            }

            ++v57;
            ++v56;
          }

          while (v54 != v59);
        }
      }

      else
      {
        NSLog(&cfstr_SEmptyResultsI.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]", v65);
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }
      }
    }
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 save:&v5];
  v3 = v5;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_SaveError.isa, v3);
  }

  [*(a1 + 32) reset];
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    NSLog(&cfstr_SaveError.isa, *(*(*(a1 + 40) + 8) + 40));
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 32) reset];
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    NSLog(&cfstr_SaveError.isa, *(*(*(a1 + 40) + 8) + 40));
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 32) reset];
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 executeRequest:v1 error:&v6];
  v4 = v6;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_SApDeleteError.isa, "[TBCoreDataSource cacheFetchResponse:completionHandler:]_block_invoke_4", v4);
  }
}

void __57__TBCoreDataSource_cacheFetchResponse_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    NSLog(&cfstr_SaveError.isa, *(*(*(a1 + 40) + 8) + 40));
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 32) reset];
  }
}

- (void)removeAllWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_transaction_create();
  v6 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  persistenceManager = [(TBCoreDataSource *)self persistenceManager];
  persistenceCoordinator = [persistenceManager persistenceCoordinator];
  [v6 setPersistentStoreCoordinator:persistenceCoordinator];

  NSLog(&cfstr_SRemovingAll.isa, "[TBCoreDataSource removeAllWithCompletionHandler:]");
  [TBNetworkMO removeAllNetworksInMOC:v6];
  [TBTileMO removeAllTilesInMOC:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__TBCoreDataSource_removeAllWithCompletionHandler___block_invoke;
  v11[3] = &unk_2789C6BA8;
  v12 = v6;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = v6;
  [v10 performBlockAndWait:v11];
}

void __51__TBCoreDataSource_removeAllWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  [v2 save:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_SaveError.isa, v3);
  }

  [*(a1 + 32) reset];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler
{
  handlerCopy = handler;
  storeURL = [(TBCoreDataStoreDescriptor *)self->_descriptor storeURL];
  path = [storeURL path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v10 = [defaultManager attributesOfItemAtPath:path error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [v10 objectForKey:*MEMORY[0x277CCA1C0]];
    longLongValue = [v13 longLongValue];
    if (longLongValue > networks)
    {
      NSLog(&cfstr_LocalStoreSize.isa, longLongValue, networks);
      [(TBCoreDataSource *)self removeAllWithCompletionHandler:handlerCopy];
    }
  }

  else
  {
    NSLog(&cfstr_FailedToGetAtt.isa, v11);
  }
}

- (void)removeWithFetchRequest:(id)request completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  localFetchDescriptor = [descriptor localFetchDescriptor];
  fetchRequest = [localFetchDescriptor fetchRequest];

  if (fetchRequest)
  {
    NSLog(&cfstr_SRemovingAllMa.isa, "[TBCoreDataSource removeWithFetchRequest:completionHandler:]", fetchRequest);
    v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:fetchRequest];
    v10 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    persistenceManager = [(TBCoreDataSource *)self persistenceManager];
    persistenceCoordinator = [persistenceManager persistenceCoordinator];
    [v10 setPersistentStoreCoordinator:persistenceCoordinator];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__TBCoreDataSource_removeWithFetchRequest_completionHandler___block_invoke;
    v16[3] = &unk_2789C6C70;
    v17 = v10;
    v18 = v9;
    v19 = fetchRequest;
    v13 = v9;
    v14 = v10;
    [v14 performBlockAndWait:v16];
  }

  else
  {
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"localFetchDescriptor is nil";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [TBError fetchMissingParametersErrorWithUserInfo:v15];

    v13 = [TBErrorFetchResponse responseWithError:v14];
    [requestCopy handleResponse:v13];
  }
}

void __61__TBCoreDataSource_removeWithFetchRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = 0;
  v5 = [v3 executeRequest:v4 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_SError.isa, "[TBCoreDataSource removeWithFetchRequest:completionHandler:]_block_invoke", v6);
  }

  else
  {
    v8 = [*(a1 + 48) entityName];
    v9 = [*(a1 + 48) predicate];
    NSLog(&cfstr_SRemovedItemsT.isa, "[TBCoreDataSource removeWithFetchRequest:completionHandler:]_block_invoke", v8, v9);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_createNewNetwork:(id)network tile:(id)tile withMOC:(id)c
{
  v46 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  tileCopy = tile;
  cCopy = c;
  context = objc_autoreleasePoolPush();
  v40 = cCopy;
  v9 = [TBNetworkMO generateNewNetworkObjectFromMOC:cCopy];
  [v9 setAuthMask:{objc_msgSend(networkCopy, "authMask")}];
  remoteIdentifier = [networkCopy remoteIdentifier];
  [v9 setIdentifier:remoteIdentifier];

  sSID = [networkCopy SSID];
  [v9 setName:sSID];

  popularityScore = [networkCopy popularityScore];
  [v9 setPopularityScoreValue:{objc_msgSend(popularityScore, "score")}];

  qualityScore = [networkCopy qualityScore];
  [v9 setQualityScoreValue:{objc_msgSend(qualityScore, "score")}];

  [v9 setMoving:{objc_msgSend(networkCopy, "isMoving")}];
  [v9 setSuspicious:{objc_msgSend(networkCopy, "isSuspicious")}];
  [v9 setCaptive:{objc_msgSend(networkCopy, "isCaptive")}];
  [v9 setPublic:{objc_msgSend(networkCopy, "isPublic")}];
  [v9 setLowQuality:{objc_msgSend(networkCopy, "isLowQuality")}];
  date = [MEMORY[0x277CBEAA8] date];
  [v9 setCreated:date];

  ownerIdentifiers = [networkCopy ownerIdentifiers];
  [v9 setOwnerIdentifiers:ownerIdentifiers];

  [v9 setType:{objc_msgSend(networkCopy, "type")}];
  [v9 setVenueGroup:{objc_msgSend(networkCopy, "venueGroup")}];
  [v9 setVenueType:{objc_msgSend(networkCopy, "venueType")}];
  v16 = objc_alloc_init(TBCentroidCalculator);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v39 = networkCopy;
  accessPoints = [networkCopy accessPoints];
  v18 = [accessPoints countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(accessPoints);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        bSSID = [v22 BSSID];

        if (bSSID)
        {
          v25 = [TBAccessPointMO generateNewAccessPointObjectFromMOC:v40];
          bSSID2 = [v22 BSSID];
          [v25 setBssid:bSSID2];

          [v22 latitude];
          [v25 setLat:?];
          [v22 longitude];
          [v25 setLng:?];
          [v22 latitude];
          v28 = v27;
          [v22 longitude];
          [(TBCentroidCalculator *)v16 addLatitude:v28 longitude:v29];
          popularityScore2 = [v22 popularityScore];
          [v25 setPopularityScoreValue:{objc_msgSend(popularityScore2, "score")}];

          qualityScore2 = [v22 qualityScore];
          [v25 setQualityScoreValue:{objc_msgSend(qualityScore2, "score")}];

          [v25 setEdge:{objc_msgSend(v22, "isEdge")}];
          [v25 setTcpGood:{objc_msgSend(v22, "isTCPGood")}];
          [v25 setNetwork:v9];
          date2 = [MEMORY[0x277CBEAA8] date];
          [v25 setCreated:date2];

          accessPoints2 = [v9 accessPoints];
          v34 = [accessPoints2 setByAddingObject:v25];
        }

        objc_autoreleasePoolPop(v23);
      }

      v19 = [accessPoints countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v19);
  }

  [(TBCentroidCalculator *)v16 centroid];
  v36 = v35;
  [v9 setCentroidLat:?];
  [v9 setCentroidLng:v36];
  if (tileCopy)
  {
    [tileCopy addNetworksObject:v9];
  }

  objc_autoreleasePoolPop(context);
}

- (void)importObjectsWithArray:(id)array completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  handlerCopy = handler;
  if (arrayCopy && [arrayCopy count])
  {
    context = [(TBCoreDataSource *)self context];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__TBCoreDataSource_importObjectsWithArray_completionHandler___block_invoke;
    v12[3] = &unk_2789C7470;
    v13 = arrayCopy;
    selfCopy = self;
    v15 = handlerCopy;
    [context performBlock:v12];

    v9 = v13;
  }

  else
  {
    v10 = [TBError alloc];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"nil or empty objects to import";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [(TBError *)v10 initWithType:0 userInfo:v9];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __61__TBCoreDataSource_importObjectsWithArray_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v8 context];
        [v8 _createNewNetworkFromDictionary:v7 withMOC:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 40) context];
  v11 = [v10 insertedObjects];
  NSLog(&cfstr_InsertedLuObje.isa, [v11 count]);

  v12 = [*(a1 + 40) context];
  v14 = 0;
  [v12 save:&v14];
  v13 = v14;

  if (v13)
  {
    NSLog(&cfstr_SFailedToSaveW.isa, "[TBCoreDataSource importObjectsWithArray:completionHandler:]_block_invoke", v13);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_createNewNetworkFromDictionary:(id)dictionary withMOC:(id)c
{
  v66 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  cCopy = c;
  v6 = [TBNetworkMO generateNewNetworkObjectFromMOC:?];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [v6 setTimestamp:v8];

  date2 = [MEMORY[0x277CBEAA8] date];
  [v6 setCreated:date2];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"authMask"];

  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"authMask"];
    [v6 setAuthMask:{objc_msgSend(v11, "integerValue")}];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];

  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    [v6 setIdentifier:v13];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"SSID"];

  if (v14)
  {
    v15 = [dictionaryCopy objectForKeyedSubscript:@"SSID"];
    [v6 setName:v15];
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"popularityScoreValue"];

  if (v16)
  {
    v17 = [dictionaryCopy objectForKeyedSubscript:@"popularityScoreValue"];
    [v6 setPopularityScoreValue:{objc_msgSend(v17, "intValue")}];
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"qualityScoreValue"];

  if (v18)
  {
    v19 = [dictionaryCopy objectForKeyedSubscript:@"qualityScoreValue"];
    [v6 setQualityScoreValue:{objc_msgSend(v19, "intValue")}];
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"moving"];

  if (v20)
  {
    v21 = [dictionaryCopy objectForKeyedSubscript:@"moving"];
    [v6 setMoving:{objc_msgSend(v21, "BOOLValue")}];
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"suspicious"];

  if (v22)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"suspicious"];
    [v6 setSuspicious:{objc_msgSend(v23, "BOOLValue")}];
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"captive"];

  if (v24)
  {
    v25 = [dictionaryCopy objectForKeyedSubscript:@"captive"];
    [v6 setCaptive:{objc_msgSend(v25, "BOOLValue")}];
  }

  v26 = [dictionaryCopy objectForKeyedSubscript:@"public"];

  if (v26)
  {
    v27 = [dictionaryCopy objectForKeyedSubscript:@"public"];
    [v6 setPublic:{objc_msgSend(v27, "BOOLValue")}];
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"public"];

  if (v28)
  {
    v29 = [dictionaryCopy objectForKeyedSubscript:@"lowQuality"];
    [v6 setLowQuality:{objc_msgSend(v29, "BOOLValue")}];
  }

  v30 = [dictionaryCopy objectForKeyedSubscript:@"ownerIdentifiers"];

  if (v30)
  {
    v31 = [dictionaryCopy objectForKeyedSubscript:@"ownerIdentifiers"];
    [v6 setOwnerIdentifiers:v31];
  }

  v32 = [dictionaryCopy objectForKeyedSubscript:@"type"];

  if (v32)
  {
    v33 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    [v6 setType:{objc_msgSend(v33, "integerValue")}];
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:@"venueGroup"];

  if (v34)
  {
    v35 = [dictionaryCopy objectForKeyedSubscript:@"venueGroup"];
    [v6 setVenueGroup:{objc_msgSend(v35, "integerValue")}];
  }

  v36 = [dictionaryCopy objectForKeyedSubscript:@"venueType"];

  if (v36)
  {
    v37 = [dictionaryCopy objectForKeyedSubscript:@"venueType"];
    [v6 setVenueType:{objc_msgSend(v37, "intValue")}];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [dictionaryCopy objectForKeyedSubscript:{@"accessPoints", dictionaryCopy}];
  v38 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v38)
  {
    v39 = v38;
    v59 = *v62;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v61 + 1) + 8 * i);
        v42 = [TBAccessPointMO generateNewAccessPointObjectFromMOC:cCopy];
        v43 = [v41 objectForKeyedSubscript:@"bssid"];
        [v42 setBssid:v43];

        v44 = [v41 objectForKeyedSubscript:@"latitude"];
        [v44 doubleValue];
        [v42 setLat:?];

        v45 = [v41 objectForKeyedSubscript:@"longitude"];
        [v45 doubleValue];
        [v42 setLng:?];

        v46 = [v41 objectForKeyedSubscript:@"popularityScoreValue"];

        if (v46)
        {
          v47 = [v41 objectForKeyedSubscript:@"popularityScoreValue"];
          [v42 setPopularityScoreValue:{objc_msgSend(v47, "intValue")}];
        }

        v48 = [v41 objectForKeyedSubscript:@"qualityScoreValue"];

        if (v48)
        {
          v49 = [v41 objectForKeyedSubscript:@"qualityScoreValue"];
          [v42 setQualityScoreValue:{objc_msgSend(v49, "intValue")}];
        }

        v50 = [v41 objectForKeyedSubscript:@"edge"];

        if (v50)
        {
          v51 = [v41 objectForKeyedSubscript:@"edge"];
          [v42 setEdge:{objc_msgSend(v51, "BOOLValue")}];
        }

        v52 = [v41 objectForKeyedSubscript:@"tcpGood"];

        if (v52)
        {
          v53 = [v41 objectForKeyedSubscript:@"tcpGood"];
          [v42 setTcpGood:{objc_msgSend(v53, "BOOLValue")}];
        }

        [v42 setNetwork:v6];
        date3 = [MEMORY[0x277CBEAA8] date];
        [v42 setCreated:date3];

        accessPoints = [v6 accessPoints];
        v56 = [accessPoints setByAddingObject:v42];
      }

      v39 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v39);
  }
}

@end