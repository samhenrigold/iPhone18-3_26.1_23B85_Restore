@interface PGTripHighlightSharingSuggester
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
@end

@implementation PGTripHighlightSharingSuggester

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  optionsCopy = options;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  workingContext = [session workingContext];
  photoLibrary = [session photoLibrary];
  curationManager = [workingContext curationManager];
  curationContext = [session curationContext];
  serviceManager = [workingContext serviceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke;
  v26[3] = &unk_2788847A0;
  v27 = optionsCopy;
  v28 = loggingConnection;
  v29 = session;
  v30 = serviceManager;
  selfCopy = self;
  v32 = workingContext;
  v33 = photoLibrary;
  v34 = curationManager;
  v35 = curationContext;
  v14 = v6;
  v36 = v14;
  v15 = curationContext;
  v16 = curationManager;
  v17 = photoLibrary;
  v18 = workingContext;
  v19 = serviceManager;
  v20 = session;
  v21 = loggingConnection;
  v22 = optionsCopy;
  [v18 performSynchronousConcurrentGraphReadUsingBlock:v26];
  v23 = v36;
  v24 = v14;

  return v14;
}

void __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2)
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) universalStartDate];
  v5 = [*(a1 + 32) universalEndDate];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v62 = v3;
  if (v7)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v102 = v4;
      v103 = 2112;
      v104 = v6;
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Start date or end date invalid: %@ - %@", buf, 0x16u);
    }

    goto LABEL_67;
  }

  v61 = [v3 graph];
  [v61 allTripNodes];
  v10 = v9 = a1;
  v11 = MEMORY[0x277CCAC30];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke_189;
  v93[3] = &unk_278884778;
  v94 = *(v9 + 40);
  v12 = v4;
  v95 = v12;
  v13 = v6;
  v96 = v13;
  v14 = [v11 predicateWithBlock:v93];
  v60 = v10;
  v15 = [v10 filteredArrayUsingPredicate:v14];

  if (![v15 count])
  {
    v56 = *(v9 + 40);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v102 = v12;
      v103 = 2112;
      v104 = v13;
      _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No trips found between %@ and %@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  v58 = v13;
  v59 = v12;
  v16 = [v15 mutableCopy];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v63 = v9;
  obj = [*(v9 + 48) existingSuggestions];
  v17 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  v66 = v6;
  v67 = v4;
  v72 = v16;
  v65 = v15;
  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = v17;
  v19 = *v90;
  v64 = *v90;
  do
  {
    v20 = 0;
    v68 = v18;
    do
    {
      if (*v90 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v73 = *(*(&v89 + 1) + 8 * v20);
      if ([v73 subtype] == 102)
      {
        v70 = v20;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v75 = v15;
        v21 = [v75 countByEnumeratingWithState:&v85 objects:v99 count:16];
        if (!v21)
        {
          goto LABEL_31;
        }

        v22 = v21;
        v23 = *v86;
        while (1)
        {
          v24 = 0;
          do
          {
            if (*v86 != v23)
            {
              objc_enumerationMutation(v75);
            }

            v25 = *(*(&v85 + 1) + 8 * v24);
            v26 = objc_autoreleasePoolPush();
            if ([v16 containsObject:v25])
            {
              v27 = [v73 universalStartDate];
              v28 = [v73 universalEndDate];
              v29 = v27;
              if (!v29 || !v28)
              {
                goto LABEL_25;
              }

              v30 = v25;
              v31 = [v30 universalStartDate];
              v32 = [v30 universalEndDate];

              if ([v31 compare:v28] == 1)
              {

LABEL_25:
                goto LABEL_26;
              }

              v33 = [v32 compare:v29];

              v7 = v33 == -1;
              v16 = v72;
              if (!v7)
              {
                [v72 removeObject:v30];
              }
            }

LABEL_26:
            objc_autoreleasePoolPop(v26);
            ++v24;
          }

          while (v22 != v24);
          v34 = [v75 countByEnumeratingWithState:&v85 objects:v99 count:16];
          v22 = v34;
          if (!v34)
          {
LABEL_31:

            v6 = v66;
            v4 = v67;
            v19 = v64;
            v15 = v65;
            v18 = v68;
            v20 = v70;
            break;
          }
        }
      }

      v20 = v20 + 1;
    }

    while (v20 != v18);
    v18 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  }

  while (v18);
LABEL_34:

  if ([v16 count])
  {
    v74 = [[PGTitleGenerationContext alloc] initWithGraph:v61 serviceManager:*(v63 + 56)];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v71 = v16;
    v35 = [v71 countByEnumeratingWithState:&v81 objects:v98 count:16];
    if (v35)
    {
      v36 = v35;
      v76 = *v82;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v82 != v76)
          {
            objc_enumerationMutation(v71);
          }

          v38 = *(*(&v81 + 1) + 8 * i);
          v39 = objc_autoreleasePoolPush();
          v40 = *(v63 + 64);
          v41 = [v38 collection];
          v42 = [v41 momentNodes];
          v43 = [v42 temporaryArray];
          v44 = [v40 sharingSuggestionResultsForMomentNodes:v43 withWorkingContext:*(v63 + 72)];

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v45 = v44;
          v46 = [(PGEnrichableEventSuggestion *)v45 countByEnumeratingWithState:&v77 objects:v97 count:16];
          v47 = v45;
          if (v46)
          {
            v48 = v46;
            v49 = *v78;
LABEL_42:
            v50 = 0;
            while (1)
            {
              if (*v78 != v49)
              {
                objc_enumerationMutation(v45);
              }

              v51 = [*(*(&v77 + 1) + 8 * v50) person];
              v52 = [v51 isVerified];

              if (v52)
              {
                break;
              }

              if (v48 == ++v50)
              {
                v48 = [(PGEnrichableEventSuggestion *)v45 countByEnumeratingWithState:&v77 objects:v97 count:16];
                if (v48)
                {
                  goto LABEL_42;
                }

                v47 = v45;
                goto LABEL_56;
              }
            }

            v53 = v63;
            v47 = [[PGEnrichableEventSuggestion alloc] initWithType:1 subtype:102 enrichableEvent:v38 sharingSuggestionResults:v45 photoLibrary:*(v63 + 80) curationManager:*(v63 + 88) curationContext:*(v63 + 96) loggingConnection:*(v63 + 40) titleGenerationContext:v74];
            if (v47)
            {
              [*(v63 + 104) addObject:v47];
              if ([*(v63 + 32) allowNotification])
              {
                v54 = [*(v63 + 48) notificationProfile];
                if ([v54 eligibleForNotification])
                {
                  -[PGEnrichableEventSuggestion setNotificationQuality:](v47, "setNotificationQuality:", [v54 notificationQualityForEnrichableEvent:v38]);
                  if ([v54 shouldNotifyForSuggestion:v47 withOptions:*(v63 + 32)])
                  {
                    [(PGEnrichableEventSuggestion *)v47 setNotificationState:1];
                  }
                }

                v53 = v63;
              }

              v55 = [*(v53 + 104) count];
              if (v55 >= [*(v53 + 32) maximumNumberOfSuggestions])
              {

                objc_autoreleasePoolPop(v39);
                goto LABEL_64;
              }
            }
          }

LABEL_56:

          objc_autoreleasePoolPop(v39);
        }

        v36 = [v71 countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v36);
    }

LABEL_64:

    v6 = v66;
    v4 = v67;
    v15 = v65;
    v16 = v72;
  }

  else
  {
    v57 = *(v63 + 40);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v102 = v59;
      v103 = 2112;
      v104 = v58;
      _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Trips found between %@ and %@ are already covered in exising sharing suggestions", buf, 0x16u);
    }
  }

LABEL_66:
LABEL_67:
}

BOOL __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke_189(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  v6 = [v5 subsetWithEnoughScenesProcessed];
  v7 = [v6 subsetWithEnoughFacesProcessed];

  v8 = [v5 count];
  if (v8 == [v7 count])
  {
    v9 = a1[5];
    v10 = a1[6];
    v11 = v3;
    v12 = v9;
    v13 = v10;
    v14 = v13;
    v15 = 0;
    if (v12 && v13)
    {
      v16 = [v11 universalStartDate];
      v17 = [v11 universalEndDate];
      v15 = [v16 compare:v14] != 1 && objc_msgSend(v17, "compare:", v12) != -1;
    }
  }

  else
  {
    v18 = a1[4];
    v15 = 0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Not all moments analyzed for %@", &v20, 0xCu);
      v15 = 0;
    }
  }

  return v15;
}

@end