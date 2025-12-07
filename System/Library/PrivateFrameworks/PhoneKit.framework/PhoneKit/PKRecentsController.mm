@interface PKRecentsController
+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)calls fromBackingRecentCalls:(id)recentCalls;
- (BOOL)canLoadOlderRecentCalls;
- (BOOL)isInitializationBlockQueued;
- (BOOL)isLocalizedSubtitleUnknown:(id)unknown;
- (CNContactFormatter)contactFormatter;
- (CNContactStore)contactStore;
- (CNContactStore)suggestedContactStore;
- (NSArray)recentCalls;
- (NSCache)callProviderCache;
- (NSDictionary)blockedStatusCache;
- (NSMutableDictionary)contactCache;
- (NSMutableDictionary)itemCache;
- (NSNumberFormatter)numberFormatter;
- (PKRecentsController)init;
- (PKRecentsController)initWithCallHistoryController:(id)controller callProviderManager:(id)manager contactStore:(id)store suggestedContactStore:(id)contactStore metadataCache:(id)cache;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (id)coalesceRecentCall:(id)call withRecentCall:(id)recentCall;
- (id)contactByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors;
- (id)contactForHandle:(id)handle;
- (id)contactForRecentCall:(id)call keyDescriptors:(id)descriptors;
- (id)contactHandlesForHandle:(id)handle;
- (id)contactHandlesForRecentCalls:(id)calls;
- (id)contactsByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors;
- (id)dialRequestForRecentCall:(id)call;
- (id)fetchCallProviderForRecentCall:(id)call;
- (id)fetchContactForContactCardDisplay:(id)display;
- (id)fetchContactFormatter;
- (id)fetchImageForRecentCall:(id)call;
- (id)fetchMutableItemForRecentCall:(id)call;
- (id)fetchMutableItemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences;
- (id)fetchNumberFormatter;
- (id)fetchRecentCalls;
- (id)fetchUnifiedContactForID:(id)d withDescriptors:(id)descriptors;
- (id)formattedNameForHandle:(id)handle countryCode:(id)code;
- (id)itemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences;
- (id)itemForRecentCall:(id)call presentationStyle:(int64_t)style;
- (id)localizedSubtitleForRecentCall:(id)call;
- (id)localizedSubtitleForRecentEmergencyCall:(id)call;
- (id)metadataItemsForRecentCall:(id)call;
- (id)recentCallsChangedFromCachedRecentCalls:(id)calls callHistoryControllerRecentCalls:(id)recentCalls;
- (id)recentCallsDeletedFromCachedRecentCall:(id)call callHistoryControllerRecentCalls:(id)calls;
- (id)subtitleForRecentEmergencyCall:(id)call;
- (id)unknownLabel;
- (id)updatedTitleForTempHandles:(id)handles countOfExcludedHandles:(int64_t)excludedHandles;
- (unint64_t)callHistoryControllerCoalescingStrategy;
- (unint64_t)callHistoryControllerOptions;
- (unint64_t)unreadCallCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)cancelSearchFetchOperations;
- (void)continuousScrollingReachedIndexPath:(int64_t)path;
- (void)dealloc;
- (void)deleteAllRecentCalls;
- (void)deleteRecentCalls:(id)calls;
- (void)fetchBlockedStatusForRecentCalls:(id)calls;
- (void)fetchContactsForHandles:(id)handles;
- (void)fetchContactsForRecentCalls:(id)calls;
- (void)fetchMetadataForRecentCalls:(id)calls;
- (void)handleBlocklistChanged:(id)changed;
- (void)handleCNContactStoreDidChangeNotification:(id)notification;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)notification;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification;
- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)notification;
- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)notification;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification;
- (void)handleUIApplicationDidBecomeActiveNotification:(id)notification;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)notification;
- (void)handleUpdatedContacts;
- (void)loadOlderCallsIfNecessaryForRemainingRowCount:(int64_t)count;
- (void)logRecentsScrollingEvent:(int64_t)event;
- (void)markRecentCallsAsRead;
- (void)markRecentCallsAsReadWithPredicate:(id)predicate;
- (void)notifyDelegatesRecentsController:(id)controller didChangeCalls:(id)calls;
- (void)notifyDelegatesRecentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count;
- (void)notifyDelegatesRecentsController:(id)controller didUpdateCalls:(id)calls;
- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)messages;
- (void)notifyDelegatesRecentsControllerDidUpdateAcceptedContacts:(id)contacts;
- (void)performDialRequest:(id)request;
- (void)performDialRequestForRecentCall:(id)call;
- (void)performJoinRequestForRecentCall:(id)call overrideProvider:(id)provider;
- (void)performSynchronousBlock:(id)block;
- (void)populateCachesForRecentCalls:(id)calls;
- (void)populateItemCacheForRecentCalls:(id)calls;
- (void)providersChangedForProviderManager:(id)manager;
- (void)queryCommTrustBlockedForCalls:(id)calls completion:(id)completion;
- (void)recentCallsWillShow;
- (void)removeDelegate:(id)delegate;
- (void)setContactFormatter:(id)formatter;
- (void)setInitializationBlockQueued:(BOOL)queued;
- (void)setNumberFormatter:(id)formatter;
- (void)setPreFetchingPredicate:(id)predicate;
- (void)setRecentCalls:(id)calls;
- (void)setUnreadCallCount:(unint64_t)count;
- (void)updateRecentCalls;
- (void)updateReminderUUID:(id)d forRecentCall:(id)call;
@end

@implementation PKRecentsController

uint64_t __34__PKRecentsController_recentCalls__block_invoke_105(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return MEMORY[0x2821F96F8]();
}

- (NSArray)recentCalls
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__PKRecentsController_recentCalls__block_invoke;
  aBlock[3] = &unk_279A22918;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = v3[2]();
  if (!v10[5] && [(PKRecentsController *)self isInitializationBlockQueued])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__PKRecentsController_recentCalls__block_invoke_105;
    v6[3] = &unk_279A22940;
    v8 = &v9;
    v7 = v3;
    [(PKRecentsController *)self performSynchronousBlock:v6];
  }

  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

id __34__PKRecentsController_recentCalls__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 120);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (id)fetchRecentCalls
{
  v39 = *MEMORY[0x277D85DE8];
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if (PKRecentsControllerSignpostLog_onceToken != -1)
  {
    [PKRecentsController fetchRecentCalls];
  }

  v4 = PKRecentsControllerSignpostLog_log;
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v37) = 0;
    _os_signpost_emit_with_name_impl(&dword_25E4EC000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "FetchRecentCalls", "Starting recent calls fetch", &v37, 2u);
  }

  recentCalls = [(PKRecentsController *)self recentCalls];
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  recentCalls2 = [callHistoryController recentCalls];

  if ([recentCalls isEqualToArray:recentCalls2])
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_25E4EC000, v12, OS_LOG_TYPE_DEFAULT, "Recent calls array has not changed. Ignoring", &v37, 2u);
    }

    v13 = v7;
    v14 = v13;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v37) = 0;
      _os_signpost_emit_with_name_impl(&dword_25E4EC000, v14, OS_SIGNPOST_INTERVAL_END, v5, "FetchRecentCalls", "Completed - no changes detected", &v37, 2u);
    }

    v15 = recentCalls;
LABEL_26:
    v31 = v15;
    goto LABEL_33;
  }

  featureFlags = [(PKRecentsController *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (!increaseCallHistoryEnabled)
  {
    itemCache = [(PKRecentsController *)self itemCache];
    [itemCache removeAllObjects];

    [(PKRecentsController *)self populateCachesForRecentCalls:recentCalls2];
    v28 = v7;
    v29 = v28;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = [recentCalls2 count];
      v37 = 134217984;
      v38 = v30;
      _os_signpost_emit_with_name_impl(&dword_25E4EC000, v29, OS_SIGNPOST_INTERVAL_END, v5, "FetchRecentCalls", "Completed - full cache refresh, %lu total objects", &v37, 0xCu);
    }

    v15 = recentCalls2;
    goto LABEL_26;
  }

  v18 = PHDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_25E4EC000, v18, OS_LOG_TYPE_DEFAULT, "Recent calls array has changed. Find the changed objects and only update their cache", &v37, 2u);
  }

  v19 = [(PKRecentsController *)self recentCallsChangedFromCachedRecentCalls:recentCalls callHistoryControllerRecentCalls:recentCalls2];
  v20 = [(PKRecentsController *)self recentCallsDeletedFromCachedRecentCall:recentCalls callHistoryControllerRecentCalls:recentCalls2];
  v21 = PHDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v19 count];
    v37 = 134217984;
    v38 = v22;
    _os_log_impl(&dword_25E4EC000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu changed objects", &v37, 0xCu);
  }

  v23 = PHDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v20 count];
    v37 = 134217984;
    v38 = v24;
    _os_log_impl(&dword_25E4EC000, v23, OS_LOG_TYPE_DEFAULT, "Found %lu deleted objects", &v37, 0xCu);
  }

  if ([v20 count])
  {
    itemCache2 = [(PKRecentsController *)self itemCache];
    [itemCache2 removeAllObjects];

    v26 = recentCalls2;
  }

  else
  {
    v32 = [v19 count];
    v26 = v19;
    if (!v32)
    {
      goto LABEL_29;
    }
  }

  [(PKRecentsController *)self populateCachesForRecentCalls:v26];
LABEL_29:
  os_unfair_lock_lock(&self->_accessorLock);
  [(PKRecentsController *)self notifyDelegatesRecentsController:self didCompleteFetchingCalls:recentCalls2];
  os_unfair_lock_unlock(&self->_accessorLock);
  v33 = v7;
  v34 = v33;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    v35 = [v19 count];
    v37 = 134217984;
    v38 = v35;
    _os_signpost_emit_with_name_impl(&dword_25E4EC000, v34, OS_SIGNPOST_INTERVAL_END, v5, "FetchRecentCalls", "Completed - incremental update, %lu changed objects", &v37, 0xCu);
  }

  v31 = recentCalls2;
LABEL_33:

  return v31;
}

- (id)fetchContactFormatter
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v3 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [v3 setStyle:0];

  return v3;
}

- (id)fetchNumberFormatter
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);

  return v3;
}

- (void)updateRecentCalls
{
  fetchRecentCalls = [(PKRecentsController *)self fetchRecentCalls];
  [(PKRecentsController *)self setRecentCalls:fetchRecentCalls];
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_contactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSDictionary)blockedStatusCache
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  blockedStatusCache = self->_blockedStatusCache;

  return blockedStatusCache;
}

- (TUMetadataCache)metadataCache
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_metadataCache;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)queryCommTrustBlockedForCalls:(id)calls completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_25E4EEF68(0, &qword_280CEAF10, 0x277CF7D48);
  v5 = sub_25E5080D8();
  sub_25E507FE8();
  _Block_copy(v4);
  v6 = sub_25E507FD8();
  sub_25E506AA8(v5, v6, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (CNContactFormatter)contactFormatter
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactFormatter = self->_contactFormatter;

  return contactFormatter;
}

- (TUCallProviderManager)callProviderManager
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_callProviderManager;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSCache)callProviderCache
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  callProviderCache = self->_callProviderCache;

  return callProviderCache;
}

- (id)unknownLabel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PKRecentsController_unknownLabel__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  if (unknownLabel_onceToken != -1)
  {
    dispatch_once(&unknownLabel_onceToken, block);
  }

  return unknownLabel_unknownLabel;
}

void __35__PKRecentsController_unknownLabel__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v3 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_287038A20 table:@"PHRecents"];
  v2 = unknownLabel_unknownLabel;
  unknownLabel_unknownLabel = v1;
}

- (NSNumberFormatter)numberFormatter
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  numberFormatter = self->_numberFormatter;

  return numberFormatter;
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBDAE0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __55__PKRecentsController_addAcceptedIntroductionsNotifier__block_invoke;
  v9 = &unk_279A22A08;
  objc_copyWeak(&v10, &location);
  v4 = [v3 acceptedIntroductionsNotifierWithBlock:&v6];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v4;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (NSMutableDictionary)itemCache
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  itemCache = self->_itemCache;

  return itemCache;
}

- (NSMutableDictionary)contactCache
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactCache = self->_contactCache;

  return contactCache;
}

- (void)markRecentCallsAsRead
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E4EC000, v3, OS_LOG_TYPE_DEFAULT, "Mark recent calls as read", buf, 2u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PKRecentsController_markRecentCallsAsRead__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __44__PKRecentsController_markRecentCallsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentCallsAsRead];
}

+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)calls fromBackingRecentCalls:(id)recentCalls
{
  callsCopy = calls;
  recentCallsCopy = recentCalls;
  array = [MEMORY[0x277CBEB18] array];
  v8 = 0;
  if ([recentCallsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [recentCallsCopy objectAtIndexedSubscript:v9];
      if (v8 >= [callsCopy count])
      {
        v11 = 0;
      }

      else
      {
        v11 = [callsCopy objectAtIndexedSubscript:v8];
      }

      if ([v11 isEqual:v10])
      {
        ++v8;
      }

      else
      {
        v12 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
        [array addObject:v12];
      }

      ++v9;
    }

    while (v9 < [recentCallsCopy count]);
  }

  if (v8 == [callsCopy count])
  {
    v13 = array;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (PKRecentsController)init
{
  [(PKRecentsController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PKRecentsController)initWithCallHistoryController:(id)controller callProviderManager:(id)manager contactStore:(id)store suggestedContactStore:(id)contactStore metadataCache:(id)cache
{
  controllerCopy = controller;
  managerCopy = manager;
  storeCopy = store;
  contactStoreCopy = contactStore;
  cacheCopy = cache;
  v47.receiver = self;
  v47.super_class = PKRecentsController;
  v17 = [(PKRecentsController *)&v47 init];
  v18 = v17;
  if (v17)
  {
    v17->_accessorLock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v18->_delegateToQueue;
    v18->_delegateToQueue = weakToStrongObjectsMapTable;

    v18->_initializationBlockQueued = 1;
    v43 = controllerCopy;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), v18];
    dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v22 = v42 = storeCopy;
    v23 = dispatch_queue_create([v21 UTF8String], v22);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v23;

    dispatch_queue_set_specific(v18->_serialQueue, PKRecentsControllerSerialQueueContextKey, v18, 0);
    objc_storeStrong(&v18->_completionDispatchQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v18->_callHistoryController, controller);
    v25 = objc_alloc_init(MEMORY[0x277CBEA78]);
    callProviderCache = v18->_callProviderCache;
    v18->_callProviderCache = v25;

    objc_storeStrong(&v18->_callProviderManager, manager);
    callProviderManager = v18->_callProviderManager;
    serialQueue = [(PKRecentsController *)v18 serialQueue];
    [(TUCallProviderManager *)callProviderManager addDelegate:v18 queue:serialQueue];

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contactCache = v18->_contactCache;
    v18->_contactCache = v29;

    objc_storeStrong(&v18->_contactStore, store);
    objc_storeStrong(&v18->_suggestedContactStore, contactStore);
    objc_storeStrong(&v18->_metadataCache, cache);
    v31 = [objc_alloc(MEMORY[0x277D6EF48]) initWithMetadataCache:cacheCopy callProviderManager:managerCopy];
    subtitleProvider = v18->_subtitleProvider;
    v18->_subtitleProvider = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    blockedStatusCache = v18->_blockedStatusCache;
    v18->_blockedStatusCache = v33;

    v35 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v18->_featureFlags;
    v18->_featureFlags = v35;

    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localizedSubtitleCache = v18->_localizedSubtitleCache;
    v18->_localizedSubtitleCache = v37;

    v18->_startedLoadingOlderCalls = 0;
    v39 = objc_alloc_init(MPAnalyticsLogger);
    [(PKRecentsController *)v18 setAnalyticsLogger:v39];

    v40 = v18->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke;
    block[3] = &unk_279A22800;
    v46 = v18;
    dispatch_async(v40, block);

    storeCopy = v42;
    controllerCopy = v43;
  }

  return v18;
}

void __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [*(a1 + 32) fetchNumberFormatter];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  [*(a1 + 32) updateRecentCalls];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(*(*(a1 + 32) + 24), "unreadCallCount")}];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:sel_handleCNContactStoreDidChangeNotification_ name:*MEMORY[0x277CBD140] object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
  [v11 addObserver:*(a1 + 32) selector:sel_handleIDSServiceAvailabilityDidChangeNotification_ name:*MEMORY[0x277D18688] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleNSCurrentLocaleDidChangeNotification_ name:*MEMORY[0x277CBE620] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleTUCallHistoryControllerRecentCallsDidChangeNotification_ name:*MEMORY[0x277D6F068] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleTUCallHistoryControllerUnreadCallCountDidChangeNotification_ name:*MEMORY[0x277D6F070] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleTUMetadataCacheDidFinishUpdatingNotification_ name:*MEMORY[0x277D6F130] object:*(*(a1 + 32) + 112)];
  [v11 addObserver:*(a1 + 32) selector:sel_handleUIApplicationSignificantTimeChangeNotification_ name:*MEMORY[0x277D766F0] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleUIApplicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
  v12 = [MEMORY[0x277D6EF20] sharedPrivacyManager];
  [v11 addObserver:*(a1 + 32) selector:sel_handleBlocklistChanged_ name:*MEMORY[0x277D6F138] object:0];
  objc_initWeak(&location, *(a1 + 32));
  if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
  {
    __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_cold_1();
  }

  v13 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2;
  handler[3] = &unk_279A228F0;
  objc_copyWeak(&v18, &location);
  v17 = *(a1 + 32);
  notify_register_dispatch(v13, (v14 + 16), v15, handler);
  [*(a1 + 32) setInitializationBlockQueued:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
      {
        __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2_cold_1();
      }

      *buf = 136315138;
      v10 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
      _os_log_impl(&dword_25E4EC000, v3, OS_LOG_TYPE_DEFAULT, "Handling %s by fetching metadata for recent calls", buf, 0xCu);
    }

    v4 = [*(a1 + 32) recentCalls];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) serialQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_99;
      v6[3] = &unk_279A228C8;
      v7 = *(a1 + 32);
      v8 = v4;
      dispatch_async(v5, v6);
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  notify_cancel([(PKRecentsController *)self callDirectoryManagerIdentificationEntriesChangedNotificationToken]);
  v4.receiver = self;
  v4.super_class = PKRecentsController;
  [(PKRecentsController *)&v4 dealloc];
}

- (CNContactStore)suggestedContactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_suggestedContactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (unint64_t)unreadCallCount
{
  os_unfair_lock_lock(&self->_accessorLock);
  unreadCallCount = self->_unreadCallCount;
  os_unfair_lock_unlock(&self->_accessorLock);
  return unreadCallCount;
}

- (id)itemForRecentCall:(id)call presentationStyle:(int64_t)style
{
  callCopy = call;
  v7 = -[PKRecentsController itemForRecentCall:numberOfOccurences:](self, "itemForRecentCall:numberOfOccurences:", callCopy, [callCopy numberOfOccurrences]);
  serviceProvider = [callCopy serviceProvider];
  if ([serviceProvider isEqualToString:*MEMORY[0x277CF7E08]])
  {
    remoteParticipantHandles = [callCopy remoteParticipantHandles];
    v10 = [remoteParticipantHandles count];
    v11 = v10 != 1;

    if (!style)
    {
      if (v10 == 1)
      {
        goto LABEL_11;
      }

LABEL_10:
      self = v7;
      goto LABEL_19;
    }
  }

  else
  {

    if (!style)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  imageURL = [callCopy imageURL];
  if (imageURL)
  {

    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  remoteParticipantHandles2 = [callCopy remoteParticipantHandles];
  anyObject = [remoteParticipantHandles2 anyObject];

  if (!anyObject)
  {
    goto LABEL_17;
  }

  name = [callCopy name];
  if (!name)
  {
    goto LABEL_17;
  }

  v16 = name;
  name2 = [callCopy name];
  v18 = [name2 length];

  if (!v18)
  {
    goto LABEL_17;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__PKRecentsController_itemForRecentCall_presentationStyle___block_invoke;
  v23[3] = &unk_279A22968;
  v25 = &v26;
  v23[4] = self;
  v24 = anyObject;
  [(PKRecentsController *)self performSynchronousBlock:v23];
  v19 = v27[5];
  if (!v19)
  {
    v20 = [v7 mutableCopy];
    name3 = [callCopy name];
    [v20 setLocalizedSubtitle:name3];

    self = [v20 copy];
  }

  _Block_object_dispose(&v26, 8);
  if (v19)
  {
LABEL_17:
    self = v7;
  }

LABEL_19:

  return self;
}

uint64_t __59__PKRecentsController_itemForRecentCall_presentationStyle___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) contactForHandle:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)itemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences
{
  callCopy = call;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PKRecentsController_itemForRecentCall_numberOfOccurences___block_invoke;
  v9[3] = &unk_279A22968;
  v11 = &v12;
  v9[4] = self;
  v6 = callCopy;
  v10 = v6;
  [(PKRecentsController *)self performSynchronousBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__PKRecentsController_itemForRecentCall_numberOfOccurences___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) itemCache];
  v2 = [*(a1 + 40) uniqueId];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)coalesceRecentCall:(id)call withRecentCall:(id)recentCall
{
  callCopy = call;
  recentCallCopy = recentCall;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  serialQueue = [(PKRecentsController *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__PKRecentsController_coalesceRecentCall_withRecentCall___block_invoke;
  v13[3] = &unk_279A22990;
  v13[4] = self;
  v14 = callCopy;
  v15 = recentCallCopy;
  v16 = &v17;
  v9 = recentCallCopy;
  v10 = callCopy;
  dispatch_sync(serialQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __57__PKRecentsController_coalesceRecentCall_withRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  v3 = [v2 coalescingStrategy];

  if (v3 == 2)
  {
    v4 = MEMORY[0x277CF7DE0];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = MEMORY[0x277CF7DE8];
  }

  v5 = *v4;
  if (v5)
  {
    v9 = v5;
    v6 = [*(a1 + 40) coalescedCallWithCall:*(a1 + 48) usingStrategy:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)deleteAllRecentCalls
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PKRecentsController_deleteAllRecentCalls__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __43__PKRecentsController_deleteAllRecentCalls__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 deleteAllRecentCalls];
}

- (void)deleteRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PKRecentsController *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PKRecentsController_deleteRecentCalls___block_invoke;
  v7[3] = &unk_279A228C8;
  v7[4] = self;
  v8 = callsCopy;
  v6 = callsCopy;
  dispatch_async(serialQueue, v7);
}

void __41__PKRecentsController_deleteRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 deleteRecentCalls:*(a1 + 40)];
}

- (void)markRecentCallsAsReadWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  serialQueue = [(PKRecentsController *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PKRecentsController_markRecentCallsAsReadWithPredicate___block_invoke;
  v7[3] = &unk_279A228C8;
  v7[4] = self;
  v8 = predicateCopy;
  v6 = predicateCopy;
  dispatch_async(serialQueue, v7);
}

void __58__PKRecentsController_markRecentCallsAsReadWithPredicate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 markUnreadRecentCallsAsReadWithPredicate:*(a1 + 40)];
}

- (void)updateReminderUUID:(id)d forRecentCall:(id)call
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  callCopy = call;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = callCopy;
    _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID: %@, for recent call: %@", buf, 0x16u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PKRecentsController_updateReminderUUID_forRecentCall___block_invoke;
  block[3] = &unk_279A229B8;
  block[4] = self;
  v13 = dCopy;
  v14 = callCopy;
  v10 = callCopy;
  v11 = dCopy;
  dispatch_async(serialQueue, block);
}

void __56__PKRecentsController_updateReminderUUID_forRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 updateReminderUUID:*(a1 + 40) forRecentCall:*(a1 + 48)];
}

- (id)contactForRecentCall:(id)call keyDescriptors:(id)descriptors
{
  callCopy = call;
  descriptorsCopy = descriptors;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v9 = [validRemoteParticipantHandles count];

  if (v9 == 1)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__PKRecentsController_contactForRecentCall_keyDescriptors___block_invoke;
    v18[3] = &unk_279A229E0;
    v18[4] = self;
    v19 = callCopy;
    v20 = descriptorsCopy;
    v21 = &v22;
    [(PKRecentsController *)self performSynchronousBlock:v18];
  }

  v10 = v23[5];
  if (!v10)
  {
    v11 = MEMORY[0x277CBDB38];
    metadataCache = [(PKRecentsController *)self metadataCache];
    v13 = [v11 contactForRecentCall:callCopy metadataCache:metadataCache];
    v14 = [v13 copy];
    v15 = v23[5];
    v23[5] = v14;

    v10 = v23[5];
  }

  v16 = v10;
  _Block_object_dispose(&v22, 8);

  return v16;
}

void __59__PKRecentsController_contactForRecentCall_keyDescriptors___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v2 = [v7 allValues];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)contactByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors
{
  callCopy = call;
  descriptorsCopy = descriptors;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __67__PKRecentsController_contactByHandleForRecentCall_keyDescriptors___block_invoke;
  v15 = &unk_279A229E0;
  selfCopy = self;
  v8 = callCopy;
  v17 = v8;
  v9 = descriptorsCopy;
  v18 = v9;
  v19 = &v20;
  [(PKRecentsController *)self performSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __67__PKRecentsController_contactByHandleForRecentCall_keyDescriptors___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v2 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v2 objectForKeyedSubscript:v11];
          v13 = [v12 firstObject];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void __55__PKRecentsController_addAcceptedIntroductionsNotifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyDelegatesRecentsControllerDidUpdateAcceptedContacts:WeakRetained];
  [WeakRetained handleUpdatedContacts];
}

- (id)dialRequestForRecentCall:(id)call
{
  v12 = *MEMORY[0x277D85DE8];
  callCopy = call;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = callCopy;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for recent call %@", &v10, 0xCu);
  }

  callProviderManager = [(PKRecentsController *)self callProviderManager];
  v7 = [callProviderManager dialRequestForRecentCall:callCopy];

  if (v7)
  {
    [v7 setOriginatingUIType:8];
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PKRecentsController *)callCopy dialRequestForRecentCall:v8];
    }
  }

  return v7;
}

- (void)performDialRequest:(id)request
{
  requestCopy = request;
  presentScreenTimeShield = [(PKRecentsController *)self presentScreenTimeShield];
  if (presentScreenTimeShield && (v6 = presentScreenTimeShield, [MEMORY[0x277D6EDF8] sharedInstance], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "callFilterController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldRestrictDialRequest:performSynchronously:", requestCopy, 1), v8, v7, v6, v9))
  {
    presentScreenTimeShield2 = [(PKRecentsController *)self presentScreenTimeShield];
    (presentScreenTimeShield2)[2](presentScreenTimeShield2, requestCopy);
  }

  else
  {
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__PKRecentsController_performDialRequest___block_invoke;
    v12[3] = &unk_279A22A30;
    v13 = requestCopy;
    [mEMORY[0x277D6EDF8] launchAppForDialRequest:v13 completion:v12];
  }
}

void __42__PKRecentsController_performDialRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__PKRecentsController_performDialRequest___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)performDialRequestForRecentCall:(id)call
{
  v4 = [(PKRecentsController *)self dialRequestForRecentCall:call];
  if (v4)
  {
    [(PKRecentsController *)self performDialRequest:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)performJoinRequestForRecentCall:(id)call overrideProvider:(id)provider
{
  v44 = *MEMORY[0x277D85DE8];
  callCopy = call;
  providerCopy = provider;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E4EC000, v6, OS_LOG_TYPE_DEFAULT, "PKRecentsController -performJoinRequestForRecentCall", buf, 2u);
  }

  v7 = MEMORY[0x277CBEB58];
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v9 = [v7 setWithCapacity:{objc_msgSend(validRemoteParticipantHandles, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = callCopy;
  validRemoteParticipantHandles2 = [callCopy validRemoteParticipantHandles];
  v11 = [validRemoteParticipantHandles2 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(validRemoteParticipantHandles2);
        }

        tuHandle = [*(*(&v37 + 1) + 8 * i) tuHandle];
        if (tuHandle)
        {
          v16 = objc_alloc(MEMORY[0x277D6EEA0]);
          v17 = [MEMORY[0x277CBEB98] setWithObject:tuHandle];
          v18 = [v16 initWithHandles:v17];

          [v9 addObject:v18];
        }
      }

      v12 = [validRemoteParticipantHandles2 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D6EEF0]) initWithRemoteMembers:v9 originatingUIType:8];
    v20 = v35;
    -[NSObject setVideo:](v19, "setVideo:", [v35 mediaType] == 2);
    -[NSObject setVideoEnabled:](v19, "setVideoEnabled:", [v35 mediaType] == 2);
    [v19 setOriginatingUIType:8];
    v21 = providerCopy;
    if (providerCopy)
    {
      [v19 setProvider:providerCopy];
    }

    callProviderManager = [(PKRecentsController *)self callProviderManager];
    faceTimeProvider = [callProviderManager faceTimeProvider];
    outgoingLocalParticipantUUID = [v35 outgoingLocalParticipantUUID];
    v25 = [faceTimeProvider senderIdentityForAccountUUID:outgoingLocalParticipantUUID];

    if (v25)
    {
      handle = [v25 handle];
      [v19 setCallerID:handle];
    }

    invitationPreferencesForRecentCall = [MEMORY[0x277D6EE28] invitationPreferencesForRecentCall];
    [v19 setInvitationPreferences:invitationPreferencesForRecentCall];

    presentScreenTimeShield = [(PKRecentsController *)self presentScreenTimeShield];
    if (presentScreenTimeShield && (v29 = presentScreenTimeShield, [MEMORY[0x277D6EDF8] sharedInstance], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "callFilterController"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "shouldRestrictJoinConversationRequest:performSynchronously:", v19, 1), v31, v21 = providerCopy, v20 = v35, v30, v29, v32))
    {
      presentScreenTimeShield2 = [(PKRecentsController *)self presentScreenTimeShield];
      (presentScreenTimeShield2)[2](presentScreenTimeShield2, v19);
    }

    else
    {
      presentScreenTimeShield2 = [MEMORY[0x277D6EDF8] sharedInstance];
      [presentScreenTimeShield2 launchAppForJoinRequest:v19];
    }
  }

  else
  {
    v19 = PHDefaultLog();
    v21 = providerCopy;
    v20 = v35;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v35;
      _os_log_impl(&dword_25E4EC000, v19, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    }
  }
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  delegateToQueue = [(PKRecentsController *)self delegateToQueue];
  if (queueCopy)
  {
    v8 = queueCopy;
  }

  else
  {
    v8 = MEMORY[0x277D85CD0];
  }

  [delegateToQueue setObject:v8 forKey:delegateCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  delegateToQueue = [(PKRecentsController *)self delegateToQueue];
  [delegateToQueue removeObjectForKey:delegateCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)notifyDelegatesRecentsController:(id)controller didUpdateCalls:(id)calls
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  callsCopy = calls;
  featureFlags = [(PKRecentsController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    os_unfair_lock_assert_owner(&self->_accessorLock);
    selfCopy = self;
    delegateToQueue = [(PKRecentsController *)self delegateToQueue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [delegateToQueue countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [delegateToQueue objectForKey:v14];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__PKRecentsController_notifyDelegatesRecentsController_didUpdateCalls___block_invoke;
          block[3] = &unk_279A229B8;
          block[4] = v14;
          v22 = controllerCopy;
          v23 = callsCopy;
          dispatch_async(v15, block);

          v16 = &v22;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v15 = [delegateToQueue objectForKey:v14];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __71__PKRecentsController_notifyDelegatesRecentsController_didUpdateCalls___block_invoke_2;
          v19[3] = &unk_279A229B8;
          v19[4] = v14;
          v20[0] = controllerCopy;
          v20[1] = selfCopy;
          dispatch_async(v15, v19);
          v16 = v20;
        }
      }

      v11 = [delegateToQueue countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }
}

- (void)notifyDelegatesRecentsControllerDidUpdateAcceptedContacts:(id)contacts
{
  contactsCopy = contacts;
  serialQueue = [(PKRecentsController *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PKRecentsController_notifyDelegatesRecentsControllerDidUpdateAcceptedContacts___block_invoke;
  v7[3] = &unk_279A228C8;
  v7[4] = self;
  v8 = contactsCopy;
  v6 = contactsCopy;
  dispatch_async(serialQueue, v7);
}

void __81__PKRecentsController_notifyDelegatesRecentsControllerDidUpdateAcceptedContacts___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegateToQueue];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v2 objectForKey:v7];
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __81__PKRecentsController_notifyDelegatesRecentsControllerDidUpdateAcceptedContacts___block_invoke_2;
          v9[3] = &unk_279A228C8;
          v9[4] = v7;
          v10 = *(a1 + 40);
          dispatch_async(v8, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)notifyDelegatesRecentsController:(id)controller didChangeCalls:(id)calls
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  callsCopy = calls;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  delegateToQueue = [(PKRecentsController *)self delegateToQueue];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [delegateToQueue countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(delegateToQueue);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [delegateToQueue objectForKey:v13];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__PKRecentsController_notifyDelegatesRecentsController_didChangeCalls___block_invoke;
          block[3] = &unk_279A229B8;
          block[4] = v13;
          v16 = controllerCopy;
          v17 = callsCopy;
          dispatch_async(v14, block);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [delegateToQueue countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)notifyDelegatesRecentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  delegateToQueue = [(PKRecentsController *)self delegateToQueue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [delegateToQueue objectForKey:v12];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__PKRecentsController_notifyDelegatesRecentsController_didChangeUnreadCallCount___block_invoke;
          block[3] = &unk_279A22A58;
          block[4] = v12;
          v15 = controllerCopy;
          countCopy = count;
          dispatch_async(v13, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)messages
{
  v19 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  delegateToQueue = [(PKRecentsController *)self delegateToQueue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [delegateToQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [delegateToQueue objectForKey:v10];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __73__PKRecentsController_notifyDelegatesRecentsControllerDidChangeMessages___block_invoke;
          v12[3] = &unk_279A228C8;
          v12[4] = v10;
          v13 = messagesCopy;
          dispatch_async(v11, v12);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [delegateToQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)setContactFormatter:(id)formatter
{
  formatterCopy = formatter;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactFormatter = self->_contactFormatter;
  p_contactFormatter = &self->_contactFormatter;
  if (contactFormatter != formatterCopy)
  {
    objc_storeStrong(p_contactFormatter, formatter);
  }
}

- (void)setInitializationBlockQueued:(BOOL)queued
{
  queuedCopy = queued;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != queuedCopy)
  {
    self->_initializationBlockQueued = queuedCopy;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  numberFormatter = self->_numberFormatter;
  p_numberFormatter = &self->_numberFormatter;
  if (numberFormatter != formatterCopy)
  {
    objc_storeStrong(p_numberFormatter, formatter);
  }
}

- (void)setRecentCalls:(id)calls
{
  callsCopy = calls;
  os_unfair_lock_lock(&self->_accessorLock);
  recentCalls = self->_recentCalls;
  if (recentCalls != callsCopy && ![(NSArray *)recentCalls isEqualToArray:callsCopy])
  {
    v5 = [(NSArray *)callsCopy copy];
    v6 = self->_recentCalls;
    self->_recentCalls = v5;

    [(PKRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:self->_recentCalls];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setUnreadCallCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_unreadCallCount != count)
  {
    self->_unreadCallCount = count;
    [(PKRecentsController *)self notifyDelegatesRecentsController:self didChangeUnreadCallCount:count];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPreFetchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_preFetchingPredicate != predicateCopy)
  {
    objc_storeStrong(&self->_preFetchingPredicate, predicate);
    callHistoryController = [(PKRecentsController *)self callHistoryController];
    [callHistoryController setPreFetchingPredicate:predicateCopy];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)contactForHandle:(id)handle
{
  v24 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  [(PKRecentsController *)self contactHandlesForHandle:handleCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        contactCache = [(PKRecentsController *)self contactCache];
        v13 = [contactCache objectForKeyedSubscript:v11];
        value = [v13 value];

        if (value)
        {
          v15 = v6;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = handleCopy;
    _os_log_impl(&dword_25E4EC000, v15, OS_LOG_TYPE_DEFAULT, "Handle not found in cache: %@", buf, 0xCu);
  }

  value = 0;
LABEL_13:

  return value;
}

- (id)contactsByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors
{
  v76 = *MEMORY[0x277D85DE8];
  callCopy = call;
  descriptorsCopy = descriptors;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v53 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v44 = callCopy;
  obj = [callCopy validRemoteParticipantHandles];
  v47 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v47)
  {
    v55 = 0;
    v46 = *v69;
    v8 = v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v9;
        v51 = *(*(&v68 + 1) + 8 * v9);
        v10 = [(PKRecentsController *)self contactHandlesForHandle:?];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v65;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v65 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v64 + 1) + 8 * i);
              contactCache = [(PKRecentsController *)self contactCache];
              v17 = [contactCache objectForKeyedSubscript:v15];

              if (v17 && (([v17 value], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v17, "value"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "areKeysAvailable:", descriptorsCopy), v20, v8 = v53, v19, v21)))
              {
                value = [v17 value];
                if (value)
                {
                  v23 = v55;
                  if (!v55)
                  {
                    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  }

                  v55 = v23;
                  array = [v23 objectForKeyedSubscript:v51];
                  if (!array)
                  {
                    array = [MEMORY[0x277CBEB18] array];
                    [v55 setObject:array forKeyedSubscript:v51];
                  }

                  [array addObject:value];
                }
              }

              else
              {
                [v8 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v12);
        }

        [v48 setObject:v10 forKeyedSubscript:v51];

        v9 = v49 + 1;
      }

      while (v49 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v47);
  }

  else
  {
    v55 = 0;
    v8 = v53;
  }

  if ([v8 count])
  {
    contactStore = [(PKRecentsController *)self contactStore];
    array2 = [v8 array];
    v27 = [contactStore contactsForHandles:array2 keyDescriptors:descriptorsCopy];

    if (v27)
    {
      v28 = v55;
      if (!v55)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v55 = v28;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      allKeys = [v48 allKeys];
      v29 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v29)
      {
        v30 = v29;
        v52 = *v61;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v61 != v52)
            {
              objc_enumerationMutation(allKeys);
            }

            v32 = *(*(&v60 + 1) + 8 * j);
            v33 = objc_alloc_init(MEMORY[0x277CBEB40]);
            v34 = [v48 objectForKeyedSubscript:v32];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v35 = [v34 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v57;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v57 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [v27 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * k)];
                  if ([v39 count])
                  {
                    [v33 addObjectsFromArray:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v56 objects:v72 count:16];
              }

              while (v36);
            }

            array3 = [v55 objectForKeyedSubscript:v32];
            if (!array3)
            {
              array3 = [MEMORY[0x277CBEB18] array];
              [v55 setObject:array3 forKeyedSubscript:v32];
            }

            array4 = [v33 array];
            [array3 addObjectsFromArray:array4];
          }

          v30 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v30);
      }
    }

    v8 = v53;
  }

  v42 = [v55 copy];

  return v42;
}

- (id)contactHandlesForHandle:(id)handle
{
  handleCopy = handle;
  array = [MEMORY[0x277CBEB18] array];
  value = [handleCopy value];
  if ([value length])
  {
    [array addObject:value];
    normalizedValue = [handleCopy normalizedValue];
    if ([normalizedValue length])
    {
      value2 = [handleCopy value];
      v8 = [normalizedValue isEqualToString:value2];

      if ((v8 & 1) == 0)
      {
        [array addObject:normalizedValue];
      }
    }
  }

  v9 = [array copy];

  return v9;
}

- (id)contactHandlesForRecentCalls:(id)calls
{
  v30 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = callsCopy;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        validRemoteParticipantHandles = [v10 validRemoteParticipantHandles];
        v12 = [validRemoteParticipantHandles countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(validRemoteParticipantHandles);
              }

              v16 = [(PKRecentsController *)self contactHandlesForHandle:*(*(&v20 + 1) + 8 * j)];
              [v5 addObjectsFromArray:v16];
            }

            v13 = [validRemoteParticipantHandles countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  array = [v5 array];

  return array;
}

- (id)formattedNameForHandle:(id)handle countryCode:(id)code
{
  v20 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  codeCopy = code;
  type = [handleCopy type];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v9)
    {
      value = [handleCopy value];
      v16 = 138412546;
      v17 = value;
      v18 = 2112;
      v19 = codeCopy;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v16, 0x16u);
    }

    value2 = [handleCopy value];
    value4 = TUFormattedPhoneNumber();

    if (!value4)
    {
LABEL_9:
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      value4 = [v14 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_287038A20 table:@"PHRecents"];
    }
  }

  else
  {
    if (v9)
    {
      value3 = [handleCopy value];
      v16 = 138412290;
      v17 = value3;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v16, 0xCu);
    }

    value4 = [handleCopy value];
    if (!value4)
    {
      goto LABEL_9;
    }
  }

  return value4;
}

- (id)fetchCallProviderForRecentCall:(id)call
{
  v17 = *MEMORY[0x277D85DE8];
  callCopy = call;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  serviceProvider = [callCopy serviceProvider];
  callProviderManager = [(PKRecentsController *)self callProviderManager];
  if (serviceProvider)
  {
    callProviderCache = [(PKRecentsController *)self callProviderCache];
    v9 = [callProviderCache objectForKey:serviceProvider];

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = [callProviderManager providerForRecentCall:callCopy];
    if (v10)
    {
      v9 = v10;
      callProviderCache2 = [(PKRecentsController *)self callProviderCache];
      [callProviderCache2 setObject:v9 forKey:serviceProvider];

      goto LABEL_7;
    }

    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = callCopy;
      _os_log_impl(&dword_25E4EC000, v14, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", buf, 0xCu);
    }
  }

  else
  {
    callCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Service provider is nil for the specified recent call: %@", callCopy];
    NSLog(&cfstr_TuassertionFai.isa, callCopy);

    _TUAssertShouldCrashApplication();
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)fetchContactsForRecentCalls:(id)calls
{
  v12 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = [(PKRecentsController *)self contactHandlesForRecentCalls:callsCopy];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = [callsCopy count];
    v10 = 2048;
    v11 = [v6 count];
    _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu calls using %lu handles", &v8, 0x16u);
  }

  [(PKRecentsController *)self fetchContactsForHandles:v6];
}

- (id)fetchContactForContactCardDisplay:(id)display
{
  displayCopy = display;
  if ([displayCopy canExceedUnifyingThreshold])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    serialQueue = [(PKRecentsController *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PKRecentsController_fetchContactForContactCardDisplay___block_invoke;
    block[3] = &unk_279A22968;
    v10 = displayCopy;
    v11 = &v12;
    block[4] = self;
    v6 = displayCopy;
    dispatch_sync(serialQueue, block);

    v7 = v13[5];
    if (!v7)
    {
      v7 = v6;
    }

    displayCopy = v7;

    _Block_object_dispose(&v12, 8);
  }

  return displayCopy;
}

void __57__PKRecentsController_fetchContactForContactCardDisplay___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 fetchUnifiedContactForID:v5 withDescriptors:v3];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)fetchUnifiedContactForID:(id)d withDescriptors:(id)descriptors
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  descriptorsCopy = descriptors;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactStore = [(PKRecentsController *)self contactStore];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v25 = dCopy;
    v26 = 2112;
    v27 = contactStore;
    _os_log_impl(&dword_25E4EC000, v10, OS_LOG_TYPE_DEFAULT, "Fetching unified contact for handle %{sensitive}@ using contact store %@", buf, 0x16u);
  }

  v11 = descriptorsCopy;
  if (!descriptorsCopy)
  {
    if (_defaultContactsKeyDescriptors_onceToken != -1)
    {
      [PKRecentsController fetchUnifiedContactForID:withDescriptors:];
    }

    v11 = _defaultContactsKeyDescriptors_keyDescriptors;
  }

  v23 = 0;
  v12 = [contactStore unifiedContactWithIdentifier:dCopy keysToFetch:v11 error:&v23];
  v13 = v23;
  if (!descriptorsCopy)
  {
  }

  v14 = objc_alloc(MEMORY[0x277D6EF10]);
  if (v13)
  {
    v15 = [v14 initWithValue:0];
    contactCache = [(PKRecentsController *)self contactCache];
    [contactCache setObject:v15 forKeyedSubscript:dCopy];

    v17 = PHDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PKRecentsController fetchUnifiedContactForID:dCopy withDescriptors:v17];
    }

    v18 = 0;
  }

  else
  {
    v19 = [v14 initWithValue:v12];
    contactCache2 = [(PKRecentsController *)self contactCache];
    [contactCache2 setObject:v19 forKeyedSubscript:dCopy];

    v21 = PHDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v25 = v12;
      v26 = 2117;
      v27 = dCopy;
      _os_log_impl(&dword_25E4EC000, v21, OS_LOG_TYPE_DEFAULT, "Found unified contact %{sensitive}@ for contact handle %{sensitive}@", buf, 0x16u);
    }

    v18 = v12;
  }

  return v18;
}

- (void)fetchContactsForHandles:(id)handles
{
  v51 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = handlesCopy;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        contactCache = [(PKRecentsController *)self contactCache];
        v14 = [contactCache objectForKeyedSubscript:v12];

        if (!v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    contactStore = [(PKRecentsController *)self contactStore];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      *buf = 134218242;
      v44 = v17;
      v45 = 2112;
      v46 = contactStore;
      _os_log_impl(&dword_25E4EC000, v16, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    allObjects = [v6 allObjects];
    v32 = v7;
    if (_defaultContactsKeyDescriptors_onceToken != -1)
    {
      [PKRecentsController fetchUnifiedContactForID:withDescriptors:];
    }

    v31 = contactStore;
    v19 = [contactStore contactsForHandles:allObjects keyDescriptors:_defaultContactsKeyDescriptors_keyDescriptors alwaysUnifyLabeledValues:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v6;
    obj = v6;
    v20 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          v25 = [v19 objectForKeyedSubscript:v24];
          firstObject = [v25 firstObject];
          if ([v25 count] >= 2)
          {
            v27 = PHDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v25 count];
              *buf = 134218499;
              v44 = v28;
              v45 = 2117;
              v46 = v24;
              v47 = 2117;
              v48 = firstObject;
              _os_log_impl(&dword_25E4EC000, v27, OS_LOG_TYPE_DEFAULT, "Found %lu contacts for contact handle %{sensitive}@; caching the first contact %{sensitive}@", buf, 0x20u);
            }
          }

          v29 = [objc_alloc(MEMORY[0x277D6EF10]) initWithValue:firstObject];
          contactCache2 = [(PKRecentsController *)self contactCache];
          [contactCache2 setObject:v29 forKeyedSubscript:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v21);
    }

    v7 = v32;
    v6 = v33;
  }
}

- (id)fetchImageForRecentCall:(id)call
{
  callCopy = call;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  ttyType = [callCopy ttyType];
  if (ttyType == 2)
  {
    recentsTTYRelayGlyphImage = [MEMORY[0x277D755B8] recentsTTYRelayGlyphImage];
LABEL_5:
    v8 = recentsTTYRelayGlyphImage;
    if (recentsTTYRelayGlyphImage)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (ttyType == 1)
  {
    recentsTTYRelayGlyphImage = [MEMORY[0x277D755B8] recentsTTYDirectGlyphImage];
    goto LABEL_5;
  }

LABEL_6:
  callStatus = [callCopy callStatus];
  if (callStatus != *MEMORY[0x277CF7D90])
  {
    callStatus2 = [callCopy callStatus];
    if (callStatus2 != *MEMORY[0x277CF7D80])
    {
      goto LABEL_11;
    }
  }

  mediaType = [callCopy mediaType];
  if (mediaType == 2)
  {
    recentsOutgoingVideoCallGlyphImage = [MEMORY[0x277D755B8] recentsOutgoingVideoCallGlyphImage];
    goto LABEL_13;
  }

  if (mediaType != 1)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_14;
  }

  recentsOutgoingVideoCallGlyphImage = [MEMORY[0x277D755B8] recentsOutgoingAudioCallGlyphImage];
LABEL_13:
  v8 = recentsOutgoingVideoCallGlyphImage;
LABEL_14:

  return v8;
}

- (id)updatedTitleForTempHandles:(id)handles countOfExcludedHandles:(int64_t)excludedHandles
{
  handlesCopy = handles;
  if (![handlesCopy length])
  {
    goto LABEL_6;
  }

  if (excludedHandles == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
    handlesCopy = [v7 stringWithFormat:v9, handlesCopy];

    goto LABEL_7;
  }

  if (excludedHandles >= 2)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = TUBundle();
    v13 = [v12 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
    numberFormatter = [(PKRecentsController *)self numberFormatter];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:excludedHandles];
    v16 = [numberFormatter stringFromNumber:v15];
    handlesCopy = [v11 stringWithFormat:v13, handlesCopy, v16];
  }

  else
  {
LABEL_6:
    handlesCopy = handlesCopy;
  }

LABEL_7:

  return handlesCopy;
}

- (id)fetchMutableItemForRecentCall:(id)call
{
  callCopy = call;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = -[PKRecentsController fetchMutableItemForRecentCall:numberOfOccurences:](self, "fetchMutableItemForRecentCall:numberOfOccurences:", callCopy, [callCopy numberOfOccurrences]);

  return v6;
}

- (id)fetchMutableItemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences
{
  v186 = *MEMORY[0x277D85DE8];
  callCopy = call;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v8 = objc_alloc_init(PKMutableRecentsItem);
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v10 = [validRemoteParticipantHandles count];
  countOfExcludedHandles = [callCopy countOfExcludedHandles];
  v12 = countOfExcludedHandles;
  v173 = validRemoteParticipantHandles;
  if (!v10 && countOfExcludedHandles >= 1)
  {
    if (countOfExcludedHandles == 1)
    {
      v13 = TUBundle();
      v47 = [v13 localizedStringForKey:@"ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
    }

    else
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = TUBundle();
      v41 = [v40 localizedStringForKey:@"%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
      [(PKRecentsController *)self numberFormatter];
      v42 = callCopy;
      v44 = v43 = occurences;
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      v46 = [v44 stringFromNumber:v45];
      v47 = [v39 stringWithFormat:v41, v46];

      occurences = v43;
      callCopy = v42;
    }

    v130 = 0;
    goto LABEL_80;
  }

  occurencesCopy = occurences;
  if (v10 > 1)
  {
    v167 = countOfExcludedHandles;
    v171 = v8;
    v175 = callCopy;
    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(validRemoteParticipantHandles, "count")}];
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v24 = validRemoteParticipantHandles;
    v25 = [v24 countByEnumeratingWithState:&v176 objects:v184 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v177;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v177 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v176 + 1) + 8 * i);
          v30 = [(PKRecentsController *)self contactForHandle:v29];
          if (v30)
          {
            contactFormatter = [(PKRecentsController *)self contactFormatter];
            isoCountryCode2 = [contactFormatter stringFromContact:v30];

            if (isoCountryCode2)
            {
              [v23 addObject:isoCountryCode2];
            }

            else
            {
              isoCountryCode = [v175 isoCountryCode];
              v35 = [(PKRecentsController *)self formattedNameForHandle:v29 countryCode:isoCountryCode];
              [v23 addObject:v35];
            }
          }

          else
          {
            isoCountryCode2 = [v175 isoCountryCode];
            v33 = [(PKRecentsController *)self formattedNameForHandle:v29 countryCode:isoCountryCode2];
            [v23 addObject:v33];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v176 objects:v184 count:16];
      }

      while (v26);
    }

    string = [MEMORY[0x277CCAB68] string];
    v37 = [v23 count];
    if (v37 == 3)
    {
      v160 = MEMORY[0x277CCACA8];
      v57 = TUBundle();
      v58 = v57;
      v163 = string;
      if (v167 == 1)
      {
        [v57 localizedStringForKey:@"%@_%@_%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v100 = v99 = string;
        v101 = [v23 objectAtIndexedSubscript:0];
        v102 = [v23 objectAtIndexedSubscript:1];
        v103 = [v23 objectAtIndexedSubscript:2];
        v103 = [v160 stringWithFormat:v100, v101, v102, v103];

        [v99 appendString:v103];
        v58 = v103;
      }

      else if (v167)
      {
        v157 = [v57 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v155 = [v23 objectAtIndexedSubscript:0];
        v119 = [v23 objectAtIndexedSubscript:1];
        v120 = [v23 objectAtIndexedSubscript:2];
        numberFormatter = [(PKRecentsController *)self numberFormatter];
        v122 = [MEMORY[0x277CCABB0] numberWithInteger:v167];
        v123 = [numberFormatter stringFromNumber:v122];
        v123 = [v160 stringWithFormat:v157, v155, v119, v120, v123];

        [v163 appendString:v123];
        v58 = v123;
      }

      else
      {
        v59 = [v57 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v60 = [v23 objectAtIndexedSubscript:0];
        v61 = [v23 objectAtIndexedSubscript:1];
        v62 = [v23 objectAtIndexedSubscript:2];
        v63 = [v160 stringWithFormat:v59, v60, v61, v62];
        [v163 appendString:v63];
      }

      callCopy = v175;
      v8 = v171;

      v125 = MEMORY[0x277CCACA8];
      v126 = TUBundle();
      v127 = [v126 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
      v128 = [v23 objectAtIndexedSubscript:0];
      v129 = [v23 objectAtIndexedSubscript:1];
      v130 = [v23 objectAtIndexedSubscript:2];
      v130 = [v125 stringWithFormat:v127, v128, v129, v130];

      occurences = occurencesCopy;
      string = v163;
    }

    else
    {
      if (v37 == 2)
      {
        v51 = MEMORY[0x277CCACA8];
        v52 = TUBundle();
        v159 = v52;
        if (v167 == 1)
        {
          v53 = [v52 localizedStringForKey:@"%@_%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
          v54 = [v23 objectAtIndexedSubscript:0];
          v55 = [v23 objectAtIndexedSubscript:1];
          v111 = [v51 stringWithFormat:v53, v54, v55];
          callCopy = v175;
          v8 = v171;
        }

        else
        {
          v156 = v51;
          callCopy = v175;
          v8 = v171;
          if (v167)
          {
            v53 = [v52 localizedStringForKey:@"%@_%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
            v54 = [v23 objectAtIndexedSubscript:0];
            v55 = [v23 objectAtIndexedSubscript:1];
            numberFormatter2 = [(PKRecentsController *)self numberFormatter];
            v110 = [MEMORY[0x277CCABB0] numberWithInteger:v167];
            [numberFormatter2 stringFromNumber:v110];
            v111 = v165 = string;
            v111 = [v156 stringWithFormat:v53, v54, v55, v111];

            string = v165;
          }

          else
          {
            v53 = [v52 localizedStringForKey:@"%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
            v54 = [v23 objectAtIndexedSubscript:0];
            v55 = [v23 objectAtIndexedSubscript:1];
            v111 = [v156 stringWithFormat:v53, v54, v55];
          }
        }

        [string appendString:v111];
        v112 = string;
        v113 = MEMORY[0x277CCACA8];
        v114 = TUBundle();
        v115 = [v114 localizedStringForKey:@"%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v116 = [v23 objectAtIndexedSubscript:0];
        v117 = [v23 objectAtIndexedSubscript:1];
        v118 = v113;
        string = v112;
        v130 = [v118 stringWithFormat:v115, v116, v117];
      }

      else
      {
        if (v37 == 1)
        {
          callCopy = v175;
          v8 = v171;
          if (v167 == 1)
          {
            v105 = string;
            v106 = MEMORY[0x277CCACA8];
            v135 = TUBundle();
            v107 = [v135 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
            v108 = [v23 objectAtIndexedSubscript:0];
            v108 = [v106 stringWithFormat:v107, v108];
            [v105 appendString:v108];

            string = v105;
          }

          else
          {
            if (v167)
            {
              v158 = MEMORY[0x277CCACA8];
              v162 = TUBundle();
              v131 = [v162 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
              v132 = [v23 objectAtIndexedSubscript:0];
              numberFormatter3 = [(PKRecentsController *)self numberFormatter];
              [MEMORY[0x277CCABB0] numberWithInteger:v167];
              v134 = v166 = string;
              v135 = [numberFormatter3 stringFromNumber:v134];
              v136 = v131;
              v135 = [v158 stringWithFormat:v131, v132, v135];

              string = v166;
            }

            else
            {
              v135 = [v23 objectAtIndexedSubscript:0];
            }

            [string appendString:v135];
          }

          occurences = occurencesCopy;

          v130 = [v23 objectAtIndexedSubscript:0];
          goto LABEL_76;
        }

        if (v37 < 4)
        {
          v130 = 0;
        }

        else
        {
          v164 = string;
          v64 = v167 + [v23 count] - 3;
          v65 = MEMORY[0x277CCACA8];
          v168 = TUBundle();
          v66 = [v168 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
          v67 = [v23 objectAtIndexedSubscript:0];
          v68 = [v23 objectAtIndexedSubscript:1];
          v69 = [v23 objectAtIndexedSubscript:2];
          numberFormatter4 = [(PKRecentsController *)self numberFormatter];
          v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v64];
          v72 = [numberFormatter4 stringFromNumber:v71];
          v73 = v65;
          v74 = v66;
          v75 = [v73 stringWithFormat:v66, v67, v68, v69, v72];
          [v164 appendString:v75];

          v161 = MEMORY[0x277CCACA8];
          v169 = TUBundle();
          v76 = [v169 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
          v77 = [v23 objectAtIndexedSubscript:0];
          v78 = [v23 objectAtIndexedSubscript:1];
          v79 = [v23 objectAtIndexedSubscript:2];
          numberFormatter5 = [(PKRecentsController *)self numberFormatter];
          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "count") - 3}];
          v82 = [numberFormatter5 stringFromNumber:v81];
          v130 = [v161 stringWithFormat:v76, v77, v78, v79, v82];

          string = v164;
        }

        callCopy = v175;
        v8 = v171;
      }

      occurences = occurencesCopy;
    }

LABEL_76:
    if ([string length])
    {
      v47 = [string copy];
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_80;
  }

  anyObject = [validRemoteParticipantHandles anyObject];
  if (anyObject)
  {
    [(PKRecentsController *)self contactHandlesForHandle:anyObject];
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v15 = v183 = 0u;
    v130 = [v15 countByEnumeratingWithState:&v180 objects:v185 count:16];
    if (v130)
    {
      v170 = v8;
      v174 = callCopy;
      v17 = *v181;
      while (2)
      {
        for (j = 0; j != v130; j = j + 1)
        {
          if (*v181 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v180 + 1) + 8 * j);
          contactCache = [(PKRecentsController *)self contactCache];
          v21 = [contactCache objectForKeyedSubscript:v19];
          value = [v21 value];

          if (value)
          {
            contactFormatter2 = [(PKRecentsController *)self contactFormatter];
            v49 = [contactFormatter2 stringFromContact:value];
            v47 = [(PKRecentsController *)self updatedTitleForTempHandles:v49 countOfExcludedHandles:v12];

            contactFormatter3 = [(PKRecentsController *)self contactFormatter];
            v130 = [contactFormatter3 stringFromContact:value];

            goto LABEL_37;
          }
        }

        v130 = [v15 countByEnumeratingWithState:&v180 objects:v185 count:16];
        if (v130)
        {
          continue;
        }

        break;
      }

      v47 = 0;
LABEL_37:
      callCopy = v174;
      v8 = v170;
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v130 = 0;
    v47 = 0;
  }

  v83 = [(PKRecentsController *)self fetchCallProviderForRecentCall:callCopy];
  if (![v47 length] && (objc_msgSend(v83, "isTelephonyProvider") & 1) == 0)
  {
    name = [callCopy name];
    v85 = [(PKRecentsController *)self updatedTitleForTempHandles:name countOfExcludedHandles:v12];

    name2 = [callCopy name];

    v130 = name2;
    v47 = v85;
  }

  if (![v47 length])
  {
    callerIdForDisplay = [callCopy callerIdForDisplay];
    v88 = [(PKRecentsController *)self updatedTitleForTempHandles:callerIdForDisplay countOfExcludedHandles:v12];

    callerIdForDisplay2 = [callCopy callerIdForDisplay];

    v130 = callerIdForDisplay2;
    v47 = v88;
  }

  if (![v47 length])
  {
    callerIdIsBlocked = [callCopy callerIdIsBlocked];
    v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v92 = v91;
    if (callerIdIsBlocked)
    {
      v93 = @"NO_CALLER_ID";
    }

    else
    {
      v93 = @"UNKNOWN_CALLER";
    }

    v94 = [v91 localizedStringForKey:v93 value:&stru_287038A20 table:@"PHRecents"];
    v95 = [(PKRecentsController *)self updatedTitleForTempHandles:v94 countOfExcludedHandles:v12];

    v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([callCopy callerIdIsBlocked])
    {
      v97 = @"NO_CALLER_ID";
    }

    else
    {
      v97 = @"UNKNOWN_CALLER";
    }

    v98 = [v96 localizedStringForKey:v97 value:&stru_287038A20 table:@"PHRecents"];

    v130 = v98;
    v47 = v95;
  }

  occurences = occurencesCopy;
LABEL_80:
  date = [callCopy date];
  [(PKRecentsItem *)v8 setDate:date];

  image = [(PKRecentsItem *)v8 image];

  if (!image)
  {
    v139 = [(PKRecentsController *)self fetchImageForRecentCall:callCopy];
    [(PKRecentsItem *)v8 setImage:v139];
  }

  if (occurences <= 1)
  {
    [(PKRecentsItem *)v8 setLocalizedCount:0];
  }

  else
  {
    v140 = MEMORY[0x277CCACA8];
    numberFormatter6 = [(PKRecentsController *)self numberFormatter];
    v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:occurences];
    v143 = [numberFormatter6 stringFromNumber:v142];
    v143 = [v140 stringWithFormat:@"(%@)", v143];
    [(PKRecentsItem *)v8 setLocalizedCount:v143];
  }

  [(PKRecentsItem *)v8 setLocalizedTitle:v47];
  [(PKRecentsItem *)v8 setLocalizedValidHandlesTitle:v130];
  -[PKRecentsItem setVerified:](v8, "setVerified:", [callCopy verificationStatus] == 1);
  if (PHDeviceSupportsDualSim())
  {
    v145 = [(PKRecentsController *)self fetchCallProviderForRecentCall:callCopy];
    if ([callCopy ph_supportsLocalParticipantBadge])
    {
      prioritizedSenderIdentities = [v145 prioritizedSenderIdentities];
      v147 = [prioritizedSenderIdentities count];

      if (v147 >= 2)
      {
        callProviderManager = [(PKRecentsController *)self callProviderManager];
        telephonyProvider = [callProviderManager telephonyProvider];
        localParticipantUUID = [callCopy localParticipantUUID];
        v151 = [telephonyProvider senderIdentityForAccountUUID:localParticipantUUID];

        localizedShortName = [v151 localizedShortName];
        [(PKRecentsItem *)v8 setLocalizedSenderIdentityTitle:localizedShortName];
      }
    }
  }

  return v8;
}

- (void)fetchMetadataForRecentCalls:(id)calls
{
  v19 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  metadataCache = [(PKRecentsController *)self metadataCache];

  if (metadataCache)
  {
    v7 = [MEMORY[0x277D6EF00] metadataDestinationIDsForCHRecentCalls:callsCopy];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = [callsCopy count];
      v17 = 2048;
      v18 = [v7 count];
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu recent calls using %lu handles", buf, 0x16u);
    }

    featureFlags = [(PKRecentsController *)self featureFlags];
    phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

    metadataCache2 = [(PKRecentsController *)self metadataCache];
    v12 = metadataCache2;
    if (phoneRecentsAvatarsEnabled)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke;
      v13[3] = &unk_279A228C8;
      v13[4] = self;
      v14 = callsCopy;
      [v12 updateCacheWithDestinationIDs:v7 completion:v13];
    }

    else
    {
      [metadataCache2 updateCacheWithDestinationIDs:v7];
    }
  }
}

void __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 phoneRecentsAvatarsEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke_2;
    v7[3] = &unk_279A228C8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

void __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
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
          v8 = [v7 uniqueId];
          v9 = [*(a1 + 40) itemCache];
          v10 = [v9 objectForKeyedSubscript:v8];
          v11 = [v10 mutableCopy];

          if (v11)
          {
            v12 = [*(a1 + 40) localizedSubtitleForRecentCall:v7];
            [v11 setLocalizedSubtitle:v12];

            v13 = [v11 copy];
            v14 = [*(a1 + 40) itemCache];
            [v14 setObject:v13 forKeyedSubscript:v8];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [*(a1 + 40) notifyDelegatesRecentsController:*(a1 + 40) didUpdateCalls:*(a1 + 32)];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }
}

- (void)fetchBlockedStatusForRecentCalls:(id)calls
{
  v16 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([callsCopy count])
  {
    blockedStatusCache = [(PKRecentsController *)self blockedStatusCache];

    if (blockedStatusCache)
    {
      featureFlags = [(PKRecentsController *)self featureFlags];
      betterBlockingEnabled = [featureFlags betterBlockingEnabled];

      if (betterBlockingEnabled)
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = [callsCopy count];
          _os_log_impl(&dword_25E4EC000, v9, OS_LOG_TYPE_DEFAULT, "Fetching blocked status for %lu recent calls", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke;
        v10[3] = &unk_279A22AA8;
        objc_copyWeak(&v13, buf);
        v11 = callsCopy;
        selfCopy = self;
        [(PKRecentsController *)self queryCommTrustBlockedForCalls:v11 completion:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke_2;
  v9[3] = &unk_279A22A80;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setBlockedStatusCache:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    v20 = *v28;
    do
    {
      v5 = 0;
      v21 = v3;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = [v6 uniqueId];
        v8 = [*(a1 + 32) itemCache];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = [v6 remoteParticipantHandles];
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = *v24;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v23 + 1) + 8 * i);
                v16 = [*(a1 + 32) blockedStatusCache];
                v17 = [v16 objectForKeyedSubscript:v15];

                if (v17 && [v17 intValue] == 1)
                {

                  v12 = 1;
                  goto LABEL_18;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v4 = v20;
            v3 = v21;
          }

          [v10 setIsBlocked:v12];
          v18 = [v10 copy];
          v19 = [*(a1 + 32) itemCache];
          [v19 setObject:v18 forKeyedSubscript:v7];
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }

  os_unfair_lock_lock((*(a1 + 56) + 12));
  [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didUpdateCalls:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 56) + 12));
}

- (BOOL)canLoadOlderRecentCalls
{
  featureFlags = [(PKRecentsController *)self featureFlags];
  if ([featureFlags increaseCallHistoryEnabled])
  {
    callHistoryController = [(PKRecentsController *)self callHistoryController];
    canLoadOlderRecentCalls = [callHistoryController canLoadOlderRecentCalls];
  }

  else
  {
    canLoadOlderRecentCalls = 0;
  }

  return canLoadOlderRecentCalls;
}

- (void)continuousScrollingReachedIndexPath:(int64_t)path
{
  v18 = *MEMORY[0x277D85DE8];
  featureFlags = [(PKRecentsController *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (increaseCallHistoryEnabled)
  {
    recentCalls = [(PKRecentsController *)self recentCalls];
    v8 = [recentCalls count] - path;

    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      pathCopy = path;
      v14 = 2048;
      v15 = v8;
      v16 = 1024;
      startedLoadingOlderCalls = [(PKRecentsController *)self startedLoadingOlderCalls];
      _os_log_impl(&dword_25E4EC000, v9, OS_LOG_TYPE_DEFAULT, "_continuousScrollingReachedIndexPath %ld, remaining rows: %ld startedLoadingOlderCalls: %d", buf, 0x1Cu);
    }

    [(PKRecentsController *)self loadOlderCallsIfNecessaryForRemainingRowCount:v8];
    serialQueue = self->_serialQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__PKRecentsController_continuousScrollingReachedIndexPath___block_invoke;
    v11[3] = &unk_279A22AD0;
    v11[4] = self;
    v11[5] = path;
    dispatch_async(serialQueue, v11);
  }
}

- (void)loadOlderCallsIfNecessaryForRemainingRowCount:(int64_t)count
{
  featureFlags = [(PKRecentsController *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (increaseCallHistoryEnabled && ![(PKRecentsController *)self startedLoadingOlderCalls])
  {
    recentCalls = [(PKRecentsController *)self recentCalls];
    v7 = [recentCalls count];
    callHistoryController = [(PKRecentsController *)self callHistoryController];
    callHistoryControllerCallHistoryFetchLimit = [callHistoryController callHistoryControllerCallHistoryFetchLimit];
    if (count > 50 || v7 >= callHistoryControllerCallHistoryFetchLimit)
    {
    }

    else
    {
      canLoadOlderRecentCalls = [(PKRecentsController *)self canLoadOlderRecentCalls];

      if (canLoadOlderRecentCalls)
      {
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25E4EC000, v11, OS_LOG_TYPE_DEFAULT, "Loading older recent calls", buf, 2u);
        }

        [(PKRecentsController *)self setStartedLoadingOlderCalls:1];
        callHistoryController2 = [(PKRecentsController *)self callHistoryController];
        [callHistoryController2 loadOlderRecentCalls];
      }
    }
  }
}

- (id)recentCallsChangedFromCachedRecentCalls:(id)calls callHistoryControllerRecentCalls:(id)recentCalls
{
  v35 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  recentCallsCopy = recentCalls;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = callsCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        uniqueId = [v14 uniqueId];
        [v8 setObject:v14 forKeyedSubscript:uniqueId];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = recentCallsCopy;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        uniqueId2 = [v21 uniqueId];
        v23 = [v8 objectForKey:uniqueId2];

        if (!v23 || ([v23 isEqual:v21] & 1) == 0)
        {
          [v7 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  return v7;
}

- (id)recentCallsDeletedFromCachedRecentCall:(id)call callHistoryControllerRecentCalls:(id)calls
{
  v36 = *MEMORY[0x277D85DE8];
  callCopy = call;
  callsCopy = calls;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = callsCopy;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        uniqueId = [v14 uniqueId];
        [v8 setObject:v14 forKeyedSubscript:uniqueId];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = callCopy;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        uniqueId2 = [v21 uniqueId];
        v23 = [v8 objectForKey:uniqueId2];

        if (!v23)
        {
          uniqueId3 = [v21 uniqueId];
          [v7 addObject:uniqueId3];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  return v7;
}

- (void)populateCachesForRecentCalls:(id)calls
{
  v13 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = [callsCopy count];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "Requesting contacts for %lu calls", &v11, 0xCu);
  }

  [(PKRecentsController *)self fetchContactsForRecentCalls:callsCopy];
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Requesting metadata for %lu recent calls.", &v11, 0xCu);
  }

  [(PKRecentsController *)self fetchMetadataForRecentCalls:callsCopy];
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&dword_25E4EC000, v9, OS_LOG_TYPE_DEFAULT, "Requesting blocked status with %lu recent calls", &v11, 0xCu);
  }

  [(PKRecentsController *)self fetchBlockedStatusForRecentCalls:callsCopy];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&dword_25E4EC000, v10, OS_LOG_TYPE_DEFAULT, "Populating item cache with %lu recent calls", &v11, 0xCu);
  }

  [(PKRecentsController *)self populateItemCacheForRecentCalls:callsCopy];
}

- (void)populateItemCacheForRecentCalls:(id)calls
{
  v22 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  itemCache = [(PKRecentsController *)self itemCache];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = callsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(PKRecentsController *)self fetchMutableItemForRecentCall:v12, v17];
        v14 = [(PKRecentsController *)self localizedSubtitleForRecentCall:v12];
        [v13 setLocalizedSubtitle:v14];

        v15 = [v13 copy];
        uniqueId = [v12 uniqueId];
        [itemCache setObject:v15 forKeyedSubscript:uniqueId];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)recentCallsWillShow
{
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  [callHistoryController boostQualityOfService];
}

- (id)metadataItemsForRecentCall:(id)call
{
  v21 = *MEMORY[0x277D85DE8];
  callCopy = call;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D6EF00] metadataDestinationIDsForCHRecentCall:callCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        metadataCache = [(PKRecentsController *)self metadataCache];
        v13 = [metadataCache metadataForDestinationID:v11];

        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [array copy];

  return v14;
}

- (void)handleUpdatedContacts
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PKRecentsController_handleUpdatedContacts__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __44__PKRecentsController_handleUpdatedContacts__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recentCalls];
  if ([v6 count])
  {
    v2 = [*(a1 + 32) contactCache];
    [v2 removeAllObjects];

    v3 = *(a1 + 32);
    v4 = [v3 recentCalls];
    [v3 fetchContactsForRecentCalls:v4];

    v5 = [*(a1 + 32) itemCache];
    [v5 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v6];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v6];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleCNContactStoreDidChangeNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v9, 0x20u);
  }

  [(PKRecentsController *)self handleUpdatedContacts];
}

- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PKRecentsController_handleIDSServiceAvailabilityDidChangeNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PKRecentsController_handleNSCurrentLocaleDidChangeNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __66__PKRecentsController_handleNSCurrentLocaleDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  [*(a1 + 32) setContactFormatter:v2];

  v3 = [*(a1 + 32) fetchNumberFormatter];
  [*(a1 + 32) setNumberFormatter:v3];

  v8 = [*(a1 + 32) recentCalls];
  if ([v8 count])
  {
    v4 = [*(a1 + 32) itemCache];
    [v4 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v8];
    v5 = [*(a1 + 32) featureFlags];
    v6 = [v5 phoneRecentsAvatarsEnabled];

    os_unfair_lock_lock((*(a1 + 32) + 12));
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 notifyDelegatesRecentsController:v7 didUpdateCalls:v8];
    }

    else
    {
      [v7 notifyDelegatesRecentsController:v7 didChangeCalls:v8];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  v7 = [object isEqual:callHistoryController];

  serialQueue = PHDefaultLog();
  v9 = os_log_type_enabled(serialQueue, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = v10;
      name = [notificationCopy name];
      *buf = 138412802;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2112;
      v19 = name;
      _os_log_impl(&dword_25E4EC000, serialQueue, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    serialQueue = [(PKRecentsController *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__PKRecentsController_handleTUCallHistoryControllerRecentCallsDidChangeNotification___block_invoke;
    block[3] = &unk_279A22800;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_25E4EC000, serialQueue, OS_LOG_TYPE_DEFAULT, "Ignoring calls change notification from different callHistoryController", buf, 2u);
  }
}

uint64_t __85__PKRecentsController_handleTUCallHistoryControllerRecentCallsDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStartedLoadingOlderCalls:0];
  v2 = *(a1 + 32);

  return [v2 updateRecentCalls];
}

- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  v7 = [object isEqual:callHistoryController];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      name = [notificationCopy name];
      v14 = 138412802;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2112;
      v19 = name;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v14, 0x20u);
    }

    object2 = [notificationCopy object];
    v13 = object2;
    if (object2)
    {
      -[PKRecentsController setUnreadCallCount:](self, "setUnreadCallCount:", [object2 unreadCallCount]);
    }
  }
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  featureFlags = [(PKRecentsController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if ((phoneRecentsAvatarsEnabled & 1) == 0)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      name = [notificationCopy name];
      *buf = 138412802;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2112;
      v18 = name;
      _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    serialQueue = [(PKRecentsController *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PKRecentsController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke;
    block[3] = &unk_279A22800;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

void __74__PKRecentsController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recentCalls];
  if ([v2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 uniqueId];
          v10 = [*(a1 + 32) itemCache];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 mutableCopy];

          if (v12)
          {
            v13 = [*(a1 + 32) localizedSubtitleForRecentCall:v8];
            [v12 setLocalizedSubtitle:v13];

            v14 = [v12 copy];
            v15 = [*(a1 + 32) itemCache];
            [v15 setObject:v14 forKeyedSubscript:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v2 = v16;
  }
}

- (void)handleUIApplicationSignificantTimeChangeNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PKRecentsController_handleUIApplicationSignificantTimeChangeNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __76__PKRecentsController_handleUIApplicationSignificantTimeChangeNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) recentCalls];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) itemCache];
    [v2 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v3];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleUIApplicationDidBecomeActiveNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PKRecentsController_handleUIApplicationDidBecomeActiveNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)handleBlocklistChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [changedCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PKRecentsController_handleBlocklistChanged___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __46__PKRecentsController_handleBlocklistChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCalls];
  [*(a1 + 32) fetchBlockedStatusForRecentCalls:v2];
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(PKRecentsControllerSerialQueueContextKey) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(PKRecentsController *)self serialQueue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)providersChangedForProviderManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v10 = objc_opt_class();
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = managerCopy;
    v6 = v10;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling providersChangedForProviderManager %@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PKRecentsController_providersChangedForProviderManager___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __58__PKRecentsController_providersChangedForProviderManager___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recentCalls];
  if ([v4 count])
  {
    v2 = [*(a1 + 32) callProviderCache];
    [v2 removeAllObjects];

    v3 = [*(a1 + 32) itemCache];
    [v3 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v4];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v4];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (id)subtitleForRecentEmergencyCall:(id)call
{
  callOccurrences = [call callOccurrences];
  v5 = [(PKRecentsController *)self localizedSubtitleForRecentEmergencyCall:callOccurrences];

  return v5;
}

- (id)localizedSubtitleForRecentEmergencyCall:(id)call
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = call;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v4)
  {
LABEL_33:
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    v21 = @"Emergency call";
    goto LABEL_34;
  }

  v5 = v4;
  selfCopy = self;
  v6 = 0;
  v7 = 0;
  v8 = *v28;
  v9 = *MEMORY[0x277CF7D68];
  v10 = *MEMORY[0x277CF7D60];
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      v13 = [v12 objectForKeyedSubscript:{v9, selfCopy}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 += [v13 integerValue];
      }

      v14 = [v12 objectForKeyedSubscript:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 += [v14 integerValue];
      }
    }

    v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v5);
  if (v7 && !v6)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    v18 = @"Shared videos coalesced";
    v19 = @"Shared video coalesced";
    v20 = v7 == 1;
    goto LABEL_18;
  }

  if (v7 || !v6)
  {
    if (v7 == 1 && v6 == 1)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared video and photo coalesced";
      goto LABEL_34;
    }

    if (v7 == 1 && v6 >= 2)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared video and photos coalesced";
      goto LABEL_34;
    }

    if (v7 >= 2 && v6 == 1)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared videos and photo coalesced";
      goto LABEL_34;
    }

    if (v7 >= 2 && v6 >= 2)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared videos and photos coalesced";
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = v16;
  v18 = @"Shared photos coalesced";
  v19 = @"Shared photo coalesced";
  v20 = v6 == 1;
LABEL_18:
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

LABEL_34:
  v22 = [v16 localizedStringForKey:v21 value:&stru_287038A20 table:@"PHRecents"];
  v23 = [v15 stringWithFormat:v22];

  return v23;
}

- (id)localizedSubtitleForRecentCall:(id)call
{
  v77 = *MEMORY[0x277D85DE8];
  callCopy = call;
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([callCopy wasEmergencyCall])
  {
    v6 = [(PKRecentsController *)self subtitleForRecentEmergencyCall:callCopy];
    goto LABEL_73;
  }

  blockedByExtension = [callCopy blockedByExtension];

  if (blockedByExtension)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"%@_BLOCKED_BY" value:&stru_287038A20 table:@"PHRecents"];
    localizedBlockedByExtensionName = [callCopy localizedBlockedByExtensionName];
    v6 = [v8 stringWithFormat:v10, localizedBlockedByExtensionName];

    goto LABEL_73;
  }

  uniqueId = [callCopy uniqueId];
  featureFlags = [(PKRecentsController *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (!increaseCallHistoryEnabled)
  {
    v16 = 0;
LABEL_9:
    v17 = [(PKRecentsController *)self fetchCallProviderForRecentCall:callCopy];
    v18 = v17;
    if (v17)
    {
      if ([v17 isFaceTimeProvider])
      {
        mediaType = [callCopy mediaType];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v21 = v20;
        if (mediaType == 2)
        {
          v22 = @"RECENTS_FACETIME_VIDEO";
        }

        else
        {
          v22 = @"RECENTS_FACETIME_AUDIO";
        }

        v33 = [v20 localizedStringForKey:v22 value:&stru_287038A20 table:@"PHRecents"];

        v16 = v33;
        goto LABEL_66;
      }

      if ([v18 isTelephonyProvider])
      {
        remoteParticipantHandles = [callCopy remoteParticipantHandles];
        anyObject = [remoteParticipantHandles anyObject];

        if (anyObject)
        {
          v70 = anyObject;
          [(PKRecentsController *)self contactHandlesForHandle:anyObject];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = v75 = 0u;
          v25 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
          if (v25)
          {
            v26 = v25;
            v68 = v18;
            v69 = uniqueId;
            v27 = *v73;
LABEL_17:
            v28 = 0;
            while (1)
            {
              if (*v73 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v72 + 1) + 8 * v28);
              contactCache = [(PKRecentsController *)self contactCache];
              v31 = [contactCache objectForKeyedSubscript:v29];
              value = [v31 value];

              if (value)
              {
                break;
              }

              if (v26 == ++v28)
              {
                v26 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
                if (v26)
                {
                  goto LABEL_17;
                }

                v18 = v68;
                uniqueId = v69;
                goto LABEL_24;
              }
            }

            anyObject = v70;
            type = [v70 type];
            if (type == 3)
            {
              v37 = [value labeledValueForEmailAddress:v29];
              v48 = MEMORY[0x277CBDB20];
              label = [v37 label];
              v40 = [v48 localizedDisplayStringForLabel:label propertyName:*MEMORY[0x277CBCFC0]];
              uniqueId = v69;
            }

            else
            {
              uniqueId = v69;
              if (type == 2)
              {
                v46 = MEMORY[0x277CBDB70];
                isoCountryCode = [callCopy isoCountryCode];
                label = [v46 phoneNumberWithDigits:v29 countryCode:isoCountryCode];

                if (label)
                {
                  v37 = [value labeledValueForPhoneNumber:label];
                }

                else
                {
                  v37 = 0;
                }

                v49 = MEMORY[0x277CBDB20];
                label2 = [v37 label];
                v40 = [v49 localizedDisplayStringForLabel:label2 propertyName:*MEMORY[0x277CBD098]];

                v16 = label2;
              }

              else
              {
                if (type != 1)
                {
LABEL_42:

                  v18 = v68;
                  goto LABEL_43;
                }

                v37 = [value labeledValueForSocialProfileWithUsername:v29];
                v38 = MEMORY[0x277CBDB20];
                label = [v37 label];
                v40 = [v38 localizedDisplayStringForLabel:label propertyName:*MEMORY[0x277CBD138]];
              }
            }

            v16 = v40;
            anyObject = v70;
            goto LABEL_42;
          }

LABEL_24:
          anyObject = v70;
LABEL_43:
        }

        if (-[PKRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v16) && [callCopy isJunk])
        {
          junkIdentificationCategory = [callCopy junkIdentificationCategory];
          if (junkIdentificationCategory)
          {
            junkIdentificationCategory2 = [callCopy junkIdentificationCategory];
          }

          else
          {
            junkIdentificationCategory2 = @"MAYBE_JUNK";
          }

          v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v54 = [v53 localizedStringForKey:junkIdentificationCategory2 value:&stru_287038A20 table:@"PHRecents"];

          v16 = v54;
        }

        if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
        {
          v55 = [MEMORY[0x277D6EF00] metadataDestinationIDsForCHRecentCall:callCopy];
          firstObject = [v55 firstObject];

          if (firstObject)
          {
            metadataCache = [(PKRecentsController *)self metadataCache];
            v58 = [metadataCache metadataForDestinationID:firstObject];

            if (v58)
            {
              if (-[PKRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v16) && ([callCopy callerIdIsBlocked] & 1) == 0)
              {
                v59 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v59;
              }

              if (-[PKRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v16) && ([callCopy callerIdIsBlocked] & 1) == 0)
              {
                v60 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v60;
              }

              if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
              {
                v61 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v61;
              }

              if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
              {
                v62 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v62;
              }
            }
          }

          else
          {
            v58 = 0;
          }
        }

        goto LABEL_66;
      }

      mediaType2 = [callCopy mediaType];
      if (mediaType2 == 1)
      {
        v35 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
        goto LABEL_35;
      }

      if (mediaType2 == 2)
      {
        v35 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
LABEL_35:
        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v43 = [v42 localizedStringForKey:v35 value:&stru_287038A20 table:@"PHRecents"];
        localizedName = [v18 localizedName];
        v45 = [v41 stringWithFormat:v43, localizedName];

        v16 = v45;
      }
    }

LABEL_66:
    if (![v16 length])
    {
      unknownLabel = [(PKRecentsController *)self unknownLabel];

      v16 = unknownLabel;
    }

    featureFlags2 = [(PKRecentsController *)self featureFlags];
    increaseCallHistoryEnabled2 = [featureFlags2 increaseCallHistoryEnabled];

    if (increaseCallHistoryEnabled2 && uniqueId)
    {
      localizedSubtitleCache = [(PKRecentsController *)self localizedSubtitleCache];
      [localizedSubtitleCache setObject:v16 forKey:uniqueId];
    }

    v6 = v16;

    goto LABEL_72;
  }

  localizedSubtitleCache2 = [(PKRecentsController *)self localizedSubtitleCache];
  v16 = [localizedSubtitleCache2 objectForKey:uniqueId];

  if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
  {
    goto LABEL_9;
  }

  v6 = v16;
LABEL_72:

LABEL_73:

  return v6;
}

- (BOOL)isLocalizedSubtitleUnknown:(id)unknown
{
  unknownCopy = unknown;
  featureFlags = [(PKRecentsController *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  v7 = [unknownCopy length];
  if (v7)
  {
    v8 = increaseCallHistoryEnabled;
  }

  else
  {
    v8 = 1;
  }

  if (increaseCallHistoryEnabled && v7)
  {
    unknownLabel = [(PKRecentsController *)self unknownLabel];
    v8 = [unknownCopy isEqualToString:unknownLabel];
  }

  return v8;
}

- (void)logRecentsScrollingEvent:(int64_t)event
{
  serialQueue = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if (!(event % 100))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:event / 100];
    [v9 setObject:v6 forKey:@"BucketedScrollingIndex"];

    analyticsLogger = [(PKRecentsController *)self analyticsLogger];
    v8 = [v9 copy];
    [analyticsLogger logEvent:@"com.apple.MobilePhone.RecentsScrollingIndex" withCoreAnalyticsDictionary:v8];
  }
}

- (unint64_t)callHistoryControllerOptions
{
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  options = [callHistoryController options];

  return options;
}

- (unint64_t)callHistoryControllerCoalescingStrategy
{
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  coalescingStrategy = [callHistoryController coalescingStrategy];

  return coalescingStrategy;
}

- (void)cancelSearchFetchOperations
{
  callHistoryController = [(PKRecentsController *)self callHistoryController];
  [callHistoryController cancelSearchFetchOperations];
}

- (void)dialRequestForRecentCall:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Could not create a dial request for the recent call (%@).", &v2, 0xCu);
}

void __42__PKRecentsController_performDialRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25E4EC000, log, OS_LOG_TYPE_ERROR, "Error initiating dial request %@: %@", &v4, 0x16u);
}

- (void)fetchUnifiedContactForID:(uint64_t)a1 withDescriptors:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch unified contact for identifier: %{sensitive}@", &v2, 0xCu);
}

@end