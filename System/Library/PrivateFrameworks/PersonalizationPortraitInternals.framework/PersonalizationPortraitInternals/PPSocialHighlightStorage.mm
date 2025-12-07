@interface PPSocialHighlightStorage
+ (id)appLinksForResourceURL:(id)l resolvedURL:(id)rL;
+ (id)feedbackPruningPolicy;
+ (int)attributionFeedbackTypeForAttributionFeedbackType:(unint64_t)type;
+ (int)unifiedFeedbackTypeForHighlightFeedbackType:(unint64_t)type;
+ (unint64_t)entitlementStatusForClient:(id)client applicationIdentifiers:(id)identifiers;
- (BOOL)_isCollaborationEntitlementPresentForApplicationIdentifiers:(id)identifiers;
- (BOOL)isClientEntitledForItem:(id)item client:(id)client applicationIdentifiers:(id)identifiers blockedHosts:(id)hosts;
- (BOOL)isClientEntitledForItem:(id)item client:(id)client applicationIdentifiers:(id)identifiers blockedHosts:(id)hosts iTunesOverrideChecker:(id)checker;
- (BOOL)isValidHighlight:(id)highlight applicationIdentifiers:(id)identifiers;
- (BOOL)rerankingEnabled;
- (BOOL)saveAttributionFeedbackForAttributionIdentifier:(id)identifier feedbackType:(unint64_t)type client:(id)client variant:(id)variant;
- (BOOL)saveFeedbackForHighlightIdentifier:(id)identifier feedbackType:(unint64_t)type client:(id)client variant:(id)variant;
- (PPSocialHighlightStorage)init;
- (PPSocialHighlightStorage)initWithFeedbackStream:(id)stream rankedStream:(id)rankedStream database:(id)database;
- (double)_sessionLoggingRate;
- (id)_mostRecentRankedHighlightsMatchingTest:(id)test client:(id)client;
- (id)_rankableItemsForClient:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers autoDonatingChatIdentifiers:(id)chatIdentifiers limit:(unint64_t)limit error:(id *)error;
- (id)_rankableItemsForClient:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers limit:(unint64_t)limit error:(id *)error;
- (id)_screenTimeConversation;
- (id)_socialAttributionFromAttributeValues:(id)values fetchAttributes:(id)attributes;
- (id)_socialLayerDefaults;
- (id)allSupportedHighlightsForAutoDonatingChats:(id)chats error:(id *)error;
- (id)applicationIdentifiersForResourceURL:(id)l resolvedURL:(id)rL;
- (id)attributionForIdentifier:(id)identifier error:(id *)error;
- (id)attributionsForIdentifiers:(id)identifiers error:(id *)error;
- (id)autoDonatingChatsWithShouldContinueBlock:(id)block error:(id *)error;
- (id)cachedRankedHighlightsForClient:(id)client variant:(id)variant queriedHighlights:(id)highlights;
- (id)deduplicateAndSortRankedHighlights:(id)highlights attributionLookup:(id)lookup limit:(unint64_t)limit client:(id)client;
- (id)featurizeRankedHighlights:(id)highlights;
- (id)feedbackItems;
- (id)feedbackItemsInInterval:(double)interval includingRemote:(BOOL)remote;
- (id)feedbackPublisherWithInterval:(double)interval includingRemote:(BOOL)remote;
- (id)highlightFromRankableHighlight:(id)highlight attributionIdentifiers:(id)identifiers earliestAttributionIdentifiers:(id)attributionIdentifiers;
- (id)rankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers error:(id *)error;
- (id)rankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers error:(id *)error;
- (id)rankedItems;
- (id)sharedContentForClient:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers limit:(unint64_t)limit autoDonatingChatIdentifiers:(id)chatIdentifiers error:(id *)error;
- (id)sharedContentFromChats:(id)chats dateRange:(double)range applicationIdentifiers:(id)identifiers error:(id *)error;
- (unint64_t)countDistinctRankedItemsMatchingBatchIdentifier:(id)identifier;
- (unsigned)automaticSharingEnabled;
- (unsigned)automaticSharingEnabledForClient:(id)client error:(id *)error;
- (void)_performFeedbackSessionLoggingForEnrichedFeedback:(id)feedback client:(id)client;
- (void)_writeEnrichedFeedbackForAttributionIdentifier:(id)identifier client:(id)client feedbackType:(int)type;
- (void)_writeEnrichedFeedbackForHighlightIdentifier:(id)identifier client:(id)client feedbackType:(int)type;
- (void)cleanUpFeedbackWithShouldContinueBlock:(id)block ttl:(double)ttl onDeleteBlock:(id)deleteBlock;
- (void)clearFeedbackStream;
- (void)clearRankedStream;
- (void)clearStreams;
- (void)deleteAllRecordsFromBundleId:(id)id;
- (void)deleteAllRecordsFromBundleId:(id)id matchingAttributionIdentifiers:(id)identifiers;
- (void)deleteAllRecordsFromBundleId:(id)id matchingDomainSelection:(id)selection;
- (void)deleteDataDerivedFromContentMatchingRequest:(id)request;
- (void)deleteFeedbackMatchingPredicate:(id)predicate;
- (void)freezeAppLinksCache;
- (void)handleAppLinkChangeNotification:(id)notification;
- (void)saveFeedbackItems:(id)items;
- (void)syncFeedback;
@end

@implementation PPSocialHighlightStorage

- (unsigned)automaticSharingEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer", &keyExistsAndHasValidFormat))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)_screenTimeConversation
{
  if (_screenTimeConversation__pasOnceToken810 != -1)
  {
    dispatch_once(&_screenTimeConversation__pasOnceToken810, &__block_literal_global_323);
  }

  v3 = _screenTimeConversation__pasExprOnceResult;

  return v3;
}

- (void)freezeAppLinksCache
{
  lsAppLinkCache = self->_lsAppLinkCache;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PPSocialHighlightStorage_freezeAppLinksCache__block_invoke;
  v3[3] = &unk_278978048;
  v3[4] = self;
  v3[5] = a2;
  [(_PASLock *)lsAppLinkCache runWithLockAcquired:v3];
}

void __47__PPSocialHighlightStorage_freezeAppLinksCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[3];
  v5 = pp_social_highlights_log_handle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: freezing app link cache", buf, 2u);
    }

    if (v3[2] != v3[3])
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPSocialHighlightStorage.m" lineNumber:849 description:{@"Invalid parameter not satisfying: %@", @"guardedData->_urlToAppID == guardedData->_mutableURLToAppID"}];
    }

    v7 = [MEMORY[0x277D425D8] lazyPlistDictionaryWithPlistDictionary:?];
    v8 = v3[2];
    v3[2] = v7;

    v5 = v3[3];
    v3[3] = 0;
  }

  else if (v6)
  {
    *v10 = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: existing frozen cache is still OK", v10, 2u);
  }
}

- (BOOL)rerankingEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  _socialLayerDefaults = [(PPSocialHighlightStorage *)self _socialLayerDefaults];
  v3 = [_socialLayerDefaults BOOLForKey:@"ProactiveRerankingDisabled"];

  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"on";
    if (v3)
    {
      v6 = @"off";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: reranking state is %@.", &v7, 0xCu);
  }

  return v3 ^ 1;
}

- (id)_socialLayerDefaults
{
  if (_socialLayerDefaults__pasOnceToken811 != -1)
  {
    dispatch_once(&_socialLayerDefaults__pasOnceToken811, &__block_literal_global_326);
  }

  v3 = _socialLayerDefaults__pasExprOnceResult;

  return v3;
}

- (BOOL)_isCollaborationEntitlementPresentForApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = identifiersCopy;
  if (identifiersCopy)
  {
    if (([identifiersCopy containsObject:@"*"] & 1) != 0 || (objc_msgSend(v4, "containsObject:", @"collaborations") & 1) == 0)
    {
      v5 = [v4 containsObject:@"portraitCollaborations"];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mostRecentRankedHighlightsMatchingTest:(id)test client:(id)client
{
  v35 = *MEMORY[0x277D85DE8];
  cache = self->_cache;
  testCopy = test;
  clientCopy = client;
  if (cache)
  {
    v8 = objc_opt_new();
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__658;
    v21[4] = __Block_byref_object_dispose__659;
    v22 = 0;
    v9 = objc_autoreleasePoolPush();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__658;
    v33 = __Block_byref_object_dispose__659;
    v34 = 0;
    lock = cache->_lock;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke;
    v20[3] = &unk_278977088;
    v20[4] = &buf;
    [(_PASLock *)lock runWithLockAcquired:v20];
    v11 = *(*(&buf + 1) + 40);
    *&v23 = MEMORY[0x277D85DD0];
    *(&v23 + 1) = 3221225472;
    v24 = __72__PPSocialHighlightCache_mostRecentRankedHighlightsMatchingTest_client___block_invoke_40;
    v25 = &unk_278971960;
    v26 = clientCopy;
    v28 = testCopy;
    v29 = v21;
    v12 = v8;
    v27 = v12;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_39 shouldContinue:&v23];

    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(v9);
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: found %tu matching highlights.", &buf, 0xCu);
    }

    v16 = v12;
    _Block_object_dispose(v21, 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    LODWORD(v23) = 134217984;
    *(&v23 + 4) = v18;
    _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: found %tu matching highlights.", &v23, 0xCu);
  }

  return v16;
}

- (unint64_t)countDistinctRankedItemsMatchingBatchIdentifier:(id)identifier
{
  cache = self->_cache;
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (cache)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (identifierCopy)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      lock = cache->_lock;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __74__PPSocialHighlightCache_countDistinctRankedItemsMatchingBatchIdentifier___block_invoke;
      v9[3] = &unk_2789770D0;
      v10 = identifierCopy;
      v11 = &v12;
      [(_PASLock *)lock runWithLockAcquired:v9];
      v6 = v13[3];

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cachedRankedHighlightsForClient:(id)client variant:(id)variant queriedHighlights:(id)highlights
{
  v35 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  variantCopy = variant;
  highlightsCopy = highlights;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__22778;
  v29 = __Block_byref_object_dispose__22779;
  v30 = 0;
  v11 = dispatch_semaphore_create(0);
  cache = self->_cache;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __86__PPSocialHighlightStorage_cachedRankedHighlightsForClient_variant_queriedHighlights___block_invoke;
  v22 = &unk_278978108;
  v24 = &v25;
  v13 = v11;
  v23 = v13;
  [PPSocialHighlightCache cachedRankedHighlightsForClient:clientCopy variant:&v19 completion:?];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  if (highlightsCopy && ([(PPSocialHighlightCache *)self->_cache cachedHighlightsArrayIsValid:highlightsCopy queryResults:?]& 1) == 0)
  {
    [(PPSocialHighlightStorage *)self invalidateCacheForClient:clientCopy, v19, v20, v21, v22];
    v17 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = clientCopy;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: cache for client '%@' is invalid, re-ranking.", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v26[5] count];
      *buf = 134218242;
      v32 = v15;
      v33 = 2112;
      v34 = clientCopy;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: returning cached %tu items for client '%@'", buf, 0x16u);
    }

    v16 = [v26[5] copy];
  }

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __86__PPSocialHighlightStorage_cachedRankedHighlightsForClient_variant_queriedHighlights___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)clearFeedbackStream
{
  v3 = objc_autoreleasePoolPush();
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_463];

  objc_autoreleasePoolPop(v3);
}

- (void)clearRankedStream
{
  v3 = objc_autoreleasePoolPush();
  cache = self->_cache;
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  [(PPSocialHighlightCache *)cache deleteMatchingPredicate:v5];

  objc_autoreleasePoolPop(v3);
}

- (void)clearStreams
{
  [(PPSocialHighlightStorage *)self clearRankedStream];

  [(PPSocialHighlightStorage *)self clearFeedbackStream];
}

- (id)rankedItems
{
  cache = self->_cache;
  if (cache)
  {
    v3 = objc_opt_new();
    v4 = objc_autoreleasePoolPush();
    lock = cache->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__PPSocialHighlightCache_allItems__block_invoke;
    v8[3] = &unk_278976F28;
    v6 = v3;
    v9 = v6;
    [(_PASLock *)lock runWithLockAcquired:v8];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)saveAttributionFeedbackForAttributionIdentifier:(id)identifier feedbackType:(unint64_t)type client:(id)client variant:(id)variant
{
  identifierCopy = identifier;
  clientCopy = client;
  if ([(PPSocialHighlightStorage *)self rerankingEnabled])
  {
    [(PPSocialHighlightStorage *)self _writeEnrichedFeedbackForAttributionIdentifier:identifierCopy client:clientCopy feedbackType:[PPSocialHighlightStorage attributionFeedbackTypeForAttributionFeedbackType:type]];
  }

  return 1;
}

- (BOOL)saveFeedbackForHighlightIdentifier:(id)identifier feedbackType:(unint64_t)type client:(id)client variant:(id)variant
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  if ([(PPSocialHighlightStorage *)self rerankingEnabled])
  {
    v11 = [PPSocialHighlightStorage unifiedFeedbackTypeForHighlightFeedbackType:type];
    [(PPSocialHighlightStorage *)self _writeEnrichedFeedbackForHighlightIdentifier:identifierCopy client:clientCopy feedbackType:v11];
    if (type == 2)
    {
      v12 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: forcing a sync as a hide occurred.", buf, 2u);
      }

      [(PPSocialHighlightStorage *)self syncFeedback];
      v13 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v11 >= 0xC)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v11];
        }

        else
        {
          v14 = off_2789784B0[v11];
        }

        *buf = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = clientCopy;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: invalidating cache due to feedback of type %@ from client '%@'", buf, 0x16u);
      }

      [(PPSocialHighlightCache *)self->_cache invalidateCacheForClient:clientCopy];
    }
  }

  return 1;
}

- (void)_writeEnrichedFeedbackForHighlightIdentifier:(id)identifier client:(id)client feedbackType:(int)type
{
  v5 = *&type;
  v59 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v10 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (v5 >= 0xC)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v38 = off_2789784B0[v5];
    }

    *buf = 138740483;
    v54 = identifierCopy;
    v55 = 2112;
    v56 = clientCopy;
    v57 = 2112;
    v58 = v38;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: saving feedback for item %{sensitive}@, from client '%@' of type %@.", buf, 0x20u);
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke;
  v50[3] = &unk_278978428;
  v11 = identifierCopy;
  v51 = v11;
  v12 = [(PPSocialHighlightStorage *)self _mostRecentRankedHighlightsMatchingTest:v50 client:clientCopy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = objc_autoreleasePoolPush();
  reverseObjectEnumerator = [v12 reverseObjectEnumerator];
  objc_autoreleasePoolPop(v13);
  v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
LABEL_4:
    v18 = 0;
    while (1)
    {
      if (*v47 != v17)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v19 = *(*(&v46 + 1) + 8 * v18);
      if ([v19 hasIsPrimary])
      {
        if ([v19 isPrimary])
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    v20 = v19;

    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_11:
  }

  v21 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = clientCopy;
    _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: received feedback from %@, but was unable to match a primary highlight.", buf, 0xCu);
  }

  v20 = 0;
LABEL_16:
  batchIdentifier = [v20 batchIdentifier];
  v23 = [(PPSocialHighlightStorage *)self countDistinctRankedItemsMatchingBatchIdentifier:batchIdentifier];

  v24 = objc_opt_new();
  [v24 setClientIdentifier:clientCopy];
  [v24 setFeedbackType:v5];
  v25 = objc_opt_new();
  [v25 timeIntervalSinceReferenceDate];
  [v24 setFeedbackCreationSecondsSinceReferenceDate:?];

  lock = self->_lock;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke_459;
  v41[3] = &unk_278978450;
  v27 = v12;
  v42 = v27;
  v28 = v24;
  v43 = v28;
  selfCopy = self;
  v29 = clientCopy;
  v45 = v29;
  [(_PASLock *)lock runWithLockAcquired:v41];
  [PPSocialHighlightMetrics logMatchedFeedbackForHighlightMatches:v27 batchSize:v23 type:v5 client:v29];
  if (![v27 count])
  {
    v30 = objc_autoreleasePoolPush();
    v31 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740227;
      v54 = v11;
      v55 = 2112;
      v56 = v29;
      _os_log_debug_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: unable to match feedback for identifier: %{sensitive}@ from client '%@'", buf, 0x16u);
    }

    v32 = objc_opt_new();
    [v32 setHighlightIdentifier:v11];
    v33 = objc_opt_new();
    [v33 setClientIdentifier:v29];
    [v33 setFeedbackType:v5];
    v34 = objc_opt_new();
    [v34 timeIntervalSinceReferenceDate];
    [v33 setFeedbackCreationSecondsSinceReferenceDate:?];

    [v33 setHighlight:v32];
    v35 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v33];
    v36 = self->_lock;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke_461;
    v39[3] = &unk_278978198;
    v40 = v35;
    v37 = v35;
    [(_PASLock *)v36 runWithLockAcquired:v39];

    objc_autoreleasePoolPop(v30);
  }
}

uint64_t __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasHighlightIdentifier])
  {
    v4 = [v3 highlightIdentifier];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __93__PPSocialHighlightStorage__writeEnrichedFeedbackForHighlightIdentifier_client_feedbackType___block_invoke_459(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(a1 + 40) copy];
        [v11 setHighlight:v9];
        [*(a1 + 48) _performFeedbackSessionLoggingForEnrichedFeedback:v11 client:*(a1 + 56)];
        v12 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v11];
        [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v12];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_writeEnrichedFeedbackForAttributionIdentifier:(id)identifier client:(id)client feedbackType:(int)type
{
  v5 = *&type;
  v72 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v10 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (v5 >= 0xC)
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v45 = off_2789784B0[v5];
    }

    *buf = 138740483;
    v67 = identifierCopy;
    v68 = 2112;
    v69 = clientCopy;
    v70 = 2112;
    v71 = v45;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: saving attribution feedback for item %{sensitive}@, from client '%@' of type %@.", buf, 0x20u);
  }

  v51 = v5;

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke;
  v63[3] = &unk_278978428;
  v11 = identifierCopy;
  v64 = v11;
  v12 = [(PPSocialHighlightStorage *)self _mostRecentRankedHighlightsMatchingTest:v63 client:clientCopy];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = objc_autoreleasePoolPush();
  reverseObjectEnumerator = [v12 reverseObjectEnumerator];
  objc_autoreleasePoolPop(v13);
  v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v60;
LABEL_4:
    v18 = 0;
    while (1)
    {
      if (*v60 != v17)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v19 = *(*(&v59 + 1) + 8 * v18);
      if ([v19 hasIsPrimary])
      {
        if ([v19 isPrimary])
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v59 objects:v65 count:16];
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    v21 = v19;

    v20 = v51;
    if (v21)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_11:

    v20 = v51;
  }

  v22 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = clientCopy;
    _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: received feedback from %@, but was unable to match a primary highlight.", buf, 0xCu);
  }

  v21 = 0;
LABEL_16:
  v23 = objc_opt_new();
  [v23 setClientIdentifier:clientCopy];
  v24 = objc_opt_new();
  [v24 timeIntervalSinceReferenceDate];
  [v23 setFeedbackCreationSecondsSinceReferenceDate:?];

  [v23 setFeedbackType:v20];
  lock = self->_lock;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke_457;
  v54[3] = &unk_278978450;
  v26 = v12;
  v55 = v26;
  v27 = v23;
  v56 = v27;
  selfCopy = self;
  v28 = clientCopy;
  v58 = v28;
  [(_PASLock *)lock runWithLockAcquired:v54];
  if (![v26 count])
  {
    v49 = v21;
    context = objc_autoreleasePoolPush();
    v29 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740227;
      v67 = v11;
      v68 = 2112;
      v69 = v28;
      _os_log_debug_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: unable to match feedback for attribution identifier: %{sensitive}@ from client '%@'", buf, 0x16u);
    }

    v30 = [(PPSocialHighlightStorage *)self attributionForIdentifier:v11 error:0];
    v50 = v11;
    v31 = objc_opt_new();
    [v31 setAttributionIdentifier:v50];
    v47 = v30;
    groupDisplayName = [v30 groupDisplayName];
    [v31 setDisplayName:groupDisplayName];

    v33 = MEMORY[0x277D3A578];
    groupPhotoPath = [v30 groupPhotoPath];
    absoluteString = [groupPhotoPath absoluteString];
    [absoluteString dataUsingEncoding:4];
    v36 = v46 = self;
    v37 = [v33 Sha256ForData:v36 withSalt:0];
    v38 = [v37 base64EncodedStringWithOptions:0];
    v39 = [v38 substringToIndex:8];
    [v31 setGroupPhotoPathDigest:v39];

    v40 = objc_opt_new();
    [v40 setClientIdentifier:v28];
    [v40 setFeedbackType:v51];
    v41 = objc_opt_new();
    [v41 timeIntervalSinceReferenceDate];
    [v40 setFeedbackCreationSecondsSinceReferenceDate:?];

    [v40 setHighlight:v31];
    v42 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v40];
    v43 = v46->_lock;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke_458;
    v52[3] = &unk_278978198;
    v53 = v42;
    v44 = v42;
    [(_PASLock *)v43 runWithLockAcquired:v52];

    v11 = v50;
    objc_autoreleasePoolPop(context);
    v21 = v49;
  }
}

uint64_t __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasAttributionIdentifier])
  {
    v4 = [v3 attributionIdentifier];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __95__PPSocialHighlightStorage__writeEnrichedFeedbackForAttributionIdentifier_client_feedbackType___block_invoke_457(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(a1 + 40) copy];
        [v11 setHighlight:v9];
        [*(a1 + 48) _performFeedbackSessionLoggingForEnrichedFeedback:v11 client:*(a1 + 56)];
        v12 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v11];
        [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v12];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_performFeedbackSessionLoggingForEnrichedFeedback:(id)feedback client:(id)client
{
  v52 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  clientCopy = client;
  [(PPSocialHighlightStorage *)self _sessionLoggingRate];
  if ([MEMORY[0x277D3A578] yesWithProbability:?])
  {
    v8 = objc_autoreleasePoolPush();
    v45 = feedbackCopy;
    highlight = [feedbackCopy highlight];
    features = [highlight features];
    v11 = [features mutableCopy];
    v12 = v11;
    v44 = v8;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v15 = v13;

    v16 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 stringByReplacingOccurrencesOfString:@":" withString:@"_"];
          v25 = [v24 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

          v26 = [v17 objectForKeyedSubscript:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _pas_stringBackedByUTF8CString = [v26 _pas_stringBackedByUTF8CString];

            v26 = _pas_stringBackedByUTF8CString;
          }

          _pas_stringBackedByUTF8CString2 = [v25 _pas_stringBackedByUTF8CString];
          [v16 setObject:v26 forKeyedSubscript:_pas_stringBackedByUTF8CString2];

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v19);
    }

    _pas_stringBackedByUTF8CString3 = [clientCopy _pas_stringBackedByUTF8CString];
    [v16 setObject:_pas_stringBackedByUTF8CString3 forKeyedSubscript:@"clientId"];

    feedbackCopy = v45;
    feedbackType = [v45 feedbackType];
    if (feedbackType >= 0xC)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", feedbackType];
    }

    else
    {
      v31 = off_2789784B0[feedbackType];
    }

    _pas_stringBackedByUTF8CString4 = [(__CFString *)v31 _pas_stringBackedByUTF8CString];
    [v16 setObject:_pas_stringBackedByUTF8CString4 forKeyedSubscript:@"feedbackType"];

    v33 = MEMORY[0x277CCABB0];
    highlight2 = [v45 highlight];
    v35 = [v33 numberWithBool:{objc_msgSend(highlight2, "isPrimary")}];
    [v16 setObject:v35 forKeyedSubscript:@"isPrimary"];

    v36 = MEMORY[0x277CCABB0];
    highlight3 = [v45 highlight];
    v38 = [v36 numberWithBool:{objc_msgSend(highlight3, "isProxy")}];
    [v16 setObject:v38 forKeyedSubscript:@"isProxy"];

    v39 = objc_opt_new();
    uUIDString = [v39 UUIDString];

    v41 = [uUIDString substringToIndex:{objc_msgSend(uUIDString, "length") >> 2}];
    _pas_stringBackedByUTF8CString5 = [v41 _pas_stringBackedByUTF8CString];
    [v16 setObject:_pas_stringBackedByUTF8CString5 forKeyedSubscript:@"uuid"];

    v43 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v43, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: performing feedback session logging.", buf, 2u);
    }

    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlightSessionMatched" payload:v16 inBackground:0];
    objc_autoreleasePoolPop(v44);
  }

  else
  {
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: skipping feedback session logging as not selected for sampling.", buf, 2u);
    }
  }
}

- (double)_sessionLoggingRate
{
  isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
  result = 1.0;
  if ((isInternalBuild & 1) == 0)
  {
    isBetaBuild = [MEMORY[0x277D42590] isBetaBuild];
    result = 0.01;
    if (!isBetaBuild)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)deleteAllRecordsFromBundleId:(id)id matchingAttributionIdentifiers:(id)identifiers
{
  idCopy = id;
  identifiersCopy = identifiers;
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:identifiersCopy];
  v9 = objc_autoreleasePoolPush();
  v10 = MEMORY[0x277CCAC30];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke;
  v24[3] = &unk_278978400;
  v11 = idCopy;
  v25 = v11;
  v12 = v8;
  v26 = v12;
  v13 = [v10 predicateWithBlock:v24];
  [(PPSocialHighlightStorage *)self deleteFeedbackMatchingPredicate:v13];

  v14 = MEMORY[0x277CCAC30];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke_2;
  v21 = &unk_278978400;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v17 = [v14 predicateWithBlock:&v18];
  [(PPSocialHighlightStorage *)self deleteVendedMatchingPredicate:v17, v18, v19, v20, v21];

  objc_autoreleasePoolPop(v9);
}

uint64_t __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 highlight];

  v10 = [v9 sourceBundleId];
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 sourceBundleId];
    if ([v11 isEqualToString:v12])
    {
      v13 = [v9 attributionIdentifier];
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = [v9 attributionIdentifier];
        v16 = [v14 containsObject:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v16;
}

uint64_t __88__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingAttributionIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 sourceBundleId];
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v8 sourceBundleId];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v8 attributionIdentifier];
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v8 attributionIdentifier];
        v15 = [v13 containsObject:v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

- (void)deleteAllRecordsFromBundleId:(id)id matchingDomainSelection:(id)selection
{
  idCopy = id;
  selectionCopy = selection;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CCAC30];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke;
  v23[3] = &unk_278978400;
  v10 = idCopy;
  v24 = v10;
  v11 = selectionCopy;
  v25 = v11;
  v12 = [v9 predicateWithBlock:v23];
  [(PPSocialHighlightStorage *)self deleteFeedbackMatchingPredicate:v12];

  v13 = MEMORY[0x277CCAC30];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke_2;
  v20 = &unk_278978400;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = [v13 predicateWithBlock:&v17];
  [(PPSocialHighlightStorage *)self deleteVendedMatchingPredicate:v16, v17, v18, v19, v20];

  objc_autoreleasePoolPop(v8);
}

uint64_t __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 highlight];

  v10 = [v9 sourceBundleId];
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 sourceBundleId];
    if ([v11 isEqualToString:v12])
    {
      v13 = [v9 domainIdentifier];
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = [v9 domainIdentifier];
        v16 = [v14 containsDomain:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v16;
}

uint64_t __81__PPSocialHighlightStorage_deleteAllRecordsFromBundleId_matchingDomainSelection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 sourceBundleId];
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v8 sourceBundleId];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v8 domainIdentifier];
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v8 domainIdentifier];
        v15 = [v13 containsDomain:v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

- (void)deleteAllRecordsFromBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCAC30];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke;
  v16[3] = &unk_2789783D8;
  v7 = idCopy;
  v17 = v7;
  v8 = [v6 predicateWithBlock:v16];
  [(PPSocialHighlightStorage *)self deleteFeedbackMatchingPredicate:v8];

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  cache = self->_cache;
  v11 = MEMORY[0x277CCAC30];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke_2;
  v14[3] = &unk_2789783D8;
  v12 = v7;
  v15 = v12;
  v13 = [v11 predicateWithBlock:v14];
  [(PPSocialHighlightCache *)cache deleteMatchingPredicate:v13];

  objc_autoreleasePoolPop(v9);
}

uint64_t __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 eventBody];
  v9 = [v8 highlight];

  v10 = [v9 sourceBundleId];
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 sourceBundleId];
    v13 = [v11 isEqualToString:v12];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v13;
}

uint64_t __57__PPSocialHighlightStorage_deleteAllRecordsFromBundleId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if ([v4 hasSourceBundleId])
  {
    v5 = [v3 eventBody];
    v6 = [v5 sourceBundleId];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteDataDerivedFromContentMatchingRequest:(id)request
{
  requestCopy = request;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke;
  v12[3] = &unk_278978338;
  v14 = &v15;
  v6 = requestCopy;
  v13 = v6;
  [(_PASLock *)lock runWithLockAcquired:v12];
  if (*(v16 + 24) == 1)
  {
    v7 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Skipped deletion due to bloom filter miss", buf, 2u);
    }
  }

  else
  {
    v9[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_425;
    v10[3] = &unk_278978360;
    v10[4] = self;
    v8[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_2;
    v9[3] = &unk_278978388;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_3;
    v8[3] = &unk_2789783B0;
    [v6 accessCriteriaUsingBundleIdentifierBlock:v10 domainSelectionBlock:v9 uniqueIdentifiersBlock:v8];
  }

  _Block_object_dispose(&v15, 8);
}

void __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (a2)
  {
    if (*(a2 + 16))
    {
      LOBYTE(a2) = [v4 matchesBloomFilter:?] ^ 1;
    }

    else
    {
      LOBYTE(a2) = 0;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __72__PPSocialHighlightStorage_deleteDataDerivedFromContentMatchingRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allObjects];
  [v4 deleteAllRecordsFromBundleId:v5 matchingAttributionIdentifiers:v6];
}

- (void)deleteFeedbackMatchingPredicate:(id)predicate
{
  v31 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  lock = self->_lock;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke;
  v18 = &unk_278978310;
  v8 = v6;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v10 = predicateCopy;
  v21 = v10;
  v22 = &v23;
  [(_PASLock *)lock runWithLockAcquired:&v15];
  v11 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 count];
    v13 = v24[3];
    *buf = 134218240;
    v28 = v12;
    v29 = 2048;
    v30 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: distilled %lu hidden feedback, and deleted %lu others.", buf, 0x16u);
  }

  if (v24[3])
  {
    [(PPSocialHighlightStorage *)self syncFeedback];
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: forcing sync of deletions.", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

void __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = v3[1];
    LODWORD(v5) = 869711765;
    v6 = [MEMORY[0x277D42548] bloomFilterInMemoryWithNumberOfValuesN:4000 errorRateP:v5];
    v7 = v3[2];
    v3[2] = v6;

    v3[3] = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke_422;
    v32[3] = &unk_2789782E8;
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v35 = v8;
    v37 = v9;
    v10 = v3;
    v36 = v10;
    [v4 deleteLocalAndRemoteEventsWithReason:2 usingPredicateBlock:v32];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v25 = v4;
      v26 = v3;
      v14 = *v29;
      obj = v11;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = objc_opt_new();
          v19 = objc_opt_new();
          [v18 setHighlight:v19];

          v20 = [v16 highlight];
          v21 = [v20 highlightIdentifier];
          v22 = [v18 highlight];
          [v22 setHighlightIdentifier:v21];

          [v16 feedbackCreationSecondsSinceReferenceDate];
          [v18 setFeedbackCreationSecondsSinceReferenceDate:?];
          [v18 setFeedbackType:2];
          v23 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v18];
          [(PPSocialHighlightStorageGuardedData *)v10 sendEvent:v23];

          objc_autoreleasePoolPop(v17);
        }

        v13 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v13);

      v4 = v25;
      v3 = v26;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (v3[3] <= 0x7F)
    {
      v24 = v3[2];
      v3[2] = 0;

      v3[3] = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: failing deletion due to Biome version mismatch.", buf, 2u);
  }

LABEL_17:
}

uint64_t __60__PPSocialHighlightStorage_deleteFeedbackMatchingPredicate___block_invoke_422(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [PPSocialHighlightFeedbackUtils feedbackFromBiomeEvent:v5];
  if ([v6 feedbackType] == 2)
  {
    v7 = [v6 highlight];
    v8 = [v7 highlightIdentifier];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 32);
    v10 = [v6 highlight];
    v11 = [v10 highlightIdentifier];
    LOBYTE(v9) = [v9 containsObject:v11];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 40) addObject:v6];
      v12 = *(a1 + 32);
      v13 = [v6 highlight];
      v14 = [v13 highlightIdentifier];
      [v12 addObject:v14];
    }
  }

  v15 = [*(a1 + 48) evaluateWithObject:v3];
  if (v6)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    [(PPSocialHighlightStorageGuardedData *)*(a1 + 56) addToBloomFilter:v5];
    v17 = 0;
    goto LABEL_12;
  }

  ++*(*(*(a1 + 64) + 8) + 24);
LABEL_10:
  v17 = 1;
LABEL_12:

  objc_autoreleasePoolPop(v4);
  return v17;
}

- (void)cleanUpFeedbackWithShouldContinueBlock:(id)block ttl:(double)ttl onDeleteBlock:(id)deleteBlock
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  deleteBlockCopy = deleteBlock;
  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-ttl];
  v11 = objc_alloc(MEMORY[0x277CBEAA8]);
  v12 = +[PPConfiguration sharedInstance];
  [v12 socialHighlightDecayInterval];
  v14 = [v11 initWithTimeIntervalSinceNow:-v13];

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke;
  v30[3] = &unk_2789782C0;
  v18 = blockCopy;
  v35 = v18;
  v19 = v14;
  v31 = v19;
  v20 = v15;
  v32 = v20;
  v21 = v16;
  v33 = v21;
  v22 = v10;
  v34 = v22;
  v37 = v38;
  v23 = deleteBlockCopy;
  v36 = v23;
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = &__block_literal_global_421;
  }

  if ([(_PASLock *)lock runWithLockAcquired:v30 shouldContinueBlock:v24]== 1)
  {
    v25 = pp_default_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: deferring before lock acquired for cleanup.", buf, 2u);
    }
  }

  v26 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v21 count];
    *buf = 134217984;
    v40 = v27;
    _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: repersisted %tu hidden feedback items.", buf, 0xCu);
  }

  v28 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v21 count];
    *buf = 134217984;
    v40 = v29;
    _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: deleted a total of %tu feedback items.", buf, 0xCu);
  }

  _Block_object_dispose(v38, 8);
}

void __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = v3[1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke_416;
    v24[3] = &unk_278978298;
    v27 = *(a1 + 64);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v25 = v10;
    v26 = v9;
    v19 = *(a1 + 72);
    v11 = v19;
    v28 = v19;
    [v4 deleteLocalAndRemoteEventsWithReason:1 usingPredicateBlock:v24];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = *(a1 + 48);
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v17];
          objc_autoreleasePoolPop(v18);
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v4 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: failing deletion due to Biome version mismatch.", buf, 2u);
    }
  }
}

uint64_t __85__PPSocialHighlightStorage_cleanUpFeedbackWithShouldContinueBlock_ttl_onDeleteBlock___block_invoke_416(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[8];
  if (v6 && ((*(v6 + 16))() & 1) == 0)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: deferring cleanup.", v35, 2u);
    }

    *a3 = 1;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v5 timestamp];
  v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  v11 = [v5 eventBody];
  v12 = [v11 feedbackCreationDate];

  v13 = [v5 eventBody];
  v14 = [v13 feedbackType];

  if (v14 == 2 && [v12 compare:a1[4]] != -1)
  {
    v15 = [v5 eventBody];
    if (v15)
    {
      v16 = v15;
      v17 = [v5 eventBody];
      v18 = [v17 highlight];
      v19 = [v18 highlightIdentifier];

      if (v19)
      {
        v20 = a1[5];
        v21 = [v5 eventBody];
        v22 = [v21 highlight];
        v23 = [v22 highlightIdentifier];
        LOBYTE(v20) = [v20 containsObject:v23];

        if ((v20 & 1) == 0)
        {
          v24 = a1[6];
          v25 = [v5 eventBody];
          [v24 addObject:v25];

          v26 = a1[5];
          v27 = [v5 eventBody];
          v28 = [v27 highlight];
          v29 = [v28 highlightIdentifier];
          [v26 addObject:v29];

LABEL_20:
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }
  }

  if ([v10 compare:a1[7]] == -1 || objc_msgSend(v12, "compare:", a1[7]) == -1 || v14 == 2)
  {
    v31 = [v5 eventBody];

    if (v31)
    {
      v32 = [v5 eventBody];
      v27 = [PPSocialHighlightFeedbackUtils feedbackFromBiomeEvent:v32];

      ++*(*(a1[10] + 8) + 24);
      if (v27)
      {
        v33 = a1[9];
        if (v33)
        {
          (*(v33 + 16))(v33, v27);
        }
      }

      goto LABEL_20;
    }

LABEL_21:
    v30 = 1;
    goto LABEL_22;
  }

  v30 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v8);
  return v30;
}

- (id)feedbackItems
{
  v3 = +[PPConfiguration sharedInstance];
  [v3 socialHighlightFeedbackDeletionInterval];
  v4 = [(PPSocialHighlightStorage *)self feedbackItemsInInterval:1 includingRemote:?];

  return v4;
}

- (id)feedbackItemsInInterval:(double)interval includingRemote:(BOOL)remote
{
  remoteCopy = remote;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__22778;
  v22 = __Block_byref_object_dispose__22779;
  v23 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PPSocialHighlightStorage *)self feedbackPublisherWithInterval:remoteCopy includingRemote:interval];
  v9 = [v8 filterWithIsIncluded:&__block_literal_global_408];
  v10 = [v9 mapWithTransform:&__block_literal_global_411];
  collect = [v10 collect];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke_3;
  v17[3] = &unk_278978248;
  v17[4] = &v18;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke_413;
  v16[3] = &unk_278978270;
  v16[4] = &v18;
  v12 = [collect sinkWithCompletion:v17 receiveInput:v16];

  objc_autoreleasePoolPop(v7);
  v13 = v19[5];
  if (!v13)
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);

  return v14;
}

void __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 state];
  v6 = pp_social_highlights_log_handle();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 error];
      v10 = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: error collecting feedback: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(*(a1 + 32) + 8) + 40) count];
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: successfully collected feedback %tu feedback items.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

id __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];
  v5 = [PPSocialHighlightFeedbackUtils feedbackFromBiomeEvent:v4];

  objc_autoreleasePoolPop(v3);

  return v5;
}

BOOL __68__PPSocialHighlightStorage_feedbackItemsInInterval_includingRemote___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];
  objc_autoreleasePoolPop(v3);

  return v4 != 0;
}

- (id)feedbackPublisherWithInterval:(double)interval includingRemote:(BOOL)remote
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__22778;
  v21 = __Block_byref_object_dispose__22779;
  v22 = 0;
  v7 = objc_opt_new();
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8 - interval;

  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__PPSocialHighlightStorage_feedbackPublisherWithInterval_includingRemote___block_invoke;
  v15[3] = &unk_2789781E0;
  remoteCopy = remote;
  v15[4] = &v17;
  *&v15[5] = v9;
  [(_PASLock *)lock runWithLockAcquired:v15];
  v11 = [v18[5] filterWithIsIncluded:&__block_literal_global_406];
  v12 = v18[5];
  v18[5] = v11;

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __74__PPSocialHighlightStorage_feedbackPublisherWithInterval_includingRemote___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = v12[1];
  if (*(a1 + 48) == 1)
  {
    v4 = [v3 remoteDevices];
    v5 = [v12[1] publishersForRemoteDevices:v4 startTime:1 includeLocal:&__block_literal_global_403 pipeline:*(a1 + 40)];
    v6 = [v5 merge];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [v3 publisherFromStartTime:*(a1 + 40)];
    v10 = *(*(a1 + 32) + 8);
    v4 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v11 = objc_opt_self();
}

BOOL __74__PPSocialHighlightStorage_feedbackPublisherWithInterval_includingRemote___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];

  if (!v4)
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: filtering event from Biome with nil event body.", v7, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);

  return v4 != 0;
}

- (void)saveFeedbackItems:(id)items
{
  itemsCopy = items;
  if ([(PPSocialHighlightStorage *)self rerankingEnabled])
  {
    lock = self->_lock;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__PPSocialHighlightStorage_saveFeedbackItems___block_invoke;
    v6[3] = &unk_278978198;
    v7 = itemsCopy;
    [(_PASLock *)lock runWithLockAcquired:v6];
  }
}

void __46__PPSocialHighlightStorage_saveFeedbackItems___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [PPSocialHighlightFeedbackUtils biomeEventFromFeedback:v10, v15];
        [(PPSocialHighlightStorageGuardedData *)v3 sendEvent:v12];

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [*(a1 + 32) count];
    *buf = 134217984;
    v20 = v14;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: saved %tu events to the stream.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_socialAttributionFromAttributeValues:(id)values fetchAttributes:(id)attributes
{
  v74 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  attributesCopy = attributes;
  v7 = objc_opt_new();
  v8 = [valuesCopy count];
  if (v8 == [attributesCopy count])
  {
    v45 = attributesCopy;
    v9 = [valuesCopy objectAtIndexedSubscript:0];
    v10 = [valuesCopy objectAtIndexedSubscript:1];
    v11 = [valuesCopy objectAtIndexedSubscript:2];
    v12 = [valuesCopy objectAtIndexedSubscript:3];
    v62 = [valuesCopy objectAtIndexedSubscript:4];
    v13 = [valuesCopy objectAtIndexedSubscript:5];
    v61 = [valuesCopy objectAtIndexedSubscript:6];
    v14 = [valuesCopy objectAtIndexedSubscript:7];
    v15 = [valuesCopy objectAtIndexedSubscript:8];
    v16 = [valuesCopy objectAtIndexedSubscript:9];
    v58 = [valuesCopy objectAtIndexedSubscript:10];
    v57 = [valuesCopy objectAtIndexedSubscript:11];
    v53 = [valuesCopy objectAtIndexedSubscript:12];
    v48 = v9;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        log = v9;
      }

      else
      {
        log = 0;
      }

      if (v10)
      {
LABEL_14:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = v10;
        }

        else
        {
          v59 = 0;
        }

        if (v11)
        {
LABEL_18:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringByStandardizingPath = [v11 stringByStandardizingPath];
            v52 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:stringByStandardizingPath isDirectory:0];
          }

          else
          {
            v52 = 0;
          }

          if (!v12)
          {
            goto LABEL_24;
          }

LABEL_22:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v12;
            goto LABEL_25;
          }

LABEL_24:
          v51 = 0;
LABEL_25:
          v54 = v16;
          if (v62)
          {
            objc_opt_class();
            v60 = 0;
            if ((objc_opt_isKindOfClass() & 1) == 0 || !v13)
            {
LABEL_37:
              v46 = v11;
              v47 = v10;
              if (v61)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v14)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v55 = v7;
                      v22 = v61;
                      v23 = v14;
                      v24 = [v22 count];
                      if (v24 == [v23 count] && objc_msgSend(v22, "count"))
                      {
                        v25 = 0;
                        v49 = v23;
                        do
                        {
                          v26 = [v22 objectAtIndexedSubscript:v25];
                          v27 = [v23 objectAtIndexedSubscript:v25];
                          if (v26)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              if (v27)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v28 = v15;
                                  v29 = v13;
                                  v30 = v12;
                                  v31 = [objc_alloc(MEMORY[0x277D3A4D0]) initWithHandle:v27 displayName:v26];
                                  [v55 addObject:v31];

                                  v12 = v30;
                                  v13 = v29;
                                  v15 = v28;
                                  v23 = v49;
                                }
                              }
                            }
                          }

                          ++v25;
                        }

                        while ([v22 count] > v25);
                      }

                      v16 = v54;
                      v7 = v55;
                    }
                  }
                }
              }

              if (v15)
              {
                objc_opt_class();
                v32 = v58;
                if (objc_opt_isKindOfClass())
                {
                  firstObject = [v15 firstObject];

                  v15 = firstObject;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v15;
                  v56 = v15;
                }

                else
                {
                  v56 = 0;
                }
              }

              else
              {
                v56 = 0;
                v32 = v58;
              }

              if (v16)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  LODWORD(v16) = 0;
                  if (!v32)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_64;
                }

                LODWORD(v16) = [v16 unsignedIntegerValue] == 2;
              }

              if (!v32)
              {
                goto LABEL_66;
              }

LABEL_64:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                bOOLValue = [v32 BOOLValue];
                goto LABEL_67;
              }

LABEL_66:
              bOOLValue = 0;
LABEL_67:
              if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v50 = v57;
              }

              else
              {
                v50 = 0;
              }

              v35 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v65 = log;
                _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Constructed social attribution with identifier: %@", buf, 0xCu);
              }

              if (log && v59 && v60 && [v7 count] && v56)
              {
                HIDWORD(v44) = v16;
                v36 = v15;
                v37 = v14;
                attributesCopy = v45;
                if (v53)
                {
                  v38 = v7;
                  objc_opt_class();
                  v39 = v57;
                  if (objc_opt_isKindOfClass())
                  {
                    v40 = v53;
                  }

                  else
                  {
                    v40 = 0;
                  }
                }

                else
                {
                  v38 = v7;
                  v40 = 0;
                  v39 = v57;
                }

                BYTE1(v44) = bOOLValue;
                LOBYTE(v44) = BYTE4(v44);
                v17 = [objc_alloc(MEMORY[0x277D3A4B0]) initWithIdentifier:log sourceAppDisplayName:@"Messages" conversationIdentifier:v59 groupPhotoPath:v52 groupDisplayName:v51 groupId:v40 relatedPeople:v38 sender:v60 timestamp:v56 collaborationMetadata:v50 starred:v44 fromMe:?];
              }

              else
              {
                v36 = v15;
                v41 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v65 = log;
                  _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Constructed social attribution has missing data: %@", buf, 0xCu);
                }

                v37 = v14;
                attributesCopy = v45;

                v42 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138740995;
                  v65 = log;
                  v66 = 2117;
                  v67 = v59;
                  v68 = 2117;
                  v69 = v60;
                  v70 = 2117;
                  v71 = v7;
                  v72 = 2112;
                  v73 = v56;
                  _os_log_debug_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: attributionIdentifier: %{sensitive}@, conversationIdentifier: %{sensitive}@, sender: %{sensitive}@, relatedPeople: %{sensitive}@, timestamp: %@", buf, 0x34u);
                }

                v38 = v7;

                v40 = 0;
                v17 = 0;
                v39 = v57;
              }

              v7 = v38;
              goto LABEL_90;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v7;
              firstObject2 = [v62 firstObject];
              firstObject3 = [v13 firstObject];
              if (!firstObject2)
              {
                goto LABEL_35;
              }

              objc_opt_class();
              v60 = 0;
              if ((objc_opt_isKindOfClass() & 1) == 0 || !firstObject3)
              {
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = [objc_alloc(MEMORY[0x277D3A4D0]) initWithHandle:firstObject3 displayName:firstObject2];
                [v19 addObject:?];
              }

              else
              {
LABEL_35:
                v60 = 0;
              }

LABEL_36:

              v7 = v19;
              v16 = v54;
              goto LABEL_37;
            }
          }

          v60 = 0;
          goto LABEL_37;
        }

LABEL_10:
        v52 = 0;
        if (!v12)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      log = 0;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    v59 = 0;
    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  log = pp_social_highlights_log_handle();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, log, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight attribution query result did not include all of the necessary components.", buf, 2u);
  }

  v17 = 0;
LABEL_90:

  return v17;
}

- (id)attributionsForIdentifiers:(id)identifiers error:(id *)error
{
  v58[13] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  v7 = *MEMORY[0x277CC2770];
  v58[0] = *MEMORY[0x277CC3208];
  v58[1] = v7;
  v8 = *MEMORY[0x277CC2760];
  v58[2] = *MEMORY[0x277CC2B78];
  v58[3] = v8;
  v9 = *MEMORY[0x277CC24B0];
  v58[4] = *MEMORY[0x277CC24E0];
  v58[5] = v9;
  v10 = *MEMORY[0x277CC3010];
  v58[6] = *MEMORY[0x277CC3028];
  v58[7] = v10;
  v11 = *MEMORY[0x277CC3190];
  v58[8] = @"com_apple_mobilesms_highlightedContentServerDate";
  v58[9] = v11;
  v58[10] = @"com_apple_mobilesms_fromMe";
  v58[11] = @"com_apple_mobilesms_collaborationMetadata";
  v58[12] = @"com_apple_mobilesms_chatUniqueIdentifier";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:13];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__22778;
  v49 = __Block_byref_object_dispose__22779;
  v50 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = *MEMORY[0x277CCA1A0];
  v15 = *MEMORY[0x277D3A658];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __61__PPSocialHighlightStorage_attributionsForIdentifiers_error___block_invoke;
  v41[3] = &unk_278978170;
  v42 = identifiersCopy;
  v44 = &v45;
  v33 = v42;
  dsema = v13;
  v43 = dsema;
  [defaultSearchableIndex slowFetchAttributes:v12 protectionClass:v14 bundleID:v15 identifiers:v42 completionHandler:v41];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (v46[5])
  {
    v16 = [v33 count];
    if (v16 == [v46[5] count])
    {
      v36 = objc_opt_new();
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v46[5];
      v18 = [v17 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v18)
      {
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
              v23 = [(PPSocialHighlightStorage *)self _socialAttributionFromAttributeValues:v22 fetchAttributes:v12];
              v24 = v23;
              if (v23)
              {
                identifier = [v23 identifier];
                v26 = identifier == 0;

                if (!v26)
                {
                  identifier2 = [v24 identifier];
                  [v36 setObject:v24 forKeyedSubscript:identifier2];
                }
              }
            }

            else
            {
              v22 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight attribution query result was not an array.", buf, 2u);
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v37 objects:v51 count:16];
        }

        while (v18);
      }

      goto LABEL_22;
    }
  }

  v28 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v31 = [v33 count];
    v32 = [v46[5] count];
    *buf = 134218240;
    v55 = v31;
    v56 = 2048;
    v57 = v32;
    _os_log_error_impl(&dword_23224A000, v28, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: CoreSpotlight attribution query for identifiers: %tu returned invalid number of results: %tu", buf, 0x16u);
  }

  if (error)
  {
    v29 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277D3A588];
    v53 = @"CoreSpotlight attribution query returned invalid results.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    *error = [v29 errorWithDomain:*MEMORY[0x277D3A580] code:24 userInfo:v17];
    v36 = MEMORY[0x277CBEC10];
LABEL_22:

    goto LABEL_24;
  }

  v36 = MEMORY[0x277CBEC10];
LABEL_24:

  _Block_object_dispose(&v45, 8);

  return v36;
}

void __61__PPSocialHighlightStorage_attributionsForIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = [v3 count];
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight attribution query for identifiers: %tu result count: %tu", &v7, 0x16u);
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)attributionForIdentifier:(id)identifier error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = MEMORY[0x277CBEA60];
  identifierCopy2 = identifier;
  v8 = [v6 arrayWithObjects:&identifierCopy count:1];
  v9 = [(PPSocialHighlightStorage *)self attributionsForIdentifiers:v8 error:error, identifierCopy, v13];
  v10 = [v9 objectForKeyedSubscript:identifierCopy2];

  return v10;
}

- (id)rankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers error:(id *)error
{
  v87 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  variantCopy = variant;
  identifiersCopy = identifiers;
  v80[0] = @"client";
  v80[1] = @"limit";
  v81[0] = clientCopy;
  limitCopy = limit;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v81[1] = v12;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];

  PLLogRegisteredEvent();
  v13 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = clientCopy;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: fetching rankedHighlights for client %@", buf, 0xCu);
  }

  v64 = objc_opt_new();
  if ([(PPSocialHighlightStorage *)self _isCollaborationEntitlementPresentForApplicationIdentifiers:identifiersCopy])
  {
    v14 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = clientCopy;
      *&buf[12] = 2112;
      *&buf[14] = @"collaborations";
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Overwriting client identifier %@ to %@", buf, 0x16u);
    }

    clientCopy = @"collaborations";
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__22778;
  v77 = __Block_byref_object_dispose__22779;
  v78 = 0;
  v15 = dispatch_semaphore_create(0);
  cache = self->_cache;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __98__PPSocialHighlightStorage_rankedHighlightsWithLimit_client_variant_applicationIdentifiers_error___block_invoke;
  v70[3] = &unk_278978108;
  v72 = &v73;
  dsema = v15;
  v71 = dsema;
  [PPSocialHighlightCache cachedRankedHighlightsForClient:clientCopy variant:v70 completion:?];
  v69 = 0;
  v60 = [(PPSocialHighlightStorage *)self _rankableItemsForClient:clientCopy variant:variantCopy applicationIdentifiers:identifiersCopy limit:limit error:&v69];
  if (error)
  {
    *error = v69;
  }

  first = [v60 first];
  second = [v60 second];
  v59 = clientCopy;
  if (v60 && first && second)
  {
    v54 = first;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = second;
    v19 = [v18 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v19)
    {
      v20 = *v66;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v66 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v65 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v18 objectForKeyedSubscript:v22];
          allValues = [v24 allValues];
          v26 = [allValues sortedArrayUsingComparator:&__block_literal_global_388];
          v27 = [v26 _pas_mappedArrayWithTransform:&__block_literal_global_391];

          v28 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v27 count];
            *buf = 138412546;
            *&buf[4] = v22;
            *&buf[12] = 2048;
            *&buf[14] = v29;
            _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Social highlight: %@ attributions deduplicated to %tu items", buf, 0x16u);
          }

          [v64 setObject:v27 forKeyedSubscript:v22];
          objc_autoreleasePoolPop(v23);
        }

        v19 = [v18 countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v19);
    }

    v30 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      first2 = [v60 first];
      v32 = [first2 count];
      *buf = 134217984;
      *&buf[4] = v32;
      _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Social rankable highlights count: %tu", buf, 0xCu);
    }

    v33 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v64 count];
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_impl(&dword_23224A000, v33, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Social highlight deduplicated count: %tu", buf, 0xCu);
    }

    v35 = self->_cache;
    if (v35)
    {
      dispatch_sync(v35->_queue, &__block_literal_global_656);
    }

    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    v36 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v74[5] count];
      *buf = 134217984;
      *&buf[4] = v37;
      _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: cachedHighlights count: %tu", buf, 0xCu);
    }

    v38 = [(PPSocialHighlightCache *)self->_cache cachedHighlightsArrayIsValid:v54 queryResults:?];
    v39 = v74[5];
    v40 = v38 ^ 1;
    if (!v39)
    {
      v40 = 1;
    }

    if (v40)
    {
      v44 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(&dword_23224A000, v44, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Ranking social highlights for client '%@', as no valid cache exists.", buf, 0xCu);
      }

      v45 = [(PPSocialHighlightStorage *)self featurizeRankedHighlights:v54];

      v46 = objc_opt_new();
      v47 = [v46 rankSocialHighlights:v45 client:v59 performRerank:{-[PPSocialHighlightStorage rerankingEnabled](self, "rerankingEnabled")}];

      v48 = self->_cache;
      v41 = v47;
      v49 = v59;
      v50 = v49;
      if (v48)
      {
        if (!v49)
        {
          v51 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightCache: Saving ranked items to the vended stream without a client identifier. The cache will not be active.", buf, 2u);
          }
        }

        queue = v48->_queue;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __59__PPSocialHighlightCache_saveRankedItems_clientIdentifier___block_invoke;
        v83 = &unk_278975A60;
        v84 = v48;
        v85 = v41;
        v86 = v50;
        dispatch_sync(queue, buf);
      }
    }

    else
    {
      v41 = v39;
    }

    v43 = [(PPSocialHighlightStorage *)self deduplicateAndSortRankedHighlights:v41 attributionLookup:v64 limit:limitCopy client:v59, v54];
    first = v41;
  }

  else
  {
    v42 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v42, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: spotlight query failed.", buf, 2u);
    }

    v43 = 0;
  }

  _Block_object_dispose(&v73, 8);

  return v43;
}

void __98__PPSocialHighlightStorage_rankedHighlightsWithLimit_client_variant_applicationIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __98__PPSocialHighlightStorage_rankedHighlightsWithLimit_client_variant_applicationIdentifiers_error___block_invoke_385(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)featurizeRankedHighlights:(id)highlights
{
  highlightsCopy = highlights;
  v5 = MEMORY[0x277CFE0C0];
  defaultDatabaseDirectory = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
  v7 = [v5 storeWithDirectory:defaultDatabaseDirectory readOnly:1];

  v8 = +[PPLocalTopicStore defaultStore];
  v9 = +[PPLocalContactStore defaultStore];
  v10 = objc_opt_new();
  [v10 timeIntervalSinceReferenceDate];
  v11 = [(PPSocialHighlightStorage *)self feedbackPublisherWithInterval:1 includingRemote:?];

  v12 = +[PPSocialHighlightFeaturizer trialSpecifiedFeatures];
  if (!v12)
  {
    v13 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: no ranking features found.", v20, 2u);
    }

    v12 = objc_opt_new();
  }

  v14 = [PPSocialHighlightFeaturizer alloc];
  cachedSignificantContactHandles = [v9 cachedSignificantContactHandles];
  if (cachedSignificantContactHandles)
  {
    v16 = [(PPSocialHighlightFeaturizer *)v14 initWithFeedbackPublisher:v11 topicStore:v8 interactionStore:v7 significantContactHandles:cachedSignificantContactHandles features:v12 highlights:highlightsCopy];
  }

  else
  {
    v17 = objc_opt_new();
    v16 = [(PPSocialHighlightFeaturizer *)v14 initWithFeedbackPublisher:v11 topicStore:v8 interactionStore:v7 significantContactHandles:v17 features:v12 highlights:highlightsCopy];
  }

  v18 = [(PPSocialHighlightFeaturizer *)v16 featurizeHighlights:highlightsCopy];

  return v18;
}

- (id)sharedContentForClient:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers limit:(unint64_t)limit autoDonatingChatIdentifiers:(id)chatIdentifiers error:(id *)error
{
  v59[4] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  variantCopy = variant;
  identifiersCopy = identifiers;
  chatIdentifiersCopy = chatIdentifiers;
  v18 = pp_social_highlights_signpost_handle();
  v19 = os_signpost_id_generate(v18);

  v20 = pp_social_highlights_signpost_handle();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Storage.sharedContentFromChats", "", buf, 2u);
  }

  v22 = +[PPConfiguration sharedInstance];
  [v22 socialHighlightDecayInterval];
  v46 = [(PPSocialHighlightStorage *)self sharedContentFromChats:chatIdentifiersCopy dateRange:identifiersCopy applicationIdentifiers:error error:?];

  v23 = pp_social_highlights_signpost_handle();
  v24 = v23;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v24, OS_SIGNPOST_INTERVAL_END, v19, "Storage.sharedContentFromChats", " enableTelemetry=YES ", buf, 2u);
  }

  v59[0] = clientCopy;
  v58[0] = @"client";
  v58[1] = @"limit";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v59[1] = v25;
  v59[2] = &unk_284784EF0;
  v58[2] = @"maximumResultCount";
  v58[3] = @"spotlightResultCount";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v46, "count")}];
  v59[3] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];

  PLLogRegisteredEvent();
  v28 = +[PPTrialWrapper sharedInstance];
  v29 = [v28 plistForFactorName:@"social_highlight_blocked_hosts.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];

  v30 = [v29 objectForKeyedSubscript:@"blockedHostSuffixes"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v32 = [v29 objectForKeyedSubscript:@"blockedHostSuffixes"];
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  v33 = [identifiersCopy containsObject:@"*"];
  v34 = [identifiersCopy containsObject:@"collaborations"];
  v35 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v55 = v33;
    v56 = 1024;
    v57 = v34;
    _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: kPPAccessWildCard: %u, kPPAllCollaborations: %u entitlements detected", buf, 0xEu);
  }

  _screenTimeConversation = [(PPSocialHighlightStorage *)self _screenTimeConversation];
  v37 = objc_opt_new();
  [(PPSocialHighlightStorageUtilities *)self->_socialHighlightStorageUtils clearCache];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __122__PPSocialHighlightStorage_sharedContentForClient_variant_applicationIdentifiers_limit_autoDonatingChatIdentifiers_error___block_invoke;
  v47[3] = &unk_2789780E0;
  v47[4] = self;
  v48 = identifiersCopy;
  v49 = clientCopy;
  v50 = v32;
  v51 = v37;
  v52 = variantCopy;
  v53 = _screenTimeConversation;
  v38 = _screenTimeConversation;
  v39 = variantCopy;
  v40 = v37;
  v41 = v32;
  v42 = clientCopy;
  v43 = identifiersCopy;
  v44 = [v46 _pas_filteredArrayWithTest:v47];
  [(PPSocialHighlightStorage *)self freezeAppLinksCache];

  return v44;
}

uint64_t __122__PPSocialHighlightStorage_sharedContentForClient_variant_applicationIdentifiers_limit_autoDonatingChatIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isValidHighlight:v3 applicationIdentifiers:*(a1 + 40)] & 1) == 0)
  {
    v5 = pp_social_highlights_log_handle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:

      v4 = 0;
      goto LABEL_9;
    }

    v6 = [v3 uniqueIdentifier];
    v23 = 138412290;
    v24 = v6;
    v7 = "PPSocialHighlightStorage: item: %@ suppressed as it is not valid";
    v8 = v5;
    v9 = 12;
LABEL_19:
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, v7, &v23, v9);

    goto LABEL_8;
  }

  if (([*(a1 + 32) isClientEntitledForItem:v3 client:*(a1 + 48) applicationIdentifiers:*(a1 + 40) blockedHosts:*(a1 + 56) iTunesOverrideChecker:*(a1 + 64)] & 1) == 0)
  {
    v5 = pp_social_highlights_log_handle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v22 = *(a1 + 48);
    v6 = [v3 uniqueIdentifier];
    v23 = 138412546;
    v24 = v22;
    v25 = 2112;
    v26 = v6;
    v7 = "PPSocialHighlightStorage: Client: %@, is not entitled for item: %@";
    v8 = v5;
    v9 = 22;
    goto LABEL_19;
  }

  if ([*(a1 + 72) isEqualToString:*MEMORY[0x277D3A750]])
  {
    v4 = 1;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_new();
    v13 = [v3 attributeSet];
    v14 = [v13 authorAddresses];
    [v12 addObjectsFromArray:v14];

    v15 = [v3 attributeSet];
    v16 = [v15 recipientAddresses];
    [v12 addObjectsFromArray:v16];

    v17 = [v3 attributeSet];
    v18 = [v17 accountHandles];
    [v12 removeObjectsInArray:v18];

    if ([v12 count])
    {
      v19 = [*(a1 + 80) allowableByContactsHandles:v12];
      v4 = [v19 allowedByScreenTime];
      if ((v4 & 1) == 0)
      {
        v20 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v3 uniqueIdentifier];
          v23 = 138412290;
          v24 = v21;
          _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Suppressing item due to Screen Time restrictions: %@", &v23, 0xCu);
        }
      }
    }

    else
    {
      v4 = 1;
    }

    objc_autoreleasePoolPop(v11);
  }

LABEL_9:

  return v4;
}

- (id)_rankableItemsForClient:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers limit:(unint64_t)limit error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  variantCopy = variant;
  identifiersCopy = identifiers;
  if ([(PPSocialHighlightStorage *)self _isCollaborationEntitlementPresentForApplicationIdentifiers:identifiersCopy])
  {
    v15 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = @"collaborations";
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Automatic Sharing is enabled due to %@ entitlement", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v24 = 0;
    v17 = [(PPSocialHighlightStorage *)self automaticSharingEnabledForClient:clientCopy error:&v24];
    v16 = v24;
    if (v17 != 2)
    {
      v18 = objc_opt_new();
      if (v18)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  v23 = v16;
  v18 = [(PPSocialHighlightStorage *)self autoDonatingChatsWithError:&v23];
  v19 = v23;

  v16 = v19;
  if (v18)
  {
LABEL_7:
    v20 = [(PPSocialHighlightStorage *)self _rankableItemsForClient:clientCopy variant:variantCopy applicationIdentifiers:identifiersCopy autoDonatingChatIdentifiers:v18 limit:limit error:error];
    goto LABEL_14;
  }

LABEL_9:
  if (error)
  {
    objc_storeStrong(error, v16);
  }

  v21 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v16;
    _os_log_error_impl(&dword_23224A000, v21, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: unable to fetch auto donating chat identifiers: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (id)_rankableItemsForClient:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers autoDonatingChatIdentifiers:(id)chatIdentifiers limit:(unint64_t)limit error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  variantCopy = variant;
  identifiersCopy = identifiers;
  chatIdentifiersCopy = chatIdentifiers;
  v17 = [PPSocialHighlightStorage sharedContentForClient:"sharedContentForClient:variant:applicationIdentifiers:limit:autoDonatingChatIdentifiers:error:" variant:clientCopy applicationIdentifiers:variantCopy limit:identifiersCopy autoDonatingChatIdentifiers:limit error:?];
  v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_357];
  v19 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v94 = [v18 count];
    _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight filtered result count: %tu", buf, 0xCu);
  }

  v20 = pp_social_highlights_signpost_handle();
  v21 = os_signpost_id_generate(v20);

  v22 = pp_social_highlights_signpost_handle();
  v23 = v22;
  v75 = v21 - 1;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Storage.rankableHighlightsFromItems", "", buf, 2u);
  }

  spid = v21;

  v24 = [v18 _pas_mappedArrayWithTransform:&__block_literal_global_361_22910];
  v92 = 0;
  v25 = [(PPSocialHighlightStorage *)self attributionsForIdentifiers:v24 error:&v92];
  v26 = v92;
  if (![v24 count] || objc_msgSend(v25, "count"))
  {
    v71 = v26;
    v72 = v24;
    v74 = v17;
    v80 = objc_opt_new();
    v82 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v73 = v18;
    obj = v18;
    v86 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
    if (v86)
    {
      v27 = *v89;
      v76 = *MEMORY[0x277CC24C0];
      v78 = variantCopy;
      v79 = clientCopy;
      v81 = v25;
      v77 = identifiersCopy;
      v83 = *v89;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v89 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v88 + 1) + 8 * i);
          v30 = objc_autoreleasePoolPush();
          attributeSet = [v29 attributeSet];
          v32 = [attributeSet URL];

          if (v32)
          {
            v87 = v30;
            uniqueIdentifier = [v29 uniqueIdentifier];
            v34 = [v25 objectForKeyedSubscript:uniqueIdentifier];
            v35 = v34;
            if (uniqueIdentifier)
            {
              v36 = v34 == 0;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              v37 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v94 = uniqueIdentifier;
                _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Failed to fetch attribution for identifier: %@", buf, 0xCu);
              }
            }

            else
            {
              v38 = [PPRankableSocialHighlightUtils rankableHighlightFromSearchableItem:v29 attribution:v34 autoDonatingChats:chatIdentifiersCopy applicationIdentifiers:identifiersCopy clientIdentifier:clientCopy variant:variantCopy];
              v37 = v38;
              if (v38 && ([v38 highlightIdentifier], v39 = objc_claimAutoreleasedReturnValue(), v39, v39))
              {
                [v80 addObject:v37];
                v40 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  highlightIdentifier = [v37 highlightIdentifier];
                  *buf = 138412290;
                  v94 = highlightIdentifier;
                  _os_log_impl(&dword_23224A000, v40, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: CoreSpotlight fetched highlight with identifier: %@", buf, 0xCu);
                }

                highlightIdentifier2 = [v37 highlightIdentifier];
                v43 = [v82 objectForKeyedSubscript:highlightIdentifier2];

                if (!v43)
                {
                  v44 = objc_opt_new();
                  highlightIdentifier3 = [v37 highlightIdentifier];
                  [v82 setObject:v44 forKeyedSubscript:highlightIdentifier3];
                }

                attributeSet2 = [v29 attributeSet];
                v47 = [attributeSet2 attributeForKey:v76];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  firstObject = [v47 firstObject];
                }

                else
                {
                  firstObject = 0;
                }

                v51 = objc_alloc(MEMORY[0x277CCACA8]);
                conversationIdentifier = [v35 conversationIdentifier];
                v53 = conversationIdentifier;
                if (firstObject)
                {
                  spid = [v51 initWithFormat:@"%@_%@", conversationIdentifier, firstObject, spid];
                }

                else
                {
                  sender = [v35 sender];
                  handle = [sender handle];
                  spid = [v51 initWithFormat:@"%@_%@", v53, handle];
                }

                if (spid)
                {
                  highlightIdentifier4 = [v37 highlightIdentifier];
                  v58 = [v82 objectForKeyedSubscript:highlightIdentifier4];
                  v59 = [v58 objectForKeyedSubscript:spid];

                  if (!v59)
                  {
                    highlightIdentifier5 = [v37 highlightIdentifier];
                    v61 = [v82 objectForKeyedSubscript:highlightIdentifier5];
                    [v61 setObject:v35 forKeyedSubscript:spid];
                  }
                }

                variantCopy = v78;
                clientCopy = v79;
                identifiersCopy = v77;
                v25 = v81;
              }

              else
              {
                v47 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  uniqueIdentifier2 = [v29 uniqueIdentifier];
                  highlightIdentifier6 = [v37 highlightIdentifier];
                  *buf = 138412546;
                  v94 = uniqueIdentifier2;
                  v95 = 2112;
                  v96 = highlightIdentifier6;
                  _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: item %@ did not produce a correct rankable highlight identifier: %@", buf, 0x16u);

                  v25 = v81;
                }
              }

              v27 = v83;
            }

            v30 = v87;
          }

          else
          {
            uniqueIdentifier = pp_social_highlights_log_handle();
            if (os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, uniqueIdentifier, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight fetched highlight with missing URL.", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(v30);
        }

        v86 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
      }

      while (v86);
    }

    v62 = pp_social_highlights_signpost_handle();
    v63 = v62;
    if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v63, OS_SIGNPOST_INTERVAL_END, spid, "Storage.rankableHighlightsFromItems", " enableTelemetry=YES ", buf, 2u);
    }

    v64 = v80;
    v65 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v80 second:v82];

    v18 = v73;
    v17 = v74;
    v26 = v71;
    v24 = v72;
    goto LABEL_49;
  }

  v67 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v94 = v26;
    _os_log_error_impl(&dword_23224A000, v67, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Failed to fetch attributions for identifiers: %@", buf, 0xCu);
  }

  if (error)
  {
    v68 = v26;
    v65 = 0;
    v69 = *error;
    *error = v68;
    v64 = v69;
LABEL_49:

    goto LABEL_50;
  }

  v65 = 0;
LABEL_50:

  return v65;
}

uint64_t __123__PPSocialHighlightStorage__rankableItemsForClient_variant_applicationIdentifiers_autoDonatingChatIdentifiers_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 attributeSet];
  v6 = [v5 contentCreationDate];
  v7 = [v4 attributeSet];

  v8 = [v7 contentCreationDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (BOOL)isClientEntitledForItem:(id)item client:(id)client applicationIdentifiers:(id)identifiers blockedHosts:(id)hosts iTunesOverrideChecker:(id)checker
{
  v138 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  clientCopy = client;
  identifiersCopy = identifiers;
  hostsCopy = hosts;
  checkerCopy = checker;
  v15 = [identifiersCopy containsObject:@"portraitCollaborations"];
  LODWORD(checker) = [identifiersCopy containsObject:@"*"];
  v16 = [identifiersCopy containsObject:@"collaborations"];
  v17 = (checker & v16 & v15 ^ 1) & checker;
  if (v17 != 1 || [clientCopy length])
  {
    v18 = objc_autoreleasePoolPush();
    attributeSet = [itemCopy attributeSet];
    v20 = [attributeSet URL];

    v110 = v20;
    if (!v20)
    {
      v59 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        uniqueIdentifier = [itemCopy uniqueIdentifier];
        *buf = 138412546;
        v135 = clientCopy;
        v136 = 2112;
        v137 = uniqueIdentifier;
        _os_log_error_impl(&dword_23224A000, v59, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Encountered CSSearchableItem with nil resourceURL when querying for client: %@, item: %@", buf, 0x16u);
      }

      v62 = 0;
      goto LABEL_111;
    }

    attributeSet2 = [itemCopy attributeSet];
    v22 = [attributeSet2 attributeForKey:@"com_apple_mobilesms_resolvedURL"];

    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
    }

    else
    {
      v23 = 0;
    }

    v102 = v23;
    v103 = [(PPSocialHighlightStorage *)self applicationIdentifiersForResourceURL:v110 resolvedURL:v23];
    if (v103)
    {
      v90 = [PPRankableSocialHighlightUtils isSearchableItemCollaboration:itemCopy];
      if ((v16 & v90 & 1) != 0 && (v15 & 1) == [identifiersCopy containsObject:@"*"])
      {
        v62 = 1;
        v59 = v110;
LABEL_110:

LABEL_111:
        objc_autoreleasePoolPop(v18);
        goto LABEL_112;
      }

      v100 = checkerCopy;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v24 = v103;
      v96 = v18;
      v104 = [v24 countByEnumeratingWithState:&v126 objects:v133 count:16];
      LODWORD(v25) = 0;
      if (v104)
      {
        v105 = *v127;
        v95 = *MEMORY[0x277D3A5B8];
        v91 = itemCopy;
        v94 = *MEMORY[0x277D3A5D8];
        v101 = v24;
        v86 = v22;
        while (2)
        {
          v97 = v25;
          for (i = 0; i != v104; ++i)
          {
            if (*v127 != v105)
            {
              objc_enumerationMutation(v24);
            }

            v27 = *(*(&v126 + 1) + 8 * i);
            v111 = objc_autoreleasePoolPush();
            first = [v27 first];
            second = [v27 second];
            bOOLValue = [second BOOLValue];

            if (bOOLValue)
            {
              if ([first isEqualToString:v95] && ((-[NSObject nr_isWebURL](v110, "nr_isWebURL") & 1) != 0 || (objc_msgSend(v102, "nr_isWebURL") & 1) != 0))
              {
                v97 = 0;
              }

              else if ([first isEqualToString:v94])
              {
                context = objc_autoreleasePoolPush();
                attributeSet3 = [itemCopy attributeSet];
                v32 = [attributeSet3 attributeForKey:@"com_apple_mobilesms_ckBundleIDs"];

                objc_opt_class();
                v88 = v32;
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([v32 firstObject], v33 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v33, (isKindOfClass & 1) == 0))
                {
                  v37 = pp_social_highlights_log_handle();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    itemCopy = v91;
                    uniqueIdentifier2 = [v91 uniqueIdentifier];
                    *buf = 138412290;
                    v135 = uniqueIdentifier2;
                    _os_log_error_impl(&dword_23224A000, v37, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: could not find any CKBundleIDs to check for %@", buf, 0xCu);

                    v62 = 0;
                  }

                  else
                  {
                    v62 = 0;
LABEL_79:
                    itemCopy = v91;
                  }

                  checkerCopy = v100;
                  v18 = v96;
                  v59 = v110;

                  objc_autoreleasePoolPop(context);
                  v22 = v86;
                  v43 = v111;
                  goto LABEL_83;
                }

                v35 = pp_social_highlights_log_handle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: using CSSI bundle IDs to check link entitlement", buf, 2u);
                }

                v36 = [(PPSocialHighlightStorageUtilities *)self->_socialHighlightStorageUtils resolveBundleIdToApplicationIdentifierIfInstalled:v32];
                v97 = [v36 count] != 0;
                v122 = 0u;
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v37 = v36;
                v38 = [v37 countByEnumeratingWithState:&v122 objects:v132 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v123;
                  while (2)
                  {
                    for (j = 0; j != v39; ++j)
                    {
                      if (*v123 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = *(*(&v122 + 1) + 8 * j);
                      if (v17 | [identifiersCopy containsObject:v42]) == 1 && (!-[NSObject length](clientCopy, "length") || (-[NSObject isEqualToString:](clientCopy, "isEqualToString:", v42)))
                      {

                        v62 = 1;
                        goto LABEL_79;
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v122 objects:v132 count:16];
                    if (v39)
                    {
                      continue;
                    }

                    break;
                  }
                }

                objc_autoreleasePoolPop(context);
                itemCopy = v91;
                v22 = v86;
                v24 = v101;
              }

              else
              {
                v97 = 1;
              }
            }

            v43 = v111;
            if (v17 | [identifiersCopy containsObject:first]) == 1 && (!-[NSObject length](clientCopy, "length") || (-[NSObject isEqualToString:](clientCopy, "isEqualToString:", first)))
            {
              v62 = 1;
              checkerCopy = v100;
              v18 = v96;
              v59 = v110;
LABEL_83:

              objc_autoreleasePoolPop(v43);
              goto LABEL_109;
            }

            objc_autoreleasePoolPop(v111);
          }

          v18 = v96;
          LODWORD(v25) = v97;
          v104 = [v24 countByEnumeratingWithState:&v126 objects:v133 count:16];
          if (v104)
          {
            continue;
          }

          break;
        }
      }

      checkerCopy = v100;
      if (((v25 | v90) & 1) == 0)
      {
        v44 = [v100 overrideForURL:v110];
        v45 = v44;
        if (v44 && ([v44 isEqual:v110]& 1) == 0)
        {
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v68 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v135 = v45;
            _os_log_debug_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEBUG, "Searching for applications to open URL override: %{sensitive}@", buf, 0xCu);
          }

          v87 = v22;
          v25 = clientCopy;
          v93 = itemCopy;

          v113 = defaultWorkspace;
          v101 = v45;
          v69 = [defaultWorkspace applicationsAvailableForOpeningURL:v45];
          v70 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v135 = v69;
            _os_log_impl(&dword_23224A000, v70, OS_LOG_TYPE_INFO, "Applications found for URL override: %@", buf, 0xCu);
          }

          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v71 = v69;
          v72 = [v71 countByEnumeratingWithState:&v118 objects:v131 count:16];
          v99 = v72 != 0;
          if (v72)
          {
            v73 = v72;
            v74 = *v119;
            while (2)
            {
              for (k = 0; k != v73; ++k)
              {
                if (*v119 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                correspondingApplicationRecord = [*(*(&v118 + 1) + 8 * k) correspondingApplicationRecord];
                applicationIdentifier = [correspondingApplicationRecord applicationIdentifier];
                v78 = v17 | [identifiersCopy containsObject:applicationIdentifier];

                if (v78 == 1)
                {
                  if (!-[NSObject length](v25, "length") || ([correspondingApplicationRecord applicationIdentifier], v79 = objc_claimAutoreleasedReturnValue(), v80 = -[NSObject isEqualToString:](v25, "isEqualToString:", v79), v79, v80))
                  {
                    v82 = pp_social_highlights_log_handle();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                    {
                      applicationIdentifier2 = [correspondingApplicationRecord applicationIdentifier];
                      *buf = 138412290;
                      v135 = applicationIdentifier2;
                      _os_log_impl(&dword_23224A000, v82, OS_LOG_TYPE_DEFAULT, "Found app supporting URL override but not Universal Links: %@", buf, 0xCu);
                    }

                    v62 = 1;
                    itemCopy = v93;
                    clientCopy = v25;
                    checkerCopy = v100;
                    v18 = v96;
                    v59 = v110;
                    v22 = v87;
                    goto LABEL_109;
                  }
                }
              }

              v73 = [v71 countByEnumeratingWithState:&v118 objects:v131 count:16];
              if (v73)
              {
                continue;
              }

              break;
            }
          }

          itemCopy = v93;
          clientCopy = v25;
          checkerCopy = v100;
          v45 = v101;
          v18 = v96;
          v22 = v87;
          LOBYTE(v25) = v99;
        }

        else
        {
          LOBYTE(v25) = 0;
        }
      }

      attributeSet4 = [itemCopy attributeSet];
      syndicationStatus = [attributeSet4 syndicationStatus];

      objc_opt_class();
      v101 = syndicationStatus;
      if ((objc_opt_isKindOfClass() & 1) == 0 || [syndicationStatus unsignedIntegerValue]!= 2)
      {
        host = [v110 host];
        if (host)
        {
          v106 = clientCopy;
          v92 = itemCopy;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          obja = hostsCopy;
          v48 = [obja countByEnumeratingWithState:&v114 objects:v130 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v115;
            v98 = v25;
            while (2)
            {
              v51 = 0;
              v52 = hostsCopy;
              do
              {
                v53 = v22;
                v54 = v52;
                if (*v115 != v50)
                {
                  objc_enumerationMutation(obja);
                }

                v55 = *(*(&v114 + 1) + 8 * v51);
                v56 = objc_autoreleasePoolPush();
                if ([v55 hasPrefix:@"."])
                {
                  v57 = v55;
                }

                else
                {
                  v57 = [@"." stringByAppendingString:v55];
                }

                v58 = v57;
                objc_autoreleasePoolPop(v56);
                if (([host isEqual:v55] & 1) != 0 || objc_msgSend(host, "hasSuffix:", v58))
                {
                  v64 = pp_social_highlights_log_handle();
                  itemCopy = v92;
                  v22 = v53;
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    uniqueIdentifier3 = [v92 uniqueIdentifier];
                    *buf = 138412290;
                    v135 = uniqueIdentifier3;
                    _os_log_impl(&dword_23224A000, v64, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Suppressing URL with blocked host, item: %@", buf, 0xCu);
                  }

                  clientCopy = v106;
                  checkerCopy = v100;
                  v18 = v96;
                  v59 = v110;
                  goto LABEL_87;
                }

                ++v51;
                v52 = v54;
                checkerCopy = v100;
                v18 = v96;
                v22 = v53;
              }

              while (v49 != v51);
              v49 = [obja countByEnumeratingWithState:&v114 objects:v130 count:16];
              LOBYTE(v25) = v98;
              if (v49)
              {
                continue;
              }

              break;
            }
          }

          itemCopy = v92;
          clientCopy = v106;
        }
      }

      if (!(v25 & 1 | ((v17 & 1) == 0)))
      {
        v59 = v110;
        if ([identifiersCopy containsObject:@"internal"] && !-[NSObject isEqualToString:](clientCopy, "isEqualToString:", *MEMORY[0x277D3A5D0]) || -[NSObject isEqualToString:](clientCopy, "isEqualToString:", *MEMORY[0x277D3A5E0]))
        {
          v60 = pp_social_highlights_log_handle();
          host = v60;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIdentifier4 = [itemCopy uniqueIdentifier];
            *buf = 138412290;
            v135 = uniqueIdentifier4;
            _os_log_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Suppressing link that is not supported by installed app, wildcard entitlement is present and client is not Safari or TV: %@", buf, 0xCu);
          }

LABEL_87:

          v62 = 0;
        }

        else
        {
          v62 = 1;
        }

        goto LABEL_109;
      }
    }

    else
    {
      v63 = pp_social_highlights_log_handle();
      v101 = v63;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        uniqueIdentifier5 = [itemCopy uniqueIdentifier];
        *buf = 138412546;
        v135 = clientCopy;
        v136 = 2112;
        v137 = uniqueIdentifier5;
        _os_log_error_impl(&dword_23224A000, v63, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: App Links could not be fetched for client: %@, item: %@", buf, 0x16u);
      }
    }

    v62 = 0;
    v59 = v110;
LABEL_109:

    goto LABEL_110;
  }

  v62 = 1;
LABEL_112:

  return v62;
}

- (BOOL)isClientEntitledForItem:(id)item client:(id)client applicationIdentifiers:(id)identifiers blockedHosts:(id)hosts
{
  hostsCopy = hosts;
  identifiersCopy = identifiers;
  clientCopy = client;
  itemCopy = item;
  v14 = objc_opt_new();
  LOBYTE(self) = [(PPSocialHighlightStorage *)self isClientEntitledForItem:itemCopy client:clientCopy applicationIdentifiers:identifiersCopy blockedHosts:hostsCopy iTunesOverrideChecker:v14];

  return self;
}

- (BOOL)isValidHighlight:(id)highlight applicationIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  identifiersCopy = identifiers;
  attributeSet = [highlightCopy attributeSet];
  syndicationStatus = [attributeSet syndicationStatus];

  objc_opt_class();
  v9 = (objc_opt_isKindOfClass() & 1) != 0 && [syndicationStatus unsignedIntegerValue] == 2;
  attributeSet2 = [highlightCopy attributeSet];
  v11 = [attributeSet2 attributeForKey:@"com_apple_mobilesms_fromMe"];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 BOOLValue] ^ 1 | v9;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  v13 = [PPRankableSocialHighlightUtils isSearchableItemCollaboration:highlightCopy];
  v14 = [identifiersCopy containsObject:@"fromMe"];

  v15 = v12 | v14 | v13;
  if ((v15 & 1) == 0)
  {
    v16 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [highlightCopy uniqueIdentifier];
      v20 = 138412290;
      v21 = uniqueIdentifier;
      v18 = "PPSocialHighlightStorage: Suppressing outgoing item since it is not pinned: %@";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v14)
  {
    v16 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [highlightCopy uniqueIdentifier];
      v20 = 138412290;
      v21 = uniqueIdentifier;
      v18 = "PPSocialHighlightStorage: Including outgoing item since fromMe entitlement is present: %@";
LABEL_14:
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v18, &v20, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v15 & 1;
}

- (id)applicationIdentifiersForResourceURL:(id)l resolvedURL:(id)rL
{
  v48 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = objc_opt_new();
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  selfCopy = self;
  lsAppLinkCache = self->_lsAppLinkCache;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke;
  v38[3] = &unk_278978070;
  v26 = lCopy;
  v39 = v26;
  v27 = rLCopy;
  v40 = v27;
  v42 = &v43;
  v29 = v8;
  v41 = v29;
  [(_PASLock *)lsAppLinkCache runWithLockAcquired:v38];
  if ((v44[3] & 1) == 0)
  {
    v10 = objc_opt_new();
    v25 = [PPSocialHighlightStorage appLinksForResourceURL:v26 resolvedURL:v27];
    if ([v25 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v25;
      v11 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v11)
      {
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            targetApplicationRecord = [v14 targetApplicationRecord];
            applicationIdentifier = [targetApplicationRecord applicationIdentifier];

            v17 = objc_alloc(MEMORY[0x277D42648]);
            v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "isEnabled")}];
            v19 = [v17 initWithFirst:applicationIdentifier second:v18];

            [v10 addObject:v19];
            [v29 addObject:v19];
          }

          v11 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
        }

        while (v11);
      }
    }

    v20 = selfCopy->_lsAppLinkCache;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke_2;
    v30[3] = &unk_278978098;
    v30[4] = selfCopy;
    v31 = v26;
    v32 = v27;
    v21 = v10;
    v33 = v21;
    [(_PASLock *)v20 runWithLockAcquired:v30];
  }

  allObjects = [v29 allObjects];

  _Block_object_dispose(&v43, 8);

  return allObjects;
}

void __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) absoluteString];
  v5 = [*(a1 + 40) absoluteString];
  v6 = v3[1];
  v7 = [v3[2] objectForKeyedSubscript:v4];
  if (*(a1 + 40))
  {
    v8 = [v3[2] objectForKeyedSubscript:v5];
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (!*(a1 + 40) || v8)
  {
    v29 = v8;
    v30 = v7;
    v31 = v5;
    v32 = v4;
    v33 = v3;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        v13 = 0;
        do
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          v15 = *(a1 + 48);
          v16 = objc_alloc(MEMORY[0x277D42648]);
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsObject:", v14)}];
          v18 = [v16 initWithFirst:v14 second:v17];
          [v15 addObject:v18];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    v4 = v32;
    v3 = v33;
    v7 = v30;
    v5 = v31;
    v8 = v29;
    if (v29)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v29;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          v23 = 0;
          do
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * v23);
            v25 = *(a1 + 48);
            v26 = objc_alloc(MEMORY[0x277D42648]);
            v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsObject:", v24)}];
            v28 = [v26 initWithFirst:v24 second:v27];
            [v25 addObject:v28];

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v21);
      }

      v4 = v32;
      v3 = v33;
      v7 = v30;
      v5 = v31;
      v8 = v29;
    }
  }

LABEL_23:
}

void __77__PPSocialHighlightStorage_applicationIdentifiersForResourceURL_resolvedURL___block_invoke_2(id *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = a2;
  if ([v37[3] count] >= 0x7D1)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: clearing LSAppLink cache.", buf, 2u);
    }

    [a1[4] resetLSAppLinkCache];
  }

  if (!v37[3])
  {
    v4 = [v37[2] mutableCopy];
    v5 = v37[3];
    v37[3] = v4;

    objc_storeStrong(v37 + 2, v37[3]);
  }

  v6 = [a1[5] absoluteString];
  v36 = [a1[6] absoluteString];
  v33 = v6;
  if ([a1[7] count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = a1[7];
    v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 first];
          if (v13)
          {
            v14 = [v11 second];
            v15 = [v14 BOOLValue];

            v16 = [v37[3] objectForKeyedSubscript:v6];
            v17 = v16;
            v18 = MEMORY[0x277CBEBF8];
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            if (([v19 containsObject:v13] & 1) == 0)
            {
              v20 = [v19 arrayByAddingObject:v13];
              [v37[3] setObject:v20 forKeyedSubscript:v6];
            }

            if (a1[6])
            {
              v21 = a1;
              v22 = [v37[3] objectForKeyedSubscript:v36];
              v23 = v22;
              v24 = MEMORY[0x277CBEBF8];
              if (v22)
              {
                v24 = v22;
              }

              v25 = v24;

              if (([v25 containsObject:v13] & 1) == 0)
              {
                v26 = [v25 arrayByAddingObject:v13];
                [v37[3] setObject:v26 forKeyedSubscript:v36];
              }

              a1 = v21;
              v6 = v33;
            }

            if (v15)
            {
              [v37[1] addObject:v13];
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
    }

    goto LABEL_38;
  }

  v27 = [v37[3] objectForKeyedSubscript:v6];
  v28 = v27;
  v29 = MEMORY[0x277CBEBF8];
  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  [v37[3] setObject:v30 forKeyedSubscript:{v6, v6}];

  if (a1[6])
  {
    v31 = [v37[3] objectForKeyedSubscript:v36];
    obj = v31;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v29;
    }

    v6 = v34;
    [v37[3] setObject:v32 forKeyedSubscript:v36];
LABEL_38:
  }
}

void __47__PPSocialHighlightStorage_resetLSAppLinkCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[2];
  a2[2] = MEMORY[0x277CBEC10];
  v3 = a2;

  v4 = v3[3];
  v3[3] = 0;

  v5 = objc_opt_new();
  v6 = v3[1];
  v3[1] = v5;
}

- (void)handleAppLinkChangeNotification:(id)notification
{
  v4 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: clearing app link cache due to invalidation notification", v5, 2u);
  }

  [(PPSocialHighlightStorage *)self resetLSAppLinkCache];
}

- (id)allSupportedHighlightsForAutoDonatingChats:(id)chats error:(id *)error
{
  v39[4] = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  v7 = *MEMORY[0x277D3A740];
  v8 = *MEMORY[0x277D3A5E0];
  v39[0] = *MEMORY[0x277D3A5B8];
  v39[1] = v8;
  v9 = *MEMORY[0x277D3A5C8];
  v39[2] = *MEMORY[0x277D3A5B0];
  v39[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v11 = -[PPSocialHighlightStorage _rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:](self, "_rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:", &stru_284759D38, v7, v10, chatsCopy, [&unk_284784EF0 unsignedIntegerValue], error);
  first = [v11 first];

  if (first)
  {
    v13 = *MEMORY[0x277D3A5D0];
    v38[0] = @"*";
    v38[1] = @"internal";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v15 = -[PPSocialHighlightStorage _rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:](self, "_rankableItemsForClient:variant:applicationIdentifiers:autoDonatingChatIdentifiers:limit:error:", v13, v7, v14, chatsCopy, [&unk_284784EF0 unsignedIntegerValue], error);
    first2 = [v15 first];

    if (first2)
    {
      v32 = chatsCopy;
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = objc_autoreleasePoolPush();
      v31 = first2;
      v20 = [first arrayByAddingObjectsFromArray:first2];
      objc_autoreleasePoolPop(v19);
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * i);
            highlightIdentifier = [v25 highlightIdentifier];
            v27 = [v18 containsObject:highlightIdentifier];

            if ((v27 & 1) == 0)
            {
              [v17 addObject:v25];
              highlightIdentifier2 = [v25 highlightIdentifier];
              [v18 addObject:highlightIdentifier2];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v22);
      }

      v29 = [v17 copy];
      first2 = v31;
      chatsCopy = v32;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (unsigned)automaticSharingEnabledForClient:(id)client error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  automaticSharingEnabled = [(PPSocialHighlightStorage *)self automaticSharingEnabled];
  if (automaticSharingEnabled > 1)
  {
    _socialLayerDefaults = [(PPSocialHighlightStorage *)self _socialLayerDefaults];
    v9 = [_socialLayerDefaults dictionaryForKey:@"SharedWithYouApps"];

    if (!v9)
    {
      v12 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: Failed to read SocialLayer app defaults", buf, 2u);
      }

      LOBYTE(v8) = 0;
      goto LABEL_22;
    }

    if (![clientCopy length])
    {
      LOBYTE(v8) = 2;
      goto LABEL_23;
    }

    v21 = 0;
    v11 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:clientCopy error:&v21];
    v12 = v21;
    if (v11)
    {
      bundleIdentifier = [v11 bundleIdentifier];
      v14 = [v9 objectForKeyedSubscript:bundleIdentifier];
      bOOLValue = [v14 BOOLValue];

      if (bOOLValue)
      {

        LOBYTE(v8) = 2;
LABEL_22:

        goto LABEL_23;
      }

      v18 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier2 = [v11 bundleIdentifier];
        *buf = 138412290;
        v23 = bundleIdentifier2;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Automatic Sharing is disabled for %@", buf, 0xCu);
      }

      LOBYTE(v8) = 1;
    }

    else
    {
      v16 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: LSBundleRecord query error: %@", buf, 0xCu);
      }

      if (error)
      {
        v17 = v12;
        LOBYTE(v8) = 0;
        *error = v12;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    goto LABEL_22;
  }

  v8 = automaticSharingEnabled;
  v9 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v23) = v8;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Automatic Sharing is disabled globally due to toggle state: %hhu", buf, 8u);
  }

LABEL_23:

  return v8;
}

void __48__PPSocialHighlightStorage__socialLayerDefaults__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SocialLayer"];
  v2 = _socialLayerDefaults__pasExprOnceResult;
  _socialLayerDefaults__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __51__PPSocialHighlightStorage__screenTimeConversation__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D4B968]);
  v2 = *MEMORY[0x277D3A658];
  v3 = PPSharedCNContactStore();
  v4 = [v1 initWithBundleIdentifier:v2 contactStore:v3];
  v5 = _screenTimeConversation__pasExprOnceResult;
  _screenTimeConversation__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

- (id)deduplicateAndSortRankedHighlights:(id)highlights attributionLookup:(id)lookup limit:(unint64_t)limit client:(id)client
{
  v93 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  lookupCopy = lookup;
  clientCopy = client;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [highlightsCopy _pas_mappedArrayWithTransform:&__block_literal_global_292];
  v12 = objc_alloc(MEMORY[0x277CBEAC0]);
  v13 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_295];
  v73 = [v12 initWithObjects:v13 forKeys:v11];

  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v15 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_297];
  v68 = v11;
  v72 = [v14 initWithObjects:v15 forKeys:v11];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v16 = highlightsCopy;
  v17 = [v16 countByEnumeratingWithState:&v80 objects:v92 count:16];
  v70 = v10;
  v71 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = *v81;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v81 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v80 + 1) + 8 * i);
        highlightIdentifier = [v21 highlightIdentifier];

        if (!highlightIdentifier)
        {
          highlightIdentifier9 = pp_default_log_handle();
          if (os_log_type_enabled(highlightIdentifier9, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_23224A000, highlightIdentifier9, OS_LOG_TYPE_FAULT, "PPSocialHighlightStorage: highlight did not have a highlight identifier when queried.", buf, 2u);
          }

          goto LABEL_25;
        }

        if ([v21 isCollaboration] && objc_msgSend(v21, "hasDomainIdentifier"))
        {
          highlightIdentifier2 = [v21 highlightIdentifier];
          v24 = [v73 objectForKeyedSubscript:highlightIdentifier2];
          domainIdentifier = [v21 domainIdentifier];
          v26 = [v24 objectForKeyedSubscript:domainIdentifier];

          highlightIdentifier3 = [v21 highlightIdentifier];
          highlightIdentifier4 = [v73 objectForKeyedSubscript:highlightIdentifier3];
          domainIdentifier2 = [v21 domainIdentifier];
          if (v26)
          {
            v30 = [highlightIdentifier4 objectForKeyedSubscript:domainIdentifier2];

            [v30 syndicationSecondsSinceReferenceDate];
            v32 = v31;
            [v21 syndicationSecondsSinceReferenceDate];
            if (v32 > v33)
            {
              highlightIdentifier4 = [v21 highlightIdentifier];
              domainIdentifier2 = [v73 objectForKeyedSubscript:highlightIdentifier4];
              domainIdentifier3 = [v21 domainIdentifier];
              [domainIdentifier2 setObject:v21 forKeyedSubscript:domainIdentifier3];

              goto LABEL_15;
            }
          }

          else
          {
            [highlightIdentifier4 setObject:v21 forKeyedSubscript:domainIdentifier2];
            v30 = highlightIdentifier3;
LABEL_15:
          }

          highlightIdentifier5 = [v21 highlightIdentifier];
          v37 = [v72 objectForKeyedSubscript:highlightIdentifier5];
          domainIdentifier4 = [v21 domainIdentifier];
          v39 = [v37 objectForKeyedSubscript:domainIdentifier4];

          highlightIdentifier6 = [v21 highlightIdentifier];
          highlightIdentifier7 = [v72 objectForKeyedSubscript:highlightIdentifier6];
          domainIdentifier5 = [v21 domainIdentifier];
          if (v39)
          {
            v43 = [highlightIdentifier7 objectForKeyedSubscript:domainIdentifier5];

            [v43 syndicationSecondsSinceReferenceDate];
            v45 = v44;
            [v21 syndicationSecondsSinceReferenceDate];
            if (v45 < v46)
            {
              highlightIdentifier7 = [v21 highlightIdentifier];
              domainIdentifier5 = [v72 objectForKeyedSubscript:highlightIdentifier7];
              domainIdentifier6 = [v21 domainIdentifier];
              [domainIdentifier5 setObject:v21 forKeyedSubscript:domainIdentifier6];

              goto LABEL_20;
            }

            v10 = v70;
          }

          else
          {
            [highlightIdentifier7 setObject:v21 forKeyedSubscript:domainIdentifier5];
            v43 = highlightIdentifier6;
LABEL_20:
            v10 = v70;
          }

          v16 = v71;
        }

        highlightIdentifier8 = [v21 highlightIdentifier];
        v49 = [v9 containsObject:highlightIdentifier8];

        if (v49)
        {
          continue;
        }

        [v10 addObject:v21];
        highlightIdentifier9 = [v21 highlightIdentifier];
        [v9 addObject:highlightIdentifier9];
LABEL_25:
      }

      v18 = [v16 countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v18);
  }

  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_298;
  v75[3] = &unk_278978000;
  v65 = lookupCopy;
  v76 = v65;
  v74 = v73;
  v77 = v74;
  v50 = v72;
  v78 = v50;
  selfCopy = self;
  v51 = [v10 _pas_mappedArrayWithTransform:v75];
  v52 = +[PPConfiguration sharedInstance];
  socialHighlightMaxNumHighlights = [v52 socialHighlightMaxNumHighlights];

  v54 = v51;
  if ([v51 count] > socialHighlightMaxNumHighlights)
  {
    v54 = [v51 subarrayWithRange:{0, socialHighlightMaxNumHighlights, v65}];
  }

  v91[0] = clientCopy;
  v90[0] = @"client";
  v90[1] = @"limit";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{socialHighlightMaxNumHighlights, v65}];
  v91[1] = v55;
  v90[2] = @"portraitResultCount";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v54, "count")}];
  v91[2] = v56;
  v90[3] = @"portraitCacheDate";
  v57 = [(PPSocialHighlightStorage *)self lastCacheInvalidationDateForClient:clientCopy];
  null = v57;
  if (!v57)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v91[3] = null;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:4];
  if (!v57)
  {
  }

  PLLogRegisteredEvent();
  v60 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v71 count];
    v62 = [v54 count];
    *buf = 134218498;
    v85 = v61;
    v86 = 2048;
    v87 = v62;
    v88 = 2112;
    v89 = clientCopy;
    _os_log_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: reduced %tu highlights into %tu deduplicated highlights for %@", buf, 0x20u);
  }

  return v54;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_298(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 highlightIdentifier];
  v27 = [v3 domainIdentifier];
  v5 = [a1[4] objectForKeyedSubscript:v4];
  v26 = 0;
  if ([v3 isCollaboration] && v4 && v27)
  {
    v6 = v4;
    v25 = v3;
    v26 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [a1[5] objectForKeyedSubscript:{v6, v25}];
          v14 = [v13 objectForKeyedSubscript:v27];
          v15 = [v14 attributionIdentifier];
          [v26 setObject:v15 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    v16 = MEMORY[0x277CBEB98];
    v4 = v6;
    v17 = [a1[6] objectForKeyedSubscript:v6];
    v18 = [v17 allValues];
    v19 = [v18 valueForKey:@"attributionIdentifier"];
    v20 = [v16 setWithArray:v19];

    v21 = [a1[4] objectForKeyedSubscript:v6];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_2_302;
    v28[3] = &unk_2789793E0;
    v29 = v20;
    v22 = v20;
    v5 = [v21 _pas_filteredArrayWithTest:v28];

    v3 = v25;
  }

  v23 = [a1[7] highlightFromRankableHighlight:v3 attributionIdentifiers:v5 earliestAttributionIdentifiers:{v26, v25}];

  return v23;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_3()
{
  v0 = objc_opt_new();

  return v0;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

id __94__PPSocialHighlightStorage_deduplicateAndSortRankedHighlights_attributionLookup_limit_client___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCollaboration])
  {
    v3 = [v2 highlightIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)highlightFromRankableHighlight:(id)highlight attributionIdentifiers:(id)identifiers earliestAttributionIdentifiers:(id)attributionIdentifiers
{
  v67 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  identifiersCopy = identifiers;
  attributionIdentifiersCopy = attributionIdentifiers;
  [highlightCopy score];
  if (v12 < 0.0)
  {
    v13 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      highlightIdentifier = [highlightCopy highlightIdentifier];
      [highlightCopy score];
      *buf = 138412546;
      v64 = highlightIdentifier;
      v65 = 2048;
      v66 = v47;
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: Suppressing highlight %@ due to negative score: %g", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_28;
  }

  isTopKResult = [highlightCopy isTopKResult];
  [highlightCopy score];
  v17 = v16 * 0.2 + 0.8;
  v18 = v16 * 0.8;
  if (isTopKResult)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (![highlightCopy hasResolvedUrl] || (objc_msgSend(highlightCopy, "resolvedUrl"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, !v21))
  {
    v24 = 0;
    goto LABEL_13;
  }

  v22 = objc_alloc(MEMORY[0x277CBEBC0]);
  resolvedUrl = [highlightCopy resolvedUrl];
  v24 = [v22 initWithString:resolvedUrl];

  if (!v24)
  {
LABEL_13:
    v59 = MEMORY[0x277CBEC10];
    goto LABEL_14;
  }

  v61 = @"com_apple_mobilesms_resolvedURL";
  v62 = v24;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
LABEL_14:
  v25 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    highlightIdentifier2 = [highlightCopy highlightIdentifier];
    *buf = 138412546;
    v64 = highlightIdentifier2;
    v65 = 2112;
    v66 = identifiersCopy;
    _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: Constructed social highlight with identifier: %@, attributionIdentifiers: %@", buf, 0x16u);
  }

  v27 = objc_alloc(MEMORY[0x277CBEBC0]);
  resourceUrl = [highlightCopy resourceUrl];
  v29 = [v27 initWithString:resourceUrl];

  v58 = v29;
  if (!v29)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSocialHighlightStorage.m" lineNumber:589 description:@"All social highlights must have a resource URL"];
  }

  v30 = objc_alloc(MEMORY[0x277CBEAA8]);
  [highlightCopy syndicationSecondsSinceReferenceDate];
  v31 = [v30 initWithTimeIntervalSinceReferenceDate:?];
  v60 = v24;
  if ([highlightCopy isCollaboration])
  {
    applicationIdentifiers = [highlightCopy applicationIdentifiers];
    v33 = [applicationIdentifiers containsObject:@"com.apple.private.sociallayer.highlights"];

    v56 = attributionIdentifiersCopy;
    if (v33)
    {
      handleToIdentityMap = [highlightCopy handleToIdentityMap];
    }

    else
    {
      handleToIdentityMap = 0;
    }

    v55 = objc_alloc(MEMORY[0x277D3A4B8]);
    highlightIdentifier3 = [highlightCopy highlightIdentifier];
    collaborationIdentifier = [highlightCopy collaborationIdentifier];
    contentDisplayName = [highlightCopy contentDisplayName];
    v42 = objc_alloc(MEMORY[0x277CBEAA8]);
    [highlightCopy contentCreationSecondsSinceReferenceDate];
    v52 = [v42 initWithTimeIntervalSinceReferenceDate:?];
    contentType = [highlightCopy contentType];
    fileProviderId = [highlightCopy fileProviderId];
    localIdentity = [highlightCopy localIdentity];
    localIdentityProof = [highlightCopy localIdentityProof];
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v41 = v58;
    v40 = v59;
    v14 = [v55 initWithIdentifier:highlightIdentifier3 resourceURL:v58 timestamp:v31 attributionIdentifiers:identifiersCopy supplementaryData:v59 collaborationIdentifier:collaborationIdentifier contentDisplayName:contentDisplayName contentCreationDate:v52 contentUTIType:contentType fileProviderId:fileProviderId earliestAttributionIdentifiers:v56 localIdentity:localIdentity localIdentityProof:localIdentityProof handleToIdentityMap:handleToIdentityMap score:v44];

    highlightIdentifier4 = handleToIdentityMap;
    attributionIdentifiersCopy = v56;
    v38 = highlightIdentifier3;
  }

  else
  {
    v35 = objc_alloc(MEMORY[0x277D3A4C0]);
    highlightIdentifier4 = [highlightCopy highlightIdentifier];
    if (identifiersCopy)
    {
      v37 = identifiersCopy;
    }

    else
    {
      v37 = MEMORY[0x277CBEBF8];
    }

    v38 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v39 = v35;
    v41 = v58;
    v40 = v59;
    v14 = [v39 initWithIdentifier:highlightIdentifier4 resourceURL:v58 timestamp:v31 attributionIdentifiers:v37 supplementaryData:v59 score:v38];
  }

  v13 = v60;
LABEL_28:

  return v14;
}

- (id)sharedContentFromChats:(id)chats dateRange:(double)range applicationIdentifiers:(id)identifiers error:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  identifiersCopy = identifiers;
  v76[0] = *MEMORY[0x277D3A658];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
  v10 = [PPSocialHighlightStorageUtilities filteredAllowedChatBundleIds:v9];

  if ([v10 count])
  {
    v11 = objc_opt_new();
    [v11 setReason:@"SHContent"];
    [v11 setDisableBlockingOnIndex:1];
    integerValue = [&unk_284784EF0 integerValue];
    [v11 setMaximumBatchSize:2 * integerValue];
    [v11 setReason:@"reason:PPSocialHighlightStore-2; code:1"];
    v75 = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [v11 setProtectionClasses:v13];

    v14 = *MEMORY[0x277CC31F8];
    v74[0] = *MEMORY[0x277CC3208];
    v74[1] = v14;
    v15 = *MEMORY[0x277CC24A8];
    v74[2] = *MEMORY[0x277CC2640];
    v74[3] = v15;
    v16 = *MEMORY[0x277CC24C0];
    v74[4] = *MEMORY[0x277CC24B0];
    v74[5] = v16;
    v17 = *MEMORY[0x277CC3010];
    v74[6] = *MEMORY[0x277CC23A0];
    v74[7] = v17;
    v18 = *MEMORY[0x277CC2CA0];
    v74[8] = *MEMORY[0x277CC2760];
    v74[9] = v18;
    v19 = *MEMORY[0x277CC2B58];
    v74[10] = *MEMORY[0x277CC2678];
    v74[11] = v19;
    v20 = *MEMORY[0x277CC2B38];
    v74[12] = *MEMORY[0x277CC3118];
    v74[13] = v20;
    v74[14] = @"com_apple_mobilesms_highlightedContentServerDate";
    v74[15] = @"com_apple_mobilesms_syndicationContentType";
    v21 = *MEMORY[0x277CC3190];
    v74[16] = @"com_apple_mobilesms_collaborationIdentifier";
    v74[17] = v21;
    v74[18] = *MEMORY[0x277CC2B78];
    v74[19] = @"com_apple_mobilesms_resolvedURL";
    v74[20] = @"com_apple_mobilesms_fromMe";
    v74[21] = @"com_apple_mobilesms_ckBundleIDs";
    v74[22] = @"com_apple_mobilesms_localIdentityProof";
    v74[23] = @"com_apple_mobilesms_localIdentity";
    v74[24] = @"com_apple_mobilesms_handleToIdentityMap";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:25];
    [v11 setFetchAttributes:v22];

    [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = [v23 initWithFormat:@"%@=%@", *MEMORY[0x277CC2DB8], @"lnk"];
    v24 = [(PPSocialHighlightStorage *)self _isCollaborationEntitlementPresentForApplicationIdentifiers:identifiersCopy];
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v24)
    {
      v26 = @"%@=1";
    }

    else
    {
      v26 = @"%@!=2";
    }

    v49 = [v25 initWithFormat:v26, @"com_apple_mobilesms_syndicationContentType"];
    v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ != 0 && (InRange(com_apple_mobilesms_isHighlightedContent, 1, 2) || com_apple_mobilesms_isHighlightedContent=8)", v18];
    v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ || %@)", @"InRange(com_apple_mobilesms_isHighlightedContent, 1, 2)", v51];
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"kMDItemContentCreationDate>=$time.now(-%.f)", *&range];
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:integerValue];
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v29 = objc_autoreleasePoolPush();
    v73[0] = v50;
    v73[1] = v27;
    v73[2] = @"URL=*";
    v73[3] = v48;
    v73[4] = v49;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
    v31 = [v30 _pas_componentsJoinedByString:@" && "];

    v32 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      lowPriority = [v11 lowPriority];
      v34 = @"high";
      if (lowPriority)
      {
        v34 = @"low";
      }

      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Performing CoreSpotlight highlight query (%@ priority): %@", buf, 0x16u);
    }

    v35 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v31 context:v11];
    [v35 setBundleIDs:v10];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke;
    v59[3] = &unk_278977F70;
    v61 = &v63;
    v36 = v28;
    v60 = v36;
    v62 = integerValue;
    [v35 setFoundItemsHandler:v59];
    v37 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v70 = __Block_byref_object_copy__22778;
    v71 = __Block_byref_object_dispose__22779;
    v72 = 0;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_3;
    v56[3] = &unk_278977F00;
    v58 = buf;
    v38 = v37;
    v57 = v38;
    [v35 setCompletionHandler:v56];
    [v35 start];
    dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
    if (v64[3] || !*(*&buf[8] + 40))
    {
      v39 = 1;
    }

    else
    {
      v41 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v46 = *(*&buf[8] + 40);
        *v67 = 138412290;
        v68 = v46;
        _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: CoreSpotlight highlight query error: %@", v67, 0xCu);
      }

      if (error)
      {
        objc_storeStrong(error, *(*&buf[8] + 40));
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v39 = 0;
    }

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v29);
    if (v39)
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_276;
      v54[3] = &unk_278977F98;
      v55 = chatsCopy;
      v40 = [v36 _pas_filteredArrayWithTest:v54];
      v42 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v64[3];
        *buf = 134218240;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = integerValue;
        _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight query result count: %tu returning top %tu", buf, 0x16u);
      }

      v44 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v40;
        _os_log_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Returned results: %@", buf, 0xCu);
      }
    }

    else
    {
      v40 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v63, 8);
  }

  else
  {
    v11 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Short-circuiting sharedContentFromChats query because Messages app is protected.", buf, 2u);
    }

    v40 = MEMORY[0x277CBEBF8];
  }

  return v40;
}

void __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 count];
  *(*(*(a1 + 40) + 8) + 24) += v3;
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v9 objectAtIndexedSubscript:i];
      v8 = [*(a1 + 32) indexOfObject:v7 inSortedRange:0 options:objc_msgSend(*(a1 + 32) usingComparator:{"count"), 1024, &__block_literal_global_23044}];
      if (v8 < *(a1 + 48))
      {
        [*(a1 + 32) insertObject:v7 atIndex:v8];
      }

      if ([*(a1 + 32) count] > *(a1 + 48))
      {
        [*(a1 + 32) removeLastObject];
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_276(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domainIdentifier];
  if (v4)
  {
    v5 = [v3 attributeSet];
    v6 = [v5 syndicationStatus];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntegerValue];
    }

    else
    {
      v7 = 0;
    }

    v10 = [*(a1 + 32) containsObject:v4];
    if (v7 == 2 || v7 == 8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v13 = [v3 uniqueIdentifier];
      v14 = 138543362;
      v15 = v13;
      _os_log_fault_impl(&dword_23224A000, v8, OS_LOG_TYPE_FAULT, "PPSocialHighlightStorage: CSSI %{public}@ missing domainIdentifier", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t __90__PPSocialHighlightStorage_sharedContentFromChats_dateRange_applicationIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributeSet];
  v6 = [v5 contentCreationDate];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v9 = v8;

  v10 = [v4 attributeSet];

  v11 = [v10 contentCreationDate];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v14 = v13;

  v15 = [v14 compare:v9];
  return v15;
}

- (id)rankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant applicationIdentifiers:(id)identifiers error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  clientCopy = client;
  identifiersCopy = identifiers;
  v10 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        highlight = [v16 highlight];
        identifier = [highlight identifier];
        v19 = [v10 objectForKeyedSubscript:identifier];

        if (!v19)
        {
          v20 = objc_opt_new();
          highlight2 = [v16 highlight];
          identifier2 = [highlight2 identifier];
          [v10 setObject:v20 forKeyedSubscript:identifier2];
        }

        highlight3 = [v16 highlight];
        identifier3 = [highlight3 identifier];
        v25 = [v10 objectForKeyedSubscript:identifier3];
        highlight4 = [v16 highlight];
        attributionIdentifiers = [highlight4 attributionIdentifiers];
        [v25 addObjectsFromArray:attributionIdentifiers];
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v13);
  }

  v28 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  allKeys = [v10 allKeys];
  v30 = [allKeys countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v51;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(allKeys);
        }

        v34 = *(*(&v50 + 1) + 8 * j);
        v35 = [v10 objectForKeyedSubscript:v34];
        allObjects = [v35 allObjects];
        [v28 setObject:allObjects forKeyedSubscript:v34];
      }

      v31 = [allKeys countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v31);
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __103__PPSocialHighlightStorage_rankedHighlightsForSyncedItems_client_variant_applicationIdentifiers_error___block_invoke;
  v47[3] = &unk_278977F28;
  v48 = identifiersCopy;
  v49 = clientCopy;
  v37 = clientCopy;
  v38 = identifiersCopy;
  v39 = [v11 _pas_mappedArrayWithTransform:v47];
  v40 = objc_opt_new();
  v41 = [v40 rankSocialHighlights:v39 client:v37 performRerank:0];

  v42 = [(PPSocialHighlightStorage *)self deduplicateAndSortRankedHighlights:v41 attributionLookup:v28 limit:-1 client:v37];

  return v42;
}

- (id)autoDonatingChatsWithShouldContinueBlock:(id)block error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Device is Class C locked, cannot query Spotlight.", &buf, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3A580] code:27 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v46[0] = *MEMORY[0x277D3A658];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v9 = [PPSocialHighlightStorageUtilities filteredAllowedChatBundleIds:v8];

    if ([v9 count])
    {
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      [v11 setReason:@"SHConversations"];
      [v11 setDisableBlockingOnIndex:1];
      v45 = *MEMORY[0x277CC23A8];
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v11 setFetchAttributes:v12];

      [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
      [v11 setReason:@"reason:PPSocialHighlightStore-1; code:1"];
      v44 = *MEMORY[0x277CCA1A0];
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [v11 setProtectionClasses:v13];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = +[PPConfiguration sharedInstance];
      [v15 socialHighlightDecayInterval];
      v31 = [v14 initWithFormat:@"kMDItemLastUsedDate>=$time.now(-%.f)", v16];

      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ && %@", @"com_apple_mobilesms_isChatAutoDonating=1", v31];
      v18 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Performing CoreSpotlight automatic donation query: %@", &buf, 0xCu);
      }

      v19 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v17 context:v11];
      [v19 setBundleIDs:v9];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke;
      v35[3] = &unk_278977ED8;
      v20 = v10;
      v36 = v20;
      [v19 setFoundItemsHandler:v35];
      v21 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__22778;
      v42 = __Block_byref_object_dispose__22779;
      v43 = 0;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke_227;
      v32[3] = &unk_278977F00;
      p_buf = &buf;
      v22 = v21;
      v33 = v22;
      [v19 setCompletionHandler:v32];
      [v19 start];
      if (blockCopy)
      {
        while ([MEMORY[0x277D425A0] waitForSemaphore:v22 timeoutSeconds:1.0] == 1)
        {
          if ((blockCopy[2](blockCopy) & 1) == 0)
          {
            v23 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMaintenance: deferring autodonating chats", v37, 2u);
            }

            [v19 cancel];
            goto LABEL_15;
          }
        }
      }

      else
      {
        [MEMORY[0x277D425A0] waitForSemaphore:v22];
      }

      v25 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v20 count];
        *v37 = 134217984;
        v38 = v26;
        _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight automatic donation query result count: %tu", v37, 0xCu);
      }

      if ([v20 count] || !*(*(&buf + 1) + 40))
      {
        v27 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *v37 = 138739971;
          v38 = v20;
          _os_log_debug_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: CoreSpotlight automatic donation query results: %{sensitive}@", v37, 0xCu);
        }

        v7 = v20;
      }

      else
      {
        v29 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = *(*(&buf + 1) + 40);
          *v37 = 138412290;
          v38 = v30;
          _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: CoreSpotlight automatic donation query error: %@", v37, 0xCu);
        }

        if (error)
        {
          v7 = 0;
          *error = *(*(&buf + 1) + 40);
        }

        else
        {
LABEL_15:
          v7 = 0;
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: Short-circuiting autoDonatingChats query because Messages app is protected.", &buf, 2u);
      }

      v7 = [MEMORY[0x277CBEB98] set];
    }
  }

  return v7;
}

void __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 attributeSet];
        v11 = [v10 accountIdentifier];

        if (v11)
        {
          [*(a1 + 32) addObject:v11];
        }

        else
        {
          v12 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v8 attributeSet];
            v14 = [v13 uniqueIdentifier];
            *buf = 138412290;
            v20 = v14;
            _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: CoreSpotlight automatic donation query returned nil accountIdentifier for chat: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

void __75__PPSocialHighlightStorage_autoDonatingChatsWithShouldContinueBlock_error___block_invoke_227(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)syncFeedback
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPSocialHighlightStorage: triggering sync", buf, 2u);
  }

  v3 = objc_opt_new();
  v8 = 0;
  v4 = [v3 triggerSyncWithError:&v8];
  v5 = v8;
  v6 = pp_social_highlights_log_handle();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: successfully triggered sync", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSocialHighlightStorage: failed to trigger sync: %@", buf, 0xCu);
  }
}

- (PPSocialHighlightStorage)initWithFeedbackStream:(id)stream rankedStream:(id)rankedStream database:(id)database
{
  streamCopy = stream;
  rankedStreamCopy = rankedStream;
  databaseCopy = database;
  v19.receiver = self;
  v19.super_class = PPSocialHighlightStorage;
  v12 = [(PPSocialHighlightStorage *)&v19 init];
  if (v12)
  {
    v13 = objc_opt_new();
    objc_storeStrong(v13 + 1, stream);
    if (rankedStreamCopy)
    {
      v14 = [[PPSocialHighlightCache alloc] initWithStream:rankedStreamCopy database:databaseCopy];
      cache = v12->_cache;
      v12->_cache = v14;
    }

    v16 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v13];
    lock = v12->_lock;
    v12->_lock = v16;
  }

  return v12;
}

- (PPSocialHighlightStorage)init
{
  v3 = objc_alloc(MEMORY[0x277CF1B18]);
  v4 = +[PPSocialHighlightStorage feedbackPruningPolicy];
  v5 = [v3 initWithPruningPolicy:v4];

  v6 = NSRoundUpToMultipleOfPageSize(0x30000uLL);
  v7 = [PPPaths subdirectory:@"streams"];
  v8 = [objc_alloc(MEMORY[0x277CF17F8]) initWithStoreBasePath:v7 segmentSize:v6];
  v9 = objc_alloc(MEMORY[0x277CF17E8]);
  v10 = +[PPConfiguration sharedInstance];
  [v10 socialHighlightRankedStorageMaxAge];
  v11 = [v9 initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:5 * v6 maxStreamSize:?];

  [v8 setPruningPolicy:v11];
  v12 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"rankedSocialHighlights" storeConfig:v8];
  _screenTimeConversation = [(PPSocialHighlightStorage *)self _screenTimeConversation];
  v14 = objc_opt_new();
  socialHighlightStorageUtils = self->_socialHighlightStorageUtils;
  self->_socialHighlightStorageUtils = v14;

  v16 = objc_opt_new();
  v17 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v16];
  lsAppLinkCache = self->_lsAppLinkCache;
  self->_lsAppLinkCache = v17;

  [(PPSocialHighlightStorage *)self resetLSAppLinkCache];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAppLinkChangeNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleAppLinkChangeNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  defaultCenter3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleAppLinkChangeNotification_ name:@"com.apple.swc.internalUseOnly.serviceSettingsDidChangeNotification" object:0];

  v22 = +[PPSQLDatabase sharedInstance];
  v23 = [(PPSocialHighlightStorage *)self initWithFeedbackStream:v5 rankedStream:v12 database:v22];

  return v23;
}

+ (int)attributionFeedbackTypeForAttributionFeedbackType:(unint64_t)type
{
  if (type == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (type == 2)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

+ (int)unifiedFeedbackTypeForHighlightFeedbackType:(unint64_t)type
{
  if (type >= 0xC)
  {
    return 2;
  }

  else
  {
    return type;
  }
}

+ (id)appLinksForResourceURL:(id)l resolvedURL:(id)rL
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v19 = 0;
  v7 = [MEMORY[0x277CC1E48] appLinksWithURL:lCopy limit:1 includeLinksForCurrentApplication:1 error:&v19];
  v8 = v19;
  v9 = pp_social_highlights_log_handle();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: LSAppLink URL query error: %@", buf, 0xCu);
    }

    v14 = 0;
    v7 = v10;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v7 count];
    *buf = 134217984;
    v21 = v16;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: LSAppLink for URL count: %tu", buf, 0xCu);
  }

  if (rLCopy && ([rLCopy isEqual:lCopy] & 1) == 0)
  {

    v18 = 0;
    v11 = [MEMORY[0x277CC1E48] appLinksWithURL:rLCopy limit:1 includeLinksForCurrentApplication:1 error:&v18];
    v8 = v18;
    v12 = pp_social_highlights_log_handle();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v11 count];
        *buf = 134217984;
        v21 = v17;
        _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPSocialHighlightStorage: LSAppLink for resolvedURL count: %tu", buf, 0xCu);
      }

      v14 = [v7 arrayByAddingObjectsFromArray:v11];

      v7 = v11;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightStorage: LSAppLink resolvedURL query error: %@", buf, 0xCu);
      }

      v14 = 0;
    }

LABEL_13:

    v7 = v14;
  }

  return v7;
}

+ (unint64_t)entitlementStatusForClient:(id)client applicationIdentifiers:(id)identifiers
{
  if (!client)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:client error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isWebBrowser])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)feedbackPruningPolicy
{
  v2 = objc_alloc(MEMORY[0x277CF17E8]);
  v3 = +[PPConfiguration sharedInstance];
  [v3 socialHighlightFeedbackDeletionInterval];
  v4 = [v2 initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:7340032 maxStreamSize:?];

  return v4;
}

@end