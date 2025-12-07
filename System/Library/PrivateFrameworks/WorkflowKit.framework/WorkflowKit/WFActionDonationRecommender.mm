@interface WFActionDonationRecommender
+ (WFActionDonationRecommender)sharedRecommender;
+ (id)donationsByRemovingDuplicatesFromDonations:(id)donations excludingAppIdentifiers:(id)identifiers includingSingleDonationPerApp:(BOOL)app;
+ (id)filterDonationsForTitleLength:(id)length;
+ (id)filteredActionDonations:(id)donations byApplicationAppIdentifier:(id)identifier;
+ (id)getDonationsFromActionResponse:(id)response;
- (NSArray)defaultRecommendations;
- (NSSet)excludedAppBundleIdentifiers;
- (WFActionDonationRecommender)init;
- (void)_fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler;
- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change;
- (void)cacheActionPredictionDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark;
- (void)cacheRecentDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark;
- (void)fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler;
- (void)fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:(id)handler;
- (void)fetchRecommendedDonationsForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation WFActionDonationRecommender

- (void)fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8374130;
  v7 = handlerCopy;
  v8 = 150;
  v6[4] = self;
  v5 = handlerCopy;
  [(WFActionDonationRecommender *)self fetchDonationsWithLimit:150 applicationBundleIdentifier:0 includeSuggestedForAllApps:1 completionHandler:v6];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v60 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E8374018;
  v64 = v9;
  v92 = v64;
  v10 = _Block_copy(aBlock);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v87 objects:v101 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v88;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v88 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v87 + 1) + 8 * i);
        v16 = [v15 sourceAppIdentifierForDisplay];
        v17 = v10[2](v10, v16);
        v18 = [v17 predictedActions];
        [v18 addObject:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v87 objects:v101 count:16];
    }

    while (v12);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v83 objects:v100 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v84;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v84 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v83 + 1) + 8 * j);
        v25 = [v24 sourceAppIdentifierForDisplay];
        v26 = v10[2](v10, v25);
        v27 = [v26 recentActions];
        [v27 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v21);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v28 = v60;
  v29 = [v28 countByEnumeratingWithState:&v79 objects:v99 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v80;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v80 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v79 + 1) + 8 * k);
        v34 = v10[2](v10, v33);
        v35 = [v34 appSuggestedActions];
        v36 = [v28 objectForKeyedSubscript:v33];
        [v35 addObjectsFromArray:v36];
      }

      v30 = [v28 countByEnumeratingWithState:&v79 objects:v99 count:16];
    }

    while (v30);
  }

  v37 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = *(a1 + 48);
    v39 = [v64 count];
    *buf = 136315650;
    v94 = "[WFActionDonationRecommender fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:]_block_invoke";
    v95 = 2048;
    v96 = v38;
    v97 = 2048;
    v98 = v39;
    _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_INFO, "%s Successfully processed donations with limit: %lu,final app count: %lu", buf, 0x20u);
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_220;
  v77[3] = &unk_1E8374090;
  v41 = a1;
  v77[4] = *(a1 + 32);
  v78 = v40;
  v42 = v40;
  [v64 enumerateKeysAndObjectsUsingBlock:v77];
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4;
  v75[3] = &unk_1E83740B8;
  v75[4] = *(a1 + 32);
  v44 = v43;
  v76 = v44;
  [v42 enumerateKeysAndObjectsUsingBlock:v75];

  v45 = v44;
  v46 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = *(a1 + 48);
    v48 = [v45 count];
    *buf = 136315650;
    v94 = "[WFActionDonationRecommender fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:]_block_invoke_5";
    v95 = 2048;
    v96 = v47;
    v41 = a1;
    v97 = 2048;
    v98 = v48;
    _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_INFO, "%s Successfully processed donations with limit: %lu, final app count: %lu", buf, 0x20u);
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63 = [(objc_class *)getATXClientClass() clientForConsumerType:13];
  v51 = [v63 appPredictionsForConsumerSubType:33 limit:8];
  v52 = [v51 predictedApps];
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_227;
  v73[3] = &unk_1E83800A8;
  v53 = v50;
  v74 = v53;
  [v52 enumerateObjectsUsingBlock:v73];

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_230;
  v71[3] = &unk_1E83740E0;
  v72 = v53;
  v61 = v53;
  v54 = _Block_copy(v71);
  v55 = [v45 allKeys];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3_232;
  v69[3] = &unk_1E8374108;
  v70 = v54;
  v56 = v54;
  v57 = [v55 sortedArrayUsingComparator:v69];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4_234;
  v66[3] = &unk_1E8380168;
  v67 = v49;
  v68 = v45;
  v58 = v45;
  v59 = v49;
  [v57 enumerateObjectsUsingBlock:v66];

  (*(*(v41 + 40) + 16))();
}

WFActionDonationSet *__95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKey:v3];
    if (!v4)
    {
      v4 = objc_opt_new();
      [*(a1 + 32) setObject:v4 forKey:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v38 = a2;
  v4 = a3;
  v35 = objc_opt_new();
  v5 = objc_opt_new();
  v36 = v4;
  v37 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [v4 recentActions];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 interaction];
          v13 = [v12 intent];

          v14 = VCIntentsForAllPossibleParameterCombinationsOfIntent(v13);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_221;
          v43[3] = &unk_1E8374040;
          v44 = v38;
          v45 = v5;
          v46 = v37;
          [v14 enumerateObjectsUsingBlock:v43];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v8);
  }

  v15 = [v4 appSuggestedActions];
  if ([v15 count])
  {
    v16 = [v15 firstObject];
    v17 = v35;
    [v35 addObject:v16];

    v18 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];

    v15 = v18;
  }

  else
  {
    v17 = v35;
  }

  if ([v15 count])
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [v4 predictedActions];
  v21 = [v20 count];

  if (v19 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  v23 = [v4 predictedActions];
  v24 = [v23 subarrayWithRange:{0, v22}];
  [v17 addObjectsFromArray:v24];

  [v17 addObjectsFromArray:v5];
  v25 = [*(a1 + 32) excludedAppBundleIdentifiers];
  v26 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v17 excludingAppIdentifiers:v25 includingSingleDonationPerApp:0];

  v27 = [v26 count];
  v28 = v21 != 0;
  if (v21)
  {
    v29 = (4 - v27) & ~((4 - v27) >> 63);
  }

  else
  {
    v29 = ((4 - v27) & ~((4 - v27) >> 63)) + 1;
  }

  v30 = [v15 count];
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = [v15 subarrayWithRange:{0, v31}];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3;
  v39[3] = &unk_1E8374068;
  v42 = v28;
  v40 = v26;
  v41 = v31;
  v33 = v26;
  [v32 enumerateObjectsUsingBlock:v39];
  [v33 addObjectsFromArray:v37];
  [*(a1 + 40) setObject:v33 forKey:v38];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 excludedAppBundleIdentifiers];
  v8 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v6 excludingAppIdentifiers:v7 includingSingleDonationPerApp:0];

  if ([v8 count])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
  }
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_227(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_230(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3_232(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  return v8 - v9;
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4_234(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 addObject:v6];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_221(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = VCInteractionDonationFromINIntent(a2, *(a1 + 32));
  v7 = v5;
  v6 = 48;
  if (!a3)
  {
    v6 = 40;
  }

  [*(a1 + v6) addObject:v5];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (*(a1 + 40) - 1 == a3 && ((v6 = v5, a3) || (*(a1 + 48) & 1) != 0) || (v7 = a3 + 1, v8 = [*(a1 + 32) count], v6 = v9, v8 < v7))
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    [*(a1 + 32) insertObject:v9 atIndex:v7];
  }
}

- (void)fetchRecommendedDonationsForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionDonationRecommender.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  if (identifierCopy)
  {
    v9 = 30;
  }

  else
  {
    v9 = 150;
  }

  excludedAppBundleIdentifiers = [(WFActionDonationRecommender *)self excludedAppBundleIdentifiers];
  v11 = excludedAppBundleIdentifiers;
  if (identifierCopy && [excludedAppBundleIdentifiers containsObject:identifierCopy])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__WFActionDonationRecommender_fetchRecommendedDonationsForApplicationBundleIdentifier_completionHandler___block_invoke;
    v13[3] = &unk_1E8373FF0;
    v14 = v11;
    v17 = v9;
    v15 = identifierCopy;
    v16 = handlerCopy;
    [(WFActionDonationRecommender *)self fetchDonationsWithLimit:v9 applicationBundleIdentifier:v15 includeSuggestedForAllApps:0 completionHandler:v13];
  }
}

void __105__WFActionDonationRecommender_fetchRecommendedDonationsForApplicationBundleIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v43 = a3;
  v42 = a4;
  v45 = [v6 mutableCopy];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    v44 = *v53;
    do
    {
      v10 = 0;
      v46 = v8;
      do
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 interaction];
          v13 = [v12 intent];

          v14 = VCIntentsForAllPossibleParameterCombinationsOfIntent(v13);
          v15 = objc_opt_new();
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v16 = v14;
          v17 = [v16 countByEnumeratingWithState:&v48 objects:v62 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v49;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v49 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v48 + 1) + 8 * i);
                v22 = [v11 sourceAppIdentifier];
                v23 = VCInteractionDonationFromINIntent(v21, v22);

                [v15 addObject:v23];
              }

              v18 = [v16 countByEnumeratingWithState:&v48 objects:v62 count:16];
            }

            while (v18);
          }

          [v45 replaceObjectsInRange:objc_msgSend(v45 withObjectsFromArray:{"indexOfObject:", v11), 1, v15}];
          v9 = v44;
          v8 = v46;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v8);
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = a1;
  v26 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v43 excludingAppIdentifiers:a1[4] includingSingleDonationPerApp:0];
  v27 = [v26 count];
  if (v27 >= 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27;
  }

  v29 = [v26 subarrayWithRange:{0, v28}];
  [v24 addObjectsFromArray:v42];
  [v24 addObjectsFromArray:v29];
  [v24 addObjectsFromArray:v45];
  v30 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v24 excludingAppIdentifiers:a1[4] includingSingleDonationPerApp:0];

  v31 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = a1[7];
    v33 = [v30 count];
    *buf = 136315650;
    v57 = "[WFActionDonationRecommender fetchRecommendedDonationsForApplicationBundleIdentifier:completionHandler:]_block_invoke";
    v58 = 2048;
    v59 = v32;
    v25 = a1;
    v60 = 2048;
    v61 = v33;
    _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_INFO, "%s Successfully processed recommended donations with limit: %lu, count: %lu", buf, 0x20u);
  }

  v34 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = v25[5];
    *buf = 136315394;
    v57 = "[WFActionDonationRecommender fetchRecommendedDonationsForApplicationBundleIdentifier:completionHandler:]_block_invoke";
    v58 = 2114;
    v59 = v35;
    _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", buf, 0x16u);
  }

  v36 = v25[6];
  v37 = v25[7];
  v38 = [v30 count];
  if (v37 >= v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v37;
  }

  v40 = [v30 subarrayWithRange:{0, v39}];
  (*(v36 + 16))(v36, v40);
}

- (void)_fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler
{
  appsCopy = apps;
  v157 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v141 = 0;
  v142 = &v141;
  v143 = 0x3032000000;
  v144 = __Block_byref_object_copy__4812;
  v145 = __Block_byref_object_dispose__4813;
  v146 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = __Block_byref_object_copy__4812;
  v139 = __Block_byref_object_dispose__4813;
  v140 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = __Block_byref_object_copy__4812;
  v133 = __Block_byref_object_dispose__4813;
  v134 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__4812;
  v127 = __Block_byref_object_dispose__4813;
  v128 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  limitCopy = limit;
  group = dispatch_group_create();
  if (2 * limit <= 0x32)
  {
    v11 = 50;
  }

  else
  {
    v11 = 2 * limit;
  }

  selfCopy = self;
  v86 = identifierCopy;
  if (identifierCopy)
  {
    cachedDonationsPerApp = [(WFActionDonationRecommender *)self cachedDonationsPerApp];
    cachedDonationsForAllApps = [cachedDonationsPerApp objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    cachedDonationsForAllApps = [(WFActionDonationRecommender *)self cachedDonationsForAllApps];
  }

  v81 = cachedDonationsForAllApps;
  if (cachedDonationsForAllApps && [cachedDonationsForAllApps isValidWithBallpark:v11])
  {
    donations = [cachedDonationsForAllApps donations];
    v15 = v142[5];
    v142[5] = donations;

    *(v120 + 24) = 1;
  }

  else
  {
    dispatch_group_enter(group);
    v16 = getWFActionDonationsLogObject();
    v17 = os_signpost_id_generate(v16);

    v18 = getWFActionDonationsLogObject();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "FetchRecentDonations", "appIdentifier=%{signpost.telemetry:string1, Name=AppID}@", &buf, 0xCu);
    }

    v20 = MEMORY[0x1E69E0918];
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke;
    v112[3] = &unk_1E8373F78;
    v116 = &v141;
    v117 = v17;
    v115 = &v119;
    v112[4] = selfCopy;
    v113 = identifierCopy;
    v118 = v11;
    v114 = group;
    [v20 fetchDonationsForApplicationBundleIdentifier:v113 limit:v11 filteringForTopLevel:0 filteringForIsEligibleForPrediction:1 filteringForRecent:1 completion:v112];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v155 = 0x2020000000;
  v156 = 0;
  if (identifierCopy)
  {
    cachedActionPredictionsPerApp = [(WFActionDonationRecommender *)selfCopy cachedActionPredictionsPerApp];
    cachedActionPredictionsForAllApps = [cachedActionPredictionsPerApp objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    cachedActionPredictionsForAllApps = [(WFActionDonationRecommender *)selfCopy cachedActionPredictionsForAllApps];
  }

  v80 = cachedActionPredictionsForAllApps;
  if (cachedActionPredictionsForAllApps && [cachedActionPredictionsForAllApps isValidWithBallpark:limitCopy])
  {
    donations2 = [cachedActionPredictionsForAllApps donations];
    v24 = v136[5];
    v136[5] = donations2;

    *(*(&buf + 1) + 24) = 1;
  }

  else
  {
    dispatch_group_enter(group);
    v25 = getWFActionDonationsLogObject();
    v26 = os_signpost_id_generate(v25);

    v27 = getWFActionDonationsLogObject();
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *v150 = 134218242;
      v151 = limitCopy;
      v152 = 2112;
      v153 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "FetchPredictedDonations", "limit=%{signpost.telemetry:number1, Name=Limit}lu appIdentifier=%{signpost.telemetry:string1, Name=AppID}@", v150, 0x16u);
    }

    v29 = objc_alloc_init(getATXActionPredictionClientClass());
    if (identifierCopy)
    {
      v149 = identifierCopy;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
    }

    else
    {
      v30 = 0;
    }

    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_201;
    v105[3] = &unk_1E8373FA0;
    v109 = &v135;
    v110 = v26;
    p_buf = &buf;
    v105[4] = selfCopy;
    v106 = identifierCopy;
    v111 = limitCopy;
    v107 = group;
    [v29 getActionPredictionsForCandidateBundleIdentifiers:v30 candidateActionTypes:0 consumerType:8 consumerSubType:23 limit:limitCopy reply:v105];
  }

  v31 = MEMORY[0x1E695E0F0];
  if (!identifierCopy)
  {
    v40 = v130[5];
    v130[5] = MEMORY[0x1E695E0F0];

    if (!appsCopy)
    {
      goto LABEL_60;
    }

    v41 = objc_opt_new();
    v42 = v124[5];
    v124[5] = v41;

    v43 = +[WFDatabase defaultDatabase];
    v103 = 0;
    v44 = [v43 shortcutSuggestionsForAllAppsWithLimit:4 shortcutAvailability:0 error:&v103];
    v34 = v103;

    v45 = getWFActionDonationsLogObject();
    v46 = v45;
    if (v44)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v47 = [v44 count];
        *v150 = 136315394;
        v151 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
        v152 = 2048;
        v153 = v47;
        v48 = "%s Successfully fetched %lu suggested donations from all apps";
        v49 = v46;
        v50 = OS_LOG_TYPE_INFO;
LABEL_47:
        _os_log_impl(&dword_1CA256000, v49, v50, v48, v150, 0x16u);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v150 = 136315394;
      v151 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
      v152 = 2114;
      v153 = v34;
      v48 = "%s Error getting voice shortcut suggestions for all apps: %{public}@";
      v49 = v46;
      v50 = OS_LOG_TYPE_ERROR;
      goto LABEL_47;
    }

    excludedAppBundleIdentifiers = [(WFActionDonationRecommender *)selfCopy excludedAppBundleIdentifiers];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v33 = v44;
    v53 = [v33 countByEnumeratingWithState:&v99 objects:v148 count:16];
    if (v53)
    {
      v54 = *v100;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v100 != v54)
          {
            objc_enumerationMutation(v33);
          }

          v56 = *(*(&v99 + 1) + 8 * i);
          if (([excludedAppBundleIdentifiers containsObject:v56] & 1) == 0)
          {
            v57 = [v33 objectForKeyedSubscript:v56];
            v58 = VCActionDonationArrayFromINShortcutArray(v57, v56);
            [v124[5] setObject:v58 forKeyedSubscript:v56];
          }
        }

        v53 = [v33 countByEnumeratingWithState:&v99 objects:v148 count:16];
      }

      while (v53);
    }

    goto LABEL_58;
  }

  v32 = +[WFDatabase defaultDatabase];
  v104 = 0;
  v33 = [v32 shortcutSuggestionsForAppWithBundleIdentifier:identifierCopy shortcutAvailability:0 error:&v104];
  v34 = v104;

  v35 = getWFActionDonationsLogObject();
  v36 = v35;
  if (v34)
  {
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *v150 = 136315394;
    v151 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
    v152 = 2114;
    v153 = v34;
    v37 = "%s Error getting voice shortcut suggestions: %{public}@";
    v38 = v36;
    v39 = OS_LOG_TYPE_ERROR;
    goto LABEL_39;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v51 = [v130[5] count];
    *v150 = 136315394;
    v151 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
    v152 = 2048;
    v153 = v51;
    _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_INFO, "%s Successfully fetched suggested donations with donation count: %lu", v150, 0x16u);
  }

  v36 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *v150 = 136315394;
    v151 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
    v152 = 2114;
    v153 = identifierCopy;
    v37 = "%s for applicationBundleIdentifier: %{public}@";
    v38 = v36;
    v39 = OS_LOG_TYPE_DEBUG;
LABEL_39:
    _os_log_impl(&dword_1CA256000, v38, v39, v37, v150, 0x16u);
  }

LABEL_40:

  if (v33)
  {
    excludedAppBundleIdentifiers = VCActionDonationArrayFromINShortcutArray(v33, identifierCopy);
  }

  else
  {
    excludedAppBundleIdentifiers = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(v130 + 5, excludedAppBundleIdentifiers);
  if (v33)
  {
LABEL_58:

    goto LABEL_59;
  }

  v33 = 0;
LABEL_59:

LABEL_60:
  defaultRecommendations = [(WFActionDonationRecommender *)selfCopy defaultRecommendations];
  v60 = [WFActionDonationRecommender filteredActionDonations:defaultRecommendations byApplicationAppIdentifier:v86];

  if ([v60 count])
  {
    v61 = [v130[5] arrayByAddingObjectsFromArray:v60];
    v62 = v130[5];
    v130[5] = v61;

    v63 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = [v60 count];
      *v150 = 136315394;
      v151 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
      v152 = 2048;
      v153 = v64;
      _os_log_impl(&dword_1CA256000, v63, OS_LOG_TYPE_INFO, "%s Adding %lu default recommended donations", v150, 0x16u);
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v65 = v60;
    v66 = [v65 countByEnumeratingWithState:&v95 objects:v147 count:16];
    if (v66)
    {
      v67 = *v96;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v96 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v95 + 1) + 8 * j);
          sourceAppIdentifier = [v69 sourceAppIdentifier];
          v71 = [v124[5] objectForKeyedSubscript:sourceAppIdentifier];
          v72 = v71;
          if (v71)
          {
            v73 = v71;
          }

          else
          {
            v73 = v31;
          }

          v74 = v73;

          v75 = [v74 arrayByAddingObject:v69];

          [v124[5] setObject:v75 forKeyedSubscript:sourceAppIdentifier];
        }

        v66 = [v65 countByEnumeratingWithState:&v95 objects:v147 count:16];
      }

      while (v66);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_204;
  aBlock[3] = &unk_1E8373FC8;
  v94 = limitCopy;
  aBlock[4] = selfCopy;
  v90 = &v141;
  v91 = &v135;
  v92 = &v129;
  v76 = v86;
  v88 = v76;
  v77 = handlerCopy;
  v89 = v77;
  v93 = &v123;
  v78 = _Block_copy(aBlock);
  workQueue = [(WFActionDonationRecommender *)selfCopy workQueue];
  dispatch_group_notify(group, workQueue, v78);

  [(WFActionDonationRecommender *)selfCopy setActiveFetchGroup:group];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);

  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v135, 8);

  _Block_object_dispose(&v141, 8);
}

void __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = getWFActionDonationsLogObject();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Got duplicate callback from donations fetching. Ignoring duplicate callback.", &v13, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, OS_SIGNPOST_INTERVAL_END, v8, "FetchRecentDonations", "", &v13, 2u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [*(a1 + 32) cacheRecentDonations:v4 forApplicationBundleIdentifier:*(a1 + 40) ballpark:*(a1 + 80)];
    v9 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 count];
      v13 = 136315394;
      v14 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Successfully fetched recent donations with donation count: %lu", &v13, 0x16u);
    }

    v11 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = 136315394;
      v14 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", &v13, 0x16u);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

void __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_201(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [WFActionDonationRecommender getDonationsFromActionResponse:a2];
  v4 = *(*(*(a1 + 56) + 8) + 24);
  v5 = getWFActionDonationsLogObject();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Got duplicate callback from predicted donations fetching. Ignoring duplicate callback.", &v13, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 72);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v6, OS_SIGNPOST_INTERVAL_END, v7, "FetchPredictedDonations", "", &v13, 2u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [*(a1 + 32) cacheActionPredictionDonations:v3 forApplicationBundleIdentifier:*(a1 + 40) ballpark:*(a1 + 80)];
    v8 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 80);
      v10 = [v3 count];
      v13 = 136315650;
      v14 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Successfully fetched predicted donations with ballpark: %lu, donation count: %lu", &v13, 0x20u);
    }

    v11 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = 136315394;
      v14 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", &v13, 0x16u);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

uint64_t __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_204(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setActiveFetchGroup:0];
  v2 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 88);
    v4 = [*(*(*(a1 + 56) + 8) + 40) count];
    v5 = [*(*(*(a1 + 64) + 8) + 40) count];
    v6 = [*(*(*(a1 + 72) + 8) + 40) count];
    v10 = 136316162;
    v11 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
    v12 = 2048;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Successfully fetched recommended donations with ballpark: %lu, recent count: %lu, predicted count: %lu, suggested count: %lu", &v10, 0x34u);
  }

  v7 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v10 = 136315394;
    v11 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", &v10, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__WFActionDonationRecommender_fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8373F50;
  aBlock[4] = self;
  v18 = identifierCopy;
  appsCopy = apps;
  v19 = handlerCopy;
  limitCopy = limit;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = _Block_copy(aBlock);
  workQueue = [(WFActionDonationRecommender *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__WFActionDonationRecommender_fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_2;
  block[3] = &unk_1E837E1F8;
  block[4] = self;
  block[5] = v14;
  dispatch_async(workQueue, block);
}

void __128__WFActionDonationRecommender_fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_2(uint64_t a1)
{
  group = [*(a1 + 32) activeFetchGroup];
  if (group)
  {
    v2 = [*(a1 + 32) workQueue];
    dispatch_group_notify(group, v2, *(a1 + 40));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (NSArray)defaultRecommendations
{
  defaultRecommendations = self->_defaultRecommendations;
  if (!defaultRecommendations)
  {
    v4 = +[WFActionDonationDefaultsRecommender defaultRecommendations];
    v5 = self->_defaultRecommendations;
    self->_defaultRecommendations = v4;

    defaultRecommendations = self->_defaultRecommendations;
  }

  return defaultRecommendations;
}

- (void)cacheActionPredictionDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark
{
  identifierCopy = identifier;
  donationsCopy = donations;
  v9 = [[WFCachedDonations alloc] initWithDonations:donationsCopy ballpark:ballpark];

  if (identifierCopy)
  {
    cachedActionPredictionsPerApp = [(WFActionDonationRecommender *)self cachedActionPredictionsPerApp];
    [cachedActionPredictionsPerApp setObject:v9 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(WFActionDonationRecommender *)self setCachedActionPredictionsForAllApps:v9];
  }
}

- (void)cacheRecentDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark
{
  identifierCopy = identifier;
  donationsCopy = donations;
  v9 = [[WFCachedDonations alloc] initWithDonations:donationsCopy ballpark:ballpark];

  if (identifierCopy)
  {
    cachedDonationsPerApp = [(WFActionDonationRecommender *)self cachedDonationsPerApp];
    [cachedDonationsPerApp setObject:v9 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(WFActionDonationRecommender *)self setCachedDonationsForAllApps:v9];
  }
}

- (NSSet)excludedAppBundleIdentifiers
{
  excludedAppBundleIdentifiers = self->_excludedAppBundleIdentifiers;
  if (!excludedAppBundleIdentifiers)
  {
    v4 = MEMORY[0x1E695DFA8];
    v5 = +[WFActionDonationRecommender disabledSpotlightApps];
    v6 = [v4 setWithSet:v5];

    [(NSSet *)v6 addObject:*MEMORY[0x1E69E0F60]];
    [(NSSet *)v6 addObject:*MEMORY[0x1E69E0F50]];
    [(NSSet *)v6 addObject:*MEMORY[0x1E69E0F38]];
    v7 = self->_excludedAppBundleIdentifiers;
    self->_excludedAppBundleIdentifiers = v6;

    excludedAppBundleIdentifiers = self->_excludedAppBundleIdentifiers;
  }

  return excludedAppBundleIdentifiers;
}

- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change
{
  if (!change)
  {
    [(WFActionDonationRecommender *)self setCachedDonationsForAllApps:0];
    cachedDonationsPerApp = [(WFActionDonationRecommender *)self cachedDonationsPerApp];
    [cachedDonationsPerApp removeAllObjects];

    [(WFActionDonationRecommender *)self setCachedActionPredictionsForAllApps:0];
    cachedActionPredictionsPerApp = [(WFActionDonationRecommender *)self cachedActionPredictionsPerApp];
    [cachedActionPredictionsPerApp removeAllObjects];
  }
}

- (WFActionDonationRecommender)init
{
  v13.receiver = self;
  v13.super_class = WFActionDonationRecommender;
  v2 = [(WFActionDonationRecommender *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedDonationsPerApp = v2->_cachedDonationsPerApp;
    v2->_cachedDonationsPerApp = v3;

    v5 = objc_opt_new();
    cachedActionPredictionsPerApp = v2->_cachedActionPredictionsPerApp;
    v2->_cachedActionPredictionsPerApp = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.shortcuts.WFActionDonationRecommender.fetchRecommendedDonations", v7);
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;

    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    [mEMORY[0x1E6996CA8] addApplicationStateObserver:v2 forEvent:0];

    v11 = v2;
  }

  return v2;
}

+ (id)getDonationsFromActionResponse:(id)response
{
  v42 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = responseCopy;
  actions = [responseCopy actions];
  v6 = [actions countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v35 = actions;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        actionUUID = [v10 actionUUID];
        uUIDString = [actionUUID UUIDString];
        v13 = uUIDString;
        if (uUIDString)
        {
          uUIDString2 = uUIDString;
        }

        else
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString2 = [uUID UUIDString];
        }

        userActivity = [v10 userActivity];

        if (userActivity)
        {
          v17 = objc_alloc(MEMORY[0x1E69E0930]);
          userActivity2 = [v10 userActivity];
          bundleId = [v10 bundleId];
          date = [MEMORY[0x1E695DF00] date];
          v21 = [v17 initWithUserActivity:userActivity2 identifier:uUIDString2 sourceAppIdentifier:bundleId date:date];

          if (v21)
          {
            [v4 addObject:v21];
          }

LABEL_12:

          goto LABEL_13;
        }

        intent = [v10 intent];
        if (intent)
        {
          v23 = intent;
          heuristic = [v10 heuristic];
          v25 = [heuristic length];

          if (!v25)
          {
            intent2 = [v10 intent];
            v21 = VCIntentsForAllPossibleParameterCombinationsOfIntent(intent2);

            firstObject = [v21 firstObject];
            v27 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:firstObject response:0];
            v28 = objc_alloc(MEMORY[0x1E69E0920]);
            [v10 bundleId];
            v30 = v29 = v4;
            v31 = [v28 initWithIdentifier:uUIDString2 sourceAppIdentifier:v30 interaction:v27];

            v4 = v29;
            if (v31)
            {
              [v29 addObject:v31];
            }

            actions = v35;
            goto LABEL_12;
          }
        }

LABEL_13:

        ++v9;
      }

      while (v7 != v9);
      v32 = [actions countByEnumeratingWithState:&v37 objects:v41 count:16];
      v7 = v32;
    }

    while (v32);
  }

  return v4;
}

+ (id)filterDonationsForTitleLength:(id)length
{
  v3 = MEMORY[0x1E696AE18];
  lengthCopy = length;
  v5 = [v3 predicateWithBlock:&__block_literal_global_239];
  v6 = [lengthCopy filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __61__WFActionDonationRecommender_filterDonationsForTitleLength___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = [v2 length] != 0;

  return v3;
}

+ (id)filteredActionDonations:(id)donations byApplicationAppIdentifier:(id)identifier
{
  donationsCopy = donations;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v8 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__WFActionDonationRecommender_filteredActionDonations_byApplicationAppIdentifier___block_invoke;
    v12[3] = &unk_1E8374158;
    v13 = identifierCopy;
    v9 = [v8 predicateWithBlock:v12];
    v10 = [donationsCopy filteredArrayUsingPredicate:v9];
  }

  else
  {
    v10 = donationsCopy;
  }

  return v10;
}

uint64_t __82__WFActionDonationRecommender_filteredActionDonations_byApplicationAppIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sourceAppIdentifierForDisplay];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

+ (id)donationsByRemovingDuplicatesFromDonations:(id)donations excludingAppIdentifiers:(id)identifiers includingSingleDonationPerApp:(BOOL)app
{
  appCopy = app;
  v38 = *MEMORY[0x1E69E9840];
  donationsCopy = donations;
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = donationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v27 = !appCopy;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        sourceAppIdentifierForDisplay = [v14 sourceAppIdentifierForDisplay];
        if (!sourceAppIdentifierForDisplay)
        {
          uniqueProperty = getWFActionDonationsLogObject();
          if (os_log_type_enabled(uniqueProperty, OS_LOG_TYPE_ERROR))
          {
            fullDescription = [v14 fullDescription];
            *buf = 136315394;
            v34 = "+[WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:excludingAppIdentifiers:includingSingleDonationPerApp:]";
            v35 = 2112;
            v36 = fullDescription;
            _os_log_impl(&dword_1CA256000, uniqueProperty, OS_LOG_TYPE_ERROR, "%s Skipping donation with unexpected nil sourceAppIdentifier. Donation: %@", buf, 0x16u);
          }

LABEL_15:

          goto LABEL_16;
        }

        uniqueProperty = [v14 uniqueProperty];
        if ([v8 containsObject:uniqueProperty])
        {
          goto LABEL_15;
        }

        sourceAppIdentifierForDisplay2 = [v14 sourceAppIdentifierForDisplay];
        v18 = [identifiersCopy containsObject:sourceAppIdentifierForDisplay2];
        if (((v18 | v27) & 1) == 0)
        {
          LOBYTE(v18) = [v26 containsObject:sourceAppIdentifierForDisplay];
        }

        v19 = v18;

        if ((v19 & 1) == 0)
        {
          title = [v14 title];
          v21 = [title length];

          if (v21)
          {
            uniqueProperty2 = [v14 uniqueProperty];
            [v8 addObject:uniqueProperty2];

            [v26 addObject:sourceAppIdentifierForDisplay];
            [v25 addObject:v14];
          }
        }

LABEL_16:
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  return v25;
}

+ (WFActionDonationRecommender)sharedRecommender
{
  if (sharedRecommender_onceToken != -1)
  {
    dispatch_once(&sharedRecommender_onceToken, &__block_literal_global_4864);
  }

  v3 = sharedRecommender_sharedRecommender;

  return v3;
}

void __48__WFActionDonationRecommender_sharedRecommender__block_invoke()
{
  v0 = objc_alloc_init(WFActionDonationRecommender);
  v1 = sharedRecommender_sharedRecommender;
  sharedRecommender_sharedRecommender = v0;
}

@end