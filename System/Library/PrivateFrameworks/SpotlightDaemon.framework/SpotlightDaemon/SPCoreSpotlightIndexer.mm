@interface SPCoreSpotlightIndexer
+ (BOOL)writeDiagnostic:(id)diagnostic bundleID:(id)d identifier:(id)identifier logQuery:(BOOL)query;
+ (SPCoreSpotlightIndexer)sharedInstance;
+ (id)_filterReindexAllExtensions:(id)extensions;
+ (id)_mergedTokenRewrites:(id)rewrites;
+ (id)allProtectionClasses;
+ (id)fileProviderProtectionClasses;
+ (unint64_t)freeIndexDiskSpace;
+ (unint64_t)storageSizeForFolder:(id)folder;
+ (unint64_t)totalIndexDiskSpace;
+ (void)deactivate;
+ (void)deviceStateWillChange:(BOOL)change;
+ (void)initialize;
+ (void)preheat;
+ (void)setIndexerDelegate:(id)delegate;
+ (void)setMemoryPressureStatus:(unint64_t)status;
+ (void)shutdown;
- (BOOL)checkMailMigrationToClassCComplete;
- (BOOL)isForegroundFileProviderBundleID:(id)d;
- (BOOL)touchfileExistsForMigrationStep:(id)step;
- (BOOL)writeData:(id)data toFile:(id)file;
- (CSFileProviderDomainMonitor)fileProviderMonitor;
- (CSIndexExtensionDelegate)extensionDelegate;
- (NSDictionary)fileProviderAppToExtensionBundleMap;
- (NSDictionary)fileProviderExtensionToAppBundleMap;
- (NSURL)personaListURL;
- (SPCoreSpotlightIndexer)init;
- (SPCoreSpotlightIndexerDelegate)indexerDelegate;
- (id)_startQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)_taskForQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)concreteIndexerForProtectionClass:(id)class andBundleID:(id)d;
- (id)contactsIndexer;
- (id)dateRewritesFromContext:(id)context;
- (id)defaultIndexer;
- (id)dumpIndexAges;
- (id)dumpIndexAgesAtPath:(id)path;
- (id)dumpIndexAnalytics;
- (id)dumpIndexAnalyticsAtPath:(id)path;
- (id)fileProviderDomainFilterQueries;
- (id)issueHeartbeat;
- (id)leakDebugDump:(id)dump;
- (id)mailClassCFileTransferCompleteTouchFile;
- (id)mailClassCIndexPath;
- (id)mailClassCMigrationCompleteTouchFile;
- (id)priorityIndexAvailableTouchFilePath;
- (id)priorityIndexPath;
- (id)priorityIndexer;
- (id)queryForWord:(id)word matchingAttributes:(id)attributes prefixMatch:(BOOL)match;
- (id)sendAnalytics:(id)analytics;
- (id)spotlightCacheFilePrefix;
- (id)startQuery:(id)query withContext:(id)context eventHandler:(id)handler handler:(id)a6;
- (id)startQuery:(id)query withContext:(id)context handler:(id)handler;
- (id)startQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)systemSettingsIndexer;
- (id)taskForQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)touchfilePathForMigrationStep:(id)step;
- (id)writeUISearchEnabled:(BOOL)enabled;
- (int)_changeFilesToClassC:(id)c;
- (int)_openIndex:(BOOL)index forInit:(BOOL)init readOnly:(BOOL)only;
- (int)cloneIndexFrom:(id)from to:(id)to;
- (int)openIndex:(BOOL)index forInit:(BOOL)init readOnly:(BOOL)only;
- (int)performMigrationStepWithTouchfileGuard:(id)guard step:(id)step;
- (unint64_t)purgeIndexForSize:(unint64_t)size;
- (unint64_t)purgeVectorIndex:(BOOL)index;
- (unint64_t)purgeableIndexSize:(id)size;
- (unint64_t)purgeableVectorIndexSize:(BOOL)size;
- (void)_closeIndexWithIndexers:(id)indexers;
- (void)_deleteNonMailBundlesFromClassAIndex:(id)index;
- (void)_enumerateIndexersWithProtectionClasses:(id)classes forQueryWithContext:(id)context forBundleIds:(id)ids inferSpecialIndexes:(BOOL)indexes block:(id)block;
- (void)_fetchAccumulatedStorageSizeForBundleId:(id)id completionHandler:(id)handler;
- (void)_finishFileTransferToClassCMailIndex;
- (void)_fixProtClassForClassCMailIndex;
- (void)_issueCacheCommand:(id)command xpc:(id)xpc searchContext:(id)context completionHandler:(id)handler;
- (void)_issueCommand:(id)command outFileDescriptor:(int)descriptor searchContext:(id)context completionHandler:(id)handler;
- (void)_issueDiagnose:(int)diagnose bundleID:(id)d logQuery:(BOOL)query completionHandler:(id)handler;
- (void)_mailClassCMarkFileTransferComplete;
- (void)_mailClassCMarkMigrationComplete;
- (void)_mailClassCResetIndexAndComplete;
- (void)_migrateIndexExtensionsWithEnumerator:(id)enumerator forced:(BOOL)forced migratedBundleIds:(id)ids completionHandler:(id)handler;
- (void)_moveClassAIndexToClassCMailIndex;
- (void)_registerForPrefsChanges;
- (void)_reindexAllIdentifiersWithExtension:(id)extension completionBlock:(id)block;
- (void)_reindexAllItemsForBundleIDs:(id)ds reason:(id)reason completionHandler:(id)handler;
- (void)_reindexAllItemsOnPrefsChanges;
- (void)_reindexAllItemsWithExtensionsAndCompletionBlock:(id)block;
- (void)_reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:(id)block;
- (void)_upgradeToPriorityIndex;
- (void)addCompletedBundleIDs:(id)ds forIndexerTask:(id)task;
- (void)addInteraction:(id)interaction bundleID:(id)d protectionClass:(id)class;
- (void)asyncOpenIndex:(BOOL)index forInit:(BOOL)init readOnly:(BOOL)only;
- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state protectionClass:(id)class forBundleID:(id)d forUTIType:(id)type options:(int64_t)options;
- (void)checkIfExtensionsNeedToBeLoaded;
- (void)cleanupStringsWithProtectionClasses:(id)classes completionHandler:(id)handler;
- (void)clientDidCheckin:(id)checkin protectionClass:(id)class service:(id)service completionHandler:(id)handler;
- (void)closeIndex;
- (void)commitUpdates;
- (void)commitUpdatesWithCompletionHandler:(id)handler;
- (void)coolDown;
- (void)dealloc;
- (void)deleteActionsBeforeTime:(double)time completionHandler:(id)handler;
- (void)deleteActionsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)deleteAllInteractionsWithBundleID:(id)d completionHandler:(id)handler;
- (void)deleteAllSearchableItemsWithBundleID:(id)d fromClient:(id)client protectionClass:(id)class shouldGC:(BOOL)c deleteAllReason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteAllUserActivities:(id)activities fromClient:(id)client completionHandler:(id)handler;
- (void)deleteSearchableItemsSinceDate:(id)date protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d fromClient:(id)client options:(int64_t)options completionHandler:(id)handler;
- (void)deleteSearchableItemsWithFileProviderDomains:(id)domains completionHandler:(id)handler;
- (void)deleteSearchableItemsWithPersonaIds:(id)ids completionHandler:(id)handler;
- (void)deleteTouchfileForMigrationStep:(id)step;
- (void)fetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos completionHandler:(id)self0;
- (void)fetchAttributesForProtectionClass:(id)class attributes:(id)attributes bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completion:(id)completion;
- (void)fetchBundleIdsForProtectionClass:(id)class completionHandler:(id)handler;
- (void)fetchCacheFileDescriptorsForProtectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos completionHandler:(id)handler;
- (void)fetchLastClientStateWithProtectionClass:(id)class forBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler;
- (void)fileProviderActiveProvidersChanged:(id)changed;
- (void)fileProviderInfoSetup;
- (void)finishIndexingWhileLocked:(id)locked protectionClass:(id)class completionHandler:(id)handler;
- (void)flush;
- (void)getDBLogsWithCompletionHandler:(id)handler;
- (void)handleAssetsCommand:(id)command;
- (void)handleRankingCommand:(id)command completion:(id)completion;
- (void)indexFromBundle:(id)bundle protectionClass:(id)class personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)self0 expectedClientState:(id)self1 clientStateName:(id)self2 deletes:(id)self3 canCreateNewIndex:(BOOL)self4 completionHandler:(id)self5;
- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state expectedClientState:(id)clientState clientStateName:(id)name protectionClass:(id)class forBundleID:(id)d options:(int64_t)self0 completionHandler:(id)self1;
- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)issueBundleFixup:(id)fixup completionHandler:(id)handler;
- (void)issueCleanup:(id)cleanup flags:(int)flags;
- (void)issueConsistencyCheck:(id)check;
- (void)issueDefrag:(id)defrag group:(id)group;
- (void)issueDumpForward:(unint64_t)forward completionHandler:(id)handler;
- (void)issueDumpReverse:(unint64_t)reverse completionHandler:(id)handler;
- (void)issueDuplicateOidCheck:(id)check;
- (void)issueDuplicateOidCheckWithGroup:(id)group protected:(BOOL)protected;
- (void)issueHeartbeat;
- (void)issueMessagesFixup:(id)fixup;
- (void)issuePathFixup:(id)fixup;
- (void)issueRepair:(id)repair;
- (void)issueResolveFPItem:(id)item completionHandler:(id)handler;
- (void)issueResolveFPItemForBundle:(id)bundle domain:(id)domain identifier:(id)identifier completionHandler:(id)handler;
- (void)issueResolveFPItemForURL:(id)l completionHandler:(id)handler;
- (void)issueSharedDocumentAttributeFixup;
- (void)issueSplit:(id)split;
- (void)locked;
- (void)lockedCx;
- (void)locking;
- (void)lockingCx;
- (void)markIndexPurgeable:(BOOL)purgeable;
- (void)mergeWithProtectionClasses:(id)classes power:(BOOL)power;
- (void)mergeWithProtectionClasses:(id)classes power:(BOOL)power inferSpecialIndexes:(BOOL)indexes completionHandler:(id)handler;
- (void)migrateForced:(BOOL)forced;
- (void)moveBackMailToClassA;
- (void)moveMailToClassC;
- (void)moveMailToClassCWithClone;
- (void)moveMailToClassCWithoutClone;
- (void)performIndexerTask:(id)task completionHandler:(id)handler;
- (void)performIndexerTask:(id)task withIndexExtensionsAndCompletionHandler:(id)handler;
- (void)personaListDidUpdate;
- (void)powerStateChanged;
- (void)preheat;
- (void)prepareIndexingWhileLocked:(id)locked protectionClass:(id)class holdAssertionFor:(double)for completionHandler:(id)handler;
- (void)processSearchString:(id)string intoTrimmedString:(id *)trimmedString andTokens:(id *)tokens;
- (void)queryPreheat:(id)preheat;
- (void)recycleAndPurgeIndex;
- (void)recycleIndex:(BOOL)index;
- (void)registerCacheDeleteCallbackForVolumePath:(id)path;
- (void)reindexAllItemsWithIndexers:(id)indexers reason:(id)reason completionHandler:(id)handler;
- (void)restoreIndexAndClearPurgeable;
- (void)resume;
- (void)revokeExpiredItems:(id)items activity:(id)activity protected:(BOOL)protected;
- (void)rewriteFirstPassQueryWithQueryString:(id)string context:(id)context trimmedSearchStringTokens:(id)tokens populateDateSynonyms:(BOOL)synonyms;
- (void)rewriteQueryWithQueryString:(id)string context:(id)context matchInfo:(id)info rewriteHandler:(id)handler;
- (void)setServiceName:(id)name;
- (void)setTouchfileExistsForMigrationStep:(id)step;
- (void)shrink:(unint64_t)shrink;
- (void)shutdown;
- (void)start;
- (void)startQueryTask:(id)task;
- (void)topKTerms:(id)terms completionHandler:(id)handler;
- (void)transferDeleteJournalsForProtectionClass:(id)class toDirectory:(int)directory completionHandler:(id)handler;
- (void)unlock;
- (void)upgradeCheck;
- (void)userPerformedAction:(id)action withItem:(id)item protectionClass:(id)class forBundleID:(id)d personaID:(id)iD;
- (void)validateIndexers:(id)indexers outFileDescriptor:(int)descriptor;
- (void)validateVectors:(id)vectors outFileDescriptor:(int)descriptor;
- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)wipeCoreSpotlightIndexForTrial;
- (void)writeFileProviderBundleMap:(id)map fileProviderBundleIDs:(id)ds;
@end

@implementation SPCoreSpotlightIndexer

+ (SPCoreSpotlightIndexer)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SPCoreSpotlightIndexer sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

- (void)fileProviderInfoSetup
{
  if ((sPrivate & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (fileProviderInfoSetup_onceToken != -1)
    {
      dispatch_once(&fileProviderInfoSetup_onceToken, block);
    }
  }
}

- (id)fileProviderDomainFilterQueries
{
  WeakRetained = objc_loadWeakRetained(&self->_fileProviderMonitor);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_fileProviderMonitor);
    removedDomainFilterQueries = [v4 removedDomainFilterQueries];
  }

  else
  {
    removedDomainFilterQueries = 0;
  }

  return removedDomainFilterQueries;
}

- (CSIndexExtensionDelegate)extensionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->extensionDelegate);

  return WeakRetained;
}

+ (id)allProtectionClasses
{
  if (allProtectionClasses_onceToken != -1)
  {
    +[SPCoreSpotlightIndexer allProtectionClasses];
  }

  v3 = allProtectionClasses_sProtectionClasses;

  return v3;
}

- (void)unlock
{
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "unlock from delegate", v8, 2u);
  }

  if ([sDelegate deviceFirstUnlockedInSB])
  {
    concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v5 = [concreteIndexers objectForKeyedSubscript:*MEMORY[0x277CCA190]];
    [v5 resumeIndex];

    v6 = [concreteIndexers objectForKeyedSubscript:*MEMORY[0x277CCA198]];
    [v6 resumeIndex];

    v7 = [concreteIndexers objectForKeyedSubscript:*MEMORY[0x277CCA1A8]];
    [v7 resumeIndex];
  }

  if (self->_updatePersonas)
  {
    [(SPCoreSpotlightIndexer *)self personaListDidUpdate];
  }
}

- (void)moveMailToClassC
{
  if ((sMailClassCMigrationComplete & 1) == 0 && (sPrivate & 1) == 0 && sUseMailIndex == 1)
  {
    [(SPCoreSpotlightIndexer *)self moveMailToClassCWithoutClone];
  }
}

+ (void)initialize
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    memset(v15, 0, sizeof(v15));
    v14 = uuidBytesToString;
    _dyld_images_for_addresses();
    memset(v13, 0, sizeof(v13));
    v2 = uuidBytesToString(v15, v13);
    v3 = logForCSLogCategoryDefault(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "initializing %s", &buf, 0xCu);
    }

    v4 = dispatch_queue_create("VFSEventQueue", 0);
    v5 = gVFSEventQueue;
    gVFSEventQueue = v4;

    v6 = dispatch_source_create(MEMORY[0x277D85D40], 0, 0x304uLL, gVFSEventQueue);
    v7 = gVFSEventSource;
    gVFSEventSource = v6;

    v8 = gVFSEventSource;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v17 = __initializeDiskSpaceNotificationListener_block_invoke;
    v18 = &unk_278934050;
    v19 = v6;
    v9 = v6;
    dispatch_source_set_event_handler(v8, &buf);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, handleLowDiskSpace, @"com.apple.Spotlight.lowdiskspace", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    dispatch_resume(gVFSEventSource);

    sIsInternalInstall = os_variant_has_internal_diagnostics();
    v11 = objc_opt_new();
    v12 = gDASManager;
    gDASManager = v11;
  }
}

+ (void)preheat
{
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
    v2 = vars8;
  }

  v3 = sIndexer;

  [v3 preheat];
}

+ (void)deviceStateWillChange:(BOOL)change
{
  changeCopy = change;
  v8 = *MEMORY[0x277D85DE8];
  v4 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "locked";
    if (changeCopy)
    {
      v5 = "unlocked";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### device state %s", &v6, 0xCu);
  }

  if (changeCopy)
  {
    SIResumeForUnlock();
  }
}

+ (void)setMemoryPressureStatus:(unint64_t)status
{
  Current = CFAbsoluteTimeGetCurrent();
  s_last_memory_pressure_status = status;
  v5 = isAppleInternalInstall();
  if (status == 32)
  {
    if (v5)
    {
      v6 = Current - *&setMemoryPressureStatus__lastABCReport;
      if (Current - *&setMemoryPressureStatus__lastABCReport > 10800.0)
      {
        setMemoryPressureStatus__lastABCReport = *&Current;
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        processName = [processInfo processName];
        v9 = processName;
        v10 = @"unknown";
        if (processName)
        {
          v10 = processName;
        }

        v11 = v10;

        v12 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        v13 = [v12 signatureWithDomain:@"SpotlightIndex" type:@"MemoryPressure" subType:@"ProcLimitCritical" detectedProcess:v11 triggerThresholdValues:0];

        [v12 snapshotWithSignature:v13 delay:0 events:0 payload:0 actions:&__block_literal_global_3902 reply:45.0];
      }
    }
  }

  _SISetMemoryPressureStatus();
  v14 = MEMORY[0x277CC3538];

  [v14 setMemoryPressureStatus:status];
}

+ (void)deactivate
{
  extensionDelegate = [sIndexer extensionDelegate];

  if (extensionDelegate)
  {
    mEMORY[0x277CC3538] = [MEMORY[0x277CC3538] sharedManager];
    [mEMORY[0x277CC3538] loadExtensions];
  }
}

+ (void)shutdown
{
  v2 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Shutting down", v4, 2u);
  }

  sShuttingDown = 1;
  [sIndexer shutdown];
  v3 = sIndexer;
  sIndexer = 0;
}

void __46__SPCoreSpotlightIndexer_allProtectionClasses__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB18];
  v1 = *MEMORY[0x277CCA1A8];
  v7[0] = *MEMORY[0x277CCA1A0];
  v7[1] = v1;
  v2 = *MEMORY[0x277CCA190];
  v7[2] = *MEMORY[0x277CCA198];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v0 arrayWithArray:v3];

  if ((sPrivate & 1) == 0 && _os_feature_enabled_impl())
  {
    [v4 addObject:@"Priority"];
  }

  if (_useMobileMailIndex_onceToken != -1)
  {
    __46__SPCoreSpotlightIndexer_allProtectionClasses__block_invoke_cold_1();
  }

  if (_useMobileMailIndex__useMobileMailIndexVar == 1)
  {
    [v4 addObject:@"MobileMailIndex"];
  }

  v5 = [v4 copy];
  v6 = allProtectionClasses_sProtectionClasses;
  allProtectionClasses_sProtectionClasses = v5;
}

+ (void)setIndexerDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy && sIndexer)
  {
    +[SPCoreSpotlightIndexer setIndexerDelegate:];
  }

  v4 = sDelegate;
  sDelegate = delegateCopy;
  v7 = delegateCopy;

  sPrivate = [v7 privateIndex];
  indexQueue = [v7 indexQueue];
  v6 = sIndexQueue;
  sIndexQueue = indexQueue;
}

- (unint64_t)purgeableVectorIndexSize:(BOOL)size
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke;
  block[3] = &unk_2789361D8;
  block[4] = self;
  block[5] = &v8;
  sizeCopy = size;
  dispatch_sync(indexQueue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke_2;
  v3[3] = &unk_2789361B0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _enumerateIndexersWithProtectionClasses:0 block:v3];
}

uint64_t __51__SPCoreSpotlightIndexer_purgeableVectorIndexSize___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 index];
  result = SIVectorIndexStorageSize();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)purgeVectorIndex:(BOOL)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke;
  block[3] = &unk_2789361D8;
  indexCopy = index;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(indexQueue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke_2;
  v3[3] = &unk_2789361B0;
  v4 = *(a1 + 48);
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _enumerateIndexersWithProtectionClasses:0 block:v3];
}

void __43__SPCoreSpotlightIndexer_purgeVectorIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 index];
  v4 = SIPurgeVectorIndex();
  if (v4)
  {
    v5 = v4;
    v6 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 dataclass];
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "CacheDelete: purged %lu bytes for %@", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) += v5;
  }
}

+ (unint64_t)storageSizeForFolder:(id)folder
{
  v43[4] = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  v4 = *MEMORY[0x277CBE868];
  v5 = *MEMORY[0x277CBE8A8];
  v43[0] = *MEMORY[0x277CBE868];
  v43[1] = v5;
  v31 = v5;
  v29 = *MEMORY[0x277CBE7D0];
  v30 = *MEMORY[0x277CBE908];
  v43[2] = *MEMORY[0x277CBE7D0];
  v43[3] = v30;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v27 = v6;
  v28 = folderCopy;
  v8 = [defaultManager enumeratorAtURL:folderCopy includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_2104];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v39;
    v13 = v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v37 = 0;
        v16 = [v15 getResourceValue:&v37 forKey:v4 error:0];
        v17 = v37;
        v18 = v17;
        if (v16 && [v17 BOOLValue])
        {
          v11 += [self storageSizeForFolder:v15];
        }

        else
        {
          v36 = 0;
          v19 = [v15 getResourceValue:&v36 forKey:v13 error:0];
          v20 = v36;
          v21 = v20;
          if (v19 && [v20 BOOLValue])
          {
            v35 = 0;
            v22 = [v15 getResourceValue:&v35 forKey:v30 error:0];
            v23 = v35;
            v24 = v23;
            if (!v22 || !v23)
            {
              v34 = 0;
              [v15 getResourceValue:&v34 forKey:v29 error:0];
              v25 = v34;

              v24 = v25;
            }

            v11 += [v24 unsignedLongLongValue];

            v13 = v31;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)purgeableIndexSize:(id)size
{
  v33 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v25;
    *&v4 = 138412546;
    v20 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
        v11 = [concreteIndexers objectForKeyedSubscript:v9];

        v12 = MEMORY[0x277CBEBC0];
        _indexPath = [v11 _indexPath];
        v14 = [v12 fileURLWithPath:_indexPath];
        v15 = [SPCoreSpotlightIndexer storageSizeForFolder:v14];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
        [sizeCopy setValue:v16 forKey:v9];

        v18 = logForCSLogCategoryIndex(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = v20;
          v29 = v9;
          v30 = 2048;
          v31 = v15;
          _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_INFO, "CacheDelete: indexer: %@ size: %zu.", buf, 0x16u);
        }

        v6 += v15;
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)purgeIndexForSize:(unint64_t)size
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = [(SPCoreSpotlightIndexer *)self purgeableVectorIndexSize:1];
  selfCopy = self;
  v6 = [(SPCoreSpotlightIndexer *)self purgeableVectorIndexSize:0];
  if (v6 >= size)
  {
    v41 = v6;
    v42 = logForCSLogCategoryIndex(v6);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = "purgeable";
      if (v5 < size)
      {
        v43 = "all";
      }

      *v65 = 136315394;
      *&v65[4] = v43;
      *&v65[12] = 2048;
      *&v65[14] = v41;
      _os_log_impl(&dword_231A35000, v42, OS_LOG_TYPE_DEFAULT, "CacheDelete: purge %s vectors size: %zu.", v65, 0x16u);
    }

    return [(SPCoreSpotlightIndexer *)selfCopy purgeVectorIndex:v5 < size];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(SPCoreSpotlightIndexer *)self purgeableIndexSize:dictionary];
    *v65 = 0;
    *&v65[8] = v65;
    *&v65[16] = 0x2020000000;
    v66 = 0;
    if (v8 > size && v5 != 0)
    {
      v10 = logForCSLogCategoryIndex(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v60 = v5;
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "CacheDelete: purge purgeable vectors size: %zu.", buf, 0xCu);
      }

      v11 = [(SPCoreSpotlightIndexer *)selfCopy purgeVectorIndex:0];
      v12 = *(*&v65[8] + 24) + v11;
      *(*&v65[8] + 24) = v12;
      size -= v12;
    }

    [dictionary removeAllObjects];
    v13 = [(SPCoreSpotlightIndexer *)selfCopy purgeableIndexSize:dictionary];
    v14 = v13 - size;
    if (v13 > size)
    {
      v15 = [dictionary objectForKeyedSubscript:@"Priority"];
      unsignedLongLongValue = [v15 unsignedLongLongValue];

      if (unsignedLongLongValue - 1 < v14)
      {
        [dictionary removeObjectForKey:@"Priority"];
        v14 -= unsignedLongLongValue;
      }

      v17 = *MEMORY[0x277CCA1A0];
      v18 = [dictionary objectForKeyedSubscript:*MEMORY[0x277CCA1A0]];
      unsignedLongLongValue2 = [v18 unsignedLongLongValue];

      if (unsignedLongLongValue2 - 1 < v14)
      {
        [dictionary removeObjectForKey:v17];
        v14 -= unsignedLongLongValue2;
      }

      if (v14)
      {
        [dictionary keysSortedByValueUsingComparator:&__block_literal_global_2108];
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v20 = v56 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v21)
        {
          v22 = *v56;
LABEL_17:
          v23 = 0;
          while (1)
          {
            if (*v56 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v55 + 1) + 8 * v23);
            v25 = [dictionary objectForKeyedSubscript:v24];
            unsignedLongLongValue3 = [v25 unsignedLongLongValue];

            if (unsignedLongLongValue3 - 1 < v14)
            {
              [dictionary removeObjectForKey:v24];
              v14 -= unsignedLongLongValue3;
              if (!v14)
              {
                break;
              }
            }

            if (v21 == ++v23)
            {
              v21 = [v20 countByEnumeratingWithState:&v55 objects:v64 count:16];
              if (v21)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }
      }
    }

    v27 = dispatch_group_create();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v28 = dictionary;
    v29 = [v28 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v29)
    {
      v31 = *v52;
      *&v30 = 136315394;
      v45 = v30;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v51 + 1) + 8 * i);
          v34 = [v28 objectForKeyedSubscript:{v33, v45}];
          unsignedLongLongValue4 = [v34 unsignedLongLongValue];

          dispatch_group_enter(v27);
          v37 = logForCSLogCategoryIndex(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v33;
            uTF8String = [v33 UTF8String];
            *buf = v45;
            v60 = uTF8String;
            v61 = 2048;
            v62 = unsignedLongLongValue4;
            _os_log_impl(&dword_231A35000, v37, OS_LOG_TYPE_DEFAULT, "CacheDelete: purge indexer %s size: %zu.", buf, 0x16u);
          }

          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112;
          v47[3] = &unk_278936240;
          v47[4] = v33;
          v49 = v65;
          v50 = unsignedLongLongValue4;
          v48 = v27;
          [(SPCoreSpotlightIndexer *)selfCopy deleteAllSearchableItemsWithBundleID:&stru_2846BD100 fromClient:@"com.apple.CacheDelete" protectionClass:v33 shouldGC:1 deleteAllReason:0 completionHandler:v47];
        }

        v29 = [v28 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v29);
    }

    dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    v40 = *(*&v65[8] + 24);

    _Block_object_dispose(v65, 8);
  }

  return v40;
}

uint64_t __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedLongLongValue];
  v6 = [v4 unsignedLongLongValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += *(a1 + 56);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)registerCacheDeleteCallbackForVolumePath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    cacheDeleteId = [sDelegate cacheDeleteId];
    if (cacheDeleteId)
    {
      v6 = cacheDeleteId;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke;
      v20[3] = &unk_278936268;
      v7 = pathCopy;
      v21 = v7;
      selfCopy = self;
      v8 = MEMORY[0x2383760E0](v20);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke_2122;
      v17 = &unk_278936268;
      v9 = v7;
      v18 = v9;
      selfCopy2 = self;
      v10 = MEMORY[0x2383760E0](&v14);
      v11 = logForCSLogCategoryIndex(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "CacheDelete: register Callbacks for %@ on %@", buf, 0x16u);
      }

      if ([sDelegate managedIndex])
      {
        v12 = CacheDeleteRegisterInfoCallbacksForProcess();
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = CacheDeleteRegisterInfoCallbacks();
        if (!v12)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      v13 = logForCSLogCategoryDefault(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer registerCacheDeleteCallbackForVolumePath:];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

void *__67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = logForCSLogCategoryIndex(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "CacheDelete: asked for size on %@ for urgency: %d", &v13, 0x12u);
  }

  v7 = [*(a1 + 32) isEqualToString:v5];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v7 = [*(a1 + 40) purgeableIndexSize:0];
    goto LABEL_9;
  }

  if (a2 != 3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [*(a1 + 40) purgeableVectorIndexSize:1];
LABEL_9:
  v8 = v7;
LABEL_10:
  v9 = logForCSLogCategoryIndex(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v5;
    v15 = 1024;
    v16 = a2;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "CacheDelete: purgeable size on %@ for urgency: %d is %lu", &v13, 0x1Cu);
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:v5 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
  [v10 setObject:v11 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  return v10;
}

void *__67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke_2122(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v8 = logForCSLogCategoryIndex(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109634;
    *v16 = [v7 intValue];
    *&v16[4] = 2112;
    *&v16[6] = v6;
    *&v16[14] = 1024;
    *&v16[16] = a2;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "CacheDelete: will purge %d on %@ for urgency: %d", &v15, 0x18u);
  }

  v9 = [*(a1 + 32) isEqualToString:v6];
  if (!v9)
  {
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v9 = [*(a1 + 40) purgeIndexForSize:{objc_msgSend(v7, "unsignedLongLongValue")}];
    goto LABEL_9;
  }

  if (a2 != 3)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [*(a1 + 40) purgeVectorIndex:0];
LABEL_9:
  v10 = v9;
LABEL_10:
  v11 = logForCSLogCategoryIndex(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218498;
    *v16 = v10;
    *&v16[8] = 2112;
    *&v16[10] = v6;
    *&v16[18] = 1024;
    v17 = a2;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "CacheDelete: did purge %lu on %@ for urgency: %d", &v15, 0x1Cu);
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:v6 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
  [v12 setObject:v13 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  return v12;
}

void *__67__SPCoreSpotlightIndexer_registerCacheDeleteCallbackForVolumePath___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = [v6 intValue];
    v11 = 2112;
    v12 = v5;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "CacheDelete: asked to periodic clear %d on %@ for urgency: %d", v10, 0x18u);
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v5 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  [v8 setObject:&unk_2846C95A8 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  return v8;
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke()
{
  v92[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(SPCoreSpotlightIndexer);
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;

  objc_storeStrong(&sIndexer, v0);
  v2 = [sDelegate indexDirectory];
  v3 = [v2 fileSystemRepresentation];

  if (v3)
  {
    sIndexMountPath = strdup(v3);
  }

  v83 = 8;
  v84 = 0;
  if (sysctlbyname("kern.roots_installed", &v84, &v83, 0, 0))
  {
    v4 = __error();
    v5 = logForCSLogCategoryDefault(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_1();
    }
  }

  else
  {
    sRootsInstalled = v84 != 0;
  }

  v6 = _CFCopySystemVersionDictionary();
  if (!v6 || (v7 = v6, CFDictionaryGetValue(v6, @"ProductBuildVersion"), v8 = objc_claimAutoreleasedReturnValue(), CFRelease(v7), !v8))
  {
    v9 = logForCSLogCategoryDefault(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_2();
    }

    v8 = @"unknown";
  }

  v10 = indexHeartbeatPath();
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  v81 = v3;
  v80 = v12;
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"v2"];

      if (v15)
      {
        v16 = newHeartbeatDict();

        v14 = v16;
      }
    }
  }

  else
  {
    v14 = newHeartbeatDict();
  }

  v17 = [v14 objectForKeyedSubscript:@"heartbeat_age"];
  if (!v17 || (v18 = v17, [v14 objectForKeyedSubscript:@"heartbeat_age"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "longValue"), v19, v18, v20 < 0))
  {
    memset(&v90, 0, 144);
    v21 = stat([v10 cStringUsingEncoding:4], &v90);
    if (v21)
    {
      v22 = logForCSLogCategoryDefault(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_3();
      }

      v23 = MEMORY[0x277CCABB0];
      v24 = -1;
    }

    else
    {
      v23 = MEMORY[0x277CCABB0];
      v24 = *&v90.f_fstypename[8];
    }

    v25 = [v23 numberWithLong:v24];
    [v14 setObject:v25 forKeyedSubscript:@"heartbeat_age"];
  }

  v26 = [v14 objectForKeyedSubscript:@"parentDirectory_age"];
  if (!v26 || (v27 = v26, [v14 objectForKeyedSubscript:@"parentDirectory_age"], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "longValue"), v28, v27, v29 < 0))
  {
    memset(&v90, 0, 144);
    v30 = [sDelegate indexDirectory];
    v31 = stat([v30 cStringUsingEncoding:4], &v90);

    if (v31)
    {
      v33 = logForCSLogCategoryDefault(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_4();
      }

      v34 = [MEMORY[0x277CCABB0] numberWithLong:-1];
      v35 = @"parentDirectory_agw";
    }

    else
    {
      v34 = [MEMORY[0x277CCABB0] numberWithLong:*&v90.f_fstypename[8]];
      v35 = @"parentDirectory_age";
    }

    [v14 setObject:v34 forKeyedSubscript:v35];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [&unk_2846C96E0 allValues];
  v36 = [obj countByEnumeratingWithState:&v86 objects:&v90 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v87;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v87 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v86 + 1) + 8 * i);
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"age"];
        v42 = [v14 objectForKeyedSubscript:v41];

        if (!v42)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"age"];
          [v14 setObject:&unk_2846C96B0 forKeyedSubscript:v43];
        }

        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"wipes"];
        v45 = [v14 objectForKeyedSubscript:v44];

        if (!v45)
        {
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"wipes"];
          [v14 setObject:&unk_2846C9680 forKeyedSubscript:v46];
        }

        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"wipes_aggregate"];
        v48 = [v14 objectForKeyedSubscript:v47];

        if (!v48)
        {
          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"wipes_aggregate"];
          [v14 setObject:&unk_2846C9680 forKeyedSubscript:v49];
        }

        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"obj_count"];
        v51 = [v14 objectForKeyedSubscript:v50];

        if (!v51)
        {
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", v40, @"obj_count"];
          [v14 setObject:&unk_2846C96B0 forKeyedSubscript:v52];
        }
      }

      v37 = [obj countByEnumeratingWithState:&v86 objects:&v90 count:16];
    }

    while (v37);
  }

  v53 = [MEMORY[0x277CCABB0] numberWithBool:sRootsInstalled];
  [v14 setObject:v53 forKeyedSubscript:@"rootsinstalled"];

  v54 = [v14 objectForKeyedSubscript:@"spotlightversion"];

  if (v54)
  {
    v55 = [v14 objectForKeyedSubscript:@"spotlightversion"];
    v56 = [v55 isEqualToString:@"2400.14.100"];

    if ((v56 & 1) == 0)
    {
      v57 = [v14 objectForKeyedSubscript:@"spotlightversion"];
      [v14 setObject:v57 forKeyedSubscript:@"previousspotlightversion"];

      [v14 setObject:@"2400.14.100" forKeyedSubscript:@"spotlightversion"];
    }
  }

  else
  {
    [v14 setObject:@"2400.14.100" forKeyedSubscript:@"spotlightversion"];
    [v14 setObject:@"unknown" forKeyedSubscript:@"previousspotlightversion"];
  }

  v58 = [v14 objectForKeyedSubscript:@"previousspotlightversion"];

  if (!v58)
  {
    [v14 setObject:@"unknown" forKeyedSubscript:@"previousspotlightversion"];
  }

  v59 = [v14 objectForKeyedSubscript:@"build"];
  v60 = v59;
  v61 = @"unknown";
  if (v59)
  {
    v61 = v59;
  }

  v62 = v61;

  if (([(__CFString *)v8 isEqualToString:v62]& 1) == 0)
  {
    [v14 setObject:v62 forKeyedSubscript:@"previousbuild"];
  }

  v63 = [v14 objectForKeyedSubscript:@"previousbuild"];

  if (v63)
  {
    v64 = [(__CFString *)v8 substringToIndex:3];
    v65 = [v63 substringToIndex:3];
    if (!v65 || ([v64 isEqualToString:v65] & 1) == 0)
    {
      [v14 setObject:v63 forKeyedSubscript:@"buildbeforeupgrade"];
    }
  }

  v66 = [v14 objectForKeyedSubscript:@"buildbeforeupgrade"];

  if (!v66)
  {
    [v14 setObject:@"unknown" forKeyedSubscript:@"buildbeforeupgrade"];
  }

  [v14 setObject:v8 forKeyedSubscript:@"build"];
  v67 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v14 setObject:v67 forKeyedSubscript:@"vectorindexon"];

  v68 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v14 setObject:v68 forKeyedSubscript:@"textsemanticsearchon"];

  v69 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v14 setObject:v69 forKeyedSubscript:@"embeddingdonationon"];

  v70 = [MEMORY[0x277CCABB0] numberWithLong:MDBootTime()];
  [v14 setObject:v70 forKeyedSubscript:@"timesinceboot"];

  v71 = [MEMORY[0x277D657E8] lastLoadedBundleVersion];
  if (v71)
  {
    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v71];
    [v14 setObject:v72 forKeyedSubscript:@"otaversion"];
  }

  if ((v80 & 1) == 0)
  {
    v73 = [MEMORY[0x277CCAA00] defaultManager];
    v91 = *MEMORY[0x277CCA1B0];
    v92[0] = *MEMORY[0x277CCA1A0];
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
    [v73 createFileAtPath:v10 contents:0 attributes:v74];
  }

  v75 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v85 = 0;
  [v14 writeToURL:v75 error:&v85];
  v76 = v85;

  if (v76)
  {
    v78 = logForCSLogCategoryDefault(v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_5();
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  if (v81)
  {
    bzero(&v90, 0x878uLL);
    if (!statfs(v81, &v90))
    {
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:v90.f_mntonname];
      [sharedInstance_sSharedInstance registerCacheDeleteCallbackForVolumePath:v79];
    }
  }
}

+ (unint64_t)totalIndexDiskSpace
{
  if (totalIndexDiskSpace_onceToken != -1)
  {
    +[SPCoreSpotlightIndexer totalIndexDiskSpace];
  }

  return sTotalIndexDiskSpace;
}

int *__45__SPCoreSpotlightIndexer_totalIndexDiskSpace__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(&v10, 0x878uLL);
  v0 = [sDelegate indexDirectory];
  v1 = [v0 cStringUsingEncoding:4];

  LODWORD(v0) = statfs(v1, &v10);
  v2 = __error();
  v3 = *v2;
  if (v0)
  {
    v4 = logForCSLogCategoryIndex(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = v1;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "*warn* Failed to get total index disk space for %s. err=%d", &v6, 0x12u);
    }
  }

  else
  {
    sTotalIndexDiskSpace = v10.f_blocks * v10.f_bsize;
  }

  result = __error();
  *result = v3;
  return result;
}

+ (unint64_t)freeIndexDiskSpace
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(&v13, 0x878uLL);
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory cStringUsingEncoding:4];

  LODWORD(indexDirectory) = statfs(v3, &v13);
  v4 = __error();
  v5 = *v4;
  if (indexDirectory)
  {
    v6 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = v3;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "*warn* Failed to get free index disk space for %s. err=%d", &v9, 0x12u);
    }

    v7 = -1;
  }

  else
  {
    v7 = v13.f_bfree * v13.f_bsize;
  }

  *__error() = v5;
  return v7;
}

- (id)concreteIndexerForProtectionClass:(id)class andBundleID:(id)d
{
  classCopy = class;
  dCopy = d;
  v8 = *MEMORY[0x277CCA1B8];
  if ([(__CFString *)classCopy isEqualToString:*MEMORY[0x277CCA1B8]])
  {
    v9 = *MEMORY[0x277CCA1A0];

    classCopy = v9;
  }

  if (sUsePriorityIndex == 1 && [dCopy length] && ((-[__CFString isEqual:](classCopy, "isEqual:", *MEMORY[0x277CCA1A0]) & 1) != 0 || -[__CFString isEqual:](classCopy, "isEqual:", v8)) && objc_msgSend(sPriorityBundleIds, "containsObject:", dCopy))
  {

    classCopy = @"Priority";
  }

  if (sUseMailIndex == 1)
  {
    v10 = [dCopy isEqualToString:@"com.apple.mobilemail"];
    if (v10)
    {
      if (sMailClassCMigrationComplete)
      {
        if (([(__CFString *)classCopy isEqualToString:*MEMORY[0x277CCA1A0]]& 1) == 0)
        {
          v11 = [(__CFString *)classCopy isEqualToString:@"MobileMailIndex"];
          if (!v11)
          {
            v12 = logForCSLogCategoryDefault(v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:andBundleID:];
            }
          }
        }

        classCopy = @"MobileMailIndex";
      }

      else
      {
        v13 = logForCSLogCategoryDefault(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:andBundleID:];
        }

        classCopy = &stru_2846BD100;
      }
    }
  }

  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v15 = [concreteIndexers objectForKeyedSubscript:classCopy];

  return v15;
}

- (id)defaultIndexer
{
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [concreteIndexers objectForKey:*MEMORY[0x277CCA1A0]];

  return v3;
}

- (id)priorityIndexer
{
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v3 = [concreteIndexers objectForKey:@"Priority"];

  return v3;
}

- (id)priorityIndexPath
{
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory stringByAppendingPathComponent:@"Priority"];

  return v3;
}

- (id)priorityIndexAvailableTouchFilePath
{
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory stringByAppendingPathComponent:@"priorityIndexAvailable"];

  return v3;
}

- (id)mailClassCFileTransferCompleteTouchFile
{
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory stringByAppendingPathComponent:@"CrystalEMailFileTransferComplete.touch"];

  return v3;
}

- (id)mailClassCMigrationCompleteTouchFile
{
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory stringByAppendingPathComponent:@"CrystalEMailMigrationComplete.touch"];

  return v3;
}

- (id)mailClassCIndexPath
{
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory stringByAppendingPathComponent:@"MobileMailIndex"];

  return v3;
}

- (id)spotlightCacheFilePrefix
{
  indexDirectory = [sDelegate indexDirectory];
  v3 = [indexDirectory stringByAppendingPathComponent:@"spotlightcache"];

  return v3;
}

- (id)systemSettingsIndexer
{
  if (sPrivate)
  {
    v2 = 0;
  }

  else
  {
    v3 = sUsePriorityIndex;
    concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v5 = concreteIndexers;
    if (v3 == 1)
    {
      v6 = @"Priority";
    }

    else
    {
      v6 = *MEMORY[0x277CCA1A0];
    }

    v2 = [concreteIndexers objectForKeyedSubscript:v6];
  }

  return v2;
}

- (id)contactsIndexer
{
  if (sPrivate)
  {
    v2 = 0;
  }

  else
  {
    v3 = sUsePriorityIndex;
    concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v5 = concreteIndexers;
    if (v3 == 1)
    {
      v6 = @"Priority";
    }

    else
    {
      v6 = *MEMORY[0x277CCA1A0];
    }

    v2 = [concreteIndexers objectForKeyedSubscript:v6];
  }

  return v2;
}

- (SPCoreSpotlightIndexer)init
{
  v136 = *MEMORY[0x277D85DE8];
  v132.receiver = self;
  v132.super_class = SPCoreSpotlightIndexer;
  v2 = [(SPCoreSpotlightIndexer *)&v132 init];
  if (v2)
  {
    if (!sDelegate)
    {
      [SPCoreSpotlightIndexer init];
    }

    v85 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v3 = dispatch_queue_create("com.apple.searchd.appScoping", v85);
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    if (init_onceToken != -1)
    {
      [SPCoreSpotlightIndexer init];
    }

    indexQueue = [sDelegate indexQueue];
    v6 = *(v2 + 29);
    *(v2 + 29) = indexQueue;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.searchd.personaobserver", v8);
    v10 = *(v2 + 28);
    *(v2 + 28) = v9;

    firstUnlockQueue = [sDelegate firstUnlockQueue];
    v12 = *(v2 + 30);
    *(v2 + 30) = firstUnlockQueue;

    if ([sDelegate indexingEnabled])
    {
      v13 = objc_alloc(MEMORY[0x277CBEB58]);
      v14 = MEMORY[0x277CBEA60];
      personaListURL = [v2 personaListURL];
      v16 = [v14 arrayWithContentsOfURL:personaListURL];
      v17 = [v13 initWithArray:v16];
      v18 = *(v2 + 26);
      *(v2 + 26) = v17;

      if ((sPrivate & 1) == 0)
      {
        mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2174;
        v130[3] = &unk_2789348E8;
        v131 = v2;
        [mEMORY[0x277D77BF8] registerPersonaListUpdateObserver:v131 withMachService:@"com.apple.searchd.personaobserver" completionHandler:v130];
      }

      v20 = objc_opt_new();
      [v2 setInteractionHandler:v20];

      v21 = [SPQueryResultsQueue sharedInstanceDispatchQueue:*(v2 + 29)];
      v22 = [SPQueryResultsQueue sharedInstanceMaintenanceDispatchQueue:*(v2 + 29)];
      objc_initWeak(&location, v2);
      if ((sPrivate & 1) == 0)
      {
        v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v24 = dispatch_queue_create("com.apple.spotlight.reindexAll", v23);
        v25 = *(v2 + 31);
        *(v2 + 31) = v24;

        v27 = logForCSLogCategoryIndex(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v135 = "com.apple.spotlight.reindexAll";
          _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_INFO, "Suspending %s queue", buf, 0xCu);
        }

        dispatch_suspend(*(v2 + 31));
        v28 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, *(v2 + 31));
        v29 = *(v2 + 18);
        *(v2 + 18) = v28;

        v30 = *(v2 + 18);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2178;
        handler[3] = &unk_2789340A0;
        objc_copyWeak(&v128, &location);
        dispatch_source_set_event_handler(v30, handler);
        dispatch_resume(*(v2 + 18));
        objc_destroyWeak(&v128);
      }

      allProtectionClasses = [objc_opt_class() allProtectionClasses];
      v88 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(allProtectionClasses, "count") + 1}];
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      obj = allProtectionClasses;
      v32 = [obj countByEnumeratingWithState:&v123 objects:v133 count:16];
      if (v32)
      {
        v33 = 0;
        v34 = *v124;
        do
        {
          v35 = 0;
          if (v33 <= 6)
          {
            v36 = 6;
          }

          else
          {
            v36 = v33;
          }

          v37 = (v36 - v33);
          v38 = v2 + 4 * v33 + 8;
          do
          {
            if (*v124 != v34)
            {
              objc_enumerationMutation(obj);
            }

            if (v37 == v35)
            {
              __assert_rtn("[SPCoreSpotlightIndexer init]", "SPCoreSpotlightIndexer.m", 15032, "cancelFlagOffset < MAX_INDEXERS");
            }

            v39 = *(*(&v123 + 1) + 8 * v35);
            v40 = [[SPConcreteCoreSpotlightIndexer alloc] initWithQueue:*(v2 + 29) protectionClass:v39 cancelPtr:v38];
            [(SPConcreteCoreSpotlightIndexer *)v40 setOwner:v2];
            [(SPConcreteCoreSpotlightIndexer *)v40 setFirstUnlockQueue:*(v2 + 30)];
            [v88 setObject:v40 forKey:v39];

            ++v35;
            v38 += 4;
            ++v33;
          }

          while (v32 != v35);
          v32 = [obj countByEnumeratingWithState:&v123 objects:v133 count:16];
        }

        while (v32);
      }

      v41 = [v2 setConcreteIndexers:v88];
      if ((sPrivate & 1) == 0)
      {
        v42 = objc_alloc_init(MEMORY[0x277CCABD8]);
        [v42 setMaxConcurrentOperationCount:1];
        [v42 setUnderlyingQueue:*(v2 + 29)];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v120[1] = MEMORY[0x277D85DD0];
        v120[2] = 3221225472;
        v120[3] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2183;
        v120[4] = &unk_278934B88;
        objc_copyWeak(&v122, &location);
        v121 = @"com.apple.searchd.indexExtensionMigration.start";
        v44 = [defaultCenter addObserverForName:? object:? queue:? usingBlock:?];
        v45 = *(v2 + 19);
        *(v2 + 19) = v44;

        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2187;
        v116[3] = &unk_2789362F0;
        objc_copyWeak(v120, &location);
        v117 = @"com.apple.searchd.indexExtensionMigration.finish";
        v46 = v2;
        v118 = v46;
        v119 = obj;
        v47 = [defaultCenter addObserverForName:@"com.apple.searchd.indexExtensionMigration.finish" object:0 queue:v42 usingBlock:v116];
        v48 = v46[20];
        v46[20] = v47;

        objc_destroyWeak(v120);
        objc_destroyWeak(&v122);
      }

      v49 = logForCSLogCategoryIndex(v41);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2196;
      v114[3] = &unk_278936318;
      objc_copyWeak(&v115, &location);
      v50 = *MEMORY[0x277D86238];
      xpc_activity_register("com.apple.searchd.expirations", *MEMORY[0x277D86238], v114);
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2198;
      v112[3] = &unk_278936318;
      objc_copyWeak(&v113, &location);
      xpc_activity_register("com.apple.searchd.expirations.AB", v50, v112);
      v52 = logForCSLogCategoryIndex(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
      v54 = *(v2 + 29);
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2214;
      v110[3] = &unk_278936340;
      objc_copyWeak(&v111, &location);
      [mEMORY[0x277CF0810] registerForTaskWithIdentifier:@"com.apple.searchd.duplicateOidCheck" usingQueue:v54 launchHandler:v110];

      v56 = logForCSLogCategoryIndex(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
      v58 = *(v2 + 29);
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2222;
      v108[3] = &unk_278936340;
      objc_copyWeak(&v109, &location);
      [mEMORY[0x277CF0810]2 registerForTaskWithIdentifier:@"com.apple.searchd.duplicateOidCheck.AB" usingQueue:v58 launchHandler:v108];

      v60 = logForCSLogCategoryIndex(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2228;
      v106[3] = &unk_278936318;
      objc_copyWeak(&v107, &location);
      xpc_activity_register("com.apple.searchd.defrag", v50, v106);
      v62 = logForCSLogCategoryIndex(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2231;
      v103[3] = &unk_278934898;
      objc_copyWeak(&v105, &location);
      v63 = v2;
      v104 = v63;
      xpc_activity_register("com.apple.searchd.loadtrial", v50, v103);
      v65 = logForCSLogCategoryIndex(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer init];
      }

      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2234;
      v101[3] = &unk_278936318;
      objc_copyWeak(&v102, &location);
      xpc_activity_register("com.apple.searchd.heartbeat", v50, v101);
      mEMORY[0x277CF0810]3 = [MEMORY[0x277CF0810] sharedScheduler];
      v67 = *(v2 + 29);
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2238;
      v99[3] = &unk_2789363B8;
      v68 = v63;
      v100 = v68;
      [mEMORY[0x277CF0810]3 registerForTaskWithIdentifier:@"com.apple.searchd.reportStorageUsage" usingQueue:v67 launchHandler:v99];

      mEMORY[0x277CF0810]4 = [MEMORY[0x277CF0810] sharedScheduler];
      v70 = *(v2 + 29);
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2246;
      v97[3] = &unk_2789363B8;
      v71 = v68;
      v98 = v71;
      [mEMORY[0x277CF0810]4 registerForTaskWithIdentifier:@"com.apple.searchd.reportAppUsage" usingQueue:v70 launchHandler:v97];

      _SISetVectorIndexDropCallback();
      if ((sPrivate & 1) == 0)
      {
        v72 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v71[31]);
        v73 = v71[23];
        v71[23] = v72;

        v74 = v71[23];
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2279;
        v95[3] = &unk_2789340A0;
        objc_copyWeak(&v96, &location);
        dispatch_source_set_event_handler(v74, v95);
        dispatch_resume(v71[23]);
        v75 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v71[31]);
        v76 = v71[24];
        v71[24] = v75;

        v77 = v71[24];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_4;
        v93[3] = &unk_2789340A0;
        objc_copyWeak(&v94, &location);
        dispatch_source_set_event_handler(v77, v93);
        dispatch_resume(v71[24]);
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_6;
        v91[3] = &unk_278936518;
        objc_copyWeak(&v92, &location);
        v78 = MEMORY[0x2383760E0](v91);
        v79 = +[SDEventMonitor sharedInstance];
        [v79 registerHandler:v78 forEventName:@"com.apple.corespotlight.developer.ReindexAllItems"];

        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_7;
        v89[3] = &unk_278936518;
        objc_copyWeak(&v90, &location);
        v80 = MEMORY[0x2383760E0](v89);
        v81 = +[SDEventMonitor sharedInstance];
        [v81 registerHandler:v80 forEventName:@"com.apple.corespotlight.developer.ReindexAllItemsWithIdentifiers"];

        v83 = logForCSLogCategoryIndex(v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v135 = "com.apple.spotlight.reindexAll";
          _os_log_impl(&dword_231A35000, v83, OS_LOG_TYPE_INFO, "Resuming %s queue", buf, 0xCu);
        }

        dispatch_resume(v71[31]);
        objc_destroyWeak(&v90);

        objc_destroyWeak(&v92);
        objc_destroyWeak(&v94);
        objc_destroyWeak(&v96);
      }

      objc_destroyWeak(&v102);
      objc_destroyWeak(&v105);
      objc_destroyWeak(&v107);
      objc_destroyWeak(&v109);
      objc_destroyWeak(&v111);
      objc_destroyWeak(&v113);
      objc_destroyWeak(&v115);

      objc_destroyWeak(&location);
    }
  }

  return v2;
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.spotlight.mds-import", v0);
  v2 = gImportQueue;
  gImportQueue = v1;

  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2846C9350];
  v4 = sPriorityBundleIds;
  sPriorityBundleIds = v3;

  if ((sPrivate & 1) == 0 && _os_feature_enabled_impl())
  {
    sUsePriorityIndex = 1;
  }

  if (_useMobileMailIndex_onceToken != -1)
  {
    __30__SPCoreSpotlightIndexer_init__block_invoke_cold_1();
  }

  if (_useMobileMailIndex__useMobileMailIndexVar == 1)
  {
    sUseMailIndex = 1;
    v5 = @"MobileMailIndex";
  }

  else
  {
    v5 = *MEMORY[0x277CCA190];
  }

  v6 = sMailProtectionClass;
  sMailProtectionClass = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.spotlight.thermals", v7);
  v9 = gThermalsQueue;
  gThermalsQueue = v8;

  dispatch_sync(gThermalsQueue, &__block_literal_global_2162);

  return MEMORY[0x2821873E8](&__block_literal_global_2168);
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2()
{
  v7 = *MEMORY[0x277D85DE8];
  out_token = 0;
  notify_register_dispatch(*MEMORY[0x277D85E48], &out_token, gThermalsQueue, &__block_literal_global_2164);
  v0 = OSThermalNotificationCurrentLevel();
  v1 = v0;
  v2 = logForCSLogCategoryIndex(v0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v1;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Thermal state initialized: %d", buf, 8u);
  }

  return SISetThermalStateBad();
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = OSThermalNotificationCurrentLevel();
  v2 = v1;
  v3 = logForCSLogCategoryIndex(v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Thermal state change: %d", v5, 8u);
  }

  return SISetThermalStateBad();
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2165(uint64_t a1, int a2)
{
  v3 = [sDelegate deviceUnlocked];
  deviceUnlocked = v3;
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    wait_for_apfs_kb_state(sIndexMountPath, 1);
    v3 = deviceUnlocked;
  }

  return v3 ^ 1u;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[28];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175;
  v7[3] = &unk_2789342C0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = logForCSLogCategoryDefault(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175_cold_1();
    }
  }

  else
  {
    v2 = *(a1 + 40);

    [v2 personaListDidUpdate];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reindexAllItemsOnPrefsChanges];
    WeakRetained = v2;
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2183(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138413058;
      v7 = v5;
      v8 = 2048;
      v9 = [v3 dataMigrationStage];
      v10 = 1024;
      v11 = [sDelegate deviceFirstUnlockedInMKB];
      v12 = 1024;
      v13 = [sDelegate deviceFirstUnlockedInSB];
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Received %@ notification, dataMigrationStage:%lu, (%d:%d)", &v6, 0x22u);
    }

    [v3 setDataMigrationStage:{objc_msgSend(v3, "dataMigrationStage") + 1}];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2187(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"bundleIDs"];

    v8 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138413314;
      v11 = v9;
      v12 = 2048;
      v13 = [WeakRetained dataMigrationStage];
      v14 = 2112;
      v15 = v6;
      v16 = 1024;
      v17 = [sDelegate deviceFirstUnlockedInMKB];
      v18 = 1024;
      v19 = [sDelegate deviceFirstUnlockedInSB];
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Received %@ notification, dataMigrationStage:%lu, dataMigrationBundleIDs:%@ (%d:%d)", &v10, 0x2Cu);
    }

    [WeakRetained setDataMigrationStage:{objc_msgSend(WeakRetained, "dataMigrationStage") + 1}];
    [WeakRetained setDataMigrationBundleIDs:v6];
    [*(a1 + 40) mergeWithProtectionClasses:*(a1 + 48) power:1 completionHandler:&__block_literal_global_2193];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2191(uint64_t a1)
{
  v1 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "Finished post-migration merge", v2, 2u);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2196(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      xpc_activity_set_state(v3, 4);
      v6 = [sDelegate deviceFirstUnlockedInMKB];
      if (v6)
      {
        v7 = logForCSLogCategoryIndex(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v16 = "com.apple.searchd.expirations";
          _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
        }

        v8 = dispatch_group_create();
        [WeakRetained revokeExpiredItems:v8 activity:v3 protected:0];
        v9 = sIndexQueue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2197;
        v13[3] = &unk_278934050;
        v14 = v3;
        v10 = _setup_block(v13, 0, 15149);
        dispatch_group_notify(v8, v9, v10);

        goto LABEL_10;
      }

      v11 = v3;
      v12 = 3;
    }

    else
    {
      v11 = v3;
      v12 = 5;
    }

    xpc_activity_set_state(v11, v12);
LABEL_10:
  }

  objc_autoreleasePoolPop(v4);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2197(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  v3 = *(a1 + 32);
  if (should_defer)
  {
    v4 = xpc_activity_set_state(v3, 3);
    v5 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.searchd.expirations";
      v6 = "Marked XPC activity:%s as deferred";
LABEL_6:
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else
  {
    v7 = xpc_activity_set_state(v3, 5);
    v5 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.searchd.expirations";
      v6 = "Marked XPC activity:%s as done";
      goto LABEL_6;
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2198(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = logForCSLogCategoryIndex(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "com.apple.searchd.expirations.AB";
        _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      cf = 0;
      v21[0] = @"MKBAssertionKey";
      v21[1] = @"MKBAssertionTimeout";
      v22[0] = @"Other";
      v22[1] = &unk_2846C9668;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v8 = MKBDeviceLockAssertion();
      v9 = logForCSLogCategoryIndex(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = cf;
        _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "Took lock assertion for expirations %@, err: %@", buf, 0x16u);
      }

      if (v8)
      {
        v10 = dispatch_group_create();
        [v6 revokeExpiredItems:v10 activity:v3 protected:1];
        v11 = sIndexQueue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2210;
        v13[3] = &unk_2789342C0;
        v14 = v3;
        v15 = v8;
        v12 = _setup_block(v13, 0, 15183);
        dispatch_group_notify(v10, v11, v12);
      }

      else
      {
        xpc_activity_set_state(v3, 3);
      }
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2210(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  v3 = *(a1 + 32);
  if (should_defer)
  {
    v4 = xpc_activity_set_state(v3, 3);
    v5 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.searchd.expirations.AB";
      v6 = "Marked XPC activity:%s as deferred";
LABEL_6:
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else
  {
    v7 = xpc_activity_set_state(v3, 5);
    v5 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.searchd.expirations.AB";
      v6 = "Marked XPC activity:%s as done";
      goto LABEL_6;
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2214(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _SISetDuplicateOidsCheckSuspendState();
  v5 = logForCSLogCategoryIndex(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = @"com.apple.searchd.duplicateOidCheck";
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Performing BGST activity:%@", buf, 0xCu);
  }

  [v3 setExpirationHandler:&__block_literal_global_2217];
  if ([sDelegate deviceFirstUnlockedInMKB])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = dispatch_group_create();
    [WeakRetained issueDuplicateOidCheckWithGroup:v7 protected:0];
    v8 = sIndexQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2218;
    v10[3] = &unk_278934050;
    v11 = v3;
    v9 = _setup_block(v10, 0, 15212);
    dispatch_group_notify(v7, v8, v9);
  }

  else
  {
    [v3 setTaskCompleted];
    _SISetDuplicateOidsCheckSuspendState();
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2218(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTaskCompleted];
  v1 = _SISetDuplicateOidsCheckSuspendState();
  v2 = logForCSLogCategoryIndex(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.searchd.duplicateOidCheck";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Marked BGST activity:%@ as done", &v3, 0xCu);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2222(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  _SISetDuplicateOidsCheckSuspendState();
  v4 = logForCSLogCategoryIndex([v3 setExpirationHandler:&__block_literal_global_2225]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = @"com.apple.searchd.duplicateOidCheck.AB";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing BGST activity:%@", buf, 0xCu);
  }

  cf = 0;
  v22[0] = @"MKBAssertionKey";
  v22[1] = @"MKBAssertionTimeout";
  v23[0] = @"Other";
  v23[1] = &unk_2846C9668;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v5 = MKBDeviceLockAssertion();
  v6 = logForCSLogCategoryIndex(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = cf;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Took lock assertion for expirations %@, err: %@", buf, 0x16u);
  }

  if (!v5)
  {
    v11 = [v3 setTaskExpiredWithRetryAfter:0 error:300.0];
    if (v11)
    {
      v12 = logForCSLogCategoryIndex(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = @"com.apple.searchd.duplicateOidCheck.AB";
        v13 = "Marked BGST activity:%@ as defferred";
LABEL_12:
        _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else
    {
      v12 = logForCSLogCategoryIndex([v3 setTaskCompleted]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = @"com.apple.searchd.duplicateOidCheck.AB";
        v13 = "Marked BGST activity:%@ as done";
        goto LABEL_12;
      }
    }

    _SISetDuplicateOidsCheckSuspendState();
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = dispatch_group_create();
  [WeakRetained issueDuplicateOidCheckWithGroup:v8 protected:1];
  v9 = sIndexQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2226;
  v14[3] = &unk_2789342C0;
  v15 = v3;
  v16 = v5;
  v10 = _setup_block(v14, 0, 15237);
  dispatch_group_notify(v8, v9, v10);

LABEL_14:
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2226(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTaskCompleted];
  v1 = _SISetDuplicateOidsCheckSuspendState();
  v2 = logForCSLogCategoryIndex(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.searchd.duplicateOidCheck.AB";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Marked BGST activity:%@ as done", &v3, 0xCu);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2228(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3))
    {
      v5 = xpc_activity_set_state(v3, 3);
      v6 = v5;
      v7 = logForCSLogCategoryIndex(v5);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "com.apple.searchd.defrag";
          v18 = 2048;
          v19 = 2;
          _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
        }

LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2228_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = logForCSLogCategoryIndex(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "com.apple.searchd.defrag";
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v11 = dispatch_group_create();
      [v8 issueDefrag:0 group:v11];
      v12 = sIndexQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2229;
      v14[3] = &unk_278934050;
      v15 = v3;
      v13 = _setup_block(v14, 0, 15281);
      dispatch_group_notify(v11, v12, v13);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

    goto LABEL_14;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2229(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  v2 = logForCSLogCategoryIndex(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "com.apple.searchd.defrag";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v3, 0xCu);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2231(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3))
    {
      v5 = xpc_activity_set_state(v3, 3);
      v6 = v5;
      v7 = logForCSLogCategoryIndex(v5);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v18 = "com.apple.searchd.loadtrial";
          v19 = 2048;
          v20 = 2;
          _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
        }

LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2231_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = logForCSLogCategoryIndex(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "com.apple.searchd.loadtrial";
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v11 = dispatch_group_create();
      [v8 issueLoadTrial:v11];
      v12 = sIndexQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2232;
      v14[3] = &unk_2789342C0;
      v15 = v3;
      v16 = *(a1 + 32);
      v13 = _setup_block(v14, 0, 15320);
      dispatch_group_notify(v11, v12, v13);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

    goto LABEL_14;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);
}

void *__30__SPCoreSpotlightIndexer_init__block_invoke_2232(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = xpc_activity_set_state(*(a1 + 32), 5);
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "com.apple.searchd.loadtrial";
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v5, 0xCu);
  }

  result = [sDelegate privateIndex];
  if ((result & 1) == 0)
  {
    result = [sDelegate managedIndex];
    if ((result & 1) == 0)
    {
      return [*(a1 + 40) wipeCoreSpotlightIndexForTrial];
    }
  }

  return result;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2234(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_should_defer(v3))
    {
      v5 = xpc_activity_set_state(v3, 3);
      v6 = v5;
      v7 = logForCSLogCategoryIndex(v5);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315394;
          v15 = "com.apple.searchd.heartbeat";
          v16 = 2048;
          v17 = 2;
          _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Deferring XPC activity:%s, state:%ld", &v14, 0x16u);
        }

LABEL_16:

        goto LABEL_17;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2234_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = logForCSLogCategoryIndex(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "com.apple.searchd.heartbeat";
        _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Performing XPC activity:%s", &v14, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v11 = [v8 issueHeartbeat];
      v12 = xpc_activity_set_state(v3, 5);
      v13 = logForCSLogCategoryIndex(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "com.apple.searchd.heartbeat";
        _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Marked XPC activity:%s as done", &v14, 0xCu);
      }
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

    goto LABEL_16;
  }

LABEL_17:
  objc_autoreleasePoolPop(v4);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2238(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForCSLogCategoryIndex(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.searchd.reportStorageUsage";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing background task:%@", &buf, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2240;
  v23[3] = &unk_278934050;
  v7 = v6;
  v24 = v7;
  [v3 setExpirationHandler:v23];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v8 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2241;
  v18[3] = &unk_278936368;
  v9 = v7;
  v19 = v9;
  p_buf = &buf;
  v21 = v22;
  [v8 _enumerateIndexersWithBlock:v18];
  v10 = [sDelegate indexDirectory];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242;
  v13[3] = &unk_278936390;
  v11 = v9;
  v14 = v11;
  v16 = &buf;
  v17 = v22;
  v12 = v3;
  v15 = v12;
  [v11 collectAtPath:v10 completionBlock:v13];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v5);
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2240(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"com.apple.searchd.reportStorageUsage";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v4, 0xCu);
  }

  return [*(a1 + 32) setCanceled:1];
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2241(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) canceled] & 1) == 0 && objc_msgSend(v3, "index"))
  {
    [v3 index];
    _SIGetDocumentCount();
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) sendToCoreAnalyticsWithLiveDocCount:*(*(*(a1 + 48) + 8) + 24) deadDocCount:*(*(*(a1 + 56) + 8) + 24)];
    v3 = *(a1 + 40);

    [v3 setTaskCompleted];
  }

  else
  {
    v4 = *(a1 + 40);
    v9 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v9 error:300.0];
    v6 = v9;
    v7 = v6;
    if ((v5 & 1) == 0)
    {
      v8 = logForCSLogCategoryIndex(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242_cold_1();
      }

      [*(a1 + 40) setTaskCompleted];
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2246(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v3 = logForCSLogCategoryIndex(v27);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.searchd.reportAppUsage";
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "Performing background task:%@", &buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v59 = 0x2020000000;
  v60 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2247;
  v52[3] = &unk_2789363E0;
  v52[4] = &buf;
  [v27 setExpirationHandler:v52];
  v4 = [objc_opt_class() allProtectionClasses];
  if (isAppleInternalInstall())
  {
    v31 = objc_opt_new();
  }

  else
  {
    v31 = 0;
  }

  v5 = dispatch_group_create();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v6)
  {
    v29 = *MEMORY[0x277CC2500];
    v30 = *v49;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v48 + 1) + 8 * i);
        dispatch_group_enter(v5);
        v9 = objc_opt_new();
        [v9 setAttribute:1];
        v56 = v8;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        [v9 setProtectionClasses:v10];

        [v9 setClientBundleID:@"com.apple.search"];
        v55 = v29;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v9 setFetchAttributes:v11];

        v12 = objc_opt_new();
        v13 = *(a1 + 32);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2254;
        v44[3] = &unk_278936430;
        p_buf = &buf;
        v14 = v9;
        v45 = v14;
        v46 = v12;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256;
        v35[3] = &unk_2789364D0;
        v42 = &buf;
        v15 = v46;
        v36 = v15;
        v37 = v5;
        v38 = v8;
        v16 = v14;
        v39 = v16;
        v40 = *(a1 + 32);
        v43 = 0;
        v41 = v31;
        v17 = [v13 startQueryWithQueryString:@"*=*" queryContext:v16 eventHandler:0 resultsHandler:v44 completionHandler:v35];
        if (!v17)
        {
          v18 = logForCSLogCategoryIndex(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_1(v53, &v54, v18);
          }

          atomic_store(1u, (*(&buf + 1) + 24));
        }
      }

      v6 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v6);
  }

  v19 = *(*(a1 + 32) + 232);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2270;
  block[3] = &unk_278934050;
  v20 = v31;
  v34 = v20;
  dispatch_group_notify(v5, v19, block);
  v21 = atomic_load((*(&buf + 1) + 24));
  if (v21)
  {
    v32 = 0;
    v22 = [v27 setTaskExpiredWithRetryAfter:&v32 error:300.0];
    v23 = v32;
    v24 = v23;
    if ((v22 & 1) == 0)
    {
      v25 = logForCSLogCategoryIndex(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_2();
      }

      [v27 setTaskCompleted];
    }
  }

  else
  {
    [v27 setTaskCompleted];
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(context);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2247(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.searchd.reportAppUsage";
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Task %@ cancelled", &v3, 0xCu);
  }

  atomic_store(1u, (*(*(a1 + 32) + 8) + 24));
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2254(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if ((v5 & 1) == 0 && (a2 == 6 || !a2))
  {
    v8 = [*(a1 + 32) fetchAttributes];
    v9 = [v8 count];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2255;
    v12[3] = &unk_278936408;
    v11 = *(a1 + 40);
    v10 = v11;
    v13 = v11;
    [a5 enumerateQueryResults:v9 stringCache:0 usingBlock:v12];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2255(uint64_t a1, id *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if (v3)
  {
    *a3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = *a2;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(a1 + 32) addObject:{*(*(&v11 + 1) + 8 * v10++), v11}];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = v3;
  if (v3)
  {
    v4 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __30__SPCoreSpotlightIndexer_init__block_invoke_3_2256_cold_1();
    }

    atomic_store(1u, (*(*(a1 + 80) + 8) + 24));
  }

  else if ([*(a1 + 32) count])
  {
    v5 = dispatch_group_create();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 32);
    v6 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v6)
    {
      v20 = *MEMORY[0x277CC2500];
      v21 = *v35;
LABEL_8:
      v7 = 0;
      while (1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = atomic_load((*(*(a1 + 80) + 8) + 24));
        if (v9)
        {
          break;
        }

        dispatch_group_enter(v5);
        v10 = objc_opt_new();
        [v10 setCounting:1];
        v42 = *(a1 + 48);
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        [v10 setProtectionClasses:v11];

        [*(a1 + 56) setClientBundleID:@"com.apple.search"];
        v33[0] = 0;
        v33[1] = v33;
        v33[2] = 0x2020000000;
        v33[3] = 0;
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v20, v8];
        v13 = *(a1 + 64);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2257;
        v30[3] = &unk_278936458;
        v31 = *(a1 + 80);
        v32 = v33;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258;
        v24[3] = &unk_2789364A8;
        v27 = v31;
        v28 = v33;
        v14 = *(a1 + 48);
        v24[4] = v8;
        v24[5] = v14;
        v29 = *(a1 + 88);
        v25 = *(a1 + 72);
        v26 = v5;
        v15 = [v13 startQueryWithQueryString:v12 queryContext:v10 eventHandler:0 resultsHandler:v30 completionHandler:v24];
        if (!v15)
        {
          v16 = logForCSLogCategoryIndex(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v39 = @"com.apple.searchd.reportAppUsage";
            v40 = 2112;
            v41 = v8;
            _os_log_error_impl(&dword_231A35000, v16, OS_LOG_TYPE_ERROR, "Task %@ could not start counting query for bundle %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(v33, 8);
        if (v6 == ++v7)
        {
          v6 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v6)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v17 = *(*(a1 + 64) + 232);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_2269;
    block[3] = &unk_278934050;
    v23 = *(a1 + 40);
    dispatch_group_notify(v5, v17, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

uint64_t __30__SPCoreSpotlightIndexer_init__block_invoke_2257(uint64_t result, int a2, uint64_t a3)
{
  v3 = atomic_load((*(*(result + 32) + 8) + 24));
  if (a2 == 5 && (v3 & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) += a3;
  }

  return result;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = atomic_load((*(*(a1 + 64) + 8) + 24));
  if ((v5 & 1) == 0)
  {
    if (v3)
    {
      v6 = logForCSLogCategoryIndex(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258_cold_1();
      }
    }

    else
    {
      AnalyticsSendEventLazy();
      os_unfair_lock_lock((a1 + 80));
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
        v9 = v8;
        v10 = MEMORY[0x277CCABB0];
        if (v8)
        {
          v11 = *(*(*(a1 + 72) + 8) + 24) + [v8 unsignedIntValue];
        }

        else
        {
          v11 = *(*(*(a1 + 72) + 8) + 24);
        }

        v12 = [v10 numberWithUnsignedLong:v11];
        [*(a1 + 48) setObject:v12 forKeyedSubscript:*(a1 + 32)];
      }

      os_unfair_lock_unlock((a1 + 80));
      dispatch_group_leave(*(a1 + 56));
    }
  }
}

id __30__SPCoreSpotlightIndexer_init__block_invoke_2262(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 32);
  v6[0] = @"bundleID";
  v6[1] = @"itemCount";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(*(*(a1 + 48) + 8) + 24)];
  v7[1] = v2;
  v6[2] = @"protectionClass";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:protectionClassForAnalytics(*(a1 + 40))];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2270(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[SPHistoricalReportManager sharedInstance];
    [v2 saveReport:*(a1 + 32) withType:0 errorHandler:&__block_literal_global_2274];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2272(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = logForCSLogCategoryIndex(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __30__SPCoreSpotlightIndexer_init__block_invoke_2_2272_cold_1();
    }
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2275(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 >> 1;
  if (a2)
  {
    if (v4 == 1)
    {
      if (sUseMailIndex == 1)
      {
        v5 = +[SPCoreSpotlightIndexer sharedInstance];
        v6 = v5;
        v8 = @"MobileMailIndex";
        goto LABEL_18;
      }
    }

    else if (!v4)
    {
      v5 = +[SPCoreSpotlightIndexer sharedInstance];
      v6 = v5;
      v8 = @"Priority";
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (a2 >> 1 > 2)
  {
    if (v4 == 3)
    {
      v5 = +[SPCoreSpotlightIndexer sharedInstance];
      v6 = v5;
      v7 = MEMORY[0x277CCA1A0];
      goto LABEL_17;
    }

    if (v4 == 7)
    {
      v5 = +[SPCoreSpotlightIndexer sharedInstance];
      v6 = v5;
      v7 = MEMORY[0x277CCA1A8];
      goto LABEL_17;
    }

LABEL_14:
    v5 = +[SPCoreSpotlightIndexer sharedInstance];
    v6 = v5;
    v7 = MEMORY[0x277CCA1B8];
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    v5 = +[SPCoreSpotlightIndexer sharedInstance];
    v6 = v5;
    v7 = MEMORY[0x277CCA190];
    goto LABEL_17;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  v5 = +[SPCoreSpotlightIndexer sharedInstance];
  v6 = v5;
  v7 = MEMORY[0x277CCA198];
LABEL_17:
  v8 = *v7;
LABEL_18:
  v9 = [v5 concreteIndexerForProtectionClass:v8 andBundleID:0];

  memset(&v29, 0, sizeof(v29));
  v10 = [v9 _indexPath];
  v11 = stat([v10 UTF8String], &v29);

  v12 = __error();
  v13 = *v12;
  if (v11)
  {
    v14 = logForCSLogCategoryIndex(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPConcreteCoreSpotlightIndexer openIndex:shouldReindexAll:readOnly:forcePC:];
    }

    st_size = 0;
    tv_sec = 0;
  }

  else
  {
    tv_sec = v29.st_birthtimespec.tv_sec;
    st_size = v29.st_size;
  }

  *__error() = v13;
  v17 = [v9 vectorIndexDropsPath];
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v18 fileExistsAtPath:v17];

  if (v19)
  {
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    [v20 removeItemAtPath:v17 error:&v28];
    v21 = v28;

    if (v21)
    {
      v23 = logForCSLogCategoryIndex(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __30__SPCoreSpotlightIndexer_init__block_invoke_2275_cold_2();
      }
    }
  }

  LOBYTE(v26) = 1;
  v24 = [v9 indexLossAnalyticsDictWithPreviousIndexCreationDate:tv_sec size:st_size openingInReadOnly:0 fullyCreated:1 markedPurgeable:0 vectorIndexDrop:a3 forAnalytics:v26];
  v25 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
  if ([v25 BOOLForKey:@"disable_index_drop_reporting"])
  {
    [v9 writeIndexLossEventToFile:v24 vector:1];
  }

  else
  {
    v27 = v24;
    AnalyticsSendEventLazy();
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained reindexAllItemsSource];
    dispatch_suspend(v3);

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_3_2280;
    v4[3] = &unk_278934050;
    v5 = v2;
    [v5 _reindexAllItemsWithExtensionsAndCompletionBlock:v4];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2280(uint64_t a1)
{
  v1 = [*(a1 + 32) reindexAllItemsSource];
  dispatch_resume(v1);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained reindexAllItemsWithIdentifiersSource];
    dispatch_suspend(v3);

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__SPCoreSpotlightIndexer_init__block_invoke_5;
    v4[3] = &unk_278934050;
    v5 = v2;
    [v5 _reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:v4];
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) reindexAllItemsWithIdentifiersSource];
  dispatch_resume(v1);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a5 && WeakRetained)
  {
    v8 = WeakRetained;
    v7 = [WeakRetained reindexAllItemsSource];
    dispatch_source_merge_data(v7, 1uLL);

    WeakRetained = v8;
  }
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a5 && WeakRetained)
  {
    v8 = WeakRetained;
    v7 = [WeakRetained reindexAllItemsWithIdentifiersSource];
    dispatch_source_merge_data(v7, 1uLL);

    WeakRetained = v8;
  }
}

- (void)resume
{
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "resume from delegate", v4, 2u);
  }

  [(SPCoreSpotlightIndexer *)self _registerForPrefsChanges];
}

- (void)locking
{
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "locking from delegate enter", buf, 2u);
  }

  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v5 = SDTransactionCreate(&unk_2846C9368);
  v6 = dispatch_group_create();
  v7 = [concreteIndexers objectForKeyedSubscript:*MEMORY[0x277CCA190]];
  [v7 suspendIndexForDeviceLock:v6];

  v8 = [concreteIndexers objectForKeyedSubscript:*MEMORY[0x277CCA198]];
  [v8 suspendIndexForDeviceLock:v6];

  firstUnlockQueue = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SPCoreSpotlightIndexer_locking__block_invoke;
  block[3] = &unk_278934050;
  v12 = v5;
  v10 = v5;
  dispatch_group_notify(v6, firstUnlockQueue, block);
}

void __33__SPCoreSpotlightIndexer_locking__block_invoke(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = logForCSLogCategoryIndex(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locking from delegate exit", v3, 2u);
  }
}

- (void)locked
{
  v2 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locked from delegate", v3, 2u);
  }
}

- (void)lockingCx
{
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "locking Cx from delegate", buf, 2u);
  }

  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v5 = SDTransactionCreate(&unk_2846C9380);
  v6 = dispatch_group_create();
  v7 = [concreteIndexers objectForKeyedSubscript:*MEMORY[0x277CCA1A8]];
  [v7 suspendIndexForDeviceLock:v6];

  firstUnlockQueue = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SPCoreSpotlightIndexer_lockingCx__block_invoke;
  block[3] = &unk_278934050;
  v11 = v5;
  v9 = v5;
  dispatch_group_notify(v6, firstUnlockQueue, block);
}

- (void)lockedCx
{
  v2 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locked Cx from delegate", v3, 2u);
  }
}

- (void)setServiceName:(id)name
{
  v4 = [name copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  MEMORY[0x2821F96F8](v4, serviceName);
}

- (void)_upgradeToPriorityIndex
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__SPCoreSpotlightIndexer__upgradeToPriorityIndex__block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v4 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### _SITransferBundles complete res: %d", v5, 8u);
  }

  if (!a2)
  {
    [*(a1 + 32) setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
    [*(a1 + 40) setProperty:&unk_2846C9590 forKey:@"kSPPriorityIndexVersion" sync:0];
    sUpgradedForPriorityIndex = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)upgradeCheck
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SPCoreSpotlightIndexer_upgradeCheck__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  if (upgradeCheck_onceToken != -1)
  {
    dispatch_once(&upgradeCheck_onceToken, block);
  }
}

id *__38__SPCoreSpotlightIndexer_upgradeCheck__block_invoke(id *result)
{
  if (sUsePriorityIndex == 1)
  {
    return [result[4] _upgradeToPriorityIndex];
  }

  return result;
}

- (void)_mailClassCMarkFileTransferComplete
{
  v3 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### _mailClassCMarkFileTransferComplete: Creating touch file", buf, 2u);
  }

  mailClassCFileTransferCompleteTouchFile = [(SPCoreSpotlightIndexer *)self mailClassCFileTransferCompleteTouchFile];
  v5 = open([mailClassCFileTransferCompleteTouchFile fileSystemRepresentation], 512, 438);

  sMailClassCFileTransferComplete = 1;
  if (v5 != -1)
  {
    close(v5);
  }
}

- (void)_mailClassCMarkMigrationComplete
{
  v3 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### _mailClassCMarkMigrationComplete: Creating touch file", buf, 2u);
  }

  mailClassCMigrationCompleteTouchFile = [(SPCoreSpotlightIndexer *)self mailClassCMigrationCompleteTouchFile];
  v5 = open([mailClassCMigrationCompleteTouchFile fileSystemRepresentation], 512, 438);

  sMailClassCMigrationComplete = 1;
  if (v5 != -1)
  {
    close(v5);
  }
}

- (void)_mailClassCResetIndexAndComplete
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (int)_changeFilesToClassC:(id)c
{
  v20 = *MEMORY[0x277D85DE8];
  cCopy = c;
  v4 = open([cCopy fileSystemRepresentation], 0x8000);
  if ((v4 & 0x80000000) != 0)
  {
    v14 = logForCSLogCategoryDefault(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }

    goto LABEL_21;
  }

  v5 = v4;
  if (fcntl(v4, 63) != 3)
  {
    v6 = fcntl(v5, 64, 3);
    if (v6 == -1)
    {
      v16 = logForCSLogCategoryDefault(v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer _changeFilesToClassC:];
      }

      close(v5);
LABEL_21:
      v15 = -1;
      goto LABEL_22;
    }
  }

  close(v5);
  v7 = [cCopy stringByAppendingPathComponent:@"index.spotlightV2"];
  v8 = open([v7 fileSystemRepresentation], 0x8000);
  v9 = v8;
  v10 = logForCSLogCategoryDefault(v8);
  v11 = v10;
  if (v9 < 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "### _changeFilesToClassC: changing files in %@ protection class to class C", buf, 0xCu);
    }

    v12 = _SIChangeProtectionClassForFilesInDirectory();
    v13 = close(v9);
    if (!v12)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v11 = logForCSLogCategoryDefault(v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _changeFilesToClassC:];
    }
  }

  v15 = -1;
LABEL_17:

LABEL_22:
  return v15;
}

- (void)_fixProtClassForClassCMailIndex
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_finishFileTransferToClassCMailIndex
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA190];
  v4 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:*MEMORY[0x277CCA190] andBundleID:0];
  [v4 closeIndex];

  indexDirectory = [sDelegate indexDirectory];
  v6 = [indexDirectory stringByAppendingPathComponent:v3];

  mailClassCIndexPath = [(SPCoreSpotlightIndexer *)self mailClassCIndexPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v9 = [defaultManager moveItemAtPath:v6 toPath:mailClassCIndexPath error:&v15];
  v10 = v15;

  if (v9)
  {
    [(SPCoreSpotlightIndexer *)self _mailClassCMarkFileTransferComplete];
    deviceUnlocked = [sDelegate deviceUnlocked];
    if (deviceUnlocked)
    {
      [(SPCoreSpotlightIndexer *)self _fixProtClassForClassCMailIndex];
    }

    else
    {
      v14 = logForCSLogCategoryIndex(deviceUnlocked);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "### _finishFileTransferToClassCMailIndex: device is locked, trying protection class change on next unlock", buf, 2u);
      }

      sMailClassCTryProtectionClassChangeOnUnlock = 1;
    }
  }

  else
  {
    v13 = logForCSLogCategoryIndex(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = mailClassCIndexPath;
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_231A35000, v13, OS_LOG_TYPE_ERROR, "### _finishFileTransferToClassCMailIndex: Failed to move class A mail index path:%@ to class C path:%@, error:%@", buf, 0x20u);
    }

    [(SPCoreSpotlightIndexer *)self _mailClassCResetIndexAndComplete];
  }
}

- (void)_deleteNonMailBundlesFromClassAIndex:(id)index
{
  v26 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v5 = logForCSLogCategoryDefault(indexCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = indexCopy;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### _deleteNonMailBundlesFromClassAIndex: Bundles other than mail to be deleted: %@", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = indexCopy;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = *MEMORY[0x277CCA190];
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke;
        v17[3] = &unk_278935428;
        v17[4] = v12;
        v18 = v6;
        [(SPCoreSpotlightIndexer *)self deleteAllSearchableItemsWithBundleID:v12 protectionClass:v10 shouldGC:0 deleteAllReason:3 completionHandler:v17];

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v13 = sIndexQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_2316;
  v16[3] = &unk_278934050;
  v16[4] = self;
  v14 = _setup_block(v16, 0, 16019);
  dispatch_group_notify(v6, v13, v14);
}

void __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_2316(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "### _deleteNonMailBundlesFromClassAIndex: deletion complete", v4, 2u);
  }

  return [*(a1 + 32) _finishFileTransferToClassCMailIndex];
}

- (void)_moveClassAIndexToClassCMailIndex
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 == 6 || !a2)
  {
    v7 = [*(a1 + 32) fetchAttributes];
    v8 = [v7 count];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2;
    v9[3] = &unk_278934A00;
    v10 = *(a1 + 40);
    [a5 enumerateQueryResults:v8 stringCache:0 usingBlock:v9];
  }
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2(uint64_t a1, id *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *a2;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([v9 length])
          {
            [*(a1 + 32) addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_3_cold_1();
    }

    v6 = sIndexQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2320;
    v15[3] = &unk_278934050;
    v15[4] = *(a1 + 32);
    v7 = _setup_block(v15, 0, 16086);
    dispatch_async(v6, v7);
  }

  else
  {
    v8 = sIndexQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2_2321;
    v12[3] = &unk_2789342C0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v11 = _setup_block(v12, 0, 16098);
    dispatch_async(v8, v11);
  }
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_2_2321(uint64_t a1)
{
  if ([*(a1 + 32) count] && (v2 = objc_msgSend(sDelegate, "deviceUnlocked"), !v2))
  {
    v5 = logForCSLogCategoryIndex(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### _moveClassAIndexToClassCMailIndex: device is locked, trying delete bundles next unlock", v8, 2u);
    }

    v6 = [*(a1 + 32) copy];
    v7 = sMailClassCNonMailBundles;
    sMailClassCNonMailBundles = v6;
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v3 _deleteNonMailBundlesFromClassAIndex:v4];
  }
}

- (id)touchfilePathForMigrationStep:(id)step
{
  v3 = sDelegate;
  stepCopy = step;
  indexDirectory = [v3 indexDirectory];
  v6 = [indexDirectory stringByAppendingPathComponent:stepCopy];

  return v6;
}

- (BOOL)touchfileExistsForMigrationStep:(id)step
{
  v3 = [(SPCoreSpotlightIndexer *)self touchfilePathForMigrationStep:step];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  return v5;
}

- (void)setTouchfileExistsForMigrationStep:(id)step
{
  stepCopy = step;
  v5 = [(SPCoreSpotlightIndexer *)self touchfilePathForMigrationStep:stepCopy];
  v6 = open([v5 fileSystemRepresentation], 512, 438);
  if (v6 == -1)
  {
    v7 = logForCSLogCategoryDefault(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer setTouchfileExistsForMigrationStep:];
    }
  }

  else
  {
    close(v6);
  }
}

- (void)deleteTouchfileForMigrationStep:(id)step
{
  v4 = MEMORY[0x277CCAA00];
  stepCopy = step;
  defaultManager = [v4 defaultManager];
  v6 = [(SPCoreSpotlightIndexer *)self touchfilePathForMigrationStep:stepCopy];

  [defaultManager removeItemAtPath:v6 error:0];
}

- (int)cloneIndexFrom:(id)from to:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  indexDirectory = [sDelegate indexDirectory];
  v8 = [indexDirectory stringByAppendingPathComponent:fromCopy];
  v9 = [indexDirectory stringByAppendingPathComponent:toCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v11 = [defaultManager copyItemAtPath:v8 toPath:v9 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = logForCSLogCategoryIndex(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = fromCopy;
      v21 = 2112;
      v22 = toCopy;
      v23 = 2112;
      v24 = v13;
      _os_log_error_impl(&dword_231A35000, v15, OS_LOG_TYPE_ERROR, "Failed to clone index from:%@ to:%@ error:%@", buf, 0x20u);
    }

    v16 = 1;
  }

  return v16;
}

- (int)performMigrationStepWithTouchfileGuard:(id)guard step:(id)step
{
  v16 = *MEMORY[0x277D85DE8];
  guardCopy = guard;
  stepCopy = step;
  v8 = [(SPCoreSpotlightIndexer *)self touchfileExistsForMigrationStep:guardCopy];
  if (v8)
  {
    v9 = logForCSLogCategoryIndex(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = guardCopy;
      v10 = "*warn* Migration step %@ already completed";
LABEL_9:
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v11 = stepCopy[2](stepCopy);
  if (!v11)
  {
    v9 = logForCSLogCategoryIndex([(SPCoreSpotlightIndexer *)self setTouchfileExistsForMigrationStep:guardCopy]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = guardCopy;
      v10 = "Migration step succeeded: %@";
      goto LABEL_9;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = v11;
  v9 = logForCSLogCategoryIndex(v11);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SPCoreSpotlightIndexer performMigrationStepWithTouchfileGuard:step:];
  }

LABEL_11:

  return v12;
}

- (void)moveMailToClassCWithClone
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) mailClassCIndexPath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [*(a1 + 32) mailClassCIndexPath];
    v12 = 0;
    [v5 removeItemAtPath:v6 error:&v12];
    v7 = v12;

    if (v7)
    {
      v9 = logForCSLogCategoryDefault(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_cold_1();
      }
    }

    else
    {
      v9 = logForCSLogCategoryIndex(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "*warn* Deleted old mail index for mail migration", v11, 2u);
      }
    }
  }

  return [*(a1 + 32) cloneIndexFrom:*MEMORY[0x277CCA190] to:@"MobileMailIndex"];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2332(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2;
  v5[3] = &unk_278934528;
  v5[4] = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = v4;
  v6 = v4;
  [v1 deleteItemsForQuery:v2 bundleID:@"com.apple.mobilemail" fromClient:@"com.apple.searchd" completionHandler:v5];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2_cold_1();
    }
  }

  else
  {
    v8 = logForCSLogCategoryDefault(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Deleted %lu mail items for mail migration", &v9, 0xCu);
    }

    [*(a1 + 32) setTouchfileExistsForMigrationStep:@"CrystalEMailCleanClassAComplete.touch"];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 64) + 8) + 24);
  v3 = logForCSLogCategoryDefault(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_1();
    }

LABEL_9:

    dispatch_group_leave(*(a1 + 32));
    return;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = @"CrystalEMailCleanClassMailComplete.touch";
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Perfoming mail migration step %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) openIndex:0 shouldReindexAll:0 readOnly:0 forcePC:*MEMORY[0x277CCA190]];
  *(*(*(a1 + 64) + 8) + 24) = v5;
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v4 = logForCSLogCategoryIndex(v5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_2();
    }

    goto LABEL_9;
  }

  v6 = logForCSLogCategoryDefault(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Opened mail index for mail migration", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337;
  v10[3] = &unk_278934528;
  v9 = *(a1 + 56);
  v12 = *(a1 + 64);
  v10[4] = v9;
  v11 = *(a1 + 32);
  [v7 deleteItemsForQuery:v8 bundleID:0 fromClient:@"com.apple.searchd" completionHandler:v10];
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337_cold_1();
    }
  }

  else
  {
    v8 = logForCSLogCategoryDefault(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Deleted %lu class A items for mail migration", &v9, 0xCu);
    }

    [*(a1 + 32) setTouchfileExistsForMigrationStep:@"CrystalEMailCleanClassMailComplete.touch"];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2338(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  v3 = logForCSLogCategoryDefault(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2338_cold_1();
    }

    [*(a1 + 32) setOnDemandOpen:1];
    [*(a1 + 40) setOnDemandOpen:1];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = @"CrystalEMailMigrationComplete.touch";
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Performing mail migration step %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2339;
    v13 = &unk_2789365E0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = v6;
    v15 = v7;
    *(*(*(a1 + 56) + 8) + 24) = [v5 performMigrationStepWithTouchfileGuard:@"CrystalEMailMigrationComplete.touch" step:&v10];
    [*(a1 + 32) setOnDemandOpen:{1, v10, v11, v12, v13}];
    v8 = [*(a1 + 40) setOnDemandOpen:1];
    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      v9 = logForCSLogCategoryDefault(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "Mail migration completed successfully", buf, 2u);
      }

      sMailClassCMigrationComplete = 1;
    }
  }
}

uint64_t __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2339(uint64_t a1)
{
  [*(a1 + 32) closeIndex];
  v2 = [*(a1 + 40) mailClassCIndexPath];
  v7 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:&v7];

  if (v4 && v7 == 1)
  {
    v5 = [*(a1 + 40) _changeFilesToClassC:v2];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)moveMailToClassCWithoutClone
{
  v9 = *MEMORY[0x277D85DE8];
  if ((sMailClassCMigrationComplete & 1) == 0 && (sPrivate & 1) == 0 && sUseMailIndex == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SPCoreSpotlightIndexer_moveMailToClassCWithoutClone__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (moveMailToClassCWithoutClone_onceToken != -1)
    {
      dispatch_once(&moveMailToClassCWithoutClone_onceToken, block);
    }

    if ((sMailClassCFileTransferComplete & 1) == 0 && sMailClassCNonMailBundles)
    {
      v3 = logForCSLogCategoryDefault(self);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = sMailClassCNonMailBundles;
        _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### moveMailToClassC: deleting non-mail bundles: %@", buf, 0xCu);
      }

      [(SPCoreSpotlightIndexer *)self _deleteNonMailBundlesFromClassAIndex:sMailClassCNonMailBundles];
      v4 = sMailClassCNonMailBundles;
      sMailClassCNonMailBundles = 0;
    }

    if ((sMailClassCMigrationComplete & 1) == 0 && sMailClassCTryProtectionClassChangeOnUnlock == 1)
    {
      v5 = logForCSLogCategoryDefault(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### moveMailToClassC: changing protection class on unlock", buf, 2u);
      }

      [(SPCoreSpotlightIndexer *)self _fixProtClassForClassCMailIndex];
      sMailClassCTryProtectionClassChangeOnUnlock = 0;
    }
  }
}

id *__54__SPCoreSpotlightIndexer_moveMailToClassCWithoutClone__block_invoke(id *result)
{
  if ((sMailClassCFileTransferComplete & 1) == 0)
  {
    return [result[4] _moveClassAIndexToClassCMailIndex];
  }

  return result;
}

- (BOOL)checkMailMigrationToClassCComplete
{
  p_info = &OBJC_METACLASS___CSSearchAgent.info;
  if ((sMailClassCMigrationComplete & 1) != 0 || (sPrivate & 1) != 0 || sUseMailIndex != 1)
  {
    v5 = 1;
  }

  else
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SPCoreSpotlightIndexer_checkMailMigrationToClassCComplete__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (checkMailMigrationToClassCComplete_onceToken != -1)
    {
      dispatch_once(&checkMailMigrationToClassCComplete_onceToken, block);
      p_info = (&OBJC_METACLASS___CSSearchAgent + 32);
    }

    v5 = *(p_info + 1862);
  }

  return v5 & 1;
}

void __60__SPCoreSpotlightIndexer_checkMailMigrationToClassCComplete__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) mailClassCMigrationCompleteTouchFile];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    sMailClassCFileTransferComplete = 1;
    sMailClassCMigrationComplete = 1;
    v6 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "### checkMailMigrationToClassCComplete: already done", v7, 2u);
    }
  }
}

- (void)moveBackMailToClassA
{
  if ((sPrivate & 1) == 0 && (sUseMailIndex & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SPCoreSpotlightIndexer_moveBackMailToClassA__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    if (moveBackMailToClassA_onceToken != -1)
    {
      dispatch_once(&moveBackMailToClassA_onceToken, block);
    }
  }
}

void __46__SPCoreSpotlightIndexer_moveBackMailToClassA__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mailClassCMigrationCompleteTouchFile];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v6 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "### moveBackMailToClassA: found touch file and FF is disabled!", buf, 2u);
    }

    v7 = [*(a1 + 32) mailClassCIndexPath];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if (v9)
    {
      v11 = logForCSLogCategoryDefault(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "### moveBackMailToClassA: class C mail index exists, moving it back", buf, 2u);
      }

      v12 = [sDelegate indexDirectory];
      v13 = [v12 stringByAppendingPathComponent:*MEMORY[0x277CCA190]];

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      [v14 removeItemAtPath:v13 error:0];

      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v25 = 0;
      v16 = [v15 moveItemAtPath:v7 toPath:v13 error:&v25];
      v17 = v25;

      if ((v16 & 1) == 0)
      {
        v19 = logForCSLogCategoryIndex(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v27 = v7;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = v17;
          _os_log_error_impl(&dword_231A35000, v19, OS_LOG_TYPE_ERROR, "### moveBackMailToClassA: Failed to move class C mail index path:%@ to class A path:%@, error:%@", buf, 0x20u);
        }
      }
    }

    v20 = [MEMORY[0x277CCAA00] defaultManager];
    [v20 removeItemAtPath:v2 error:0];
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [*(a1 + 32) mailClassCFileTransferCompleteTouchFile];
  [v21 removeItemAtPath:v22 error:0];

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = [*(a1 + 32) mailClassCIndexPath];
  [v23 removeItemAtPath:v24 error:0];

  [*(a1 + 32) deleteTouchfileForMigrationStep:@"CrystalEMailCloneComplete.touch"];
  [*(a1 + 32) deleteTouchfileForMigrationStep:@"CrystalEMailCleanClassAComplete.touch"];
  [*(a1 + 32) deleteTouchfileForMigrationStep:@"CrystalEMailCleanClassMailComplete.touch"];
}

- (void)start
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPCoreSpotlightIndexer_start__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  if (start_onceToken != -1)
  {
    dispatch_once(&start_onceToken, block);
  }
}

void __31__SPCoreSpotlightIndexer_start__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if ([sDelegate indexingEnabled])
  {
    v2 = [sDelegate indexDirectory];
    v3 = [v2 fileSystemRepresentation];

    if (v3)
    {
      v5 = open(v3, 0x100000);
      if (v5 == -1)
      {
        v8 = logForCSLogCategoryDefault(v5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __31__SPCoreSpotlightIndexer_start__block_invoke_cold_1();
        }
      }

      else
      {
        v6 = v5;
        MEMORY[0x238375140]();
        v4 = close(v6);
      }
    }

    v9 = logForCSLogCategoryDefault(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:MDBootTime()];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v10;
      _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "Noting bootTime:%@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = MEMORY[0x277CCACA8];
    v13 = [sDelegate indexDirectory];
    v14 = [v12 stringWithCString:objc_msgSend(v13 encoding:{"fileSystemRepresentation"), 134217984}];
    buf[0] = 0;
    v15 = [v11 attributesOfFileSystemForPath:v14 error:buf];
    v16 = buf[0];

    if (v16)
    {
      v18 = logForCSLogCategoryDefault(isKindOfClass);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __31__SPCoreSpotlightIndexer_start__block_invoke_cold_2();
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_17;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_17;
      }

      v18 = [v15 objectForKeyedSubscript:@"NSFileSystemFreeSize"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [v18 unsignedLongValue];
          if ((v33 & 0x8000000000000000) == 0)
          {
            v34 = v33;

            if (v34 >> 22 > 0x18)
            {
              v23 = 0;
              v22 = 1;
LABEL_23:
              if (isAppleInternalInstall())
              {
                memset(buf, 0, 144);
                v24 = stat("/private/var/mobile/spotlightForceLowDisk", buf);
                if (!v24)
                {
                  v25 = logForCSLogCategoryDefault(v24);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    __31__SPCoreSpotlightIndexer_start__block_invoke_cold_4();
                  }

                  v22 = 0;
                  v23 = 1;
                  sVeryLowDiskSpace = 1;
                }
              }

              memset(buf, 0, 144);
              v26 = turboFilePath();
              v27 = stat(v26, buf);
              sTurboMode = v27 == 0;
              if (!v27)
              {
                _SISetTurboMode();
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v38 = 0;
                  _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Start with turbo mode on", v38, 2u);
                }
              }

              if (sPrivate == 1)
              {
                [*(a1 + 32) asyncOpenIndex:v22 forInit:1 readOnly:v23];
              }

              else
              {
                if (([sDelegate managedIndex] & 1) == 0)
                {
                  v28 = [MEMORY[0x277CC33F8] sharedInstance];
                  objc_storeWeak((*(a1 + 32) + 216), v28);

                  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
                  v37[0] = MEMORY[0x277D85DD0];
                  v37[1] = 3221225472;
                  v37[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_2341;
                  v37[3] = &unk_278936630;
                  v37[4] = *(a1 + 32);
                  [WeakRetained setDomainCleaner:v37];

                  v30 = objc_loadWeakRetained((*(a1 + 32) + 216));
                  v36[0] = MEMORY[0x277D85DD0];
                  v36[1] = 3221225472;
                  v36[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_3;
                  v36[3] = &unk_278936658;
                  v36[4] = *(a1 + 32);
                  [v30 setProviderMonitor:v36];

                  v31 = [MEMORY[0x277CC3538] sharedManager];
                  [*(a1 + 32) setExtensionDelegate:v31];
                }

                [*(a1 + 32) asyncOpenIndex:v22 forInit:1 readOnly:v23];
                startAllAgents(*(a1 + 32));
                v32 = dispatch_get_global_queue(17, 0);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_4;
                block[3] = &unk_278934050;
                block[4] = *(a1 + 32);
                dispatch_async(v32, block);
              }

              return;
            }

LABEL_20:
            v21 = logForCSLogCategoryDefault(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "Very low disk space detected; opening CoreSpotlight index as read-only", buf, 2u);
            }

            v22 = 0;
            v23 = 1;
            sVeryLowDiskSpace = 1;
            goto LABEL_23;
          }
        }
      }
    }

LABEL_17:
    v19 = logForCSLogCategoryDefault(isKindOfClass);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __31__SPCoreSpotlightIndexer_start__block_invoke_cold_3();
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);

  startIndexAgent(v7);
}

uint64_t __31__SPCoreSpotlightIndexer_start__block_invoke_2341(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_2;
  v9[3] = &unk_278934F58;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 deleteSearchableItemsWithFileProviderDomains:v3 completionHandler:v9];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPCoreSpotlightIndexer_start__block_invoke_5;
  block[3] = &unk_278934050;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_prefsChangeSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_dataMigrationFinishObserver];
  [defaultCenter removeObserver:self->_dataMigrationStartObserver];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CC3540] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBD148] object:0];

  v4.receiver = self;
  v4.super_class = SPCoreSpotlightIndexer;
  [(SPCoreSpotlightIndexer *)&v4 dealloc];
}

- (void)_enumerateIndexersWithProtectionClasses:(id)classes forQueryWithContext:(id)context forBundleIds:(id)ids inferSpecialIndexes:(BOOL)indexes block:(id)block
{
  indexesCopy = indexes;
  v53 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  contextCopy = context;
  idsCopy = ids;
  blockCopy = block;
  if (!classesCopy)
  {
    classesCopy = [objc_opt_class() allProtectionClasses];
  }

  v40 = idsCopy;
  if (indexesCopy)
  {
    if (sUsePriorityIndex == 1 && needsSpecialIndexAdded(classesCopy, idsCopy, sPriorityBundleIds, @"Priority"))
    {
      concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
      v16 = [concreteIndexers objectForKeyedSubscript:@"Priority"];

      if (v16)
      {
        blockCopy[2](blockCopy, v16);
      }
    }

    if (sUseMailIndex == 1)
    {
      if ([idsCopy containsObject:@"com.apple.mobilemail"])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        classesCopy = classesCopy;
        v17 = [classesCopy countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v41 = 0;
          v19 = 0;
          v20 = *v48;
          v21 = *MEMORY[0x277CCA190];
          v22 = *MEMORY[0x277CCA1A0];
          do
          {
            v23 = classesCopy;
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v20)
              {
                objc_enumerationMutation(v23);
              }

              v25 = *(*(&v47 + 1) + 8 * i);
              if ([v25 isEqualToString:v21])
              {
                v41 = 1;
              }

              else
              {
                v19 |= [v25 isEqualToString:v22];
              }
            }

            classesCopy = v23;
            v18 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v18);

          if (v19 & 1 | ((v41 & 1) == 0))
          {
            idsCopy = v40;
            goto LABEL_27;
          }

          v26 = [v23 arrayByAddingObject:v22];

          classesCopy = logForCSLogCategoryQuery(v27);
          idsCopy = v40;
          if (os_log_type_enabled(classesCopy, OS_LOG_TYPE_FAULT))
          {
            [SPCoreSpotlightIndexer _enumerateIndexersWithProtectionClasses:contextCopy forQueryWithContext:classesCopy forBundleIds:? inferSpecialIndexes:? block:?];
          }
        }

        else
        {
          v26 = classesCopy;
        }

        classesCopy = v26;
      }

LABEL_27:
      if (_enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__onceToken != -1)
      {
        [SPCoreSpotlightIndexer _enumerateIndexersWithProtectionClasses:forQueryWithContext:forBundleIds:inferSpecialIndexes:block:];
      }

      if (needsSpecialIndexAdded(classesCopy, idsCopy, _enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__mailBundleIDSet, @"MobileMailIndex"))
      {
        concreteIndexers2 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
        v29 = [concreteIndexers2 objectForKeyedSubscript:@"MobileMailIndex"];

        if (v29)
        {
          blockCopy[2](blockCopy, v29);
        }
      }
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = classesCopy;
  v31 = [v30 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v44;
    v42 = *MEMORY[0x277CCA1A0];
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v43 + 1) + 8 * j);
        concreteIndexers3 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
        v37 = [concreteIndexers3 objectForKeyedSubscript:v35];

        if (!v37)
        {
          if (![v35 isEqualToString:@"Default"])
          {
            continue;
          }

          concreteIndexers4 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
          v37 = [concreteIndexers4 objectForKeyedSubscript:v42];

          if (!v37)
          {
            continue;
          }
        }

        blockCopy[2](blockCopy, v37);
      }

      v32 = [v30 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v32);
  }
}

uint64_t __125__SPCoreSpotlightIndexer__enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.mobilemail"];
  v1 = _enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__mailBundleIDSet;
  _enumerateIndexersWithProtectionClasses_forQueryWithContext_forBundleIds_inferSpecialIndexes_block__mailBundleIDSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_registerForPrefsChanges
{
  disabledBundleSet = [sDelegate disabledBundleSet];
  prefsDisabledBundleIDs = self->_prefsDisabledBundleIDs;
  self->_prefsDisabledBundleIDs = disabledBundleSet;

  v6 = logForCSLogCategoryIndex(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _registerForPrefsChanges];
  }

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke;
  v12 = &unk_278936518;
  objc_copyWeak(&v13, &location);
  v7 = [&v9 copy];
  v8 = [SDEventMonitor sharedInstance:v9];
  [v8 registerHandler:v7 forEventName:@"com.apple.spotlightui.prefschanged"];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    v16 = logForCSLogCategoryIndex(WeakRetained);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke_cold_1();
    }

    v17 = [v15 prefsChangeSource];
    dispatch_source_merge_data(v17, 1uLL);
  }

  objc_autoreleasePoolPop(v13);
}

- (void)_reindexAllItemsOnPrefsChanges
{
  p_prefsDisabledBundleIDs = &self->_prefsDisabledBundleIDs;
  v4 = self->_prefsDisabledBundleIDs;
  disabledBundleSet = [sDelegate disabledBundleSet];
  objc_storeStrong(p_prefsDisabledBundleIDs, disabledBundleSet);
  if ([(NSSet *)v4 count])
  {
    v6 = [(NSSet *)v4 mutableCopy];
    [v6 minusSet:disabledBundleSet];
    if ([v6 count])
    {
      dispatch_suspend(self->_reindexAllQueue);
      allObjects = [v6 allObjects];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__SPCoreSpotlightIndexer__reindexAllItemsOnPrefsChanges__block_invoke;
      v8[3] = &unk_278934050;
      v8[4] = self;
      [(SPCoreSpotlightIndexer *)self _reindexAllItemsForBundleIDs:allObjects reason:@"prefs-changes" completionHandler:v8];
    }
  }
}

- (void)_reindexAllItemsForBundleIDs:(id)ds reason:(id)reason completionHandler:(id)handler
{
  dsCopy = ds;
  reasonCopy = reason;
  handlerCopy = handler;
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v12 = [dsCopy count];
  if (v12 && concreteIndexers)
  {
    v13 = logForCSLogCategoryIndex(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SPCoreSpotlightIndexer _reindexAllItemsForBundleIDs:reason:completionHandler:];
    }

    v14 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
    [v14 setReason:reasonCopy];
    v15 = [SPCoreSpotlightIndexerTask alloc];
    allValues = [concreteIndexers allValues];
    v17 = [(SPCoreSpotlightIndexerTask *)v15 initWithIndexJob:v14 indexers:allValues];

    [(SPCoreSpotlightIndexerTask *)v17 setBundleIDs:dsCopy];
    if ([dsCopy containsObject:@"com.apple.mobileslideshow"])
    {
      _sendPhotosReindexABCReport(@"Reindex bundleIDs call -- all PCs");
    }

    [(SPCoreSpotlightIndexer *)self performIndexerTask:v17 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)preheat
{
  v2 = sIndexQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SPCoreSpotlightIndexer_preheat__block_invoke;
  v4[3] = &unk_278934050;
  v4[4] = self;
  v3 = _setup_block(v4, 0, 16750);
  dispatch_async(v2, v3);
}

- (void)flush
{
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "flush", buf, 2u);
  }

  v4 = dispatch_group_create();
  v5 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SPCoreSpotlightIndexer_flush__block_invoke;
  v7[3] = &unk_278934050;
  v7[4] = self;
  v6 = _setup_block(v7, 0, 16766);
  dispatch_group_async(v4, v5, v6);

  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __31__SPCoreSpotlightIndexer_flush__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 index])
  {
    [v2 index];
    SISyncIndexForLikelyShutdown();
    [v2 setDirtyTimeout:256];
  }
}

- (void)commitUpdatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SPCoreSpotlightIndexer commitUpdatesWithCompletionHandler:];
  }

  v5 = handlerCopy;
  v6 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "commitUpdatesWithCompletionHandler", buf, 2u);
  }

  v7 = dispatch_group_create();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SPCoreSpotlightIndexer_commitUpdatesWithCompletionHandler___block_invoke;
  v11[3] = &unk_2789366A0;
  v12 = v7;
  v8 = v7;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithBlock:v11];
  v9 = sIndexQueue;
  v10 = _setup_block(v5, 0, 16782);
  dispatch_group_notify(v8, v9, v10);
}

- (void)commitUpdates
{
  v3 = logForCSLogCategoryIndex(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "commitUpdates", buf, 2u);
  }

  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPCoreSpotlightIndexer_commitUpdates__block_invoke;
  v8[3] = &unk_2789342C0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = _setup_block(v8, 0, 16796);
  dispatch_async(v5, v7);

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

void __39__SPCoreSpotlightIndexer_commitUpdates__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__SPCoreSpotlightIndexer_commitUpdates__block_invoke_2;
  v2[3] = &unk_278934050;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 commitUpdatesWithCompletionHandler:v2];
}

- (void)issueSplit:(id)split
{
  v13[1] = *MEMORY[0x277D85DE8];
  splitCopy = split;
  v5 = splitCopy;
  if (splitCopy)
  {
    v13[0] = splitCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__SPCoreSpotlightIndexer_issueSplit___block_invoke;
  v11[3] = &unk_2789342C0;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  v10 = _setup_block(v11, 0, 16811);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)mergeWithProtectionClasses:(id)classes power:(BOOL)power inferSpecialIndexes:(BOOL)indexes completionHandler:(id)handler
{
  classesCopy = classes;
  handlerCopy = handler;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke;
  v17[3] = &unk_278936740;
  v18 = classesCopy;
  selfCopy = self;
  indexesCopy = indexes;
  powerCopy = power;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = classesCopy;
  v14 = MEMORY[0x2383760E0](v17);
  v15 = sIndexQueue;
  v16 = _setup_block(v14, 0, 16858);
  dispatch_async(v15, v16);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = dispatch_group_create();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2;
  v15[3] = &unk_278936718;
  v16 = v3;
  v18 = *(a1 + 57);
  v7 = v2;
  v17 = v7;
  v8 = v3;
  [v4 _enumerateIndexersWithProtectionClasses:v5 inferSpecialIndexes:v6 block:v15];
  v9 = dispatch_get_global_queue(17, 2uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2369;
  block[3] = &unk_278934078;
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  dispatch_group_notify(v8, v9, block);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 48);
  v6 = logForCSLogCategoryIndex(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v7)
    {
      __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_2();
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363;
    v15[3] = &unk_2789366F0;
    v8 = &v16;
    v16 = v3;
    v9 = &v17;
    v17 = *(a1 + 40);
    v10 = &v18;
    v18 = *(a1 + 32);
    [v3 scheduleMaintenance:v15 description:@"searchutil forced maintenance" forDarkWake:1];
  }

  else
  {
    if (v7)
    {
      __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_1();
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2368;
    v11[3] = &unk_2789358D0;
    v8 = &v12;
    v12 = v3;
    v9 = &v13;
    v13 = *(a1 + 40);
    v10 = &v14;
    v14 = *(a1 + 32);
    [v3 mergeWithCompletionHandler:v11];
  }
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363_cold_1();
  }

  dispatch_group_enter(v6);
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2364;
  v10[3] = &unk_2789366C8;
  v11 = v8;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 48);
  v9 = v6;
  [v11 mergeWithCompletionHandler:v10];
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2364(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) dataclass];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "*warn* Failed to merge the index for dataclass:%@, error:%@", &v11, 0x16u);
    }
  }

  v7 = *(a1 + 40);
  objc_sync_enter(v7);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4 == 0];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) dataclass];
  [v9 setObject:v8 forKeyedSubscript:v10];

  objc_sync_exit(v7);
  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2368(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) dataclass];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "*warn* Failed to merge the index for dataclass:%@, error:%@", &v11, 0x16u);
    }
  }

  v7 = *(a1 + 40);
  objc_sync_enter(v7);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4 == 0];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) dataclass];
  [v9 setObject:v8 forKeyedSubscript:v10];

  objc_sync_exit(v7);
  dispatch_group_leave(*(a1 + 48));
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2369(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)mergeWithProtectionClasses:(id)classes power:(BOOL)power
{
  powerCopy = power;
  classesCopy = classes;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power___block_invoke;
  v9[3] = &unk_278936658;
  v10 = v7;
  v8 = v7;
  [(SPCoreSpotlightIndexer *)self mergeWithProtectionClasses:classesCopy power:powerCopy completionHandler:v9];

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)cleanupStringsWithProtectionClasses:(id)classes completionHandler:(id)handler
{
  classesCopy = classes;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke;
  v13[3] = &unk_278934F08;
  v14 = classesCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v8 = handlerCopy;
  v9 = classesCopy;
  v10 = MEMORY[0x2383760E0](v13);
  v11 = sIndexQueue;
  v12 = _setup_block(v10, 0, 16894);
  dispatch_async(v11, v12);
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = dispatch_group_create();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2;
  v14[3] = &unk_278936768;
  v15 = v3;
  v6 = v2;
  v16 = v6;
  v7 = v3;
  [v4 _enumerateIndexersWithProtectionClasses:v5 block:v14];
  v8 = dispatch_get_global_queue(9, 2uLL);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2370;
  v11[3] = &unk_278934078;
  v9 = *(a1 + 48);
  v12 = v6;
  v13 = v9;
  v10 = v6;
  dispatch_group_notify(v7, v8, v11);
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_3;
  v5[3] = &unk_2789358D0;
  v6 = v3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v4 = v3;
  [v4 cleanupStringsWithCompletionHandler:v5];
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) dataclass];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Failed to cleanup the strings for dataclass:%@, error:%@", &v11, 0x16u);
    }
  }

  v7 = *(a1 + 40);
  objc_sync_enter(v7);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4 == 0];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) dataclass];
  [v9 setObject:v8 forKeyedSubscript:v10];

  objc_sync_exit(v7);
  dispatch_group_leave(*(a1 + 48));
}

void __80__SPCoreSpotlightIndexer_cleanupStringsWithProtectionClasses_completionHandler___block_invoke_2370(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)issueRepair:(id)repair
{
  v13[1] = *MEMORY[0x277D85DE8];
  repairCopy = repair;
  v5 = repairCopy;
  if (repairCopy)
  {
    v13[0] = repairCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SPCoreSpotlightIndexer_issueRepair___block_invoke;
  v11[3] = &unk_2789342C0;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  v10 = _setup_block(v11, 0, 16907);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)issueCleanup:(id)cleanup flags:(int)flags
{
  v15[1] = *MEMORY[0x277D85DE8];
  cleanupCopy = cleanup;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  if (cleanupCopy)
  {
    v15[0] = cleanupCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = dispatch_group_create();
  v9 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__SPCoreSpotlightIndexer_issueCleanup_flags___block_invoke;
  v12[3] = &unk_278934428;
  v12[4] = self;
  v13 = v7;
  flagsCopy = flags;
  v10 = v7;
  v11 = _setup_block(v12, 0, 16922);
  dispatch_group_async(v8, v9, v11);

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __45__SPCoreSpotlightIndexer_issueCleanup_flags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SPCoreSpotlightIndexer_issueCleanup_flags___block_invoke_2;
  v4[3] = &__block_descriptor_36_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  v5 = *(a1 + 48);
  return [v2 _enumerateIndexersWithProtectionClasses:v1 inferSpecialIndexes:0 block:v4];
}

- (void)issueDefrag:(id)defrag group:(id)group
{
  v17[1] = *MEMORY[0x277D85DE8];
  defragCopy = defrag;
  groupCopy = group;
  if (defragCopy)
  {
    v17[0] = defragCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = groupCopy;
  if (!groupCopy)
  {
    v9 = dispatch_group_create();
  }

  v10 = sIndexQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SPCoreSpotlightIndexer_issueDefrag_group___block_invoke;
  v14[3] = &unk_278934130;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = _setup_block(v14, 0, 16940);
  dispatch_group_async(v12, v10, v13);

  if (!groupCopy)
  {
    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __44__SPCoreSpotlightIndexer_issueDefrag_group___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SPCoreSpotlightIndexer_issueDefrag_group___block_invoke_2;
  v3[3] = &unk_2789366A0;
  v4 = *(a1 + 48);
  [v1 _enumerateIndexersWithProtectionClasses:v2 inferSpecialIndexes:0 block:v3];
}

- (void)issueSharedDocumentAttributeFixup
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)issueDumpReverse:(unint64_t)reverse completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SPCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke;
  v10[3] = &unk_2789367D8;
  v11 = handlerCopy;
  reverseCopy = reverse;
  v10[4] = self;
  v8 = handlerCopy;
  v9 = _setup_block(v10, 0, 17062);
  dispatch_async(v7, v9);
}

void __61__SPCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v8[0] = *MEMORY[0x277CCA1A0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SPCoreSpotlightIndexer_issueDumpReverse_completionHandler___block_invoke_2;
  v5[3] = &unk_2789367B0;
  v4 = a1[5];
  v7 = a1[6];
  v6 = v4;
  [v2 _enumerateIndexersWithProtectionClasses:v3 block:v5];
}

- (void)issueDumpForward:(unint64_t)forward completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SPCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke;
  v10[3] = &unk_2789367D8;
  v11 = handlerCopy;
  forwardCopy = forward;
  v10[4] = self;
  v8 = handlerCopy;
  v9 = _setup_block(v10, 0, 17071);
  dispatch_async(v7, v9);
}

void __61__SPCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v8[0] = *MEMORY[0x277CCA1A0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SPCoreSpotlightIndexer_issueDumpForward_completionHandler___block_invoke_2;
  v5[3] = &unk_2789367B0;
  v4 = a1[5];
  v7 = a1[6];
  v6 = v4;
  [v2 _enumerateIndexersWithProtectionClasses:v3 block:v5];
}

- (id)issueHeartbeat
{
  v37 = *MEMORY[0x277D85DE8];
  lastLoadedBundleVersion = [MEMORY[0x277D657E8] lastLoadedBundleVersion];
  pthread_rwlock_wrlock(&sIndexHeartbeatLock);
  v3 = indexHeartbeatPath();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = time(0);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v3];

  v8 = 0;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v8 = v9;
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"lastLoadedBundleVersion"];

      if (v10)
      {
        v11 = newHeartbeatDict();

        v8 = v11;
      }
    }

    v26 = v3;
    if (lastLoadedBundleVersion)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:lastLoadedBundleVersion];
      [v8 setObject:v12 forKeyedSubscript:@"otaversion"];
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __40__SPCoreSpotlightIndexer_issueHeartbeat__block_invoke;
    v33[3] = &unk_278936800;
    v34 = dictionary;
    v35 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v33];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues = [&unk_2846C96E0 allValues];
    v14 = [allValues countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(allValues);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"pc%@_%@", *(*(&v29 + 1) + 8 * i), @"wipes"];
          [v8 setObject:&unk_2846C9680 forKeyedSubscript:v18];
        }

        v15 = [allValues countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v15);
    }

    v19 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    [v8 setObject:v19 forKeyedSubscript:@"lastSent"];

    v3 = v26;
  }

  v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v28 = 0;
  [v8 writeToURL:v20 error:&v28];
  v21 = v28;

  if (v21)
  {
    v23 = logForCSLogCategoryDefault(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer issueHeartbeat];
    }
  }

  pthread_rwlock_unlock(&sIndexHeartbeatLock);
  v27 = dictionary;
  AnalyticsSendEventLazy();
  v24 = v27;

  return v27;
}

void __40__SPCoreSpotlightIndexer_issueHeartbeat__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if (([v8 hasSuffix:@"_age"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"timesinceboot") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"timesinceupdate"))
      {
        if (([v6 longValue] & 0x8000000000000000) == 0)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithLong:{*(a1 + 40) - objc_msgSend(v6, "longValue")}];
          [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
        }

        goto LABEL_8;
      }

      if (([v8 hasSuffix:@"_wipes"] & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"_wipes_aggregate") & 1) != 0 || objc_msgSend(v8, "hasSuffix:", @"_obj_count"))
      {
        if ([v6 longValue] < 0)
        {
LABEL_8:

          goto LABEL_12;
        }
      }

      else if ([v8 isEqualToString:@"lastSent"])
      {
        goto LABEL_8;
      }

      [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToString:@"build"] & 1) == 0)
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
    }
  }

LABEL_12:
}

- (id)dumpIndexAgesAtPath:(id)path
{
  pathCopy = path;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = time(0);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:pathCopy];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:pathCopy];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"v2"];

      if (v10)
      {
        v11 = newHeartbeatDict();

        v9 = v11;
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SPCoreSpotlightIndexer_dumpIndexAgesAtPath___block_invoke;
    v13[3] = &unk_278936800;
    v14 = dictionary;
    v15 = v5;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];
  }

  return dictionary;
}

void __46__SPCoreSpotlightIndexer_dumpIndexAgesAtPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if ((([v8 hasSuffix:@"_age"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"timesinceboot") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"timesinceupdate") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"lastSent")) && (objc_msgSend(v6, "longValue") & 0x8000000000000000) == 0)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLong:{*(a1 + 40) - objc_msgSend(v6, "longValue")}];
        [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
      }

      else
      {
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
      }
    }
  }
}

- (id)dumpIndexAges
{
  pthread_rwlock_rdlock(&sIndexHeartbeatLock);
  v3 = indexHeartbeatPath();
  v4 = [(SPCoreSpotlightIndexer *)self dumpIndexAgesAtPath:v3];
  pthread_rwlock_unlock(&sIndexHeartbeatLock);

  return v4;
}

- (id)dumpIndexAnalyticsAtPath:(id)path
{
  pathCopy = path;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = time(0);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:pathCopy];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:pathCopy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__SPCoreSpotlightIndexer_dumpIndexAnalyticsAtPath___block_invoke;
    v10[3] = &unk_278936800;
    v11 = dictionary;
    v12 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return dictionary;
}

void __51__SPCoreSpotlightIndexer_dumpIndexAnalyticsAtPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v13;
      v7 = v5;
      v8 = [v7 longValue];
      v9 = MEMORY[0x277CCABB0];
      if (v8 < 0)
      {
        v11 = -1;
      }

      else
      {
        v10 = *(a1 + 40);
        v11 = v10 - [v7 longValue];
      }

      v12 = [v9 numberWithLong:v11];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v6];
    }
  }
}

- (id)dumpIndexAnalytics
{
  pthread_rwlock_rdlock(&sIndexOpenRecordLock);
  v3 = indexOpenRecordPath();
  v4 = [(SPCoreSpotlightIndexer *)self dumpIndexAnalyticsAtPath:v3];
  pthread_rwlock_unlock(&sIndexOpenRecordLock);

  return v4;
}

- (id)sendAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if ([analyticsCopy isEqualToString:@"heartbeat"])
  {
    issueHeartbeat = [(SPCoreSpotlightIndexer *)self issueHeartbeat];
  }

  else if ([analyticsCopy hasPrefix:@"indexloss"])
  {
    v6 = [analyticsCopy componentsSeparatedByString:@"-"];
    v7 = [v6 objectAtIndexedSubscript:1];
    concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
    v9 = [concreteIndexers objectForKeyedSubscript:v7];

    LOBYTE(v11) = 0;
    issueHeartbeat = [v9 indexLossAnalyticsDictWithPreviousIndexCreationDate:0 size:0 openingInReadOnly:0 fullyCreated:1 markedPurgeable:0 vectorIndexDrop:0 forAnalytics:v11];
    AnalyticsSendEventLazy();
  }

  else
  {
    issueHeartbeat = &unk_2846C9730;
  }

  return issueHeartbeat;
}

- (void)issueBundleFixup:(id)fixup completionHandler:(id)handler
{
  fixupCopy = fixup;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v9 = sIndexQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke;
  v18[3] = &unk_278934130;
  v18[4] = self;
  v19 = fixupCopy;
  v20 = v8;
  v10 = v8;
  v11 = fixupCopy;
  v12 = _setup_block(v18, 0, 17232);
  dispatch_group_async(v10, v9, v12);

  v13 = qos_class_self();
  v14 = dispatch_get_global_queue(v13, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke_3;
  v16[3] = &unk_2789341A8;
  v17 = handlerCopy;
  v15 = handlerCopy;
  dispatch_group_notify(v10, v14, v16);
}

void __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v7[0] = *(a1 + 40);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SPCoreSpotlightIndexer_issueBundleFixup_completionHandler___block_invoke_2;
  v5[3] = &unk_2789366A0;
  v6 = *(a1 + 48);
  [v2 _enumerateIndexersWithProtectionClasses:v4 inferSpecialIndexes:0 block:v5];
  if (v3)
  {
  }
}

+ (id)fileProviderProtectionClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCA1A0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)deleteSearchableItemsWithFileProviderDomains:(id)domains completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_fileProviderMonitor);

  if (WeakRetained)
  {
    _checkUnlock();
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__0;
    v27[4] = __Block_byref_object_dispose__0;
    v28 = 0;
    v7 = dispatch_group_create();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    fileProviderProtectionClasses = [objc_opt_class() fileProviderProtectionClasses];
    v9 = [fileProviderProtectionClasses countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(fileProviderProtectionClasses);
          }

          v12 = [(NSDictionary *)self->_concreteIndexers objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v11)];
          if (v12)
          {
            dispatch_group_enter(v7);
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke;
            v20[3] = &unk_278934F58;
            v22 = v27;
            v21 = v7;
            [v12 deleteSearchableItemsWithFileProviderDomains:domainsCopy completionHandler:v20];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [fileProviderProtectionClasses countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v9);
    }

    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    v13 = sIndexQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2;
    v17[3] = &unk_278936850;
    v17[4] = self;
    v18 = handlerCopy;
    v19 = v27;
    v14 = _setup_block(v17, 0, 17285);
    dispatch_group_notify(v7, v13, v14);

    _Block_object_dispose(v27, 8);
  }
}

void __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __89__SPCoreSpotlightIndexer_deleteSearchableItemsWithFileProviderDomains_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)issuePathFixup:(id)fixup
{
  fixupCopy = fixup;
  v5 = dispatch_group_create();
  v6 = sIndexQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__SPCoreSpotlightIndexer_issuePathFixup___block_invoke;
  v9[3] = &unk_2789342C0;
  v9[4] = self;
  v10 = fixupCopy;
  v7 = fixupCopy;
  v8 = _setup_block(v9, 0, 17296);
  dispatch_group_async(v5, v6, v8);

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __41__SPCoreSpotlightIndexer_issuePathFixup___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  [v1 _enumerateIndexersWithProtectionClasses:v2 inferSpecialIndexes:0 block:&__block_literal_global_2424];
}

- (void)issueResolveFPItem:(id)item completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  handlerCopy = handler;
  if (!itemCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    v10 = 0;
    v13 = 0;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = [SPConcreteCoreSpotlightIndexer fetchParentsForItemID:itemCopy recursively:1 timeout:-1];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"itemID: %@ parents[%@]", itemCopy, v9];

  v12 = logForCSLogCategoryIndex(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v13 = [v10 dataUsingEncoding:4];

  v14 = 0;
  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, v13, v14);
  }

LABEL_6:
}

- (void)issueResolveFPItemForBundle:(id)bundle domain:(id)domain identifier:(id)identifier completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  domainCopy = domain;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = [domainCopy length];
  v15 = *MEMORY[0x277CC62F8];
  if (v14)
  {
    v15 = domainCopy;
  }

  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x277CC6400]) initWithProviderID:bundleCopy domainIdentifier:v16 coreSpotlightIdentifier:identifierCopy];
  v18 = logForCSLogCategoryIndex(v17);
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413058;
      v21 = bundleCopy;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "bundle: %@ domain: %@ identifier: %@ ->  %@", &v20, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412802;
    v21 = bundleCopy;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = identifierCopy;
    _os_log_error_impl(&dword_231A35000, v19, OS_LOG_TYPE_ERROR, "Failed to resolve FPItemID for bundle: %@ domain: %@ identifier: %@", &v20, 0x20u);
  }

  [(SPCoreSpotlightIndexer *)self issueResolveFPItem:v17 completionHandler:handlerCopy];
}

- (void)issueResolveFPItemForURL:(id)l completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v8 = [SPConcreteCoreSpotlightIndexer fetchItemForURL:lCopy];
  itemID = [v8 itemID];
  v10 = logForCSLogCategoryIndex(itemID);
  v11 = v10;
  if (itemID)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = lCopy;
      v14 = 2112;
      v15 = itemID;
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "Resolved %@ ->  %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SPCoreSpotlightIndexer issueResolveFPItemForURL:completionHandler:];
  }

  [(SPCoreSpotlightIndexer *)self issueResolveFPItem:itemID completionHandler:handlerCopy];
}

- (void)issueConsistencyCheck:(id)check
{
  v13[1] = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v5 = checkCopy;
  if (checkCopy)
  {
    v13[0] = checkCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SPCoreSpotlightIndexer_issueConsistencyCheck___block_invoke;
  v11[3] = &unk_2789342C0;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  v10 = _setup_block(v11, 0, 17364);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)issueDuplicateOidCheckWithGroup:(id)group protected:(BOOL)protected
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SPCoreSpotlightIndexer_issueDuplicateOidCheckWithGroup_protected___block_invoke;
  v8[3] = &unk_278934400;
  protectedCopy = protected;
  v8[4] = self;
  groupCopy = group;
  v5 = MEMORY[0x2383760E0](v8);
  v6 = sIndexQueue;
  v7 = _setup_block(v5, 0, 17390);
  dispatch_group_async(groupCopy, v6, v7);
}

void __68__SPCoreSpotlightIndexer_issueDuplicateOidCheckWithGroup_protected___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    _checkUnlock();
    v2 = *MEMORY[0x277CCA198];
    v8[0] = *MEMORY[0x277CCA190];
    v8[1] = v2;
    v8[2] = *MEMORY[0x277CCA1A8];
    v3 = MEMORY[0x277CBEA60];
    v4 = v8;
    v5 = 3;
  }

  else
  {
    v7 = *MEMORY[0x277CCA1A0];
    v3 = MEMORY[0x277CBEA60];
    v4 = &v7;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:v5];
  [*(a1 + 32) _enumerateIndexersWithProtectionClasses:v6 block:&__block_literal_global_2431];
}

- (void)issueDuplicateOidCheck:(id)check
{
  v13[1] = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v5 = checkCopy;
  if (checkCopy)
  {
    v13[0] = checkCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SPCoreSpotlightIndexer_issueDuplicateOidCheck___block_invoke;
  v11[3] = &unk_2789342C0;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  v10 = _setup_block(v11, 0, 17402);
  dispatch_group_async(v7, v8, v10);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)issueMessagesFixup:(id)fixup
{
  fixupCopy = fixup;
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SPCoreSpotlightIndexer_issueMessagesFixup___block_invoke;
  v8[3] = &unk_278934F30;
  v8[4] = self;
  v9 = fixupCopy;
  v6 = fixupCopy;
  v7 = _setup_block(v8, 0, 17416);
  dispatch_async(v5, v7);
}

void __45__SPCoreSpotlightIndexer_issueMessagesFixup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) concreteIndexerForProtectionClass:*MEMORY[0x277CCA1A0] andBundleID:@"com.apple.MobileSMS"];
  if (v2)
  {
    v5 = v2;
    [v2 readyIndex:0];
    [v5 issueMessagesFixup:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_6;
    }

    v5 = 0;
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v2 = v5;
LABEL_6:
}

- (void)coolDown
{
  dispatch_assert_queue_not_V2(self->_indexQueue);
  v3 = dispatch_group_create();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SPCoreSpotlightIndexer_coolDown__block_invoke;
  v5[3] = &unk_2789366A0;
  v6 = v3;
  v4 = v3;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:0 block:v5];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __34__SPCoreSpotlightIndexer_coolDown__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SPCoreSpotlightIndexer_coolDown__block_invoke_2;
  v8[3] = &unk_2789342C0;
  v9 = v3;
  v5 = *(a1 + 32);
  v10 = v5;
  v6 = v3;
  v7 = _setup_block(v8, 0, 17428);
  dispatch_group_async(v5, v4, v7);
}

- (void)shrink:(unint64_t)shrink
{
  v3 = sIndexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SPCoreSpotlightIndexer_shrink___block_invoke;
  v5[3] = &unk_2789343B0;
  v5[4] = self;
  v5[5] = shrink;
  v4 = _setup_block(v5, 0, 17439);
  dispatch_async(v3, v4);
}

uint64_t __33__SPCoreSpotlightIndexer_shrink___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__SPCoreSpotlightIndexer_shrink___block_invoke_2;
  v3[3] = &__block_descriptor_40_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _enumerateIndexersWithProtectionClasses:0 block:v3];
}

- (void)_closeIndexWithIndexers:(id)indexers
{
  v21[2] = *MEMORY[0x277D85DE8];
  indexersCopy = indexers;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  cf = 0;
  v20[0] = @"MKBAssertionKey";
  v20[1] = @"MKBAssertionTimeout";
  v21[0] = @"Other";
  v21[1] = &unk_2846C9698;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v5 = MKBDeviceLockAssertion();
  v6 = logForCSLogCategoryIndex(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = cf;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Took lock assertion for close %@, err: %@", buf, 0x16u);
  }

  v7 = dispatch_group_create();
  v8 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SPCoreSpotlightIndexer__closeIndexWithIndexers___block_invoke;
  v13[3] = &unk_278934050;
  v9 = indexersCopy;
  v14 = v9;
  v10 = _setup_block(v13, 0, 17460);
  dispatch_group_async(v7, v8, v10);

  v11 = dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v12 = logForCSLogCategoryIndex(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "Releasing assertion %@", buf, 0xCu);
  }
}

void __50__SPCoreSpotlightIndexer__closeIndexWithIndexers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) reverseObjectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ((deviceUnlocked & 1) == 0)
        {
          SIResumeForUnlock();
        }

        [v6 closeIndex];
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)closeIndex
{
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  allValues = [concreteIndexers allValues];
  [(SPCoreSpotlightIndexer *)self _closeIndexWithIndexers:allValues];
}

- (void)shutdown
{
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  [(SPCoreSpotlightIndexer *)self setConcreteIndexers:0];
  suspendAllAgents();
  v4 = SIWaitForAllIndexShutdown();
  v5 = logForCSLogCategoryDefault(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "SPCoreSpotlightIndexer shutdown complete", v6, 2u);
  }
}

- (void)recycleIndex:(BOOL)index
{
  v5 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Recycling index", buf, 2u);
  }

  [(SPCoreSpotlightIndexer *)self closeIndex];
  v6 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPCoreSpotlightIndexer_recycleIndex___block_invoke;
  v8[3] = &unk_278934400;
  v8[4] = self;
  indexCopy = index;
  v7 = _setup_block(v8, 0, 17486);
  dispatch_async(v6, v7);
}

- (void)markIndexPurgeable:(BOOL)purgeable
{
  v3 = sIndexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SPCoreSpotlightIndexer_markIndexPurgeable___block_invoke;
  v5[3] = &unk_278934400;
  v5[4] = self;
  purgeableCopy = purgeable;
  v4 = _setup_block(v5, 0, 17503);
  dispatch_async(v3, v4);
}

void __45__SPCoreSpotlightIndexer_markIndexPurgeable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) concreteIndexers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (*(a1 + 40) == 1)
        {
          if ([v8 _shouldPurge])
          {
            [v8 _createPurgeableTouchFile];
            v9 = [v8 _indexPath];
            [v8 markDirectoryAtomicallyPurgeable:v9 purgeableOrNot:*(a1 + 40)];
          }
        }

        else if ([v8 _hasPurgeableTouchFile])
        {
          v10 = [v8 _indexPath];
          [v8 markDirectoryAtomicallyPurgeable:v10 purgeableOrNot:*(a1 + 40)];

          [v8 _removePurgeableTouchFile];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)recycleAndPurgeIndex
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Converting CoreSpotlight index to read-only", &v11, 2u);
  }

  v3 = +[SPCoreSpotlightIndexer sharedInstance];
  [v3 recycleIndex:1];

  v4 = +[SPCoreSpotlightIndexer freeIndexDiskSpace];
  v5 = +[SPCoreSpotlightIndexer totalIndexDiskSpace];
  if (100 * v4 / v5 < 6 || v4 <= 0x357900000)
  {
    v7 = v5;
    v8 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      indexDirectory = [sDelegate indexDirectory];
      v11 = 138412802;
      v12 = indexDirectory;
      v13 = 2048;
      v14 = v4;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Marking CoreSpotlight index files purgeable under %@. freeDiskSpace %lu, totalDiskSpace %lu", &v11, 0x20u);
    }

    v10 = +[SPCoreSpotlightIndexer sharedInstance];
    [v10 markIndexPurgeable:1];
  }
}

- (void)restoreIndexAndClearPurgeable
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Converting CoreSpotlight index to read-write", &v11, 2u);
  }

  v3 = +[SPCoreSpotlightIndexer sharedInstance];
  [v3 recycleIndex:0];

  v4 = +[SPCoreSpotlightIndexer freeIndexDiskSpace];
  v5 = +[SPCoreSpotlightIndexer totalIndexDiskSpace];
  if (100 * v4 / v5 >= 0xB && v4 >= 0x657900001)
  {
    v7 = v5;
    v8 = logForCSLogCategoryDefault(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      indexDirectory = [sDelegate indexDirectory];
      v11 = 138412802;
      v12 = indexDirectory;
      v13 = 2048;
      v14 = v4;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Clearing CoreSpotlight index files purgeable under %@. freeDiskSpace %lu, totalDiskSpace %lu", &v11, 0x20u);
    }

    v10 = +[SPCoreSpotlightIndexer sharedInstance];
    [v10 markIndexPurgeable:0];
  }
}

- (void)queryPreheat:(id)preheat
{
  preheatCopy = preheat;
  v5 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke;
  v8[3] = &unk_2789342C0;
  v8[4] = self;
  v9 = preheatCopy;
  v6 = preheatCopy;
  v7 = _setup_block(v8, 0, 17736);
  dispatch_async(v5, v7);
}

void __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D657E8] resourcePath];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if ((v4 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v12 = 0, objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v2, 1, 0, &v12), v6 = v12, v5, !v6))
  {
    v8 = [MEMORY[0x277D657E8] sharedResourcesManager];
    v9 = MEMORY[0x277CBEB98];
    v10 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v11 = [v9 setWithArray:v10];
    [v8 fetchAllParametersForLanguages:v11];

    v6 = 0;
  }

  else
  {
    v8 = logForCSLogCategoryDefault(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _enumerateIndexersWithProtectionClasses:*(a1 + 40) block:&__block_literal_global_2440];
}

- (id)_taskForQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  v131 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v64 = completionHandlerCopy;
  v66 = resultsHandlerCopy;
  if (!resultsHandlerCopy)
  {
    [SPCoreSpotlightIndexer _taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v16 = logForCSLogCategoryDefault(completionHandlerCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  protectionClasses = [contextCopy protectionClasses];
  v18 = [protectionClasses count];
  v61 = v18 == 0;
  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      clientBundleID = [contextCopy clientBundleID];
      allProtectionClasses = [objc_opt_class() allProtectionClasses];
      *buf = 138413058;
      *&buf[4] = protectionClasses;
      *&buf[12] = 2112;
      *&buf[14] = stringCopy;
      *&buf[22] = 2112;
      v128 = clientBundleID;
      v129 = 2112;
      v130 = allProtectionClasses;
      _os_log_debug_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PCS %@ for query %@ from client %@ (available: %@)", buf, 0x2Au);
    }

    v69 = protectionClasses;
  }

  else
  {
    allProtectionClasses2 = [objc_opt_class() allProtectionClasses];
    v69 = [allProtectionClasses2 copy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [SPCoreSpotlightIndexer _taskForQueryWithQueryString:v69 queryContext:stringCopy eventHandler:contextCopy resultsHandler:? completionHandler:?];
    }
  }

  if ([contextCopy internal])
  {
    clientBundleID2 = [contextCopy clientBundleID];
    if ([clientBundleID2 isEqualToString:@"com.apple.searchutil"])
    {
      v21 = 0;
    }

    else
    {
      clientBundleID3 = [contextCopy clientBundleID];
      v23 = [clientBundleID3 isEqualToString:@"com.apple.search"];

      v21 = v23 ^ 1u;
    }
  }

  else
  {
    v21 = 1;
  }

  v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  bundleIDs = [contextCopy bundleIDs];
  if ([bundleIDs count])
  {
    v25 = MEMORY[0x277CBEB98];
    bundleIDs2 = [contextCopy bundleIDs];
    v67 = [v25 setWithArray:bundleIDs2];
LABEL_20:

    goto LABEL_25;
  }

  if (([contextCopy internal] & 1) == 0)
  {
    clientBundleID4 = [contextCopy clientBundleID];
    v28 = clientBundleID4 == 0;

    if (!v28)
    {
      v29 = MEMORY[0x277CBEB98];
      bundleIDs2 = [contextCopy clientBundleID];
      v67 = [v29 setWithObject:bundleIDs2];
      goto LABEL_20;
    }
  }

  v67 = 0;
LABEL_25:
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke;
  v124[3] = &unk_2789366A0;
  v70 = v24;
  v125 = v70;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v69 forQueryWithContext:contextCopy forBundleIds:v67 inferSpecialIndexes:v21 block:v124];
  if ([v70 count])
  {
    live = [contextCopy live];
    v31 = off_2789335D0;
    if (!live)
    {
      v31 = off_2789335D8;
    }

    v32 = [objc_alloc(*v31) initWithQueryString:stringCopy queryContext:contextCopy];
    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v34 = v70;
    v35 = [v34 countByEnumeratingWithState:&v120 objects:v126 count:16];
    if (v35)
    {
      v36 = *v121;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v121 != v36)
          {
            objc_enumerationMutation(v34);
          }

          knownClients = [*(*(&v120 + 1) + 8 * i) knownClients];
          [v33 unionSet:knownClients];
        }

        v35 = [v34 countByEnumeratingWithState:&v120 objects:v126 count:16];
      }

      while (v35);
    }

    [v32 setKnownBundleIds:v33];
    clientBundleID5 = [contextCopy clientBundleID];
    v40 = self->_indexQueue;
    objectEnumerator = [v34 objectEnumerator];
    v60 = [v34 count];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v128 = 0;
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x2020000000;
    v119[3] = 0;
    v118[0] = 0;
    v118[1] = v118;
    v118[2] = 0x2020000000;
    v118[3] = 0;
    v117[0] = 0;
    v117[1] = v117;
    v117[2] = 0x2020000000;
    v117[3] = 0;
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2447;
    v110[3] = &unk_278936898;
    v41 = v40;
    v111 = v41;
    v42 = v32;
    v112 = v42;
    v43 = clientBundleID5;
    v113 = v43;
    v114 = v119;
    v115 = v118;
    v116 = v117;
    v63 = [v110 copy];
    if (s_last_memory_pressure_status == 1)
    {
      v44 = 0;
      live2 = 0;
    }

    else if ([contextCopy maxCount] || objc_msgSend(contextCopy, "maxRankedResultCount"))
    {
      v44 = 0;
      live2 = 0;
    }

    else
    {
      live2 = [contextCopy live];
      v44 = 1;
    }

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2449;
    v100[3] = &unk_2789368C0;
    v47 = v41;
    v101 = v47;
    v102 = contextCopy;
    v48 = v66;
    v105 = v48;
    v106 = v117;
    v108 = v60;
    v49 = v42;
    v109 = live2;
    v103 = v49;
    v107 = v119;
    v50 = v43;
    v104 = v50;
    v51 = [v100 copy];
    objc_initWeak(&location, v49);
    if (v44)
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452;
      v87[3] = &unk_2789368E8;
      objc_copyWeak(&v97, &location);
      v88 = v47;
      v94 = v119;
      v95 = buf;
      v89 = objectEnumerator;
      v91 = v63;
      v92 = handlerCopy;
      v52 = v51;
      v98 = v61;
      v93 = v52;
      v96 = v118;
      v90 = v50;
      v53 = MEMORY[0x2383760E0](v87);

      objc_destroyWeak(&v97);
      objc_destroyWeak(&location);
    }

    else
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2453;
      v75[3] = &unk_2789368E8;
      objc_copyWeak(&v85, &location);
      v76 = v47;
      v82 = v119;
      v83 = buf;
      v77 = objectEnumerator;
      v79 = v63;
      v80 = handlerCopy;
      v54 = v51;
      v86 = v61;
      v81 = v54;
      v84 = v118;
      v78 = v50;
      v53 = MEMORY[0x2383760E0](v75);

      objc_destroyWeak(&v85);
      objc_destroyWeak(&location);
    }

    [v49 setWillAsyncStart:{0, v60}];
    [v49 setScheduleBlock:v53];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2454;
    v71[3] = &unk_278936910;
    v55 = v47;
    v72 = v55;
    v73 = v48;
    v74 = v64;
    [v49 setCompletionBlock:v71];
    v56 = v74;
    v46 = v49;

    _Block_object_dispose(v117, 8);
    _Block_object_dispose(v118, 8);
    _Block_object_dispose(v119, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v33 = logForCSLogCategoryDefault(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SPCoreSpotlightIndexer _taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
    }

    v46 = 0;
  }

  return v46;
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 index] || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_indexPath"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:isDirectory:", v5, 0), v5, v4, (v6 & 1) != 0))
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v8 = logForCSLogCategoryIndex(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 _indexPath];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "*warn* Skipped nil indexer because index path %@ doesn't exist.", &v10, 0xCu);
    }
  }
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2447(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (!v7)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    ++*(*(*(a1 + 64) + 8) + 24);
    ++*(*(*(a1 + 72) + 8) + 24);
    if (!a3)
    {
LABEL_12:
      [*(a1 + 40) schedule];
      goto LABEL_13;
    }

    v12 = logForCSLogCategoryIndex(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) queryID];
      v13 = *(a1 + 48);
      v23 = 67109634;
      *v24 = v14;
      *&v24[4] = 2112;
      *&v24[6] = v8;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "*warn* Index not available task:%d, dataclass:%@, bundleID:%@", &v23, 0x1Cu);
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = [*(a1 + 40) addJob:v7];
  if (!v10)
  {
    v12 = logForCSLogCategoryQuery([v7 cancel]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 40) queryID];
      v20 = v19;
      v21 = [v7 dataclass];
      v22 = *(a1 + 48);
      v23 = 134218754;
      *v24 = v7;
      *&v24[8] = 1024;
      *&v24[10] = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_debug_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEBUG, "Canceled job:%p, task:%d, dataclass:%@, bundleID:%@", &v23, 0x26u);
    }

    goto LABEL_11;
  }

  v11 = logForCSLogCategoryQuery(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 40) queryID];
    v16 = v15;
    v17 = [v7 dataclass];
    v18 = *(a1 + 48);
    v23 = 134218754;
    *v24 = v7;
    *&v24[8] = 1024;
    *&v24[10] = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    _os_log_debug_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEBUG, "Started job:%p, task:%d, dataclass:%@, bundleID:%@", &v23, 0x26u);
  }

LABEL_13:
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2449(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (!v11)
  {
    __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2449_cold_1();
  }

  v12 = v11;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      v23 = *(a1 + 64);
      v24 = [v12 dataclass];
      (*(v23 + 16))(v23, a3, a4, a5, a6, v24);

      goto LABEL_20;
    }

    if (![*(a1 + 40) priorityIndexQuery])
    {
      goto LABEL_9;
    }

    v13 = [v12 dataclass];
    if ([v13 isEqual:@"Priority"])
    {
      v14 = [*(a1 + 40) live];

      if (v14)
      {
LABEL_9:
        ++*(*(*(a1 + 80) + 8) + 24);
        v16 = logForCSLogCategoryQuery([*(a1 + 48) removeJob:v12]);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 48);
          v26 = [v12 dataclass];
          v27 = *(a1 + 56);
          v28 = 134218754;
          v29 = v12;
          v30 = 2048;
          v31 = v25;
          v32 = 2112;
          v33 = v26;
          v34 = 2112;
          v35 = v27;
          _os_log_debug_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEBUG, "Finished job:%p, task:%p, dataclass:%@, bundleID:%@", &v28, 0x2Au);
        }

LABEL_18:
        [*(a1 + 48) schedule];
        goto LABEL_20;
      }

      v15 = *(a1 + 64);
      v13 = [v12 dataclass];
      (*(v15 + 16))(v15, 2, 0, 0, 0, v13);
    }

    goto LABEL_9;
  }

  v17 = *(a1 + 64);
  v18 = [v12 dataclass];
  (*(v17 + 16))(v17, 2, a4, a5, a6, v18);

  if (++*(*(*(a1 + 72) + 8) + 24) == *(a1 + 88))
  {
    v19 = (*(*(a1 + 64) + 16))();
    v20 = logForCSLogCategoryQuery(v19);
    v21 = [*(a1 + 48) queryID];
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
      if (os_signpost_enabled(v20))
      {
        LOWORD(v28) = 0;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v20, OS_SIGNPOST_INTERVAL_END, v22, "SPCoreSpotlightLatency", &unk_231AF625D, &v28, 2u);
      }
    }
  }

  if (*(a1 + 96) == 1)
  {
    goto LABEL_18;
  }

LABEL_20:
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = logForCSLogCategoryQuery(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452_cold_1();
  }

  if (([WeakRetained canceled] & 1) == 0)
  {
    v5 = [*(a1 + 40) nextObject];
    if (v5)
    {
      v6 = v5;
      ++*(*(*(a1 + 88) + 8) + 24);
      [v5 startQueryWithQueryTask:WeakRetained startHandler:*(a1 + 56) eventHandler:*(a1 + 64) resultsHandler:*(a1 + 72)];
LABEL_18:

      goto LABEL_19;
    }
  }

  if (([WeakRetained willAsyncStart] & 1) == 0 && objc_msgSend(WeakRetained, "siQuery"))
  {
    [WeakRetained siQuery];
    SIQueryRelease();
    [WeakRetained setSiQuery:0];
  }

  if (([WeakRetained finished] & 1) == 0 && *(*(*(a1 + 80) + 8) + 24) == *(*(*(a1 + 88) + 8) + 24))
  {
    if ((*(a1 + 112) & 1) != 0 || !*(*(*(a1 + 96) + 8) + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC2380] code:-2001 userInfo:0];
    }

    v7 = logForCSLogCategoryQuery([WeakRetained finishWithError:v6]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(*(a1 + 80) + 8) + 24);
      v9 = *(*(*(a1 + 96) + 8) + 24);
      v10 = *(a1 + 48);
      v11 = 134218754;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      v15 = 2048;
      v16 = WeakRetained;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "Finished all jobs(%ld,%ld), task:%p bundleID:%@", &v11, 0x2Au);
    }

    goto LABEL_18;
  }

LABEL_19:
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2453(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = logForCSLogCategoryQuery(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452_cold_1();
  }

  if (([WeakRetained canceled] & 1) == 0)
  {
    v5 = 0;
    do
    {
      v6 = [*(a1 + 40) nextObject];

      if (!v6)
      {
        break;
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      [v6 startQueryWithQueryTask:WeakRetained startHandler:*(a1 + 56) eventHandler:*(a1 + 64) resultsHandler:*(a1 + 72)];
      v5 = v6;
    }

    while (![WeakRetained canceled]);
  }

  if (([WeakRetained willAsyncStart] & 1) == 0 && objc_msgSend(WeakRetained, "siQuery"))
  {
    [WeakRetained siQuery];
    SIQueryRelease();
    [WeakRetained setSiQuery:0];
  }

  if (([WeakRetained finished] & 1) == 0 && *(*(*(a1 + 80) + 8) + 24) == *(*(*(a1 + 88) + 8) + 24))
  {
    if ((*(a1 + 112) & 1) != 0 || !*(*(*(a1 + 96) + 8) + 24))
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC2380] code:-2001 userInfo:0];
    }

    v8 = logForCSLogCategoryQuery([WeakRetained finishWithError:v7]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(*(a1 + 80) + 8) + 24);
      v10 = *(*(*(a1 + 96) + 8) + 24);
      v11 = *(a1 + 48);
      v12 = 134218754;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = WeakRetained;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEBUG, "Finished all jobs(%ld,%ld), task:%p bundleID:%@", &v12, 0x2Au);
    }
  }
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2454(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)taskForQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v17 = logForCSLogCategoryDefault(completionHandlerCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v19 = logForCSLogCategoryDefault(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  rankingType = [contextCopy rankingType];
  if ((_os_feature_enabled_impl() & 1) != 0 || rankingType != 1)
  {
    v21 = [(SPCoreSpotlightIndexer *)self _taskForQueryWithQueryString:stringCopy queryContext:contextCopy eventHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v21 = [sDelegate taskForTopHitQueryWithQueryString:stringCopy queryContext:contextCopy eventHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];
  }

  v22 = v21;

  return v22;
}

- (void)startQueryTask:(id)task
{
  taskCopy = task;
  v4 = logForCSLogCategoryDefault(taskCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQueryTask:];
  }

  if (taskCopy)
  {
    v5 = sIndexQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke;
    v7[3] = &unk_278934050;
    v8 = taskCopy;
    v6 = _setup_block(v7, [v8 critical], 17971);
    dispatch_async(v5, v6);
  }
}

uint64_t __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke_cold_1();
  }

  return [*(a1 + 32) start];
}

- (id)_startQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  resultsHandlerCopy = resultsHandler;
  handlerCopy = handler;
  contextCopy = context;
  stringCopy = string;
  v17 = logForCSLogCategoryDefault(stringCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = [(SPCoreSpotlightIndexer *)self _taskForQueryWithQueryString:stringCopy queryContext:contextCopy eventHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  [(SPCoreSpotlightIndexer *)self startQueryTask:v18];

  return v18;
}

- (id)startQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  resultsHandlerCopy = resultsHandler;
  handlerCopy = handler;
  contextCopy = context;
  stringCopy = string;
  v17 = logForCSLogCategoryDefault(stringCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = [(SPCoreSpotlightIndexer *)self taskForQueryWithQueryString:stringCopy queryContext:contextCopy eventHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  [(SPCoreSpotlightIndexer *)self startQueryTask:v18];

  return v18;
}

- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  resultsHandlerCopy = resultsHandler;
  handlerCopy = handler;
  contextCopy = context;
  stringCopy = string;
  v17 = logForCSLogCategoryDefault(stringCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer taskForTopHitQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:];
  }

  v18 = [(SPCoreSpotlightIndexer *)self _taskForQueryWithQueryString:stringCopy queryContext:contextCopy eventHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  return v18;
}

- (id)startQuery:(id)query withContext:(id)context eventHandler:(id)handler handler:(id)a6
{
  v10 = a6;
  handlerCopy = handler;
  contextCopy = context;
  queryCopy = query;
  v14 = logForCSLogCategoryDefault(queryCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQuery:withContext:eventHandler:handler:];
  }

  v15 = [(SPCoreSpotlightIndexer *)self _startQueryWithQueryString:queryCopy queryContext:contextCopy eventHandler:handlerCopy resultsHandler:v10 completionHandler:0];

  return v15;
}

- (id)startQuery:(id)query withContext:(id)context handler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  queryCopy = query;
  v11 = logForCSLogCategoryDefault(queryCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer startQuery:withContext:eventHandler:handler:];
  }

  v12 = [(SPCoreSpotlightIndexer *)self _startQueryWithQueryString:queryCopy queryContext:contextCopy eventHandler:0 resultsHandler:handlerCopy completionHandler:0];

  return v12;
}

+ (id)_mergedTokenRewrites:(id)rewrites
{
  v42 = *MEMORY[0x277D85DE8];
  rewritesCopy = rewrites;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB58] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = rewritesCopy;
  v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v26)
  {
    v25 = *v37;
    do
    {
      v5 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        v6 = *(*(&v36 + 1) + 8 * v5);
        originalToken = [v6 originalToken];
        v8 = [dictionary objectForKeyedSubscript:originalToken];

        v29 = v8;
        if (!v8)
        {
          array = [MEMORY[0x277CBEB18] array];
          originalToken2 = [v6 originalToken];
          v29 = array;
          [dictionary setObject:array forKeyedSubscript:originalToken2];
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        variations = [v6 variations];
        v12 = [variations countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(variations);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              v17 = MEMORY[0x277CCACA8];
              originalToken3 = [v6 originalToken];
              variation = [v16 variation];
              v20 = [v17 stringWithFormat:@"%@/%@/%ld", originalToken3, variation, objc_msgSend(v16, "type")];

              if (([v4 containsObject:v20] & 1) == 0)
              {
                [v4 addObject:v20];
                [v29 addObject:v16];
              }
            }

            v13 = [variations countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v13);
        }

        v5 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v26);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke;
  v30[3] = &unk_278936938;
  v22 = array2;
  v31 = v22;
  [dictionary enumerateKeysAndObjectsUsingBlock:v30];

  return v22;
}

void __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v5 variations:v6];
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v8 = logForCSLogCategoryDefault(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke_cold_1(v5);
    }
  }
}

- (void)rewriteQueryWithQueryString:(id)string context:(id)context matchInfo:(id)info rewriteHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  infoCopy = info;
  queryID = [contextCopy queryID];
  rankingType = [contextCopy rankingType];
  v15 = rankingType;
  v16 = logForCSLogCategoryDefault(rankingType);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v38 = CSRedactString(stringCopy, 0);
    v39 = v38;
    v40 = @"NO";
    *buf = 134218498;
    v61 = queryID;
    v62 = 2112;
    if (v15 == 1)
    {
      v40 = @"YES";
    }

    v63 = v38;
    v64 = 2112;
    v65 = v40;
    _os_log_debug_impl(&dword_231A35000, v16, OS_LOG_TYPE_DEBUG, "[qid=%ld][rewrite] rewriteQueryWithQueryString=%@ top_hit=%@", buf, 0x20u);
  }

  v17 = [SPConcreteCoreSpotlightIndexer _tokensMaxCountFromMatchInfo:infoCopy];

  userQuery = [contextCopy userQuery];
  v19 = [SPConcreteCoreSpotlightIndexer _setOfTokensToCorrect:userQuery tokenMatchInfo:v17];

  v20 = v19;
  v42 = queryID;
  v21 = [SPConcreteCoreSpotlightIndexer _indexIndependentTokenRewritesWithMatchInfo:v17 queryID:queryID setOfTokensToCorrect:v19];
  protectionClasses = [contextCopy protectionClasses];
  if (![protectionClasses count])
  {
    allProtectionClasses = [objc_opt_class() allProtectionClasses];

    protectionClasses = allProtectionClasses;
  }

  array = [MEMORY[0x277CBEB18] array];
  group = dispatch_group_create();
  bundleIDs = [contextCopy bundleIDs];
  if (![bundleIDs count])
  {

    v34 = group;
    goto LABEL_8;
  }

  [contextCopy bundleIDs];
  v25 = v41 = stringCopy;
  [v25 objectAtIndexedSubscript:0];
  v26 = contextCopy;
  v27 = protectionClasses;
  v28 = v17;
  selfCopy = self;
  v30 = v21;
  v32 = v31 = v20;
  v33 = [v32 isEqualToString:@"com.apple.mobileslideshow"];

  v20 = v31;
  v21 = v30;
  self = selfCopy;
  v17 = v28;
  protectionClasses = v27;
  contextCopy = v26;

  stringCopy = v41;
  v34 = group;
  if ((v33 & 1) == 0)
  {
LABEL_8:
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke;
    v53[3] = &unk_278936988;
    v54 = v34;
    v55 = stringCopy;
    v56 = contextCopy;
    v57 = v17;
    v58 = v20;
    v59 = array;
    [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:protectionClasses block:v53];
  }

  if (handlerCopy)
  {
    v35 = qos_class_self();
    v36 = dispatch_get_global_queue(v35, 2uLL);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_4;
    v46[3] = &unk_2789369B0;
    v47 = array;
    v48 = v21;
    v49 = contextCopy;
    v52 = v42;
    v51 = handlerCopy;
    v50 = stringCopy;
    v37 = _setup_block(v46, 0, 18128);
    dispatch_group_notify(group, v36, v37);

    v34 = group;
  }
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_2;
  v13[3] = &unk_278936960;
  v14 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v17 = *(a1 + 72);
  v18 = *(a1 + 32);
  v11 = v3;
  v12 = _setup_block(v13, 0, 18105);
  dispatch_async(v4, v12);
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_3;
  v7[3] = &unk_278934E90;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  [v2 indexDependentTokenRewritesWithQueryString:v3 context:v4 matchInfo:v5 setOfTokensToCorrect:v6 tokenRewritesHandler:v7];
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __87__SPCoreSpotlightIndexer_rewriteQueryWithQueryString_context_matchInfo_rewriteHandler___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v3 = [SPCoreSpotlightIndexer _mergedTokenRewrites:v2];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) variations];
        [v8 count];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 48) privateQuery];
  if ((v9 & 1) == 0)
  {
    v10 = logForCSLogCategoryDefault(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 72);
      v12 = [SPConcreteCoreSpotlightIndexer _descriptionWithTokenRewrites:v3];
      *buf = 134218242;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "[rewrite] qid:%ld ### Final rewrites: %@", buf, 0x16u);
    }
  }

  if ([v3 count])
  {
    v13 = [*(a1 + 48) copy];
    v14 = [objc_alloc(MEMORY[0x277D286B0]) initWithRewrittenTokens:v3];
    [v13 setRewriteContext:v14];

    v15 = [objc_alloc(MEMORY[0x277D286A8]) initWithSearchQueryString:*(a1 + 56) searchQueryContext:v13 score:0.0];
    v16 = *(a1 + 64);
    v22 = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    (*(v16 + 16))(v16, v17, 0);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (id)dateRewritesFromContext:(id)context
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  queryUnderstandingOutput = [contextCopy queryUnderstandingOutput];
  v5 = [queryUnderstandingOutput objectForKeyedSubscript:@"kQPQUOutputTokenInfo"];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v35 = queryUnderstandingOutput;
    v36 = contextCopy;
    v8 = 0;
    v9 = *v49;
    v37 = *v49;
    v38 = v5;
    do
    {
      v10 = 0;
      v11 = v8;
      v39 = v7;
      do
      {
        if (*v49 != v9)
        {
          v12 = v10;
          objc_enumerationMutation(v5);
          v10 = v12;
        }

        v41 = v10;
        v13 = *(*(&v48 + 1) + 8 * v10);
        v8 = [v13 objectForKeyedSubscript:@"kQPQUOutputToken"];
        v14 = [v13 objectForKeyedSubscript:@"kQPQUOutputTokenArgLabels"];
        v47 = 0;
        v40 = v14;
        if ([v14 containsObject:@"ARG_TIME"])
        {
          v15 = +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
          v16 = [v15 generateDateSynonymsFromToken:v8 previousToken:v11 isOrdinalToken:&v47];

          if (v16 && [v16 count])
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v43 objects:v57 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v44;
              do
              {
                v21 = 0;
                do
                {
                  if (*v44 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v43 + 1) + 8 * v21);
                  v23 = logForCSLogCategoryDefault(v18);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    v24 = CSRedactString(v8, 1);
                    v25 = CSRedactString(v22, 1);
                    *buf = 138412546;
                    v54 = v24;
                    v55 = 2112;
                    v56 = v25;
                    _os_log_impl(&dword_231A35000, v23, OS_LOG_TYPE_INFO, "[rewrite] [first pass] adding date synonym = %@ for token = %@", buf, 0x16u);
                  }

                  v26 = objc_alloc(MEMORY[0x277D286C0]);
                  LODWORD(v27) = 1050253722;
                  v28 = [v26 initWithVariation:v22 type:4 confidence:v27];
                  if (v11 && v47 == 1)
                  {
                    v29 = [v11 stringByAppendingString:v8];
                  }

                  else
                  {
                    v29 = v8;
                  }

                  v30 = v29;
                  v31 = objc_alloc(MEMORY[0x277D286B8]);
                  v52 = v28;
                  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
                  v33 = [v31 initWithOriginalToken:v30 variations:v32];

                  [array addObject:v33];
                  ++v21;
                }

                while (v19 != v21);
                v18 = [v17 countByEnumeratingWithState:&v43 objects:v57 count:16];
                v19 = v18;
              }

              while (v18);
            }

            v5 = v38;
            v7 = v39;
            v9 = v37;
          }

          else
          {
            v17 = v11;
            v11 = v16;
          }
        }

        v10 = v41 + 1;
        v11 = v8;
      }

      while (v41 + 1 != v7);
      v7 = [v5 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v7);

    queryUnderstandingOutput = v35;
    contextCopy = v36;
  }

  return array;
}

- (void)processSearchString:(id)string intoTrimmedString:(id *)trimmedString andTokens:(id *)tokens
{
  v7 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceCharacterSet = [v7 whitespaceCharacterSet];
  v10 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  lowercaseString = [v10 lowercaseString];

  if (processSearchString_intoTrimmedString_andTokens__onceToken != -1)
  {
    [SPCoreSpotlightIndexer processSearchString:intoTrimmedString:andTokens:];
  }

  v11 = [processSearchString_intoTrimmedString_andTokens__regex stringByReplacingMatchesInString:lowercaseString options:0 range:0 withTemplate:{objc_msgSend(lowercaseString, "length"), &stru_2846BD100}];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v13 = [v11 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (trimmedString)
  {
    v14 = v11;
    *trimmedString = v11;
  }

  if (tokens)
  {
    v15 = v13;
    *tokens = v13;
  }
}

uint64_t __74__SPCoreSpotlightIndexer_processSearchString_intoTrimmedString_andTokens___block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[?!\\. options:\\-\\+\\*:\\]\\[]+$" error:{0, 0}];;
  v1 = processSearchString_intoTrimmedString_andTokens__regex;
  processSearchString_intoTrimmedString_andTokens__regex = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)rewriteFirstPassQueryWithQueryString:(id)string context:(id)context trimmedSearchStringTokens:(id)tokens populateDateSynonyms:(BOOL)synonyms
{
  synonymsCopy = synonyms;
  v61 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  tokensCopy = tokens;
  v13 = tokensCopy;
  if (tokensCopy && (tokensCopy = [tokensCopy count]) != 0)
  {
    v36 = synonymsCopy;
    selfCopy = self;
    v38 = contextCopy;
    v39 = stringCopy;
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v37 = v13;
    obj = v13;
    v43 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v43)
    {
      v42 = *v52;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          v16 = +[SPConcreteCoreSpotlightIndexer _sharedSynonyms];
          v46 = v15;
          v17 = [v16 getFirstPassSynonymsForWord:v15];

          if (v17)
          {
            v45 = i;
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v44 = v17;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v48;
              do
              {
                v23 = 0;
                do
                {
                  if (*v48 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v47 + 1) + 8 * v23);
                  v25 = logForCSLogCategoryDefault(v20);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = CSRedactString(v46, 1);
                    v27 = CSRedactString(v24, 1);
                    *buf = 138412546;
                    v56 = v26;
                    v57 = 2112;
                    v58 = v27;
                    _os_log_impl(&dword_231A35000, v25, OS_LOG_TYPE_INFO, "[rewrite] [first pass] adding synonym = %@ for token = %@", buf, 0x16u);
                  }

                  v28 = objc_alloc(MEMORY[0x277D286C0]);
                  LODWORD(v29) = 1050253722;
                  v30 = [v28 initWithVariation:v24 type:4 confidence:v29];
                  [v18 addObject:v30];

                  ++v23;
                }

                while (v21 != v23);
                v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
                v21 = v20;
              }

              while (v20);
            }

            if ([v18 count])
            {
              v31 = [objc_alloc(MEMORY[0x277D286B8]) initWithOriginalToken:v46 variations:v18];
              [v40 addObject:v31];
            }

            v17 = v44;
            i = v45;
          }
        }

        v43 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v43);
    }

    contextCopy = v38;
    v32 = v40;
    if (v36)
    {
      v33 = [(SPCoreSpotlightIndexer *)selfCopy dateRewritesFromContext:v38];
      [v40 addObjectsFromArray:v33];
    }

    v34 = [objc_alloc(MEMORY[0x277D286B0]) initWithRewrittenTokens:v40];
    [v38 setRewriteContext:v34];

    stringCopy = v39;
    v13 = v37;
  }

  else
  {
    v32 = logForCSLogCategoryDefault(tokensCopy);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v32, OS_LOG_TYPE_INFO, "[rewrite] [first pass] skipping first pass rewrite due to invalid trimmedSearchStringTokens", buf, 2u);
    }
  }
}

- (void)reindexAllItemsWithIndexers:(id)indexers reason:(id)reason completionHandler:(id)handler
{
  indexersCopy = indexers;
  reasonCopy = reason;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (sPrivate == 1)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy);
    }
  }

  else
  {
    dataMigrationStage = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
    reindexAllQueue = [(SPCoreSpotlightIndexer *)self reindexAllQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke;
    v15[3] = &unk_278936A28;
    v15[4] = self;
    v16 = indexersCopy;
    v17 = reasonCopy;
    v19 = dataMigrationStage;
    v18 = v11;
    v14 = _setup_block(v15, 0, 18299);
    dispatch_async(reindexAllQueue, v14);
  }
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reindexAllQueue];
  dispatch_suspend(v2);

  v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = dispatch_group_create();
  v34 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:2];
  v4 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v50 + 1) + 8 * i) dataclass];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v7);
  }

  [v34 setProtectionClasses:v4];
  if (*(a1 + 48))
  {
    v11 = *(a1 + 48);
  }

  else
  {
    v11 = @"triggered by [SPCoreSpotlightIndexer reindexAllItemsWithIndexers:...]";
  }

  [v34 setReason:v11];
  v12 = *MEMORY[0x277CCA1A0];
  if ([v4 containsObject:*MEMORY[0x277CCA1A0]])
  {
    _sendPhotosReindexABCReport(@"Reindex all class C");
  }

  v13 = [*(a1 + 32) concreteIndexers];
  v14 = [v13 objectForKeyedSubscript:@"MobileMailIndex"];

  v15 = [*(a1 + 32) concreteIndexers];
  v16 = [v15 objectForKeyedSubscript:v12];

  if (sUseMailIndex == 1 && ([*(a1 + 40) containsObject:v14] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v16) & 1) == 0)
  {
    [v34 setExcludedBundleIDs:&unk_2846C93B0];
  }

  v30 = v14;
  v31 = v4;
  v17 = [[SPCoreSpotlightIndexerTask alloc] initWithIndexJob:v34 indexers:*(a1 + 40)];
  [(SPCoreSpotlightIndexerTask *)v17 setDataMigrationStage:*(a1 + 64)];
  [(SPCoreSpotlightIndexerTask *)v17 setShouldResumeOnFailure:1];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 40);
  v18 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v47;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v46 + 1) + 8 * j);
        dispatch_group_enter(v3);
        v23 = sIndexQueue;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2;
        v41[3] = &unk_278934310;
        v41[4] = v22;
        v42 = v17;
        v43 = v34;
        v44 = v33;
        v45 = v3;
        v24 = _setup_block(v41, 0, 18280);
        dispatch_async(v23, v24);
      }

      v19 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v19);
  }

  v25 = sIndexQueue;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2489;
  v35[3] = &unk_278936A00;
  v36 = v17;
  v37 = v33;
  v26 = *(a1 + 40);
  v38 = *(a1 + 32);
  v39 = v26;
  v40 = *(a1 + 56);
  v27 = v33;
  v28 = v17;
  v29 = _setup_block(v35, 0, 18298);
  dispatch_group_notify(v3, v25, v29);
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) startReindexAll];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_3;
  v7[3] = &unk_2789369D8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  [v3 fetchAllCompletedBundleIDsForIndexerTask:v4 completionHandler:v7];

  objc_autoreleasePoolPop(v2);
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = logForCSLogCategoryIndex(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) jobType];
      v7 = [*(a1 + 40) dataclass];
      v9 = 134218498;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Found already completed bundleIDs from a previously failed job (%ld), dataclass:%@, completedBundleIDs:%@", &v9, 0x20u);
    }

    v8 = *(a1 + 48);
    objc_sync_enter(v8);
    [*(a1 + 48) addObjectsFromArray:v3];
    objc_sync_exit(v8);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2489(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) allObjects];
  [*(a1 + 32) setCompletedBundleIDs:v2];

  v4 = logForCSLogCategoryIndex(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) completedBundleIDs];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Reindexing all items, completedBundleIDs:%@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2490;
  v10[3] = &unk_278934F08;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  v13 = *(a1 + 64);
  [v7 performIndexerTask:v6 completionHandler:v10];
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2490(uint64_t a1)
{
  v2 = sIndexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2_2491;
  v7[3] = &unk_278934F08;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = _setup_block(v7, 0, 18296);
  dispatch_async(v2, v6);
}

void __79__SPCoreSpotlightIndexer_reindexAllItemsWithIndexers_reason_completionHandler___block_invoke_2_2491(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Done reindexing all items", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) finishReindexAll];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 40) reindexAllQueue];
  dispatch_resume(v9);

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (int)_openIndex:(BOOL)index forInit:(BOOL)init readOnly:(BOOL)only
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v11 = [v9 initWithCapacity:{objc_msgSend(concreteIndexers, "count")}];

  concreteIndexers2 = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__SPCoreSpotlightIndexer__openIndex_forInit_readOnly___block_invoke;
  v16[3] = &unk_278936A50;
  indexCopy = index;
  initCopy = init;
  onlyCopy = only;
  v16[4] = self;
  v18 = &v25;
  v19 = v23;
  v13 = v11;
  v17 = v13;
  [concreteIndexers2 enumerateKeysAndObjectsWithOptions:1 usingBlock:v16];

  if ([v13 count])
  {
    objc_storeStrong(&self->_reindexIndexers, v11);
  }

  v14 = *(v26 + 6);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  return v14;
}

void __54__SPCoreSpotlightIndexer__openIndex_forInit_readOnly___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = (*(a1 + 65) ^ 1) & *(a1 + 64);
  if ((*(a1 + 65) ^ 1) & 1) == 0 && (*(a1 + 64))
  {
    v11 = [v8 dataclass];
    if ([v11 isEqualToString:*MEMORY[0x277CCA198]])
    {
LABEL_9:

LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v12 = [v9 dataclass];
    if ([v12 isEqualToString:*MEMORY[0x277CCA1A8]])
    {
LABEL_8:

      goto LABEL_9;
    }

    v13 = [v9 dataclass];
    if ([v13 isEqualToString:@"Priority"])
    {
      if ([sDelegate managedIndex])
      {
LABEL_7:

        goto LABEL_8;
      }

      v25 = [sDelegate privateIndex];

      if (v25)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (sUseMailIndex)
      {
        v24 = [v9 dataclass];
        if ([v24 isEqualToString:@"MobileMailIndex"])
        {
          if ([sDelegate managedIndex])
          {

            goto LABEL_7;
          }

          v26 = [sDelegate privateIndex];

          if (v26)
          {
            goto LABEL_10;
          }

          goto LABEL_34;
        }
      }
    }

LABEL_34:
    v10 = 1;
  }

LABEL_11:
  v14 = [v9 openIndex:v10 & 1 shouldReindexAll:0 readOnly:*(a1 + 66)];
  if (v14 < 0)
  {
    v18 = *(a1 + 32);
    objc_sync_enter(v18);
    v19 = *(*(a1 + 48) + 8);
    if (*(v19 + 24) > v14)
    {
      *(v19 + 24) = v14;
    }

    *a4 = 1;
    objc_sync_exit(v18);
  }

  else if ([sDelegate setupHasComplete])
  {
    if (v14 == 1 || (v15 = [v9 reindexAllStarted], v15))
    {
      v16 = *(a1 + 32);
      objc_sync_enter(v16);
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(a1 + 40) addObject:v9];
      objc_sync_exit(v16);

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v20 = logForCSLogCategoryIndex(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v9 dataclass];
      v22 = v21;
      v23 = @"NO";
      if (v17)
      {
        v23 = @"YES";
      }

      v27 = 138412546;
      v28 = v21;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_INFO, "dataclass:%@, reindexAll:%@", &v27, 0x16u);
    }
  }
}

- (void)writeFileProviderBundleMap:(id)map fileProviderBundleIDs:(id)ds
{
  v23[3] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dsCopy = ds;
  if ((sPrivate & 1) == 0)
  {
    v7 = NSHomeDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"/Library/Spotlight/ExtensionsCache"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:v8] & 1) == 0)
    {
      [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v22[0] = @"v_n";
    v22[1] = @"bm_d";
    v10 = MEMORY[0x277CBEC10];
    if (mapCopy)
    {
      v11 = mapCopy;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    v23[0] = &unk_2846C95D8;
    v23[1] = v11;
    v22[2] = @"bid_d";
    allObjects = [dsCopy allObjects];
    v13 = allObjects;
    if (allObjects)
    {
      v14 = allObjects;
    }

    else
    {
      v14 = v10;
    }

    v23[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v16 = [v8 stringByAppendingPathComponent:@"fileProviderBundleMap.plist"];
    v17 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v16 append:0];
    [v17 open];
    v21 = 0;
    [MEMORY[0x277CCAC58] writePropertyList:v15 toStream:v17 format:200 options:0 error:&v21];
    v18 = v21;
    close = [v17 close];
    if (v18)
    {
      v20 = logForCSLogCategoryIndex(close);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer writeFileProviderBundleMap:fileProviderBundleIDs:];
      }
    }
  }
}

void __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Spotlight/ExtensionsCache"];

  v4 = [v3 stringByAppendingPathComponent:@"fileProviderBundleMap.plist"];
  v5 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v4];
  [v5 open];
  v34 = 0;
  v6 = [MEMORY[0x277CCAC58] propertyListWithStream:v5 options:0 format:0 error:&v34];
  v7 = v34;
  v8 = [v5 close];
  if (v7)
  {
    v9 = logForCSLogCategoryIndex(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke_cold_1();
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v9 = [v6 objectForKeyedSubscript:@"v_n"];
    if ([v9 isEqual:&unk_2846C95D8])
    {
      v10 = MEMORY[0x277CBEB98];
      v11 = [v6 objectForKeyedSubscript:@"bid_d"];
      v12 = [v10 setWithArray:v11];

      if ([v12 count])
      {
        +[SpotlightDaemonServer sharedDaemonServer];
        v14 = v13 = v12;
        [v14 updateFileProviderBundleIDs:v13];

        v12 = v13;
      }

      v15 = [v6 objectForKeyedSubscript:@"bm_d"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v4;
        v27 = v3;
        v24 = a1;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v15;
        v29 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v29)
        {
          v28 = *v31;
          v25 = v12;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              v18 = v15;
              if (*v31 != v28)
              {
                objc_enumerationMutation(v16);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v12 = v25;
                v15 = v18;
                goto LABEL_23;
              }

              v20 = v16;
              v21 = [v16 objectForKeyedSubscript:v19];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v12 = v25;
                v15 = v18;
                v16 = v20;
                goto LABEL_23;
              }

              v15 = v18;
              v16 = v20;
            }

            v12 = v25;
            v29 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong((*(v24 + 32) + 96), v15);
        v23 = *(v24 + 32);
        v16 = *(v23 + 104);
        *(v23 + 104) = 0;
LABEL_23:

        v4 = v26;
        v3 = v27;
      }
    }
  }

LABEL_5:
}

- (void)checkIfExtensionsNeedToBeLoaded
{
  if (self->_reindexIndexers)
  {
    mEMORY[0x277CC3538] = [MEMORY[0x277CC3538] sharedManager];
    [mEMORY[0x277CC3538] loadExtensions];

    [(SPCoreSpotlightIndexer *)self reindexAllItemsWithIndexers:self->_reindexIndexers reason:@"loading extensions" completionHandler:&__block_literal_global_2514];
    reindexIndexers = self->_reindexIndexers;
    self->_reindexIndexers = 0;
  }

  else
  {
    v6 = MEMORY[0x277CC34A8];

    [v6 notifyIndexDelegates];
  }
}

- (void)fileProviderActiveProvidersChanged:(id)changed
{
  v46 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = MEMORY[0x277CBEB98];
  v35 = changedCopy;
  allKeys = [changedCopy allKeys];
  v34 = [v5 setWithArray:allKeys];

  if ([v35 count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    [(SPCoreSpotlightIndexer *)selfCopy fileProviderInfoSetup];
    location = &selfCopy->_fileProviderAppToExtensionBundleMap;
    v8 = selfCopy->_fileProviderAppToExtensionBundleMap;
    if ([(NSDictionary *)v8 count])
    {
      v9 = objc_opt_new();
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v10 = v35;
      v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v11)
      {
        v12 = *v41;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            v15 = [(NSDictionary *)v8 objectForKeyedSubscript:v14];
            v16 = [v10 objectForKeyedSubscript:v14];
            v17 = [v15 isEqualToString:v16];

            if ((v17 & 1) == 0)
            {
              [v9 addObject:v14];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v11);
      }

      if ([v9 count])
      {
        v18 = [v10 mutableCopy];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v19 = v9;
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v20)
        {
          v21 = *v37;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v36 + 1) + 8 * j);
              v24 = [v10 objectForKeyedSubscript:v23];
              [v18 setObject:v24 forKeyedSubscript:v23];
            }

            v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v20);
        }

        v25 = *location;
        *location = v18;
        v26 = v18;

        v27 = *location;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      objc_storeStrong(location, changed);
      v27 = *location;
    }

    objc_sync_exit(obj);
  }

  else
  {
    v27 = 0;
  }

  if ([v35 count] || objc_msgSend(v34, "count"))
  {
    fileProviderExtensionToAppBundleMap = self->_fileProviderExtensionToAppBundleMap;
    self->_fileProviderExtensionToAppBundleMap = 0;

    if ([v34 count])
    {
      objc_storeStrong(&self->_fileProviderBundleIDs, v34);
      v29 = +[SpotlightDaemonServer sharedDaemonServer];
      [v29 updateFileProviderBundleIDs:v34];
    }

    fileProviderAppToExtensionBundleMap = v27;
    if (!v27)
    {
      fileProviderAppToExtensionBundleMap = self->_fileProviderAppToExtensionBundleMap;
    }

    [(SPCoreSpotlightIndexer *)self writeFileProviderBundleMap:fileProviderAppToExtensionBundleMap fileProviderBundleIDs:self->_fileProviderBundleIDs];
  }
}

- (NSDictionary)fileProviderAppToExtensionBundleMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SPCoreSpotlightIndexer *)selfCopy fileProviderInfoSetup];
  v3 = selfCopy->_fileProviderAppToExtensionBundleMap;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDictionary)fileProviderExtensionToAppBundleMap
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SPCoreSpotlightIndexer *)selfCopy fileProviderInfoSetup];
  fileProviderExtensionToAppBundleMap = selfCopy->_fileProviderExtensionToAppBundleMap;
  if (!fileProviderExtensionToAppBundleMap)
  {
    fileProviderAppToExtensionBundleMap = selfCopy->_fileProviderAppToExtensionBundleMap;
    if (fileProviderAppToExtensionBundleMap)
    {
      v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](fileProviderAppToExtensionBundleMap, "count")}];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = selfCopy->_fileProviderAppToExtensionBundleMap;
      v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = [(NSDictionary *)selfCopy->_fileProviderAppToExtensionBundleMap objectForKeyedSubscript:v10, v15];
            [(NSDictionary *)v5 setObject:v10 forKeyedSubscript:v11];
          }

          v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v12 = selfCopy->_fileProviderExtensionToAppBundleMap;
      selfCopy->_fileProviderExtensionToAppBundleMap = v5;

      fileProviderExtensionToAppBundleMap = selfCopy->_fileProviderExtensionToAppBundleMap;
    }

    else
    {
      fileProviderExtensionToAppBundleMap = 0;
    }
  }

  v13 = fileProviderExtensionToAppBundleMap;
  objc_sync_exit(selfCopy);

  return v13;
}

- (BOOL)isForegroundFileProviderBundleID:(id)d
{
  dCopy = d;
  if (dCopy && (v5 = self, objc_sync_enter(v5), [(SPCoreSpotlightIndexer *)v5 fileProviderInfoSetup], v6 = [(NSSet *)v5->_fileProviderBundleIDs containsObject:dCopy], objc_sync_exit(v5), v5, v6))
  {
    v7 = [MEMORY[0x277CC6428] isProviderIDForeground:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)asyncOpenIndex:(BOOL)index forInit:(BOOL)init readOnly:(BOOL)only
{
  indexQueue = self->_indexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SPCoreSpotlightIndexer_asyncOpenIndex_forInit_readOnly___block_invoke;
  v7[3] = &unk_278936A78;
  v7[4] = self;
  indexCopy = index;
  initCopy = init;
  onlyCopy = only;
  v6 = _setup_block(v7, 0, 18823);
  dispatch_async(indexQueue, v6);
}

- (int)openIndex:(BOOL)index forInit:(BOOL)init readOnly:(BOOL)only
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPCoreSpotlightIndexer_openIndex_forInit_readOnly___block_invoke;
  block[3] = &unk_278936AA0;
  block[4] = self;
  block[5] = &v12;
  indexCopy = index;
  initCopy = init;
  onlyCopy = only;
  dispatch_sync(indexQueue, block);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void *__53__SPCoreSpotlightIndexer_openIndex_forInit_readOnly___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _openIndex:*(a1 + 48) forInit:*(a1 + 49) readOnly:*(a1 + 50)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)writeData:(id)data toFile:(id)file
{
  dataCopy = data;
  fileCopy = file;
  [fileCopy writeData:dataCopy];

  return 1;
}

- (void)indexFromBundle:(id)bundle protectionClass:(id)class personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)self0 expectedClientState:(id)self1 clientStateName:(id)self2 deletes:(id)self3 canCreateNewIndex:(BOOL)self4 completionHandler:(id)self5
{
  v57 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  classCopy = class;
  dCopy = d;
  itemsCopy = items;
  textCopy = text;
  lCopy = l;
  stateCopy = state;
  clientStateCopy = clientState;
  nameCopy = name;
  deletesCopy = deletes;
  handlerCopy = handler;
  _checkUnlock();
  v28 = logForCSLogCategoryIndex(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v48 = bundleCopy;
    v49 = 2112;
    v50 = nameCopy;
    v51 = 2048;
    v52 = [stateCopy length];
    v53 = 2112;
    v54 = classCopy;
    v55 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v28, OS_LOG_TYPE_DEBUG, "indexFromBundle, bundleID:%@, clientState:%@/%lu, protectionClass:%@, options:0x%lx", buf, 0x34u);
  }

  v29 = itemsCopy;
  if (bundleCopy)
  {
    if (![sDelegate blocklistCheck:bundleCopy withOptions:options])
    {
      v41 = deletesCopy;
      v43 = nameCopy;
      v30 = lCopy;
      v31 = dCopy;
      if (!classCopy || (v36 = classCopy, [classCopy isEqualToString:@"Default"]))
      {
        v36 = *MEMORY[0x277CCA1A0];
      }

      v35 = v36;
      v37 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v35 andBundleID:bundleCopy];
      if (v37)
      {
        self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
        LOBYTE(v39) = 1;
        [v37 indexFromBundle:bundleCopy personaID:v31 options:options items:itemsCopy itemsText:textCopy itemsHTML:v30 clientState:stateCopy expectedClientState:clientStateCopy clientStateName:nameCopy deletes:v41 canCreateNewIndex:v39 completionHandler:handlerCopy];
      }

      else if (handlerCopy)
      {
        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        handlerCopy[2](handlerCopy, v38, 0);

        v29 = itemsCopy;
      }

      goto LABEL_18;
    }

    if (handlerCopy)
    {
      v41 = deletesCopy;
      v43 = nameCopy;
      v30 = lCopy;
      v31 = dCopy;
      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CC22E8];
      v34 = -1000;
LABEL_9:
      v35 = [v32 errorWithDomain:v33 code:v34 userInfo:0];
      handlerCopy[2](handlerCopy, v35, 0);
LABEL_18:

      dCopy = v31;
      lCopy = v30;
      nameCopy = v43;
      deletesCopy = v41;
    }
  }

  else if (handlerCopy)
  {
    v41 = deletesCopy;
    v43 = nameCopy;
    v30 = lCopy;
    v31 = dCopy;
    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CC22E8];
    v34 = -1;
    goto LABEL_9;
  }
}

- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  classCopy = class;
  identifiersCopy = identifiers;
  itemsCopy = items;
  _checkUnlock();
  [(SPCoreSpotlightIndexer *)self indexSearchableItems:itemsCopy deleteSearchableItemsWithIdentifiers:identifiersCopy clientState:0 clientStateName:0 protectionClass:classCopy forBundleID:dCopy options:options completionHandler:handlerCopy];
}

- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state expectedClientState:(id)clientState clientStateName:(id)name protectionClass:(id)class forBundleID:(id)d options:(int64_t)self0 completionHandler:(id)self1
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifiersCopy = identifiers;
  stateCopy = state;
  clientStateCopy = clientState;
  nameCopy = name;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  v23 = logForCSLogCategoryIndex(handlerCopy);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v34 = dCopy;
    v35 = 2112;
    v36 = nameCopy;
    v37 = 2048;
    v38 = [stateCopy length];
    v39 = 2112;
    v40 = classCopy;
    v41 = 2048;
    v42 = [itemsCopy count];
    v43 = 2048;
    v44 = [identifiersCopy count];
    v45 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEBUG, "indexSearchableItems, bundleID:%@, clientState:%@/%ld, protectionClass:%@, itemCount:%ld, deleteIdentifiersCount:%ld, options:0x%lx", buf, 0x48u);
  }

  _checkUnlock();
  if (dCopy)
  {
    if (![sDelegate blocklistCheck:dCopy withOptions:options])
    {
      if (!classCopy || (v27 = [classCopy isEqualToString:@"Default"], v28 = classCopy, v27))
      {
        v28 = *MEMORY[0x277CCA1A0];
      }

      v26 = v28;
      v29 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v26 andBundleID:dCopy];
      if (v29)
      {
        self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
        [v29 indexSearchableItems:itemsCopy deleteSearchableItemsWithIdentifiers:identifiersCopy clientState:stateCopy expectedClientState:clientStateCopy clientStateName:nameCopy forBundleID:dCopy options:options completionHandler:handlerCopy];
      }

      else if (handlerCopy)
      {
        v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
        handlerCopy[2](handlerCopy, v30);
      }

      goto LABEL_17;
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
LABEL_8:
    v26 = v24;
    handlerCopy[2](handlerCopy, v24);
LABEL_17:

    goto LABEL_18;
  }

  if (handlerCopy)
  {
    v25 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v25 initWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    goto LABEL_8;
  }

LABEL_18:
}

- (void)prepareIndexingWhileLocked:(id)locked protectionClass:(id)class holdAssertionFor:(double)for completionHandler:(id)handler
{
  lockedCopy = locked;
  classCopy = class;
  handlerCopy = handler;
  _checkUnlock();
  if (lockedCopy)
  {
    if ([sDelegate blocklistCheck:lockedCopy withOptions:0])
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      goto LABEL_8;
    }

    if (classCopy)
    {
      [classCopy isEqualToString:@"Default"];
    }
  }

  if (!handlerCopy)
  {
    goto LABEL_9;
  }

  v11 = objc_alloc(MEMORY[0x277CCA9B8]);
  v10 = [v11 initWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
LABEL_8:
  v12 = v10;
  handlerCopy[2](handlerCopy, v10);

LABEL_9:
}

- (void)finishIndexingWhileLocked:(id)locked protectionClass:(id)class completionHandler:(id)handler
{
  lockedCopy = locked;
  classCopy = class;
  handlerCopy = handler;
  _checkUnlock();
  if (lockedCopy)
  {
    if ([sDelegate blocklistCheck:lockedCopy withOptions:0])
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      goto LABEL_8;
    }

    if (classCopy)
    {
      [classCopy isEqualToString:@"Default"];
    }
  }

  if (!handlerCopy)
  {
    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x277CCA9B8]);
  v9 = [v10 initWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
LABEL_8:
  v11 = v9;
  handlerCopy[2](handlerCopy, v9);

LABEL_9:
}

- (void)validateIndexers:(id)indexers outFileDescriptor:(int)descriptor
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SPCoreSpotlightIndexer_validateIndexers_outFileDescriptor___block_invoke;
  v4[3] = &__block_descriptor_36_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  descriptorCopy = descriptor;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:indexers block:v4];
}

void __61__SPCoreSpotlightIndexer_validateIndexers_outFileDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 validateConcreteIndexer:0 outFileDescriptor:v3];
  [v4 validateConcreteIndexer:1 outFileDescriptor:*(a1 + 32)];
}

- (void)validateVectors:(id)vectors outFileDescriptor:(int)descriptor
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SPCoreSpotlightIndexer_validateVectors_outFileDescriptor___block_invoke;
  v4[3] = &__block_descriptor_36_e40_v16__0__SPConcreteCoreSpotlightIndexer_8l;
  descriptorCopy = descriptor;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:vectors block:v4];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d fromClient:(id)client options:(int64_t)options completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  clientCopy = client;
  handlerCopy = handler;
  _checkUnlock();
  if (!classCopy || (v17 = [classCopy isEqualToString:@"Default"], v18 = classCopy, v17))
  {
    v18 = *MEMORY[0x277CCA1A0];
  }

  v19 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v18 andBundleID:dCopy];
  if (v19)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    [v19 deleteSearchableItemsWithDomainIdentifiers:identifiersCopy forBundleID:dCopy fromClient:clientCopy reason:0 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v20);
  }
}

- (void)deleteSearchableItemsWithPersonaIds:(id)ids completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  handlerCopy = handler;
  _checkUnlock();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__0;
  v28[4] = __Block_byref_object_dispose__0;
  v29 = 0;
  v6 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  allValues = [concreteIndexers allValues];

  v9 = [allValues countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke;
        v21[3] = &unk_278934F58;
        v23 = v28;
        v22 = v6;
        [v12 deleteSearchableItemsWithPersonaIds:idsCopy completionHandler:{v21, handlerCopy}];
      }

      v9 = [allValues countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
  v13 = sIndexQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2;
  v18[3] = &unk_278936850;
  v18[4] = self;
  v14 = handlerCopy;
  v19 = v14;
  v20 = v28;
  v15 = _setup_block(v18, 0, 19077);
  dispatch_group_notify(v6, v13, v15);

  _Block_object_dispose(v28, 8);
}

void __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __80__SPCoreSpotlightIndexer_deleteSearchableItemsWithPersonaIds_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)deleteAllSearchableItemsWithBundleID:(id)d fromClient:(id)client protectionClass:(id)class shouldGC:(BOOL)c deleteAllReason:(int64_t)reason completionHandler:(id)handler
{
  cCopy = c;
  dCopy = d;
  clientCopy = client;
  classCopy = class;
  handlerCopy = handler;
  _checkUnlock();
  if (!classCopy || (v18 = [classCopy isEqualToString:@"Default"], v19 = classCopy, v18))
  {
    v19 = *MEMORY[0x277CCA1A0];
  }

  v20 = v19;
  v21 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v20 andBundleID:dCopy];
  if (v21)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    fileProviderAppToExtensionBundleMap = [(SPCoreSpotlightIndexer *)self fileProviderAppToExtensionBundleMap];
    v23 = [fileProviderAppToExtensionBundleMap objectForKey:dCopy];

    if (v23)
    {
      v24 = dispatch_group_create();
      dispatch_group_enter(v24);
      dispatch_group_enter(v24);
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3032000000;
      v38[3] = __Block_byref_object_copy__0;
      v38[4] = __Block_byref_object_dispose__0;
      v39 = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke;
      v35[3] = &unk_278934F58;
      v37 = v38;
      v25 = v24;
      v36 = v25;
      [v21 deleteAllSearchableItemsForBundleID:dCopy fromClient:clientCopy shouldGC:cCopy deleteAllReason:reason completionHandler:v35];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke_2;
      v32[3] = &unk_278934F58;
      v34 = v38;
      v26 = v25;
      v33 = v26;
      [v21 deleteAllSearchableItemsForBundleID:v23 fromClient:clientCopy shouldGC:cCopy deleteAllReason:reason completionHandler:v32];
      v27 = sIndexQueue;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke_3;
      v29[3] = &unk_278936AC8;
      v30 = handlerCopy;
      v31 = v38;
      v28 = _setup_block(v29, 0, 19115);
      dispatch_group_notify(v26, v27, v28);

      _Block_object_dispose(v38, 8);
    }

    else
    {
      [v21 deleteAllSearchableItemsForBundleID:dCopy fromClient:clientCopy shouldGC:cCopy deleteAllReason:reason completionHandler:handlerCopy];
    }

    goto LABEL_10;
  }

  if (handlerCopy)
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v23);
LABEL_10:
  }
}

void __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (!a2)
  {
    a2 = *(v4 + 40);
  }

  objc_storeStrong((v4 + 40), a2);
  v5 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (!a2)
  {
    a2 = *(v4 + 40);
  }

  objc_storeStrong((v4 + 40), a2);
  v5 = v2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __133__SPCoreSpotlightIndexer_deleteAllSearchableItemsWithBundleID_fromClient_protectionClass_shouldGC_deleteAllReason_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)deleteSearchableItemsSinceDate:(id)date protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  dateCopy = date;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  _checkUnlock();
  if (!classCopy || (v14 = [classCopy isEqualToString:@"Default"], v15 = classCopy, v14))
  {
    v15 = *MEMORY[0x277CCA1A0];
  }

  v16 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v15 andBundleID:dCopy];
  if (v16)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    [v16 deleteSearchableItemsSinceDate:dateCopy forBundleID:dCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v17);
  }
}

- (void)fetchLastClientStateWithProtectionClass:(id)class forBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler
{
  classCopy = class;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  _checkUnlock();
  if (!classCopy || (v15 = [classCopy isEqualToString:@"Default"], v16 = classCopy, v15))
  {
    v16 = *MEMORY[0x277CCA1A0];
  }

  v17 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v16 andBundleID:dCopy];
  v18 = v17;
  if (v17)
  {
    [v17 fetchLastClientStateForBundleID:dCopy clientStateName:nameCopy options:options completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v19);
  }
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state protectionClass:(id)class forBundleID:(id)d forUTIType:(id)type options:(int64_t)options
{
  dsCopy = ds;
  classCopy = class;
  dCopy = d;
  _checkUnlock();
  if (!classCopy || (v14 = [classCopy isEqualToString:@"Default"], v15 = classCopy, v14))
  {
    v15 = *MEMORY[0x277CCA1A0];
  }

  v16 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v15 andBundleID:dCopy];
  if (v16)
  {
    self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    [v16 changeStateOfSearchableItemsWithUIDs:dsCopy toState:state forBundleID:dCopy];
  }
}

- (void)userPerformedAction:(id)action withItem:(id)item protectionClass:(id)class forBundleID:(id)d personaID:(id)iD
{
  v52[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemCopy = item;
  classCopy = class;
  dCopy = d;
  iDCopy = iD;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (itemCopy && ([sDelegate blocklistCheck:dCopy withOptions:0] & 1) == 0)
  {
    attributeSet = [itemCopy attributeSet];
    relatedUniqueIdentifier = [attributeSet relatedUniqueIdentifier];

    uniqueIdentifier = [itemCopy uniqueIdentifier];
    if (!classCopy || (v18 = [classCopy isEqualToString:@"Default"], v19 = classCopy, v18))
    {
      v19 = *MEMORY[0x277CCA1A0];
    }

    v20 = v19;
    v35 = v20;
    if (relatedUniqueIdentifier)
    {
      allProtectionClasses = [objc_opt_class() allProtectionClasses];
      v33 = 0;
    }

    else
    {
      v52[0] = v20;
      allProtectionClasses = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v51 = v35;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    }

    noIndex = [itemCopy noIndex];
    v22 = noIndex;
    v23 = logForCSLogCategoryIndex(noIndex);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v22)
    {
      if (v24)
      {
        [SPCoreSpotlightIndexer userPerformedAction:withItem:protectionClass:forBundleID:personaID:];
      }
    }

    else
    {
      if (v24)
      {
        [SPCoreSpotlightIndexer userPerformedAction:withItem:protectionClass:forBundleID:personaID:];
      }

      self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
      v23 = objc_alloc_init(MEMORY[0x277CC33A0]);
      [v23 beginArray];
      attributeSet2 = [itemCopy attributeSet];
      [v23 encodeObject:attributeSet2];

      [v23 endArray];
      data = [v23 data];
      v27 = [data copy];

      if (relatedUniqueIdentifier)
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke;
        v46[3] = &unk_278936AF0;
        v46[4] = &v47;
        [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:allProtectionClasses block:v46];
        v28 = [[SPUAProgressItem alloc] initWithBundleID:dCopy uaID:uniqueIdentifier relatedID:relatedUniqueIdentifier];
        [(SPUAProgressItem *)v28 setExpectedCount:*(v48 + 6)];
        [(SPUAProgressItem *)v28 add];
        _Block_object_dispose(&v47, 8);
      }

      else
      {
        v28 = 0;
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2;
      v40[3] = &unk_278936B40;
      v29 = dCopy;
      v41 = v29;
      v42 = iDCopy;
      v31 = v27;
      v43 = v31;
      v45 = relatedUniqueIdentifier != 0;
      v30 = v28;
      v44 = v30;
      [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:allProtectionClasses block:v40];
      if ([v33 count])
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2518;
        v37[3] = &unk_278936768;
        v38 = uniqueIdentifier;
        v39 = v29;
        [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v33 block:v37];
      }
    }
  }
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3;
  v8[3] = &unk_278936B18;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  LOBYTE(v7) = v5;
  [a2 indexFromBundle:v3 personaID:v4 options:0 items:v6 itemsText:0 itemsHTML:0 clientState:0 expectedClientState:0 clientStateName:0 deletes:0 canCreateNewIndex:v7 completionHandler:v8];
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = logForCSLogCategoryIndex(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3_cold_1();
    }

    [*(a1 + 32) update:0xFFFFFFFFLL];
  }
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2518(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v4 _backgroundDeleteItems:v5 bundleID:*(a1 + 40) completionHandler:{&__block_literal_global_2521, v6, v7}];
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_2_2519(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = logForCSLogCategoryIndex(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "Error deleting possible user activity %@", &v5, 0xCu);
    }
  }
}

- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  _checkUnlock();
  if ([sDelegate blocklistCheck:dCopy withOptions:options])
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v15);
  }

  else
  {
    if (!classCopy || (v16 = [classCopy isEqualToString:@"Default"], v17 = classCopy, v16))
    {
      v17 = *MEMORY[0x277CCA1A0];
    }

    v15 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v17 andBundleID:dCopy];
    if (v15)
    {
      self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
      [v15 willModifySearchableItemsWithIdentifiers:identifiersCopy forBundleID:dCopy completionHandler:handlerCopy];
    }

    else if (handlerCopy)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      handlerCopy[2](handlerCopy, v18);
    }
  }
}

- (void)clientDidCheckin:(id)checkin protectionClass:(id)class service:(id)service completionHandler:(id)handler
{
  checkinCopy = checkin;
  classCopy = class;
  serviceCopy = service;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (sShuttingDown != 1)
  {
    _checkUnlock();
    if (!classCopy || (v17 = [classCopy isEqualToString:@"Default"], v18 = classCopy, v17))
    {
      v18 = *MEMORY[0x277CCA1A0];
    }

    v16 = v18;
    v19 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v16 andBundleID:checkinCopy];
    if (v19)
    {
      self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
      extensionDelegate = [(SPCoreSpotlightIndexer *)self extensionDelegate];

      if (extensionDelegate)
      {
        mEMORY[0x277CC3538] = [MEMORY[0x277CC3538] sharedManager];
        [mEMORY[0x277CC3538] loadExtensions];
      }

      v22 = sIndexQueue;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __85__SPCoreSpotlightIndexer_clientDidCheckin_protectionClass_service_completionHandler___block_invoke;
      v25[3] = &unk_278934EB8;
      v26 = v19;
      v27 = checkinCopy;
      v28 = serviceCopy;
      v29 = v14;
      v23 = _setup_block(v25, 0, 19332);
      dispatch_async(v22, v23);
    }

    else if (v14)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
      (v14)[2](v14, 0, v24);
    }

    goto LABEL_16;
  }

  v15 = logForCSLogCategoryDefault(handlerCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SPCoreSpotlightIndexer clientDidCheckin:protectionClass:service:completionHandler:];
  }

  if (v14)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    (v14)[2](v14, 0, v16);
LABEL_16:
  }
}

- (void)deleteAllUserActivities:(id)activities fromClient:(id)client completionHandler:(id)handler
{
  activitiesCopy = activities;
  clientCopy = client;
  handlerCopy = handler;
  _checkUnlock();
  v11 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__0;
  v27[4] = __Block_byref_object_dispose__0;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke;
  v21[3] = &unk_278936B90;
  v12 = v11;
  v22 = v12;
  selfCopy = self;
  v13 = activitiesCopy;
  v24 = v13;
  v14 = clientCopy;
  v25 = v14;
  v26 = v27;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:0 block:v21];
  if (handlerCopy)
  {
    v15 = qos_class_self();
    v16 = dispatch_get_global_queue(v15, 2uLL);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_4;
    v18[3] = &unk_278936AC8;
    v19 = handlerCopy;
    v20 = v27;
    v17 = _setup_block(v18, 0, 19360);
    dispatch_group_notify(v12, v16, v17);
  }

  _Block_object_dispose(v27, 8);
}

void __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2;
  v10[3] = &unk_278936B68;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13 = v6;
  v15 = v7;
  v14 = *(a1 + 32);
  v8 = v3;
  v9 = _setup_block(v10, 0, 19354);
  dispatch_async(v4, v9);
}

void __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3;
  v7[3] = &unk_278934F58;
  v6 = *(a1 + 64);
  v5 = v6;
  v8 = v6;
  [v2 deleteAllUserActivities:v3 fromClient:v4 completionHandler:v7];
}

void __79__SPCoreSpotlightIndexer_deleteAllUserActivities_fromClient_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)deleteActionsBeforeTime:(double)time completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  _checkUnlock();
  v7 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__0;
  v21[4] = __Block_byref_object_dispose__0;
  v22 = 0;
  v23[0] = *MEMORY[0x277CCA1A0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke;
  v16[3] = &unk_278936BE0;
  v9 = v7;
  v17 = v9;
  selfCopy = self;
  timeCopy = time;
  v19 = v21;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v8 block:v16];
  if (handlerCopy)
  {
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 2uLL);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_4;
    v13[3] = &unk_278936AC8;
    v14 = handlerCopy;
    v15 = v21;
    v12 = _setup_block(v13, 0, 19392);
    dispatch_group_notify(v9, v11, v12);
  }

  _Block_object_dispose(v21, 8);
}

void __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_2;
  v8[3] = &unk_278936BB8;
  v5 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v3;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v10 = v5;
  v6 = v3;
  v7 = _setup_block(v8, 0, 19386);
  dispatch_async(v4, v7);
}

void __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_3;
  v6[3] = &unk_278934F58;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 deleteActionsBeforeTime:v6 completionHandler:v3];
}

void __68__SPCoreSpotlightIndexer_deleteActionsBeforeTime_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)deleteActionsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  _checkUnlock();
  v8 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__0;
  v23[4] = __Block_byref_object_dispose__0;
  v24 = 0;
  v25[0] = *MEMORY[0x277CCA1A0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke;
  v18[3] = &unk_278936C30;
  v10 = v8;
  v19 = v10;
  selfCopy = self;
  v11 = identifiersCopy;
  v21 = v11;
  v22 = v23;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v9 block:v18];
  if (handlerCopy)
  {
    v12 = qos_class_self();
    v13 = dispatch_get_global_queue(v12, 2uLL);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_4;
    v15[3] = &unk_278936AC8;
    v16 = handlerCopy;
    v17 = v23;
    v14 = _setup_block(v15, 0, 19422);
    dispatch_group_notify(v10, v13, v14);
  }

  _Block_object_dispose(v23, 8);
}

void __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_2;
  v10[3] = &unk_278936C08;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v6 = v5;
  v7 = *(a1 + 56);
  v12 = v6;
  v14 = v7;
  v13 = *(a1 + 32);
  v8 = v3;
  v9 = _setup_block(v10, 0, 19416);
  dispatch_async(v4, v9);
}

void __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_3;
  v6[3] = &unk_278934F58;
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v2 deleteActionsWithIdentifiers:v3 completionHandler:v6];
}

void __73__SPCoreSpotlightIndexer_deleteActionsWithIdentifiers_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)deleteAllInteractionsWithBundleID:(id)d completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  _checkUnlock();
  v8 = dispatch_group_create();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = 0;
  v24[0] = *MEMORY[0x277CCA1A0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke;
  v17[3] = &unk_278936C30;
  v10 = v8;
  v18 = v10;
  selfCopy = self;
  v11 = dCopy;
  v20 = v11;
  v21 = v22;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v9 block:v17];
  if (handlerCopy)
  {
    v12 = qos_class_self();
    v13 = dispatch_get_global_queue(v12, 2uLL);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_4;
    v14[3] = &unk_278936AC8;
    v15 = handlerCopy;
    v16 = v22;
    dispatch_group_notify(v10, v13, v14);
  }

  _Block_object_dispose(v22, 8);
}

void __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_2;
  v10[3] = &unk_278936C08;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v6 = v5;
  v7 = *(a1 + 56);
  v12 = v6;
  v14 = v7;
  v13 = *(a1 + 32);
  v8 = v3;
  v9 = _setup_block(v10, 0, 19446);
  dispatch_async(v4, v9);
}

void __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_3;
  v6[3] = &unk_278934F58;
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v2 deleteAllInteractionsWithBundleID:v3 completionHandler:v6];
}

void __78__SPCoreSpotlightIndexer_deleteAllInteractionsWithBundleID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)addInteraction:(id)interaction bundleID:(id)d protectionClass:(id)class
{
  v19 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  dCopy = d;
  classCopy = class;
  v11 = classCopy;
  if (dCopy && classCopy)
  {
    interactionHandler = [(SPCoreSpotlightIndexer *)self interactionHandler];
    [interactionHandler handleInteraction:interactionCopy bundleID:dCopy protectionClass:v11];
  }

  else
  {
    interactionHandler = logForCSLogCategoryDefault(classCopy);
    if (os_log_type_enabled(interactionHandler, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = interactionCopy;
      v15 = 2112;
      v16 = dCopy;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_231A35000, interactionHandler, OS_LOG_TYPE_DEBUG, "skipping interaction %@ bundle %@ pc %@", &v13, 0x20u);
    }
  }
}

+ (BOOL)writeDiagnostic:(id)diagnostic bundleID:(id)d identifier:(id)identifier logQuery:(BOOL)query
{
  queryCopy = query;
  diagnosticCopy = diagnostic;
  dCopy = d;
  identifierCopy = identifier;
  v64 = _CFCopySystemVersionDictionary();
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"System Version - %@\n\n", v64];
  v11 = 0x278933000uLL;
  v12 = +[SPCoreSpotlightIndexer sharedInstance];
  v13 = [v10 dataUsingEncoding:4];
  v14 = [v12 writeData:v13 toFile:diagnosticCopy];

  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v17 = [v15 stringWithFormat:@"Preferred Languages - %@\n\n", preferredLanguages];

    v18 = +[SPCoreSpotlightIndexer sharedInstance];
    v19 = [v17 dataUsingEncoding:4];
    LODWORD(preferredLanguages) = [v18 writeData:v19 toFile:diagnosticCopy];

    if (preferredLanguages)
    {
      v20 = *MEMORY[0x277CBF040];
      v21 = *MEMORY[0x277CBF010];
      v22 = CFPreferencesCopyKeyList(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
      if ([(__CFArray *)v22 count])
      {
        v23 = CFPreferencesCopyMultiple(v22, @"com.apple.spotlightui", v20, v21);
        if ([(__CFDictionary *)v23 count])
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Preferences - %@\n\n", v23];

          v24 = +[SPCoreSpotlightIndexer sharedInstance];
          v25 = [v10 dataUsingEncoding:4];
          v26 = [v24 writeData:v25 toFile:diagnosticCopy];

          if (!v26)
          {

            v28 = 0;
LABEL_38:
            v29 = v64;

            goto LABEL_39;
          }

          v17 = v10;
        }

        v27 = 0x277CCA000;
      }

      else
      {
        v27 = 0x277CCA000uLL;
      }

      v30 = +[SpotlightSender copyDiagnosticInfo];
      v63 = v30;
      if ([v30 count])
      {
        v10 = [*(v27 + 3240) stringWithFormat:@"Spotlight Receivers - %@\n\n", v30];

        v31 = +[SPCoreSpotlightIndexer sharedInstance];
        v32 = [v10 dataUsingEncoding:4];
        v33 = [v31 writeData:v32 toFile:diagnosticCopy];

        if (!v33)
        {
          v28 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        v10 = v17;
      }

      v62 = v22;
      for (i = 0; i != 4; ++i)
      {
        if (i != 2 || queryCopy)
        {
          v35 = objc_autoreleasePoolPush();
          v36 = SDTraceDescription(i);
          if ([v36 length])
          {
            [*(v11 + 1464) sharedInstance];
            v38 = v37 = v11;
            v39 = [v36 dataUsingEncoding:4];
            v40 = [v38 writeData:v39 toFile:diagnosticCopy];

            if (!v40 || ([*(v37 + 1464) sharedInstance], v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(@"\n", "dataUsingEncoding:", 4), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v41, "writeData:toFile:", v42, diagnosticCopy), v42, v41, v11 = v37, !v43))
            {

              objc_autoreleasePoolPop(v35);
              v28 = 0;
              v22 = v62;
              goto LABEL_37;
            }
          }

          objc_autoreleasePoolPop(v35);
        }
      }

      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 1;
      sharedInstance = [*(v11 + 1464) sharedInstance];
      concreteIndexers = [sharedInstance concreteIndexers];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __71__SPCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier_logQuery___block_invoke;
      v67[3] = &unk_278936C58;
      v71 = &v72;
      v46 = diagnosticCopy;
      v68 = v46;
      v69 = dCopy;
      v70 = identifierCopy;
      [concreteIndexers enumerateKeysAndObjectsUsingBlock:v67];

      v47 = MEMORY[0x277CCACA8];
      [*(v11 + 1464) sharedInstance];
      v48 = v22 = v62;
      dumpIndexAges = [v48 dumpIndexAges];
      v50 = [v47 stringWithFormat:@"\nCoreSpotlight Indexes Age Info:\n%@\n", dumpIndexAges];

      sharedInstance2 = [*(v11 + 1464) sharedInstance];
      v52 = [v50 dataUsingEncoding:4];
      LOBYTE(dumpIndexAges) = [sharedInstance2 writeData:v52 toFile:v46];

      if (dumpIndexAges)
      {
        v53 = MEMORY[0x277CCACA8];
        sharedInstance3 = [*(v11 + 1464) sharedInstance];
        dumpIndexAnalytics = [sharedInstance3 dumpIndexAnalytics];
        v56 = [v53 stringWithFormat:@"\nCoreSpotlight Indexes Analytics Info:\n%@\n", dumpIndexAnalytics];

        sharedInstance4 = [*(v11 + 1464) sharedInstance];
        v58 = [v56 dataUsingEncoding:4];
        LOBYTE(v53) = [sharedInstance4 writeData:v58 toFile:v46];

        if (v53)
        {
          if (sDelegate)
          {
            extraTTRInfo = [sDelegate extraTTRInfo];
            if (extraTTRInfo)
            {
              sharedInstance5 = [*(v11 + 1464) sharedInstance];
              [sharedInstance5 writeData:extraTTRInfo toFile:v46];
            }
          }

          v28 = *(v73 + 24);
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      _Block_object_dispose(&v72, 8);
      goto LABEL_37;
    }

    v28 = 0;
    v10 = v17;
  }

  else
  {
    v28 = 0;
  }

  v29 = v64;
LABEL_39:

  return v28 & 1;
}

void *__71__SPCoreSpotlightIndexer_writeDiagnostic_bundleID_identifier_logQuery___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 writeDiagnostic:a1[4] bundleID:a1[5] identifier:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)getDBLogsWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277CBEBD0];
  handlerCopy = handler;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.searchd"];
  v6 = +[SPCoreSpotlightIndexer sharedInstance];
  concreteIndexers = [v6 concreteIndexers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke;
  v9[3] = &unk_278936C80;
  v10 = v5;
  v8 = v5;
  [concreteIndexers enumerateKeysAndObjectsUsingBlock:v9];

  handlerCopy[2](handlerCopy, 1);
}

void __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) objectForKey:@"lastQueryString"];
  if (v5)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_2789345C8;
    v9 = v6;
    v7 = v6;
    [v4 dumpAllRankingDiagnosticInformationForQuery:v5 withCompletionHandler:v8];
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __57__SPCoreSpotlightIndexer_getDBLogsWithCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)_issueDiagnose:(int)diagnose bundleID:(id)d logQuery:(BOOL)query completionHandler:(id)handler
{
  queryCopy = query;
  v7 = *&diagnose;
  dCopy = d;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  v12 = logForCSLogCategoryIndex(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _issueDiagnose:bundleID:logQuery:completionHandler:];
  }

  [sDelegate dumpTTRDebugFiles];
  v13 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  v15 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v15 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
  v39 = v15;
  v40 = date;
  v16 = [v15 stringFromDate:date];
  v17 = v16;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = SPLogDirectory(v16);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [defaultManager fileExistsAtPath:v20];

    if ((v22 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 _web_createDirectoryAtPathWithIntermediateDirectories:v20 attributes:0];
    }

    v24 = [@"Spotlight_" stringByAppendingFormat:@"%@.log", v17];
    v19 = [v20 stringByAppendingPathComponent:v24];
    fileSystemRepresentation = [(__CFString *)v19 fileSystemRepresentation];
    v7 = open(fileSystemRepresentation, 522, 384);
  }

  else
  {
    fileSystemRepresentation = 0;
    v19 = @"corespotlight.log";
  }

  v25 = dCopy;
  if (v7 < 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v7 closeOnDealloc:1];
  }

  v27 = +[SPCoreSpotlightIndexer sharedInstance];
  v38 = v17;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"=== Spotlight Diagnostic (%d) %@\n\n", getpid(), v17];
  v29 = [v28 dataUsingEncoding:4];
  v30 = [v27 writeData:v29 toFile:v26];

  if (v30 && [SPCoreSpotlightIndexer writeDiagnostic:v26 bundleID:v25 identifier:0 logQuery:queryCopy])
  {
    v31 = +[SPCoreSpotlightIndexer sharedInstance];
    v32 = [@"=== Spotlight Diagnostic End\n" dataUsingEncoding:4];
    v33 = [v31 writeData:v32 toFile:v26];

    if (!fileSystemRepresentation)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v33 = 0;
    if (!fileSystemRepresentation)
    {
      goto LABEL_18;
    }
  }

  if ((v33 & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:fileSystemRepresentation];
    [defaultManager3 removeItemAtPath:v35 error:0];
  }

LABEL_18:
  [v26 closeFile];
  [v13 addObject:v19];
  if (![v13 count])
  {
    v36 = 0;
    if (!handlerCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v36 = [MEMORY[0x277CCAC58] dataWithPropertyList:v13 format:200 options:0 error:0];
  if (handlerCopy)
  {
LABEL_20:
    handlerCopy[2](handlerCopy, v36, 0);
  }

LABEL_21:
}

- (void)_issueCacheCommand:(id)command xpc:(id)xpc searchContext:(id)context completionHandler:(id)handler
{
  commandCopy = command;
  xpcCopy = xpc;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  v13 = logForCSLogCategoryIndex(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _issueCacheCommand:xpc:searchContext:completionHandler:];
  }

  v14 = [commandCopy componentsSeparatedByString:@":"];
  v15 = [v14 count];
  if (!v15)
  {
    goto LABEL_41;
  }

  v16 = v15;
  v17 = [v14 objectAtIndexedSubscript:0];
  v18 = [v17 isEqualToString:@"erase"];

  if (v18)
  {
    if (v16 != 1)
    {
      v19 = [v14 objectAtIndexedSubscript:1];
      v20 = v19;
      if (!v19 || (v21 = [v19 isEqualToString:@"Default"], v22 = v20, v21))
      {
        v22 = *MEMORY[0x277CCA1A0];
      }

      v23 = v22;
      v24 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v23 andBundleID:0];
      v25 = v24;
      v26 = v24 != 0;
      if (!v24)
      {
LABEL_48:

        if (!handlerCopy)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke;
      v85[3] = &unk_278936CA8;
      v25 = v24;
      v86 = v25;
      v87 = handlerCopy;
      [v25 closeCache:v85];

      handlerCopy = 0;
      v26 = 1;
      v27 = v86;
LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v28 = [v14 objectAtIndexedSubscript:0];
  v29 = [v28 isEqualToString:@"lookup"];

  if (v29)
  {
    if (v16 >= 4)
    {
      v20 = [v14 objectAtIndexedSubscript:1];
      v59 = [v14 objectAtIndexedSubscript:2];
      v25 = [v14 objectAtIndexedSubscript:3];
      if (!v20 || (v30 = [v20 isEqualToString:@"Default"], v31 = v20, v30))
      {
        v31 = *MEMORY[0x277CCA1A0];
      }

      v32 = v31;
      v33 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v32 andBundleID:v59];
      v34 = v33;
      v26 = v33 != 0;
      if (v33)
      {
        queue = self->_indexQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_2572;
        block[3] = &unk_278936A00;
        v80 = v33;
        v81 = v25;
        v82 = v59;
        v35 = v32;
        v83 = v32;
        v84 = handlerCopy;
        dispatch_sync(queue, block);

        handlerCopy = 0;
      }

      else
      {
        v35 = v32;
      }

      v27 = v35;
      v23 = v59;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v36 = [v14 objectAtIndexedSubscript:0];
  v37 = [v36 isEqualToString:@"insert"];

  if (v37)
  {
    if (v16 >= 5)
    {
      v20 = [v14 objectAtIndexedSubscript:1];
      v23 = [v14 objectAtIndexedSubscript:2];
      v25 = [v14 objectAtIndexedSubscript:3];
      v60 = [v14 objectAtIndexedSubscript:4];
      if (!v20 || (v38 = [v20 isEqualToString:@"Default"], v39 = v20, v38))
      {
        v39 = *MEMORY[0x277CCA1A0];
      }

      v58 = v39;
      v40 = [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:"concreteIndexerForProtectionClass:andBundleID:" andBundleID:?];
      v41 = v40;
      v26 = v40 != 0;
      if (!v40)
      {
        goto LABEL_33;
      }

      indexQueue = self->_indexQueue;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_2;
      v72[3] = &unk_278936CD0;
      v73 = v40;
      v74 = v25;
      v75 = v60;
      v76 = v23;
      v77 = v58;
      v78 = handlerCopy;
      dispatch_sync(indexQueue, v72);

      v43 = v73;
LABEL_32:

      handlerCopy = 0;
LABEL_33:

      v27 = v60;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v44 = [v14 objectAtIndexedSubscript:0];
  v45 = [v44 isEqualToString:@"delete"];

  if (!v45)
  {
    v50 = [v14 objectAtIndexedSubscript:0];
    v51 = [v50 isEqualToString:@"fileDescriptor"];

    if (v51)
    {
      if (v16 >= 3)
      {
        v20 = [v14 objectAtIndexedSubscript:1];
        v23 = [v14 objectAtIndexedSubscript:2];
        if (!v20 || (v52 = [v20 isEqualToString:@"Default"], v53 = v20, v52))
        {
          v53 = *MEMORY[0x277CCA1A0];
        }

        v25 = v53;
        v54 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v25 andBundleID:v23];
        v27 = v54;
        v26 = v54 != 0;
        if (v54)
        {
          v55 = self->_indexQueue;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_4;
          v61[3] = &unk_278934F08;
          v27 = v54;
          v62 = v27;
          v63 = xpcCopy;
          v64 = handlerCopy;
          dispatch_sync(v55, v61);

          handlerCopy = 0;
          v26 = 1;
        }

        goto LABEL_47;
      }

      goto LABEL_43;
    }

LABEL_41:
    v26 = 1;
    if (!handlerCopy)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (v16 >= 5)
  {
    v20 = [v14 objectAtIndexedSubscript:1];
    v23 = [v14 objectAtIndexedSubscript:2];
    v25 = [v14 objectAtIndexedSubscript:3];
    v60 = [v14 objectAtIndexedSubscript:4];
    if (!v20 || (v46 = [v20 isEqualToString:@"Default"], v47 = v20, v46))
    {
      v47 = *MEMORY[0x277CCA1A0];
    }

    v58 = v47;
    v48 = [SPCoreSpotlightIndexer concreteIndexerForProtectionClass:"concreteIndexerForProtectionClass:andBundleID:" andBundleID:?];
    v41 = v48;
    v26 = v48 != 0;
    if (!v48)
    {
      goto LABEL_33;
    }

    v49 = self->_indexQueue;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_3;
    v65[3] = &unk_278936CD0;
    v66 = v48;
    v67 = v25;
    v68 = v60;
    v69 = v23;
    v70 = v58;
    v71 = handlerCopy;
    dispatch_sync(v49, v65);

    v43 = v66;
    goto LABEL_32;
  }

LABEL_43:
  v26 = 0;
  if (!handlerCopy)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (v26)
  {
    v56 = 0;
  }

  else
  {
    v56 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-2005 userInfo:0];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, v56);

LABEL_53:
}

void __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _indexPath];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v25 = v1;
    v26 = v2;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *MEMORY[0x277CBE868];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], *MEMORY[0x277CBE838], 0}];
    v24 = v3;
    v10 = [v7 enumeratorAtURL:v3 includingPropertiesForKeys:v9 options:4 errorHandler:0];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          [v16 getResourceValue:&v27 forKey:v8 error:0];
          v17 = v27;
          if (([v17 BOOLValue] & 1) == 0)
          {
            v18 = [v16 absoluteString];
            v19 = [v18 containsString:@"spotlightcache"];

            if (v19)
            {
              v21 = logForCSLogCategoryIndex(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = [v16 absoluteString];
                *buf = 138412290;
                v33 = v22;
                _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_INFO, "Spotlight cache erase %@", buf, 0xCu);
              }

              v23 = [MEMORY[0x277CCAA00] defaultManager];
              [v23 removeItemAtURL:v16 error:0];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v13);
    }

    v1 = v25;
    v2 = v26;
    v3 = v24;
  }

  (*(*(v1 + 40) + 16))();
}

void __81__SPCoreSpotlightIndexer__issueCacheCommand_xpc_searchContext_completionHandler___block_invoke_2572(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v4[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 cacheEntryForKeys:v3 bundleID:a1[6] protectionClass:a1[7] completionHandler:a1[8]];
}

- (id)writeUISearchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v28[4] = *MEMORY[0x277D85DE8];
  indexDirectory = [sDelegate indexDirectory];
  v5 = MEMORY[0x277CBEBC0];
  v6 = NSHomeDirectory();
  v28[0] = v6;
  v28[1] = @"Library";
  v28[2] = @"Containers";
  v28[3] = @"com.apple.managedcorespotlightd";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v8 = [v5 fileURLWithPathComponents:v7];

  v9 = MEMORY[0x277CBEBC0];
  v10 = NSHomeDirectory();
  v27[0] = v10;
  v27[1] = @"Library";
  v27[2] = @"Containers";
  v27[3] = @"com.apple.managedcorespotlightd";
  v27[4] = @"EnabledIndexes";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
  v12 = [v9 fileURLWithPathComponents:v11];

  if (!v12)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:v12];
  if (!v13)
  {
    v13 = objc_opt_new();
  }

  v14 = [v13 containsObject:indexDirectory];
  if ((v14 & 1) == 0 && enabledCopy)
  {
    v15 = [v13 arrayByAddingObject:indexDirectory];
    goto LABEL_11;
  }

  v16 = 0;
  if (v14 && !enabledCopy)
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != %@", indexDirectory];
    v15 = [v13 filteredArrayUsingPredicate:v17];

    v13 = v17;
LABEL_11:

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v19 = [defaultManager createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v26];
    v20 = v26;

    if (!v19 || v20)
    {
      v22 = logForCSLogCategoryDefault(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer writeUISearchEnabled:];
      }
    }

    v23 = [v15 writeToURL:v12 atomically:1];
    if (v23)
    {
      v16 = 0;
    }

    else
    {
      v24 = logForCSLogCategoryDefault(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SPCoreSpotlightIndexer writeUISearchEnabled:];
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    }

    goto LABEL_23;
  }

  v15 = v13;
LABEL_23:

LABEL_24:

  return v16;
}

- (void)fetchBundleIdsForProtectionClass:(id)class completionHandler:(id)handler
{
  classCopy = class;
  handlerCopy = handler;
  indexQueue = self->_indexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SPCoreSpotlightIndexer_fetchBundleIdsForProtectionClass_completionHandler___block_invoke;
  block[3] = &unk_278934F08;
  block[4] = self;
  v12 = classCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = classCopy;
  dispatch_async(indexQueue, block);
}

void __77__SPCoreSpotlightIndexer_fetchBundleIdsForProtectionClass_completionHandler___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v21 = a1;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v35[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  }

  else
  {
    v5 = 0;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __77__SPCoreSpotlightIndexer_fetchBundleIdsForProtectionClass_completionHandler___block_invoke_2;
  v31[3] = &unk_2789366A0;
  v6 = v2;
  v32 = v6;
  [v4 _enumerateIndexersWithProtectionClasses:v5 inferSpecialIndexes:1 block:v31];
  if (v3)
  {
  }

  v7 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v27 + 1) + 8 * v11) index])
        {
          v12 = SICopyProperties();
          v13 = [v12 objectForKeyedSubscript:@"GroupAssignments"];
          if ([v13 count])
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v14 = [v13 allKeys];
            v15 = [v14 countByEnumeratingWithState:&v23 objects:v33 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v24;
              do
              {
                v18 = 0;
                do
                {
                  if (*v24 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [v7 addObject:*(*(&v23 + 1) + 8 * v18++)];
                }

                while (v16 != v18);
                v16 = [v14 countByEnumeratingWithState:&v23 objects:v33 count:16];
              }

              while (v16);
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v9);
  }

  v19 = *(v21 + 48);
  if (v19)
  {
    v20 = [v7 allObjects];
    (*(v19 + 16))(v19, v20, 0);
  }
}

- (void)_issueCommand:(id)command outFileDescriptor:(int)descriptor searchContext:(id)context completionHandler:(id)handler
{
  v8 = *&descriptor;
  v600[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  contextCopy = context;
  handlerCopy = handler;
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_indexQueue);
  v492 = handlerCopy;
  v12 = MEMORY[0x2383760E0](handlerCopy);
  v13 = logForCSLogCategoryIndex(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightIndexer _issueCommand:outFileDescriptor:searchContext:completionHandler:];
  }

  if ([commandCopy hasPrefix:@"job:"])
  {
    v14 = [commandCopy componentsSeparatedByString:@":" limit:6];
  }

  else
  {
    if ([commandCopy hasPrefix:@"reindexJob:"])
    {
      [commandCopy componentsSeparatedByString:@":" limit:5];
    }

    else
    {
      [commandCopy componentsSeparatedByString:@":"];
    }
    v14 = ;
  }

  v15 = v14;
  v17 = [v14 count];
  if (!v17)
  {
    goto LABEL_517;
  }

  v18 = [v15 objectAtIndexedSubscript:0];
  v19 = [v18 isEqualToString:@"reset"];

  if (v19)
  {
    if (v12)
    {
      v12[2](v12, 0, 0);
    }

    dispatch_sync(selfCopy[29], &__block_literal_global_2605);
    exit(0);
  }

  v20 = [v15 objectAtIndexedSubscript:0];
  v21 = [v20 isEqualToString:@"provide"];

  if (v21)
  {
    if (v17 >= 5)
    {
      v22 = [v15 objectAtIndexedSubscript:1];
      if ([v22 isEqualToString:@"data1"])
      {
        v23 = 0;
        if (v17 != 5)
        {
          v24 = 14;
LABEL_59:
          v52 = [v15 objectAtIndexedSubscript:2];
          v53 = 3;
          goto LABEL_60;
        }
      }

      else if ([v22 isEqualToString:@"url1"])
      {
        v23 = 0;
        if (v17 != 5)
        {
          v24 = 15;
          goto LABEL_59;
        }
      }

      else
      {
        if (![v22 isEqualToString:@"urls"])
        {
          if ([v22 isEqualToString:@"data"])
          {
            v23 = 0;
            v52 = 0;
            v53 = 2;
            v24 = 6;
          }

          else if ([v22 isEqualToString:@"url"])
          {
            v23 = 0;
            v52 = 0;
            v53 = 2;
            v24 = 7;
          }

          else if ([v22 isEqualToString:@"nonDownloadingData"])
          {
            v23 = 0;
            v52 = 0;
            v53 = 2;
            v24 = 14;
          }

          else if ([v22 isEqualToString:@"nonDownloadingUrl"])
          {
            v23 = 0;
            v52 = 0;
            v53 = 2;
            v24 = 15;
          }

          else
          {
            v23 = 0;
            if (([v22 isEqualToString:@"inPlaceUrl"] & 1) == 0)
            {
              goto LABEL_75;
            }

            v52 = 0;
            v53 = 2;
            v24 = 8;
          }

LABEL_60:
          integerValue = [v52 integerValue];
          if (integerValue)
          {
            v63 = [MEMORY[0x277CC3420] jobOptionsFromProvideOptions:integerValue];
          }

          else
          {
            v63 = 0;
          }

          v64 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:v24 jobOptions:v63];
          v65 = [v15 objectAtIndexedSubscript:v53];
          [v64 setProviderType:v65];

          v66 = [v15 objectAtIndexedSubscript:v53 + 1];
          v67 = v53 + 2;
          if (v17 == (v53 + 3))
          {
            v68 = [v15 objectAtIndexedSubscript:v67];
          }

          else
          {
            v69 = [v15 subarrayWithRange:{v67, &v17[-v67]}];
            v68 = [v69 componentsJoinedByString:@":"];
          }

          if (v23)
          {
            v70 = [v68 componentsSeparatedByString:@""];;
            [v64 setProviderIdentifiers:v70];
          }

          else
          {
            [v64 setProviderIdentifier:v68];
          }

          v71 = +[SpotlightDaemonServer sharedDaemonServer];
          v72 = [v71 handleJob:v64 bundleID:v66 protectionClass:*MEMORY[0x277CCA1A0] completionHandler:v12];

          if (v72)
          {
            v73 = v12;
          }

          else
          {
            extensionDelegate = [(dispatch_queue_t *)selfCopy extensionDelegate];
            v73 = extensionDelegate;
            if (!extensionDelegate)
            {
LABEL_74:

              LOBYTE(v23) = 1;
              goto LABEL_75;
            }

            [extensionDelegate indexRequestsPerformDataJob:v64 forBundle:v66 completionHandler:v12];
          }

          v12 = 0;
          goto LABEL_74;
        }

        if (v17 != 5)
        {
          v23 = 1;
          v24 = 16;
          goto LABEL_59;
        }

        LOBYTE(v23) = 0;
      }

LABEL_75:

      goto LABEL_518;
    }

    goto LABEL_517;
  }

  v25 = [v15 objectAtIndexedSubscript:0];
  v26 = [v25 isEqualToString:@"remote"];

  if (v26)
  {
    if (v17 >= 3)
    {
      v27 = [v15 objectAtIndexedSubscript:1];
      if (v17 == 3)
      {
        v28 = [v15 objectAtIndexedSubscript:2];
      }

      else
      {
        v36 = [v15 subarrayWithRange:{2, v17 - 2}];
        v28 = [v36 componentsJoinedByString:@":"];
      }

      if (contextCopy && [v28 isEqualToString:@"start"])
      {
        v37 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:9 jobOptions:0];
        [v37 setSearchContext:contextCopy];
        extensionDelegate2 = [(dispatch_queue_t *)selfCopy extensionDelegate];
        v39 = extensionDelegate2;
        if (extensionDelegate2)
        {
LABEL_48:
          [extensionDelegate2 indexRequestsPerformDataJob:v37 forBundle:v27 completionHandler:v12];

          v12 = 0;
        }
      }

      else if ([v28 isEqualToString:@"cancel"])
      {
        v37 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:10 jobOptions:0];
        [v37 setSearchContext:contextCopy];
        extensionDelegate2 = [(dispatch_queue_t *)selfCopy extensionDelegate];
        v39 = extensionDelegate2;
        if (extensionDelegate2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (![v28 isEqualToString:@"test"])
        {
          LOBYTE(v23) = 0;
          goto LABEL_50;
        }

        v37 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:11 jobOptions:0];
        [v37 setSearchContext:contextCopy];
        extensionDelegate2 = [(dispatch_queue_t *)selfCopy extensionDelegate];
        v39 = extensionDelegate2;
        if (extensionDelegate2)
        {
          goto LABEL_48;
        }
      }

      LOBYTE(v23) = 1;
LABEL_50:

      goto LABEL_518;
    }

LABEL_517:
    LOBYTE(v23) = 0;
LABEL_518:
    if (v12)
    {
      if (v23)
      {
        v463 = 0;
      }

      else
      {
        v463 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
      }

      (v12[2])(v12, 0, v463, v16);
    }

    goto LABEL_523;
  }

  v29 = [v15 objectAtIndexedSubscript:0];
  v30 = [v29 isEqualToString:@"notifyForUpdates"];

  if (!v30)
  {
    v31 = [v15 objectAtIndexedSubscript:0];
    v32 = [v31 isEqualToString:@"extensions"];

    if (v32)
    {
      v33 = qos_class_self();
      v34 = dispatch_get_global_queue(v33, 2uLL);
      v585[0] = MEMORY[0x277D85DD0];
      v585[1] = 3221225472;
      v585[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2657;
      v585[3] = &unk_2789341A8;
      v586 = v12;
      v35 = _setup_block(v585, 0, 20141);
      dispatch_async(v34, v35);

      goto LABEL_523;
    }

    v46 = [v15 objectAtIndexedSubscript:0];
    v47 = [v46 isEqualToString:@"clients"];

    if (v47)
    {
      v583[0] = MEMORY[0x277D85DD0];
      v583[1] = 3221225472;
      v583[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2;
      v583[3] = &unk_278934F30;
      v583[4] = selfCopy;
      v584 = v12;
      v48 = v12;
      v49 = MEMORY[0x2383760E0](v583);
      v50 = sIndexQueue;
      v51 = _setup_block(v49, 0, 20159);
      dispatch_async(v50, v51);

      goto LABEL_523;
    }

    v54 = [v15 objectAtIndexedSubscript:0];
    v55 = [v54 isEqualToString:@"commit"];

    if (v55)
    {
      v57 = logForCSLogCategoryIndex(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_231A35000, v57, OS_LOG_TYPE_DEFAULT, "Commit command: %@", buf, 0xCu);
      }

      v58 = MEMORY[0x2383760E0](v12);
      v59 = sIndexQueue;
      v581[0] = MEMORY[0x277D85DD0];
      v581[1] = 3221225472;
      v581[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2664;
      v581[3] = &unk_278934F30;
      v581[4] = selfCopy;
      v582 = v58;
      v60 = v58;
      v61 = _setup_block(v581, 0, 20169);
      dispatch_async(v59, v61);

      goto LABEL_523;
    }

    v75 = [v15 objectAtIndexedSubscript:0];
    v76 = [v75 isEqualToString:@"flush"];

    if (v76)
    {
      [(dispatch_queue_t *)selfCopy flush];
      goto LABEL_22;
    }

    v77 = [v15 objectAtIndexedSubscript:0];
    v78 = [v77 isEqualToString:@"begin-turbo"];

    if (v78)
    {
      setTurboMode(1);
      goto LABEL_22;
    }

    v79 = [v15 objectAtIndexedSubscript:0];
    v80 = [v79 isEqualToString:@"end-turbo"];

    if (v80)
    {
      setTurboMode(0);
      goto LABEL_22;
    }

    v81 = [v15 objectAtIndexedSubscript:0];
    v82 = [v81 isEqualToString:@"close"];

    if (v82)
    {
      [(dispatch_queue_t *)selfCopy closeIndex];
      goto LABEL_22;
    }

    v83 = [v15 objectAtIndexedSubscript:0];
    v84 = [v83 isEqualToString:@"merge"];

    if (v84)
    {
      v86 = logForCSLogCategoryIndex(v85);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_231A35000, v86, OS_LOG_TYPE_DEFAULT, "Merge command: %@", buf, 0xCu);
      }

      if (v17 == 1)
      {
        v87 = MEMORY[0x2383760E0](v12);
        v88 = 0;
        v89 = 0;
      }

      else
      {
        v92 = [v15 objectAtIndexedSubscript:1];
        v600[0] = v92;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v600 count:1];

        v87 = MEMORY[0x2383760E0](v12);
        if (v17 >= 3)
        {
          v17 = [v15 objectAtIndexedSubscript:2];
          v93 = [v17 isEqual:@"cts"];
          v88 = 1;
LABEL_108:
          v579[0] = MEMORY[0x277D85DD0];
          v579[1] = 3221225472;
          v579[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2684;
          v579[3] = &unk_278936CF8;
          v580 = v87;
          v97 = v87;
          [(dispatch_queue_t *)selfCopy mergeWithProtectionClasses:v89 power:v93 inferSpecialIndexes:0 completionHandler:v579];
          if (v88)
          {
          }

          goto LABEL_523;
        }

        v88 = 0;
      }

      v93 = 0;
      goto LABEL_108;
    }

    v90 = [v15 objectAtIndexedSubscript:0];
    v91 = [v90 isEqualToString:@"split"];

    if (v91)
    {
      if (v17 == 1)
      {
        [(dispatch_queue_t *)selfCopy issueSplit:0];
      }

      else
      {
        v96 = [v15 objectAtIndexedSubscript:1];
        [(dispatch_queue_t *)selfCopy issueSplit:v96];
      }

      goto LABEL_22;
    }

    v94 = [v15 objectAtIndexedSubscript:0];
    v95 = [v94 isEqualToString:@"repair"];

    if (v95)
    {
      if (v17 == 1)
      {
        [(dispatch_queue_t *)selfCopy issueRepair:0];
      }

      else
      {
        v100 = [v15 objectAtIndexedSubscript:1];
        [(dispatch_queue_t *)selfCopy issueRepair:v100];
      }

      goto LABEL_22;
    }

    v98 = [v15 objectAtIndexedSubscript:0];
    v99 = [v98 isEqualToString:@"cleanup"];

    if (v99)
    {
      if (v17 == 1)
      {
        [(dispatch_queue_t *)selfCopy issueCleanup:0 flags:0];
        goto LABEL_22;
      }

      v103 = [v15 objectAtIndexedSubscript:1];
      if (v17 < 3)
      {
        [(dispatch_queue_t *)selfCopy issueCleanup:v103 flags:0];
      }

      else
      {
        v104 = [v15 objectAtIndexedSubscript:2];
        -[dispatch_queue_t issueCleanup:flags:](selfCopy, "issueCleanup:flags:", v103, [v104 intValue]);
      }

LABEL_188:

      goto LABEL_22;
    }

    v101 = [v15 objectAtIndexedSubscript:0];
    v102 = [v101 isEqualToString:@"defrag"];

    if (v102)
    {
      if (v17 == 1)
      {
        [(dispatch_queue_t *)selfCopy issueDefrag:0 group:0];
      }

      else
      {
        v107 = [v15 objectAtIndexedSubscript:1];
        [(dispatch_queue_t *)selfCopy issueDefrag:v107 group:0];
      }

      goto LABEL_22;
    }

    v105 = [v15 objectAtIndexedSubscript:0];
    v106 = [v105 isEqualToString:@"reverse"];

    if (v106)
    {
      [(dispatch_queue_t *)selfCopy issueDumpReverse:0 completionHandler:v12];

      goto LABEL_523;
    }

    v108 = [v15 objectAtIndexedSubscript:0];
    v109 = [v108 isEqualToString:@"reverseTree"];

    if (v109)
    {
      [(dispatch_queue_t *)selfCopy issueDumpReverse:1 completionHandler:v12];

      goto LABEL_523;
    }

    v110 = [v15 objectAtIndexedSubscript:0];
    v111 = [v110 isEqualToString:@"forward"];

    if (v111)
    {
      [(dispatch_queue_t *)selfCopy issueDumpForward:0 completionHandler:v12];

      goto LABEL_523;
    }

    v112 = [v15 objectAtIndexedSubscript:0];
    v113 = [v112 isEqualToString:@"bundlefixup"];

    if (v113)
    {
      if (v17 == 1)
      {
        v114 = 0;
      }

      else
      {
        v114 = [v15 objectAtIndexedSubscript:1];
      }

      [(dispatch_queue_t *)selfCopy issueBundleFixup:v114 completionHandler:v12];

      goto LABEL_22;
    }

    v115 = [v15 objectAtIndexedSubscript:0];
    v116 = [v115 isEqualToString:@"pathfixup"];

    if (v116)
    {
      if (v17 == 1)
      {
        v117 = 0;
      }

      else
      {
        v123 = [v15 objectAtIndexedSubscript:1];
        v117 = v123;
        if (v123)
        {
          v124 = [v123 isEqualToString:@"Default"];
          v125 = v117;
          if (!v124)
          {
            goto LABEL_145;
          }
        }
      }

      v125 = *MEMORY[0x277CCA1A0];
LABEL_145:
      [(dispatch_queue_t *)selfCopy issuePathFixup:v125];

      goto LABEL_22;
    }

    v118 = [v15 objectAtIndexedSubscript:0];
    v119 = [v118 isEqualToString:@"resolveFP"];

    if (v119)
    {
      if (v17 >= 4)
      {
        v120 = [v15 objectAtIndexedSubscript:1];
        v121 = [v15 objectAtIndexedSubscript:2];
        v122 = [v15 objectAtIndexedSubscript:3];
        [(dispatch_queue_t *)selfCopy issueResolveFPItemForBundle:v120 domain:v121 identifier:v122 completionHandler:v12];

        goto LABEL_523;
      }

      goto LABEL_22;
    }

    v126 = [v15 objectAtIndexedSubscript:0];
    v127 = [v126 isEqualToString:@"resolveFPURL"];

    if (v127)
    {
      v16 = v17 - 1;
      if (v17 == 1)
      {
        goto LABEL_22;
      }

      v128 = [v15 subarrayWithRange:{1, v16}];
      v103 = [v128 componentsJoinedByString:@":"];

      if (v103)
      {
        v129 = [MEMORY[0x277CBEBC0] URLWithString:v103];
        if (v129)
        {
          [(dispatch_queue_t *)selfCopy issueResolveFPItemForURL:v129 completionHandler:v12];

          v12 = 0;
        }
      }

      goto LABEL_188;
    }

    v130 = [v15 objectAtIndexedSubscript:0];
    v131 = [v130 isEqualToString:@"testSuspendUntilUnlocked"];

    if (v131)
    {
      v133 = logForCSLogCategoryIndex(v132);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v133, OS_LOG_TYPE_DEFAULT, "### testSuspendUntilUnlocked started", buf, 2u);
      }

      v134 = dispatch_get_global_queue(21, 2uLL);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2718;
      block[3] = &unk_2789341A8;
      v578 = v12;
      dispatch_async(v134, block);

      goto LABEL_523;
    }

    v135 = [v15 objectAtIndexedSubscript:0];
    v136 = [v135 isEqualToString:@"testSuspendUntilLocked"];

    if (v136)
    {
      v138 = logForCSLogCategoryIndex(v137);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v138, OS_LOG_TYPE_DEFAULT, "### testSuspendUntilLocked started", buf, 2u);
      }

      v139 = dispatch_get_global_queue(21, 2uLL);
      v575[0] = MEMORY[0x277D85DD0];
      v575[1] = 3221225472;
      v575[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2722;
      v575[3] = &unk_2789341A8;
      v576 = v12;
      dispatch_async(v139, v575);

      goto LABEL_523;
    }

    v140 = [v15 objectAtIndexedSubscript:0];
    v141 = [v140 isEqualToString:@"messages_fixup"];

    if (v141)
    {
      v142 = MEMORY[0x2383760E0](v12);

      v573[0] = MEMORY[0x277D85DD0];
      v573[1] = 3221225472;
      v573[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2726;
      v573[3] = &unk_278935048;
      v574 = v142;
      v143 = v142;
      [(dispatch_queue_t *)selfCopy issueMessagesFixup:v573];

      goto LABEL_523;
    }

    v144 = [v15 objectAtIndexedSubscript:0];
    v145 = [v144 isEqualToString:@"check"];

    if (v145)
    {
      if (v17 == 1)
      {
        [(dispatch_queue_t *)selfCopy issueConsistencyCheck:0];
      }

      else
      {
        v148 = [v15 objectAtIndexedSubscript:1];
        [(dispatch_queue_t *)selfCopy issueConsistencyCheck:v148];
      }

      goto LABEL_22;
    }

    v146 = [v15 objectAtIndexedSubscript:0];
    v147 = [v146 isEqualToString:@"duplicates"];

    if (v147)
    {
      if (v17 == 1)
      {
        [(dispatch_queue_t *)selfCopy issueDuplicateOidCheck:0];
      }

      else
      {
        v152 = [v15 objectAtIndexedSubscript:1];
        [(dispatch_queue_t *)selfCopy issueDuplicateOidCheck:v152];
      }

      goto LABEL_22;
    }

    v149 = [v15 objectAtIndexedSubscript:0];
    v150 = [v149 isEqualToString:@"exception"];

    if (v150)
    {
      v151 = MEMORY[0x277CBEAD8];
      v103 = [v15 objectAtIndexedSubscript:0];
      if (v17 == 1)
      {
        [v151 raise:v103 format:{@"%@", &stru_2846BD100}];
      }

      else
      {
        v157 = [v15 objectAtIndexedSubscript:1];
        [v151 raise:v103 format:{@"%@", v157}];
      }

      goto LABEL_188;
    }

    v153 = [v15 objectAtIndexedSubscript:0];
    v154 = [v153 isEqualToString:@"trace"];

    if (v154)
    {
      if (v17 == 1 || ([v15 objectAtIndexedSubscript:1], v155 = objc_claimAutoreleasedReturnValue(), v156 = objc_msgSend(v155, "intValue"), v155, !v156))
      {
        v103 = objc_opt_new();
        for (i = 0; i != 4; ++i)
        {
          v160 = SDTraceDescription(i);
          if ([v160 length])
          {
            [v103 appendString:v160];
            [v103 appendString:@"\n"];
          }
        }
      }

      else
      {
        v103 = SDTraceDescription(v156);
      }

      if (v12 && [v103 length])
      {
        v161 = [v103 dataUsingEncoding:4];
        (v12)[2](v12, v161, 0);

        v12 = 0;
      }

      goto LABEL_188;
    }

    v158 = [v15 objectAtIndexedSubscript:0];
    if ([v158 isEqualToString:@"diagnose"])
    {

LABEL_190:
      v164 = [v15 objectAtIndexedSubscript:0];
      if ([v164 isEqualToString:@"diagnose_logq"])
      {
        v165 = isAppleInternalInstall();
      }

      else
      {
        v165 = 0;
      }

      [sDelegate dumpTTRDebugFiles];
      if (v17 == 1)
      {
        v470 = 0;
        v471 = 0;
      }

      else
      {
        v470 = [v15 objectAtIndexedSubscript:1];
        if (v17 < 3)
        {
          v471 = 0;
        }

        else
        {
          v471 = [v15 objectAtIndexedSubscript:2];
        }
      }

      v480 = objc_opt_new();
      date = [MEMORY[0x277CBEAA8] date];
      group = objc_alloc_init(MEMORY[0x277CCA968]);
      [group setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
      v477 = [group stringFromDate:date];
      v482 = SPLogDirectory(v477);
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v172 = [defaultManager fileExistsAtPath:v482];

      if ((v172 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v173 = objc_claimAutoreleasedReturnValue(), v572 = 0, objc_msgSend(v173, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v482, 1, 0, &v572), v472 = v572, v173, !v472))
      {
        v472 = 0;
      }

      else
      {
        v175 = logForCSLogCategoryDefault(v174);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
        {
          [SPCoreSpotlightIndexer _issueCommand:outFileDescriptor:searchContext:completionHandler:];
        }
      }

      v477 = [@"Spotlight_" stringByAppendingFormat:@"%@.log", v477];
      v486 = [v482 stringByAppendingPathComponent:v477];
      v176 = v486;
      fileSystemRepresentation = [v486 fileSystemRepresentation];
      v178 = open(fileSystemRepresentation, 522, 384);
      v179 = __error();
      if (v178 < 1)
      {
        v181 = logForCSLogCategoryDefault(v179);
        if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
        {
          [SPCoreSpotlightIndexer _issueCommand:outFileDescriptor:searchContext:completionHandler:];
        }

        v180 = 0;
      }

      else
      {
        v180 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v178 closeOnDealloc:1];
      }

      v4772 = [MEMORY[0x277CCACA8] stringWithFormat:@"=== Spotlight Diagnostic (%d) %@\n\n", getpid(), v477];
      v183 = [v4772 dataUsingEncoding:4];
      v184 = [(dispatch_queue_t *)selfCopy writeData:v183 toFile:v180];

      if (v184)
      {
        if ([SPCoreSpotlightIndexer writeDiagnostic:v180 bundleID:v470 identifier:v471 logQuery:v165])
        {
          v185 = [@"=== Spotlight Diagnostic End\n" dataUsingEncoding:4];
          LOBYTE(v184) = [(dispatch_queue_t *)selfCopy writeData:v185 toFile:v180];
        }

        else
        {
          LOBYTE(v184) = 0;
        }
      }

      v186 = dispatch_group_create();
      dispatch_group_enter(v186);
      mEMORY[0x277D65790] = [MEMORY[0x277D65790] sharedProcessor];
      v188 = [MEMORY[0x277CCACA8] stringWithUTF8String:fileSystemRepresentation];
      stringByDeletingLastPathComponent = [v188 stringByDeletingLastPathComponent];
      v570[0] = MEMORY[0x277D85DD0];
      v570[1] = 3221225472;
      v570[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2746;
      v570[3] = &unk_2789348E8;
      v190 = v186;
      v571 = v190;
      [mEMORY[0x277D65790] collectDiagnostics:stringByDeletingLastPathComponent completion:v570];

      v191 = dispatch_time(0, 600000000000);
      dispatch_group_wait(v190, v191);
      if (fileSystemRepresentation)
      {
        v192 = v184;
      }

      else
      {
        v192 = 1;
      }

      if ((v192 & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v194 = [MEMORY[0x277CCACA8] stringWithUTF8String:fileSystemRepresentation];
        [defaultManager2 removeItemAtPath:v194 error:0];
      }

      [v180 closeFile];
      [v480 addObject:v486];
      if ([v480 count])
      {
        v195 = [MEMORY[0x277CCAC58] dataWithPropertyList:v480 format:200 options:0 error:0];
      }

      else
      {
        v195 = 0;
      }

      if (v12)
      {
        (v12)[2](v12, v195, 0);
      }

      goto LABEL_523;
    }

    v162 = [v15 objectAtIndexedSubscript:0];
    v163 = [v162 isEqualToString:@"diagnose_logq"];

    if (v163)
    {
      goto LABEL_190;
    }

    v166 = [v15 objectAtIndexedSubscript:0];
    v167 = [v166 isEqualToString:@"clientstate"];

    if (v167)
    {
      if (v17 >= 3)
      {
        v168 = [v15 objectAtIndexedSubscript:1];
        v169 = [v15 objectAtIndexedSubscript:2];
        if (v17 == 3)
        {
          v170 = 0;
        }

        else
        {
          v170 = [v15 objectAtIndexedSubscript:3];
        }

        v566[0] = MEMORY[0x277D85DD0];
        v566[1] = 3221225472;
        v566[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2750;
        v566[3] = &unk_278936D20;
        v567 = v168;
        v568 = v169;
        v569 = v12;
        v201 = v169;
        v202 = v168;
        [(dispatch_queue_t *)selfCopy fetchLastClientStateWithProtectionClass:v170 forBundleID:v202 clientStateName:v201 options:0 completionHandler:v566];

        goto LABEL_523;
      }

      goto LABEL_22;
    }

    v196 = [v15 objectAtIndexedSubscript:0];
    v197 = [v196 isEqualToString:@"applications"];

    if (v197)
    {
      notify_post("com.apple.searchd.applications.changed");
      goto LABEL_22;
    }

    v198 = [v15 objectAtIndexedSubscript:0];
    v199 = [v198 isEqualToString:@"ranking"];

    if (v199)
    {
      if (v17 == 1)
      {
        v200 = 0;
      }

      else
      {
        v200 = [v15 objectAtIndexedSubscript:1];
      }

      v564[0] = MEMORY[0x277D85DD0];
      v564[1] = 3221225472;
      v564[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2758;
      v564[3] = &unk_2789341A8;
      v565 = v12;
      [(dispatch_queue_t *)selfCopy handleRankingCommand:v200 completion:v564];
      if (v17 != 1)
      {
      }

      goto LABEL_523;
    }

    v203 = [v15 objectAtIndexedSubscript:0];
    v204 = [v203 isEqualToString:@"query_spotlight"];

    if (v204 || ([v15 objectAtIndexedSubscript:0], v205 = objc_claimAutoreleasedReturnValue(), v206 = objc_msgSend(v205, "isEqualToString:", @"query_pommes"), v205, v206))
    {
      _SISetQueryBehavior();
      goto LABEL_22;
    }

    v207 = [v15 objectAtIndexedSubscript:0];
    v208 = [v207 isEqualToString:@"reindexJob"];

    if (v208)
    {
      if (v17 != 5)
      {
        goto LABEL_517;
      }

      v487 = [v15 objectAtIndexedSubscript:1];
      v209 = [v15 objectAtIndexedSubscript:2];
      v210 = [v209 componentsSeparatedByString:@"=;"];;

      v211 = [v15 objectAtIndexedSubscript:3];
      integerValue2 = [v211 integerValue];

      if ([v487 length])
      {
        v599 = v487;
        v483 = [MEMORY[0x277CBEA60] arrayWithObjects:&v599 count:1];
      }

      else
      {
        v483 = 0;
      }

      v228 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1 jobOptions:integerValue2];
      [v228 setProtectionClasses:v210];
      v229 = [v15 objectAtIndexedSubscript:4];
      v230 = [v229 componentsSeparatedByString:@"=;"];;
      [v228 setIdentifiersToReindex:v230];

      v232 = logForCSLogCategoryIndex(v231);
      if (os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v487;
        *&buf[12] = 2112;
        *&buf[14] = v229;
        _os_log_impl(&dword_231A35000, v232, OS_LOG_TYPE_INFO, "reindexJob %@: %@", buf, 0x16u);
      }

      v233 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
      if (![v210 count])
      {
        allProtectionClasses = [objc_opt_class() allProtectionClasses];

        v210 = allProtectionClasses;
      }

      v562[0] = MEMORY[0x277D85DD0];
      v562[1] = 3221225472;
      v562[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2771;
      v562[3] = &unk_2789366A0;
      v563 = v233;
      v235 = v233;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithProtectionClasses:v210 inferSpecialIndexes:0 block:v562];
      v236 = [[SPCoreSpotlightIndexerTask alloc] initWithIndexJob:v228 indexers:v235];
      [(SPCoreSpotlightIndexerTask *)v236 setBundleIDs:v483];
      [(SPCoreSpotlightIndexerTask *)v236 setDataMigrationStage:[(dispatch_queue_t *)selfCopy dataMigrationStage]];
      v560[0] = MEMORY[0x277D85DD0];
      v560[1] = 3221225472;
      v560[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2772;
      v560[3] = &unk_2789341A8;
      v561 = v12;
      [(dispatch_queue_t *)selfCopy performIndexerTask:v236 completionHandler:v560];

      goto LABEL_523;
    }

    v213 = [v15 objectAtIndexedSubscript:0];
    v214 = [v213 isEqualToString:@"job"];

    if (v214)
    {
      if (v17 != 6)
      {
        goto LABEL_517;
      }

      v488 = [v15 objectAtIndexedSubscript:1];
      v215 = [v15 objectAtIndexedSubscript:2];
      v216 = [v215 componentsSeparatedByString:{@", "}];

      v217 = [v15 objectAtIndexedSubscript:3];
      integerValue3 = [v217 integerValue];

      v219 = [v15 objectAtIndexedSubscript:4];
      integerValue4 = [v219 integerValue];

      if ([v488 length])
      {
        v598 = v488;
        v221 = [MEMORY[0x277CBEA60] arrayWithObjects:&v598 count:1];
      }

      else
      {
        v221 = 0;
      }

      v240 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:integerValue3 jobOptions:integerValue4];
      [v240 setProtectionClasses:v216];
      if (integerValue3 == 1)
      {
        v241 = [v15 objectAtIndexedSubscript:5];
        v242 = [v241 componentsSeparatedByString:{@", "}];
        [v240 setIdentifiersToReindex:v242];
      }

      [v240 setReason:@"client reindex request"];
      v243 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
      if (![v216 count])
      {
        allProtectionClasses2 = [objc_opt_class() allProtectionClasses];

        v216 = allProtectionClasses2;
      }

      v558[0] = MEMORY[0x277D85DD0];
      v558[1] = 3221225472;
      v558[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3;
      v558[3] = &unk_2789366A0;
      v559 = v243;
      v245 = v243;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithProtectionClasses:v216 inferSpecialIndexes:0 block:v558];
      v246 = [[SPCoreSpotlightIndexerTask alloc] initWithIndexJob:v240 indexers:v245];
      [(SPCoreSpotlightIndexerTask *)v246 setBundleIDs:v221];
      [(SPCoreSpotlightIndexerTask *)v246 setDataMigrationStage:[(dispatch_queue_t *)selfCopy dataMigrationStage]];
      v556[0] = MEMORY[0x277D85DD0];
      v556[1] = 3221225472;
      v556[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_4;
      v556[3] = &unk_2789341A8;
      v557 = v12;
      [(dispatch_queue_t *)selfCopy performIndexerTask:v246 completionHandler:v556];

      goto LABEL_523;
    }

    v222 = [v15 objectAtIndexedSubscript:0];
    v223 = [v222 isEqualToString:@"log"];

    if (v223)
    {
      if (v17 == 3)
      {
        v224 = [v15 objectAtIndexedSubscript:1];
        lowercaseString = [v224 lowercaseString];

        if (([lowercaseString isEqualToString:@"general"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"query") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"livequery") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"scheduler") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"store") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"fetch") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"path") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"sdb") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"docstore") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"ci") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"state") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"power") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"qos") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"completions"))
        {
          v286 = [v15 objectAtIndexedSubscript:2];
          lowercaseString2 = [v286 lowercaseString];

          if (([lowercaseString2 isEqualToString:@"debug"] & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"info") & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"warning") & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"error") & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"fatal") & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"none") & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"ignore") & 1) != 0 || (objc_msgSend(lowercaseString2, "isEqualToString:", @"normal") & 1) != 0 || objc_msgSend(lowercaseString2, "isEqualToString:", @"temporary"))
          {
            SISetLogging();
          }
        }
      }

      goto LABEL_22;
    }

    v226 = [v15 objectAtIndexedSubscript:0];
    v227 = [v226 isEqualToString:@"shutdown"];

    if (v227)
    {
      if (v12)
      {
        v12[2](v12, 0, 0);
      }

      raise(15);
      goto LABEL_523;
    }

    v237 = [v15 objectAtIndexedSubscript:0];
    v238 = [v237 isEqualToString:@"shrink"];

    if (v238)
    {
      if (v17 == 1)
      {
        v239 = 2;
      }

      else
      {
        v250 = MEMORY[0x277CCA980];
        v251 = [v15 objectAtIndexedSubscript:1];
        v252 = [v250 decimalNumberWithString:v251];
        longValue = [v252 longValue];

        if (longValue <= 0)
        {
          v239 = 2;
        }

        else
        {
          v239 = longValue;
        }
      }

      [objc_opt_class() shrink:v239];
      goto LABEL_22;
    }

    v247 = [v15 objectAtIndexedSubscript:0];
    v248 = [v247 isEqualToString:@"migrate"];

    if (v248)
    {
      if (v17 == 1)
      {
        v249 = 0;
      }

      else
      {
        v257 = [v15 objectAtIndexedSubscript:1];
        v249 = [v257 isEqualToString:@"forced"];
      }

      [(dispatch_queue_t *)selfCopy migrateForced:v249];
      goto LABEL_22;
    }

    v254 = [v15 objectAtIndexedSubscript:0];
    v255 = [v254 isEqualToString:@"reindexAllItems"];

    if (v255)
    {
      reindexAllItemsSource = [(dispatch_queue_t *)selfCopy reindexAllItemsSource];
      dispatch_source_merge_data(reindexAllItemsSource, 1uLL);

      goto LABEL_22;
    }

    v258 = [v15 objectAtIndexedSubscript:0];
    v259 = [v258 isEqualToString:@"reindexAllItemsWithIdentifiers"];

    if (v259)
    {
      reindexAllItemsWithIdentifiersSource = [(dispatch_queue_t *)selfCopy reindexAllItemsWithIdentifiersSource];
      dispatch_source_merge_data(reindexAllItemsWithIdentifiersSource, 1uLL);

      goto LABEL_22;
    }

    v261 = [v15 objectAtIndexedSubscript:0];
    v262 = [v261 isEqualToString:@"deleteAllInteractionsWithBundleID"];

    if (v262)
    {
      if (v17 != 1)
      {
        v263 = [v15 objectAtIndexedSubscript:1];
        v554[0] = MEMORY[0x277D85DD0];
        v554[1] = 3221225472;
        v554[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_5;
        v554[3] = &unk_278935048;
        v555 = v12;
        [(dispatch_queue_t *)selfCopy deleteAllInteractionsWithBundleID:v263 completionHandler:v554];

        goto LABEL_523;
      }

      goto LABEL_22;
    }

    v264 = [v15 objectAtIndexedSubscript:0];
    v265 = [v264 isEqualToString:@"deleteActions"];

    if (v265)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v267 = v266;
      if (v17 != 1)
      {
        v268 = [v15 objectAtIndexedSubscript:1];
        [v268 doubleValue];
        v267 = v269;
      }

      v552[0] = MEMORY[0x277D85DD0];
      v552[1] = 3221225472;
      v552[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_6;
      v552[3] = &unk_278935048;
      v553 = v12;
      [(dispatch_queue_t *)selfCopy deleteActionsBeforeTime:v552 completionHandler:v267];

      goto LABEL_523;
    }

    v270 = [v15 objectAtIndexedSubscript:0];
    v271 = [v270 isEqualToString:@"deleteActionsWithIdentifiers"];

    if (v271)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v272 = [v15 subarrayWithRange:{1, v16}];
        v550[0] = MEMORY[0x277D85DD0];
        v550[1] = 3221225472;
        v550[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_7;
        v550[3] = &unk_278935048;
        v551 = v12;
        [(dispatch_queue_t *)selfCopy deleteActionsWithIdentifiers:v272 completionHandler:v550];

        goto LABEL_523;
      }

      goto LABEL_22;
    }

    v273 = [v15 objectAtIndexedSubscript:0];
    v274 = [v273 isEqualToString:@"enableJournal"];

    if (v274)
    {
      [MEMORY[0x277CC3510] setJournalEnabled:1];
      goto LABEL_22;
    }

    v275 = [v15 objectAtIndexedSubscript:0];
    v276 = [v275 isEqualToString:@"disableJournal"];

    if (v276)
    {
      [MEMORY[0x277CC3510] setJournalEnabled:0];
      goto LABEL_22;
    }

    v277 = [v15 objectAtIndexedSubscript:0];
    v278 = [v277 isEqualToString:@"topTerms"];

    if (v278)
    {
      if (v17 != 1)
      {
        v279 = [v15 objectAtIndexedSubscript:1];
        [(dispatch_queue_t *)selfCopy topKTerms:v279 completionHandler:v12];

        goto LABEL_523;
      }

      goto LABEL_517;
    }

    v280 = [v15 objectAtIndexedSubscript:0];
    v281 = [v280 isEqualToString:@"updateRankingDates"];

    if (v281)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2890];
      goto LABEL_22;
    }

    v282 = [v15 objectAtIndexedSubscript:0];
    v283 = [v282 isEqualToString:@"updateEmailLocalParts"];

    if (v283)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2895];
      goto LABEL_22;
    }

    v284 = [v15 objectAtIndexedSubscript:0];
    v285 = [v284 isEqualToString:@"updateEmailContentURLAttr"];

    if (v285)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2900];
      goto LABEL_22;
    }

    v288 = [v15 objectAtIndexedSubscript:0];
    v289 = [v288 isEqualToString:@"updateContainersAndScores"];

    if (v289)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2905];
      goto LABEL_22;
    }

    v290 = [v15 objectAtIndexedSubscript:0];
    v291 = [v290 isEqualToString:@"updateGroups"];

    if (v291)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2910];
      goto LABEL_22;
    }

    v292 = [v15 objectAtIndexedSubscript:0];
    v293 = [v292 isEqualToString:@"updateNotes"];

    if (v293)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2915];
      goto LABEL_22;
    }

    v294 = [v15 objectAtIndexedSubscript:0];
    v295 = [v294 isEqualToString:@"updateIndexRankingDates"];

    if (v295)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2920];
      goto LABEL_22;
    }

    v296 = [v15 objectAtIndexedSubscript:0];
    v297 = [v296 isEqualToString:@"updateDerivedIsMe"];

    if (v297)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2925];
      goto LABEL_22;
    }

    v298 = [v15 objectAtIndexedSubscript:0];
    v299 = [v298 isEqualToString:@"updateDerivedIsMeIfNotAlready"];

    if (v299)
    {
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:&__block_literal_global_2930];
      goto LABEL_22;
    }

    v300 = [v15 objectAtIndexedSubscript:0];
    v301 = [v300 isEqualToString:@"clearReceiverCache"];

    if (v301)
    {
      +[SpotlightSender clearCache];
      goto LABEL_22;
    }

    v302 = [v15 objectAtIndexedSubscript:0];
    v303 = [v302 isEqualToString:@"setNumberProperty"];

    if (v303)
    {
      v304 = [v15 objectAtIndexedSubscript:1];
      v305 = [v15 objectAtIndexedSubscript:2];
      v306 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v306 setNumberStyle:1];
      v307 = [v306 numberFromString:v305];
      v547[0] = MEMORY[0x277D85DD0];
      v547[1] = 3221225472;
      v547[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_17;
      v547[3] = &unk_278936768;
      v548 = v307;
      v549 = v304;
      v308 = v304;
      v309 = v307;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:v547];

      goto LABEL_22;
    }

    v310 = [v15 objectAtIndexedSubscript:0];
    v311 = [v310 isEqualToString:@"setUISearchEnabled"];

    if (v311)
    {
      v312 = [v15 objectAtIndexedSubscript:1];
      v313 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v313 setNumberStyle:1];
      v314 = [v313 numberFromString:v312];
      v545[0] = MEMORY[0x277D85DD0];
      v545[1] = 3221225472;
      v545[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_18;
      v545[3] = &unk_2789366A0;
      v546 = v314;
      v315 = v314;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:v545];
      v316 = -[dispatch_queue_t writeUISearchEnabled:](selfCopy, "writeUISearchEnabled:", [v315 BOOLValue]);
      LOBYTE(v23) = v316 == 0;

      goto LABEL_518;
    }

    v317 = [v15 objectAtIndexedSubscript:0];
    v318 = [v317 isEqualToString:@"getProperty"];

    if (v318)
    {
      v319 = [v15 objectAtIndexedSubscript:1];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v595 = __Block_byref_object_copy__0;
      v596 = __Block_byref_object_dispose__0;
      v597 = &stru_2846BD100;
      v542[0] = MEMORY[0x277D85DD0];
      v542[1] = 3221225472;
      v542[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_19;
      v542[3] = &unk_278936D48;
      v544 = buf;
      v320 = v319;
      v543 = v320;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:v542];
      if (v12)
      {
        v321 = [*(*&buf[8] + 40) dataUsingEncoding:4];
        (v12)[2](v12, v321, 0);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_523;
    }

    v322 = [v15 objectAtIndexedSubscript:0];
    v323 = [v322 isEqualToString:@"properties"];

    if (v323)
    {
      v324 = objc_opt_new();
      extractBundlesAndProtectionClasses(v15, 0, v324);
      if (![v324 count])
      {

        v324 = 0;
      }

      v325 = objc_opt_new();
      v540[0] = MEMORY[0x277D85DD0];
      v540[1] = 3221225472;
      v540[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_20;
      v540[3] = &unk_2789366A0;
      v326 = v325;
      v541 = v326;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithProtectionClasses:v324 forQueryWithContext:0 forBundleIds:0 inferSpecialIndexes:0 block:v540];
      if (v12)
      {
        v327 = [v326 dataUsingEncoding:4];
        (v12)[2](v12, v327, 0);
      }

      goto LABEL_523;
    }

    v328 = [v15 objectAtIndexedSubscript:0];
    v329 = [v328 hasPrefix:@"clearDerived"];

    v330 = [v15 objectAtIndexedSubscript:0];
    v331 = v330;
    if (v329)
    {
      v332 = [v330 isEqualToString:@"clearDerivedMail"];

      if (v332)
      {
        v333 = @"kSPEmail";
      }

      else
      {
        v336 = [v15 objectAtIndexedSubscript:0];
        v337 = [v336 isEqualToString:@"clearDerivedHasPhotos"];

        if (v337)
        {
          v333 = @"kSPHasPhotos";
        }

        else
        {
          v341 = [v15 objectAtIndexedSubscript:0];
          v342 = [v341 isEqualToString:@"clearDerivedHasText"];

          if (v342)
          {
            v333 = @"kSPHasText";
          }

          else
          {
            v344 = [v15 objectAtIndexedSubscript:0];
            v345 = [v344 isEqualToString:@"clearDerivedPhotosAndText"];

            if (v345)
            {
              v333 = @"kSPHasInitializedPhotosAndText";
            }

            else
            {
              v333 = @"kSPDerived";
            }
          }
        }
      }

      v346 = objc_opt_new();
      extractBundlesAndProtectionClasses(v15, 0, v346);
      if (![v346 count])
      {

        v346 = 0;
      }

      v347 = dispatch_group_create();
      v537[0] = MEMORY[0x277D85DD0];
      v537[1] = 3221225472;
      v537[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_21;
      v537[3] = &unk_278936768;
      v538 = v333;
      v539 = v347;
      v348 = v347;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithProtectionClasses:v346 forQueryWithContext:0 forBundleIds:0 inferSpecialIndexes:0 block:v537];
      v349 = sIndexQueue;
      v535[0] = MEMORY[0x277D85DD0];
      v535[1] = 3221225472;
      v535[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_22;
      v535[3] = &unk_2789341A8;
      v536 = v12;
      v350 = v12;
      v351 = _setup_block(v535, 0, 20787);
      dispatch_group_notify(v348, v349, v351);

      goto LABEL_523;
    }

    v334 = [v330 isEqualToString:@"priorityIndexFixupOn"];

    if (v334)
    {
      priorityIndexer = [(dispatch_queue_t *)selfCopy priorityIndexer];
      [priorityIndexer issuePriorityIndexFixupOn];

      goto LABEL_22;
    }

    v338 = [v15 objectAtIndexedSubscript:0];
    v339 = [v338 isEqualToString:@"reindexMultiple"];

    if (v339)
    {
      v340 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];
      v533[0] = MEMORY[0x277D85DD0];
      v533[1] = 3221225472;
      v533[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_23;
      v533[3] = &unk_2789341A8;
      v534 = v12;
      [(dispatch_queue_t *)selfCopy _reindexAllItemsForBundleIDs:v340 reason:@"issue-command" completionHandler:v533];

      goto LABEL_523;
    }

    v343 = [v15 objectAtIndexedSubscript:0];
    if ([v343 isEqualToString:@"testBundleDelete"])
    {

LABEL_394:
      v481 = [v15 objectAtIndexedSubscript:0];
      [v481 hasSuffix:@"NoClear"];
      v489 = objc_opt_new();
      v484 = objc_opt_new();
      extractBundlesAndProtectionClasses(v15, v489, v484);
      if ([v489 count])
      {
        if (![v484 count])
        {
          [v484 addObject:*MEMORY[0x277CCA1A0]];
        }

        groupa = dispatch_group_create();
        v476 = MEMORY[0x2383760E0](v12);

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LODWORD(v595) = 0;
        v529 = 0u;
        v530 = 0u;
        v531 = 0u;
        v532 = 0u;
        v354 = v484;
        v355 = [v354 countByEnumeratingWithState:&v529 objects:v593 count:16];
        if (v355)
        {
          v474 = *v530;
          do
          {
            for (j = 0; j != v355; ++j)
            {
              if (*v530 != v474)
              {
                objc_enumerationMutation(v354);
              }

              v357 = *(*(&v529 + 1) + 8 * j);
              concreteIndexers = [(dispatch_queue_t *)selfCopy concreteIndexers];
              v359 = [concreteIndexers objectForKeyedSubscript:v357];

              index = [v359 index];
              if (index)
              {
                v361 = logForCSLogCategoryIndex(index);
                if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                {
                  dataclass = [v359 dataclass];
                  *v587 = 138412802;
                  v588 = v481;
                  v589 = 2112;
                  v590 = dataclass;
                  v591 = 2112;
                  v592 = v489;
                  _os_log_impl(&dword_231A35000, v361, OS_LOG_TYPE_DEFAULT, "### %@ %@ %@", v587, 0x20u);
                }

                dispatch_group_enter(groupa);
                v522 = MEMORY[0x277D85DD0];
                v523 = 3221225472;
                v524 = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2998;
                v525 = &unk_278936D70;
                v526 = v481;
                v528 = buf;
                v527 = groupa;
                _SIDeleteBundles();
              }
            }

            v355 = [v354 countByEnumeratingWithState:&v529 objects:v593 count:16];
          }

          while (v355);
        }

        v363 = sIndexQueue;
        v519[0] = MEMORY[0x277D85DD0];
        v519[1] = 3221225472;
        v519[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2999;
        v519[3] = &unk_278936D98;
        v521 = buf;
        v364 = v476;
        v520 = v364;
        v365 = _setup_block(v519, 0, 20841);
        dispatch_group_notify(groupa, v363, v365);

        _Block_object_dispose(buf, 8);
        v12 = 0;
      }

      goto LABEL_22;
    }

    v352 = [v15 objectAtIndexedSubscript:0];
    v353 = [v352 isEqualToString:@"testBundleDeleteNoClear"];

    if (v353)
    {
      goto LABEL_394;
    }

    v366 = [v15 objectAtIndexedSubscript:0];
    if ([v366 isEqualToString:@"testTransfer"])
    {

LABEL_413:
      v490 = [v15 objectAtIndexedSubscript:0];
      [v490 hasSuffix:@"NoClear"];
      v369 = objc_opt_new();
      v370 = objc_opt_new();
      extractBundlesAndProtectionClasses(v15, v369, v370);
      v371 = [v370 count];
      if (![v370 count])
      {
        [v370 addObject:*MEMORY[0x277CCA1A0]];
        [v370 addObject:@"Priority"];
        v371 = [v370 count];
      }

      if (v371 - 1 <= 1)
      {
        concreteIndexers2 = [(dispatch_queue_t *)selfCopy concreteIndexers];
        firstObject = [v370 firstObject];
        v374 = [concreteIndexers2 objectForKey:firstObject];
        index2 = [v374 index];

        if (index2)
        {
          if (v371 >= 2)
          {
            concreteIndexers3 = [(dispatch_queue_t *)selfCopy concreteIndexers];
            v376 = [v370 objectAtIndexedSubscript:1];
            v377 = [concreteIndexers3 objectForKey:v376];
            [v377 index];
          }

          v386 = [v369 count];
          if (!v386)
          {
            allObjects = [sPriorityBundleIds allObjects];
            [v369 addObjectsFromArray:allObjects];
          }

          v388 = logForCSLogCategoryIndex(v386);
          if (os_log_type_enabled(v388, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = v490;
            *&buf[12] = 2112;
            *&buf[14] = v370;
            *&buf[22] = 2112;
            v595 = v369;
            _os_log_impl(&dword_231A35000, v388, OS_LOG_TYPE_DEFAULT, "### %@ %@ %@", buf, 0x20u);
          }

          v513 = MEMORY[0x277D85DD0];
          v514 = 3221225472;
          v515 = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3006;
          v516 = &unk_278936DC0;
          v517 = v490;
          v518 = v12;
          _SITransferBundles();

          v12 = 0;
        }
      }

      goto LABEL_22;
    }

    v367 = [v15 objectAtIndexedSubscript:0];
    v368 = [v367 isEqualToString:@"testTransferNoClear"];

    if (v368)
    {
      goto LABEL_413;
    }

    v378 = [v15 objectAtIndexedSubscript:0];
    v379 = [v378 isEqualToString:@"priorityReset"];

    if (v379)
    {
      priorityIndexer2 = [(dispatch_queue_t *)selfCopy priorityIndexer];
      defaultIndexer = [(dispatch_queue_t *)selfCopy defaultIndexer];
      index3 = [priorityIndexer2 index];
      index4 = [defaultIndexer index];
      if (index3 && index4)
      {
        v384 = logForCSLogCategoryIndex(index4);
        if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231A35000, v384, OS_LOG_TYPE_DEFAULT, "### priorityReset", buf, 2u);
        }

        allObjects2 = [sPriorityBundleIds allObjects];
        v508[5] = MEMORY[0x277D85DD0];
        v508[6] = 3221225472;
        v508[7] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3010;
        v508[8] = &unk_278936E10;
        v512 = v12;
        v509 = defaultIndexer;
        v510 = selfCopy;
        v511 = priorityIndexer2;
        _SITransferBundles();

        v12 = 0;
      }

      goto LABEL_22;
    }

    v389 = [v15 objectAtIndexedSubscript:0];
    v390 = [v389 isEqualToString:@"suspend"];

    if (v390)
    {
      v391 = selfCopy[29];
      v508[0] = MEMORY[0x277D85DD0];
      v508[1] = 3221225472;
      v508[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3015;
      v508[3] = &unk_278934050;
      v508[4] = selfCopy;
      v392 = v508;
LABEL_436:
      dispatch_sync(v391, v392);
      goto LABEL_22;
    }

    v393 = [v15 objectAtIndexedSubscript:0];
    v394 = [v393 isEqualToString:@"resume"];

    if (v394)
    {
      v391 = selfCopy[29];
      v507[0] = MEMORY[0x277D85DD0];
      v507[1] = 3221225472;
      v507[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3019;
      v507[3] = &unk_278934050;
      v507[4] = selfCopy;
      v392 = v507;
      goto LABEL_436;
    }

    v395 = [v15 objectAtIndexedSubscript:0];
    v396 = [v395 isEqualToString:@"setLowDisk"];

    if (v396)
    {
      LOBYTE(v23) = 1;
      if ((sVeryLowDiskSpace & 1) == 0)
      {
        sVeryLowDiskSpace = 1;
        [(dispatch_queue_t *)selfCopy recycleAndPurgeIndex];
      }

      goto LABEL_518;
    }

    v397 = [v15 objectAtIndexedSubscript:0];
    v398 = [v397 isEqualToString:@"setNormalDisk"];

    if (v398)
    {
      if (sVeryLowDiskSpace == 1)
      {
        sVeryLowDiskSpace = 0;
        [(dispatch_queue_t *)selfCopy restoreIndexAndClearPurgeable];
      }

      goto LABEL_22;
    }

    v399 = [v15 objectAtIndexedSubscript:0];
    v400 = [v399 isEqualToString:@"isLowDisk"];

    if (v400)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v595 = __Block_byref_object_copy__0;
      v596 = __Block_byref_object_dispose__0;
      if (sVeryLowDiskSpace)
      {
        v401 = @"YES\n";
      }

      else
      {
        v401 = @"NO\n";
      }

      v597 = [@"sVeryLowDiskSpace = " stringByAppendingString:v401];
      v506[0] = MEMORY[0x277D85DD0];
      v506[1] = 3221225472;
      v506[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3038;
      v506[3] = &unk_278936AF0;
      v506[4] = buf;
      [(dispatch_queue_t *)selfCopy _enumerateIndexersWithBlock:v506];
      if (v12)
      {
        v402 = [*(*&buf[8] + 40) dataUsingEncoding:4];
        (v12)[2](v12, v402, 0);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_523;
    }

    v403 = [v15 objectAtIndexedSubscript:0];
    v404 = [v403 isEqualToString:@"validateIndexers"];

    if (v404)
    {
      if (v17 == 1)
      {
        v405 = 0;
LABEL_498:
        [(dispatch_queue_t *)selfCopy validateIndexers:v405 outFileDescriptor:v8];
        v12[2](v12, 0, 0);

        goto LABEL_523;
      }

      v409 = [v15 objectAtIndexedSubscript:1];
      if ([v409 isEqualToString:@"P"])
      {
        v410 = [MEMORY[0x277CBEA60] arrayWithObject:@"Priority"];
      }

      else if ([v409 isEqualToString:@"M"])
      {
        v410 = [MEMORY[0x277CBEA60] arrayWithObject:@"MobileMailIndex"];
      }

      else if ([v409 isEqualToString:@"A"])
      {
        v410 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA190]];
      }

      else if ([v409 isEqualToString:@"B"])
      {
        v410 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA198]];
      }

      else if ([v409 isEqualToString:@"C"])
      {
        v410 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA1A0]];
      }

      else
      {
        if (![v409 isEqualToString:@"X"])
        {
          v405 = 0;
          goto LABEL_497;
        }

        v410 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA1A8]];
      }

      v405 = v410;
LABEL_497:

      goto LABEL_498;
    }

    v406 = [v15 objectAtIndexedSubscript:0];
    v407 = [v406 isEqualToString:@"validateVectors"];

    if (!v407)
    {
      v411 = [v15 objectAtIndexedSubscript:0];
      v412 = [v411 isEqualToString:@"prepareIndexingWhileLocked"];

      if (v412)
      {
        if (v17 >= 4)
        {
          v413 = [v15 objectAtIndexedSubscript:1];
          v414 = [v15 objectAtIndexedSubscript:2];
          v415 = [v15 objectAtIndexedSubscript:3];
          [v415 doubleValue];
          v417 = v416;

          v504[0] = MEMORY[0x277D85DD0];
          v504[1] = 3221225472;
          v504[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_3060;
          v504[3] = &unk_278935048;
          v505 = v12;
          [(dispatch_queue_t *)selfCopy prepareIndexingWhileLocked:v413 protectionClass:v414 holdAssertionFor:v504 completionHandler:v417];

          goto LABEL_523;
        }

        goto LABEL_517;
      }

      v420 = [v15 objectAtIndexedSubscript:0];
      v421 = [v420 isEqualToString:@"finishIndexingWhileLocked"];

      if (v421)
      {
        if (v17 >= 3)
        {
          v422 = [v15 objectAtIndexedSubscript:1];
          v423 = [v15 objectAtIndexedSubscript:2];
          v502[0] = MEMORY[0x277D85DD0];
          v502[1] = 3221225472;
          v502[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3_3064;
          v502[3] = &unk_278935048;
          v503 = v12;
          [(dispatch_queue_t *)selfCopy finishIndexingWhileLocked:v422 protectionClass:v423 completionHandler:v502];

          goto LABEL_523;
        }

        goto LABEL_517;
      }

      v424 = [v15 objectAtIndexedSubscript:0];
      if ([v424 isEqualToString:@"asset"])
      {
      }

      else
      {
        v425 = [v15 objectAtIndexedSubscript:0];
        v426 = [v425 isEqualToString:@"assets"];

        if (!v426)
        {
          v429 = [v15 objectAtIndexedSubscript:0];
          v430 = [v429 isEqualToString:@"trial"];

          if (v430)
          {
            v431 = [MEMORY[0x277D657F0] runTrialCommand:v15];
            v432 = [v431 dataUsingEncoding:4];
            (v12)[2](v12, v432, 0);

            goto LABEL_523;
          }

          v433 = [v15 objectAtIndexedSubscript:0];
          v434 = [v433 isEqualToString:@"indexAnalyticsDump"];

          if (v434)
          {
            v435 = MEMORY[0x277CCACA8];
            dumpIndexAges = [(dispatch_queue_t *)selfCopy dumpIndexAges];
            dumpIndexAnalytics = [(dispatch_queue_t *)selfCopy dumpIndexAnalytics];
            v437 = [v435 stringWithFormat:@"%@\n%@", dumpIndexAges, dumpIndexAnalytics];
            v439 = [v437 dataUsingEncoding:4];
            (v12)[2](v12, v439, 0);

            goto LABEL_523;
          }

          v440 = [v15 objectAtIndexedSubscript:0];
          v441 = [v440 isEqualToString:@"appContainers"];

          if (v441)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v595 = __Block_byref_object_copy__0;
            v596 = __Block_byref_object_dispose__0;
            v597 = 0;
            if (v17 != 1)
            {
              v442 = [v15 objectAtIndexedSubscript:1];
              v443 = [v442 isEqualToString:@"refresh"];

              if (v443)
              {
                mEMORY[0x277CC33F0] = [MEMORY[0x277CC33F0] sharedInstance];
                v501[0] = MEMORY[0x277D85DD0];
                v501[1] = 3221225472;
                v501[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_4_3088;
                v501[3] = &unk_278936E38;
                v501[4] = buf;
                [mEMORY[0x277CC33F0] refreshCacheWithCompletionHandler:v501];
              }
            }

            if (!*(*&buf[8] + 40))
            {
              mEMORY[0x277CC33F0]2 = [MEMORY[0x277CC33F0] sharedInstance];
              dumpAppContainerCache = [mEMORY[0x277CC33F0]2 dumpAppContainerCache];
              v447 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = dumpAppContainerCache;
            }

            v448 = [MEMORY[0x277CCAB68] stringWithFormat:@"{\n"];
            v449 = *(*&buf[8] + 40);
            v499[0] = MEMORY[0x277D85DD0];
            v499[1] = 3221225472;
            v499[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_5_3089;
            v499[3] = &unk_278936E60;
            v450 = v448;
            v500 = v450;
            [v449 enumerateKeysAndObjectsUsingBlock:v499];
            [v450 appendFormat:@"}\n"];
            v451 = [v450 dataUsingEncoding:4];
            (v12)[2](v12, v451, 0);

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v452 = [v15 objectAtIndexedSubscript:0];
            v453 = [v452 isEqualToString:@"diskUsage"];

            if (v453)
            {
              v454 = objc_opt_new();
              indexDirectory = [sDelegate indexDirectory];
              v496[0] = MEMORY[0x277D85DD0];
              v496[1] = 3221225472;
              v496[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_7_3106;
              v496[3] = &unk_278936E88;
              v497 = v454;
              v498 = v12;
              v456 = v454;
              [v456 collectAtPath:indexDirectory completionBlock:v496];

              goto LABEL_523;
            }

            v457 = [v15 objectAtIndexedSubscript:0];
            v458 = [v457 isEqualToString:@"embeddingCompleteness"];

            if (!v458)
            {
              v460 = [v15 objectAtIndexedSubscript:0];
              v461 = [v460 isEqualToString:@"leaks"];

              if (v461)
              {
                if (v17 == 1)
                {
                  ciindexset = [CFSTR(""Supported: sijob ciindexset];
                  (v12)[2](v12, ciindexset, 0);
                }

                else
                {
                  v465 = [v15 objectAtIndexedSubscript:1];
                  lowercaseString3 = [v465 lowercaseString];
                  v467 = [(dispatch_queue_t *)selfCopy leakDebugDump:lowercaseString3];

                  v468 = [v467 dataUsingEncoding:4];
                  (v12)[2](v12, v468, 0);
                }

                goto LABEL_523;
              }

              goto LABEL_517;
            }

            if (v17 == 1)
            {
              v459 = 0;
            }

            else
            {
              v464 = [v15 objectAtIndexedSubscript:1];
              if ([v464 length])
              {
                v459 = [v15 objectAtIndexedSubscript:1];
              }

              else
              {
                v459 = 0;
              }
            }

            mEMORY[0x277D65790]2 = [MEMORY[0x277D65790] sharedProcessor];
            v494[0] = MEMORY[0x277D85DD0];
            v494[1] = 3221225472;
            v494[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_8_3111;
            v494[3] = &unk_278936EB0;
            v495 = v12;
            [mEMORY[0x277D65790]2 getCachedEmbeddingCompletenessForBundle:v459 completion:v494];
          }

          goto LABEL_523;
        }
      }

      v427 = [MEMORY[0x277D657E0] runAssetCommand:v15];
      v428 = [v427 dataUsingEncoding:4];
      (v12)[2](v12, v428, 0);

      goto LABEL_523;
    }

    if (v17 == 1)
    {
      v408 = 0;
LABEL_508:
      [(dispatch_queue_t *)selfCopy validateVectors:v408 outFileDescriptor:v8];
      v12[2](v12, 0, 0);

      goto LABEL_523;
    }

    v418 = [v15 objectAtIndexedSubscript:1];
    if ([v418 isEqualToString:@"P"])
    {
      v419 = [MEMORY[0x277CBEA60] arrayWithObject:@"Priority"];
    }

    else if ([v418 isEqualToString:@"M"])
    {
      v419 = [MEMORY[0x277CBEA60] arrayWithObject:@"MobileMailIndex"];
    }

    else if ([v418 isEqualToString:@"A"])
    {
      v419 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA190]];
    }

    else if ([v418 isEqualToString:@"B"])
    {
      v419 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA198]];
    }

    else if ([v418 isEqualToString:@"C"])
    {
      v419 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA1A0]];
    }

    else
    {
      if (![v418 isEqualToString:@"X"])
      {
        v408 = 0;
        goto LABEL_507;
      }

      v419 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA1A8]];
    }

    v408 = v419;
LABEL_507:

    goto LABEL_508;
  }

  if (v17 == 1)
  {
LABEL_22:
    LOBYTE(v23) = 1;
    goto LABEL_518;
  }

  v40 = [v15 objectAtIndexedSubscript:1];
  v41 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:17 jobOptions:0];
  v42 = +[SpotlightDaemonServer sharedDaemonServer];
  v43 = [v42 handleJob:v41 bundleID:v40 protectionClass:*MEMORY[0x277CCA1A0] completionHandler:v12];

  if ((v43 & 1) == 0)
  {
    extensionDelegate3 = [(dispatch_queue_t *)selfCopy extensionDelegate];
    v45 = extensionDelegate3;
    if (extensionDelegate3)
    {
      [extensionDelegate3 indexRequestsPerformDataJob:v41 forBundle:v40 completionHandler:v12];
    }
  }

LABEL_523:
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v1, OS_LOG_TYPE_INFO, "#index reset", buf, 2u);
  }

  v2 = [sDelegate indexDirectory];
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v2;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Spotlight index reset %@", buf, 0xCu);
  }

  v15 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v2 isDirectory:&v15];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 removeItemAtPath:v2 error:0];
  }

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v7 persistentDomainForName:@"com.apple.spotlightknowledge"];
  v9 = v8;
  if (v8)
  {
    v8 = [v7 removePersistentDomainForName:@"com.apple.spotlightknowledge"];
  }

  v10 = logForCSLogCategoryDeleteAll(v8);
  v11 = os_signpost_id_generate(v10);

  v13 = logForCSLogCategoryDeleteAll(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231A35000, v14, OS_SIGNPOST_EVENT, v11, "deleteAll", "searchutil full wipe", buf, 2u);
  }
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2657(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CC3538] sharedManager];
  v3 = [v2 extensions];
  [v8 addObjectsFromArray:v3];

  v4 = [MEMORY[0x277CC3530] sharedManager];
  v5 = [v4 extensions];
  [v8 addObjectsFromArray:v5];

  v6 = [v8 componentsJoinedByString:@"\n"];
  v7 = [v6 dataUsingEncoding:4];

  (*(*(a1 + 32) + 16))();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = a1;
  obj = [*(*(a1 + 32) + 136) allValues];
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v4 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = *(*(&v30 + 1) + 8 * v4);
        [v3 appendString:@"\n"];
        v6 = [v5 knownClients];
        v7 = [v6 allObjects];
        v8 = [v7 componentsJoinedByString:{@", "}];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = &stru_2846BD100;
        }

        [v3 appendString:v10];

        v11 = [v5 checkedInClients];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * i);
              v17 = [v11 objectForKey:v16];
              v18 = [v5 dataclass];
              [v3 appendFormat:@"\n%@ (%@) - %@", v16, v18, v17];
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v13);
        }

        v4 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v19 = *(v21 + 40);
  v20 = [v3 dataUsingEncoding:4];
  (*(v19 + 16))(v19, v20, 0);
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2664(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2665;
  v2[3] = &unk_2789341A8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 commitUpdatesWithCompletionHandler:v2];
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2718(uint64_t a1)
{
  wait_for_apfs_kb_state(sIndexMountPath, 1);
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### testSuspendUntilUnlocked complete", v5, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2722(uint64_t a1)
{
  wait_for_apfs_kb_state(sIndexMountPath, 0);
  v3 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### testSuspendUntilLocked complete", v5, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2726(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2750(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = [v7 length];
  v9 = v7;
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  v10 = logForCSLogCategoryIndex(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    v12 = a1[5];
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = v9;
    }

    v15 = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "Client state %@ %@: %@", &v15, 0x20u);
  }

  v14 = a1[6];
  if (v14)
  {
    (*(v14 + 16))(v14, v7, v6);
  }
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2758(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2_2772(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v9 = [v4 dataclass];
  v5 = [v4 getPropertyForKey:*(a1 + 32)];

  v6 = [v3 stringByAppendingFormat:@"\n%@ - %@", v9, v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 index])
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = SICopyProperties();
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
          v10 = *(a1 + 32);
          v11 = [v3 dataclass];
          v12 = [v4 objectForKeyedSubscript:v9];
          [v10 appendFormat:@"%@ %@ - %@\n", v11, v9, v12];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 index])
  {
    v4 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = SICopyProperties();
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if ([v10 hasPrefix:*(a1 + 32)])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            SISetProperty();
          }

          v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }

      [v3 commitUpdates:{*(a1 + 40), v16}];
    }
  }
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2998(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### %@ complete res: %d", &v6, 0x12u);
  }

  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_2999(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v2 userInfo:0];
    objc_claimAutoreleasedReturnValue();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  return MEMORY[0x2821F9730]();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3006(void *a1, int a2)
{
  v3 = a1;
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    a1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a2 userInfo:0];
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v3 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "### %@ complete res: %d", &v7, 0x12u);
  }

  (*(*(v3 + 40) + 16))();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3010(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = a2;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### priorityReset - transferred priority items to default index res: %d", buf, 8u);
  }

  if (a2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a2 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) setProperty:&unk_2846C95A8 forKey:@"kSPPriorityIndexVersion" sync:0];
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3011;
    v9[3] = &unk_278936DE8;
    v12 = *(a1 + 56);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    [v6 commitUpdatesWithCompletionHandler:v9];

    v5 = v12;
  }
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3011(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) closeIndex];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 40) priorityIndexPath];
  [v2 removeItemAtPath:v3 error:0];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [*(a1 + 40) priorityIndexAvailableTouchFilePath];
  [v4 removeItemAtPath:v5 error:0];

  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "### priorityReset complete, exiting", v8, 2u);
  }

  exit(0);
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3015(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "locking", v4, 2u);
  }

  return [*(a1 + 32) locking];
}

uint64_t __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3019(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "unlocking", v4, 2u);
  }

  return [*(a1 + 32) unlock];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_3038(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v4 dataclass];
  v6 = v4[120];

  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"%@: readOnly = %@\n", v5, v7];

  v8 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:v11];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_4_3088(uint64_t a1)
{
  v5 = [MEMORY[0x277CC33F0] sharedInstance];
  v2 = [v5 dumpAppContainerCache];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_5_3089(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"\t%@ : {\n", a2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_6_3093;
  v7[3] = &unk_278936E60;
  v8 = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];

  [*(a1 + 32) appendFormat:@"\t}\n"];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_6_3093(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 appendFormat:@"\t\t%@ : 0x%016llx\n", v5, objc_msgSend(a3, "longLongValue")];
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_7_3106(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCAAA0];
    v4 = [*(a1 + 32) storageUsage];
    v7 = 0;
    v5 = [v3 dataWithJSONObject:v4 options:0 error:&v7];
    v6 = v7;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __90__SPCoreSpotlightIndexer__issueCommand_outFileDescriptor_searchContext_completionHandler___block_invoke_8_3111(uint64_t a1, void *a2, double a3)
{
  v6 = a3;
  v4 = a2;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:8];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)topKTerms:(id)terms completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  termsCopy = terms;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v21[0] = termsCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke;
  v12[3] = &unk_278936ED8;
  v9 = termsCopy;
  v13 = v9;
  v14 = &v15;
  [(SPCoreSpotlightIndexer *)self _enumerateIndexersWithProtectionClasses:v8 inferSpecialIndexes:0 block:v12];

  v10 = v16[5];
  if (v10)
  {
    [v10 index];
    v11 = handlerCopy;
    SIFetchTopKTerms();
  }

  _Block_object_dispose(&v15, 8);
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 dataclass];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = objc_opt_new();
  if (a2)
  {
    _MDPlistGetRootPlistObjectFromPlist();
    if (_MDPlistGetPlistObjectType() == 241)
    {
      _MDPlistDictionaryIterate();
    }
  }

  v4 = *(a1 + 32);
  v5 = [v7[5] dataUsingEncoding:4];
  (*(v4 + 16))(v4, v5, 0);

  _Block_object_dispose(&v6, 8);
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!a3)
  {
    __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_3_cold_1();
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (_MDPlistGetPlistObjectType() == 241)
  {
    v5 = v4;
    _MDPlistDictionaryIterate();
  }
}

void __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    __54__SPCoreSpotlightIndexer_topKTerms_completionHandler___block_invoke_4_cold_1();
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  *buf = *a4;
  *&buf[16] = *(a4 + 16);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:_MDPlistNumberGetIntValue()];
  v8 = logForCSLogCategoryIndex(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v11 = v7;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "bundleIndex: %@, key: %@, value: %@", buf, 0x20u);
  }

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"\n%@ %@ %@", v6, v7, *(a1 + 32)];
  CFRelease(v6);
}

- (void)performIndexerTask:(id)task completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (taskCopy)
  {
    v9 = [taskCopy job];
    jobType = [v9 jobType];

    if ((jobType - 2) >= 2)
    {
      if (jobType != 1)
      {
LABEL_26:
        firstUnlockQueue = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke;
        v31[3] = &unk_278934F08;
        v32 = taskCopy;
        selfCopy = self;
        v34 = v8;
        v28 = _setup_block(v31, 0, 21197);
        dispatch_async(firstUnlockQueue, v28);

        goto LABEL_27;
      }

      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v39 = 0u;
      bundleIDs = [taskCopy bundleIDs];
      v18 = [bundleIDs countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        selfCopy2 = self;
        v30 = v8;
        v20 = *v40;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(bundleIDs);
            }

            v22 = *(*(&v39 + 1) + 8 * i);
            if (isAppleInternalInstall())
            {
              v23 = [taskCopy job];
              identifiersToReindex = [v23 identifiersToReindex];
              v25 = [identifiersToReindex count];
            }

            else
            {
              v25 = 1;
            }

            mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
            [mEMORY[0x277CC3468] logWithBundleID:v22 indexOperation:8 itemCount:v25 code:7];
          }

          v19 = [bundleIDs countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v19);
        self = selfCopy2;
        v8 = v30;
      }
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      bundleIDs = [taskCopy bundleIDs];
      v12 = [bundleIDs countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(bundleIDs);
            }

            v16 = *(*(&v35 + 1) + 8 * j);
            mEMORY[0x277CC3468]2 = [MEMORY[0x277CC3468] sharedInstance];
            [mEMORY[0x277CC3468]2 logWithBundleID:v16 indexOperation:9 itemCount:1 code:6];
          }

          v13 = [bundleIDs countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v13);
      }
    }

    goto LABEL_26;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
  }

LABEL_27:
}

void __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = dispatch_group_create();
  v4 = [*(a1 + 32) completedBundleIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) completedBundleIDs];
    [v2 addObjectsFromArray:v6];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [*(a1 + 32) indexers];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        dispatch_group_enter(v3);
        v12 = *(a1 + 32);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2;
        v23[3] = &unk_278934E90;
        v24 = v2;
        v25 = v3;
        [v11 performIndexerTask:v12 withIndexDelegatesAndCompletionHandler:v23];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 40) firstUnlockQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3;
  v18[3] = &unk_278934EB8;
  v19 = *(a1 + 32);
  v20 = v2;
  v14 = *(a1 + 48);
  v21 = *(a1 + 40);
  v22 = v14;
  v15 = v2;
  v16 = _setup_block(v18, 0, 21196);
  dispatch_group_notify(v3, v13, v16);
}

void __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObjectsFromArray:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__SPCoreSpotlightIndexer_performIndexerTask_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [SPCoreSpotlightIndexerTask alloc];
  v3 = [*(a1 + 32) job];
  v4 = [*(a1 + 32) indexers];
  v7 = [(SPCoreSpotlightIndexerTask *)v2 initWithIndexJob:v3 indexers:v4];

  v5 = [*(a1 + 32) bundleIDs];
  [(SPCoreSpotlightIndexerTask *)v7 setBundleIDs:v5];

  v6 = [*(a1 + 40) allObjects];
  [(SPCoreSpotlightIndexerTask *)v7 setCompletedBundleIDs:v6];

  -[SPCoreSpotlightIndexerTask setDataMigrationStage:](v7, "setDataMigrationStage:", [*(a1 + 32) dataMigrationStage]);
  -[SPCoreSpotlightIndexerTask setShouldResumeOnFailure:](v7, "setShouldResumeOnFailure:", [*(a1 + 32) shouldResumeOnFailure]);
  [*(a1 + 48) performIndexerTask:v7 withIndexExtensionsAndCompletionHandler:*(a1 + 56)];
}

- (void)addCompletedBundleIDs:(id)ds forIndexerTask:(id)task
{
  v17 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  taskCopy = task;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  indexers = [taskCopy indexers];
  v8 = [indexers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(indexers);
        }

        [*(*(&v12 + 1) + 8 * v11++) addCompletedBundleIDs:dsCopy forIndexerTask:taskCopy];
      }

      while (v9 != v11);
      v9 = [indexers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)performIndexerTask:(id)task withIndexExtensionsAndCompletionHandler:(id)handler
{
  v162 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  handlerCopy = handler;
  firstUnlockQueue = [(SPCoreSpotlightIndexer *)self firstUnlockQueue];
  dispatch_assert_queue_V2(firstUnlockQueue);

  extensionDelegate = [(SPCoreSpotlightIndexer *)self extensionDelegate];
  if (extensionDelegate)
  {
    v10 = [taskCopy job];
    bundleIDs = [taskCopy bundleIDs];
    completedBundleIDs = [taskCopy completedBundleIDs];
    v13 = logForCSLogCategoryIndex(completedBundleIDs);
    selfCopy = self;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      dataMigrationStage = [taskCopy dataMigrationStage];
      dataMigrationStage2 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
      dataMigrationBundleIDs = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
      *buf = 138413314;
      v153 = bundleIDs;
      v154 = 2112;
      v155 = completedBundleIDs;
      v156 = 2048;
      v157 = dataMigrationStage;
      v158 = 2048;
      v159 = dataMigrationStage2;
      v160 = 2112;
      v161 = dataMigrationBundleIDs;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_INFO, "bundleIDs:%@, completedBundleIDs:%@, dataMigrationStage:%ld/%ld, dataMigrationBundleIDs:%@", buf, 0x34u);

      self = selfCopy;
    }

    if ([bundleIDs count] == 1)
    {
      firstObject = [bundleIDs firstObject];
      if (![completedBundleIDs containsObject:firstObject])
      {
        dataMigrationStage3 = [taskCopy dataMigrationStage];
        if (dataMigrationStage3 < [(SPCoreSpotlightIndexer *)self dataMigrationStage])
        {
          dataMigrationBundleIDs2 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
          if (!dataMigrationBundleIDs2 || (v20 = dataMigrationBundleIDs2, -[SPCoreSpotlightIndexer dataMigrationBundleIDs](self, "dataMigrationBundleIDs"), v21 = firstObject, v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 containsObject:v21], v22, firstObject = v21, self = selfCopy, v20, v23))
          {
            v24 = firstObject;
            v25 = logForCSLogCategoryIndex(dataMigrationBundleIDs2);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              dataMigrationStage4 = [taskCopy dataMigrationStage];
              dataMigrationStage5 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
              dataMigrationBundleIDs3 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              *buf = 138413314;
              v153 = v10;
              v154 = 2112;
              v155 = v24;
              v156 = 2048;
              v157 = dataMigrationStage4;
              v158 = 2048;
              v159 = dataMigrationStage5;
              v160 = 2112;
              v161 = dataMigrationBundleIDs3;
              _os_log_debug_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEBUG, "Dropping job:%@ for indexing extension with bundleID:%@ since it ran during data migration, dataMigrationStange:%lu/%lu, dataMigrationBundleIDs:%@", buf, 0x34u);

              self = selfCopy;
            }

            firstObject = v24;
            v151 = v24;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v151 count:1];
            [(SPCoreSpotlightIndexer *)self addCompletedBundleIDs:v26 forIndexerTask:taskCopy];

            goto LABEL_61;
          }
        }

        v61 = +[SpotlightDaemonServer sharedDaemonServer];
        v62 = *MEMORY[0x277CCA1A0];
        v145[0] = MEMORY[0x277D85DD0];
        v145[1] = 3221225472;
        v145[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke;
        v145[3] = &unk_278936D20;
        v63 = v10;
        v146 = v63;
        v147 = firstObject;
        v109 = handlerCopy;
        v148 = v109;
        v107 = v147;
        LODWORD(v62) = [v61 handleJob:v63 bundleID:v147 protectionClass:v62 completionHandler:v145];

        v65 = logForCSLogCategoryIndex(v64);
        v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG);
        if (v62)
        {
          firstObject = v107;
          if (v66)
          {
            [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
          }
        }

        else
        {
          if (v66)
          {
            [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
          }

          v139[0] = MEMORY[0x277D85DD0];
          v139[1] = 3221225472;
          v139[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124;
          v139[3] = &unk_278936A00;
          v140 = v63;
          firstObject = v107;
          v141 = v107;
          v142 = selfCopy;
          v143 = taskCopy;
          v144 = v109;
          [extensionDelegate indexRequestsPerformJob:v140 forBundle:v141 completionHandler:v139];

          v65 = v140;
        }

        v67 = v146;
LABEL_59:

LABEL_82:
        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if ([bundleIDs count])
    {
      bundleIDs2 = [taskCopy bundleIDs];
      firstObject = [bundleIDs2 mutableCopy];

      [firstObject removeObjectsInArray:completedBundleIDs];
      if ([firstObject count])
      {
        v102 = completedBundleIDs;
        v104 = bundleIDs;
        v112 = v10;
        dataMigrationStage6 = [taskCopy dataMigrationStage];
        if (dataMigrationStage6 < [(SPCoreSpotlightIndexer *)self dataMigrationStage])
        {
          v29 = [firstObject count];
          if (v29)
          {
            v30 = v29;
            v98 = handlerCopy;
            v100 = extensionDelegate;
            v31 = 0;
            for (i = 0; i != v30; ++i)
            {
              v33 = firstObject;
              v34 = [firstObject objectAtIndexedSubscript:i];
              dataMigrationBundleIDs4 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              if (!dataMigrationBundleIDs4 || (v36 = dataMigrationBundleIDs4, -[SPCoreSpotlightIndexer dataMigrationBundleIDs](self, "dataMigrationBundleIDs"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 containsObject:v34], v37, v36, v38))
              {
                v39 = logForCSLogCategoryIndex(dataMigrationBundleIDs4);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  dataMigrationStage7 = [taskCopy dataMigrationStage];
                  dataMigrationStage8 = [(SPCoreSpotlightIndexer *)selfCopy dataMigrationStage];
                  dataMigrationBundleIDs5 = [(SPCoreSpotlightIndexer *)selfCopy dataMigrationBundleIDs];
                  *buf = 138413314;
                  v153 = v112;
                  v154 = 2112;
                  v155 = v34;
                  v156 = 2048;
                  v157 = dataMigrationStage7;
                  v158 = 2048;
                  v159 = dataMigrationStage8;
                  v160 = 2112;
                  v161 = dataMigrationBundleIDs5;
                  _os_log_debug_impl(&dword_231A35000, v39, OS_LOG_TYPE_DEBUG, "Dropping job:%@ for indexing extension with bundleID:%@ since it ran during data migration, dataMigrationStange:%lu/%lu, dataMigrationBundleIDs:%@", buf, 0x34u);
                }

                v150 = v34;
                v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v150 count:1];
                self = selfCopy;
                [(SPCoreSpotlightIndexer *)selfCopy addCompletedBundleIDs:v40 forIndexerTask:taskCopy];

                if (!v31)
                {
                  v31 = objc_opt_new();
                }

                [v31 addIndex:i];
              }

              firstObject = v33;
            }

            handlerCopy = v98;
            extensionDelegate = v100;
            if (v31)
            {
              [firstObject removeObjectsAtIndexes:v31];
            }
          }
        }

        v68 = [firstObject count];
        if (v68)
        {
          v69 = logForCSLogCategoryIndex(v68);
          v10 = v112;
          completedBundleIDs = v102;
          bundleIDs = v104;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
          }

          v135[0] = MEMORY[0x277D85DD0];
          v135[1] = 3221225472;
          v135[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3126;
          v135[3] = &unk_278936F50;
          v136 = v112;
          selfCopy2 = self;
          v138 = taskCopy;
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128;
          v132[3] = &unk_278934F30;
          v133 = v136;
          v134 = handlerCopy;
          [extensionDelegate indexRequestsPerformJob:v133 forBundles:firstObject perExtensionCompletionHandler:v135 completionHandler:v132];

          v67 = v136;
          goto LABEL_59;
        }

        v10 = v112;
        completedBundleIDs = v102;
        bundleIDs = v104;
      }

LABEL_61:
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }

      goto LABEL_82;
    }

    v101 = extensionDelegate;
    v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([completedBundleIDs count])
    {
      [v44 addObjectsFromArray:completedBundleIDs];
    }

    v103 = completedBundleIDs;
    dataMigrationStage9 = [taskCopy dataMigrationStage];
    v113 = v10;
    v105 = bundleIDs;
    v106 = v44;
    if (dataMigrationStage9 >= [(SPCoreSpotlightIndexer *)self dataMigrationStage])
    {
LABEL_67:
      excludedBundleIDs = [v10 excludedBundleIDs];
      v74 = [v44 setByAddingObjectsFromArray:excludedBundleIDs];
      allObjects = [v74 allObjects];
      [v10 setExcludedBundleIDs:allObjects];

      v76 = dispatch_group_create();
      dispatch_group_enter(v76);
      dispatch_group_enter(v76);
      v78 = logForCSLogCategoryIndex(v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightIndexer performIndexerTask:withIndexExtensionsAndCompletionHandler:];
      }

      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3129;
      v124[3] = &unk_278936F50;
      v125 = v10;
      selfCopy3 = self;
      v79 = taskCopy;
      v127 = v79;
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3130;
      v121[3] = &unk_2789342C0;
      v80 = v125;
      v122 = v80;
      v81 = v76;
      v123 = v81;
      extensionDelegate = v101;
      [v101 indexRequestsPerformJob:v80 perExtensionCompletionHandler:v124 completionHandler:v121];
      protectionClasses = [v80 protectionClasses];
      v83 = *MEMORY[0x277CCA1A0];
      v84 = [protectionClasses containsObject:*MEMORY[0x277CCA1A0]];

      protectionClasses2 = [v80 protectionClasses];
      v110 = v83;
      if ([protectionClasses2 containsObject:@"Priority"])
      {
        v84 = 1;
      }

      else if (sUseMailIndex == 1)
      {
        protectionClasses3 = [v80 protectionClasses];
        v87 = [protectionClasses3 containsObject:@"MobileMailIndex"];

        v84 |= v87;
        self = selfCopy;
      }

      jobType = [v80 jobType];
      v89 = logForCSLogCategoryIndex(jobType);
      v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
      if (jobType != 2 || (v84 & 1) != 0)
      {
        if (v90)
        {
          excludedBundleIDs2 = [v80 excludedBundleIDs];
          *buf = 138412546;
          v153 = v80;
          v154 = 2112;
          v155 = excludedBundleIDs2;
          _os_log_impl(&dword_231A35000, v89, OS_LOG_TYPE_DEFAULT, "Performing job:%@ with spotlight daemon clients, excludedBundleIDs:%@", buf, 0x16u);
        }

        v93 = +[SpotlightDaemonServer sharedDaemonServer];
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3131;
        v119[3] = &unk_278936F78;
        v119[4] = self;
        v120 = v79;
        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_2;
        v117[3] = &unk_278934050;
        v118 = v81;
        [v93 handleJob:v80 protectionClass:v110 perClientCompletionHandler:v119 completionHandler:v117];
      }

      else
      {
        if (v90)
        {
          excludedBundleIDs3 = [v80 excludedBundleIDs];
          *buf = 138412546;
          v153 = v80;
          v154 = 2112;
          v155 = excludedBundleIDs3;
          _os_log_impl(&dword_231A35000, v89, OS_LOG_TYPE_DEFAULT, "Ignoring job:%@ with spotlight daemon clients, excludedBundleIDs:%@", buf, 0x16u);
        }

        dispatch_group_leave(v81);
      }

      firstObject = v106;
      v94 = qos_class_self();
      v95 = dispatch_get_global_queue(v94, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3;
      block[3] = &unk_2789341A8;
      v116 = handlerCopy;
      dispatch_group_notify(v81, v95, block);

      v10 = v113;
      completedBundleIDs = v103;
      bundleIDs = v105;
      goto LABEL_82;
    }

    v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([bundleIDs count])
    {
      v99 = handlerCopy;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      dataMigrationBundleIDs10 = bundleIDs;
      v48 = [dataMigrationBundleIDs10 countByEnumeratingWithState:&v128 objects:v149 count:16];
      if (v48)
      {
        v49 = v48;
        v108 = taskCopy;
        v50 = *v129;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v129 != v50)
            {
              objc_enumerationMutation(dataMigrationBundleIDs10);
            }

            v52 = *(*(&v128 + 1) + 8 * j);
            dataMigrationBundleIDs6 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
            if (dataMigrationBundleIDs6)
            {
              v54 = dataMigrationBundleIDs6;
              dataMigrationBundleIDs7 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              v56 = [dataMigrationBundleIDs7 containsObject:v52];

              if (!v56)
              {
                continue;
              }
            }

            v57 = logForCSLogCategoryIndex(dataMigrationBundleIDs6);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              dataMigrationStage10 = [v108 dataMigrationStage];
              dataMigrationStage11 = [(SPCoreSpotlightIndexer *)self dataMigrationStage];
              dataMigrationBundleIDs8 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
              *buf = 138413314;
              v153 = v113;
              v154 = 2112;
              v155 = v52;
              v156 = 2048;
              v157 = dataMigrationStage10;
              v158 = 2048;
              v159 = dataMigrationStage11;
              v160 = 2112;
              v161 = dataMigrationBundleIDs8;
              _os_log_debug_impl(&dword_231A35000, v57, OS_LOG_TYPE_DEBUG, "Dropping job:%@ for indexing extension with bundleID:%@ since it ran during data migration, dataMigrationStange:%lu/%lu, dataMigrationBundleIDs:%@", buf, 0x34u);

              self = selfCopy;
            }

            [v46 addObject:v52];
          }

          v49 = [dataMigrationBundleIDs10 countByEnumeratingWithState:&v128 objects:v149 count:16];
        }

        while (v49);
        taskCopy = v108;
      }

      handlerCopy = v99;
    }

    else
    {
      dataMigrationBundleIDs9 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
      v71 = [dataMigrationBundleIDs9 count];

      if (!v71)
      {
LABEL_66:
        v44 = v106;
        [v106 unionSet:v46];
        allObjects2 = [v46 allObjects];
        [(SPCoreSpotlightIndexer *)self addCompletedBundleIDs:allObjects2 forIndexerTask:taskCopy];

        goto LABEL_67;
      }

      dataMigrationBundleIDs10 = [(SPCoreSpotlightIndexer *)self dataMigrationBundleIDs];
      [v46 unionSet:dataMigrationBundleIDs10];
    }

    v10 = v113;
    goto LABEL_66;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_83:
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_cold_1();
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124_cold_1();
  }

  v3 = a1[6];
  v6[0] = a1[5];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 addCompletedBundleIDs:v4 forIndexerTask:a1[7]];

  result = a1[8];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3126(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "Done performing job:%@ with extension %@, error:%@", buf, 0x20u);
  }

  v8 = a1[5];
  v11 = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v8 addCompletedBundleIDs:v9 forIndexerTask:a1[6]];
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128_cold_1();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3129(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEBUG, "Done performing job:%@ with extension %@, error:%@", buf, 0x20u);
  }

  v8 = a1[5];
  v11 = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v8 addCompletedBundleIDs:v9 forIndexerTask:a1[6]];
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3130(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128_cold_1();
  }

  dispatch_group_leave(*(a1 + 40));
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3131(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v3 addCompletedBundleIDs:v6 forIndexerTask:{*(a1 + 40), v7, v8}];
}

uint64_t __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos completionHandler:(id)self0
{
  attributesCopy = attributes;
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  handlerCopy = handler;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (!classCopy || (v22 = [classCopy isEqualToString:@"Default"], v23 = classCopy, v22))
  {
    v23 = *MEMORY[0x277CCA1A0];
  }

  v24 = v23;
  v25 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v24 andBundleID:dCopy];
  v26 = v25;
  if (v25)
  {
    queue = sIndexQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__SPCoreSpotlightIndexer_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_completionHandler___block_invoke;
    block[3] = &unk_278936FA0;
    v30 = v25;
    v31 = attributesCopy;
    v32 = dCopy;
    v33 = identifiersCopy;
    v34 = ctxCopy;
    flagsCopy = flags;
    v35 = handlerCopy;
    v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos, 0, block);
    dispatch_async(queue, v27);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)fetchAttributesForProtectionClass:(id)class attributes:(id)attributes bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(int)flags completion:(id)completion
{
  classCopy = class;
  attributesCopy = attributes;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  completionCopy = completion;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (!classCopy || (v21 = [classCopy isEqualToString:@"Default"], v22 = classCopy, v21))
  {
    v22 = *MEMORY[0x277CCA1A0];
  }

  v23 = v22;
  v24 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v23 andBundleID:dCopy];
  v25 = v24;
  if (v24)
  {
    v26 = sIndexQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __117__SPCoreSpotlightIndexer_fetchAttributesForProtectionClass_attributes_bundleID_identifiers_userCtx_flags_completion___block_invoke;
    v28[3] = &unk_278936FA0;
    v29 = v24;
    v30 = attributesCopy;
    v31 = dCopy;
    v32 = identifiersCopy;
    v33 = ctxCopy;
    flagsCopy = flags;
    v34 = completionCopy;
    v27 = _setup_block(v28, 0, 21417);
    dispatch_async(v26, v27);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)fetchCacheFileDescriptorsForProtectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos completionHandler:(id)handler
{
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  handlerCopy = handler;
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  if (!classCopy || (v20 = [classCopy isEqualToString:@"Default"], v21 = classCopy, v20))
  {
    v21 = *MEMORY[0x277CCA1A0];
  }

  v22 = v21;
  v23 = [(SPCoreSpotlightIndexer *)self concreteIndexerForProtectionClass:v22 andBundleID:dCopy];
  v24 = v23;
  if (v23)
  {
    v25 = sIndexQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __127__SPCoreSpotlightIndexer_fetchCacheFileDescriptorsForProtectionClass_bundleID_identifiers_userCtx_flags_qos_completionHandler___block_invoke;
    v27[3] = &unk_278936FC8;
    v28 = v23;
    v29 = dCopy;
    v30 = identifiersCopy;
    v31 = ctxCopy;
    flagsCopy = flags;
    v32 = handlerCopy;
    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos, 0, v27);
    dispatch_async(v25, v26);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)revokeExpiredItems:(id)items activity:(id)activity protected:(BOOL)protected
{
  itemsCopy = items;
  activityCopy = activity;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SPCoreSpotlightIndexer_revokeExpiredItems_activity_protected___block_invoke;
  v15[3] = &unk_2789356F0;
  protectedCopy = protected;
  v15[4] = self;
  v16 = itemsCopy;
  v17 = activityCopy;
  v10 = activityCopy;
  v11 = itemsCopy;
  v12 = MEMORY[0x2383760E0](v15);
  v13 = sIndexQueue;
  v14 = _setup_block(v12, 0, 21481);
  dispatch_group_async(v11, v13, v14);
}

void __64__SPCoreSpotlightIndexer_revokeExpiredItems_activity_protected___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    _checkUnlock();
    v2 = *MEMORY[0x277CCA198];
    v12[0] = *MEMORY[0x277CCA190];
    v12[1] = v2;
    v12[2] = *MEMORY[0x277CCA1A8];
    v3 = MEMORY[0x277CBEA60];
    v4 = v12;
    v5 = 3;
  }

  else
  {
    v11 = *MEMORY[0x277CCA1A0];
    v3 = MEMORY[0x277CBEA60];
    v4 = &v11;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SPCoreSpotlightIndexer_revokeExpiredItems_activity_protected___block_invoke_2;
  v8[3] = &unk_278936768;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v7 _enumerateIndexersWithProtectionClasses:v6 block:v8];
}

- (void)powerStateChanged
{
  if ((deviceUnlocked & 1) == 0)
  {
    SIResumeForUnlock();
  }

  v3 = sIndexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SPCoreSpotlightIndexer_powerStateChanged__block_invoke;
  v5[3] = &unk_278934050;
  v5[4] = self;
  v4 = _setup_block(v5, 0, 21491);
  dispatch_async(v3, v4);
}

- (id)queryForWord:(id)word matchingAttributes:(id)attributes prefixMatch:(BOOL)match
{
  matchCopy = match;
  wordCopy = word;
  attributesCopy = attributes;
  v9 = objc_opt_new();
  v10 = [attributesCopy count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    if (matchCopy)
    {
      v13 = @"|| (%@=%@*cwdt)";
    }

    else
    {
      v13 = @"|| (%@=%@cwdt)";
    }

    if (matchCopy)
    {
      v14 = @"(%@=%@*cwdt)";
    }

    else
    {
      v14 = @"(%@=%@cwdt)";
    }

    do
    {
      v15 = [attributesCopy objectAtIndex:v12];
      if (v12)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v17 = v16;
      [v9 appendFormat:v17, v15, wordCopy];

      ++v12;
    }

    while (v11 != v12);
  }

  return v9;
}

- (NSURL)personaListURL
{
  if (sPrivate)
  {
    v2 = 0;
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v4 = MEMORY[0x277CCACA8];
    v5 = NSHomeDirectory();
    v6 = [v4 stringWithFormat:@"%@/%@", v5, @"Library/Spotlight/PersonaList.plist"];
    v2 = [v3 initFileURLWithPath:v6];
  }

  return v2;
}

- (void)personaListDidUpdate
{
  if ((sPrivate & 1) == 0)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke;
    v4[3] = &unk_278936FF0;
    v4[4] = self;
    [mEMORY[0x277D77BF8] fetchAllPersonasWithCompletionHandler:v4];
  }
}

void __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v25 + 1) + 8 * v9) objectForKey:@"UserPersonaUniqueString"];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  if (([*(*(a1 + 32) + 208) isEqual:v4] & 1) == 0)
  {
    v11 = [*(*(a1 + 32) + 208) mutableCopy];
    [v11 minusSet:v4];
    if ([v11 count])
    {
      NSLog(&cfstr_MissingPersona.isa, v11);
      [*(*(a1 + 32) + 208) unionSet:v4];
      v12 = [*(*(a1 + 32) + 208) allObjects];
      v13 = [*(a1 + 32) personaListURL];
      [v12 writeToURL:v13 error:0];

      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      v15 = *(a1 + 32);
      v16 = [v11 allObjects];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke_2;
      v22[3] = &unk_2789358D0;
      v22[4] = *(a1 + 32);
      v23 = v4;
      v24 = v14;
      v17 = v14;
      [v15 deleteSearchableItemsWithPersonaIds:v16 completionHandler:v22];

      dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v18 = [v4 mutableCopy];
      v19 = *(a1 + 32);
      v20 = *(v19 + 208);
      *(v19 + 208) = v18;

      v17 = [*(*(a1 + 32) + 208) allObjects];
      v21 = [*(a1 + 32) personaListURL];
      [v17 writeToURL:v21 error:0];
    }
  }
}

void __46__SPCoreSpotlightIndexer_personaListDidUpdate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    *(v3 + 80) = 1;
  }

  else
  {
    *(v3 + 80) = 0;
    v4 = [*(a1 + 40) mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 208);
    *(v5 + 208) = v4;

    v7 = [*(*(a1 + 32) + 208) allObjects];
    v8 = [*(a1 + 32) personaListURL];
    [v7 writeToURL:v8 error:0];
  }

  v9 = *(a1 + 48);

  dispatch_group_leave(v9);
}

- (void)handleRankingCommand:(id)command completion:(id)completion
{
  v31[3] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  if ([commandCopy isEqualToString:@"update"])
  {
    [sDelegate updateApplicationsWithCompletion:completionCopy clean:0];
  }

  else if ([commandCopy isEqualToString:@"reset"])
  {
    v8 = objc_opt_new();
    allProtectionClasses = [objc_opt_class() allProtectionClasses];
    [v8 setProtectionClasses:allProtectionClasses];

    v10 = *MEMORY[0x277CC2500];
    v31[0] = *MEMORY[0x277CC3208];
    v31[1] = v10;
    v31[2] = @"_kMDItemLaunchString";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    [v8 setFetchAttributes:v11];

    [v8 setInternal:1];
    v12 = objc_opt_new();
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", @"_kMDItemLaunchString"];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke;
    v28[3] = &unk_278935400;
    v29 = v8;
    v30 = v12;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_3;
    v24[3] = &unk_2789358D0;
    v25 = v30;
    selfCopy = self;
    v15 = v13;
    v27 = v15;
    v16 = v30;
    v17 = v8;
    v18 = [(SPCoreSpotlightIndexer *)self startQueryWithQueryString:v14 queryContext:v17 eventHandler:0 resultsHandler:v28 completionHandler:v24];

    if (!v18)
    {
      dispatch_group_leave(v15);
    }

    v19 = qos_class_self();
    v20 = dispatch_get_global_queue(v19, 2uLL);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_5;
    v22[3] = &unk_2789341A8;
    v23 = completionCopy;
    v21 = _setup_block(v22, 0, 21618);
    dispatch_group_notify(v15, v20, v21);
  }
}

void __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v13 = v5;
    v14 = v6;
    v9 = [*(a1 + 32) fetchAttributes];
    v10 = [v9 count];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_2;
    v11[3] = &unk_278934A00;
    v12 = *(a1 + 40);
    [a5 enumerateQueryResults:v10 stringCache:0 usingBlock:v11];
  }
}

void __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_2(uint64_t a1, id *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = objc_alloc(MEMORY[0x277CC34B8]);
  v8 = *MEMORY[0x277CBEEE8];
  v9 = *MEMORY[0x277CC2D10];
  v13[0] = @"_kMDItemLaunchString";
  v13[1] = v9;
  v14[0] = v8;
  v14[1] = v8;
  v13[2] = @"kMDItemLastUsedDate_Ranking";
  v13[3] = @"_kMDItemShortcutLastUsedDate";
  v14[2] = v8;
  v14[3] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v11 = [v7 initWithAttributes:v10];

  v12 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v4 domainIdentifier:0 attributeSet:v11];
  [v12 setIsUpdate:1];
  [v6 addObject:v12];
}

void __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SPCoreSpotlightIndexer_handleRankingCommand_completion___block_invoke_4;
  v3[3] = &unk_278936938;
  v3[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
  dispatch_group_leave(*(a1 + 48));
}

- (void)_fetchAccumulatedStorageSizeForBundleId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SPCoreSpotlightIndexer _fetchAccumulatedStorageSizeForBundleId:completionHandler:];
  }

  v8 = sIndexQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke;
  v12[3] = &unk_278934F08;
  v12[4] = self;
  v13 = idCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = idCopy;
  v11 = _setup_block(v12, 0, 21657);
  dispatch_async(v8, v11);
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = dispatch_group_create();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_2;
  v13[3] = &unk_278937040;
  v14 = v3;
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = v2;
  v16 = v5;
  v6 = v3;
  [v4 _enumerateIndexersWithBlock:v13];
  v7 = sIndexQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3175;
  v10[3] = &unk_278934F30;
  v11 = v5;
  v12 = *(a1 + 48);
  v8 = v5;
  v9 = _setup_block(v10, 0, 21656);
  dispatch_group_notify(v6, v7, v9);
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3;
  v6[3] = &unk_278937018;
  v7 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  [v4 _fetchAccumulatedStorageSizeForBundleId:v7 completionHandler:v6];
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = logForCSLogCategoryDefault(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch the storage size for bundleId:%@, error:%@", &v11, 0x16u);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v10 = *(a1 + 40);
    objc_sync_enter(v10);
    [*(a1 + 40) addObject:v5];
    objc_sync_exit(v10);

LABEL_7:
  }

  dispatch_group_leave(*(a1 + 48));
}

void __84__SPCoreSpotlightIndexer__fetchAccumulatedStorageSizeForBundleId_completionHandler___block_invoke_3175(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v5 += [*(*(&v11 + 1) + 8 * i) unsignedLongLongValue];
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

- (void)_migrateIndexExtensionsWithEnumerator:(id)enumerator forced:(BOOL)forced migratedBundleIds:(id)ids completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  idsCopy = ids;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SPCoreSpotlightIndexer _migrateIndexExtensionsWithEnumerator:forced:migratedBundleIds:completionHandler:];
  }

  v13 = handlerCopy;
  nextObject = [enumeratorCopy nextObject];
  containerID = [nextObject containerID];
  v16 = containerID;
  if (nextObject && containerID)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke;
    v17[3] = &unk_278937090;
    forcedCopy = forced;
    v18 = containerID;
    selfCopy = self;
    v20 = enumeratorCopy;
    v21 = idsCopy;
    v22 = v13;
    [(SPCoreSpotlightIndexer *)self _fetchAccumulatedStorageSizeForBundleId:v18 completionHandler:v17];
  }

  else
  {
    v13[2](v13);
  }
}

void __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 72);
  v5 = logForCSLogCategoryDefault(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3 || (v4 & 1) != 0)
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      if (*(a1 + 72))
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v3;
      v27 = 2080;
      v28 = v9;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Starting migration for index extension:%@, size:%@, forced:%s", buf, 0x20u);
    }

    v10 = [MEMORY[0x277CC3538] sharedManager];
    v11 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:3];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke_3176;
    v18[3] = &unk_278937068;
    v12 = *(a1 + 32);
    v22 = *(a1 + 72);
    v13 = *(a1 + 56);
    v17 = *(a1 + 40);
    v14 = *(a1 + 48);
    *&v15 = v17;
    *(&v15 + 1) = v14;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v19 = v16;
    v20 = v15;
    v21 = *(a1 + 64);
    [v10 indexRequestsPerformJob:v11 forBundle:v12 completionHandler:v18];
  }

  else
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Skipping migration for index extension:%@, size:%@", buf, 0x16u);
    }

    [*(a1 + 40) _migrateIndexExtensionsWithEnumerator:*(a1 + 48) forced:*(a1 + 72) migratedBundleIds:*(a1 + 56) completionHandler:*(a1 + 64)];
  }
}

uint64_t __107__SPCoreSpotlightIndexer__migrateIndexExtensionsWithEnumerator_forced_migratedBundleIds_completionHandler___block_invoke_3176(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = "NO";
    if (*(a1 + 72))
    {
      v4 = "YES";
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished migration for index extension:%@, forced:%s", &v7, 0x16u);
  }

  v5 = *(a1 + 40);
  objc_sync_enter(v5);
  [*(a1 + 40) addObject:*(a1 + 32)];
  objc_sync_exit(v5);

  return [*(a1 + 48) _migrateIndexExtensionsWithEnumerator:*(a1 + 56) forced:*(a1 + 72) migratedBundleIds:*(a1 + 40) completionHandler:*(a1 + 64)];
}

- (void)migrateForced:(BOOL)forced
{
  v5 = SDTransactionCreate(&unk_2846C93C8);
  reindexAllQueue = self->_reindexAllQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SPCoreSpotlightIndexer_migrateForced___block_invoke;
  v9[3] = &unk_278934870;
  forcedCopy = forced;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  v8 = _setup_block(v9, 0, 21737);
  dispatch_async(reindexAllQueue, v8);
}

void __40__SPCoreSpotlightIndexer_migrateForced___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 248));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.searchd.indexExtensionMigration.start" object:*(a1 + 32) userInfo:0];

  v3 = [MEMORY[0x277CC3538] sharedManager];
  v4 = [v3 allExtensionsWithBlock:&__block_literal_global_3186];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = *(a1 + 32);
  v7 = [v4 objectEnumerator];
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_3187;
  v11[3] = &unk_278934130;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v6 _migrateIndexExtensionsWithEnumerator:v7 forced:v8 migratedBundleIds:v10 completionHandler:v11];
}

uint64_t __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (([v2 isInternal] & 1) != 0 || (objc_msgSend(v2, "containerID"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "hasPrefix:", @"com.apple."), v3, v4))
  {
    v5 = [v2 dontRunDuringMigration];
    v6 = v5 ^ 1;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = logForCSLogCategoryDefault(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v2 extensionID];
    v10 = [v2 containerID];
    v11 = v10;
    v12 = "NO";
    v17 = 2112;
    v15 = 138413058;
    if (v7)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v16 = v9;
    v18 = v10;
    if (v6)
    {
      v12 = "YES";
    }

    v19 = 2080;
    v20 = v13;
    v21 = 2080;
    v22 = v12;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Found index extension:%@, containerId:%@, internal:%s, migrate:%s", &v15, 0x2Au);
  }

  return v6;
}

void __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_3187(uint64_t a1)
{
  dispatch_resume(*(*(a1 + 32) + 248));
  v2 = dispatch_get_global_queue(9, 2uLL);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_2_3188;
  v6[3] = &unk_278934130;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = _setup_block(v6, 0, 21735);
  dispatch_async(v2, v5);
}

void __40__SPCoreSpotlightIndexer_migrateForced___block_invoke_2_3188(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5 = @"bundleIDs";
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"com.apple.searchd.indexExtensionMigration.finish" object:*(a1 + 40) userInfo:v3];

  SDTransactionDone(*(a1 + 48));
}

- (void)_reindexAllIdentifiersWithExtension:(id)extension completionBlock:(id)block
{
  extensionCopy = extension;
  blockCopy = block;
  if (!extensionCopy)
  {
    [SPCoreSpotlightIndexer _reindexAllIdentifiersWithExtension:completionBlock:];
  }

  if (!blockCopy)
  {
    [SPCoreSpotlightIndexer _reindexAllIdentifiersWithExtension:completionBlock:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke;
  v13[3] = &unk_278934F08;
  v13[4] = self;
  v14 = extensionCopy;
  v15 = blockCopy;
  v8 = blockCopy;
  v9 = extensionCopy;
  v10 = MEMORY[0x2383760E0](v13);
  v11 = sIndexQueue;
  v12 = _setup_block(v10, 0, 21798);
  dispatch_async(v11, v12);
}

void __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke(id *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_2;
  v15[3] = &unk_278935400;
  v2 = a1[5];
  v15[4] = a1[4];
  v16 = v2;
  v3 = MEMORY[0x2383760E0](v15);
  v4 = [a1[5] containerID];
  v5 = objc_opt_new();
  [v5 setClientBundleID:v4];
  v17[0] = *MEMORY[0x277CC3208];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v5 setFetchAttributes:v6];

  v7 = [objc_opt_class() allProtectionClasses];
  [v5 setProtectionClasses:v7];

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v8 initWithFormat:@"(%@ = '%@') && (%@ != '*')", *MEMORY[0x277CC2500], v4, *MEMORY[0x277CC3238]];
  v10 = a1[4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_5;
  v13[3] = &unk_278937100;
  v13[4] = v10;
  v14 = a1[6];
  v11 = [v10 _startQueryWithQueryString:v9 queryContext:v5 eventHandler:0 resultsHandler:v3 completionHandler:v13];
  [a1[4] setReindexAllItemsTask:v11];

  v12 = [a1[4] reindexAllItemsTask];

  if (!v12)
  {
    (*(a1[6] + 2))();
  }
}

void __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:_MDStoreOIDArrayGetVectorCount()];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_3;
    v17[3] = &unk_278934A00;
    v12 = v11;
    v18 = v12;
    [a5 enumerateQueryResults:1 stringCache:0 usingBlock:v17];
    if ([v12 count])
    {
      v13 = [*(a1 + 32) reindexAllItemsTask];
      [v13 pauseResults];

      v14 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:1];
      [v14 setIdentifiersToReindex:v12];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_4;
      v16[3] = &unk_2789370D8;
      v15 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      [v15 performJob:v14 completionBlock:v16];
    }
  }
}

id *__78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_3(id *result, void *a2)
{
  if (*a2)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [*(a1 + 32) reindexAllItemsTask];
    [v4 cancel];
  }

  v5 = [*(a1 + 32) reindexAllItemsTask];
  [v5 resumeResults];
}

uint64_t __78__SPCoreSpotlightIndexer__reindexAllIdentifiersWithExtension_completionBlock___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setReindexAllItemsTask:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (id)_filterReindexAllExtensions:(id)extensions
{
  v19 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isInternal] & 1) == 0)
        {
          containerID = [v10 containerID];
          v12 = [containerID hasPrefix:@"com.apple."];

          if ((v12 & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_reindexAllItemsWithExtensionsAndCompletionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [SPCoreSpotlightIndexer _reindexAllItemsWithExtensionsAndCompletionBlock:];
  }

  v5 = blockCopy;
  v6 = logForCSLogCategoryIndex(blockCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Reindexing all items with the index extensions", buf, 2u);
  }

  dispatch_suspend(self->_reindexAllQueue);
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke;
  v11[3] = &unk_278937128;
  v11[4] = self;
  [v7 setFilterBlock:v11];
  [v7 setPerformBlock:&__block_literal_global_3199];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_4;
  v9[3] = &unk_278937100;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 setCompletionBlock:v9];
  [v7 start];
}

id __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _filterReindexAllExtensions:v2];

  return v3;
}

void __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x277CC3420];
  v6 = a2;
  v7 = [[v5 alloc] initWithJobType:2];
  [v7 setReason:@"re-indexing all items with the index extensions"];
  dispatch_group_enter(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_3;
  v9[3] = &unk_2789370D8;
  v10 = v4;
  v8 = v4;
  [v6 performJob:v7 completionBlock:v9];
}

uint64_t __75__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindexing all items with the index extensions", v4, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 248));
  return (*(*(a1 + 40) + 16))();
}

- (void)_reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [SPCoreSpotlightIndexer _reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock:];
  }

  v5 = blockCopy;
  v6 = logForCSLogCategoryIndex(blockCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "Reindexing all identifiers with the index extensions", buf, 2u);
  }

  dispatch_suspend(self->_reindexAllQueue);
  v7 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke;
  v16[3] = &unk_278937128;
  v16[4] = self;
  [v7 setFilterBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_2;
  v15[3] = &unk_278937170;
  v15[4] = self;
  [v7 setPerformBlock:v15];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_4;
  v12 = &unk_278937100;
  selfCopy = self;
  v14 = v5;
  v8 = v5;
  [v7 setCompletionBlock:&v9];
  [v7 start];
}

id __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _filterReindexAllExtensions:v2];

  return v3;
}

void __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  dispatch_group_enter(v5);
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_3;
  v9[3] = &unk_278934050;
  v10 = v5;
  v8 = v5;
  [v7 _reindexAllIdentifiersWithExtension:v6 completionBlock:v9];
}

uint64_t __89__SPCoreSpotlightIndexer__reindexAllItemsWithExtensionsAndIdentifiersAndCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = logForCSLogCategoryIndex(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "Finished reindexing all identifiers with the index extensions", v4, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 248));
  return (*(*(a1 + 40) + 16))();
}

- (void)transferDeleteJournalsForProtectionClass:(id)class toDirectory:(int)directory completionHandler:(id)handler
{
  handlerCopy = handler;
  classCopy = class;
  concreteIndexers = [(SPCoreSpotlightIndexer *)self concreteIndexers];
  v11 = concreteIndexers;
  if (classCopy)
  {
    v12 = classCopy;
  }

  else
  {
    v12 = @"Unknown";
  }

  v13 = [concreteIndexers objectForKey:v12];

  if (v13)
  {
    v14 = sIndexQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__SPCoreSpotlightIndexer_transferDeleteJournalsForProtectionClass_toDirectory_completionHandler___block_invoke;
    v16[3] = &unk_278937198;
    v17 = v13;
    directoryCopy = directory;
    v18 = handlerCopy;
    v15 = _setup_block(v16, 0, 21879);
    dispatch_async(v14, v15);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)wipeCoreSpotlightIndexForTrial
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleAssetsCommand:(id)command
{
  v3 = MEMORY[0x277D657E8];
  commandCopy = command;
  sharedResourcesManager = [v3 sharedResourcesManager];
  [sharedResourcesManager handleAssetsCommand:commandCopy];
}

- (id)leakDebugDump:(id)dump
{
  dumpCopy = dump;
  Current = CFAbsoluteTimeGetCurrent();
  if ([dumpCopy isEqualToString:@"sijob"])
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke;
    v40[3] = &unk_2789371C0;
    v6 = v5;
    v41 = v6;
    v7 = MEMORY[0x2383760E0](v40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_2;
    v38[3] = &unk_2789371E8;
    v8 = v6;
    v39 = v8;
    v9 = MEMORY[0x2383760E0](v38);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_3;
    v36[3] = &unk_2789371E8;
    v10 = v8;
    v37 = v10;
    v11 = MEMORY[0x2383760E0](v36);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_4;
    v33[3] = &unk_278937210;
    v12 = v10;
    v34 = v12;
    v35 = Current;
    v13 = MEMORY[0x2383760E0](v33);
    _SIDumpJobRefs();

    v14 = v41;
LABEL_5:

    goto LABEL_7;
  }

  if ([dumpCopy isEqualToString:@"ciindexset"])
  {
    v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_5;
    v31[3] = &unk_2789371C0;
    v16 = v15;
    v32 = v16;
    v17 = MEMORY[0x2383760E0](v31);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_6;
    v29[3] = &unk_2789371C0;
    v18 = v16;
    v30 = v18;
    v19 = MEMORY[0x2383760E0](v29);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_7;
    v27[3] = &unk_2789371C0;
    v20 = v18;
    v28 = v20;
    v21 = MEMORY[0x2383760E0](v27);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_8;
    v24[3] = &unk_278937210;
    v12 = v20;
    v25 = v12;
    v26 = Current;
    v22 = MEMORY[0x2383760E0](v24);
    _SIDumpIndexSetRefs();

    v14 = v32;
    goto LABEL_5;
  }

  [dumpCopy isEqualToString:@"sdtransaction"];
  v12 = 0;
LABEL_7:

  return v12;
}

void __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  Info = _SIDumpQueryInfo();
  [v6 appendFormat:@"\n> [%llu] Begin stack traces for active job ref 0x%llx: %@", a2, a3, Info];
}

void __40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  Info = _SIDumpQueryInfo();
  [v6 appendFormat:@"\n> [%llu] End stack traces for active job ref 0x%llx: %@\n", a2, a3, Info];
}

void *__40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_4(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, double a6)
{
  if (a3)
  {
    v9 = (*a2 + 1);
  }

  else
  {
    v9 = (*a2 - 1);
  }

  *a2 = v9;
  v10 = @"Release";
  v11 = *(a1 + 32);
  if (a3)
  {
    v10 = @"Retain";
  }

  result = [v11 appendFormat:@"\n\t>> [%d] %@ stack trace (%lfs ago):", v9, v10, *(a1 + 40) - a6];
  if (a4 >= 3)
  {
    v13 = a4;
    v14 = (a5 + 16);
    v15 = v13 - 2;
    do
    {
      v16 = *v14++;
      result = [*(a1 + 32) appendFormat:@"\n\t\t>>> %s", v16];
      --v15;
    }

    while (v15);
  }

  return result;
}

void *__40__SPCoreSpotlightIndexer_leakDebugDump___block_invoke_8(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, double a6)
{
  if (a3)
  {
    v9 = (*a2 + 1);
  }

  else
  {
    v9 = (*a2 - 1);
  }

  *a2 = v9;
  v10 = @"Release";
  v11 = *(a1 + 32);
  if (a3)
  {
    v10 = @"Retain";
  }

  result = [v11 appendFormat:@"\n\t>> [%d] %@ stack trace (%lfs ago):", v9, v10, *(a1 + 40) - a6];
  if (a4 >= 5)
  {
    v13 = a4;
    v14 = (a5 + 32);
    v15 = v13 - 4;
    do
    {
      v16 = *v14++;
      result = [*(a1 + 32) appendFormat:@"\n\t\t>>> %s", v16];
      --v15;
    }

    while (v15);
  }

  return result;
}

- (SPCoreSpotlightIndexerDelegate)indexerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_indexerDelegate);

  return WeakRetained;
}

- (CSFileProviderDomainMonitor)fileProviderMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_fileProviderMonitor);

  return WeakRetained;
}

void __44__SPCoreSpotlightIndexer_purgeIndexForSize___block_invoke_2112_cold_1()
{
  OUTLINED_FUNCTION_26();
  [*(v0 + 32) UTF8String];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)registerCacheDeleteCallbackForVolumePath:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SPCoreSpotlightIndexer_sharedInstance__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)concreteIndexerForProtectionClass:andBundleID:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)concreteIndexerForProtectionClass:andBundleID:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_3_2175_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2228_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2231_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2234_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2242_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138412290;
  *a2 = @"com.apple.searchd.reportAppUsage";
  OUTLINED_FUNCTION_40(&dword_231A35000, a2, a3, "Task %@ could not start query to collect bundles.", a1);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2246_cold_2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2258_cold_1()
{
  OUTLINED_FUNCTION_29(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2_2272_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __30__SPCoreSpotlightIndexer_init__block_invoke_2275_cold_2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_changeFilesToClassC:.cold.1()
{
  OUTLINED_FUNCTION_6();
  __error();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_changeFilesToClassC:.cold.2()
{
  OUTLINED_FUNCTION_6();
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)_changeFilesToClassC:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_changeFilesToClassC:.cold.4()
{
  OUTLINED_FUNCTION_6();
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __63__SPCoreSpotlightIndexer__deleteNonMailBundlesFromClassAIndex___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_29(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __59__SPCoreSpotlightIndexer__moveClassAIndexToClassCMailIndex__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setTouchfileExistsForMigrationStep:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)performMigrationStepWithTouchfileGuard:step:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2336_cold_2()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __51__SPCoreSpotlightIndexer_moveMailToClassCWithClone__block_invoke_2337_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  __error();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __31__SPCoreSpotlightIndexer_start__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_enumerateIndexersWithProtectionClasses:(void *)a1 forQueryWithContext:(NSObject *)a2 forBundleIds:inferSpecialIndexes:block:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(&dword_231A35000, a2, OS_LOG_TYPE_FAULT, "Client %@ attempted to query mail data in class A", v4, 0xCu);
}

void __50__SPCoreSpotlightIndexer__registerForPrefsChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__SPCoreSpotlightIndexer_mergeWithProtectionClasses_power_inferSpecialIndexes_completionHandler___block_invoke_2363_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)issueHeartbeat
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)issueResolveFPItemForURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __39__SPCoreSpotlightIndexer_queryPreheat___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_taskForQueryWithQueryString:(void *)a3 queryContext:eventHandler:resultsHandler:completionHandler:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 clientBundleID];
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __114__SPCoreSpotlightIndexer__taskForQueryWithQueryString_queryContext_eventHandler_resultsHandler_completionHandler___block_invoke_2452_cold_1()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_31(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

- (void)taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)taskForQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startQueryTask:.cold.1()
{
  OUTLINED_FUNCTION_6();
  qos_class_self();
  [v0 critical];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __41__SPCoreSpotlightIndexer_startQueryTask___block_invoke_cold_1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)startQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)taskForTopHitQueryWithQueryString:queryContext:eventHandler:resultsHandler:completionHandler:.cold.1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)startQuery:withContext:eventHandler:handler:.cold.1()
{
  qos_class_self();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __47__SPCoreSpotlightIndexer__mergedTokenRewrites___block_invoke_cold_1(void *a1)
{
  v1 = CSRedactString(a1, 0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeFileProviderBundleMap:fileProviderBundleIDs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__SPCoreSpotlightIndexer_fileProviderInfoSetup__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeData:(NSObject *)a3 toFile:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_40(&dword_231A35000, a2, a3, "Could not write to file, closing it. Error: %@", a2);
}

void __93__SPCoreSpotlightIndexer_userPerformedAction_withItem_protectionClass_forBundleID_personaID___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)clientDidCheckin:protectionClass:service:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_issueDiagnose:bundleID:logQuery:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_issueCacheCommand:xpc:searchContext:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeUISearchEnabled:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeUISearchEnabled:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_issueCommand:outFileDescriptor:searchContext:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_issueCommand:outFileDescriptor:searchContext:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_26();
  [v0 UTF8String];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_issueCommand:outFileDescriptor:searchContext:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)performIndexerTask:withIndexExtensionsAndCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v1 = [v0 excludedBundleIDs];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3124_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __85__SPCoreSpotlightIndexer_performIndexerTask_withIndexExtensionsAndCompletionHandler___block_invoke_3128_cold_1()
{
  OUTLINED_FUNCTION_29(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end