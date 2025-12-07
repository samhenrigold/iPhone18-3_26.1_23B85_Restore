@interface ATXActionPredictionHeuristics
+ (id)actionsWithLocationManager:(id)manager;
+ (id)addCacheExpirerNotification:(id)notification;
+ (id)nextCacheExpirationDate;
@end

@implementation ATXActionPredictionHeuristics

+ (id)actionsWithLocationManager:(id)manager
{
  v98 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  context = objc_autoreleasePoolPush();
  mEMORY[0x277CE8A40] = [MEMORY[0x277CE8A40] sharedInstance];
  heuristicsCached = [mEMORY[0x277CE8A40] heuristicsCached];
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__0;
  v86 = __Block_byref_object_dispose__0;
  v87 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.proactive.HeuristicInterpreter"];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850AE370];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  [v5 setClasses:v9 forSelector:sel_actionsAndExpirersForHeuristicsExcept_bundlePath_now_dataSourcesEndpoint_reply_ argumentIndex:0 ofReply:1];

  [v4 setRemoteObjectInterface:v5];
  [v4 resume];
  v10 = [objc_alloc(MEMORY[0x277CE89F0]) initWithLocationManager:managerCopy];
  v11 = [objc_alloc(MEMORY[0x277CE89E8]) initWithDevice:v10];
  v12 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_37];
  v13 = ATXHeuristicsBundlePath();
  v14 = [v10 now];
  listenerEndpoint = [v11 listenerEndpoint];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke_38;
  v81[3] = &unk_278C3BD90;
  v81[4] = &v82;
  [v12 actionsAndExpirersForHeuristicsExcept:heuristicsCached bundlePath:v13 now:v14 dataSourcesEndpoint:listenerEndpoint reply:v81];

  [v4 invalidate];
  objc_autoreleasePoolPop(v3);
  if (v83[5])
  {
    v17 = __atxlog_handle_heuristic(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v83[5] allKeys];
      *buf = 138412290;
      v97 = allKeys;
      _os_log_impl(&dword_23E3DF000, v17, OS_LOG_TYPE_DEFAULT, "Received results from HeuristicInterpreter: %@", buf, 0xCu);
    }

    v20 = __atxlog_handle_heuristic(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v97 = heuristicsCached;
      _os_log_impl(&dword_23E3DF000, v20, OS_LOG_TYPE_DEFAULT, "Using cached results: %@", buf, 0xCu);
    }

    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v83[5];
    v58 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v58)
    {
      v56 = *v78;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v78 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v77 + 1) + 8 * i);
          v61 = [v83[5] objectForKeyedSubscript:v23];
          actionMakers = [v61 actionMakers];
          v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(actionMakers, "count")}];
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v26 = actionMakers;
          v27 = [v26 countByEnumeratingWithState:&v88 objects:buf count:16];
          if (v27)
          {
            v28 = *v89;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v89 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                action = [*(*(&v88 + 1) + 8 * j) action];
                if (action)
                {
                  [v25 addObject:action];
                }
              }

              v27 = [v26 countByEnumeratingWithState:&v88 objects:buf count:16];
            }

            while (v27);
          }

          expirers = [v61 expirers];
          [mEMORY[0x277CE8A40] setObject:v25 expirers:expirers forKey:v23];

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v32 = v25;
          v33 = [v32 countByEnumeratingWithState:&v73 objects:v94 count:16];
          if (v33)
          {
            v34 = *v74;
            do
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v74 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v36 = *(*(&v73 + 1) + 8 * k);
                criteria = [v36 criteria];
                v38 = [criteria isRelevant:v22];

                if (v38)
                {
                  [v21 addObject:v36];
                }

                else
                {
                  v40 = __atxlog_handle_heuristic(v39);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v97 = v36;
                    _os_log_impl(&dword_23E3DF000, v40, OS_LOG_TYPE_DEFAULT, "Action is not relevant: %@", buf, 0xCu);
                  }
                }
              }

              v33 = [v32 countByEnumeratingWithState:&v73 objects:v94 count:16];
            }

            while (v33);
          }
        }

        v58 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v58);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v57 = heuristicsCached;
    v62 = [v57 countByEnumeratingWithState:&v69 objects:v93 count:16];
    if (v62)
    {
      v59 = *v70;
      do
      {
        for (m = 0; m != v62; ++m)
        {
          if (*v70 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v41 = [mEMORY[0x277CE8A40] objectForKey:*(*(&v69 + 1) + 8 * m) found:0];
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v42 = v41;
          v43 = [v42 countByEnumeratingWithState:&v65 objects:v92 count:16];
          if (v43)
          {
            v44 = *v66;
            do
            {
              for (n = 0; n != v43; ++n)
              {
                if (*v66 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v46 = *(*(&v65 + 1) + 8 * n);
                criteria2 = [v46 criteria];
                v48 = [criteria2 isRelevant:v22];

                if (v48)
                {
                  [v21 addObject:v46];
                }

                else
                {
                  v50 = __atxlog_handle_heuristic(v49);
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v97 = v46;
                    _os_log_impl(&dword_23E3DF000, v50, OS_LOG_TYPE_DEFAULT, "Action is no longer relevant: %@", buf, 0xCu);
                  }
                }
              }

              v43 = [v42 countByEnumeratingWithState:&v65 objects:v92 count:16];
            }

            while (v43);
          }
        }

        v62 = [v57 countByEnumeratingWithState:&v69 objects:v93 count:16];
      }

      while (v62);
    }

    [v21 sortWithOptions:16 usingComparator:&__block_literal_global_45];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v82, 8);

  objc_autoreleasePoolPop(context);

  return v21;
}

void __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_heuristic(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23E3DF000, v3, OS_LOG_TYPE_DEFAULT, "Error getting heuristic results - unable to establish XPC connection: %@", &v4, 0xCu);
  }
}

void __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!v5)
  {
    v10 = __atxlog_handle_heuristic(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_23E3DF000, v10, OS_LOG_TYPE_DEFAULT, "Error getting heuristic results - failed to compute actions and expirers for heuristics: %@", &v11, 0xCu);
    }
  }
}

uint64_t __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 heuristic];
  v6 = [v4 heuristic];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)addCacheExpirerNotification:(id)notification
{
  v3 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v3 defaultCenter];
  mEMORY[0x277CE8A40] = [MEMORY[0x277CE8A40] sharedInstance];
  v7 = [defaultCenter addObserverForName:@"com.apple.duetexpertd.heuristic.cache-expired" object:mEMORY[0x277CE8A40] queue:0 usingBlock:notificationCopy];

  return v7;
}

+ (id)nextCacheExpirationDate
{
  mEMORY[0x277CE8A40] = [MEMORY[0x277CE8A40] sharedInstance];
  firstExpirationDate = [mEMORY[0x277CE8A40] firstExpirationDate];

  return firstExpirationDate;
}

@end