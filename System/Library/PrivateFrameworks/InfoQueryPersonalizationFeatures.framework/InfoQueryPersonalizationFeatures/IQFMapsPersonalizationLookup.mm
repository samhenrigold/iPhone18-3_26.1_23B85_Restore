@interface IQFMapsPersonalizationLookup
+ (id)_aggregateLifeEvents:(id)events;
+ (id)_muidForKnosisAnswer:(id)answer entityIDToMuid:(id)muid;
+ (id)_parseECRRankedItem:(id)item locationMUIDs:(id)ds;
+ (id)_parseKnosisAnswer:(id)answer entityIDToMuid:(id)muid;
+ (id)sharedMapsPersonalizationLookup;
+ (void)_fetchResultsForEntityIds:(id)ids knosisServer:(id)server completionHandler:(id)handler;
- (IQFMapsPersonalizationLookup)init;
- (id)eventsAtLocations:(id)locations;
- (void)_fetchECRResultForLocationMUIDs:(id)ds completionHandler:(id)handler;
- (void)eventsAtLocations:(id)locations completionHandler:(id)handler;
- (void)init;
@end

@implementation IQFMapsPersonalizationLookup

- (IQFMapsPersonalizationLookup)init
{
  v13.receiver = self;
  v13.super_class = IQFMapsPersonalizationLookup;
  v2 = [(IQFMapsPersonalizationLookup *)&v13 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v12 = 0;
  v3 = [objc_alloc(MEMORY[0x277D1F410]) initWithMode:4 warmup:1 error:&v12];
  v4 = v12;
  ecrClient = v2->_ecrClient;
  v2->_ecrClient = v3;

  if (v2->_ecrClient)
  {
    initWithEntitySubgraphView = [objc_alloc(MEMORY[0x277D1F450]) initWithEntitySubgraphView];
    knosisServer = v2->_knosisServer;
    v2->_knosisServer = initWithEntitySubgraphView;

LABEL_4:
    v9 = v2;
    goto LABEL_8;
  }

  v10 = IQFLogCategoryDefault(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [IQFMapsPersonalizationLookup init];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)sharedMapsPersonalizationLookup
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedMapsPersonalizationLookup_personalizationLookup)
  {
    v3 = objc_opt_new();
    v4 = sharedMapsPersonalizationLookup_personalizationLookup;
    sharedMapsPersonalizationLookup_personalizationLookup = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedMapsPersonalizationLookup_personalizationLookup;

  return v5;
}

- (id)eventsAtLocations:(id)locations
{
  locationsCopy = locations;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__IQFMapsPersonalizationLookup_eventsAtLocations___block_invoke;
  v9[3] = &unk_2797ACDA0;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(IQFMapsPersonalizationLookup *)self eventsAtLocations:locationsCopy completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__IQFMapsPersonalizationLookup_eventsAtLocations___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)eventsAtLocations:(id)locations completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  v8 = IQFLogCategoryDefault(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup eventsAtLocations:completionHandler:];
  }

  v9 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = locationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        muid = [*(*(&v32 + 1) + 8 * v14) muid];
        [v9 addObject:muid];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v17 = IQFLogCategoryDefault(v16);
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "ecrCallForLocations", " enableTelemetry=YES ", buf, 2u);
  }

  allObjects = [v9 allObjects];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke;
  v25[3] = &unk_2797ACDF0;
  v29 = handlerCopy;
  v30 = v18;
  v26 = v20;
  v27 = v9;
  selfCopy = self;
  v22 = v9;
  v23 = handlerCopy;
  v24 = v20;
  [(IQFMapsPersonalizationLookup *)self _fetchECRResultForLocationMUIDs:allObjects completionHandler:v25];
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ecrCallForLocations", &unk_254BA4B52, buf, 2u);
  }

  v11 = IQFLogCategoryDefault(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v36 = v6;
    if (v12)
    {
      __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_1();
    }

    v13 = objc_opt_new();
    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v5;
    obj = [v5 rankedResults];
    v40 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v40)
    {
      v39 = *v54;
      do
      {
        v14 = 0;
        do
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = v14;
          v15 = *(*(&v53 + 1) + 8 * v14);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v16 = [v15 rankedItems];
          v17 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v50;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v50 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v49 + 1) + 8 * i);
                v22 = [IQFMapsPersonalizationLookup _parseECRRankedItem:v21 locationMUIDs:*(a1 + 40)];
                if (v22)
                {
                  [v13 addObject:v22];
                  v23 = [v21 entityID];
                  v24 = [v23 stringValue];

                  v25 = [v22 muid];
                  [v42 setObject:v25 forKeyedSubscript:v24];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v18);
          }

          v14 = v41 + 1;
        }

        while (v41 + 1 != v40);
        v40 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v40);
    }

    v27 = IQFLogCategoryDefault(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_2();
    }

    v28 = os_signpost_id_generate(*(a1 + 32));
    v29 = *(a1 + 32);
    v30 = v29;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254B9D000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "fetchResultsForEntityIds", &unk_254BA4B52, buf, 2u);
    }

    v31 = *(a1 + 48);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_50;
    v43[3] = &unk_2797ACDC8;
    v32 = *(a1 + 32);
    v48 = v28;
    v44 = v32;
    v45 = v13;
    v47 = *(a1 + 56);
    v6 = v36;
    v46 = v36;
    v33 = v13;
    v34 = v42;
    [v31 _fetchResultsForEntityIds:v42 completionHandler:v43];

    v5 = v37;
  }

  else
  {
    if (v12)
    {
      __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_3();
    }

    v35 = *(a1 + 56);
    v34 = objc_opt_new();
    (*(v35 + 16))(v35, v34, v6);
  }
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchResultsForEntityIds", &unk_254BA4B52, v7, 2u);
  }

  [*(a1 + 40) addObjectsFromArray:v3];
  (*(*(a1 + 56) + 16))();
}

- (void)_fetchECRResultForLocationMUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [ds componentsJoinedByString:{@", "}];
  v8 = IQFLogCategoryDefault(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup _fetchECRResultForLocationMUIDs:completionHandler:];
  }

  v9 = objc_alloc(MEMORY[0x277D1F418]);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"locationWithMuid([%@])", v7];
  v11 = [v9 initWithKgq:v10 text:0 mode:4 includeFeatures:1];

  v13 = IQFLogCategoryDefault(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup _fetchECRResultForLocationMUIDs:completionHandler:];
  }

  [(GDEntityResolutionInProcessTextClient *)self->_ecrClient resolveEntitiesForRequest:v11 completionHandler:handlerCopy];
}

+ (void)_fetchResultsForEntityIds:(id)ids knosisServer:(id)server completionHandler:(id)handler
{
  idsCopy = ids;
  serverCopy = server;
  handlerCopy = handler;
  allKeys = [idsCopy allKeys];
  if ([allKeys count])
  {
    v12 = objc_alloc(MEMORY[0x277D1F440]);
    v13 = MEMORY[0x277CCACA8];
    v14 = [allKeys componentsJoinedByString:{@", "}];
    v15 = [v13 stringWithFormat:@"searchEntityByLocation([%@])", v14];
    v16 = [v12 initWithKGQ:v15 query:&stru_286709E90 limit:&unk_28670A840 offset:&unk_28670A858];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke;
    v18[3] = &unk_2797ACE18;
    v20 = handlerCopy;
    selfCopy = self;
    v19 = idsCopy;
    [serverCopy executeKGQ:v16 completionHandler:v18];
  }

  else
  {
    v17 = objc_opt_new();
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

void __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && (v3 = [v3 status], v3 == 1))
  {
    v5 = IQFLogCategoryDefault(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_1(v4, v5);
    }

    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v4 answers];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 48) _parseKnosisAnswer:*(*(&v16 + 1) + 8 * v11) entityIDToMuid:*(a1 + 32)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [*(a1 + 48) _aggregateLifeEvents:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = IQFLogCategoryDefault(v3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_2(v4, v14);
    }

    v15 = *(a1 + 40);
    v6 = objc_opt_new();
    (*(v15 + 16))(v15, v6);
  }
}

+ (id)_parseECRRankedItem:(id)item locationMUIDs:(id)ds
{
  itemCopy = item;
  dsCopy = ds;
  sourceID = [itemCopy sourceID];
  value = [sourceID value];

  v9 = [value length];
  if (v9 && (v9 = [dsCopy containsObject:value], (v9 & 1) != 0))
  {
    v10 = IQFLogCategoryDefault(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[IQFMapsPersonalizationLookup _parseECRRankedItem:locationMUIDs:];
    }

    features = [itemCopy features];
    locationLastExecutionAge = [features locationLastExecutionAge];

    if (locationLastExecutionAge)
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-locationLastExecutionAge];
    }

    else
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    }
    v13 = ;
    v15 = [IQFMapsPersonalizationResult alloc];
    v16 = MEMORY[0x277CCABB0];
    features2 = [itemCopy features];
    [features2 locationTrendingPopularity];
    v18 = [v16 numberWithDouble:?];
    v19 = MEMORY[0x277CCABB0];
    features3 = [itemCopy features];
    [features3 locationPopularityGivenSpecificGeoHash];
    v21 = [v19 numberWithDouble:?];
    v22 = MEMORY[0x277CCABB0];
    [itemCopy entityRelevance];
    v23 = [v22 numberWithDouble:?];
    v14 = [(IQFMapsPersonalizationResult *)v15 initWithMUID:value resultType:10 eventName:0 startEventDate:0 endEventDate:0 terminal:0 flightCode:0 ticketNumber:0 numberOfVisits:v18 numberOfVisitsGivenLocation:v21 dateOfLastVisit:v13 entityRelevanceScore:v23 numberOfGuests:0];

    v25 = IQFLogCategoryDefault(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      +[IQFMapsPersonalizationLookup _parseECRRankedItem:locationMUIDs:];
    }
  }

  else
  {
    v13 = IQFLogCategoryDefault(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[IQFMapsPersonalizationLookup _parseECRRankedItem:locationMUIDs:];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_parseKnosisAnswer:(id)answer entityIDToMuid:(id)muid
{
  v90 = *MEMORY[0x277D85DE8];
  answerCopy = answer;
  muidCopy = muid;
  v8 = [self _muidForKnosisAnswer:answerCopy entityIDToMuid:muidCopy];
  if (!v8)
  {
    v63 = 0;
    goto LABEL_67;
  }

  v66 = muidCopy;
  v67 = v8;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  facts = [answerCopy facts];
  v10 = [facts countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (!v10)
  {

    v59 = 0;
    v13 = 0;
    v12 = 0;
    v73 = 0;
LABEL_63:
    v64 = IQFLogCategoryDefault(v58);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      [IQFMapsPersonalizationLookup _parseKnosisAnswer:v67 entityIDToMuid:v59];
    }

    goto LABEL_65;
  }

  v11 = v10;
  v73 = 0;
  v74 = 0;
  v12 = 0;
  v13 = 0;
  v71 = *v84;
  v68 = facts;
  do
  {
    v14 = 0;
    v69 = v11;
    do
    {
      if (*v84 != v71)
      {
        objc_enumerationMutation(facts);
      }

      v72 = v14;
      v15 = *(*(&v83 + 1) + 8 * v14);
      predicateId = [v15 predicateId];
      if ([predicateId isEqualToString:@"PS33"])
      {
        objectID = [v15 objectID];

        v13 = objectID;
        goto LABEL_36;
      }

      v18 = predicateId;
      if ([predicateId isEqualToString:@"nm_hasDate"])
      {
        v70 = v13;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        qualifiers = [v15 qualifiers];
        v20 = [qualifiers countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (!v20)
        {
          goto LABEL_35;
        }

        v21 = v20;
        v22 = *v80;
        while (1)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v80 != v22)
            {
              objc_enumerationMutation(qualifiers);
            }

            v24 = *(*(&v79 + 1) + 8 * i);
            predicateId2 = [v24 predicateId];
            v26 = [predicateId2 isEqualToString:@"nm_imputedStartTime"];

            if (v26)
            {
              v27 = MEMORY[0x277CBEAA8];
              objectID2 = [v24 objectID];
              [objectID2 doubleValue];
              v29 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
              v30 = v12;
              v12 = v29;
            }

            else
            {
              predicateId3 = [v24 predicateId];
              v32 = [predicateId3 isEqualToString:@"nm_imputedEndTime"];

              if (!v32)
              {
                goto LABEL_20;
              }

              v33 = MEMORY[0x277CBEAA8];
              objectID2 = [v24 objectID];
              [objectID2 doubleValue];
              v34 = [v33 dateWithTimeIntervalSinceReferenceDate:?];
              v30 = v73;
              v73 = v34;
            }

LABEL_20:
            predicateId = v18;
          }

          v21 = [qualifiers countByEnumeratingWithState:&v79 objects:v88 count:16];
          if (!v21)
          {
            goto LABEL_35;
          }
        }
      }

      if ([predicateId isEqualToString:@"PS72"])
      {
        v70 = v13;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        qualifiers = [v15 qualifiers];
        v35 = [qualifiers countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v76;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v76 != v37)
              {
                objc_enumerationMutation(qualifiers);
              }

              v39 = *(*(&v75 + 1) + 8 * j);
              predicateId4 = [v39 predicateId];
              v41 = [predicateId4 isEqualToString:@"PS396"];

              if (v41)
              {
                objectID3 = [v39 objectID];
                v43 = [objectID3 isEqual:@"EKCalendarItemIdentifier"];

                v44 = v74;
                if (v43)
                {
                  v44 = 9;
                }

                v74 = v44;
              }

              predicateId = v18;
            }

            v36 = [qualifiers countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v36);
        }

LABEL_35:

        v11 = v69;
        v13 = v70;
        facts = v68;
      }

      else
      {
        if (![predicateId isEqual:@"nm_sgEventType"])
        {
          if (![predicateId isEqualToString:@"PS1"])
          {
            goto LABEL_36;
          }

          objectID4 = [v15 objectID];
          v49 = [objectID4 isEqualToString:@"SB764"];

          v47 = v74;
          if (v49)
          {
            v47 = 1;
          }

          goto LABEL_49;
        }

        objectID5 = [v15 objectID];
        v46 = [objectID5 isEqualToString:@"FlightReservation"];

        if (v46)
        {
          v47 = 2;
LABEL_49:
          v74 = v47;
          goto LABEL_36;
        }

        objectID6 = [v15 objectID];
        v51 = [objectID6 isEqualToString:@"FoodEstablishmentReservation"];

        if (v51)
        {
          v47 = 4;
          goto LABEL_49;
        }

        objectID7 = [v15 objectID];
        v53 = [objectID7 isEqualToString:@"LodgingReservation"];

        if (v53)
        {
          v47 = 5;
          goto LABEL_49;
        }

        objectID8 = [v15 objectID];
        v55 = [objectID8 isEqualToString:@"RentalCarReservation"];

        v56 = v74;
        if (v55)
        {
          v56 = 6;
        }

        v74 = v56;
      }

LABEL_36:

      v14 = v72 + 1;
    }

    while (v72 + 1 != v11);
    v57 = [facts countByEnumeratingWithState:&v83 objects:v89 count:16];
    v11 = v57;
  }

  while (v57);

  v59 = v74;
  if (!v74)
  {
    goto LABEL_63;
  }

  v60 = isCalendarBasedPersonalizationResultType(v74);
  if (v60)
  {
    if (!v12 || (v60 = [v12 isDateInTodayOrFuture], (v60 & 1) == 0))
    {
      v64 = IQFLogCategoryDefault(v60);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [IQFMapsPersonalizationLookup _parseKnosisAnswer:v67 entityIDToMuid:v74];
      }

LABEL_65:

      v63 = 0;
      v62 = v73;
      goto LABEL_66;
    }
  }

  v61 = IQFLogCategoryDefault(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup _parseKnosisAnswer:v67 entityIDToMuid:v74];
  }

  v62 = v73;
  v63 = [[IQFMapsPersonalizationResult alloc] initWithMUID:v67 resultType:v74 eventName:v13 startEventDate:v12 endEventDate:v73 terminal:0 flightCode:0 ticketNumber:0 numberOfVisits:0 numberOfVisitsGivenLocation:0 dateOfLastVisit:0 entityRelevanceScore:&unk_28670A858 numberOfGuests:0];
LABEL_66:

  muidCopy = v66;
  v8 = v67;
LABEL_67:

  return v63;
}

+ (id)_aggregateLifeEvents:(id)events
{
  v42 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v31 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = eventsCopy;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if ([v10 resultType] == 1)
        {
          muid = [v10 muid];
          v12 = [v4 objectForKeyedSubscript:muid];
          if (v12)
          {
            v13 = v12;
            v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
          }

          else
          {
            v14 = &unk_28670A870;
          }

          [v4 setValue:v14 forKey:muid];
          v15 = [v5 objectForKeyedSubscript:muid];
          endEventDate = [v10 endEventDate];
          v17 = endEventDate;
          if (v15)
          {
            v18 = [endEventDate laterDate:v15];

            v17 = v18;
          }

          [v5 setValue:v17 forKey:muid];
        }

        else
        {
          [v31 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [v4 allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        v24 = [IQFMapsPersonalizationResult alloc];
        v25 = [v4 objectForKey:v23];
        v26 = [v5 objectForKey:v23];
        v27 = [(IQFMapsPersonalizationResult *)v24 initWithMUID:v23 resultType:1 eventName:0 startEventDate:0 endEventDate:0 terminal:0 flightCode:0 ticketNumber:0 numberOfVisits:v25 numberOfVisitsGivenLocation:0 dateOfLastVisit:v26 entityRelevanceScore:0 numberOfGuests:0];

        [v31 addObject:v27];
      }

      v20 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }

  return v31;
}

+ (id)_muidForKnosisAnswer:(id)answer entityIDToMuid:(id)muid
{
  v49 = *MEMORY[0x277D85DE8];
  muidCopy = muid;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  parents = [answer parents];
  v7 = [parents countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    v31 = parents;
    v27 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(parents);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        facts = [v11 facts];
        v32 = [facts countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v32)
        {
          v13 = *v39;
          v28 = i;
          v29 = v8;
          v33 = facts;
          v30 = *v39;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v39 != v13)
              {
                objc_enumerationMutation(facts);
              }

              v15 = *(*(&v38 + 1) + 8 * j);
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              qualifiers = [v15 qualifiers];
              v17 = [qualifiers countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v35;
                while (2)
                {
                  for (k = 0; k != v18; ++k)
                  {
                    if (*v35 != v19)
                    {
                      objc_enumerationMutation(qualifiers);
                    }

                    v21 = *(*(&v34 + 1) + 8 * k);
                    predicateId = [v21 predicateId];
                    v23 = [predicateId isEqual:@"PS107"];

                    if (v23)
                    {
                      objectID = [v21 objectID];
                      v25 = [muidCopy objectForKey:objectID];

                      if (v25)
                      {

                        parents = v31;
                        goto LABEL_27;
                      }
                    }
                  }

                  v18 = [qualifiers countByEnumeratingWithState:&v34 objects:v46 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              facts = v33;
              v13 = v30;
            }

            parents = v31;
            v9 = v27;
            i = v28;
            v8 = v29;
            v32 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v32);
        }
      }

      v8 = [parents countByEnumeratingWithState:&v42 objects:v48 count:16];
      v25 = 0;
    }

    while (v8);
  }

  else
  {
    v25 = 0;
  }

LABEL_27:

  return v25;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_254B9D000, v0, OS_LOG_TYPE_ERROR, "IQFMapsPersonalizationLookup: Unable to initialize GDEntityResolutionInProcessTextClient with error: %@", v1, 0xCu);
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchECRResultForLocationMUIDs:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchECRResultForLocationMUIDs:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 answers];
  [v3 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_254B9D000, a2, OS_LOG_TYPE_DEBUG, "IQFMapsPersonalizationLookup: Knosis returned result with %tu answers", v4, 0xCu);
}

void __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a1 status];
  v5 = [a1 errorMessage];
  v6 = 134218242;
  v7 = v4;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_254B9D000, a2, OS_LOG_TYPE_DEBUG, "IQFMapsPersonalizationLookup: Knosis returned status: %tu, error: %@", &v6, 0x16u);
}

+ (void)_parseECRRankedItem:locationMUIDs:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_parseECRRankedItem:locationMUIDs:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_parseECRRankedItem:locationMUIDs:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_254B9D000, v0, OS_LOG_TYPE_ERROR, "IQFMapsPersonalizationLookup: no sourceID for ECR item or sourceID does not match location MUIDs: %@", v1, 0xCu);
}

+ (void)_parseKnosisAnswer:(uint64_t)a1 entityIDToMuid:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_254B9D000, v2, v3, "IQFMapsPersonalizationLookup: Found personalization result of type %tu for muid: %@", v4, DWORD2(v4));
}

+ (void)_parseKnosisAnswer:(uint64_t)a1 entityIDToMuid:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_254B9D000, v2, v3, "IQFMapsPersonalizationLookup: Skipping personalization result of type %tu for muid: %@ because start date is missing or in the past", v4, DWORD2(v4));
}

+ (void)_parseKnosisAnswer:(uint64_t)a1 entityIDToMuid:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_254B9D000, v2, v3, "IQFMapsPersonalizationLookup: Skipping personalization result of type %tu for muid: %@", v4, DWORD2(v4));
}

@end