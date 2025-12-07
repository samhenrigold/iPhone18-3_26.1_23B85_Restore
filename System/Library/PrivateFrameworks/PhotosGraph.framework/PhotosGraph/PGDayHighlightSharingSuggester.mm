@interface PGDayHighlightSharingSuggester
+ (BOOL)canSuggestHighlightNodeWithoutPeople:(id)people loggingConnection:(id)connection;
+ (BOOL)shouldSuggestHighlightNode:(id)node neighborScoreComputer:(id)computer loggingConnection:(id)connection;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
@end

@implementation PGDayHighlightSharingSuggester

+ (BOOL)canSuggestHighlightNodeWithoutPeople:(id)people loggingConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  connectionCopy = connection;
  if ([peopleCopy isInteresting] && (objc_msgSend(peopleCopy, "localEndDate"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(peopleCopy, "localStartDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", v8), v10 = v9, v8, v7, v10 >= 7200.0) && (objc_msgSend(peopleCopy, "collection"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "momentNodes"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "numberOfAssets"), v12, v11, v13 >= 0x1E))
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = peopleCopy;
      v18 = 2048;
      v19 = v10;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Considering highlight node %@ interesting enough to suggest without person detected in it (duration %.0f, number of assets %lu).", &v16, 0x20u);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)shouldSuggestHighlightNode:(id)node neighborScoreComputer:(id)computer loggingConnection:(id)connection
{
  v32 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  connectionCopy = connection;
  [computer neighborScoreWithHighlightNode:nodeCopy];
  v10 = v9;
  isInteresting = [nodeCopy isInteresting];
  isSmartInteresting = [nodeCopy isSmartInteresting];
  meaningLabels = [nodeCopy meaningLabels];
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413314;
    v23 = nodeCopy;
    v24 = 1024;
    v25 = isInteresting;
    v26 = 1024;
    v27 = isSmartInteresting;
    v28 = 2048;
    v29 = v10;
    v30 = 2112;
    v31 = meaningLabels;
    _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node %@: isInteresting %d, isSmartInteresting %d, neighborScore %.2f, meanings %@", &v22, 0x2Cu);
  }

  if (!((v10 > 0.43) | (isInteresting | isSmartInteresting) & 1) && ![meaningLabels count])
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v18 = "[Sharing Suggestion] Highlight node not interesting for sharing.";
      v19 = connectionCopy;
      v20 = 2;
      goto LABEL_14;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if ([nodeCopy isPartOfTrip])
  {
    v14 = +[PGGraph mostSignificantMeaningLabels];
    v15 = [meaningLabels intersectsSet:v14];

    v16 = os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        v22 = 138412290;
        v23 = meaningLabels;
        _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node is contained in a trip and meaningful enough for sharing (%@).", &v22, 0xCu);
      }

      goto LABEL_9;
    }

    if (v16)
    {
      v22 = 138412290;
      v23 = meaningLabels;
      v18 = "[Sharing Suggestion] Highlight node is contained in a trip, but not meaningful enough for sharing (%@).";
      v19 = connectionCopy;
      v20 = 12;
LABEL_14:
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, v18, &v22, v20);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_9:
  v17 = 1;
LABEL_16:

  return v17;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  optionsCopy = options;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  loggingConnection = [session loggingConnection];
  workingContext = [session workingContext];
  curationManager = [workingContext curationManager];
  curationContext = [session curationContext];
  serviceManager = [workingContext serviceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__PGDayHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke;
  v26[3] = &unk_2788847A0;
  v27 = optionsCopy;
  v28 = session;
  v29 = loggingConnection;
  v30 = photoLibrary;
  v31 = serviceManager;
  selfCopy = self;
  v33 = workingContext;
  v34 = curationManager;
  v35 = curationContext;
  v14 = v6;
  v36 = v14;
  v15 = curationContext;
  v16 = curationManager;
  v17 = workingContext;
  v18 = serviceManager;
  v19 = photoLibrary;
  v20 = loggingConnection;
  v21 = session;
  v22 = optionsCopy;
  [v17 performSynchronousConcurrentGraphReadUsingBlock:v26];
  v23 = v36;
  v24 = v14;

  return v14;
}

void __66__PGDayHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2)
{
  v123 = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    v8 = [*(a1 + 40) loggingConnection];
    v77 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v118 = v4;
      v119 = 2112;
      v120 = v6;
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Start date or end date invalid: %@ - %@", buf, 0x16u);
    }

    goto LABEL_86;
  }

  v86 = a1;
  v75 = v3;
  v9 = [v3 graph];
  v74 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v6];
  v77 = v9;
  v10 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
  if (![v10 count])
  {
    v76 = v10;
    v70 = *(a1 + 48);
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    *buf = 138412546;
    v118 = v4;
    v119 = 2112;
    v120 = v6;
    v71 = "[Sharing Suggestion] No moments found between %@ and %@";
LABEL_77:
    _os_log_impl(&dword_22F0FC000, v70, OS_LOG_TYPE_DEFAULT, v71, buf, 0x16u);
    goto LABEL_85;
  }

  v11 = [v10 subsetWithEnoughScenesProcessed];
  v12 = v10;
  v13 = v11;

  v14 = [v13 subsetWithEnoughFacesProcessed];

  v76 = v14;
  if (![v14 count])
  {
    v70 = *(v86 + 48);
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    *buf = 138412546;
    v118 = v4;
    v119 = 2112;
    v120 = v6;
    v71 = "[Sharing Suggestion] No moments analyzed found between %@ and %@";
    goto LABEL_77;
  }

  v15 = [v14 highlightNodes];
  v16 = [v15 set];

  if (![v16 count])
  {
    v72 = *(v86 + 48);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v118 = v4;
      v119 = 2112;
      v120 = v6;
      v121 = 2112;
      v122 = v76;
      _os_log_impl(&dword_22F0FC000, v72, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No highlight nodes found between %@ and %@ for moment nodes %@", buf, 0x20u);
    }

    goto LABEL_84;
  }

  v17 = [v16 mutableCopy];
  v96 = objc_opt_new();
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = [*(v86 + 40) existingSuggestions];
  v18 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
  v80 = v6;
  v81 = v4;
  v87 = v17;
  v79 = v16;
  if (!v18)
  {
    goto LABEL_42;
  }

  v19 = v18;
  v20 = *v110;
  v78 = *v110;
  do
  {
    v21 = 0;
    v82 = v19;
    do
    {
      if (*v110 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v109 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      if ([v22 subtype] == 101)
      {
        v84 = v23;
        v85 = v21;
        v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v22 options:0];
        v90 = [v24 fetchedObjectIDsSet];

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v94 = v16;
        v25 = [v94 countByEnumeratingWithState:&v105 objects:v115 count:16];
        if (!v25)
        {
          goto LABEL_39;
        }

        v26 = v25;
        v27 = v22;
        v28 = *v106;
        v88 = v22;
        while (1)
        {
          v29 = 0;
          v92 = v26;
          do
          {
            if (*v106 != v28)
            {
              objc_enumerationMutation(v94);
            }

            v30 = *(*(&v105 + 1) + 8 * v29);
            v31 = objc_autoreleasePoolPush();
            if ([v17 containsObject:v30])
            {
              v32 = [v27 universalStartDate];
              v33 = [v27 universalEndDate];
              v34 = v32;
              if (v34 && v33)
              {
                v35 = v30;
                v36 = [v35 universalStartDate];
                v37 = [v35 universalEndDate];

                if ([v36 compare:v33] == 1)
                {

                  v17 = v87;
                  goto LABEL_27;
                }

                v42 = [v37 compare:v34];

                v7 = v42 == -1;
                v17 = v87;
                v27 = v88;
                if (!v7)
                {
                  [v87 removeObject:v35];
LABEL_33:
                  v26 = v92;
                  goto LABEL_34;
                }
              }

              else
              {
LABEL_27:
              }

              v38 = [v30 localIdentifier];
              v39 = [v96 objectForKeyedSubscript:v38];
              if (!v39)
              {
                v40 = [v30 fetchAssetCollectionInPhotoLibrary:*(v86 + 56)];
                v41 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v40 options:0];
                v39 = [v41 fetchedObjectIDsSet];

                [v96 setObject:v39 forKeyedSubscript:v38];
                v27 = v88;
              }

              if ([v90 intersectsSet:v39])
              {
                [v17 removeObject:v30];
              }

              goto LABEL_33;
            }

LABEL_34:
            objc_autoreleasePoolPop(v31);
            ++v29;
          }

          while (v26 != v29);
          v43 = [v94 countByEnumeratingWithState:&v105 objects:v115 count:16];
          v26 = v43;
          if (!v43)
          {
LABEL_39:

            v6 = v80;
            v4 = v81;
            v20 = v78;
            v16 = v79;
            v19 = v82;
            v23 = v84;
            v21 = v85;
            break;
          }
        }
      }

      objc_autoreleasePoolPop(v23);
      ++v21;
    }

    while (v21 != v19);
    v19 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
  }

  while (v19);
LABEL_42:

  if ([v17 count])
  {
    v44 = objc_alloc_init(PGNeighborScoreComputer);
    v45 = v86;
    v91 = [[PGTitleGenerationContext alloc] initWithGraph:v77 serviceManager:*(v86 + 64)];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v95 = v17;
    v46 = [v95 countByEnumeratingWithState:&v101 objects:v114 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v102;
      v89 = *v102;
      do
      {
        v49 = 0;
        v93 = v47;
        do
        {
          if (*v102 != v48)
          {
            objc_enumerationMutation(v95);
          }

          v50 = *(*(&v101 + 1) + 8 * v49);
          v51 = objc_autoreleasePoolPush();
          if ([objc_opt_class() shouldSuggestHighlightNode:v50 neighborScoreComputer:v44 loggingConnection:*(v45 + 48)])
          {
            v52 = *(v45 + 72);
            [v50 eventEnrichmentMomentNodes];
            v54 = v53 = v45;
            v55 = [v54 array];
            v56 = [v52 sharingSuggestionResultsForMomentNodes:v55 withWorkingContext:*(v53 + 80)];

            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v57 = v56;
            v58 = [(PGEnrichableEventSuggestion *)v57 countByEnumeratingWithState:&v97 objects:v113 count:16];
            v59 = v57;
            if (v58)
            {
              v60 = v58;
              v61 = v44;
              v62 = *v98;
LABEL_51:
              v63 = 0;
              while (1)
              {
                if (*v98 != v62)
                {
                  objc_enumerationMutation(v57);
                }

                v64 = [*(*(&v97 + 1) + 8 * v63) person];
                v65 = [v64 isVerified];

                if (v65)
                {
                  break;
                }

                if (v60 == ++v63)
                {
                  v60 = [(PGEnrichableEventSuggestion *)v57 countByEnumeratingWithState:&v97 objects:v113 count:16];
                  if (v60)
                  {
                    goto LABEL_51;
                  }

                  v59 = v57;
                  v17 = v87;
                  v44 = v61;
                  goto LABEL_68;
                }
              }

              v66 = *(v86 + 48);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node contains verified people", buf, 2u);
              }

              v67 = v86;
              v59 = [[PGEnrichableEventSuggestion alloc] initWithType:1 subtype:101 enrichableEvent:v50 sharingSuggestionResults:v57 photoLibrary:*(v86 + 56) curationManager:*(v86 + 88) curationContext:*(v86 + 96) loggingConnection:*(v86 + 48) titleGenerationContext:v91];
              v17 = v87;
              v44 = v61;
              if (!v59)
              {
LABEL_68:
                v48 = v89;
                goto LABEL_69;
              }

              [*(v86 + 104) addObject:v59];
              v48 = v89;
              if ([*(v86 + 32) allowNotification])
              {
                v68 = [*(v86 + 40) notificationProfile];
                if ([v68 eligibleForNotification])
                {
                  -[PGEnrichableEventSuggestion setNotificationQuality:](v59, "setNotificationQuality:", [v68 notificationQualityForHighlightNode:v50]);
                  if ([v68 shouldNotifyForSuggestion:v59 withOptions:*(v86 + 32)])
                  {
                    [(PGEnrichableEventSuggestion *)v59 setNotificationState:1];
                  }
                }

                v67 = v86;
              }

              v69 = [*(v67 + 104) count];
              if (v69 >= [*(v67 + 32) maximumNumberOfSuggestions])
              {

                objc_autoreleasePoolPop(v51);
                goto LABEL_82;
              }
            }

LABEL_69:

            v45 = v86;
            v47 = v93;
          }

          objc_autoreleasePoolPop(v51);
          ++v49;
        }

        while (v49 != v47);
        v47 = [v95 countByEnumeratingWithState:&v101 objects:v114 count:16];
      }

      while (v47);
    }

LABEL_82:

    v6 = v80;
    v4 = v81;
    v16 = v79;
  }

  else
  {
    v73 = *(v86 + 48);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v118 = v4;
      v119 = 2112;
      v120 = v6;
      _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlights found between %@ and %@ are already covered in exising sharing suggestions", buf, 0x16u);
    }
  }

LABEL_84:
LABEL_85:

  v3 = v75;
LABEL_86:
}

@end