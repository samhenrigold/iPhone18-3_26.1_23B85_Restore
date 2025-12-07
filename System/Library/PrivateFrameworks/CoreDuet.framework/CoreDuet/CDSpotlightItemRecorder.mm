@interface CDSpotlightItemRecorder
@end

@implementation CDSpotlightItemRecorder

void __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = a1 + 32;
  if ([*(*(a1 + 32) + 32) count])
  {
    v4 = MEMORY[0x1E69E9820];
    do
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__27;
      v15 = __Block_byref_object_dispose__27;
      v16 = 0;
      v5 = *v3;
      v6 = *(*v3 + 24);
      v8[0] = v4;
      v8[1] = 3221225472;
      v8[2] = __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_560;
      v8[3] = &unk_1E7368AF0;
      v9 = v5;
      v10 = &v11;
      dispatch_sync(v6, v8);
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [(_CDSpotlightItemRecorder *)WeakRetained runOperation:?];

      _Block_object_dispose(&v11, 8);
    }

    while ([*(*v3 + 32) count]);
  }

  if (![*(*v3 + 32) count] && *(*v3 + 40) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_cold_1(a1 + 32);
  }
}

void __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = *(*(a1 + 32) + 64);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_2;
    v9 = &unk_1E736AA58;
    v10 = v3;
    v11 = 0;
    v5 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:&v6];
    [*(*(a1 + 32) + 64) removeObjectsForKeys:{0, v6, v7, v8, v9}];
  }
}

void __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 lastRecorded];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  if (v8 > 30.0)
  {
    [*(a1 + 40) addObject:v9];
  }
}

void __70___CDSpotlightItemRecorder__addOrUpdateCoreDuetInteractions_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 objectForKeyedSubscript:*(a1 + 32)];
  if (!v3)
  {
    v4 = 50;
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
    do
    {
      v5 = [MEMORY[0x1E695DF00] distantPast];
      [v3 addObject:v5];

      --v4;
    }

    while (v4);
    if ([v14 count] == 10)
    {
      [v14 removeAllObjects];
    }

    [v14 setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  v6 = [*(a1 + 40) count];
  v7 = v6;
  if (v6 >= 0x32)
  {
    v8 = 50;
  }

  else
  {
    v8 = v6;
  }

  [v3 removeObjectsInRange:{0, v8}];
  if (v7)
  {
    do
    {
      [v3 addObject:*(a1 + 48)];
      --v8;
    }

    while (v8);
  }

  v9 = *(a1 + 48);
  v10 = [v3 objectAtIndexedSubscript:0];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  v13 = v12 < 0.0 || v12 > 100.0;
  if (!v13 && (IOPSDrawingUnlimitedPower() & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

BOOL __70___CDSpotlightItemRecorder__addOrUpdateCoreDuetInteractions_bundleID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 startDate];
  if (v3)
  {
    [v2 timeIntervalSinceDate:v3];
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] distantPast];
    [v2 timeIntervalSinceDate:v6];
    v5 = v7;
  }

  return v5 < 300.0;
}

uint64_t __90___CDSpotlightItemRecorder_saveRateLimitedEvents_donatorUid_responseQueue_withCompletion___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

uint64_t __90___CDSpotlightItemRecorder_saveRateLimitedEvents_donatorUid_responseQueue_withCompletion___block_invoke_619(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = [v3 eventBody];
    v6 = [v5 bundleID];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __61___CDSpotlightItemRecorder_donateRelevantShortcuts_bundleID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61___CDSpotlightItemRecorder_donateRelevantShortcuts_bundleID___block_invoke_cold_1();
    }
  }
}

void __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"intent.cd_saveToKnowledgeStore = YES"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
  v28 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v28)
  {
    v7 = *v31;
    v8 = 0x1E7366000uLL;
    v26 = v1;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 intent];
        v12 = [v11 _className];

        v13 = *(v1 + 40);
        if (v12 && v13)
        {
          v14 = [getRESiriActionsDonationsWhitelistClass() sharedInstance];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 intentIsWhitelistedForBundleID:*(v1 + 40) andTypeName:v12];
          }

          else
          {
            v16 = 0;
          }

          v13 = *(v1 + 40);
        }

        else
        {
          v16 = 0;
        }

        v17 = [*(v8 + 1528) eventWithInteraction:v10 bundleIdentifier:v13 storeKeyImage:v16];
        if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v18 = *(v1 + 40);
          [v17 UUID];
          v19 = v8;
          v20 = v7;
          v21 = v6;
          v23 = v22 = v5;
          v24 = [v10 performSelector:sel_contextMetadataWithBundleIdentifier_eventUUID_ withObject:v18 withObject:v23];

          v25 = [v17 UUID];
          [v27 setObject:v24 forKeyedSubscript:v25];

          v5 = v22;
          v6 = v21;
          v7 = v20;
          v8 = v19;
          v1 = v26;
          [v5 addObject:v17];
        }
      }

      v28 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v28);
  }

  if ([v5 count])
  {
    __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke_cold_1(v1, v29, v27, v5);
  }
}

void __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [get_CDContextQueriesClass() keyPathForIntentsDataDictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(a1 + 32);
        v14 = [*(*(&v18 + 1) + 8 * v12) UUID];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [get_CDClientContextClass() userContext];
          [v16 setObject:v15 forKeyedSubscript:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v8 != 0, v6);
  }
}

BOOL __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 domainIdentifier];
  v4 = !v3 || ([*(a1 + 32) containsDomain:v3] & 1) == 0;

  return v4;
}

void __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_645(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [_DKEvent eventWithSearchableItem:v8 bundleIdentifier:*(a1 + 40)];
        if (v9)
        {
          [v2 addObject:v9];
        }

        v10 = objc_autoreleasePoolPush();
        v11 = [_DKEvent eventRepresentingUserActivityWithSearchableItem:v8 bundleIdentifier:*(a1 + 40)];
        if (v11)
        {
          [v2 addObject:v11];
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_645_cold_1(a1, v12, v2);
  }
}

void __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v19 = a3;
  v5 = [get_CDContextQueriesClass() keyPathForUserActivityDataDictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * i) metadata];
        v12 = +[_DKApplicationActivityMetadataKey userActivityRequiredString];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = [get_CDContextQueriesClass() userActivityRequiredString];
          v24 = v14;
          v25 = v13;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

          v16 = [get_CDClientContextClass() userContext];
          [v16 setObject:v15 forKeyedSubscript:v5];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = *(v18 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v6 != 0, v19);
  }
}

void __66___CDSpotlightItemRecorder_addUserAction_withItem_withCompletion___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v3 = [*(a1 + 48) stream];
    v4 = [v3 name];
    v5 = +[_DKSystemEventStreams appLocationActivityStream];
    v6 = [v5 name];
    v7 = [v4 isEqualToString:v6];

    if (v7)
    {
      v8 = 15;
    }

    else
    {
      v8 = 5;
    }

    v9 = [_CDMultiLevelRateLimiter alloc];
    v15[0] = &unk_1F05EEF70;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    v15[1] = &unk_1F05EEF88;
    v16[0] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:30];
    v16[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v2 = [(_CDMultiLevelRateLimiter *)v9 initWithPeriodToCountMap:v12];

    v13 = *(*(a1 + 32) + 64);
    v14 = [*(a1 + 56) bundleID];
    [v13 setObject:v2 forKeyedSubscript:v14];
  }

  *(*(*(a1 + 64) + 8) + 24) = [(_CDMultiLevelRateLimiter *)v2 debited];
}

void __66___CDSpotlightItemRecorder_addUserAction_withItem_withCompletion___block_invoke_655(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 count])
  {
    v6 = [_CDSpotlightItemUtils contextDictionaryForSearchableItem:a1[4] userAction:a1[5]];
    v7 = [get_CDContextQueriesClass() keyPathForUserActivityDataDictionary];
    v8 = [get_CDClientContextClass() userContext];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }

  if (!a2)
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke_cold_1();
    }
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a2 != 0, v5);
  }
}

uint64_t __84___CDSpotlightItemRecorder__deleteUserActivitiesWithPersistentIdentifiers_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 112);
  v4 = a2;
  v5 = +[_DKSource spotlightSourceID];
  v6 = [v3 containsObjectForSourceID:v5 bundleID:*(a1 + 40) itemID:v4];

  return v6;
}

BOOL __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = !v3 || ([*(a1 + 32) containsDomain:v3] & 1) == 0;

  return v4;
}

uint64_t __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 104) computeHashesForString:a2 reuse:*(*(*(a1 + 40) + 8) + 40)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 104);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 getWithHashes:v7];
}

void __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_560(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  [*(*(a1 + 32) + 32) firstObject];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_13_7();
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 32) removeObjectAtIndex:0];
  OUTLINED_FUNCTION_13_7();
  if (v9)
  {
    v11 = v9 + 16;
    v9 = *(v9 + 16);
    v10 = *(v11 + 8);
  }

  else
  {
    v10 = 0;
  }

  v12 = [v8 predicateWithFormat:@"type == %d AND bundleID == %@", v10, v9];
  v13 = [*(*(a1 + 32) + 32) filteredArrayUsingPredicate:v12];
  if (v13)
  {
    OUTLINED_FUNCTION_8_12();
    if (v16)
    {
      v17 = *(v16 + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 mutableCopy];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v1 = *v37;
      do
      {
        v22 = 0;
        do
        {
          if (*v37 != v1)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          if (v23)
          {
            v24 = *(v23 + 8);
          }

          else
          {
            v24 = 0;
          }

          [v18 addObjectsFromArray:v24];
          ++v22;
        }

        while (v21 != v22);
        v25 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
        v21 = v25;
      }

      while (v25);
    }

    v26 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
    OUTLINED_FUNCTION_8_12();
    if (v27)
    {
      v28 = *(v27 + 24);
      if (!v26)
      {
LABEL_23:
        if (v27)
        {
          v29 = *(v27 + 16);
        }

        else
        {
          v29 = 0;
        }

        [(_DKSyncWindow *)v26 setStartDate:v29];
        [(_DKPredictionTimeline *)v26 setStartDate:v18];
        [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v12];
        objc_claimAutoreleasedReturnValue();
        v30 = [OUTLINED_FUNCTION_19_7() filteredArrayUsingPredicate:v1];
        v31 = [v30 mutableCopy];
        v32 = *(a1 + 32);
        v33 = *(v32 + 32);
        *(v32 + 32) = v31;

        OUTLINED_FUNCTION_13_7();
        *(v34 + 40) = v26;

        goto LABEL_4;
      }
    }

    else
    {
      v28 = 0;
      if (!v26)
      {
        goto LABEL_23;
      }
    }

    v26->_type = v28;
    OUTLINED_FUNCTION_8_12();
    goto LABEL_23;
  }

LABEL_4:
  OUTLINED_FUNCTION_8_12();
  if (v14)
  {
    v14 = v14[1];
  }

  v15 = v14;
  *(*(a1 + 32) + 40) -= [v15 count];
}

void __46___CDSpotlightItemRecorder__enqueueOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    v3 = os_transaction_create();
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(a1 + 32);
  }

  [*(v2 + 32) addObject:*(a1 + 40)];
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = v6[1];
  }

  v7 = v6;
  *(*(a1 + 32) + 40) += [v7 count];

  v8 = *(*(a1 + 32) + 8);

  dispatch_source_merge_data(v8, 1uLL);
}

void *__44___CDSpotlightItemRecorder_submitOperation___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  v4 = [*(v2 + 32) count];
  v5 = a1[5];
  if (v5)
  {
    v5 = v5[1];
  }

  if (v3 <= v4)
  {
    v3 = v4;
  }

  result = [v5 count];
  if (result <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = result;
  }

  *(*(a1[6] + 8) + 24) = v7 + v3 > 0x19;
  return result;
}

void __44___CDSpotlightItemRecorder_submitOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_CDSpotlightItemRecorder *)WeakRetained runOperation:?];
}

void __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke_659(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 18);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = 0;
  v7 = v4;
  [v7 deleteInteractionsWithBundleId:v6 domainIdentifiers:v5 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_191750000, v9, OS_LOG_TYPE_ERROR, "Error encountered deleteSearchableItemsWithDomainIdentifiers:bundleID: %@", buf, 0xCu);
    }
  }
}

void __83___CDSpotlightItemRecorder_deleteSearchableItemsSinceDate_bundleID_withCompletion___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate >= CAST(%f, NSDate)", *(a1 + 32)];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleId == %@", *(a1 + 40)];
  v5 = MEMORY[0x1E696AB28];
  v13[0] = v3;
  v13[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 18);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [objc_alloc(OUTLINED_FUNCTION_19_7()) initWithFormat:@"deleteSearchableItemsSinceDate:%@ bundleID:%@", *(a1 + 32), *(a1 + 40)];
  [v1 deleteInteractionsMatchingPredicate:v7 sortDescriptors:MEMORY[0x1E695E0F0] limit:0 debuggingReason:v12 error:0];
}

void __81___CDSpotlightItemRecorder_deleteAllItemsWithBundleID_isCSSIDeletion_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[18];
  }

  [WeakRetained deleteInteractionsWithBundleId:*(a1 + 32) error:0];
}

void __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 40);
  v2 = 134217984;
  v3 = v1;
  _os_log_fault_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "expected _pendingOperationsItemCount to be 0, but was %td", &v2, 0xCu);
}

void __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 64) + 8) + 24);
  OUTLINED_FUNCTION_7_11(a1, a2);
  v9[1] = 3221225472;
  v9[2] = __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke_2;
  v9[3] = &unk_1E736AB18;
  *(a2 + 32) = v10;
  *(a2 + 40) = *(a1 + 56);
  [(_CDSpotlightItemRecorder *)v7 saveRateLimitedEvents:a4 donatorUid:v8 responseQueue:0 withCompletion:a2];
}

void __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_645_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 64) + 8) + 24);
  OUTLINED_FUNCTION_7_11(a1, a2);
  v7[1] = 3221225472;
  v7[2] = __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_2;
  v7[3] = &unk_1E7367CF0;
  *(a2 + 32) = *(v8 + 56);
  [(_CDSpotlightItemRecorder *)v5 saveRateLimitedEvents:a3 donatorUid:v6 responseQueue:0 withCompletion:a2];
}

@end